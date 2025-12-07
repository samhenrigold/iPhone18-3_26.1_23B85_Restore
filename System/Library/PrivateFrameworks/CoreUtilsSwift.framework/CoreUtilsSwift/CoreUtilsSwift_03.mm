uint64_t sub_247BD5D98()
{
  sub_247BD5CC8();

  return swift_deallocClassInstance();
}

void sub_247BD5DCC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v21 = a1;
    swift_unknownObjectRetain();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0C0, &qword_247BFC380);
    CUSendableWrapper.init(_:)(&v21, v11, &v22);
    v12 = v22;
    v22 = *(v10 + 40);
    v13 = CUEnvironmentValues.dispatchQueue.getter();
    v14 = sub_247BF67E0();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v8, 1, 1, v14);
    v16 = swift_allocObject();
    *(v16 + 16) = v10;
    *(v16 + 24) = v12;
    sub_247BC5B0C(v8, v6, &qword_27EE5DD00, &qword_247BFA890);
    v17 = (*(v15 + 48))(v6, 1, v14);

    if (v17 == 1)
    {
      sub_247B9CAD0(v6, &qword_27EE5DD00, &qword_247BFA890);
    }

    else
    {
      sub_247BF67D0();
      (*(v15 + 8))(v6, v14);
    }

    v18 = sub_247BDEA98(&qword_27EE5DD08, 255, sub_247BA0E68, MEMORY[0x277D85270]);
    v19 = swift_allocObject();
    *(v19 + 16) = &unk_247BFC390;
    *(v19 + 24) = v16;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0C8, &qword_247BFC3A8);
    v20[1] = 6;
    v20[2] = 0;
    v20[3] = v13;
    v20[4] = v18;
    swift_task_create();
    sub_247B9CAD0(v8, &qword_27EE5DD00, &qword_247BFA890);
  }
}

uint64_t sub_247BD60EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_247BD6110, 0, 0);
}

uint64_t sub_247BD6110()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_247BD61F8;
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);

    return sub_247BCE888(v4, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_247BD61F8()
{

  return MEMORY[0x2822009F8](sub_247BD6310, 0, 0);
}

uint64_t sub_247BD6338()
{
  v1 = *v0;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v1);
  return sub_247BF74A0();
}

uint64_t sub_247BD63AC(uint64_t a1)
{
  v2 = *v1;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v2);
  return sub_247BF74A0();
}

unint64_t sub_247BD6404@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_247BF6600();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_247BD68F8(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_247BD68F8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_247BF65E0();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_247BF6520();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_247BF6520();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_247BF6600();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_247BD68F8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_247BF6600();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_247BD68F8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_247BD68F8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_247BF6520();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_247BD67C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E148, &qword_247BFC450);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E150, &qword_247BFC458);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_247BD68F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0F0, &qword_247BFC3F8);
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

char *sub_247BD6A04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E090, &qword_247BFC350);
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

char *sub_247BD6B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E098, &qword_247BFC358);
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

void *sub_247BD6C14(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDA8, &qword_247BFA8F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_247BD6CD4(uint64_t a1)
{
  sub_247BF6E20();
  v2 = sub_247BF6390();

  return sub_247BD6D38(a1, v2);
}

unint64_t sub_247BD6D38(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_247BF6E20();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_247BF6460();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_247BD6ED0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_247BDCC70(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_247BD6F3C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_247BD6F3C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_247BF6FC0();
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
        v5 = sub_247BF66E0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_247BD7138(v7, v8, a1, v4);
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
    return sub_247BD7034(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_247BD7034(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_247BC3000();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v14 = v7;
    v9 = v8;
    while (1)
    {
      result = sub_247BF6B10();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v14 - 1;
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

      v10 = *v9;
      v11 = v9[1];
      *v9 = *(v9 - 1);
      *(v9 - 1) = v11;
      *(v9 - 2) = v10;
      v9 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_247BD7138(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v90 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = sub_247BC3000();
        result = sub_247BF6B10();
        v16 = result;
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          result = sub_247BF6B10();
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
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
            return result;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = sub_247BC3000();
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                result = sub_247BF6B10();
                if (result != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_247BBE178(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = sub_247BBE178((v35 > 1), v36 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *v90;
      if (!*v90)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
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
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          sub_247BD779C((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_247BC04D0(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = sub_247BC0444(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_88:
  v5 = v10;
  v10 = *v90;
  if (!*v90)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_247BC04D0(v5);
    v5 = result;
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      sub_247BD779C((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_247BC04D0(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      result = sub_247BC0444(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_247BD779C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_247BC3000();
LABEL_27:
      v20 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v17 -= 16;
        if (sub_247BF6B10() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v20;
          }

          if (v14 <= v4 || (v6 -= 16, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_247BC3000();
      while (sub_247BF6B10() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_247BD7A2C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_247BF7460();
  sub_247BF6500();
  v6 = sub_247BF74A0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_247BF7180() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_247BD7DCC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_247BD8988(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_247BD7B68(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_247BF6C40();

    if (v5)
    {
      v6 = sub_247BD7CD8(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_247BF7460();
  MEMORY[0x24C1B4F40](a1);
  v8 = sub_247BF74A0();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (*(*(v3 + 48) + 8 * v10) != a1)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_247BD7F28();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_247BD8B4C(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_247BD7CD8(uint64_t a1, uint64_t a2)
{

  v4 = sub_247BF6C10();
  v5 = swift_unknownObjectRetain();
  v6 = sub_247BD8CF4(v5, v4);
  v14 = v6;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](a2);
  v7 = sub_247BF74A0();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 48);
    while (1)
    {
      v6 = *(v12 + 8 * v10);
      if (v6 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  sub_247BD8B4C(v10);
  *v2 = v14;
  return v6;
}

void *sub_247BD7DCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0E0, &qword_247BFC3E8);
  v2 = *v0;
  v3 = sub_247BF6C80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_247BD7F28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0F8, &qword_247BFC408);
  v2 = *v0;
  v3 = sub_247BF6C80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_247BD8078(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0E0, &qword_247BFC3E8);
  result = sub_247BF6C90();
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
      sub_247BF7460();

      sub_247BF6500();
      result = sub_247BF74A0();
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

uint64_t sub_247BD82B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0F8, &qword_247BFC408);
  result = sub_247BF6C90();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_247BF7460();
      MEMORY[0x24C1B4F40](v16);
      result = sub_247BF74A0();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_247BD84D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0E0, &qword_247BFC3E8);
  result = sub_247BF6C90();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_247BF7460();
      sub_247BF6500();
      result = sub_247BF74A0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_247BD8738(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0F8, &qword_247BFC408);
  result = sub_247BF6C90();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_247BF7460();
      MEMORY[0x24C1B4F40](v17);
      result = sub_247BF74A0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_247BD8988(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_247BF6BE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_247BF7460();

        sub_247BF6500();
        v10 = sub_247BF74A0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_247BD8B4C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_247BF6BE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_247BF7460();
        MEMORY[0x24C1B4F40](v10);
        v11 = sub_247BF74A0() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_247BD8CF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0F8, &qword_247BFC408);
    v2 = sub_247BF6CA0();
    v15 = v2;
    sub_247BF6C00();
    if (sub_247BF6C30())
    {
      type metadata accessor for CUXPCActorConnection();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_247BD8738(v9 + 1);
        }

        v2 = v15;
        sub_247BF7460();
        MEMORY[0x24C1B4F40]();
        result = sub_247BF74A0();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_247BF6C30());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_247BD8EF0(uint64_t a1, uint64_t a2)
{
  sub_247BF7460();
  MEMORY[0x24C1B4F40](a1);
  sub_247BF74A0();
  result = sub_247BF6BF0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_247BD8F94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_247B9B134(a1, a2);
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
    sub_247BDADD8();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_247BDA2C0(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_247BD9044@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_247B9B134(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BDAF58();
      v10 = v12;
    }

    sub_247BDE7C8(*(v10 + 56) + 16 * v8, a3);
    sub_247BDA470(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_247BFBBF0;
  }

  return result;
}

double sub_247BD90F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_247BD6CD4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BDB56C();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_247BF6E20();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_247B9471C((*(v9 + 56) + 32 * v7), a2);
    sub_247BDAB24(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_247BD91D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0E8, &qword_247BFC3F0);
  v33 = v4;
  result = sub_247BF6ED0();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_247BF7460();
      sub_247BF6500();
      result = sub_247BF74A0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_247BD948C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E128, &qword_247BFC430);
  v34 = v4;
  result = sub_247BF6ED0();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + v21);
      v24 = *v23;
      v25 = v23[1];
      if (v34)
      {
        sub_247BDE7C8(v22 + v21, v35);
      }

      else
      {
        sub_247BDE790(v22 + v21, v35);
      }

      sub_247BF7460();
      sub_247BF6500();
      result = sub_247BF74A0();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      result = sub_247BDE7C8(v35, *(v7 + 56) + v16);
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_247BD9750(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E170, &qword_247BFC468);
  v34 = v4;
  result = sub_247BF6ED0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_247BF7450();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_247BD99D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E138, &qword_247BFC440);
  v34 = v4;
  result = sub_247BF6ED0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_247BF7460();
      sub_247BF6500();
      result = sub_247BF74A0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_247BD9C7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E0B0, &unk_247BFC370);
  result = sub_247BF6ED0();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v20 = 8 * (v17 | (v8 << 6));
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + v20;
      if (v4)
      {
        sub_247BDE670(v22, v32, &qword_27EE5E0A8, &qword_247BFC368);
      }

      else
      {
        sub_247BC5B0C(v22, v32, &qword_27EE5E0A8, &qword_247BFC368);
      }

      result = sub_247BF7450();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      *(*(v7 + 48) + v16) = v21;
      result = sub_247BDE670(v32, *(v7 + 56) + v16, &qword_27EE5E0A8, &qword_247BFC368);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_247BD9F20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_247BF6E20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E120, &qword_247BFC428);
  v39 = v4;
  result = sub_247BF6ED0();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_247B9471C((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_247B9B1AC(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_247BF6390();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_247B9471C(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_247BDA2C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    do
    {
      sub_247BF7460();

      sub_247BF6500();
      v9 = sub_247BF74A0();

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

  return result;
}

unint64_t sub_247BDA470(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    while (1)
    {
      sub_247BF7460();

      sub_247BF6500();
      v9 = sub_247BF74A0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      result = v14 + 16 * v3;
      if (v3 < v6 || result >= v14 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
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
        goto LABEL_18;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_247BDA640(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_247BF7450();
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
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
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

uint64_t sub_247BDA7B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    do
    {
      sub_247BF7460();

      sub_247BF6500();
      v9 = sub_247BF74A0();

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

  return result;
}

uint64_t sub_247BDA960(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_247BF7450();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0A8, &qword_247BFC368);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0A8, &qword_247BFC368);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_247BDAB24(int64_t a1, uint64_t a2)
{
  v4 = sub_247BF6E20();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_247BF6BE0();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_247BF6390();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

  return result;
}

void *sub_247BDADD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0E8, &qword_247BFC3F0);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;

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

void *sub_247BDAF58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E128, &qword_247BFC430);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        sub_247BDE790(*(v2 + 56) + v17, v22);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        sub_247BDE7C8(v22, *(v4 + 56) + v17);
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

void *sub_247BDB0E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E170, &qword_247BFC468);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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

  return result;
}

void *sub_247BDB24C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E138, &qword_247BFC440);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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

void *sub_247BDB3BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E0B0, &unk_247BFC370);
  v2 = *v0;
  v3 = sub_247BF6EC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v19 = v1;
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_247BC5B0C(*(v2 + 56) + v17, v20, &qword_27EE5E0A8, &qword_247BFC368);
        *(*(v4 + 48) + v17) = v18;
        result = sub_247BDE670(v20, *(v4 + 56) + v17, &qword_27EE5E0A8, &qword_247BFC368);
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

        v1 = v19;
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

void *sub_247BDB56C()
{
  v1 = v0;
  v26 = sub_247BF6E20();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E120, &qword_247BFC428);
  v3 = *v0;
  v4 = sub_247BF6EC0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_247B9B1AC(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_247B9471C(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
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

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

unint64_t sub_247BDB7F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_247BA04BC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_247BD9750(v16, a4 & 1);
      result = sub_247BA04BC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_247BF73C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_247BDB0E4();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_247BDB950(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_247B9B134(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_247BD99D4(v16, a4 & 1);
      v11 = sub_247B9B134(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_247BF73C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_247BDB24C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_247BDBACC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_247BD6C98(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_247BDB3BC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_247BD9C7C(v14, a3 & 1);
    v9 = sub_247BD6C98(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_247BF73C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * v9;

    return sub_247BDEA28(a1, v20);
  }

  else
  {

    return sub_247BDC090(v9, a2, a1, v19);
  }
}

uint64_t sub_247BDBBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_247B9B134(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_247BD91D4(v18, a5 & 1);
      v13 = sub_247B9B134(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_247BF73C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_247BDADD8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return swift_unknownObjectRelease();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_247BDBD74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_247B9B134(a2, a3);
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
      sub_247BDAF58();
      v11 = v19;
      goto LABEL_8;
    }

    sub_247BD948C(v16, a4 & 1);
    v11 = sub_247B9B134(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_247BF73C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;

    return sub_247BDE9F0(a1, v22);
  }

  else
  {
    sub_247BDC110(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_247BDBEB8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_247BF6E20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_247BD6CD4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_247BDB56C();
      goto LABEL_7;
    }

    sub_247BD9F20(v17, a3 & 1);
    v23 = sub_247BD6CD4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_247BDC180(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_247BF73C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  return sub_247B9471C(a1, v21);
}

uint64_t sub_247BDC090(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_247BDE670(a3, a4[7] + 8 * a1, &qword_27EE5E0A8, &qword_247BFC368);
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

uint64_t sub_247BDC110(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_247BDE7C8(a4, a5[7] + 16 * a1);
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

_OWORD *sub_247BDC180(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_247BF6E20();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_247B9471C(a3, (a4[7] + 32 * a1));
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

uint64_t sub_247BDC240(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_247BF7460();
  sub_247BF6500();
  v8 = sub_247BF74A0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_247BF7180() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_247BDC590(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_247BDC390(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_247BF6C20();

    if (v8)
    {

      type metadata accessor for CUXPCActorConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_247BF6C10();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_247BD8CF4(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_247BD8738(v17 + 1);
    }

    sub_247BD8EF0(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_247BF7460();
  MEMORY[0x24C1B4F40](a2);
  v10 = sub_247BF74A0();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_247BDC710(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_247BDC590(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_247BD84D8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_247BD7DCC();
      goto LABEL_16;
    }

    sub_247BD8078(v8 + 1);
  }

  v10 = *v4;
  sub_247BF7460();
  sub_247BF6500();
  result = sub_247BF74A0();
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

      result = sub_247BF7180();
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
  result = sub_247BF73B0();
  __break(1u);
  return result;
}

uint64_t sub_247BDC710(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_247BD8738(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_247BD7F28();
      a2 = v7;
      goto LABEL_12;
    }

    sub_247BD82B0(v5 + 1);
  }

  v8 = *v3;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v4);
  result = sub_247BF74A0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = result & ~v9;
    result = type metadata accessor for CUXPCActorConnection();
    a2 = v11;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_247BF73B0();
  __break(1u);
  return result;
}

void *sub_247BDC868(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_247BDC9C0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_247BDCB18(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_247BDCC84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDA8, &qword_247BFA8F8);
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

uint64_t sub_247BDCD90(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_247BDCE84;

  return v5(v2 + 32);
}

uint64_t sub_247BDCE84()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_247BDCF98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E128, &qword_247BFC430);
    v3 = sub_247BF6EE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_247BC5B0C(v4, &v13, &unk_27EE5E190, &qword_247BFC4B0);
      v5 = v13;
      v6 = v14;
      result = sub_247B9B134(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_247BDE7C8(&v15, v3[7] + 16 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 32;
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

unint64_t sub_247BDD0CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E138, &qword_247BFC440);
    v3 = sub_247BF6EE0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_247B9B134(v5, v6);
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

unint64_t sub_247BDD1D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0E8, &qword_247BFC3F0);
    v3 = sub_247BF6EE0();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_247B9B134(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void *sub_247BDD2EC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E170, &qword_247BFC468);
  v3 = sub_247BF6EE0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_247BA04BC(v4);
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

    v9 = sub_247BA04BC(v4);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_247BDD4C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E0B0, &unk_247BFC370);
    v3 = sub_247BF6EE0();
    for (i = a1 + 32; ; i += 16)
    {
      sub_247BC5B0C(i, &v11, &qword_27EE5E140, &qword_247BFC448);
      v5 = v11;
      result = sub_247BD6C98(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_247BDE670(&v12, v3[7] + 8 * result, &qword_27EE5E0A8, &qword_247BFC368);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

_BYTE *sub_247BDD650(void *a1)
{
  length[1] = *MEMORY[0x277D85DE8];
  v3 = sub_247BF6130();
  swift_unknownObjectRelease();
  if (v3 == a1)
  {
    type metadata accessor for CUError();
    v10 = 0x65746E6920435058;
    v11 = 0xEF64657470757272;
    v12 = -71142;
LABEL_8:
    CUError.__allocating_init(_:_:_:)(v12, v10, v11, 0);
    return swift_willThrow();
  }

  v4 = sub_247BF6120();
  swift_unknownObjectRelease();
  if (v4 == a1)
  {
    type metadata accessor for CUError();
    v10 = 0x61766E6920435058;
    v11 = 0xEF6465746164696CLL;
    v12 = -71148;
    goto LABEL_8;
  }

  length[0] = 0;
  result = xpc_dictionary_get_data(a1, "error", length);
  if (result)
  {
    v6 = result;
    sub_247BF5CC0();
    swift_allocObject();
    sub_247BF5CB0();
    type metadata accessor for CUError();
    v7 = sub_247BC3110(v6, length[0]);
    v9 = v8;
    sub_247BDEA98(&qword_27EE5DE30, 255, type metadata accessor for CUError, &protocol conformance descriptor for CUError);
    sub_247BF5C90();
    sub_247BC2AC4(v7, v9);

    if (!v1)
    {
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_247BDD848(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = MEMORY[0x277D84FA0];
  swift_weakInit();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  *(v3 + 32) = 257;
  *(v3 + 40) = v6;
  v7 = *(a1 + 56);
  *(v3 + 48) = *(a1 + 48);
  *(v3 + 56) = v7;
  *(v3 + 88) = 0;
  swift_weakAssign();
  *(v3 + 104) = a2;

  return v3;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dynamic_cast_existential_2_unconditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_247BDD9A8()
{
  result = qword_27EE5DFF8;
  if (!qword_27EE5DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DFF8);
  }

  return result;
}

unint64_t sub_247BDDA0C()
{
  result = qword_27EE5E000;
  if (!qword_27EE5E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E000);
  }

  return result;
}

unint64_t sub_247BDDA64()
{
  result = qword_27EE5E008;
  if (!qword_27EE5E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E008);
  }

  return result;
}

unint64_t sub_247BDDABC()
{
  result = qword_27EE5E010;
  if (!qword_27EE5E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E010);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUStringAppendFlags(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CUStringAppendFlags(uint64_t result, int a2, int a3)
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

uint64_t sub_247BDDC64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_247BDDCAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUXPCActorSystem.ActorEvent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CUXPCActorSystem.ActorEvent(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_247BDDE78(uint64_t a1, int a2)
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

uint64_t sub_247BDDEC0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_247BDDF24(uint64_t *a1, int a2)
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

uint64_t sub_247BDDF6C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_247BDDFD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_247BDE020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247BDE07C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_247BDE0C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_247BDE13C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_247BDE184(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_247BDE1F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247BDE2A4;

  return sub_247BC6110(a1, v4);
}

uint64_t sub_247BDE2A4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_247BDE3B0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247B95F40;

  return sub_247BC5E30(a1, a2, v6);
}

uint64_t sub_247BDE478(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_247B96F0C;

  return sub_247BD60EC(a1, v5, v4);
}

uint64_t sub_247BDE524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247B96F0C;

  return sub_247BDCD90(a1, v4);
}

uint64_t sub_247BDE5DC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_247B95F40;

  return sub_247BD2450(v3, v2);
}

uint64_t sub_247BDE670(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_247BDE708(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_247BF7180() & 1;
  }
}

uint64_t objectdestroy_165Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E110, &unk_247BFC418);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_247BDE918(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E110, &unk_247BFC418);
  v4 = a1;
  swift_unknownObjectRetain();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0C0, &qword_247BFC380);
  CUSendableWrapper.init(_:)(&v4, v2, &v5);
  v4 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E110, &unk_247BFC418);
  return sub_247BF6760();
}

uint64_t sub_247BDEA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0A8, &qword_247BFC368);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_247BDEA98(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_247BDEAE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_247B96F0C;

  return sub_247BCA41C(v6, v2, v3, v4, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t objectdestroy_128Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247BDEC3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_247B96F0C;

  return sub_247BD3360(v4, v2, v3);
}

uint64_t sub_247BDECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_247BDED84()
{
  qword_27EE60F58 = 48;
  unk_27EE60F60 = 0xE100000000000000;
  qword_27EE60F68 = 25136;
  unk_27EE60F70 = 0xE200000000000000;
  qword_27EE60F78 = 2;
  byte_27EE60F80 = 0;
}

uint64_t static PrintUtilsIntegerFormat.binary.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE60F50 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EE60F60;
  v2 = qword_27EE60F68;
  v3 = unk_27EE60F70;
  v4 = qword_27EE60F78;
  v5 = byte_27EE60F80;
  *a1 = qword_27EE60F58;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

void sub_247BDEE48()
{
  qword_27EE60F90 = 0;
  *algn_27EE60F98 = 0xE000000000000000;
  qword_27EE60FA0 = 0;
  unk_27EE60FA8 = 0xE000000000000000;
  qword_27EE60FB0 = 10;
  byte_27EE60FB8 = 0;
}

uint64_t static PrintUtilsIntegerFormat.decimal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE60F88 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EE60F98;
  v2 = qword_27EE60FA0;
  v3 = unk_27EE60FA8;
  v4 = qword_27EE60FB0;
  v5 = byte_27EE60FB8;
  *a1 = qword_27EE60F90;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

void sub_247BDEF00()
{
  qword_27EE60FC8 = 48;
  unk_27EE60FD0 = 0xE100000000000000;
  qword_27EE60FD8 = 30768;
  unk_27EE60FE0 = 0xE200000000000000;
  qword_27EE60FE8 = 16;
  byte_27EE60FF0 = 0;
}

uint64_t static PrintUtilsIntegerFormat.hex.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE60FC0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EE60FD0;
  v2 = qword_27EE60FD8;
  v3 = unk_27EE60FE0;
  v4 = qword_27EE60FE8;
  v5 = byte_27EE60FF0;
  *a1 = qword_27EE60FC8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

void sub_247BDEFC4()
{
  qword_27EE61000 = 48;
  *algn_27EE61008 = 0xE100000000000000;
  qword_27EE61010 = 30768;
  unk_27EE61018 = 0xE200000000000000;
  qword_27EE61020 = 16;
  byte_27EE61028 = 1;
}

uint64_t static PrintUtilsIntegerFormat.HEX.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE60FF8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EE61008;
  v2 = qword_27EE61010;
  v3 = unk_27EE61018;
  v4 = qword_27EE61020;
  v5 = byte_27EE61028;
  *a1 = qword_27EE61000;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

void sub_247BDF08C()
{
  qword_27EE61038 = 48;
  unk_27EE61040 = 0xE100000000000000;
  qword_27EE61048 = 48;
  unk_27EE61050 = 0xE100000000000000;
  qword_27EE61058 = 8;
  byte_27EE61060 = 0;
}

uint64_t static PrintUtilsIntegerFormat.octal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE61030 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EE61040;
  v2 = qword_27EE61048;
  v3 = unk_27EE61050;
  v4 = qword_27EE61058;
  v5 = byte_27EE61060;
  *a1 = qword_27EE61038;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t DefaultStringInterpolation.PrintUtilsTimeDuration.hashValue.getter()
{
  sub_247BF7460();
  MEMORY[0x24C1B4F40](0);
  return sub_247BF74A0();
}

unint64_t *DefaultStringInterpolation.appendInterpolation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = *(a4 + 24);
  v51 = *(v58 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v49[1] = v49 - v8;
  v57 = *(a3 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v59 = *(swift_getAssociatedConformanceWitness() + 16);
  v10 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v10);
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v49 - v16;
  v61 = a1;
  sub_247BF6920();
  v62 = a4;
  swift_getAssociatedConformanceWitness();
  if (sub_247BF6B80())
  {
    swift_getAssociatedConformanceWitness();
    sub_247BF7370();
    sub_247BF7160();
    swift_getAssociatedConformanceWitness();
    v18 = sub_247BF6430();
    result = (*(v12 + 8))(v15, v11);
    if ((v18 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v60 = a3;
  if (sub_247BF6B70() >= 64)
  {
    v55 = v12;
    v64 = -1;
    v20 = sub_247BF6B80();
    v21 = sub_247BF6B70();
    if (v20)
    {
      if (v21 <= 64)
      {
        goto LABEL_11;
      }

      sub_247BDFCCC();
      sub_247BF6B30();
      swift_getAssociatedConformanceWitness();
      v22 = sub_247BF6420();
      v12 = v55;
    }

    else
    {
      v12 = v55;
      if (v21 < 65)
      {
LABEL_12:
        sub_247BF6B60();
        goto LABEL_13;
      }

      sub_247BDFCCC();
      sub_247BF6B30();
      swift_getAssociatedConformanceWitness();
      v22 = sub_247BF6420();
    }

    (*(v12 + 8))(v15, v11);
    if ((v22 & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    swift_getAssociatedConformanceWitness();
    sub_247BF7370();
    sub_247BF7160();
    swift_getAssociatedConformanceWitness();
    v23 = sub_247BF6410();
    v12 = v55;
    (*(v55 + 8))(v15, v11);
    if ((v23 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v24 = sub_247BF6B60();
  (*(v12 + 8))(v17, v11);
  result = sub_247BED794();
  v25 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (!v25)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  result = sub_247BED764();
  v26 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v26)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  result = sub_247BED750();
  v27 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (!v27)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  result = sub_247BED73C();
  v28 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (!v28)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  v52 = v24 / v25;
  v29 = v24 % v25;
  v53 = v24 % v25 / v26;
  v30 = v24 % v25 % v26;
  v54 = v30 / v27;
  v58 = v24;
  v59 = v30;
  v31 = v30 % v27;
  v32 = v30 % v27 / v28;
  v33 = v60;
  if (sub_247BF6B80())
  {
    v55 = v31;
    if (sub_247BF6B70() < 64)
    {
      v34 = sub_247BF6B60();
      v31 = v55;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v64 = 0;
    sub_247BC360C();
    v49[0] = v32;
    v39 = v56;
    sub_247BF6B30();
    v38 = sub_247BF6420();
    v40 = v39;
    v32 = v49[0];
    (*(v57 + 8))(v40, v33);
LABEL_29:
    v31 = v55;
    if ((v38 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_35:
    MEMORY[0x24C1B4020](45, 0xE100000000000000);
    goto LABEL_36;
  }

  v35 = sub_247BF6B80();
  v36 = sub_247BF6B70();
  if (v35)
  {
    v55 = v31;
    if (v36 > 64)
    {
      v64 = 0;
      sub_247BC360C();
      v37 = v56;
      sub_247BF6B30();
      v38 = sub_247BF6420();
      (*(v57 + 8))(v37, v33);
      goto LABEL_29;
    }

    swift_getAssociatedConformanceWitness();
    v49[0] = v32;
    sub_247BF7370();
    v41 = v56;
    v32 = v49[0];
    sub_247BF7160();
    v42 = sub_247BF6420();
    (*(v57 + 8))(v41, v33);
    v31 = v55;
    if (v42)
    {
      goto LABEL_35;
    }

LABEL_34:
    if ((sub_247BF6B60() & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v36 < 64)
  {
    goto LABEL_34;
  }

LABEL_36:
  v43 = v31 - v32 * v28;
  if (v25 <= v58)
  {
    v63 = v52;
    v64 = sub_247BF6FD0();
    v65 = v44;
    MEMORY[0x24C1B4020](121, 0xE100000000000000);
    MEMORY[0x24C1B4020](v64, v65);

    if (v26 > v29)
    {
LABEL_45:
      if (v27 > v59)
      {
        if (v28 <= v31)
        {
LABEL_51:
          MEMORY[0x24C1B4020](32, 0xE100000000000000);
LABEL_52:
          v63 = v32;
          v64 = sub_247BF6FD0();
          v65 = v47;
          MEMORY[0x24C1B4020](109, 0xE100000000000000);
          MEMORY[0x24C1B4020](v64, v65);

          if (!v43)
          {
            return result;
          }

          goto LABEL_53;
        }

LABEL_47:
        if (!v43)
        {
          return result;
        }

LABEL_53:
        MEMORY[0x24C1B4020](32, 0xE100000000000000);
        goto LABEL_54;
      }

      MEMORY[0x24C1B4020](32, 0xE100000000000000);
LABEL_50:
      v63 = v54;
      v64 = sub_247BF6FD0();
      v65 = v46;
      MEMORY[0x24C1B4020](104, 0xE100000000000000);
      MEMORY[0x24C1B4020](v64, v65);

      if (v28 <= v31)
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

    MEMORY[0x24C1B4020](32, 0xE100000000000000);
LABEL_44:
    v63 = v53;
    v64 = sub_247BF6FD0();
    v65 = v45;
    MEMORY[0x24C1B4020](100, 0xE100000000000000);
    MEMORY[0x24C1B4020](v64, v65);

    goto LABEL_45;
  }

  if (v26 <= v29)
  {
    goto LABEL_44;
  }

  if (v27 <= v59)
  {
    goto LABEL_50;
  }

  if (v28 <= v31)
  {
    goto LABEL_52;
  }

  if (v43)
  {
LABEL_54:
    v63 = v31 - v32 * v28;
    goto LABEL_55;
  }

  v63 = 0;
LABEL_55:
  v64 = sub_247BF6FD0();
  v65 = v48;
  MEMORY[0x24C1B4020](115, 0xE100000000000000);
  MEMORY[0x24C1B4020](v64, v65);
}

unint64_t sub_247BDFCCC()
{
  result = qword_27EE5E1A0;
  if (!qword_27EE5E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E1A0);
  }

  return result;
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:_:prefix:pad:)(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v37 = a4;
  v34 = a3;
  v11 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v35 = v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x28223BE20](v12);
  v29 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v28[2] = a2[1];
  v28[3] = v16;
  v17 = a2[2];
  v30 = a2[3];
  v31 = v17;
  v33 = a2[4];
  v32 = *(a2 + 40);
  if (sub_247BF6B80())
  {
    if (sub_247BF6B70() >= 64)
    {
      v38 = 0;
      sub_247BC360C();
      sub_247BF6B30();
      v18 = sub_247BF6420();
      (*(v29 + 8))(v15, a5);
      if ((v18 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_13:
      MEMORY[0x24C1B4020](45, 0xE100000000000000);
      goto LABEL_14;
    }

LABEL_12:
    if ((sub_247BF6B60() & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v28[1] = v7;
  v19 = sub_247BF6B80();
  v28[0] = a1;
  v20 = sub_247BF6B70();
  if (v19)
  {
    if (v20 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_247BF7370();
      sub_247BF7160();
      v22 = sub_247BF6420();
      (*(v29 + 8))(v15, a5);
      if (v22)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v38 = 0;
    sub_247BC360C();
    sub_247BF6B30();
    v21 = sub_247BF6420();
    (*(v29 + 8))(v15, a5);
    if (v21)
    {
      goto LABEL_13;
    }
  }

  else if (v20 < 64)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (v34)
  {
    MEMORY[0x24C1B4020](v31, v30);
  }

  sub_247BF6920();
  swift_getAssociatedConformanceWitness();
  v23 = sub_247BF65D0();
  v25 = v24;
  result = sub_247BF6510();
  if (result >= v37)
  {
    goto LABEL_19;
  }

  if (!__OFSUB__(v37, result))
  {

    v27 = sub_247BF65C0();
    MEMORY[0x24C1B4020](v27);

LABEL_19:
    MEMORY[0x24C1B4020](v23, v25);
  }

  __break(1u);
  return result;
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a1;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v34[-v14];
  v35 = *a2;
  if (v35)
  {
    v16 = &unk_2859CECD8;
  }

  else
  {
    v16 = &unk_2859CEBB8;
  }

  (*(v10 + 16))(v12, v36, a5);
  v36 = v16;

  sub_247BF6610();
  swift_getAssociatedConformanceWitness();
  sub_247BF6AE0();
  if ((v39 & 1) == 0)
  {
    v17 = v38;
    v18 = &unk_2859CEBB8;
    if (v35)
    {
      v18 = &unk_2859CECD8;
    }

    v19 = v18 + 32;
    v20 = &v18[(v38 & 0xF0) + 32];
    v21 = *v20;
    v22 = *(v20 + 1);

    MEMORY[0x24C1B4020](v21, v22);

    v23 = &v19[16 * (v17 & 0xF)];
    v24 = *v23;
    v25 = *(v23 + 1);

    MEMORY[0x24C1B4020](v24, v25);

    sub_247BF6AE0();
    if ((v39 & 1) == 0)
    {
      v26 = v38;
      do
      {
        MEMORY[0x24C1B4020](a3, a4);
        v27 = &v19[v26 & 0xF0];
        v28 = *v27;
        v29 = *(v27 + 1);

        MEMORY[0x24C1B4020](v28, v29);

        v30 = &v19[16 * (v26 & 0xF)];
        v31 = *v30;
        v32 = *(v30 + 1);

        MEMORY[0x24C1B4020](v31, v32);

        sub_247BF6AE0();
        v26 = v38;
      }

      while (v39 != 1);
    }
  }

  (*(v37 + 8))(v15, AssociatedTypeWitness);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:_:width:pad:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v9 = sub_247BF6FD0();
  v11 = v10;
  result = sub_247BF6510();
  v13 = result;
  if ((v8 & 1) == 0)
  {
    MEMORY[0x24C1B4020](v9, v11);

    if (v13 >= a3)
    {
      return result;
    }

    if (!__OFSUB__(a3, v13))
    {

      v15 = sub_247BF65C0();
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (result < a3)
  {
    if (!__OFSUB__(a3, result))
    {

      v14 = sub_247BF65C0();
      MEMORY[0x24C1B4020](v14);

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_5:
  v15 = v9;
  v16 = v11;
LABEL_9:
  MEMORY[0x24C1B4020](v15, v16);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(nilPrint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247BF6AC0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    return DefaultStringInterpolation.appendInterpolation<A>(_:)(a1, a2, a3);
  }

  else
  {
    (*(v11 + 32))(v13, v10, a2);
    sub_247BF7150();
    return (*(v11 + 8))(v13, a2);
  }
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247BF6AC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, a1, v6);
  v10 = *(a2 - 8);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v16[3] = MEMORY[0x277D837D0];
    v16[4] = MEMORY[0x277D83838];
    v16[0] = 7104878;
    v16[1] = 0xE300000000000000;
  }

  else
  {
    v14 = a2;
    v15 = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
    (*(v10 + 32))(boxed_opaque_existential_0, v9, a2);
    sub_247B93B4C(&v13, v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC30, &qword_247BFC500);
  sub_247BF6DC0();
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

unint64_t sub_247BE09F8()
{
  result = qword_27EE5E1A8;
  if (!qword_27EE5E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E1A8);
  }

  return result;
}

unint64_t sub_247BE0A50()
{
  result = qword_27EE5E1B0;
  if (!qword_27EE5E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E1B0);
  }

  return result;
}

unint64_t sub_247BE0AA8()
{
  result = qword_27EE5E1B8;
  if (!qword_27EE5E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E1B8);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_247BE0B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_247BE0B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUAsyncSerialQueue.OrderingPolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CUAsyncSerialQueue.OrderingPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static CUDictionaryEncoder.Configuration.default.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27EE61370 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = HIBYTE(word_27EE61378);
  v2 = byte_27EE6137A;
  *a1 = word_27EE61378;
  a1[1] = v1;
  a1[2] = v2;
  return result;
}

CoreUtilsSwift::CUDictionaryEncoder __swiftcall CUDictionaryEncoder.init(configuration:)(CoreUtilsSwift::CUDictionaryEncoder configuration)
{
  v2 = *(*&configuration._configuration.allowData + 1);
  v3 = *(*&configuration._configuration.allowData + 2);
  *v1 = **&configuration._configuration.allowData;
  v1[1] = v2;
  v1[2] = v3;
  return configuration;
}

uint64_t CUDictionaryEncoder.encode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  type metadata accessor for CUDictionaryEncoder.Context();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v9;
  *(v12 + 17) = v10;
  *(v12 + 18) = v11;
  type metadata accessor for _CUDictionaryEncoder();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84F90];
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  v15 = MEMORY[0x277D84F98];
  *(v13 + 64) = 0;
  *(v13 + 72) = v15;
  *(v13 + 16) = v14;
  *(v13 + 24) = v12;
  _CUDictionaryEncoder.encode<A>(_:)(a1, a2, a3, a4);
}

uint64_t CUDictionaryEncoder.Context.__allocating_init(configuration:)(char *a1)
{
  result = swift_allocObject();
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  *(result + 24) = 0;
  *(result + 16) = v3;
  *(result + 17) = v4;
  *(result + 18) = v5;
  return result;
}

double _CUDictionaryEncoder.__allocating_init(context:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F98];
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = v4;
  *(v2 + 16) = v3;
  *(v2 + 24) = a1;
  return result;
}

_OWORD *_CUDictionaryEncoder.encode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v66 = a4;
  v5 = v4;
  v64 = *v5;
  v65 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E1C0, &qword_247BFC710);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v57 - v9;
  v10 = sub_247BF5F30();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E1C8, &unk_247BFC718);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v57 - v13;
  v15 = sub_247BF5EC0();
  v63 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v59 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a2;
  v18 = *(a2 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v57 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v5[3];
  if (v26[16] == 1)
  {
    v57 = v5;
    (*(v18 + 16))(&v57 - v25, a1, v73);
    if (swift_dynamicCast())
    {
      v27 = v70;
      v28 = sub_247BF5E70();
      v29 = sub_247BC3818(0, &qword_27EE5E1E8, 0x277CBEA90);
      v30 = v66;
      v66[3] = v29;
      result = sub_247BC2AC4(v27, *(&v27 + 1));
      *v30 = v28;
      return result;
    }

    v5 = v57;
  }

  if (v26[17] == 1)
  {
    (*(v18 + 16))(v24, a1, v73);
    v32 = swift_dynamicCast();
    v33 = v63;
    v34 = *(v63 + 56);
    if (v32)
    {
      v34(v14, 0, 1, v15);
      v35 = v59;
      (*(v33 + 32))(v59, v14, v15);
      v36 = v33;
      v37 = sub_247BF5EA0();
      v38 = sub_247BC3818(0, &qword_27EE5E1E0, 0x277CBEAA8);
      v39 = v66;
      v66[3] = v38;
      *v39 = v37;
      return (*(v36 + 8))(v35, v15);
    }

    v34(v14, 1, 1, v15);
    sub_247B9CAD0(v14, &qword_27EE5E1C8, &unk_247BFC718);
  }

  v40 = v26[18];
  v41 = v67;
  if (v40 == 1)
  {
    (*(v18 + 16))(v21, a1, v73);
    v42 = v60;
    v43 = v62;
    v44 = swift_dynamicCast();
    v45 = v61;
    v46 = *(v61 + 56);
    if (v44)
    {
      v46(v42, 0, 1, v43);
      v47 = v58;
      (*(v45 + 32))(v58, v42, v43);
      v48 = sub_247BF5EE0();
      v49 = sub_247BC3818(0, &qword_27EE5E1D8, 0x277CCAD78);
      v50 = v66;
      v66[3] = v49;
      *v50 = v48;
      return (*(v45 + 8))(v47, v43);
    }

    v46(v42, 1, 1, v43);
    sub_247B9CAD0(v42, &qword_27EE5E1C0, &qword_247BFC710);
  }

  v71 = v64;
  v72 = sub_247BE1BAC();
  *&v70 = v5;

  sub_247BF6360();
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v70);
  if (!v41)
  {
    swift_beginAccess();
    v51 = v5[7];
    if (v51)
    {
      v52 = v5[8];
      v53 = __swift_project_boxed_opaque_existential_1(v5 + 4, v5[7]);
      v54 = *(v51 - 8);
      MEMORY[0x28223BE20](v53);
      v56 = &v57 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v56);
      (*(v52 + 8))(&v68, v51, v52);
      (*(v54 + 8))(v56, v51);
      if (*(&v69 + 1))
      {
        sub_247B9471C(&v68, &v70);
        return sub_247B9471C(&v70, v66);
      }
    }

    else
    {
      v68 = 0u;
      v69 = 0u;
    }

    sub_247B9CAD0(&v68, &unk_27EE5DDB0, &unk_247BFA900);
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6762, 0x65756C6176206F4ELL, 0xE800000000000000, 0);
    return swift_willThrow();
  }

  return result;
}

CoreUtilsSwift::CUDictionaryEncoder::Configuration __swiftcall CUDictionaryEncoder.Configuration.init(allowData:allowDate:allowUUID:)(Swift::Bool allowData, Swift::Bool allowDate, Swift::Bool allowUUID)
{
  *v3 = allowData;
  v3[1] = allowDate;
  v3[2] = allowUUID;
  result.allowData = allowData;
  return result;
}

void CUDictionaryEncoder.Context.configuration.getter(_BYTE *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  *a1 = v1[16];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t CUDictionaryEncoder.Context.depth.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t CUDictionaryEncoder.Context.init(configuration:)(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(v1 + 24) = 0;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  *(v1 + 18) = v4;
  return v1;
}

uint64_t _CUDictionaryEncoder.codingPath.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t _CUDictionaryEncoder.userInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t _CUDictionaryEncoder.init(context:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F98];
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v2;
  *(v1 + 24) = a1;
  return v1;
}

unint64_t sub_247BE1BAC()
{
  result = qword_27EE5E1D0;
  if (!qword_27EE5E1D0)
  {
    type metadata accessor for _CUDictionaryEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E1D0);
  }

  return result;
}

uint64_t _CUDictionaryEncoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for _CUDictionaryEncoder.KeyedContainer(0, a2, a3, a4);
  v7 = *(v5 + 24);
  swift_beginAccess();
  v8 = *(v5 + 16);

  v9 = sub_247BE1D28(v7, v8);
  v11[3] = v6;
  v11[4] = &off_2859CF250;
  v11[0] = v9;
  swift_beginAccess();

  sub_247BE67B4(v11, v5 + 32, &qword_27EE5E1F0, &qword_247BFC728);
  swift_endAccess();
  v11[0] = v9;
  swift_getWitnessTable();
  return sub_247BF6FB0();
}

void *sub_247BE1D28(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_247BF62C0();
  v6 = MEMORY[0x277D84F90];
  v4[4] = v5;
  v4[5] = v6;
  v4[2] = a2;
  v4[3] = a1;
  return v4;
}

uint64_t _CUDictionaryEncoder.singleValueContainer()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = type metadata accessor for _CUDictionaryEncoder.SingleValueContainer();
  v6 = swift_allocObject();
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v8[3] = v5;
  v8[4] = &off_2859CF240;
  v8[0] = v6;
  swift_beginAccess();

  sub_247BE67B4(v8, v1 + 32, &qword_27EE5E1F0, &qword_247BFC728);
  swift_endAccess();
  a1[3] = v5;
  result = sub_247BE2010(&qword_27EE61380, type metadata accessor for _CUDictionaryEncoder.SingleValueContainer, &unk_247BFCACC);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t _CUDictionaryEncoder.unkeyedContainer()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = type metadata accessor for _CUDictionaryEncoder.UnkeyedContainer();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  v6[3] = v3;
  v6[4] = v7;
  v6[2] = v4;
  v9[3] = v5;
  v9[4] = &off_2859CF230;
  v9[0] = v6;
  swift_beginAccess();

  sub_247BE67B4(v9, v1 + 32, &qword_27EE5E1F0, &qword_247BFC728);
  swift_endAccess();
  a1[3] = v5;
  result = sub_247BE2010(qword_27EE61388, type metadata accessor for _CUDictionaryEncoder.UnkeyedContainer, &unk_247BFC954);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_247BE2010(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247BE2054(uint64_t a1)
{
  swift_beginAccess();
  sub_247BE6744(v1 + 32, v8);
  v3 = v9;
  sub_247B9CAD0(v8, &unk_27EE5DDB0, &unk_247BFA900);
  if (v3)
  {
    v4 = sub_247BF6D60();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E218, &qword_247BFCD50);
    sub_247B9B1AC(a1, v6);

    sub_247BF6D30();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D841A8], v4);
    return swift_willThrow();
  }

  else
  {
    sub_247B9B1AC(a1, v8);
    swift_beginAccess();
    sub_247BE67B4(v8, v1 + 32, &unk_27EE5DDB0, &unk_247BFA900);
    return swift_endAccess();
  }
}

uint64_t sub_247BE21D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v56 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E1C0, &qword_247BFC710);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v44 - v6;
  v7 = sub_247BF5F30();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E1C8, &unk_247BFC718);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - v10;
  v12 = sub_247BF5EC0();
  v50 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v46 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v44 - v20;
  MEMORY[0x28223BE20](v19);
  v52 = v3;
  v23 = *(v3 + 24);
  if (v23[16] == 1 && ((*(v15 + 16))(&v44 - v22, v56, a2), (swift_dynamicCast() & 1) != 0))
  {
    v24 = v54[0];
    v25 = v54[1];
    v26 = sub_247BF5E70();
    v55 = sub_247BC3818(0, &qword_27EE5E1E8, 0x277CBEA90);
    v54[0] = v26;
    sub_247BE2054(v54);
    sub_247BC2AC4(v24, v25);
  }

  else
  {
    if (v23[17] == 1)
    {
      (*(v15 + 16))(v21, v56, a2);
      v27 = swift_dynamicCast();
      v28 = v50;
      v29 = *(v50 + 56);
      if (v27)
      {
        v29(v11, 0, 1, v12);
        v30 = v46;
        (*(v28 + 32))(v46, v11, v12);
        v31 = sub_247BF5EA0();
        v55 = sub_247BC3818(0, &qword_27EE5E1E0, 0x277CBEAA8);
        v54[0] = v31;
        sub_247BE2054(v54);
        (*(v28 + 8))(v30, v12);
        return __swift_destroy_boxed_opaque_existential_1Tm(v54);
      }

      v29(v11, 1, 1, v12);
      sub_247B9CAD0(v11, &qword_27EE5E1C8, &unk_247BFC718);
    }

    if (v23[18] == 1)
    {
      (*(v15 + 16))(v18, v56, a2);
      v32 = v47;
      v33 = v49;
      v34 = swift_dynamicCast();
      v35 = v48;
      v36 = *(v48 + 56);
      if (v34)
      {
        v36(v32, 0, 1, v33);
        v37 = v45;
        (*(v35 + 32))(v45, v32, v33);
        v38 = sub_247BF5EE0();
        v55 = sub_247BC3818(0, &qword_27EE5E1D8, 0x277CCAD78);
        v54[0] = v38;
        sub_247BE2054(v54);
        (*(v35 + 8))(v37, v33);
        return __swift_destroy_boxed_opaque_existential_1Tm(v54);
      }

      v36(v32, 1, 1, v33);
      sub_247B9CAD0(v32, &qword_27EE5E1C0, &qword_247BFC710);
    }

    type metadata accessor for _CUDictionaryEncoder();
    v39 = swift_allocObject();
    v40 = MEMORY[0x277D84F90];
    *(v39 + 32) = 0u;
    *(v39 + 48) = 0u;
    v41 = MEMORY[0x277D84F98];
    *(v39 + 64) = 0;
    *(v39 + 72) = v41;
    *(v39 + 16) = v40;
    *(v39 + 24) = v23;

    v42 = v53;
    _CUDictionaryEncoder.encode<A>(_:)(v56, a2, v51, v54);

    if (v42)
    {
      return result;
    }

    sub_247BE2054(v54);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

uint64_t sub_247BE27E8()
{

  sub_247B9CAD0(v0 + 32, &unk_27EE5DDB0, &unk_247BFA900);

  return swift_deallocClassInstance();
}

uint64_t sub_247BE2840()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v2[3] = sub_247BC3818(0, &qword_27EE5E220, 0x277CBEB68);
  v2[0] = v0;
  sub_247BE2054(v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_247BE28CC(char a1)
{
  v2[3] = MEMORY[0x277D839B0];
  LOBYTE(v2[0]) = a1;
  sub_247BE2054(v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_247BE291C(uint64_t a1, uint64_t a2)
{
  v3[3] = MEMORY[0x277D837D0];
  v3[0] = a1;
  v3[1] = a2;

  sub_247BE2054(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_247BE2974(double a1)
{
  v2[3] = MEMORY[0x277D839F8];
  *v2 = a1;
  sub_247BE2054(v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_247BE29C4(float a1)
{
  v2[3] = MEMORY[0x277D83A90];
  *v2 = a1;
  sub_247BE2054(v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_247BE2AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[0] = a1;
  sub_247BE2054(v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_247BE2B5C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  LOBYTE(v5[0]) = a1;
  sub_247BE2054(v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_247BE2BC4(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  LOWORD(v5[0]) = a1;
  sub_247BE2054(v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_247BE2C2C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  LODWORD(v5[0]) = a1;
  sub_247BE2054(v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_247BE2CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[3] = a5;
  v7 = swift_allocObject();
  v9[0] = v7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_247BE2054(v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t sub_247BE2D50@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_247BE6744(v3 + 32, a1);
}

uint64_t sub_247BE2DAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v3;
  v50 = *v2;
  v6 = *(v50 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v48 = &v43 - v8;
  swift_beginAccess();

  v49 = v6;
  v9 = sub_247BF66F0();

  if (v9 < 0)
  {
    goto LABEL_33;
  }

  v44 = a2;
  swift_beginAccess();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F98];
LABEL_28:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E1F8, &qword_247BFCD20);
    v42 = v44;
    v44[3] = result;
    *v42 = v11;
    return result;
  }

  v47 = v2;
  v10 = 0;
  v46 = (v7 + 8);
  v11 = MEMORY[0x277D84F98];
  v12 = 32;
  v45 = v9;
  while (1)
  {
    v15 = v4;
    v16 = v47;
    swift_beginAccess();
    v17 = v48;
    v18 = v49;
    sub_247BF6730();
    swift_endAccess();
    v19 = sub_247BF7590();
    v21 = v20;
    (*v46)(v17, v18);
    v54[0] = v19;
    v54[1] = v21;
    sub_247BF6C70();
    v22 = v16[5];
    if (v10 >= *(v22 + 16))
    {
      break;
    }

    sub_247B9C53C(v22 + v12, v54);
    v23 = v55;
    v24 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    (*(v24 + 8))(&v52, v23, v24);
    v4 = v15;
    if (v15)
    {
      sub_247BC5A5C(v57);

      return __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }

    if (!v53)
    {
      sub_247B9CAD0(&v52, &unk_27EE5DDB0, &unk_247BFA900);
      v34 = sub_247BBEADC(v57);
      if (v35)
      {
        v36 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v11;
        v14 = v45;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_247BE6188();
          v11 = v58;
        }

        sub_247BC5A5C(v11[6] + 40 * v36);
        sub_247B9471C((v11[7] + 32 * v36), v51);
        sub_247BBF224(v36, v11);
        sub_247BC5A5C(v57);
      }

      else
      {
        sub_247BC5A5C(v57);
        memset(v51, 0, sizeof(v51));
        v14 = v45;
      }

      sub_247B9CAD0(v51, &unk_27EE5DDB0, &unk_247BFA900);
      goto LABEL_6;
    }

    sub_247B9471C(&v52, v51);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v11;
    v27 = sub_247BBEADC(v57);
    v28 = v11[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_31;
    }

    v31 = v26;
    if (v11[3] >= v30)
    {
      if (v25)
      {
        v11 = v58;
        if ((v26 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_247BE6188();
        v11 = v58;
        if ((v31 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_247BE5ED0(v30, v25);
      v32 = sub_247BBEADC(v57);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_34;
      }

      v27 = v32;
      v11 = v58;
      if ((v31 & 1) == 0)
      {
LABEL_21:
        v11[(v27 >> 6) + 8] |= 1 << v27;
        sub_247BC5AB0(v57, v11[6] + 40 * v27);
        sub_247B9471C(v51, (v11[7] + 32 * v27));
        sub_247BC5A5C(v57);
        v38 = v11[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_32;
        }

        v11[2] = v40;
        goto LABEL_5;
      }
    }

    v13 = (v11[7] + 32 * v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    sub_247B9471C(v51, v13);
    sub_247BC5A5C(v57);
LABEL_5:
    v14 = v45;
LABEL_6:
    ++v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    v12 += 40;
    if (v14 == v10)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_247BF73C0();
  __break(1u);
  return result;
}

uint64_t sub_247BE32CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC68, &unk_247BFCD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247BFA840;
  sub_247B9C53C(a1, inited + 32);

  sub_247BE632C(inited);
  return v3;
}

uint64_t sub_247BE3354@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26[1] = a3;
  v6 = *v3;
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v26 - v9;
  v14 = type metadata accessor for _CUDictionaryEncoder.KeyedContainer(0, v11, v12, v13);
  v15 = v4[3];
  v28[3] = v7;
  v28[4] = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  v17 = *(v8 + 16);
  v17(boxed_opaque_existential_0, a1, v7);

  v18 = sub_247BE32CC(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v19 = sub_247BE1D28(v15, v18);
  v17(v10, a1, v7);
  swift_beginAccess();
  sub_247BF6720();
  sub_247BF6700();
  swift_endAccess();
  swift_beginAccess();
  v20 = v4[5];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[5] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_247BE6564(0, v20[2] + 1, 1, v20, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    v4[5] = v20;
  }

  v22 = v20[2];
  v23 = v20[3];
  if (v22 >= v23 >> 1)
  {
    v25 = v20[2];
    v20 = sub_247BE6564((v23 > 1), v22 + 1, 1, v20, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    v22 = v25;
    v4[5] = v20;
  }

  v27 = v19;
  sub_247BE66AC(v22, &v27, v4 + 5, v14, &off_2859CF250);
  v4[5] = v20;
  swift_endAccess();
  v28[0] = v19;
  swift_getWitnessTable();
  return sub_247BF6FB0();
}

uint64_t sub_247BE3628@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v22 - v7;
  v9 = v2[3];
  v25 = v5;
  v26 = *(v10 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
  v12 = *(v6 + 16);
  v12(boxed_opaque_existential_0, a1, v5);

  v13 = sub_247BE32CC(&v24);
  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  v14 = type metadata accessor for _CUDictionaryEncoder.SingleValueContainer();
  v15 = swift_allocObject();
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 16) = v13;
  *(v15 + 24) = v9;
  v12(v8, a1, v5);
  swift_beginAccess();
  sub_247BF6720();
  sub_247BF6700();
  swift_endAccess();
  swift_beginAccess();
  v16 = v3[5];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[5] = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_247BE6564(0, v16[2] + 1, 1, v16, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    v3[5] = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_247BE6564((v18 > 1), v19 + 1, 1, v16, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
  }

  v25 = v14;
  v26 = &off_2859CF240;
  *&v24 = v15;
  v16[2] = v19 + 1;
  sub_247B93B4C(&v24, &v16[5 * v19 + 4]);
  v3[5] = v16;
  swift_endAccess();
  v20 = v23;
  v23[3] = v14;
  result = sub_247BE2010(&qword_27EE61380, type metadata accessor for _CUDictionaryEncoder.SingleValueContainer, &unk_247BFCACC);
  v20[4] = result;
  *v20 = v15;
  return result;
}

uint64_t sub_247BE3904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v23 - v7;
  v9 = v2[3];
  v26 = v5;
  v27 = *(v10 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
  v12 = *(v6 + 16);
  v12(boxed_opaque_existential_0, a1, v5);

  v13 = sub_247BE32CC(&v25);
  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  v14 = type metadata accessor for _CUDictionaryEncoder.UnkeyedContainer();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84F90];
  v15[3] = v9;
  v15[4] = v16;
  v15[2] = v13;
  v12(v8, a1, v5);
  swift_beginAccess();
  sub_247BF6720();
  sub_247BF6700();
  swift_endAccess();
  swift_beginAccess();
  v17 = v3[5];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[5] = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_247BE6564(0, v17[2] + 1, 1, v17, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    v3[5] = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_247BE6564((v19 > 1), v20 + 1, 1, v17, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
  }

  v26 = v14;
  v27 = &off_2859CF230;
  *&v25 = v15;
  v17[2] = v20 + 1;
  sub_247B93B4C(&v25, &v17[5 * v20 + 4]);
  v3[5] = v17;
  swift_endAccess();
  v21 = v24;
  v24[3] = v14;
  result = sub_247BE2010(qword_27EE61388, type metadata accessor for _CUDictionaryEncoder.UnkeyedContainer, &unk_247BFC954);
  v21[4] = result;
  *v21 = v15;
  return result;
}

uint64_t sub_247BE3C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_247BE3628(a2, v5);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_247BE3D20(uint64_t a1)
{
  sub_247BE3628(a1, v2);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_247BF7270();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_247BE3D8C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_247BE3E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = a2;
  v4[0] = a1;
  return sub_247BE3C88(v4, a3, MEMORY[0x277D837D0], MEMORY[0x277D837D8]);
}

uint64_t sub_247BE4558@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = v3 + 32;
    v8 = MEMORY[0x277D84F90];
    while (v6 < *(v3 + 16))
    {
      sub_247B9C53C(v7, v17);
      v9 = v18;
      v10 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v10 + 8))(&v14, v9, v10);
      if (v2)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      if (!v15)
      {

        sub_247B9CAD0(&v14, &unk_27EE5DDB0, &unk_247BFA900);
        type metadata accessor for CUError();
        CUError.__allocating_init(_:_:_:)(-6762, 0xD000000000000012, 0x8000000247C01B30, 0);
        return swift_willThrow();
      }

      sub_247B9471C(&v14, v16);
      sub_247B9B1AC(v16, &v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_247BE6454(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_247BE6454((v11 > 1), v12 + 1, 1, v8);
      }

      ++v6;
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      *(v8 + 2) = v12 + 1;
      result = sub_247B9471C(&v14, &v8[32 * v12 + 32]);
      v7 += 40;
      if (v4 == v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_13:

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E228, &qword_247BFCD58);
    v13 = v20;
    v20[3] = result;
    *v13 = v8;
  }

  return result;
}

uint64_t sub_247BE47A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for _CUDictionaryEncoder.KeyedContainer(0, a1, a2, a4);
  v9 = v4 + 16;
  v7 = *(v4 + 16);
  v8 = *(v9 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC68, &unk_247BFCD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247BFA840;
  swift_beginAccess();
  v11 = *(*(v5 + 32) + 16);
  *(inited + 56) = &type metadata for _CUDictionaryEncoder.UnkeyedContainer.Index;
  *(inited + 64) = sub_247BE681C();
  *(inited + 32) = v11;
  *(inited + 40) = 0;
  v20 = v7;

  sub_247BE632C(inited);
  v12 = sub_247BE1D28(v8, v7);
  swift_beginAccess();
  v13 = *(v5 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_247BE6564(0, v13[2] + 1, 1, v13, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    *(v5 + 32) = v13;
  }

  v15 = v13[2];
  v16 = v13[3];
  if (v15 >= v16 >> 1)
  {
    v18 = v13[2];
    v13 = sub_247BE6564((v16 > 1), v15 + 1, 1, v13, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    v15 = v18;
    *(v5 + 32) = v13;
  }

  v19 = v12;
  sub_247BE66AC(v15, &v19, (v5 + 32), v6, &off_2859CF250);
  *(v5 + 32) = v13;
  swift_endAccess();
  v20 = v12;
  swift_getWitnessTable();
  return sub_247BF6FB0();
}

uint64_t sub_247BE49C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v6 = v1 + 16;
  v4 = *(v1 + 16);
  v5 = *(v6 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC68, &unk_247BFCD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247BFA840;
  swift_beginAccess();
  v8 = *(*(v2 + 32) + 16);
  *(inited + 56) = &type metadata for _CUDictionaryEncoder.UnkeyedContainer.Index;
  *(inited + 64) = sub_247BE681C();
  *(inited + 32) = v8;
  *(inited + 40) = 0;
  *&v17 = v4;

  sub_247BE632C(inited);
  v9 = v4;
  v10 = type metadata accessor for _CUDictionaryEncoder.SingleValueContainer();
  v11 = swift_allocObject();
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 16) = v9;
  *(v11 + 24) = v5;
  swift_beginAccess();
  v12 = *(v2 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 32) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_247BE6564(0, v12[2] + 1, 1, v12, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    *(v2 + 32) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_247BE6564((v14 > 1), v15 + 1, 1, v12, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
  }

  v18 = v10;
  v19 = &off_2859CF240;
  *&v17 = v11;
  v12[2] = v15 + 1;
  sub_247B93B4C(&v17, &v12[5 * v15 + 4]);
  *(v2 + 32) = v12;
  swift_endAccess();
  a1[3] = v10;
  result = sub_247BE2010(&qword_27EE61380, type metadata accessor for _CUDictionaryEncoder.SingleValueContainer, &unk_247BFCACC);
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_247BE4BF4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v7 = v1 + 2;
  v5 = v1[2];
  v6 = v7[1];
  v8 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC68, &unk_247BFCD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247BFA840;
  swift_beginAccess();
  v10 = *(v2[4] + 16);
  *(inited + 56) = &type metadata for _CUDictionaryEncoder.UnkeyedContainer.Index;
  *(inited + 64) = sub_247BE681C();
  *(inited + 32) = v10;
  *(inited + 40) = 0;
  *&v19 = v5;

  sub_247BE632C(inited);
  v11 = v5;
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  v12[3] = v6;
  v12[4] = v13;
  v12[2] = v11;
  swift_beginAccess();
  v14 = v2[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[4] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_247BE6564(0, v14[2] + 1, 1, v14, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
    v2[4] = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_247BE6564((v16 > 1), v17 + 1, 1, v14, &qword_27EE5E208, &qword_247BFCD30, &qword_27EE5E210, &qword_247BFCD38);
  }

  v20 = v8;
  v21 = &off_2859CF230;
  *&v19 = v12;
  v14[2] = v17 + 1;
  sub_247B93B4C(&v19, &v14[5 * v17 + 4]);
  v2[4] = v14;
  swift_endAccess();
  a1[3] = v8;
  result = sub_247BE2010(qword_27EE61388, type metadata accessor for _CUDictionaryEncoder.UnkeyedContainer, &unk_247BFC954);
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_247BE4E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_247BE49C8(v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_247BE4F00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v6 = 0;
  v7 = 0xE000000000000000;
  v4 = v1;
  v5 = v2;
  DefaultStringInterpolation.appendInterpolation<A>(_:)(&v4, MEMORY[0x277D83B88], MEMORY[0x277D83BF8]);
  return v6;
}

unint64_t sub_247BE4F5C@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_247BE6990(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 9) = v6 & 1;
  return result;
}

uint64_t sub_247BE4F9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_247BE4FA8(uint64_t a1)
{
  v2 = sub_247BE681C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247BE4FE4(uint64_t a1)
{
  v2 = sub_247BE681C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247BE5020()
{

  return swift_deallocClassInstance();
}

uint64_t sub_247BE5068()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 32) + 16);
}

uint64_t sub_247BE50AC()
{
  sub_247BE49C8(v1);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  sub_247BF7270();
  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

uint64_t sub_247BE511C(char a1)
{
  v3 = a1;
  sub_247BE49C8(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_247BE51A4(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v6 = a2;
  sub_247BE49C8(v3);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_247BE522C(double a1)
{
  *&v2[5] = a1;
  sub_247BE49C8(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_247BE52B4(float a1)
{
  v3 = a1;
  sub_247BE49C8(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_247BE5404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a1;
  sub_247BE49C8(v6);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_247BE54FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  sub_247BE49C8(v6);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_247BE55B4(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  sub_247BE49C8(v6);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_247BE566C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  sub_247BE49C8(v6);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_247BF7240();
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

void *_CUDictionaryEncoder.deinit()
{

  sub_247B9CAD0(v0 + 32, &qword_27EE5E1F0, &qword_247BFC728);

  return v0;
}

uint64_t _CUDictionaryEncoder.__deallocating_deinit()
{

  sub_247B9CAD0(v0 + 32, &qword_27EE5E1F0, &qword_247BFC728);

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_247BE5CF8(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_247BE5D7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_247BE5ED0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E200, &qword_247BFCD28);
  result = sub_247BF6ED0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_247B9471C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_247BC5AB0(v23, &v36);
        sub_247B9B1AC(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_247BF6C50();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_247B9471C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_247BE6188()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E200, &qword_247BFCD28);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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
        sub_247BC5AB0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_247B9B1AC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_247B9471C(v22, (*(v4 + 56) + v17));
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

void *sub_247BE632C(void *result)
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

  result = sub_247BE6564(result, v10, 1, v3, &qword_27EE5DC68, &unk_247BFCD40, &qword_27EE5DC10, &qword_247BF9F98);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC10, &qword_247BF9F98);
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

char *sub_247BE6454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E230, &qword_247BFCD60);
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