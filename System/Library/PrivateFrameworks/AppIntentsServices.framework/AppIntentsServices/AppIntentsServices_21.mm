void *sub_221BA2BD8(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

void *sub_221BA2C18(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_221BA2C50(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  a2(&var1, a1);
  if (!v2)
  {
    v3 = var1;
  }

  return v3 & 1;
}

uint64_t sub_221BA2CD0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_221BC4040(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DB0, &qword_221BE8EC0);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_2219A2C54((v9 + 32 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_221BA2DE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221BA2E98;

  return sub_221BA1D10(a1, v4);
}

void OUTLINED_FUNCTION_0_61(uint64_t a1)
{
  *(a1 + 16) = sub_221BA2C8C;
  *(a1 + 24) = v1;

  os_unfair_lock_lock(v2 + 4);
}

uint64_t sub_221BA2EE0(void *a1)
{
  type metadata accessor for Awaitable.State(255, a1[10], a1[11], a1[12]);
  result = sub_221BCC888();
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

uint64_t sub_221BA2F84(uint64_t a1)
{
  sub_221BCE308();
  sub_221B3DAB8();
  return sub_221BCE358();
}

uint64_t sub_221BA2FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_221BCD7A8();
  *a4 = sub_221BCD6C8();
  v8 = *(type metadata accessor for Awaitable.State(0, a1, a2, a3) + 44);
  v9 = sub_221BCE398();

  return __swift_storeEnumTagSinglePayload(a4 + v8, 1, 1, v9);
}

uint64_t sub_221BA3074()
{
  OUTLINED_FUNCTION_1_52();
  v2 = (v0 + *(v1 + 104));
  os_unfair_lock_lock(v2);
  OUTLINED_FUNCTION_1_52();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_1_52();
  v6 = *(v5 + 88);
  OUTLINED_FUNCTION_1_52();
  v8 = *(v7 + 96);
  type metadata accessor for Awaitable.State(255, v4, v6, v8);
  v9 = sub_221BCC888();
  sub_221BA3164(v2 + *(v9 + 28), v4, v6, v8, &v11);
  j__os_unfair_lock_unlock(v2);
  return v11;
}

uint64_t sub_221BA3164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = sub_221BCE398();
  v11 = sub_221BCDC98();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  v15 = type metadata accessor for Awaitable.State(0, a2, a3, a4);
  (*(v12 + 16))(v14, a1 + *(v15 + 44), v11);
  LOBYTE(a4) = __swift_getEnumTagSinglePayload(v14, 1, v10) != 1;
  result = (*(v12 + 8))(v14, v11);
  *a5 = a4;
  return result;
}

uint64_t sub_221BA32B0()
{
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_2_38();
  type metadata accessor for Awaitable.State(255, v2, v3, *(v1 + 96));
  sub_221BCC888();
  v4 = sub_221BCC898();
  sub_221BB7E98(v4);
  return v0;
}

uint64_t sub_221BA3358()
{
  sub_221BA32B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_221BA33C8()
{
  v0 = swift_allocObject();
  sub_221BA38D0(v0);
  return v0;
}

uint64_t sub_221BA3418(void *a1)
{
  sub_221BCD7A8();
  result = sub_221BCD748();
  if (v2 <= 0x3F)
  {
    sub_221BCE398();
    result = sub_221BCDC98();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_221BA34DC(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v3 + 64);
  if (*(v4 + 64) > v5)
  {
    v5 = *(v4 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v8 = *(v3 + 80) | *(v4 + 80);
  v9 = v5 + ((v8 + 8) & ~v8) + 1;
  v10 = 8 * v9;
  if (v9 > 3)
  {
    goto LABEL_10;
  }

  v12 = (a2 - 0x7FFFFFFF + ~(-1 << v10)) >> v10;
  if (v12 > 0xFFFE)
  {
    v11 = *(a1 + v9);
    if (!v11)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if (v12 <= 0xFE)
  {
    if (!v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = *(a1 + v9);
    if (!*(a1 + v9))
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
LABEL_5:
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

LABEL_19:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return (v9 | v13) ^ 0x80000000;
}

void sub_221BA3684(char *a1, int a2, int a3, uint64_t a4)
{
  v4 = a2;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v6 + 64);
  if (*(v7 + 64) > v8)
  {
    v8 = *(v7 + 64);
  }

  v9 = *(v6 + 80) | *(v7 + 80);
  v10 = v8 + ((v9 + 8) & ~v9) + 1;
  v11 = 8 * v10;
  if (a3 < 0)
  {
    if (v10 <= 3)
    {
      v13 = (a3 - 0x7FFFFFFF + ~(-1 << v11)) >> v11;
      if (v13 > 0xFFFE)
      {
        v12 = 4;
        if (a2 < 0)
        {
LABEL_17:
          v15 = a2 & 0x7FFFFFFF;
          if (v10 < 4)
          {
            v16 = (v15 >> v11) + 1;
            if (v10)
            {
              v17 = a2 & ~(-1 << v11);
              bzero(a1, v10);
              if (v10 == 3)
              {
                *a1 = v17;
                a1[2] = BYTE2(v17);
              }

              else if (v10 == 2)
              {
                *a1 = v17;
              }

              else
              {
                *a1 = v4;
              }
            }
          }

          else
          {
            bzero(a1, v10);
            *a1 = v15;
            v16 = 1;
          }

          switch(v12)
          {
            case 1:
              a1[v10] = v16;
              break;
            case 2:
              *&a1[v10] = v16;
              break;
            case 3:
              goto LABEL_39;
            case 4:
              *&a1[v10] = v16;
              break;
            default:
              return;
          }

          return;
        }
      }

      else
      {
        if (v13 < 0xFF)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        if (v13)
        {
          v12 = v14;
        }

        else
        {
          v12 = 0;
        }

        if (a2 < 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v12 = 1;
      if (a2 < 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v12 = 0;
    if (a2 < 0)
    {
      goto LABEL_17;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v10] = 0;
      if (a2)
      {
        goto LABEL_29;
      }

      return;
    case 2:
      *&a1[v10] = 0;
      goto LABEL_28;
    case 3:
LABEL_39:
      __break(1u);
      return;
    case 4:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        *a1 = (a2 - 1);
      }

      break;
  }
}

uint64_t sub_221BA38D0(uint64_t a1)
{
  OUTLINED_FUNCTION_1_52();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_1_52();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_1_52();
  v7 = *(v6 + 96);
  v8 = type metadata accessor for Awaitable.State(0, v3, v5, v7);
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v19 - v12);
  OUTLINED_FUNCTION_1_52();
  v15 = (v1 + *(v14 + 104));
  sub_221BA2FC8(v3, v5, v7, v13);
  *v15 = 0;
  v16 = *(sub_221BCC888() + 28);
  v17 = sub_221BCC898();
  bzero(&v15[v16], *(*(v17 - 8) + 64));
  (*(v10 + 32))(&v15[v16], v13, v8);
  return v1;
}

uint64_t sub_221BA3A34(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_38();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_2_38();
  v5 = sub_221BCE398();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  (*(*(v4 - 8) + 16))(v13 - v10, a1, v4, v9);
  swift_storeEnumTagMultiPayload();
  sub_221BA3B7C(v11);
  return (*(v7 + 8))(v11, v5);
}

void sub_221BA3B7C(uint64_t a1)
{
  v4 = *v1;
  v5 = (v1 + *(*v1 + 104));
  os_unfair_lock_lock(v5);
  v6 = *(v4 + 80);
  v7 = OUTLINED_FUNCTION_3_33();
  type metadata accessor for Awaitable.State(v7, v8, v9, v10);
  v11 = sub_221BCC888();
  sub_221BA3E70(v5 + *(v11 + 28), a1, v6, &v13, &v14);
  OUTLINED_FUNCTION_3_33();
  sub_221BCD7A8();
  sub_221BCD748();
  j__os_unfair_lock_unlock(v5);
  if (!v2)
  {
    MEMORY[0x28223BE20](v12);
    swift_getWitnessTable();
    sub_221BCD608();
  }
}

uint64_t sub_221BA3D5C(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_2_38();
  v3 = sub_221BCE398();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  *(&v11 - v7) = a1;
  swift_storeEnumTagMultiPayload();
  v9 = a1;
  sub_221BA3B7C(v8);
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_221BA3E70@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v19 = a2;
  v20 = a4;
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v8 = MEMORY[0x277D84950];
  v9 = sub_221BCE398();
  v10 = sub_221BCDC98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  v22 = a3;
  v14 = *(type metadata accessor for Awaitable.State(0, a3, v7, v8) + 44);
  (*(v11 + 16))(v13, &a1[v14], v10);
  LODWORD(v8) = __swift_getEnumTagSinglePayload(v13, 1, v9);
  v15 = *(v11 + 8);
  v15(v13, v10);
  if (v8 == 1)
  {
    v15(&a1[v14], v10);
    (*(*(v9 - 8) + 16))(&a1[v14], v19, v9);
    __swift_storeEnumTagSinglePayload(&a1[v14], 0, 1, v9);
    v16 = *a1;
    sub_221BCD7A8();
    result = sub_221BCD6C8();
    *a1 = result;
    *v21 = v16;
  }

  else
  {
    type metadata accessor for Awaitable.Errors(0, v22, v7, MEMORY[0x277D84950]);
    swift_getWitnessTable();
    v18 = swift_allocError();
    result = swift_willThrow();
    *v20 = v18;
  }

  return result;
}

uint64_t sub_221BA40DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v4 = sub_221BCD7A8();
  return sub_221A2EC10(a2, v4);
}

uint64_t sub_221BA4150(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_221BA4198, 0, 0);
}

uint64_t sub_221BA4198()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_221BA4264;
  v2 = *(v0 + 16);

  return MEMORY[0x2822008A0](v2);
}

uint64_t sub_221BA4264()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221BA4398, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_221BA43B0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = (a2 + *(*a2 + 104));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  type metadata accessor for Awaitable.State(255, v5, *(v3 + 88), MEMORY[0x277D84950]);
  v6 = sub_221BCC888();
  sub_221BA44A8(v4 + *(v6 + 28), a1, v5);

  j__os_unfair_lock_unlock(v4);
}

uint64_t sub_221BA44A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v20 = sub_221BCD7A8();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v19 = &v18 - v6;
  v7 = sub_221BCE398();
  v8 = sub_221BCDC98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  v16 = type metadata accessor for Awaitable.State(0, a3, v5, MEMORY[0x277D84950]);
  (*(v9 + 16))(v11, a1 + *(v16 + 44), v8);
  if (__swift_getEnumTagSinglePayload(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    (*(v18 + 16))(v19, v21, v20);
    sub_221BCD748();
    return sub_221BCD718();
  }

  else
  {
    (*(v12 + 32))(v15, v11, v7);
    sub_221A2EC10(v15, v20);
    return (*(v12 + 8))(v15, v7);
  }
}

_BYTE *sub_221BA47F8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_221BA48D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  result = sub_221BCD7A8();
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

uint64_t sub_221BA499C()
{
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v2 = sub_221BCD7A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_221BA4A4C()
{
  sub_221BA499C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_221BA4ABC()
{
  os_unfair_lock_lock((v0 + 40));
  v1 = *(v0 + 44);
  os_unfair_lock_unlock((v0 + 40));
  return v1;
}

double sub_221BA4AF0()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEB0, &unk_221BE6A10);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  sub_221BCC4D8();
  OUTLINED_FUNCTION_3_34();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_62();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (sub_221BA4ABC() != 1)
  {
    goto LABEL_4;
  }

  v14 = (v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_startTimeLock);
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_startTimeLock));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC410, &qword_221BE9118);
  sub_221BA6424(v14 + *(v15 + 28), v7);
  os_unfair_lock_unlock(v14);
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
  {
    sub_221BA5E1C(v7);
LABEL_4:
    os_unfair_lock_lock((v3 + 48));
    v16 = *(v3 + 56);
    os_unfair_lock_unlock((v3 + 48));
    return v16;
  }

  (*(v9 + 32))(v13, v7, v1);
  sub_221BCC4C8();
  sub_221BCC4B8();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v2, v1);
  os_unfair_lock_lock((v3 + 48));
  v20 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 48));
  v19(v13, v1);
  if (v20 - v18 < 0.0)
  {
    return 0.0;
  }

  else
  {
    return v20 - v18;
  }
}

uint64_t sub_221BA4D04(uint64_t a1, uint64_t a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEB0, &unk_221BE6A10);
  v8 = OUTLINED_FUNCTION_8_1(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  *(v3 + 40) = 0;
  *(v3 + 44) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  v11 = (v3 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_startTimeLock);
  v12 = sub_221BCC4D8();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  *v11 = 0;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC410, &qword_221BE9118) + 28);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFBC430, &qword_221BE91B0);
  OUTLINED_FUNCTION_8_1(v14);
  bzero(v11 + v13, *(v15 + 64));
  sub_221BA6494(v10, v11 + v13);
  *(v3 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_timerTask) = 0;
  *(v3 + 16) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;

  os_unfair_lock_lock((v3 + 48));
  *(v3 + 56) = a3;
  os_unfair_lock_unlock((v3 + 48));
  os_unfair_lock_lock((v3 + 40));
  *(v3 + 44) = 1;
  os_unfair_lock_unlock((v3 + 40));
  sub_221BA4E8C();

  return v3;
}

uint64_t sub_221BA4E8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_221BCC4D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221BCC4C8();
  v8 = (v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_startTimeLock);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_startTimeLock));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC410, &qword_221BE9118) + 28);
  sub_221BA5E1C(v8 + v9);
  (*(v5 + 16))(v8 + v9, v7, v4);
  __swift_storeEnumTagSinglePayload(v8 + v9, 0, 1, v4);
  os_unfair_lock_unlock(v8);
  v10 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  sub_2219F7E3C();
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  *(v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_timerTask) = v14;
}

uint64_t sub_221BA50B4()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEB0, &unk_221BE6A10);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  sub_221BCC4D8();
  OUTLINED_FUNCTION_3_34();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_62();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  result = sub_221BA4ABC();
  if (result == 1)
  {
    os_unfair_lock_lock((v0 + 40));
    *(v0 + 44) = 2;
    os_unfair_lock_unlock((v0 + 40));
    v15 = OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_timerTask;
    if (*(v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_timerTask))
    {

      sub_221BCD878();
    }

    *(v0 + v15) = 0;

    v16 = (v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_startTimeLock);
    os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_startTimeLock));
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC410, &qword_221BE9118) + 28);
    sub_221BA6424(v16 + v17, v7);
    os_unfair_lock_unlock(v16);
    if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
    {
      return sub_221BA5E1C(v7);
    }

    else
    {
      (*(v9 + 32))(v13, v7, v1);
      sub_221BCC4C8();
      sub_221BCC4B8();
      v19 = v18;
      v20 = *(v9 + 8);
      v20(v2, v1);
      os_unfair_lock_lock((v3 + 48));
      v21 = *(v3 + 56);
      os_unfair_lock_unlock((v3 + 48));
      if (v21 - v19 < 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v21 - v19;
      }

      os_unfair_lock_lock((v3 + 48));
      *(v3 + 56) = v22;
      os_unfair_lock_unlock((v3 + 48));
      os_unfair_lock_lock(v16);
      sub_221BA5E1C(v16 + v17);
      __swift_storeEnumTagSinglePayload(v16 + v17, 1, 1, v1);
      os_unfair_lock_unlock(v16);
      return (v20)(v13, v1);
    }
  }

  return result;
}

uint64_t sub_221BA5364()
{
  result = sub_221BA4ABC();
  if ((result - 3) >= 2u)
  {
    v2 = OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_timerTask;
    if (*(v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_timerTask))
    {

      sub_221BCD878();
    }

    *(v0 + v2) = 0;

    os_unfair_lock_lock((v0 + 48));
    *(v0 + 56) = *(v0 + 16);
    os_unfair_lock_unlock((v0 + 48));
    os_unfair_lock_lock((v0 + 40));
    *(v0 + 44) = 1;
    os_unfair_lock_unlock((v0 + 40));

    return sub_221BA4E8C();
  }

  return result;
}

uint64_t sub_221BA5440()
{
  result = sub_221BA4ABC();
  if (result - 3 >= 2)
  {
    if (result == 1)
    {
      v2 = sub_221BA4AF0();
      os_unfair_lock_lock((v0 + 48));
      *(v0 + 56) = v2;
      os_unfair_lock_unlock((v0 + 48));
    }

    os_unfair_lock_lock((v0 + 40));
    *(v0 + 44) = 4;
    os_unfair_lock_unlock((v0 + 40));
    v3 = (v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_startTimeLock);
    os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_startTimeLock));
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC410, &qword_221BE9118) + 28);
    sub_221BA5E1C(v3 + v4);
    v5 = sub_221BCC4D8();
    __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, v5);
    os_unfair_lock_unlock(v3);
    v6 = OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_timerTask;
    if (*(v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_timerTask))
    {

      sub_221BCD878();
    }

    *(v0 + v6) = 0;
  }

  return result;
}

uint64_t sub_221BA5588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_221BCDFC8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221BA5648, 0, 0);
}

uint64_t sub_221BA5648()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = Strong;
    os_unfair_lock_lock(Strong + 12);
    os_unfair_lock_unlock(v2 + 12);
    v3 = sub_221BCE418();
    v5 = v4;
    sub_221BCE258();
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_221BA57A8;

    return sub_221BA5F38(v3, v5, 0, 0, 1);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v8();
  }
}

uint64_t sub_221BA57A8()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v7 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_221BA5978;
  }

  else
  {
    v8 = sub_221BA5910;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221BA5910()
{
  OUTLINED_FUNCTION_1_5();
  sub_221BA59E4();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221BA5978()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221BA59E4()
{
  os_unfair_lock_lock((v0 + 40));
  *(v0 + 44) = 3;
  os_unfair_lock_unlock((v0 + 40));
  os_unfair_lock_lock((v0 + 48));
  *(v0 + 56) = 0;
  os_unfair_lock_unlock((v0 + 48));
  v1 = (v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_startTimeLock);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_startTimeLock));
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC410, &qword_221BE9118) + 28);
  sub_221BA5E1C(v1 + v2);
  v3 = sub_221BCC4D8();
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
  os_unfair_lock_unlock(v1);
  *(v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_timerTask) = 0;

  return (*(v0 + 24))(v4);
}

uint64_t sub_221BA5AAC()
{

  v1 = v0 + OBJC_IVAR____TtC18AppIntentsServices17ControllableTimer_startTimeLock;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC410, &qword_221BE9118);
  sub_221BA5E1C(v1 + *(v2 + 28));

  return v0;
}

uint64_t sub_221BA5B10()
{
  sub_221BA5AAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ControllableTimer(uint64_t a1)
{
  result = qword_27CFBC3E8;
  if (!qword_27CFBC3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_221BA5BBC(uint64_t a1)
{
  sub_221BA5C84(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_221BA5C84(uint64_t a1)
{
  if (!qword_27CFBC3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFBBEB0, &unk_221BE6A10);
    v1 = sub_221BCC888();
    if (!v2)
    {
      atomic_store(v1, &qword_27CFBC3F8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ControllableTimer.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_221BA5DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBC418;
  if (!qword_27CFBC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC418);
  }

  return result;
}

uint64_t sub_221BA5E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEB0, &unk_221BE6A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221BA5E84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2219A77F8;

  return sub_221BA5588(a1, v4, v5, v6);
}

uint64_t sub_221BA5F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_221BCDFB8();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_221BA6038, 0, 0);
}

uint64_t sub_221BA6038()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_221BCDFC8();
  v5 = sub_221BA63DC(&qword_27CFBC420, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_221BCE238();
  sub_221BA63DC(&qword_27CFBC428, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_221BCDFD8();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_221BA61C8;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_221BA61C8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v8;
  *(v8 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221BA6378, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v6();
  }
}

uint64_t sub_221BA6378()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221BA63DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221BA6424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEB0, &unk_221BE6A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221BA6494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEB0, &unk_221BE6A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_221BA6584()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v42 = v1;
  v4 = v3;
  v45 = v5;
  v46 = v6;
  v44 = v7;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v12);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_116_5();
  v40 = v0;
  v41 = v4;
  v14 = sub_221BCDC98();
  OUTLINED_FUNCTION_0_7();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA58, &qword_221BE5488);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = 0;
  v11[1] = v22;
  _s12ProgressTaskV12ContinuationCMa(0, v4, v2, v23);
  v24 = *(v16 + 16);
  v43 = v9;
  v24(v21, v9, v14);
  v25 = sub_221BA6C64(v21);
  *v11 = v25;
  v11[3] = v44;
  sub_221BCD7F8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v24(v21, v9, v14);
  v30 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v31 = (v18 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  v34 = v42;
  *(v33 + 4) = v41;
  *(v33 + 5) = v34;
  (*(v16 + 32))(&v33[v30], v21, v14);
  *&v33[v31] = v25;
  v35 = &v33[v32];
  v36 = v46;
  *v35 = v45;
  *(v35 + 1) = v36;
  *&v33[(v32 + 23) & 0xFFFFFFFFFFFFFFF8] = v25;
  swift_retain_n();
  sub_2219F7E3C();
  v38 = v37;
  (*(v16 + 8))(v43, v14);
  v11[2] = v38;
  OUTLINED_FUNCTION_22();
}

void sub_221BA6808()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v20 = v7;
  v8 = *(v3 + 16);
  v9 = sub_221BCDC98();
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = *v0;
  v12 = v0[1];
  v14 = v0[2];
  v13 = v0[3];
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v8);
  OUTLINED_FUNCTION_31_15();
  v18 = swift_allocObject();
  v19 = *(v4 + 24);
  v18[2] = v8;
  v18[3] = v19;
  v18[4] = v2;
  v18[5] = v11;
  v18[6] = v12;
  v18[7] = v14;
  v18[8] = v13;
  v18[9] = v20;
  v18[10] = v6;

  swift_retain_n();

  sub_221BA6584();
  OUTLINED_FUNCTION_22();
}

uint64_t IntentsServices.ProgressTask.makeAsyncIterator()()
{
  sub_221B56A60(*(v0 + 8));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  OUTLINED_FUNCTION_11_24();
  sub_221BCD958();
  return sub_221BCD838();
}

void IntentsServices.ProgressTask.cancel(_:)(id a1)
{
  if (*(v1 + 16))
  {
    sub_221BCD878();
  }

  sub_221BA75E4(a1);
}

uint64_t IntentsServices.ProgressTask.finalValue.getter(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  OUTLINED_FUNCTION_27_0();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_221BA6A54()
{
  OUTLINED_FUNCTION_1_5();
  v0[4] = *(v0[3] + *(*v0[3] + 112));

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[5] = v1;
  *v1 = v2;
  v1[1] = sub_221BA6B0C;
  v3 = v0[2];

  return sub_221BA4150(v3);
}

uint64_t sub_221BA6B0C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221BA6C08()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221BA6C64(uint64_t a1)
{
  v1 = swift_allocObject();
  sub_221BA9394();
  return v1;
}

uint64_t sub_221BA6CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *a5;
  v10 = *(*a5 + 88);
  v8[7] = v10;
  v8[8] = *(v10 - 8);
  v8[9] = swift_task_alloc();
  v11 = *(v9 + 80);
  v8[10] = v11;
  v12 = sub_221BCDC98();
  v8[11] = v12;
  v8[12] = *(v12 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(v11 - 8);
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221BA6E48, 0, 0);
}

uint64_t sub_221BA6E48()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[13];
  (*(v0[12] + 16))(v1, v0[2], v0[11]);
  OUTLINED_FUNCTION_39_8(v1);
  if (v2)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
  }

  else
  {
    v4 = v0[14];
    v3 = v0[15];
    v5 = v0[10];
    (*(v4 + 32))(v3, v0[13], v5);
    sub_221BA7264();
    (*(v4 + 8))(v3, v5);
  }

  v11 = (v0[4] + *v0[4]);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[16] = v6;
  *v6 = v7;
  v6[1] = sub_221BA6FD4;
  v8 = v0[9];
  v9 = v0[6];

  return v11(v8, v9);
}

uint64_t sub_221BA6FD4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221BA70D0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[17];
  sub_221BCD8B8();
  if (v1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    sub_221BA74F0();
  }

  else
  {
    sub_221BA7404();
    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221BA71C4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 136);
  sub_221BA74F0();

  OUTLINED_FUNCTION_25();

  return v2();
}

void sub_221BA7264()
{
  OUTLINED_FUNCTION_21();
  v14 = v2;
  v3 = *(*v0 + 80);
  OUTLINED_FUNCTION_0_7();
  v5 = v4;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  OUTLINED_FUNCTION_11_24();
  v9 = sub_221BCD8D8();
  OUTLINED_FUNCTION_0_7();
  v11 = v10;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_116_5();
  (*(v5 + 16))(v8, v14, v3);
  OUTLINED_FUNCTION_11_24();
  sub_221BCD918();
  sub_221BCD8F8();
  (*(v11 + 8))(v1, v9);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221BA7404()
{
  OUTLINED_FUNCTION_17_19();
  result = sub_221BA3074();
  if ((result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_221BCD918();
    sub_221BCD908();
    return sub_221BA3A34(v0, v2);
  }

  return result;
}

uint64_t sub_221BA74F0()
{
  OUTLINED_FUNCTION_17_19();
  result = sub_221BA3074();
  if ((result & 1) == 0)
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_221BCD918();
    sub_221BCD908();
    return sub_221BA3D5C(v0, v3);
  }

  return result;
}

void sub_221BA75E4(id a1)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    sub_221BCD7B8();
    sub_221BAA9D8();
    v3 = swift_allocError();
    sub_221BCD268();
  }

  v4 = a1;
  sub_221BA74F0();
  OUTLINED_FUNCTION_1_6();
  v6 = v1 + *(v5 + 128);
  os_unfair_lock_lock(v6);
  sub_221BA977C((v6 + 8), v3);
  os_unfair_lock_unlock(v6);
}

uint64_t sub_221BA76B4()
{
  IntentsServices.ProgressTask.makeAsyncIterator()();
}

void IntentsServices.ProgressTask.emitting(_:after:)()
{
  OUTLINED_FUNCTION_21();
  v32 = v2;
  v33 = v1;
  v34 = v3;
  v35 = v4;
  v6 = v5;
  v7 = *(v2 + 16);
  OUTLINED_FUNCTION_0_7();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_11_24();
  v14 = sub_221BCDC98();
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v16 = v0[1];
  v30 = *v0;
  v31 = v16;
  v17 = v0[2];
  v18 = v0[3];
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v7);
  (*(v9 + 16))(v13, v6, v7);
  v22 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v33;
  v26 = *(v32 + 24);
  *(v24 + 2) = v7;
  *(v24 + 3) = v26;
  v27 = v34;
  *(v24 + 4) = v25;
  *(v24 + 5) = v27;
  (*(v9 + 32))(&v24[v22], v13, v7);
  v28 = &v24[v23];
  v29 = v31;
  *v28 = v30;
  *(v28 + 1) = v29;
  *(v28 + 2) = v17;
  *(v28 + 3) = v18;

  swift_retain_n();

  sub_221BA6584();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221BA78EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v14;
  v8[17] = v15;
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v8[8] = a2;
  v8[9] = a3;
  v8[7] = a1;
  sub_221BCDC98();
  v8[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v9 = sub_221BCD948();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v8[22] = swift_task_alloc();
  v10 = *(v14 - 8);
  v8[23] = v10;
  v8[24] = *(v10 + 64);
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221BA7AB0, 0, 0);
}

uint64_t sub_221BA7AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10[25];
  v12 = v10[23];
  v13 = v10[16];
  v14 = v10[17];
  v44 = v10[15];
  v15 = v10[12];
  v42 = v10[13];
  v43 = v10[14];
  v16 = v10[8];
  v40 = v10[9];
  v41 = v10[10];
  (*(v12 + 16))(v11, v10[11], v13, a4, a5, a6, a7, a8);
  v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v13;
  *(v18 + 3) = v14;
  *(v18 + 4) = v16;
  v19 = *(v12 + 32);
  v10[26] = v19;
  v10[27] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v19(&v18[v17], v11, v13);
  sub_221BCD7F8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v40;
  v24[5] = v41;
  v24[6] = sub_221BAA824;
  v24[7] = v18;

  sub_2219F7E3C();
  v26 = v25;
  v10[28] = v25;
  OUTLINED_FUNCTION_20_0();
  v27 = swift_allocObject();
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v26;
  v27[5] = v15;
  v27[6] = v42;
  v27[7] = v43;
  v27[8] = v44;

  sub_221BA84AC(sub_221BAA9A4, v27);

  v10[29] = type metadata accessor for IntentsServices.ProgressTask(0, v13, v14, v28);
  IntentsServices.ProgressTask.makeAsyncIterator()();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v10[30] = v29;
  *v29 = v30;
  v29[1] = sub_221BA7D30;
  OUTLINED_FUNCTION_0_63();

  return MEMORY[0x2822005A8](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_221BA7D30()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221BA7E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_67();
  v11 = *(v10 + 144);
  v12 = *(v10 + 128);
  OUTLINED_FUNCTION_39_8(v11);
  if (v13)
  {
    v14 = (*(*(v10 + 160) + 8))(*(v10 + 168), *(v10 + 152));
    OUTLINED_FUNCTION_13_24(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v10 + 248) = v24;
    *v24 = v25;
    v24[1] = sub_221BA7FAC;
    OUTLINED_FUNCTION_32_11();

    return IntentsServices.ProgressTask.finalValue.getter(v26);
  }

  else
  {
    (*(v10 + 208))(*(v10 + 200), v11, v12);
    sub_221BA7264();
    v29 = OUTLINED_FUNCTION_20_18();
    v30(v29);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v10 + 240) = v31;
    *v31 = v32;
    v31[1] = sub_221BA7D30;
    OUTLINED_FUNCTION_0_63();
    OUTLINED_FUNCTION_32_11();

    return MEMORY[0x2822005A8](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }
}

uint64_t sub_221BA7FAC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221BA80A8()
{
  OUTLINED_FUNCTION_14_3();
  sub_221BCD878();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221BA8168()
{
  OUTLINED_FUNCTION_14_3();
  (*(v0[20] + 8))(v0[21], v0[19]);
  OUTLINED_FUNCTION_28_11();
  sub_221BCD878();

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221BA8234()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_28_11();
  sub_221BCD878();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221BA82E8(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  OUTLINED_FUNCTION_0_7();
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = (v2 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_2219EC5F0;

  return sub_221BA78EC(a1, a2, v8, v9, v2 + v6, v11, v12, v13);
}

void sub_221BA84AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_6();
  v6 = v2 + *(v5 + 128);
  os_unfair_lock_lock(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_221B58C94();
  v8 = *(*(v6 + 8) + 16);
  sub_221B58D20(v8);
  v9 = *(v6 + 8);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = sub_221BA9D60;
  *(v10 + 40) = v7;

  os_unfair_lock_unlock(v6);
}

void IntentsServices.ProgressTask.throwing(_:after:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v21 = v3;
  v5 = v4;
  v7 = v6;
  v8 = *(v1 + 16);
  OUTLINED_FUNCTION_11_24();
  v9 = sub_221BCDC98();
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = *v0;
  v12 = v0[1];
  v14 = v0[2];
  v13 = v0[3];
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v8);
  OUTLINED_FUNCTION_31_15();
  v18 = swift_allocObject();
  v19 = *(v2 + 24);
  v18[2] = v8;
  v18[3] = v19;
  v18[4] = v5;
  v18[5] = v21;
  v18[6] = v11;
  v18[7] = v12;
  v18[8] = v14;
  v18[9] = v13;
  v18[10] = v7;

  swift_retain_n();

  v20 = v7;
  sub_221BA6584();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221BA8698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v13;
  v8[17] = v14;
  v8[14] = a8;
  v8[15] = v12;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v8[8] = a2;
  v8[9] = a3;
  v8[7] = a1;
  v8[18] = *(v13 - 8);
  v8[19] = swift_task_alloc();
  sub_221BCDC98();
  v8[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v9 = sub_221BCD948();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221BA8820, 0, 0);
}

uint64_t sub_221BA8820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 112);
  v12 = *(v10 + 120);
  v13 = *(v10 + 104);
  v34 = *(v10 + 128);
  v35 = *(v10 + 88);
  v14 = sub_221BCE3F8();
  v16 = v15 * 1.0e-18 + v14;
  OUTLINED_FUNCTION_20_0();
  v17 = swift_allocObject();
  *(v17 + 16) = v34;
  *(v17 + 32) = v35;
  *(v17 + 48) = v13;
  *(v17 + 56) = v11;
  *(v17 + 64) = v12;
  type metadata accessor for ControllableTimer(0);
  swift_allocObject();
  v18 = v12;

  v19 = sub_221BA4D04(sub_221BAA698, v17, v16);
  *(v10 + 192) = v19;
  OUTLINED_FUNCTION_20_0();
  v20 = swift_allocObject();
  *(v20 + 16) = v34;
  *(v20 + 32) = v19;
  *(v20 + 40) = v35;
  *(v20 + 56) = v13;
  *(v20 + 64) = v11;

  sub_221BA84AC(sub_221BAA6AC, v20);

  if (v11)
  {
    _s13ProgressTasksO21TimeoutSignalListenerCMa();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v11 + 16) = v22;
    *(v11 + 24) = &off_28351D208;

    swift_unknownObjectRelease();
  }

  *(v10 + 200) = type metadata accessor for IntentsServices.ProgressTask(0, *(v10 + 128), *(v10 + 136), v21);
  IntentsServices.ProgressTask.makeAsyncIterator()();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v10 + 208) = v23;
  *v23 = v24;
  v23[1] = sub_221BA8A94;
  OUTLINED_FUNCTION_0_63();

  return MEMORY[0x2822005A8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_221BA8A94()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221BA8B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_39_8(v10[20]);
  if (v11)
  {
    v12 = (*(v10[22] + 8))(v10[23], v10[21]);
    OUTLINED_FUNCTION_13_24(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v10[27] = v22;
    *v22 = v23;
    v22[1] = sub_221BA8D00;
    OUTLINED_FUNCTION_32_11();

    return IntentsServices.ProgressTask.finalValue.getter(v24);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_14_22();
    v28(v27);
    sub_221BA7264();
    v29 = OUTLINED_FUNCTION_20_18();
    v30(v29);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v10[26] = v31;
    *v31 = v32;
    v31[1] = sub_221BA8A94;
    OUTLINED_FUNCTION_0_63();
    OUTLINED_FUNCTION_32_11();

    return MEMORY[0x2822005A8](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }
}

uint64_t sub_221BA8D00()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221BA8DFC()
{
  OUTLINED_FUNCTION_8_0();
  sub_221BA5440();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221BA8E84()
{
  OUTLINED_FUNCTION_14_3();
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_221BA5440();

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221BA8F30()
{
  OUTLINED_FUNCTION_14_3();
  sub_221BA5440();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221BA8FC4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v3 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_9_26();

  return sub_221BA8698(v8, v9, v10, v11, v12, v13, v4, v5);
}

uint64_t sub_221BA90C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221BA9104(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221BA9144(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_221BA919C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  result = sub_221BCD958();
  if (v2 <= 0x3F)
  {
    result = sub_221BCD918();
    if (v3 <= 0x3F)
    {
      result = sub_221BCDC98();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void sub_221BA9394()
{
  OUTLINED_FUNCTION_21();
  v2 = v0;
  v35 = v3;
  v31 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  OUTLINED_FUNCTION_21_15();
  v33 = sub_221BCD8E8();
  OUTLINED_FUNCTION_0_7();
  v6 = v5;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_116_5();
  OUTLINED_FUNCTION_21_15();
  v34 = v4;
  v32 = sub_221BCD918();
  OUTLINED_FUNCTION_0_7();
  v9 = v8;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  OUTLINED_FUNCTION_21_15();
  v13 = sub_221BCD958();
  OUTLINED_FUNCTION_0_7();
  v15 = v14;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  v19 = v31;
  v20 = &v2[*(v31 + 128)];
  *v20 = 0;
  *(v20 + 1) = MEMORY[0x277D84F90];
  sub_221BA96D8(v1);
  sub_221BCD8C8();
  (*(v6 + 8))(v1, v33);
  OUTLINED_FUNCTION_5_14();
  (*(v15 + 32))(&v2[*(v21 + 96)], v18, v13);
  OUTLINED_FUNCTION_5_14();
  (*(v9 + 32))(&v2[*(v22 + 104)], v12, v32);
  OUTLINED_FUNCTION_5_14();
  v24 = *(v23 + 120);
  v25 = sub_221BCDC98();
  v26 = *(v25 - 8);
  v27 = v35;
  (*(v26 + 16))(&v2[v24], v35, v25);
  type metadata accessor for Awaitable(0, *(v19 + 88), v34, MEMORY[0x277D84950]);
  v28 = sub_221BA33C8();
  (*(v26 + 8))(v27, v25);
  OUTLINED_FUNCTION_5_14();
  *&v2[*(v29 + 112)] = v28;
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221BA96D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v3 = sub_221BCD8E8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void *sub_221BA977C(void *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *result;
  v6 = *(*result + 16);
  for (i = *result + 40; ; i += 16)
  {
    if (v6 == v4)
    {

      *v3 = MEMORY[0x277D84F90];
      return result;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 8);
    v9 = a2;

    v8(&v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_221BA9834()
{
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  OUTLINED_FUNCTION_11_24();
  sub_221BCD958();
  OUTLINED_FUNCTION_11_4();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_1_6();
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_11_24();
  sub_221BCD918();
  OUTLINED_FUNCTION_11_4();
  (*(v5 + 8))(v0 + v4);
  OUTLINED_FUNCTION_1_6();

  OUTLINED_FUNCTION_1_6();
  v7 = *(v6 + 120);
  OUTLINED_FUNCTION_11_24();
  sub_221BCDC98();
  OUTLINED_FUNCTION_11_4();
  (*(v8 + 8))(v0 + v7);
  OUTLINED_FUNCTION_1_6();
  sub_221BAA630(v0 + *(v9 + 128) + 8);
  return v0;
}

uint64_t sub_221BA9998()
{
  sub_221BA9834();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_221BA9A28(const char *a1, void (*a2)(uint64_t))
{
  v5 = v2;
  if (qword_27CFB7388 != -1)
  {
    swift_once();
  }

  v6 = sub_221BCCD88();
  __swift_project_value_buffer(v6, qword_27CFDEDF8);

  v7 = sub_221BCCD68();
  v8 = sub_221BCDA68();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    v11 = sub_221BCE478();
    v13 = sub_2219A6360(v11, v12, &v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC5C0, &qword_221BE93C0);
    v14 = sub_221BCD3D8();
    v16 = sub_2219A6360(v14, v15, &v18);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_221989000, v7, v8, a1, v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v10, -1, -1);
    MEMORY[0x223DA4C00](v9, -1, -1);
  }

  if (*(v5 + 16))
  {
    v17 = swift_unknownObjectRetain();
    a2(v17);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_221BA9C44()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_221BA9CA0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_221BA9D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221BA9D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v13;
  v8[17] = v14;
  v8[14] = a8;
  v8[15] = v12;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v8[8] = a2;
  v8[9] = a3;
  v8[7] = a1;
  v8[18] = *(v12 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = *(v13 - 8);
  v8[21] = swift_task_alloc();
  sub_221BCDC98();
  v8[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v9 = sub_221BCD948();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221BA9F40, 0, 0);
}

uint64_t sub_221BA9F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 120);
  v13 = *(v10 + 88);
  v12 = *(v10 + 96);
  v15 = *(v10 + 72);
  v14 = *(v10 + 80);
  OUTLINED_FUNCTION_20_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  v29 = *(v10 + 128);
  *(v16 + 24) = v29;
  *(v16 + 40) = v15;
  *(v16 + 48) = v14;
  *(v16 + 56) = v13;
  *(v16 + 64) = v12;

  sub_221BA84AC(sub_221BAAB20, v16);

  *(v10 + 208) = type metadata accessor for IntentsServices.ProgressTask(0, v11, v29, v17);
  IntentsServices.ProgressTask.makeAsyncIterator()();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v10 + 216) = v18;
  *v18 = v19;
  v18[1] = sub_221BAA0A8;
  OUTLINED_FUNCTION_0_63();

  return MEMORY[0x2822005A8](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_221BAA0A8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221BAA1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_39_8(v10[22]);
  if (v11)
  {
    v12 = (*(v10[24] + 8))(v10[25], v10[23]);
    OUTLINED_FUNCTION_13_24(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v10[28] = v22;
    *v22 = v23;
    v22[1] = sub_221BAA314;
    OUTLINED_FUNCTION_32_11();

    return IntentsServices.ProgressTask.finalValue.getter(v24);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_14_22();
    v28(v27);
    sub_221BA7264();
    v29 = OUTLINED_FUNCTION_20_18();
    v30(v29);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v10[27] = v31;
    *v31 = v32;
    v31[1] = sub_221BAA0A8;
    OUTLINED_FUNCTION_0_63();
    OUTLINED_FUNCTION_32_11();

    return MEMORY[0x2822005A8](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }
}

uint64_t sub_221BAA314()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221BAA410()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  (*(v0 + 104))(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_221BAA4D8()
{
  OUTLINED_FUNCTION_8_0();
  (*(v0[24] + 8))(v0[25], v0[23]);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221BAA574()
{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221BAA630(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFBC5C8, &qword_221BE93C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221BAA6C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_221BCDC98() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2219CA70C;

  return sub_221BA6CA4(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

uint64_t sub_221BAA880()
{
  OUTLINED_FUNCTION_67();
  v2 = *(v0 + 56);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_9_26();

  return sub_221BAAC0C(v5, v6, v7, v8, v9, v10, v2);
}

uint64_t objectdestroy_23Tm(void (*a1)(void))
{

  a1(*(v1 + 64));
  OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

unint64_t sub_221BAA9D8()
{
  result = qword_27CFB9070;
  if (!qword_27CFB9070)
  {
    sub_221BCD7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9070);
  }

  return result;
}

uint64_t sub_221BAAA30(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v3 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2219CA70C;
  OUTLINED_FUNCTION_9_26();

  return sub_221BA9D68(v8, v9, v10, v11, v12, v13, v4, v5);
}

__n128 OUTLINED_FUNCTION_13_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  v12[1] = a10;
  v12[2].n128_u64[0] = v11;
  v12[2].n128_u64[1] = v10;
  return result;
}

uint64_t sub_221BAAC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_221BCDFC8();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221BAACD0, 0, 0);
}

uint64_t sub_221BAACD0()
{
  sub_221BCE258();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_221BAAD90;
  v3 = v0[2];
  v2 = v0[3];

  return sub_221BA5F38(v3, v2, 0, 0, 1);
}

uint64_t sub_221BAAD90()
{
  v2 = *v1;

  v3 = v2[8];
  v4 = v2[7];
  v5 = v2[6];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_221BAAF9C;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_221BAAF28;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221BAAF28()
{
  if ((sub_221BCD8A8() & 1) == 0)
  {
    (*(v0 + 32))();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_221BAAFE8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  v4 = v2 + 32;

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v5)
    {

      swift_beginAccess();
      *(a1 + 16) = v6;

      sub_221BAB184((a1 + 16), v9);
      swift_endAccess();
      return;
    }

    if (v5 >= *(v2 + 16))
    {
      break;
    }

    sub_221BAB368(v4, v11);
    swift_unknownObjectWeakLoadStrong();
    type metadata accessor for RemoteAppIntentsDispatcherFacade();
    if (swift_dynamicCastClass())
    {

      sub_221BAB440(v11, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2219A35EC(0, *(v6 + 16) + 1, 1);
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2219A35EC((v7 > 1), v8 + 1, 1);
      }

      *(v6 + 16) = v8 + 1;
      sub_221BAB440(v10, v6 + 8 * v8 + 32);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_221BAB3D8(v11);
    }

    v4 += 8;
    ++v5;
  }

  __break(1u);
}

uint64_t *sub_221BAB184(uint64_t *result, __n128 a2)
{
  v2 = 0;
  v3 = *result;
  v4 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v5 = *(v3 + 16);
LABEL_2:
  for (i = v3 + 32 + 8 * v2; ; i += 8)
  {
    if (v5 == v2)
    {
      return v4;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    sub_221BAB368(i, &v8);
    swift_unknownObjectWeakLoadStrong();
    type metadata accessor for RemoteAppIntentsDispatcherFacade();
    if (swift_dynamicCastClass())
    {
      v7 = sub_221BAB3D8(&v8);
      MEMORY[0x223DA3390](v7);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_221BCD6B8();
      }

      ++v2;
      result = sub_221BCD6F8();
      v4 = v9;
      goto LABEL_2;
    }

    swift_unknownObjectRelease();
    result = sub_221BAB3D8(&v8);
    ++v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_221BAB2C8()
{
  sub_221BAB2A8();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_221BAB314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221BAB368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D8, &unk_221BE94B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221BAB3D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D8, &unk_221BE94B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221BAB440(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D8, &unk_221BE94B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221BAB4B0(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a1;
  *(v5 + 48) = 0xFFFFFFFF00000000;
  v10 = (v5 + 48);
  *(v5 + 56) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  v11 = qword_27CFB7388;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_4_10(&qword_27CFB7388);
  }

  v12 = sub_221BCCD88();
  __swift_project_value_buffer(v12, qword_27CFDEDF8);

  v13 = sub_221BCCD68();
  v14 = sub_221BCDA68();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_103();
    aBlock[0] = OUTLINED_FUNCTION_105();
    *v15 = 136315394;
    v16 = sub_221BABF5C();
    v17 = v9;
    v18 = a3;
    v20 = v19;

    v21 = sub_2219A6360(v16, v20, aBlock);
    a3 = v18;
    v9 = v17;

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2219A6360(v17, a2, aBlock);
    _os_log_impl(&dword_221989000, v13, v14, "%s listening for: %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  else
  {
  }

  os_unfair_lock_lock(v10);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v22 = swift_allocObject();
  v22[2] = v6;
  v22[3] = v9;
  v22[4] = a2;
  aBlock[4] = sub_221BAC054;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221BABAD0;
  aBlock[3] = &block_descriptor_9;
  v23 = _Block_copy(aBlock);

  v24 = sub_221BCD408();
  v25 = notify_register_dispatch((v24 + 32), &v10[1], a3, v23);

  _Block_release(v23);
  os_unfair_lock_unlock(v10);
  if (v25)
  {

    v26 = sub_221BCCD68();
    v27 = sub_221BCDA78();

    if (os_log_type_enabled(v26, v27))
    {
      v35 = a3;
      v28 = OUTLINED_FUNCTION_103();
      aBlock[0] = OUTLINED_FUNCTION_105();
      *v28 = 136315394;
      v29 = sub_221BABF5C();
      v31 = v30;

      v32 = sub_2219A6360(v29, v31, aBlock);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = sub_2219A6360(v9, a2, aBlock);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_221989000, v26, v27, "%s failed to register for %s", v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }

    else
    {
    }

    return 0;
  }

  else
  {
  }

  return v6;
}

uint64_t sub_221BAB8E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_27CFB7388 != -1)
  {
    swift_once();
  }

  v6 = sub_221BCCD88();
  __swift_project_value_buffer(v6, qword_27CFDEDF8);
  swift_unownedRetain();

  v7 = sub_221BCCD68();
  v8 = sub_221BCDA68();
  swift_unownedRelease();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    swift_unownedRetainStrong();
    v11 = sub_221BABF5C();
    v13 = v12;

    v14 = sub_2219A6360(v11, v13, &v16);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2219A6360(a3, a4, &v16);
    _os_log_impl(&dword_221989000, v7, v8, "%s received notification for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v10, -1, -1);
    MEMORY[0x223DA4C00](v9, -1, -1);
  }

  swift_unownedRetainStrong();
  sub_221BABF14();
}

uint64_t sub_221BABAD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_221BABB24()
{
  sub_221BABBA8();

  return v0;
}

uint64_t sub_221BABB50()
{
  sub_221BABB24();

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

void sub_221BABBA8()
{
  v1 = atomic_load((v0 + 56));
  if ((v1 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10(&qword_27CFB7388);
    }

    v2 = sub_221BCCD88();
    __swift_project_value_buffer(v2, qword_27CFDEDF8);

    v3 = sub_221BCCD68();
    v4 = sub_221BCDA68();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_103();
      v9 = OUTLINED_FUNCTION_105();
      *v5 = 136315394;
      v6 = sub_221BABF5C();
      v8 = sub_2219A6360(v6, v7, &v9);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_2219A6360(*(v0 + 16), *(v0 + 24), &v9);
      _os_log_impl(&dword_221989000, v3, v4, "%s stopping for: %s", v5, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }

    atomic_store(1u, (v0 + 56));
    os_unfair_lock_lock((v0 + 48));
    notify_cancel(*(v0 + 52));

    os_unfair_lock_unlock((v0 + 48));
  }
}

uint64_t sub_221BABD54()
{
  v11[1] = *MEMORY[0x277D85DE8];
  state64 = 0;
  os_unfair_lock_lock((v0 + 48));
  v1 = *(v0 + 52);
  os_unfair_lock_unlock((v0 + 48));
  if (!notify_get_state(v1, &state64))
  {
    return state64;
  }

  if (qword_27CFB7388 != -1)
  {
    OUTLINED_FUNCTION_4_10(&qword_27CFB7388);
  }

  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_27CFDEDF8);

  v3 = sub_221BCCD68();
  v4 = sub_221BCDA78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_103();
    v11[0] = OUTLINED_FUNCTION_105();
    *v5 = 136315394;
    v6 = sub_221BABF5C();
    v8 = sub_2219A6360(v6, v7, v11);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2219A6360(*(v0 + 16), *(v0 + 24), v11);
    _os_log_impl(&dword_221989000, v3, v4, "%s unable to get current state for %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  return 0;
}

void sub_221BABF14()
{
  v1 = atomic_load((v0 + 56));
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 32);
    v3 = sub_221BABD54();
    v2(v3, v4 & 1);
  }
}

uint64_t sub_221BABF5C()
{
  swift_getMetatypeMetadata();
  v0 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v0);

  MEMORY[0x223DA31F0](60, 0xE100000000000000);
  sub_221BCE018();
  MEMORY[0x223DA31F0](62, 0xE100000000000000);
  return 0;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_221BAC078(uint64_t a1, unint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v4 = sub_221BCD408();
  v5 = sysctlbyname((v4 + 32), 0, &v16, 0, 0);

  if (!v5)
  {
    v6 = sub_221BAC2A4(0, v16);
    v7 = sub_221BCD408();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2219B3F14();
      v6 = v8;
    }

    v9 = sysctlbyname((v7 + 32), (v6 + 32), &v16, 0, 0);

    if (!v9)
    {
      return sub_221BAC314(v6);
    }
  }

  if (qword_27CFB73A8 != -1)
  {
    swift_once();
  }

  v10 = sub_221BCCD88();
  __swift_project_value_buffer(v10, qword_27CFDEE40);

  v11 = sub_221BCCD68();
  v12 = sub_221BCDA98();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2219A6360(a1, a2, v17);
    _os_log_impl(&dword_221989000, v11, v12, "Unable to get sysctl %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223DA4C00](v14, -1, -1);
    MEMORY[0x223DA4C00](v13, -1, -1);
  }

  return 0;
}

uint64_t sub_221BAC2A4(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    v4 = sub_221BCD6D8();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

uint64_t sub_221BAC314(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
LABEL_6:
      v5 = sub_221BCD428();

      return v5;
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_221BAC39C()
{
  result = sub_221BAC078(0xD000000000000012, 0x8000000221BF1C40);
  if (v1)
  {
    v2 = result;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0x8000000221BF1C40;
  }

  qword_27CFBC6E0 = v2;
  *algn_27CFBC6E8 = v3;
  return result;
}

uint64_t static SysCtl.osReleaseType.getter()
{
  if (qword_27CFB7318 != -1)
  {
    swift_once();
  }

  v0 = qword_27CFBC6E0;

  return v0;
}

_BYTE *storeEnumTagSinglePayload for SysCtl(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_221BAC50C()
{
  type metadata accessor for WiFiMonitor(0);
  swift_allocObject();
  result = sub_221BAC630();
  qword_27CFDED00 = result;
  return result;
}

uint64_t sub_221BAC54C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_221BCCDD8();

  return v3;
}

uint64_t sub_221BAC5C0(char a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_221BCCDE8();
}

id sub_221BAC630()
{
  *(v0 + OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_cwfInterface) = 0;
  v1 = OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_logger;
  if (qword_27CFB7388 != -1)
  {
    swift_once();
  }

  v2 = sub_221BCCD88();
  v3 = __swift_project_value_buffer(v2, qword_27CFDEDF8);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  swift_beginAccess();
  sub_221BCCDB8();
  swift_endAccess();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    wifiCapability = MobileGestalt_get_wifiCapability();

    if (wifiCapability)
    {
      v7 = sub_221BAC7B0();
      *(v0 + OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_isAvailable) = v7;
      if (v7)
      {
        sub_221BAC974();
      }
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_isAvailable) = 0;
    }

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_221BAC7B0()
{
  v0 = type metadata accessor for Entitlement.Validator(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CFB7388 != -1)
  {
    swift_once();
  }

  v3 = sub_221BCCD88();
  v4 = __swift_project_value_buffer(v3, qword_27CFDEDF8);
  (*(*(v3 - 8) + 16))(v2, v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F98, &qword_221BD2828);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_221BCF7F0;
  *(v5 + 56) = &type metadata for Entitlement.IsTrue;
  *(v5 + 64) = &protocol witness table for Entitlement.IsTrue;
  *(v5 + 32) = 0xD00000000000001ALL;
  *(v5 + 40) = 0x8000000221BF1CB0;
  *(v5 + 104) = &protocol witness table for Entitlement.Contains;
  *(v5 + 72) = 0xD000000000000034;
  *(v5 + 80) = 0x8000000221BEC2B0;
  *(v5 + 88) = &unk_283511F08;
  *(v5 + 96) = &type metadata for Entitlement.Contains;
  *&v2[*(v0 + 20)] = MEMORY[0x277D84F90];
  *&v2[*(v0 + 24)] = v5;
  Entitlement.Validator.validate()();
  sub_221BAD590(v2);
  if (v6)
  {
  }

  return v6 == 0;
}

void sub_221BAC974()
{
  v1 = v0;
  v47 = *MEMORY[0x277D85DE8];
  v2 = sub_221BCCD88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v40 = OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_cwfInterface;
  v10 = *(v1 + OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_cwfInterface);
  if (v10)
  {
    [v10 invalidate];
  }

  v11 = [objc_allocWithZone(MEMORY[0x277D02B18]) init];
  v12 = swift_allocObject();
  swift_weakInit();
  v45 = sub_221BAD5EC;
  v46 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_221B816B0;
  v44 = &block_descriptor_10;
  v13 = _Block_copy(&aBlock);

  [v11 setEventHandler_];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v45 = sub_221BAD60C;
  v46 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_221B7C464;
  v44 = &block_descriptor_6;
  v15 = _Block_copy(&aBlock);

  [v11 setInvalidationHandler_];
  _Block_release(v15);
  [v11 resume];
  aBlock = 0;
  if ([v11 startMonitoringEventType:6 error:&aBlock])
  {
    v16 = aBlock;
    sub_221BAD614(v11);
    v18 = v17;
    if (v17)
    {
    }

    sub_221BAC5C0(v18 != 0, v17);
    (*(v3 + 16))(v9, v1 + OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_logger, v2);
    v19 = v11;
    v20 = sub_221BCCD68();
    v21 = sub_221BCDA68();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v22 = 136315138;
      v24 = sub_221BAD614(v19);
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v24 = 0x3E656E6F6E3CLL;
        v26 = 0xE600000000000000;
      }

      v27 = sub_2219A6360(v24, v26, &aBlock);
      v39 = v2;
      v28 = v27;

      *(v22 + 4) = v28;
      _os_log_impl(&dword_221989000, v20, v21, "WiFiMonitor currentNetworkName: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x223DA4C00](v23, -1, -1);
      MEMORY[0x223DA4C00](v22, -1, -1);

      (*(v3 + 8))(v9, v39);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    v11 = *(v1 + v40);
    *(v1 + v40) = v19;
  }

  else
  {
    v29 = aBlock;
    v30 = sub_221BCC338();

    swift_willThrow();
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_logger, v2);
    v31 = v30;
    v32 = sub_221BCCD68();
    v33 = sub_221BCDA78();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v30;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_221989000, v32, v33, "WiFiMonitor error: %@", v34, 0xCu);
      sub_22199B738(v35);
      MEMORY[0x223DA4C00](v35, -1, -1);
      MEMORY[0x223DA4C00](v34, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_221BAC5C0(0, v38);
  }
}

uint64_t sub_221BACF00(void *a1, uint64_t a2)
{
  v3 = sub_221BCCD88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v6, Strong + OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_logger, v3);

    v8 = a1;
    v9 = sub_221BCCD68();
    v10 = sub_221BCDA68();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_221989000, v9, v10, "WiFiMonitor event: %@", v11, 0xCu);
      sub_22199B738(v12);
      MEMORY[0x223DA4C00](v12, -1, -1);
      MEMORY[0x223DA4C00](v11, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      v17 = *(v15 + OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_cwfInterface);
      if (v17)
      {
        v18 = v17;

        sub_221BAD614(v18);
        v20 = v19;

        if (v20)
        {

          LOBYTE(v15) = 1;
          goto LABEL_12;
        }
      }

      else
      {
      }

      LOBYTE(v15) = 0;
    }

LABEL_12:
    sub_221BAC5C0(v15, v16);
  }

  return result;
}

uint64_t sub_221BAD188(uint64_t a1)
{
  v1 = sub_221BCCD88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v2 + 16))(v4, result + OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_logger, v1);

    v6 = sub_221BCCD68();
    v7 = sub_221BCDA78();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_221989000, v6, v7, "WiFiMonitor interface invalidated", v8, 2u);
      MEMORY[0x223DA4C00](v8, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_221BAD310()
{
  v1 = OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor__isAssociated;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9080, &qword_221BE95A0);
  OUTLINED_FUNCTION_11_4();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_logger;
  sub_221BCCD88();
  OUTLINED_FUNCTION_11_4();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_221BAD3B4()
{
  sub_221BAD310();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for WiFiMonitor(uint64_t a1)
{
  result = qword_27CFBC708;
  if (!qword_27CFBC708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_221BAD460(uint64_t a1)
{
  sub_221BAD540();
  if (v1 <= 0x3F)
  {
    sub_221BCCD88();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_221BAD540()
{
  if (!qword_27CFBC718)
  {
    v0 = sub_221BCCDF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CFBC718);
    }
  }
}

uint64_t sub_221BAD590(uint64_t a1)
{
  v2 = type metadata accessor for Entitlement.Validator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_221BAD614(void *a1)
{
  v1 = [a1 networkName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCD388();

  return v3;
}

uint64_t sub_221BAD680()
{
  v0 = MKBGetDeviceLockState();
  result = 0;
  if (v0 == 1)
  {
    v2 = MKBGetDeviceLockStateInfo();
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_221BCD288();
      }
    }

    memset(v4, 0, sizeof(v4));
    sub_2219A6860(v4, &qword_27CFB7FF8, &qword_221BE6A00);
    return 0;
  }

  return result;
}

uint64_t sub_221BAD7BC(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    v3 = MobileGestalt_copy_deviceName_obj();

    if (!v3)
    {
      return 0x6E776F6E6B6E753CLL;
    }

    v4 = sub_221BCD388();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221BAD848(double a1)
{
  if (sub_221BADD64(a1))
  {
    return 1;
  }

  else
  {
    return sub_221BADD64(v1) & 1;
  }
}

void *sub_221BAD888()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC720, &unk_221BE9630);
  swift_allocObject();
  v0[2] = sub_221BADBB0(2000000000000000000, 0);
  v0[3] = 0;
  if (qword_27CFB7328 != -1)
  {
    swift_once();
  }

  v0[4] = qword_27CFDED10;
  v2 = qword_27CFB7330;

  if (v2 != -1)
  {
    swift_once();
  }

  v1[5] = qword_27CFDED18;
  v3 = swift_allocObject();
  swift_weakInit();
  sub_221B70238();

  v4 = sub_221BCDB28();
  _s16LockStateMonitorCMa();
  swift_allocObject();
  v5 = sub_221BAEDD4(v4, sub_221BADCEC, v3);

  v1[3] = v5;

  return v1;
}

uint64_t sub_221BADA0C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_221BADA78();
  }

  return result;
}

void sub_221BADA78()
{
  v1 = (v0 + *(*v0 + 88));
  os_unfair_lock_lock(v1);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9220, &qword_221BD7E90) + 28);
  sub_2219A6860(v1 + v2, &qword_27CFBC728, &unk_221BE9640);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC730, &unk_221BE9F00);
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_221BADB20()
{

  return v0;
}

uint64_t sub_221BADB58()
{
  sub_221BADB20();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_221BADBB0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC728, &unk_221BE9640);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = (v2 + *(*v2 + 88));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC730, &unk_221BE9F00);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  *v8 = 0;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9220, &qword_221BD7E90) + 28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC738, &unk_221BE9650);
  bzero(v8 + v10, *(*(v11 - 8) + 64));
  sub_221BADCF4(v7, v8 + v10);
  v12 = (v2 + *(*v2 + 96));
  *v12 = a1;
  v12[1] = a2;
  return v2;
}

uint64_t sub_221BADCF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC728, &unk_221BE9640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221BADDC4()
{
  _s20CompanionLinkMonitorCMa();
  swift_allocObject();
  result = sub_221BADE00();
  qword_27CFDED10 = result;
  return result;
}

uint64_t sub_221BADE00()
{
  v1 = v0;
  v23 = sub_221BCDB18();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_221BCDAF8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_221BCD1F8();
  MEMORY[0x28223BE20](v6 - 8);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  sub_221B70238();
  sub_221BCD1E8();
  aBlock = MEMORY[0x277D84F90];
  sub_221BAECD8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC48, &unk_221BE63C0);
  sub_221BAED30();
  sub_221BCDD18();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v23);
  v8 = sub_221BCDB58();
  *(v0 + 24) = v8;
  *(v0 + 32) = 0;
  [*(v0 + 16) setDispatchQueue_];
  v9 = *(v0 + 16);
  v10 = swift_allocObject();
  swift_weakInit();
  v28 = sub_221BAED94;
  v29 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_221B816B0;
  v27 = &block_descriptor_11;
  v11 = _Block_copy(&aBlock);
  v12 = v9;

  [v12 setLocalDeviceUpdatedHandler_];
  _Block_release(v11);

  v13 = *(v0 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v28 = sub_221BAEDB4;
  v29 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_221B7C464;
  v27 = &block_descriptor_5;
  v15 = _Block_copy(&aBlock);
  v16 = v13;

  [v16 setInvalidationHandler_];
  _Block_release(v15);

  v17 = *(v0 + 16);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v17;

  v28 = sub_221BAEDBC;
  v29 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_221BAEBAC;
  v27 = &block_descriptor_9;
  v20 = _Block_copy(&aBlock);

  [v19 activateWithCompletion_];
  _Block_release(v20);

  return v1;
}

uint64_t sub_221BAE274(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221BAE2D4(a1, v4);
  }

  return result;
}

void sub_221BAE2D4(void *a1, double a2)
{
  v4 = v2;
  v6 = sub_221BCD238();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v4 + 24);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_221BCD248();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v13 = [a1 statusFlags];
  if (*(v4 + 32) == ((v13 >> 40) & 1))
  {
    return;
  }

  v3 = (v13 & 0x10000000000) >> 40;
  *(v4 + 32) = ((v13 & 0x10000000000) >> 32) >> 8;
  if (qword_27CFB7388 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v14 = sub_221BCCD88();
  __swift_project_value_buffer(v14, qword_27CFDEDF8);

  v15 = sub_221BCCD68();
  v16 = sub_221BCDA58();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136315394;
    v19 = sub_221BAE714();
    v21 = sub_2219A6360(v19, v20, &v23);

    *(v17 + 4) = v21;
    *(v17 + 12) = 1024;
    *(v17 + 14) = v3;
    _os_log_impl(&dword_221989000, v15, v16, "%s: Me device status updated %{BOOL}d", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223DA4C00](v18, -1, -1);
    MEMORY[0x223DA4C00](v17, -1, -1);
  }
}

void sub_221BAE544(uint64_t a1)
{
  if (qword_27CFB7388 != -1)
  {
    swift_once();
  }

  v1 = sub_221BCCD88();
  __swift_project_value_buffer(v1, qword_27CFDEDF8);

  oslog = sub_221BCCD68();
  v2 = sub_221BCDA78();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v5 = sub_221BAE714();
      v7 = v6;
    }

    else
    {
      v7 = 0xE500000000000000;
      v5 = 0x3E6C696E3CLL;
    }

    v8 = sub_2219A6360(v5, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_221989000, oslog, v2, "%s: Invalidated companion link monitor", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x223DA4C00](v4, -1, -1);
    MEMORY[0x223DA4C00](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_221BAE714()
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BF1E00);
  sub_221BCE018();
  MEMORY[0x223DA31F0](62, 0xE100000000000000);
  return 0;
}

void sub_221BAE7B4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      if (qword_27CFB7388 != -1)
      {
        swift_once();
      }

      v3 = sub_221BCCD88();
      __swift_project_value_buffer(v3, qword_27CFDEDF8);

      v4 = a1;
      v5 = sub_221BCCD68();
      v6 = sub_221BCDA78();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v28 = v9;
        *v7 = 136315394;

        v10 = sub_221BAE714();
        v12 = v11;

        v13 = sub_2219A6360(v10, v12, &v28);

        *(v7 + 4) = v13;
        *(v7 + 12) = 2112;
        v14 = a1;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 14) = v15;
        *v8 = v15;
        _os_log_impl(&dword_221989000, v5, v6, "%s: Failed to activate companion link monitor: %@", v7, 0x16u);
        sub_22199B738(v8);
        MEMORY[0x223DA4C00](v8, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x223DA4C00](v9, -1, -1);
        MEMORY[0x223DA4C00](v7, -1, -1);

LABEL_16:

        return;
      }
    }

    else
    {
      if (qword_27CFB7388 != -1)
      {
        swift_once();
      }

      v20 = sub_221BCCD88();
      __swift_project_value_buffer(v20, qword_27CFDEDF8);

      v21 = sub_221BCCD68();
      v22 = sub_221BCDA58();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v28 = v24;
        *v23 = 136315138;
        v25 = sub_221BAE714();
        v27 = sub_2219A6360(v25, v26, &v28);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_221989000, v21, v22, "%s: Activated companion link monitor", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x223DA4C00](v24, -1, -1);
        MEMORY[0x223DA4C00](v23, -1, -1);

        goto LABEL_16;
      }
    }
  }

  else
  {
    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v16 = sub_221BCCD88();
    __swift_project_value_buffer(v16, qword_27CFDEDF8);
    v17 = sub_221BCCD68();
    v18 = sub_221BCDA78();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_221989000, v17, v18, "CompanionLinkMonitor: failed to resolve strong self", v19, 2u);
      MEMORY[0x223DA4C00](v19, -1, -1);
    }
  }
}

void sub_221BAEBAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_221BAEC18()
{
  [*(v0 + 16) invalidate];

  return v0;
}

uint64_t sub_221BAEC50()
{
  sub_221BAEC18();

  return MEMORY[0x2821FE8D8](v0, 33, 7);
}

unint64_t sub_221BAECD8(double a1)
{
  result = qword_27CFBBC40;
  if (!qword_27CFBBC40)
  {
    sub_221BCDAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBBC40);
  }

  return result;
}

unint64_t sub_221BAED30()
{
  result = qword_27CFBBC50;
  if (!qword_27CFBBC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFBBC48, &unk_221BE63C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBBC50);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_221BAEDD4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  v8 = sub_221BAB4B0(0xD000000000000024, 0x8000000221BF1EB0, v7, sub_221BAF15C, v6);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_221BAEE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_221BCD1B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_221BCD1F8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  aBlock[4] = sub_221B70188;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221B7C464;
  aBlock[3] = &block_descriptor_12;
  v16 = _Block_copy(aBlock);

  sub_221BCD1D8();
  v18[1] = MEMORY[0x277D84F90];
  sub_221BAF184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC60, &qword_221BE5D78);
  sub_221BAF1DC();
  sub_221BCDD18();
  MEMORY[0x223DA3890](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_221BAF108()
{
  v0 = sub_221BABB24();

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_221BAF184()
{
  result = qword_27CFBBC58;
  if (!qword_27CFBBC58)
  {
    sub_221BCD1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBBC58);
  }

  return result;
}

unint64_t sub_221BAF1DC()
{
  result = qword_27CFBBC68;
  if (!qword_27CFBBC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFBBC60, &qword_221BE5D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBBC68);
  }

  return result;
}

uint64_t sub_221BAF240()
{
  _s13SystemMonitorCMa();
  swift_allocObject();
  result = sub_221BAF27C();
  qword_27CFDED18 = result;
  return result;
}

uint64_t sub_221BAF27C()
{
  v1 = v0;
  v23 = sub_221BCDB18();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_221BCDAF8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_221BCD1F8();
  MEMORY[0x28223BE20](v6 - 8);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D02938]) init];
  sub_221B70238();
  sub_221BCD1E8();
  aBlock = MEMORY[0x277D84F90];
  sub_221BAECD8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC48, &unk_221BE63C0);
  sub_221BAED30();
  sub_221BCDD18();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v23);
  v8 = sub_221BCDB58();
  *(v0 + 24) = v8;
  *(v0 + 32) = 0;
  [*(v0 + 16) setDispatchQueue_];
  [*(v0 + 16) setMeDeviceUseFindMyLocate_];
  v9 = *(v0 + 16);
  v10 = swift_allocObject();
  swift_weakInit();
  v28 = sub_221BAFC6C;
  v29 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_221B7C464;
  v27 = &block_descriptor_13;
  v11 = _Block_copy(&aBlock);
  v12 = v9;

  [v12 setMeDeviceChangedHandler_];
  _Block_release(v11);

  v13 = *(v0 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v28 = sub_221BAFCBC;
  v29 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_221B7C464;
  v27 = &block_descriptor_5_0;
  v15 = _Block_copy(&aBlock);
  v16 = v13;

  [v16 setInvalidationHandler_];
  _Block_release(v15);

  v17 = *(v0 + 16);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v17;

  v28 = sub_221BAFCF4;
  v29 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_221B7C464;
  v27 = &block_descriptor_9_0;
  v20 = _Block_copy(&aBlock);

  [v19 activateWithCompletion_];
  _Block_release(v20);

  return v1;
}

uint64_t sub_221BAF704()
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0x6F4D6D6574737953, 0xEE003C726F74696ELL);
  sub_221BCE018();
  MEMORY[0x223DA31F0](62, 0xE100000000000000);
  return 0;
}

void sub_221BAF7AC(double a1)
{
  v2 = v1;
  v3 = sub_221BCD238();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 24);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_221BCD248();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v10 = *(v2 + 16);
  if ([v10 meDeviceValid])
  {
    v11 = [v10 meDeviceIsMe];
    if (v11 == *(v2 + 32))
    {
      return;
    }

    LODWORD(v7) = v11;
  }

  else
  {
    if ((*(v2 + 32) & 1) == 0)
    {
      return;
    }

    LODWORD(v7) = 0;
  }

  *(v2 + 32) = v7;
  if (qword_27CFB7388 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v12 = sub_221BCCD88();
  __swift_project_value_buffer(v12, qword_27CFDEDF8);

  v13 = sub_221BCCD68();
  v14 = sub_221BCDA58();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315394;
    v17 = sub_221BAF704();
    v19 = sub_2219A6360(v17, v18, &v21);

    *(v15 + 4) = v19;
    *(v15 + 12) = 1024;
    *(v15 + 14) = v7;
    _os_log_impl(&dword_221989000, v13, v14, "%s: Me device status updated %{BOOL}d", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223DA4C00](v16, -1, -1);
    MEMORY[0x223DA4C00](v15, -1, -1);
  }
}

uint64_t sub_221BAFA3C(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  if (qword_27CFB7388 != -1)
  {
    swift_once();
  }

  v5 = sub_221BCCD88();
  __swift_project_value_buffer(v5, qword_27CFDEDF8);

  v6 = sub_221BCCD68();
  v7 = a2();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v10 = sub_221BAF704();
      v12 = v11;
    }

    else
    {
      v12 = 0xE500000000000000;
      v10 = 0x3E6C696E3CLL;
    }

    v13 = sub_2219A6360(v10, v12, v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_221989000, v6, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223DA4C00](v9, -1, -1);
    MEMORY[0x223DA4C00](v8, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221BAF7AC(v15);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_221BAFD3C()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v10 - v1;
  v10[0] = 1;
  v3 = container_system_path_for_identifier();
  if (v3)
  {
    v6 = v3;
    v7 = sub_221BCC418();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
    sub_221BCC398();
    sub_221BAFED0(v2);
    free(v6);
  }

  else
  {
    v8 = v10[0];
    sub_221BAFE7C(0, v4, v5);
    swift_allocError();
    *v9 = v8;
    swift_willThrow();
  }
}

unint64_t sub_221BAFE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBC740;
  if (!qword_27CFBC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC740);
  }

  return result;
}

uint64_t sub_221BAFED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Instrumentation.currentActivityId.getter()
{
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  sub_221BCE458();
  v0 = v4;
  if (v4)
  {
    v1 = v5;
    __swift_project_boxed_opaque_existential_0(v3, v4);
    v0 = (*(v1 + 16))(v0, v1);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_2219A1CC8(v3, qword_27CFB7A80, &unk_221BD2800);
  }

  return v0;
}

uint64_t sub_221BB0014()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 248) = v27;
  *(v1 + 256) = v0;
  *(v1 + 232) = v26;
  *(v1 + 216) = v24;
  *(v1 + 224) = v25;
  *(v1 + 200) = v22;
  *(v1 + 208) = v23;
  *(v1 + 184) = v20;
  *(v1 + 168) = v19;
  *(v1 + 152) = v18;
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 352) = v4;
  *(v1 + 120) = v5;
  *(v1 + 128) = v6;
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  *(v1 + 96) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v10);
  *(v1 + 264) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v11);
  *(v1 + 272) = swift_task_alloc();
  v12 = sub_221BCCD88();
  *(v1 + 280) = v12;
  *(v1 + 288) = *(v12 - 8);
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 353) = *v21;
  if (v24)
  {
    swift_getObjectType();
    v13 = sub_221BCD778();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *(v1 + 304) = v13;
  *(v1 + 312) = v15;

  return MEMORY[0x2822009F8](sub_221BB01C0, v13, v15);
}

uint64_t sub_221BB01C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = v4;
  v24 = *(v4 + 353);
  v5 = *(v4 + 288);
  v6 = *(v4 + 296);
  v7 = *(v4 + 280);
  v9 = *(v4 + 256);
  v8 = *(v4 + 264);
  v25 = *(v4 + 208);
  v22 = *(v4 + 200);
  v23 = *(v4 + 272);
  v10 = *(v4 + 192);
  v31 = *(v4 + 176);
  v32 = *(v4 + 184);
  v29 = *(v4 + 160);
  v30 = *(v4 + 168);
  v28 = *(v4 + 152);
  v21 = *(v4 + 352);
  v11 = *(v4 + 136);
  v26 = *(v4 + 144);
  v12 = *(v4 + 128);
  v20 = *(v4 + 120);
  v33 = *(v4 + 112);
  v34 = *(v4 + 104);
  v27 = type metadata accessor for Instrumentation.Activity(0, *(v4 + 248), a3, a4);
  (*(v5 + 16))(v6, v9, v7);
  sub_221B702CC(v10, v4 + 16, qword_27CFB7A80, &unk_221BD2800);
  v35[0] = v12;
  v35[1] = v11;
  v36 = v21;
  v37 = v24;
  sub_221B702CC(v22, v23, &qword_27CFB7F60, &qword_221BD6680);
  sub_221B702CC(v25, v8, &qword_27CFB7F58, &unk_221BD27E0);

  sub_22198BEB8(v26, v28);
  sub_22198BEB8(v29, v30);
  sub_22198BEB8(v31, v32);

  v13 = sub_221BB0C2C(v33, v20, v34, v6, v26, v28, v29, v30, v31, v32, v4 + 16, v35, v23, v8);
  *(v4 + 320) = v13;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  *(v4 + 80) = v27;
  *(v4 + 88) = &off_28351D968;
  *(v4 + 56) = v13;
  v14 = swift_task_alloc();
  *(v4 + 328) = v14;
  v15 = *(v4 + 232);
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;

  v16 = swift_task_alloc();
  *(v4 + 336) = v16;
  *v16 = v4;
  v16[1] = sub_221BB04AC;
  v17 = *(v4 + 248);
  v18 = *(v4 + 96);
  v40 = 455;
  v41 = v17;

  return MEMORY[0x282200908](v18);
}

uint64_t sub_221BB04AC()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;
  v2[43] = v0;

  if (v0)
  {
    v4 = v2[38];
    v5 = v2[39];
    v6 = sub_221BB0674;
  }

  else
  {
    sub_2219A1CC8((v2 + 7), qword_27CFB7A80, &unk_221BD2800);
    v4 = v2[38];
    v5 = v2[39];
    v6 = sub_221BB05F0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_221BB05F0()
{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221BB0674()
{
  OUTLINED_FUNCTION_8_0();

  sub_2219A1CC8(v0 + 56, qword_27CFB7A80, &unk_221BD2800);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221BB0710()
{
  sub_221B702CC(v0 + qword_27CFBC788, v4, &qword_27CFB7FD0, &qword_221BD2888);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_0(v4, v5);
    v1 = (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    sub_2219A1CC8(v4, &qword_27CFB7FD0, &qword_221BD2888);
  }

  return v1;
}

uint64_t sub_221BB07C4()
{
  v1 = (v0 + qword_27CFBC7A8);
  if (*(v0 + qword_27CFBC7A8 + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_221BB0B40(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_221BB0840()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC840, &qword_221BE9988);
  swift_allocObject();
  result = sub_221BCE448();
  qword_27CFBC748 = result;
  return result;
}

uint64_t sub_221BB08A4()
{
  type metadata accessor for PowerLog.DataStream();
  swift_allocObject();
  result = sub_221BB4BBC();
  qword_27CFBC750 = result;
  return result;
}

void sub_221BB08E4(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 72))
  {
    goto LABEL_2;
  }

  v4 = *(v2 + 64);
  sub_221B702CC(result, &v10, qword_27CFB7A80, &unk_221BD2800);
  if (v11)
  {
    sub_22198B358(&v10, v12);
    v5 = sub_221BCCE78();
    swift_allocObject();
    v6 = sub_221BCCE48();
    v7 = v13;
    v8 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    (*(v8 + 8))(v7, v8);
    sub_221BCCE28();
    *(a2 + 24) = v5;
    *(a2 + 32) = &off_28351D7F8;
    *a2 = v6;
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_2219A1CC8(&v10, qword_27CFB7A80, &unk_221BD2800);
    if (*(v2 + 56))
    {
LABEL_2:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    sub_221BB0A2C(58, *(v2 + 48), v4);
    *(a2 + 24) = &type metadata for NWActivityGroup;
    *(a2 + 32) = &off_28351D9C8;
    *a2 = v9;
  }
}

double sub_221BB0A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_221BCCE78();
  swift_allocObject();
  v3 = sub_221BCCE48();
  swift_allocObject();
  v4 = sub_221BCCE48();

  sub_221BCCE28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC838, &qword_221BE9978);
  v5 = swift_allocObject();
  *&result = 2;
  *(v5 + 16) = xmmword_221BE97A0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t sub_221BB0AE8()
{
  v3 = sub_221BCCCC8();
  sub_2219EB5B8(v3, v0, v1);
  return sub_221BCD548();
}

uint64_t sub_221BB0B40(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v7 = *(a1 + 16);
    v8 = v2;

    MEMORY[0x223DA31F0](58, 0xE100000000000000);
    v2 = v7;
    v3 = v8;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x223DA31F0](v2, v3);

  v4 = sub_221BCDE88();
  MEMORY[0x223DA31F0](v4);

  MEMORY[0x223DA31F0](58, 0xE100000000000000);
  v5 = sub_221BB0AE8();
  MEMORY[0x223DA31F0](v5);

  MEMORY[0x223DA31F0](8285, 0xE200000000000000);
  return 91;
}

uint64_t sub_221BB0CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v107 = a7;
  v108 = a6;
  v99 = a1;
  v100 = a2;
  v96 = a14;
  v105 = a8;
  v106 = a10;
  v102 = a13;
  v103 = a11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  MEMORY[0x28223BE20](v19 - 8);
  v85 = v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v97 = v82 - v22;
  v98 = sub_221BCCCD8();
  v92 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v91 = v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_221BCCD88();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v83 = v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  MEMORY[0x28223BE20](v27 - 8);
  v84 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v89 = v82 - v30;
  v31 = sub_221BCCD08();
  v90 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v104 = v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a12;
  v101 = a12[1];
  v88 = *(a12 + 16);
  v87 = *(a12 + 17);
  *(v15 + qword_27CFBC798) = 0;
  v34 = qword_27CFBC7A0;
  v35 = sub_221BCDFB8();
  __swift_storeEnumTagSinglePayload(v15 + v34, 1, 1, v35);
  v36 = (v15 + qword_27CFBC7A8);
  *v36 = 0;
  v36[1] = 0;
  v37 = v100;
  *(v15 + 16) = v99;
  *(v15 + 24) = v37;
  *(v15 + 32) = 0;
  *(v15 + 36) = 0;
  *(v15 + 40) = *a3;
  *(v15 + 56) = *(a3 + 16);
  v94 = v25;
  v38 = *(v25 + 16);
  v99 = v24;
  v100 = a4;
  v82[1] = v25 + 16;
  v82[0] = v38;
  v38(v15 + qword_27CFBC758, a4, v24);
  v39 = (v15 + qword_27CFBC760);
  v40 = a5;
  v41 = v108;
  *v39 = a5;
  v39[1] = v41;
  v42 = (v15 + qword_27CFBC768);
  v43 = v106;
  v44 = v107;
  v45 = v105;
  *v42 = v107;
  v42[1] = v45;
  v46 = (v15 + qword_27CFBC770);
  *v46 = a9;
  v46[1] = v43;
  *(off_27CFBC778 + v15) = MEMORY[0x277D84F98];
  v47 = v15 + qword_27CFBC780;
  *v47 = *(a3 + 24);
  *(v47 + 16) = *(a3 + 40);
  v95 = v40;
  v48 = v101;
  v49 = v103;
  sub_22198BEB8(v40, v41);
  v50 = v44;
  v51 = v31;
  sub_22198BEB8(v50, v45);
  v93 = a9;
  sub_22198BEB8(a9, v43);
  v52 = v49;
  sub_221BB08E4(v49, &v109);
  v53 = v15 + qword_27CFBC788;
  v54 = v110;
  *v53 = v109;
  *(v53 + 16) = v54;
  *(v53 + 32) = v111;
  v55 = v15 + qword_27CFBC790;
  *v55 = *(a3 + 80);
  v56 = *(a3 + 88);
  v57 = v89;
  v58 = v102;
  *(v55 + 8) = v56;
  v59 = v15 + qword_27CFDED20;
  v86 = v33;
  *v59 = v33;
  *(v59 + 8) = v48;
  *(v59 + 16) = v88;
  *(v59 + 17) = v87;
  sub_221B702CC(v58, v57, &qword_27CFB7F60, &qword_221BD6680);
  if (__swift_getEnumTagSinglePayload(v57, 1, v31) != 1)
  {
    v68 = v90;
    (*(v90 + 32))(v104, v57, v31);

    v66 = v96;
    v67 = v98;
    goto LABEL_11;
  }

  sub_221B702CC(v52, &v109, qword_27CFB7A80, &unk_221BD2800);
  v60 = *(&v110 + 1);
  if (!*(&v110 + 1))
  {

    sub_2219A1CC8(&v109, qword_27CFB7A80, &unk_221BD2800);
    v64 = v84;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v31);
    v66 = v96;
    v67 = v98;
LABEL_7:
    (v82[0])(v83, v100, v99);
    sub_221BCCCE8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v51);
    v68 = v90;
    if (EnumTagSinglePayload != 1)
    {
      sub_2219A1CC8(v64, &qword_27CFB7F60, &qword_221BD6680);
    }

    goto LABEL_9;
  }

  v61 = v111;
  __swift_project_boxed_opaque_existential_0(&v109, *(&v110 + 1));
  v62 = *(v61 + 32);

  v63 = v60;
  v64 = v84;
  v62(v63, v61);
  __swift_storeEnumTagSinglePayload(v64, 0, 1, v51);
  __swift_destroy_boxed_opaque_existential_0(&v109);
  v65 = __swift_getEnumTagSinglePayload(v64, 1, v51);
  v66 = v96;
  v67 = v98;
  if (v65 == 1)
  {
    goto LABEL_7;
  }

  v68 = v90;
  (*(v90 + 32))(v104, v64, v51);
LABEL_9:
  v70 = __swift_getEnumTagSinglePayload(v57, 1, v51);
  v58 = v102;
  v52 = v103;
  if (v70 != 1)
  {
    sub_2219A1CC8(v57, &qword_27CFB7F60, &qword_221BD6680);
  }

LABEL_11:
  (*(v68 + 32))(v15 + qword_27CFDED28, v104, v51);
  v71 = v97;
  sub_221B702CC(v66, v97, &qword_27CFB7F58, &unk_221BD27E0);
  if (__swift_getEnumTagSinglePayload(v71, 1, v67) != 1)
  {
    v77 = v92;
    v78 = v91;
    (*(v92 + 32))(v91, v71, v67);
    goto LABEL_21;
  }

  sub_221B702CC(v52, &v109, qword_27CFB7A80, &unk_221BD2800);
  v72 = *(&v110 + 1);
  if (!*(&v110 + 1))
  {
    sub_2219A1CC8(&v109, qword_27CFB7A80, &unk_221BD2800);
    v75 = v85;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v67);
LABEL_17:
    sub_221BCCCF8();
    v78 = v91;
    sub_221BCCCB8();
    v79 = __swift_getEnumTagSinglePayload(v75, 1, v67);
    v77 = v92;
    if (v79 != 1)
    {
      sub_2219A1CC8(v75, &qword_27CFB7F58, &unk_221BD27E0);
    }

    goto LABEL_19;
  }

  v73 = v111;
  __swift_project_boxed_opaque_existential_0(&v109, *(&v110 + 1));
  v74 = *(v73 + 40);
  v75 = v85;
  v76 = v73;
  v71 = v97;
  v67 = v98;
  v74(v72, v76);
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v67);
  __swift_destroy_boxed_opaque_existential_0(&v109);
  if (__swift_getEnumTagSinglePayload(v75, 1, v67) == 1)
  {
    goto LABEL_17;
  }

  v77 = v92;
  v78 = v91;
  (*(v92 + 32))(v91, v75, v67);
LABEL_19:
  v80 = __swift_getEnumTagSinglePayload(v71, 1, v67);
  v48 = v101;
  if (v80 != 1)
  {
    sub_2219A1CC8(v71, &qword_27CFB7F58, &unk_221BD27E0);
  }

LABEL_21:
  (*(v77 + 32))(v15 + qword_27CFDED30, v78, v67);
  if (v48)
  {
    *(&v110 + 1) = MEMORY[0x277D837D0];
    *&v109 = v86;
    *(&v109 + 1) = v48;
    swift_beginAccess();
    sub_221BC5970(&v109, 0x746E65696C63, 0xE600000000000000);
    swift_endAccess();
  }

  sub_22198B60C(v93, v106);
  sub_22198B60C(v107, v105);
  sub_22198B60C(v95, v108);
  sub_2219A1CC8(v66, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v58, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8(v52, qword_27CFB7A80, &unk_221BD2800);
  (*(v94 + 8))(v100, v99);
  return v15;
}

uint64_t sub_221BB1720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_221BCE398();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v12 - v9);
  (*(*(a2 - 8) + 16))(&v12 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  sub_221BB1FB8(v10, a2, a3);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_221BB1860()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v3 = OUTLINED_FUNCTION_8_1(v2);
  MEMORY[0x28223BE20](v3);
  v55 = &v52 - v4;
  sub_221BCCCD8();
  OUTLINED_FUNCTION_0_7();
  v56 = v6;
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_5();
  v54 = (v7 - v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = *(v0 + qword_27CFBC760);
  if (v12)
  {
    v13 = *(v0 + qword_27CFBC760 + 8);
    sub_22198BEB8(v12, v13);

    v14 = sub_221BCCD68();
    v15 = sub_221BCDA98();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_103();
      v53 = v11;
      v17 = v16;
      v59[0] = OUTLINED_FUNCTION_105();
      *v17 = 136315394;
      v18 = sub_221BB07C4();
      v20 = sub_2219A6360(v18, v19, v59);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      v22 = v12(v21);
      v24 = sub_2219A6360(v22, v23, v59);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_221989000, v14, v15, "%s%s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      v11 = v53;
      OUTLINED_FUNCTION_23();
      sub_22198B60C(v12, v13);
    }

    else
    {

      sub_22198B60C(v12, v13);
    }
  }

  else
  {
    swift_retain_n();
    v25 = sub_221BCCD68();
    v26 = sub_221BCDA98();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_103();
      v59[0] = OUTLINED_FUNCTION_105();
      *v27 = 136315394;
      v28 = sub_221BB07C4();
      v30 = sub_2219A6360(v28, v29, v59);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;

      v31 = sub_221BCDE88();
      v33 = v32;

      v34 = sub_2219A6360(v31, v33, v59);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_221989000, v25, v26, "%sStarting %s", v27, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }

    else
    {
    }
  }

  sub_221B702CC(v1 + qword_27CFBC788, v59, &qword_27CFB7FD0, &qword_221BD2888);
  v35 = v60;
  if (v60)
  {
    v36 = v61;
    __swift_project_boxed_opaque_existential_0(v59, v60);
    (*(v36 + 16))(v35, v36);
    __swift_destroy_boxed_opaque_existential_0(v59);
  }

  else
  {
    sub_2219A1CC8(v59, &qword_27CFB7FD0, &qword_221BD2888);
  }

  v37 = *(v1 + qword_27CFBC780);
  v38 = *(v1 + qword_27CFBC780 + 16);
  v39 = v56;
  v40 = *(v56 + 16);
  v41 = v11;
  v42 = v11;
  v43 = v57;
  v40(v41, v1 + qword_27CFDED30, v57);
  v44 = sub_221BCCCF8();
  LODWORD(v53) = sub_221BCDBC8();
  result = sub_221BCDC78();
  if ((result & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((v38 & 1) == 0)
  {
    if (v37)
    {
LABEL_19:
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = sub_221BCCCC8();
      _os_signpost_emit_with_name_impl(&dword_221989000, v44, v53, v47, v37, "", v46, 2u);
      OUTLINED_FUNCTION_23();
      v39 = v56;
      v43 = v57;
LABEL_20:

      v40(v54, v42, v43);
      sub_221BCCD48();
      swift_allocObject();
      v48 = sub_221BCCD38();
      (*(v39 + 8))(v42, v43);
      *(v1 + qword_27CFBC798) = v48;

      v49 = v55;
      sub_221BCDF88();
      v50 = sub_221BCDFB8();
      __swift_storeEnumTagSinglePayload(v49, 0, 1, v50);
      v51 = qword_27CFBC7A0;
      swift_beginAccess();
      sub_2219EB60C(v49, v1 + v51);
      return swift_endAccess();
    }

    __break(1u);
  }

  if (v37 >> 32)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v37 & 0xFFFFF800) != 0xD800)
  {
    if (v37 >> 16 <= 0x10)
    {
      v37 = &v58;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_221BB1E6C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = MEMORY[0x277D84A98];
  v5 = MEMORY[0x277D84AC0];
  v6 = sub_221BCE398();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v12 - v9);
  (*(*(v3 - 8) + 16))(&v12 - v9, a1, v3, v8);
  swift_storeEnumTagMultiPayload();
  sub_221BB1FB8(v10, v4, v5);
  return (*(v7 + 8))(v10, v6);
}

void sub_221BB1FB8(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3;
  v169 = a1;
  OUTLINED_FUNCTION_0_7();
  v167 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_91_6();
  v166 = v12;
  MEMORY[0x28223BE20](v13);
  v171 = (&v152 - v14);
  sub_221BCCE38();
  OUTLINED_FUNCTION_0_7();
  v164 = v16;
  v165 = v15;
  MEMORY[0x28223BE20](v15);
  v163 = (&v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_0_7();
  v159 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v21);
  v168 = &v152 - v22;
  v160 = v23;
  v170 = a3;
  v24 = sub_221BCE398();
  OUTLINED_FUNCTION_0_7();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v152 - v28;
  v30 = sub_221BCDFB8();
  OUTLINED_FUNCTION_0_7();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_5();
  v36 = (v34 - v35);
  MEMORY[0x28223BE20](v37);
  v39 = &v152 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v41 = OUTLINED_FUNCTION_8_1(v40);
  MEMORY[0x28223BE20](v41);
  v43 = &v152 - v42;
  os_unfair_lock_lock((v4 + 32));
  if (*(v4 + 36))
  {

    os_unfair_lock_unlock((v4 + 32));
    return;
  }

  v156 = a2;
  *(v4 + 36) = 1;
  os_unfair_lock_unlock((v4 + 32));
  v44 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_221B702CC(v4 + v44, v43, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v30);
  v162 = 0;
  v161 = 0;
  v154 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (v32[4])(v39, v43, v30);
    sub_221BCDF88();
    v162 = sub_221BCDFA8();
    v161 = v46;
    v47 = v32[1];
    ++v32;
    v47(v36, v30);
    v47(v39, v30);
  }

  v48 = v156;
  if (*(v4 + qword_27CFBC798))
  {
    v173 = *(v4 + qword_27CFBC798);

    sub_221BB3198(&v173, v4);
  }

  v49 = off_27CFBC778;
  swift_beginAccess();
  v153 = v49;
  v50 = *&v49[v4];
  v51 = &unk_27CFBC000;
  v52 = v171;
  if (*(v50 + 16))
  {
    sub_221B702CC(v4 + qword_27CFBC788, &v173, &qword_27CFB7FD0, &qword_221BD2888);
    v36 = v175;
    if (v175)
    {
      v53 = v176;
      __swift_project_boxed_opaque_existential_0(&v173, v175);
      v32 = *(v53 + 32);

      v55 = v53;
      v52 = v171;
      (v32)(v54, 0x697274654D736961, 0xEA00000000007363, v36, v55);
      v51 = &unk_27CFBC000;
      v48 = v156;

      __swift_destroy_boxed_opaque_existential_0(&v173);
    }

    else
    {
      sub_2219A1CC8(&v173, &qword_27CFB7FD0, &qword_221BD2888);
    }
  }

  (*(v26 + 16))(v29, v169, v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v61 = v159;
    v62 = v168;
    v63 = v160;
    (*(v159 + 32))(v168, v29, v160);
    sub_221B702CC(v4 + v51[241], &v173, &qword_27CFB7FD0, &qword_221BD2888);
    v64 = v175;
    if (v175)
    {
      v65 = v176;
      __swift_project_boxed_opaque_existential_0(&v173, v175);
      v67 = v164;
      v66 = v165;
      v32 = v163;
      (*(v164 + 104))(v163, *MEMORY[0x277CD8AC8], v165);
      (*(v65 + 24))(v32, v64, v65);
      (*(v67 + 8))(v32, v66);
      __swift_destroy_boxed_opaque_existential_0(&v173);
    }

    else
    {
      sub_2219A1CC8(&v173, &qword_27CFB7FD0, &qword_221BD2888);
    }

    v81 = v158;
    v82 = *(v4 + qword_27CFBC768);
    v83 = *(v61 + 16);
    v84 = v157;
    if (v82)
    {
      v85 = *(v4 + qword_27CFBC768 + 8);
      v83(v157, v62, v63);
      v171 = v85;
      sub_22198BEB8(v82, v85);

      v86 = sub_221BCCD68();
      v87 = sub_221BCDA98();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = OUTLINED_FUNCTION_103();
        v170 = OUTLINED_FUNCTION_105();
        v173 = v170;
        *v88 = 136315394;
        LODWORD(v169) = v87;
        v89 = sub_221BB07C4();
        v91 = v63;
        v92 = OUTLINED_FUNCTION_102(v89, v90);

        *(v88 + 4) = v92;
        *(v88 + 12) = 2080;
        v93 = v82(v84);
        v95 = v94;
        v96 = *(v61 + 8);
        v96(v84, v91);
        v97 = sub_2219A6360(v93, v95, &v173);

        *(v88 + 14) = v97;
        _os_log_impl(&dword_221989000, v86, v169, "%s%s", v88, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_23();

        sub_22198B60C(v82, v171);
        v96(v168, v91);
        goto LABEL_45;
      }

      sub_22198B60C(v82, v171);
      v121 = *(v61 + 8);
      v121(v84, v63);
    }

    else
    {
      v83(v158, v62, v63);

      v109 = sub_221BCCD68();
      v110 = sub_221BCDA98();

      if (os_log_type_enabled(v109, v110))
      {
        OUTLINED_FUNCTION_103();
        v171 = OUTLINED_FUNCTION_6_29();
        v173 = v171;
        *v81 = 136315394;
        v111 = sub_221BB07C4();
        OUTLINED_FUNCTION_102(v111, v112);
        OUTLINED_FUNCTION_5_1();
        *(v81 + 4) = v84;
        *(v81 + 12) = 2080;
        v172 = *(v4 + qword_27CFDED20 + 17);
        v113 = sub_221A1DE50(v32, v63);
        v115 = v114;
        v56 = *(v61 + 8);
        (v56)(v32, v63);
        v116 = sub_2219A6360(v113, v115, &v173);

        *(v81 + 14) = v116;
        OUTLINED_FUNCTION_51_0(&dword_221989000, v117, v118, "%sCompleted with %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_23();

        v119 = v168;
LABEL_37:
        (v56)(v119, v63);
        goto LABEL_45;
      }

      v121 = *(v61 + 8);
      v121(v81, v63);
    }

    v129 = v62;
    v130 = v63;
    goto LABEL_41;
  }

  v56 = v167;
  v57 = v167 + 32;
  v168 = *(v167 + 32);
  (v168)(v52, v29, v48);
  sub_221B702CC(v4 + v51[241], &v173, &qword_27CFB7FD0, &qword_221BD2888);
  v58 = v175;
  if (v175)
  {
    v59 = v176;
    v36 = __swift_project_boxed_opaque_existential_0(&v173, v175);
    v60 = v163;
    sub_221BB3474(v48, v163);
    (*(v59 + 24))(v60, v58, v59);
    (*(v164 + 8))(v60, v165);
    __swift_destroy_boxed_opaque_existential_0(&v173);
  }

  else
  {
    sub_2219A1CC8(&v173, &qword_27CFB7FD0, &qword_221BD2888);
  }

  v68 = v166;
  v169 = *(v4 + qword_27CFBC770);
  if (!v169)
  {
    if (*(v4 + qword_27CFDED20 + 17))
    {
      v98 = OUTLINED_FUNCTION_14_23();
      v99(v98);

      v100 = sub_221BCCD68();
      v101 = sub_221BCDA78();

      if (os_log_type_enabled(v100, v101))
      {
        OUTLINED_FUNCTION_103();
        v169 = OUTLINED_FUNCTION_6_29();
        v173 = v169;
        *v57 = 136315395;
        v102 = sub_221BB07C4();
        OUTLINED_FUNCTION_102(v102, v103);
        OUTLINED_FUNCTION_5_1();
        *(v57 + 4) = v36;
        *(v57 + 12) = 2085;
        v63 = v48;
        sub_221BCE288();
        v104 = OUTLINED_FUNCTION_8_22();
        (v56)(v104);
        v105 = sub_2219A6360(v48, v36, &v173);

        *(v57 + 14) = v105;
        v108 = "%sFailed with %{sensitive}s";
LABEL_36:
        OUTLINED_FUNCTION_51_0(&dword_221989000, v106, v107, v108);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_23();

        v119 = v171;
        goto LABEL_37;
      }
    }

    else
    {
      v122 = OUTLINED_FUNCTION_14_23();
      v123(v122);

      v100 = sub_221BCCD68();
      v124 = sub_221BCDA78();

      if (os_log_type_enabled(v100, v124))
      {
        OUTLINED_FUNCTION_103();
        v63 = v48;
        v169 = OUTLINED_FUNCTION_6_29();
        v173 = v169;
        *v57 = 136315395;
        v125 = sub_221BB07C4();
        OUTLINED_FUNCTION_102(v125, v126);
        OUTLINED_FUNCTION_5_1();
        *(v57 + 4) = v36;
        *(v57 + 12) = 2081;
        sub_221BCE288();
        v127 = OUTLINED_FUNCTION_8_22();
        (v56)(v127);
        v128 = sub_2219A6360(v48, v36, &v173);

        *(v57 + 14) = v128;
        v108 = "%sFailed with %{private}s";
        goto LABEL_36;
      }
    }

    v121 = *(v56 + 8);
    v121(v57, v48);
    v129 = v52;
    v130 = v48;
LABEL_41:
    v121(v129, v130);
    goto LABEL_45;
  }

  v69 = v56;
  v70 = *(v4 + qword_27CFBC770 + 8);
  v164 = *(v69 + 16);
  (v164)(v166, v52, v48);

  sub_22198BEB8(v169, v70);
  v71 = sub_221BCCD68();
  v72 = sub_221BCDA78();

  LODWORD(v165) = v72;
  if (os_log_type_enabled(v71, v72))
  {
    v160 = v71;
    v163 = v70;
    v73 = v48;
    v74 = OUTLINED_FUNCTION_103();
    v159 = OUTLINED_FUNCTION_105();
    v173 = v159;
    *v74 = 136315394;
    v75 = sub_221BB07C4();
    OUTLINED_FUNCTION_102(v75, v76);
    OUTLINED_FUNCTION_5_1();
    *(v74 + 4) = v69;
    *(v74 + 12) = 2080;
    v77 = v155;
    (v164)();
    v78 = sub_221BCE198();
    if (v78)
    {
      v79 = v78;
      v80 = v167;
      (*(v167 + 8))(v77, v73);
    }

    else
    {
      v79 = swift_allocError();
      (v168)(v131, v77, v73);
      v80 = v167;
    }

    v132 = v163;
    v133 = v169;
    v134 = v169(v79);
    v136 = v135;

    v137 = *(v80 + 8);
    v137(v166, v73);
    v138 = sub_2219A6360(v134, v136, &v173);

    *(v74 + 14) = v138;
    v139 = v160;
    _os_log_impl(&dword_221989000, v160, v165, "%s %s", v74, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();

    sub_22198B60C(v133, v132);
    v137(v171, v73);
  }

  else
  {

    sub_22198B60C(v169, v70);
    v120 = *(v69 + 8);
    v120(v68, v48);
    v120(v52, v48);
  }

LABEL_45:
  v140 = v154;
  v141 = v162;
  v142 = v161;
  sub_221BB36E0(v162, v161, v154 == 1);
  if (v140 != 1 && (*(v4 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v143 = *(v4 + qword_27CFBC780);
    v170 = *(v4 + qword_27CFBC780 + 8);
    v171 = v143;
    v144 = *(v4 + qword_27CFBC780 + 16);
    v145 = sub_221BB0AE8();
    v147 = v146;
    v173 = 0;
    v174 = 0xE000000000000000;
    sub_221BCDE68();
    v148 = sub_221BB07C4();
    MEMORY[0x223DA31F0](v148);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v149 = v173;
    v150 = v174;
    v151 = *&v153[v4];

    sub_221BB52B0(v171, v170, v144, v145, v147, v141, v142, v149, v150, 1, 1, v151);
  }
}

uint64_t sub_221BB3198(uint64_t a1, uint64_t a2)
{
  v25 = sub_221BCCD18();
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v26 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_221BCCCD8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + qword_27CFBC780);
  v10 = *(a2 + qword_27CFBC780 + 16);
  v11 = sub_221BCCCF8();
  sub_221BCCD28();
  v24 = sub_221BCDBB8();
  result = sub_221BCDC78();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v6 + 8))(v8, v5);
  }

  v21 = v11;
  v22 = v6;
  v23 = v2;
  if ((v10 & 1) == 0)
  {
    if (v9)
    {
      v14 = v26;
      v13 = v27;
LABEL_9:

      sub_221BCCD58();

      v15 = v25;
      v16 = (*(v13 + 88))(v14, v25);
      v11 = v21;
      if (v16 == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v14, v15);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_221BCCCC8();
      _os_signpost_emit_with_name_impl(&dword_221989000, v11, v24, v19, v9, v17, v18, 2u);
      MEMORY[0x223DA4C00](v18, -1, -1);
      v6 = v22;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v9 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v9 & 0xFFFFF800) != 0xD800)
  {
    v14 = v26;
    v13 = v27;
    if (v9 >> 16 <= 0x10)
    {
      v9 = &v28;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_221BB3474@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = *(v7 + 16);
  v12(&v28[-1] - v13, v4, a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
    (v12)(v9, v4, a1);
    v14 = sub_221BCE198();
    if (v14)
    {
      v15 = v14;
      (*(v7 + 8))(v9, a1);
    }

    else
    {
      v15 = swift_allocError();
      (*(v7 + 32))(v17, v9, a1);
    }

    v18 = sub_221BCC328();

    v19 = [v18 domain];
    v20 = sub_221BCD388();
    v22 = v21;

    v23 = [v18 code];
    *a3 = v20;
    a3[1] = v22;
    a3[2] = v23;
    v16 = MEMORY[0x277CD8AB8];
  }

  else
  {
    v16 = MEMORY[0x277CD8AC0];
  }

  v24 = *v16;
  v25 = sub_221BCCE38();
  return (*(*(v25 - 8) + 104))(a3, v24, v25);
}

void sub_221BB36E0(uint64_t result, uint64_t a2, char a3)
{
  if ((*(v3 + qword_27CFBC790 + 8) & 1) == 0)
  {
    v5 = *(v3 + qword_27CFBC790);
    v6 = (v3 + qword_27CFDED20);
    v7 = *(v3 + qword_27CFDED20 + 16);
    if (v7 == 2 || (v7 & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
      inited = swift_initStackObject();
      v9 = inited;
      *(inited + 16) = xmmword_221BD26F0;
      *(inited + 32) = 0x6F6974617265706FLL;
      *(inited + 40) = 0xE90000000000006ELL;
      v10 = MEMORY[0x277D83B88];
      *(inited + 48) = v5;
      *(inited + 72) = v10;
      *(inited + 80) = 0x746E65696C63;
      *(inited + 88) = 0xE600000000000000;
      v11 = *v6;
      v12 = v6[1];
      v13 = MEMORY[0x277D837D0];
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v11 = 0x6E776F6E6B6E75;
        v14 = 0xE700000000000000;
      }

      *(inited + 96) = v11;
      *(inited + 104) = v14;
      *(inited + 120) = v13;
      *(inited + 128) = 0x746567726174;
      *(inited + 136) = 0xE600000000000000;
      v15 = off_27CFBC778;
      swift_beginAccess();
      v16 = *&v15[v3];

      sub_221B9C448(7368801, v16, v28, 0xE300000000000000);
      swift_endAccess();
      if (v29)
      {
        sub_2219A1AB0(v28, (v9 + 144));
      }

      else
      {
        *(v9 + 168) = v13;
        *(v9 + 144) = 0x6E776F6E6B6E75;
        *(v9 + 152) = 0xE700000000000000;
      }

      *(v9 + 176) = 0x6E6F697461727564;
      *(v9 + 184) = 0xE800000000000000;
      if (a3)
      {
        *(v9 + 216) = MEMORY[0x277D83B88];
        *(v9 + 192) = -1;
      }

      else
      {
        v17 = sub_221BCE3F8();
        v29 = MEMORY[0x277D839F8];
        v28[0] = v18 * 1.0e-18 + v17;
        sub_2219A1AB0(v28, (v9 + 192));
      }

      v19 = MEMORY[0x277D837D0];
      v20 = sub_221BCD2C8();
      swift_beginAccess();
      sub_221B9C448(0x6E6F69746361, *&v15[v3], &v26, 0xE600000000000000);
      if (v27)
      {
        sub_2219A1AB0(&v26, v28);
        swift_endAccess();
        sub_22199B650(v28, &v26);
        swift_isUniquelyReferenced_nonNull_native();
        *&v24 = v20;
        sub_221B9F8D4(&v26, 1701667182, 0xE400000000000000);
        __swift_destroy_boxed_opaque_existential_0(v28);
      }

      else
      {
        sub_2219A1CC8(&v26, &qword_27CFB7FF8, &qword_221BE6A00);
        swift_endAccess();
      }

      swift_beginAccess();
      sub_221B9C448(0x7954797469746E65, *&v15[v3], &v26, 0xEA00000000006570);
      if (v27)
      {
        sub_2219A1AB0(&v26, v28);
        swift_endAccess();
        swift_beginAccess();
        sub_221B9C448(1684957547, *&v15[v3], &v24, 0xE400000000000000);
        if (v25)
        {
          sub_2219A1AB0(&v24, &v26);
          swift_endAccess();
          *&v24 = 0;
          *(&v24 + 1) = 0xE000000000000000;
          sub_221BCE018();
          MEMORY[0x223DA31F0](46, 0xE100000000000000);
          sub_221BCE018();
          v25 = v19;
          sub_2219A1AB0(&v24, v23);
          swift_isUniquelyReferenced_nonNull_native();
          sub_221B9F8D4(v23, 1701667182, 0xE400000000000000);
          __swift_destroy_boxed_opaque_existential_0(&v26);
        }

        else
        {
          sub_2219A1CC8(&v24, &qword_27CFB7FF8, &qword_221BE6A00);
          swift_endAccess();
        }

        __swift_destroy_boxed_opaque_existential_0(v28);
      }

      else
      {
        sub_2219A1CC8(&v26, &qword_27CFB7FF8, &qword_221BE6A00);
        swift_endAccess();
      }

      if (qword_27CFB7340 != -1)
      {
        swift_once();
      }

      sub_221BB4DB0(v20);
      v22 = v21;

      sub_221BB4CFC(v22);
    }
  }
}

uint64_t sub_221BB3BCC()
{

  v1 = qword_27CFBC758;
  sub_221BCCD88();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 8))(v0 + v1);
  sub_22198B60C(*(v0 + qword_27CFBC760), *(v0 + qword_27CFBC760 + 8));
  sub_22198B60C(*(v0 + qword_27CFBC768), *(v0 + qword_27CFBC768 + 8));
  sub_22198B60C(*(v0 + qword_27CFBC770), *(v0 + qword_27CFBC770 + 8));

  sub_2219A1CC8(v0 + qword_27CFBC788, &qword_27CFB7FD0, &qword_221BD2888);

  sub_2219A1CC8(v0 + qword_27CFBC7A0, &qword_27CFB7FC8, &qword_221BD2880);

  v3 = qword_27CFDED28;
  sub_221BCCD08();
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 8))(v0 + v3);
  v5 = qword_27CFDED30;
  sub_221BCCCD8();
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t sub_221BB3D60()
{
  sub_221BB3BCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

double sub_221BB3E00@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1 + qword_27CFDED20;
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 17);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 17) = v2;

  return result;
}

uint64_t sub_221BB3E6C@<X0>(uint64_t *a1@<X2>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  a2(0);
  OUTLINED_FUNCTION_2_1();
  v9 = *(v8 + 16);

  return v9(a3, v5 + v6, v7);
}

uint64_t sub_221BB3EE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_221BB0AE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_221BB3F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221BB3F30, 0, 0);
}

uint64_t sub_221BB3F30()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[5];
  sub_221BB1860();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_221BB4028;
  v3 = v0[3];
  v4 = v0[4];

  return v6(v3, v4);
}

uint64_t sub_221BB4028()
{
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_221BB4194;
  }

  else
  {
    v5 = sub_221BB4134;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221BB4134()
{
  sub_221BB1E6C(*(v0 + 24));
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221BB4194()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 16) = *(v0 + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  sub_221BB1720(v0 + 16, v1, MEMORY[0x277D84950]);
  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221BB4234()
{
  v1 = *v0;
  sub_221BB422C();
  return v1;
}

_BYTE *storeEnumTagSinglePayload for Instrumentation(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_221BB4374(uint64_t a1)
{
  sub_221BCCD88();
  if (v1 <= 0x3F)
  {
    sub_221BB4534(319);
    if (v2 <= 0x3F)
    {
      sub_221BCCD08();
      if (v3 <= 0x3F)
      {
        sub_221BCCCD8();
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void sub_221BB4534(uint64_t a1)
{
  if (!qword_27CFBC830)
  {
    sub_221BCDFB8();
    v1 = sub_221BCDC98();
    if (!v2)
    {
      atomic_store(v1, &qword_27CFBC830);
    }
  }
}

uint64_t sub_221BB4598()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221BA1DF8;

  return sub_221BB3F0C(v3, v4, v5, v6);
}

uint64_t sub_221BB4648(unint64_t a1)
{
  result = sub_221BB4668(a1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221BB4668(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_2219A69A4();
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    return MEMORY[0x223DA3BF0](v3, a1);
  }

  result = sub_221BCDDA8();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_221BB46FC(uint64_t a1)
{
  result = sub_2219A69A0();
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x223DA3BF0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    sub_221BCCE58();
  }

  return result;
}

uint64_t sub_221BB47EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_221BB4668(a4);
  if (result)
  {
    sub_221BCCE18();
  }

  return result;
}

uint64_t sub_221BB4884(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_221BB66E4(a1, a2, a3, v30);
  v28[2] = v30[0];
  v28[3] = v30[1];
  v28[4] = v30[2];
  v29 = v31;

  while (1)
  {
    sub_221BB6720(&v27);
    v7 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      sub_221A5E4D8();
    }

    v8 = v27;
    sub_2219A1AB0(v28, v26);
    v9 = *a5;
    v11 = sub_221B9E9B8(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7768, &qword_221BE9980);
        sub_221BCE038();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_221BB59C4();
      v15 = sub_221B9E9B8(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v11 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_22199B650(v26, v25);
        __swift_destroy_boxed_opaque_existential_0(v26);

        v18 = (v17[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_0(v18);
        sub_2219A1AB0(v25, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_2219A1AB0(v26, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v19[2] = v23;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_221BCE228();
  __break(1u);
  return result;
}

uint64_t sub_221BB4AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_221BB4884(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_29()
{

  return swift_slowAlloc();
}

uint64_t sub_221BB4BBC()
{
  v1 = v0;
  v2 = sub_221BCD358();
  v3 = sub_221BCD358();
  v4 = PPSCreateTelemetryIdentifier();

  if (!v4)
  {
    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v5 = sub_221BCCD88();
    __swift_project_value_buffer(v5, qword_27CFDEDF8);
    v6 = sub_221BCCD68();
    v7 = sub_221BCDA78();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_221989000, v6, v7, "Unable to create PPSCreateTelemetryIdentifier", v8, 2u);
      MEMORY[0x223DA4C00](v8, -1, -1);
    }

    v4 = 0;
  }

  *(v1 + 16) = v4;
  return v1;
}

void sub_221BB4CFC(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v2 = sub_221BCD278();
    PPSSendTelemetry();
  }
}

void sub_221BB4DB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC848, &qword_221BE9A10);
    v2 = sub_221BCE088();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_22199B650(*(a1 + 56) + 32 * v10, v32);
    *&v31 = v13;
    *(&v31 + 1) = v12;
    v29[2] = v31;
    v30[0] = v32[0];
    v30[1] = v32[1];
    v29[0] = v31;

    swift_dynamicCast();
    sub_2219A1AB0(v30, v24);
    v25 = v21;
    v26 = v22;
    v27 = v23;
    sub_2219A1AB0(v24, v28);
    v21 = v25;
    v22 = v26;
    v23 = v27;
    sub_2219A1AB0(v28, v29);
    v14 = sub_221BCDE08() & ~(-1 << *(v2 + 32));
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_0_64();
      while (1)
      {
        OUTLINED_FUNCTION_9_27();
        if (v19)
        {
          if (v17)
          {
            goto LABEL_26;
          }
        }

        if (v16 == v18)
        {
          v16 = 0;
        }

        if (*(v7 + 8 * v16) != -1)
        {
          OUTLINED_FUNCTION_2_39();
          goto LABEL_22;
        }
      }
    }

    OUTLINED_FUNCTION_3_35();
LABEL_22:
    v5 &= v5 - 1;
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v20 = *(v2 + 48) + 40 * v15;
    *v20 = v21;
    *(v20 + 16) = v22;
    *(v20 + 32) = v23;
    sub_2219A1AB0(v29, (*(v2 + 56) + 32 * v15));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_221BB504C(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC870, &qword_221BE9A38);
    v1 = sub_221BCE088();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_1_53();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  v7 = v1 + 8;

  v8 = 0;
  if (!v4)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v10 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(a1[6] + v10);
    v22 = *(a1[7] + v10);
    v12 = v22;
    type metadata accessor for FileProtectionType(0);
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_2219A1AB0((v23 + 8), v21);
    sub_2219A1AB0(v21, v23);
    sub_221BCD388();
    sub_221BCE308();
    sub_221BCD448();
    sub_221BCE358();

    OUTLINED_FUNCTION_13_25();
    if (v15)
    {
      OUTLINED_FUNCTION_0_64();
      while (1)
      {
        OUTLINED_FUNCTION_9_27();
        if (v15)
        {
          if (v18)
          {
            goto LABEL_23;
          }
        }

        if (v17 == v19)
        {
          v17 = 0;
        }

        if (v7[v17] != -1)
        {
          OUTLINED_FUNCTION_2_39();
          goto LABEL_19;
        }
      }
    }

    OUTLINED_FUNCTION_3_35();
LABEL_19:
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v16) = v13;
    sub_2219A1AB0(v23, (v1[7] + 32 * v16));
    ++v1[2];
  }

  while (v4);
LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v4 = a1[v9 + 8];
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_221BB52B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, char a10, char a11, uint64_t a12)
{
  v47[23] = *MEMORY[0x277D85DE8];
  if (qword_27CFB7388 != -1)
  {
    swift_once();
  }

  v13 = sub_221BCCD88();
  __swift_project_value_buffer(v13, qword_27CFDEDF8);

  v14 = sub_221BCCD68();
  v15 = sub_221BCDA78();

  v16 = "FileProtectionType";
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v47[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2219A6360(a8, a9, v47);
    _os_log_impl(&dword_221989000, v14, v15, "Requesting tailspin: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_23();
    v16 = "FileProtectionType";
    OUTLINED_FUNCTION_23();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD6DE0;
  strcpy((inited + 32), "activityName");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v20 = MEMORY[0x277D840E8];
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  *(inited + 72) = v20;
  *(inited + 80) = 0x7974697669746361;
  v21 = MEMORY[0x277D837D0];
  *(inited + 88) = 0xEA00000000006449;
  *(inited + 96) = a4;
  *(inited + 104) = a5;
  *(inited + 120) = v21;
  strcpy((inited + 128), "durationInMs");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;

  v22 = sub_221BCE3F8();
  *(inited + 168) = MEMORY[0x277D839F8];
  *(inited + 144) = v22 * 1000.0 + v23 * 1.0e-15;
  v24 = sub_221BCD2C8();

  v26 = sub_221BB5788(v25, v24);
  v27 = sub_221BCD358();
  v28 = sub_221BCD358();
  v29 = sub_221BCD358();
  v30 = sub_221BB5BF4(v26);

  sub_221BB4DB0(v30);

  v31 = sub_221BCD278();

  v47[0] = 0;
  DRTailspinRequest();

  if (v47[0])
  {
    v32 = v47[0];
    v33 = sub_221BCCD68();
    v34 = sub_221BCDA78();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47[0] = v36;
      *v35 = *(v16 + 254);
      v37 = [v32 description];
      v38 = sub_221BCD388();
      v40 = v39;

      v41 = sub_2219A6360(v38, v40, v47);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_221989000, v33, v34, "Failed to emit tailspin: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }

    else
    {
    }
  }
}

uint64_t sub_221BB5788(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_221BB4884(a1, sub_221BB66AC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_221BB580C()
{
  OUTLINED_FUNCTION_6_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77B0, &qword_221BD0D10);
  v4 = OUTLINED_FUNCTION_8_23();
  if (!*(v1 + 16))
  {
LABEL_29:

    *v0 = v4;
    return;
  }

  v24 = v1;
  v5 = 0;
  v6 = (v1 + 64);
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_12_17();
  if (!v2)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v7;
      if (v6[v5])
      {
        OUTLINED_FUNCTION_7_24();
        v2 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v25)
    {
      OUTLINED_FUNCTION_14_24();
      if (v22 != v23)
      {
        *v6 = -1 << v21;
      }

      else
      {
        OUTLINED_FUNCTION_15_20(v21);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_11_25();
LABEL_9:
    OUTLINED_FUNCTION_10_22();
    v12 = *(v11 + 8 * v10);
    if ((v25 & 1) == 0)
    {
      v13 = v12;
    }

    sub_221BCE308();
    sub_221BCD448();
    sub_221BCE358();
    OUTLINED_FUNCTION_5_30();
    OUTLINED_FUNCTION_13_25();
    if (v14)
    {
      break;
    }

    OUTLINED_FUNCTION_3_35();
LABEL_21:
    OUTLINED_FUNCTION_4_32(v15);
    *(v20 + 8 * v19) = v12;
    ++*(v4 + 16);
    v1 = v24;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_64();
  while (1)
  {
    OUTLINED_FUNCTION_9_27();
    if (v14)
    {
      if (v17)
      {
        break;
      }
    }

    if (v16 == v18)
    {
      v16 = 0;
    }

    if (*(v3 + 8 * v16) != -1)
    {
      OUTLINED_FUNCTION_2_39();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_221BB59C4()
{
  OUTLINED_FUNCTION_6_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC860, &qword_221BE9A28);
  v4 = OUTLINED_FUNCTION_8_23();
  if (!*(v1 + 16))
  {
LABEL_30:

    *v0 = v4;
    return;
  }

  v5 = 0;
  v6 = (v1 + 64);
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_12_17();
  if (!v2)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v7;
      if (v6[v5])
      {
        OUTLINED_FUNCTION_7_24();
        v2 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v23)
    {
      OUTLINED_FUNCTION_14_24();
      if (v21 != v22)
      {
        *v6 = -1 << v20;
      }

      else
      {
        OUTLINED_FUNCTION_15_20(v20);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_11_25();
LABEL_9:
    OUTLINED_FUNCTION_10_22();
    v12 = (v11 + 32 * v10);
    if (v23)
    {
      sub_2219A1AB0(v12, v24);
    }

    else
    {
      sub_22199B650(v12, v24);
    }

    sub_221BCE308();
    sub_221BCD448();
    sub_221BCE358();
    OUTLINED_FUNCTION_5_30();
    OUTLINED_FUNCTION_13_25();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_3_35();
LABEL_22:
    OUTLINED_FUNCTION_4_32(v14);
    sub_2219A1AB0(v24, (v19 + 32 * v18));
    ++*(v4 + 16);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_64();
  while (1)
  {
    OUTLINED_FUNCTION_9_27();
    if (v13)
    {
      if (v16)
      {
        break;
      }
    }

    if (v15 == v17)
    {
      v15 = 0;
    }

    if (*(v3 + 8 * v15) != -1)
    {
      OUTLINED_FUNCTION_2_39();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_221BB5B90(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_221BD04D0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t *sub_221BB5BF4(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_221BB604C(v8, v4, v2);
      MEMORY[0x223DA4C00](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_221BB5B90(0, v4, v5);
  v6 = sub_221BB5D58(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_221BB5D58(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    sub_22199B650(*(a3 + 56) + 32 * v13, v22);
    sub_22199B650(v22, v21);

    if (swift_dynamicCast())
    {

LABEL_23:
      __swift_destroy_boxed_opaque_existential_0(v22);

LABEL_24:
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_221BB6424(v19, a2, v23, a3);
      }
    }

    else
    {
      sub_22199B650(v22, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      if (swift_dynamicCast())
      {
        v14 = *(v20 + 16);

        if (v14)
        {
          goto LABEL_23;
        }
      }

      sub_22199B650(v22, v21);
      if (swift_dynamicCast())
      {
        goto LABEL_23;
      }

      sub_22199B650(v22, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC850, &qword_221BE9A18);
      if (swift_dynamicCast())
      {
        v15 = *(v20 + 16);

        if (v15)
        {
          goto LABEL_23;
        }
      }

      sub_22199B650(v22, v21);
      if (swift_dynamicCast())
      {
        goto LABEL_23;
      }

      sub_22199B650(v22, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC858, &qword_221BE9A20);
      if (swift_dynamicCast())
      {
        v16 = *(v20 + 16);

        __swift_destroy_boxed_opaque_existential_0(v22);

        if (v16)
        {
          goto LABEL_24;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v22);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_221BB6424(v19, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_221BB604C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_221BB5D58(v5, a2, a3);

    return v6;
  }

  return result;
}

void sub_221BB60EC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v49 = sub_221BCC558();
  v12 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v42 = v39 - v15;
  if (a3)
  {
    if (a4[2] == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v47 = sub_221BCE088();
      if (a2 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *a1;
      }

      v17 = 0;
      v39[1] = v12 + 16;
      v40 = a1;
      v46 = v12 + 32;
      v18 = v47 + 64;
      v39[0] = a4;
      v41 = v12;
      v19 = v49;
      while (v16)
      {
        v20 = __clz(__rbit64(v16));
        v43 = (v16 - 1) & v16;
LABEL_16:
        v24 = v20 | (v17 << 6);
        v25 = a4[6];
        v45 = *(v12 + 72);
        v26 = v42;
        (*(v12 + 16))(v42, v25 + v45 * v24, v19);
        v27 = *(a4[7] + 8 * v24);
        v44 = *(v12 + 32);
        v44(v48, v26, v19);
        sub_2219ACE08();
        v28 = v27;
        sub_221BCD308();
        OUTLINED_FUNCTION_5_30();
        OUTLINED_FUNCTION_13_25();
        if (v31)
        {
          OUTLINED_FUNCTION_0_64();
          a1 = v40;
          v12 = v41;
          while (1)
          {
            OUTLINED_FUNCTION_9_27();
            if (v31)
            {
              if (v34)
              {
                goto LABEL_30;
              }
            }

            if (v33 == v35)
            {
              v33 = 0;
            }

            v36 = *(v18 + 8 * v33);
            if (v36 != -1)
            {
              v32 = __clz(__rbit64(~v36)) + (v33 << 6);
              goto LABEL_26;
            }
          }
        }

        v32 = __clz(__rbit64(v30)) | v29 & 0x7FFFFFFFFFFFFFC0;
        a1 = v40;
        v12 = v41;
LABEL_26:
        *(v18 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        v37 = v47;
        v44((*(v47 + 48) + v32 * v45), v48, v49);
        *(*(v37 + 56) + 8 * v32) = v28;
        ++*(v37 + 16);
        if (__OFSUB__(a3--, 1))
        {
          goto LABEL_31;
        }

        a4 = v39[0];
        v16 = v43;
        if (!a3)
        {
          return;
        }
      }

      v21 = v17;
      while (1)
      {
        v17 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v17 >= a2)
        {
          return;
        }

        ++v21;
        if (a1[v17])
        {
          OUTLINED_FUNCTION_7_24();
          v43 = v23 & v22;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

uint64_t sub_221BB6424(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC860, &qword_221BE9A28);
  result = sub_221BCE088();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_22199B650(v17 + 32 * v16, v33);
    sub_2219A1AB0(v33, v32);
    sub_221BCE308();

    sub_221BCD448();
    result = sub_221BCE358();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_2219A1AB0(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_221BB666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22199B650(a4, a1);

  return a2;
}

uint64_t sub_221BB66AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_221BB666C((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_221BB66E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_221BB6720(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_22199B650(*(v3 + 56) + 32 * v10, v17);
    *&v18 = v13;
    *(&v18 + 1) = v12;
    sub_2219A1AB0(v17, &v19);

    v14 = *(&v18 + 1);
    v15 = v18;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v14)
    {
      v16 = v1[5];
      *&v17[0] = v15;
      *(&v17[0] + 1) = v14;
      v17[1] = v19;
      v17[2] = v20;
      v16(v17);
      sub_221BB6860(v17);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_221BB6860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC868, &qword_221BE9A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_4_32(unint64_t a1@<X8>)
{
  *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v1 + 48) + 16 * a1);
  *v5 = v2;
  v5[1] = v3;
}

uint64_t OUTLINED_FUNCTION_8_23()
{

  return MEMORY[0x2821FD7D8](v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_15_20@<X0>(uint64_t a1@<X8>)
{

  return sub_221BB5B90(0, (a1 + 63) >> 6, v1);
}

uint64_t sub_221BB6A40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  v20[0] = a2;
  v20[1] = a3;
  v13 = *a1;
  if (*(*a1 + 16) && (v14 = sub_221B9E9B8(a2, a3), (v15 & 1) != 0))
  {
    a4 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    (*(a4 + 16))(&v19, v20);
    if (!v6)
    {
      a4 = v19;
      if (v19)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *a1;
        a5(a4, a2, a3, isUniquelyReferenced_nonNull_native);

        *a1 = v18;
      }

      else
      {

        a6(a2, a3);
      }
    }
  }

  return a4;
}

uint64_t sub_221BB6B80()
{
  if (qword_27CFB7348 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDED38;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7710, &qword_221BD0C90);
  v6 = OUTLINED_FUNCTION_10_23(v4, v5, v4);
  *(v0 + 16) = 0;
  *(v0 + 24) = v6;
  *(v0 + 32) = sub_221BB7EC0;
  *(v0 + 40) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v8 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7700, &qword_221BD0C80);
  v11 = OUTLINED_FUNCTION_10_23(v9, v10, v9);
  *(v0 + 48) = 0;
  *(v0 + 56) = v11;
  *(v0 + 64) = sub_221BB7EDC;
  *(v0 + 72) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  v13 = v8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76F0, &unk_221BD0C70);
  v16 = OUTLINED_FUNCTION_10_23(v14, v15, v14);
  *(v0 + 80) = 0;
  *(v0 + 88) = v16;
  *(v0 + 96) = sub_221BB7EF8;
  *(v0 + 104) = v12;
  *(v0 + 112) = v13;
  return v0;
}

uint64_t sub_221BB6D18@<X0>(void *a2@<X1>, void *a3@<X8>)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = MEMORY[0x277D84F98];
  v5 = sub_221BCD358();
  v6 = swift_allocObject();
  *(v6 + 16) = v15;
  v7 = swift_allocObject();
  v7[2] = sub_221BB7FB4;
  v7[3] = v6;
  v14[4] = sub_221BB7FEC;
  v14[5] = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_221BB7FF8;
  v14[3] = &block_descriptor_44;
  v8 = _Block_copy(v14);

  v14[0] = 0;
  v9 = [a2 enumerateActionsForBundleIdentifier:v5 usingBlock:v8 error:v14];
  _Block_release(v8);

  v10 = v14[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v9)
  {
    v12 = v15[0];

    *a3 = v12;
  }

  else
  {
    sub_221BCC338();

    swift_willThrow();
  }

  return result;
}

uint64_t sub_221BB6F24@<X0>(void *a2@<X1>, void *a3@<X8>)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = MEMORY[0x277D84F98];
  v5 = sub_221BCD358();
  v6 = swift_allocObject();
  *(v6 + 16) = v15;
  v7 = swift_allocObject();
  v7[2] = sub_221BB7F84;
  v7[3] = v6;
  v14[4] = sub_221BB7FEC;
  v14[5] = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_221BB7FF8;
  v14[3] = &block_descriptor_35;
  v8 = _Block_copy(v14);

  v14[0] = 0;
  v9 = [a2 enumerateEntitiesForBundleIdentifier:v5 usingBlock:v8 error:v14];
  _Block_release(v8);

  v10 = v14[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v9)
  {
    v12 = v15[0];

    *a3 = v12;
  }

  else
  {
    sub_221BCC338();

    swift_willThrow();
  }

  return result;
}

uint64_t sub_221BB7130@<X0>(void *a2@<X1>, void *a3@<X8>)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = MEMORY[0x277D84F98];
  v5 = sub_221BCD358();
  v6 = swift_allocObject();
  *(v6 + 16) = v15;
  v7 = swift_allocObject();
  v7[2] = sub_221BB7F14;
  v7[3] = v6;
  v14[4] = sub_221BB7F44;
  v14[5] = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_221BB7FF8;
  v14[3] = &block_descriptor_14;
  v8 = _Block_copy(v14);

  v14[0] = 0;
  v9 = [a2 enumerateQueriesForBundleIdentifier:v5 usingBlock:v8 error:v14];
  _Block_release(v8);

  v10 = v14[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v9)
  {
    v12 = v15[0];

    *a3 = v12;
  }

  else
  {
    sub_221BCC338();

    swift_willThrow();
  }

  return result;
}

uint64_t sub_221BB733C(void *a1, uint64_t a2, uint64_t *a3, void (*a4)(id, uint64_t, uint64_t, uint64_t))
{
  v7 = [a1 identifier];
  v8 = sub_221BCD388();
  v10 = v9;

  v11 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *a3;
  a4(v11, v8, v10, isUniquelyReferenced_nonNull_native);
  *a3 = v14;
}

uint64_t sub_221BB73F4()
{
  OUTLINED_FUNCTION_1_54();
  os_unfair_lock_lock((v0 + 16));
  v7 = OUTLINED_FUNCTION_11_26((v0 + 24), v5, v6, v0 + 16, sub_221B9FA00, sub_2219A05C8);
  os_unfair_lock_unlock((v0 + 16));
  if (!v1)
  {
    if (!v7 || (OUTLINED_FUNCTION_9_28(), v4 = sub_221BA1254(), , !v4))
    {
      v9 = OUTLINED_FUNCTION_5_31();
      if (v9)
      {
        v12 = sub_2219ACADC(v9, v10, v11);
        v13 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v12);
        OUTLINED_FUNCTION_7_25(v13, v14);
        *(v15 + 16) = v3;
        *(v15 + 24) = v2;
        OUTLINED_FUNCTION_8_24(v15, 2);
      }

      else
      {
        v16 = sub_2219ACADC(v9, v10, v11);
        v17 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v16);
        OUTLINED_FUNCTION_7_25(v17, v18);
        OUTLINED_FUNCTION_2_3(v19, v20);
      }
    }
  }

  return v4;
}

uint64_t sub_221BB7510()
{
  OUTLINED_FUNCTION_1_54();
  os_unfair_lock_lock((v0 + 48));
  v7 = OUTLINED_FUNCTION_11_26((v0 + 56), v5, v6, v0 + 48, sub_221B9FAFC, sub_2219A05EC);
  os_unfair_lock_unlock((v0 + 48));
  if (!v1)
  {
    if (!v7 || (OUTLINED_FUNCTION_9_28(), v4 = sub_221BA1254(), , !v4))
    {
      v9 = OUTLINED_FUNCTION_5_31();
      if (v9)
      {
        v12 = sub_2219ACADC(v9, v10, v11);
        v13 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v12);
        OUTLINED_FUNCTION_7_25(v13, v14);
        *(v15 + 16) = v3;
        *(v15 + 24) = v2;
        OUTLINED_FUNCTION_8_24(v15, 4);
      }

      else
      {
        v16 = sub_2219ACADC(v9, v10, v11);
        v17 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v16);
        OUTLINED_FUNCTION_7_25(v17, v18);
        OUTLINED_FUNCTION_2_3(v19, v20);
      }
    }
  }

  return v4;
}

void sub_221BB762C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((v4 + 80));
  OUTLINED_FUNCTION_0_65();
  v10 = sub_221BB6A40((v4 + 88), a1, a2, v4 + 80, v9, sub_2219A05A4);
  os_unfair_lock_unlock((v4 + 80));
  if (v5)
  {
    return;
  }

  if (v10)
  {
    if (*(v10 + 16))
    {
      v42 = a4;
      v39 = a1;
      v40 = a2;
      v11 = v10 + 64;
      OUTLINED_FUNCTION_3_36();
      v13 = v12 >> 6;

      v14 = 0;
      v15 = &selRef_localizedKey;
      v41 = v10;
      if (a2)
      {
        goto LABEL_9;
      }

LABEL_5:
      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v16 >= v13)
        {

          v30 = sub_2219ACADC(v27, v28, v29);
          OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v30);
          *v31 = v39;
          v31[1] = v40;
          v31[2] = a3;
          a4 = v42;
          goto LABEL_23;
        }

        a2 = *(v11 + 8 * v16);
        ++v14;
        if (a2)
        {
          v14 = v16;
          while (1)
          {
LABEL_9:
            v17 = *(*(v10 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(a2)))));
            v18 = [v17 v15[245]];
            objc_opt_self();
            v44 = v18;
            v19 = swift_dynamicCastObjCClass();
            if (v19)
            {
              v43 = v17;
              v20 = [v19 identifier];
              v21 = sub_221BCD388();
              v23 = v22;

              if (v21 == a3 && v23 == v42)
              {

                return;
              }

              v25 = sub_221BCE1B8();

              if (v25)
              {

                return;
              }

              v26 = v43;
              v10 = v41;
              v15 = &selRef_localizedKey;
            }

            else
            {

              v26 = v18;
            }

            a2 &= a2 - 1;

            if (!a2)
            {
              goto LABEL_5;
            }
          }
        }
      }

      __break(1u);
      return;
    }
  }

  v32 = sub_221BB85FC(a1, a2);
  if (v32)
  {
    v35 = sub_2219ACADC(v32, v33, v34);
    OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v35);
    *v31 = a1;
    v31[1] = a2;
    v31[2] = a3;
LABEL_23:
    v31[3] = a4;
    OUTLINED_FUNCTION_8_24(v31, 6);
  }

  else
  {
    v36 = sub_2219ACADC(v32, v33, v34);
    v37 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v36);
    *v38 = a1;
    v38[1] = a2;
    OUTLINED_FUNCTION_2_3(v37, v38);
  }
}

void sub_221BB7948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((v4 + 80));
  OUTLINED_FUNCTION_0_65();
  v11 = sub_221BB6A40((v4 + 88), a1, a2, v4 + 80, v10, sub_2219A05A4);
  os_unfair_lock_unlock((v4 + 80));
  if (v5)
  {
    return;
  }

  if (!v11)
  {
    goto LABEL_19;
  }

  if (!*(v11 + 16))
  {

LABEL_19:
    v26 = sub_221BB85FC(a1, a2);
    if (v26)
    {
      v29 = sub_2219ACADC(v26, v27, v28);
      OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v29);
      *v25 = a1;
      v25[1] = a2;
      v25[2] = a3;
LABEL_21:
      v25[3] = a4;
      OUTLINED_FUNCTION_8_24(v25, 5);
    }

    else
    {
      v30 = sub_2219ACADC(v26, v27, v28);
      v31 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v30);
      *v32 = a1;
      v32[1] = a2;
      OUTLINED_FUNCTION_2_3(v31, v32);
    }

    return;
  }

  v34 = a2;
  v35 = a3;
  v33 = a1;
  v36 = a4;
  OUTLINED_FUNCTION_3_36();
  v13 = v12 >> 6;

  v14 = 0;
  if (a2)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v13)
    {

      v24 = sub_2219ACADC(v21, v22, v23);
      OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v24);
      *v25 = v33;
      v25[1] = v34;
      v25[2] = v35;
      a4 = v36;
      goto LABEL_21;
    }

    a2 = *(v11 + 64 + 8 * v15);
    ++v14;
  }

  while (!a2);
  v14 = v15;
LABEL_9:
  while (1)
  {
    v16 = *(*(v11 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(a2)))));
    v17 = sub_221BB7E34(v16);
    if (v18)
    {
      if (v17 == v35 && v18 == v36)
      {

        goto LABEL_27;
      }

      v20 = sub_221BCE1B8();

      if (v20)
      {
        break;
      }
    }

    a2 &= a2 - 1;

    if (!a2)
    {
      goto LABEL_5;
    }
  }

LABEL_27:
}

uint64_t sub_221BB7BC0()
{
  OUTLINED_FUNCTION_1_54();
  os_unfair_lock_lock((v0 + 80));
  OUTLINED_FUNCTION_0_65();
  v8 = OUTLINED_FUNCTION_11_26((v0 + 88), v5, v6, v0 + 80, v7, sub_2219A05A4);
  os_unfair_lock_unlock((v0 + 80));
  if (!v1)
  {
    if (v8)
    {
      if (*(v8 + 16))
      {
        OUTLINED_FUNCTION_9_28();
        v4 = sub_221BA1254();

        if (v4)
        {
          return v4;
        }
      }

      else
      {
      }
    }

    v9 = OUTLINED_FUNCTION_5_31();
    if (v9)
    {
      v12 = sub_2219ACADC(v9, v10, v11);
      v13 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v12);
      OUTLINED_FUNCTION_7_25(v13, v14);
      *(v15 + 16) = v3;
      *(v15 + 24) = v2;
      OUTLINED_FUNCTION_8_24(v15, 5);
    }

    else
    {
      v16 = sub_2219ACADC(v9, v10, v11);
      v17 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v16);
      OUTLINED_FUNCTION_7_25(v17, v18);
      OUTLINED_FUNCTION_2_3(v19, v20);
    }
  }

  return v4;
}

uint64_t sub_221BB7CDC()
{
  sub_2219A6860(v0 + 24, &qword_27CFBC920, &qword_221BE9AF0);

  sub_2219A6860(v0 + 56, &qword_27CFBC928, &qword_221BE9AF8);

  sub_2219A6860(v0 + 88, &qword_27CFBC930, &unk_221BE9B00);

  return v0;
}

uint64_t sub_221BB7D5C()
{
  sub_221BB7CDC();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_221BB7DB4(uint64_t a1, void *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8BA8, &qword_221BD6868);
  sub_221BB7E98(v2);
  sub_221BCD2D8();
  v3 = sub_221BCC898();
  sub_221BB7E98(v3);
}

uint64_t sub_221BB7E34(void *a1)
{
  v1 = [a1 fullyQualifiedIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCD388();

  return v3;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_5_31()
{

  return sub_221BB85FC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_8_24@<X0>(uint64_t a2@<X1>, char a3@<W8>)
{
  *(a2 + 32) = a3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_10_23(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_221BCD2C8();
}

uint64_t OUTLINED_FUNCTION_11_26(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{

  return sub_221BB6A40(a1, v7, v6, a4, a5, a6);
}

id sub_221BB80DC(void *a1)
{
  v3 = sub_221BCC558();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v26 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 identifier];
  sub_221BCC528();

  v25 = [v1 dialog];
  v24 = [v1 viewSnippet];
  v23 = [v1 attribution];
  v22 = [v1 showOutputAction];
  v21 = [v1 showOutputActionHint];
  v20 = [v1 showOutputActionOptions];
  HIDWORD(v19) = [v1 isDeferred];
  v7 = [v1 nextAction];
  v8 = sub_221BB84F4(v1);
  v9 = sub_221BB8554(v1);
  v11 = v10;
  v12 = [v1 confirmationActionName];
  v13 = [v1 shouldShowPrompt];
  v14 = [v1 confirmationConditions];
  v15 = [v1 undoContext];
  v16 = objc_allocWithZone(MEMORY[0x277D23B08]);
  v17 = a1;
  return sub_221BB8334(v26, v25, v24, 0, v23, a1, v22, v21, v20, SBYTE4(v19), v7, v8, v9, v11, v12, v13, v14, v15);
}

id sub_221BB8334(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, char a16, uint64_t a17, void *a18)
{
  v33 = sub_221BCC508();
  if (a12)
  {
    sub_221BB85B8();
    v18 = sub_221BCD658();
  }

  else
  {
    v18 = 0;
  }

  if (a14)
  {
    v19 = sub_221BCD358();
  }

  else
  {
    v19 = 0;
  }

  LOBYTE(v23) = a16 & 1;
  LOBYTE(v22) = a10 & 1;
  v26 = [v24 initWithIdentifier:v33 dialog:a2 viewSnippet:a3 snippetAction:a4 attribution:a5 value:a6 showOutputAction:a7 showOutputActionHint:a8 showOutputActionOptions:a9 deferred:v22 nextAction:a11 suggestedFollowUpActions:v18 activityIdentifier:v19 confirmationActionName:a15 showPrompt:v23 confirmationConditions:a17 undoContext:a18];

  v20 = sub_221BCC558();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v26;
}

uint64_t sub_221BB84F4(void *a1)
{
  v1 = [a1 suggestedFollowUpActions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_221BB85B8();
  v3 = sub_221BCD668();

  return v3;
}

uint64_t sub_221BB8554(void *a1)
{
  v1 = [a1 activityIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCD388();

  return v3;
}

unint64_t sub_221BB85B8()
{
  result = qword_27CFBC938;
  if (!qword_27CFBC938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFBC938);
  }

  return result;
}

uint64_t sub_221BB85FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v6 = [v3 bundlesWithError_];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    v9 = sub_221BCD668();
    v10 = v7;

    v11 = sub_221BC2180(v9);
    LOBYTE(a2) = sub_2219EAC18(a1, a2, v11);
  }

  else
  {
    a2 = v13[0];
    sub_221BCC338();

    swift_willThrow();
  }

  return a2 & 1;
}

id sub_221BB8704()
{
  result = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  qword_27CFDED38 = result;
  return result;
}

id sub_221BB8738(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v10 = sub_221BCD358();
  v11 = sub_221BCD358();
  v33[0] = 0;
  v12 = [a1 actionForBundleIdentifier:v10 andActionIdentifier:v11 error:v33];

  if (v12)
  {
    v13 = v33[0];
    return v12;
  }

  v30 = a3;
  v14 = v33[0];
  v15 = sub_221BCC338();

  swift_willThrow();
  v32 = sub_221BCC328();
  v16 = [v32 domain];
  v17 = sub_221BCD388();
  v19 = v18;

  if (v17 == sub_221BCD388() && v19 == v20)
  {

    v23 = v32;
  }

  else
  {
    v22 = sub_221BCE1B8();

    v23 = v32;
    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if ([v23 code] != 9004)
  {
LABEL_12:
    swift_willThrow();

    return v12;
  }

  v24 = sub_221BB85FC(a2, v31);
  if (v24)
  {
    sub_2219ACADC(v24, v25, v26);
    swift_allocError();
    *v28 = a2;
    *(v28 + 8) = v31;
    *(v28 + 16) = a4;
    *(v28 + 24) = a5;
    *(v28 + 32) = 2;
    swift_willThrow();
  }

  else
  {
    sub_2219ACADC(v24, v25, v26);
    swift_allocError();
    *v29 = a2;
    *(v29 + 8) = v31;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = 1;
    swift_willThrow();
  }

  return v12;
}

id sub_221BB89D8(uint64_t a1)
{
  v2 = sub_2219A69A0();
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    goto LABEL_9;
  }

  v32 = MEMORY[0x277D84F90];
  result = sub_221BCDF28();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223DA3BF0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 valueType];

      sub_221BCDEF8();
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
    }

    while (v2 != v5);
    v3 = v32;
LABEL_9:
    sub_221BC22D8(v3);
    v10 = v9;
    if (sub_221BB954C(v9) <= 1)
    {
      v12 = sub_2219A280C(v10);

      if (v12)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
        v13 = objc_allocWithZone(MEMORY[0x277D23760]);

        [v13 initWithMemberValueType:v12 capabilities:3];
        v14 = objc_allocWithZone(MEMORY[0x277D23958]);
        v22 = OUTLINED_FUNCTION_6_28(v14, v15, v16, v17, v18, v19, v20, v21, a1);

        return v22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
      v33 = a1;
      v23 = objc_allocWithZone(MEMORY[0x277D238A0]);

      [v23 init];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
      v33 = a1;
      sub_2219A1D20(0, &qword_27CFBBAF0, 0x277D23750);

      v11 = sub_221BB9DCC(v10);

      sub_221BB956C(v11);
    }

    v24 = objc_allocWithZone(MEMORY[0x277D23958]);
    return OUTLINED_FUNCTION_6_28(v24, v25, v26, v27, v28, v29, v30, v31, v33);
  }

  __break(1u);
  return result;
}

id sub_221BB8C1C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  sub_2219A1D20(0, qword_27CFB7E18, 0x277CBEB68);
  [objc_allocWithZone(MEMORY[0x277D238A0]) init];
  v1 = objc_allocWithZone(MEMORY[0x277D23958]);
  result = OUTLINED_FUNCTION_6_28(v1, v2, v3, v4, v5, v6, v7, v8, v0);
  qword_27CFDED40 = result;
  return result;
}

uint64_t sub_221BB8CB4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v27 = v4;
    v33 = MEMORY[0x277D84F90];
    sub_2219A30B4(0, v6, 0);
    v8 = v33;
    v9 = &qword_27CFBB680;
    v10 = a1 + 32;
    do
    {
      sub_22199B650(v10, &v31);
      v11 = sub_2219A1D20(0, v9, 0x277D23958);
      if (swift_dynamicCast())
      {
        v12 = v9;
        v13 = a3;
        v14 = sub_221BB8ED4(v30, a2, a3);
        if (*a4)
        {
          v15 = 1;
        }

        else
        {
          v15 = sub_221BCDC58() ^ 1;
        }

        *a4 = v15 & 1;
        v16 = [v14 valueType];
        sub_221BBA264(&v31, v16, v17, v18, v19, v20, v21, v22, v26, v27);

        v32 = v11;
        *&v31 = v14;
        a3 = v13;
        v9 = v12;
      }

      else
      {
        sub_22199B650(v10, &v31);
      }

      v33 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2219A30B4((v23 > 1), v24 + 1, 1);
        v8 = v33;
      }

      *(v8 + 16) = v24 + 1;
      sub_2219A1AB0(&v31, (v8 + 32 * v24 + 32));
      v10 += 32;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v8;
}

void sub_221BB8ED4(void *a1, void (*a2)(void *__return_ptr), uint64_t a3)
{
  v3 = [a1 valueType];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      OUTLINED_FUNCTION_36_11();

      sub_221BB971C(v53, v54);
      return;
    }

    v37 = [a1 value];
    sub_221BCDCF8();
    swift_unknownObjectRelease();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC940, &unk_221BE9B30);
    if (OUTLINED_FUNCTION_24_16(v38, v39, v40, v41, v42, v43, v44, v45, v68, v69, v70))
    {
      v46 = v77;
      v76 = 0;
      v77 = MEMORY[0x277D84FA0];

      v47 = sub_221BB8CB4(v46, a2, a3, &v76);

      if (v76 == 1)
      {
        sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
        v79 = v38;
        v78[0] = v47;
        v48 = sub_221BB9910(v77);
        v49 = [objc_allocWithZone(MEMORY[0x277D23760]) initWithMemberValueType_];

        sub_221BB95F4(v78, v49, [a1 exportedContent], objc_msgSend(a1, sel_displayRepresentation));
      }

      else
      {

        a1;
      }

LABEL_31:
      OUTLINED_FUNCTION_36_11();
      return;
    }

LABEL_20:

    OUTLINED_FUNCTION_36_11();

    v52 = v50;
    return;
  }

  v4 = off_278482000;
  v5 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v6 = sub_2219A1D20(0, &qword_27CFB77D0, 0x277D237F0);
  if (!OUTLINED_FUNCTION_24_16(v6, v7, v8, v9, v10, v11, v12, v13, v68, v69, v70))
  {
    goto LABEL_20;
  }

  v72 = v6;
  v14 = v77;
  v15 = off_278482000;
  v16 = [v77 properties];
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v17 = sub_221BCD668();

  v18 = sub_2219A69A0();
  if (!v18)
  {

    v36 = MEMORY[0x277D84F90];
LABEL_27:
    v56 = [v14 v15[468]];
    v57 = sub_221BCD668();

    LOBYTE(v56) = sub_221A1A0CC(v36, v57);

    if (v56)
    {

      v58 = a1;
    }

    else
    {
      v59 = [v14 isTransient];
      v60 = [v14 identifier];
      v61 = [v14 isPersistentFileIdentifiable];
      v62 = sub_221BBE850(v14);
      v64 = v63;
      v65 = objc_allocWithZone(MEMORY[0x277D237F0]);
      v66 = sub_221BB99A8(v59, v60, v61, v36, v62, v64);
      sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
      v79 = v72;
      v78[0] = v66;
      v67 = v66;
      v58 = sub_221BB95F4(v78, [a1 valueType], objc_msgSend(a1, sel_exportedContent), objc_msgSend(a1, sel_displayRepresentation));
    }

    sub_221BB971C(v58, a2);

    goto LABEL_31;
  }

  v19 = v18;
  v71 = v3;
  v78[0] = MEMORY[0x277D84F90];
  sub_221BCDF28();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x223DA3BF0](v20, v17);
      }

      else
      {
        v21 = *(v17 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v21 v4[466]];
      if (v23)
      {
        v24 = v23;
        v25 = sub_221BB8ED4(v23, a2, a3);
        v26 = v4;
        v27 = [v22 v4[466]];
        if (!v27 || (v28 = v27, sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958), v29 = v25, v30 = sub_221BCDC58(), v29, v28, (v30 & 1) == 0))
        {
          v31 = [v22 identifier];
          v32 = sub_221BCD388();
          v34 = v33;

          v35 = objc_allocWithZone(MEMORY[0x277D238D8]);
          sub_2219A62D8(v32, v34, v25);
          v29 = v22;
        }

        v4 = v26;
      }

      ++v20;
      sub_221BCDEF8();
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
    }

    while (v19 != v20);

    v36 = v78[0];
    v14 = v77;
    v3 = v71;
    v15 = off_278482000;
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_221BB954C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_221BCDDA8();
  }

  else
  {
    return *(a1 + 16);
  }
}

id sub_221BB956C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
  v2 = sub_221BCD658();

  v3 = [v1 initWithMemberValueTypes_];

  return v3;
}

id sub_221BB95F4(void *a1, void *a2, void *a3, void *a4)
{
  if (a3)
  {
    v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v9 = a3;
    v10 = [v8 initWithValue:sub_221BCE1A8() valueType:a2 exportedContent:v9 displayRepresentation:a4];

    a2 = v9;
  }

  else
  {
    v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v10 = [v11 initWithValue:sub_221BCE1A8() valueType:a2 displayRepresentation:a4];
    v9 = a4;
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

id sub_221BB971C(void *a1, void (*a2)(void *__return_ptr))
{
  a2(v23);
  sub_221BBE91C(v23, v18);
  if (v22 == 1)
  {
    v3 = v19;
    v4 = v20;
    v5 = v21;
    sub_2219A1AB0(v18, v17);
    sub_22199B650(v17, v16);
    v6 = v5;
    if (!v5)
    {
      v6 = [a1 exportedContent];
    }

    v7 = v5;
    if (!v4)
    {
      v4 = [a1 displayRepresentation];
    }

    sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
    v8 = sub_221BB95F4(v16, v3, v6, v4);

    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v10 = *(&v18[0] + 1);
    v9 = *&v18[0];
    v11 = [a1 value];
    sub_221BCDCF8();
    swift_unknownObjectRelease();
    v12 = [a1 valueType];
    v13 = v10;
    if (!v10)
    {
      v13 = [a1 exportedContent];
    }

    v14 = v10;
    if (!v9)
    {
      v9 = [a1 displayRepresentation];
    }

    sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
    v8 = sub_221BB95F4(v17, v12, v13, v9);
  }

  sub_221BBE954(v23);
  return v8;
}

id sub_221BB9910(uint64_t *a1)
{
  v1 = sub_221BB9DCC(a1);
  if (sub_2219A69A0() == 1)
  {
    sub_2219A69A4();
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x223DA3BF0](0, v1);
    }

    else
    {
      v2 = *(v1 + 32);
    }

    v3 = v2;

    return v3;
  }

  else
  {
    sub_2219A1D20(0, &qword_27CFBBAF0, 0x277D23750);
    return sub_221BB956C(v1);
  }
}

id sub_221BB99A8(char a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v11 = sub_221BCD658();

  if (a6)
  {
    v12 = sub_221BCD358();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 initWithTransient:a1 & 1 identifier:a2 persistentFileIdentifiable:a3 & 1 properties:v11 managedAccountIdentifier:v12];

  return v13;
}

void *sub_221BB9A80(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC838, &qword_221BE9978);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_221BB9B50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_18_4(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_221BB9CD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_18_4(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (v12)
  {
    if ((result - v14) != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t **sub_221BB9DCC(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_221BCDDA8();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_221BB9A80(v2, 0);

    v1 = sub_221BB9E7C(&v5, v3 + 4, v2, v1);
    sub_221A5E4D8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t *sub_221BB9E7C(uint64_t *result, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_221BCDD68();
    sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
    sub_221BBE8B4();
    result = sub_221BCD9B8();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v17 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v11 = v19 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v21 = v7;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_221BCDDD8())
        {
          goto LABEL_25;
        }

        sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        result = *(*(v4 + 48) + ((v10 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v20;
        v7 = v21;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_221BBA074()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = _s17LNConnectionStoreC9AssertionOMa(0);
  v9 = OUTLINED_FUNCTION_18_4(v8);
  v31 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v32 = v1;
  v18 = *(v1 + 56);
  v17 = v1 + 56;
  v16 = v18;
  v19 = -1 << *(v17 - 24);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v16;
  if (!v5)
  {
    v23 = 0;
LABEL_21:
    *v7 = v32;
    v7[1] = v17;
    v7[2] = ~v19;
    v7[3] = v23;
    v7[4] = v21;
    OUTLINED_FUNCTION_22();
    return;
  }

  if (!v3)
  {
    v23 = 0;
    goto LABEL_21;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v29 = -1 << *(v17 - 24);
    v30 = v7;
    v22 = 0;
    v23 = 0;
    v24 = (63 - v19) >> 6;
    while (1)
    {
      if (v22 >= v3)
      {
        goto LABEL_24;
      }

      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_25;
      }

      if (!v21)
      {
        while (1)
        {
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v26 >= v24)
          {
            v21 = 0;
            goto LABEL_19;
          }

          v21 = *(v17 + 8 * v26);
          ++v23;
          if (v21)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v26 = v23;
LABEL_15:
      OUTLINED_FUNCTION_33_11();
      v28 = *(v31 + 72);
      sub_221A5BB74(*(v32 + 48) + v28 * (v27 | (v26 << 6)), v12);
      sub_221BA1030(v12, v15);
      sub_221BA1030(v15, v5);
      if (v25 == v3)
      {
        break;
      }

      v5 += v28;
      v22 = v25;
      v23 = v26;
    }

    v23 = v26;
LABEL_19:
    v19 = v29;
    v7 = v30;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

BOOL sub_221BBA42C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_221BCE308();
  sub_221BCD448();
  sub_221BCE358();
  OUTLINED_FUNCTION_9_29();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_221BCE1B8() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_221BBC494(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_221BBA574(_BYTE *a1, unint64_t a2)
{
  v5 = *v2;
  sub_221BCE308();
  MEMORY[0x223DA4060](a2);
  v6 = sub_221BCE358();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_221BBC5FC(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

void sub_221BBA80C()
{
  OUTLINED_FUNCTION_21();
  sub_221BCC558();
  OUTLINED_FUNCTION_3_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_0_66();
  v7 = sub_221BBE984(v5, v6, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_26_10(v7);
  OUTLINED_FUNCTION_5_32();
  do
  {
    OUTLINED_FUNCTION_10_24();
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v13 = OUTLINED_FUNCTION_15_21();
      v14(v13);
      v15 = OUTLINED_FUNCTION_14_25();
      sub_221BBC8AC(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_13_26();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_7_26();
    v3(v9);
    OUTLINED_FUNCTION_0_66();
    v11 = sub_221BBE984(&qword_27CFB8AE0, v10, MEMORY[0x277CC9610]);
    OUTLINED_FUNCTION_25_15(v11);
    v12 = OUTLINED_FUNCTION_22_14();
    v2(v12);
  }

  while ((v0 & 1) == 0);
  (v2)(v21, v1);
  v20 = OUTLINED_FUNCTION_16_17();
  v3(v20);
LABEL_7:
  OUTLINED_FUNCTION_22();
}

void sub_221BBA990()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v32 = v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B08, &unk_221BD6720);
  MEMORY[0x28223BE20](v34);
  v5 = &v30 - v4;
  v6 = _s17LNConnectionStoreC9AssertionOMa(0);
  v7 = OUTLINED_FUNCTION_18_4(v6);
  v33 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v31 = v0;
  v14 = *v0;
  sub_221BCE308();
  v38 = v2;
  sub_221A5BB74(v2, v13);
  MEMORY[0x223DA4060](0);
  v15 = sub_221BCC558();
  OUTLINED_FUNCTION_0_66();
  sub_221BBE984(v16, v17, MEMORY[0x277CC9600]);
  sub_221BCD318();
  v18 = *(*(v15 - 8) + 8);
  v30 = v13;
  v18(v13, v15);
  sub_221BCE358();
  v35 = v14;
  OUTLINED_FUNCTION_9_29();
  v36 = ~v20;
  v37 = v21;
  while (1)
  {
    v22 = v19 & v36;
    if (((1 << (v19 & v36)) & *(v37 + (((v19 & v36) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v26 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v38;
      v29 = v30;
      sub_221A5BB74(v38, v30);
      v39 = *v26;
      sub_221BBCB5C(v29, v22, isUniquelyReferenced_nonNull_native);
      *v26 = v39;
      sub_221BA1030(v28, v32);
      goto LABEL_7;
    }

    v23 = *(v33 + 72) * v22;
    sub_221A5BB74(*(v35 + 48) + v23, v10);
    v24 = *(v34 + 48);
    sub_221A5BB74(v10, v5);
    sub_221A5BB74(v38, &v5[v24]);
    v25 = sub_221BCC518();
    sub_2219A197C(v10);
    v18(&v5[v24], v15);
    v18(v5, v15);
    if (v25)
    {
      break;
    }

    v19 = v22 + 1;
  }

  sub_2219A197C(v38);
  sub_221A5BB74(*(v35 + 48) + v23, v32);
LABEL_7:
  OUTLINED_FUNCTION_22();
}

void sub_221BBAC9C()
{
  OUTLINED_FUNCTION_21();
  sub_221BCC418();
  OUTLINED_FUNCTION_3_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_4_33();
  v7 = sub_221BBE984(v5, v6, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_26_10(v7);
  OUTLINED_FUNCTION_5_32();
  do
  {
    OUTLINED_FUNCTION_10_24();
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v13 = OUTLINED_FUNCTION_15_21();
      v14(v13);
      v15 = OUTLINED_FUNCTION_14_25();
      sub_221BBCEA0(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_13_26();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_7_26();
    v3(v9);
    OUTLINED_FUNCTION_4_33();
    v11 = sub_221BBE984(&qword_27CFBBFB8, v10, MEMORY[0x277CC9278]);
    OUTLINED_FUNCTION_25_15(v11);
    v12 = OUTLINED_FUNCTION_22_14();
    v2(v12);
  }

  while ((v0 & 1) == 0);
  (v2)(v21, v1);
  v20 = OUTLINED_FUNCTION_16_17();
  v3(v20);
LABEL_7:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221BBAE20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC950, &qword_221BE9B40);
    v2 = sub_221BCDE38();
    v14 = v2;
    sub_221BCDD68();
    while (1)
    {
      if (!sub_221BCDDD8())
      {

        return v2;
      }

      sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_221BBB688();
      }

      v2 = v14;
      result = sub_221BCDC48();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_221BBB010(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC958, &qword_221BE9B48);
    v2 = sub_221BCDE38();
    v14 = v2;
    sub_221BCDD68();
    while (1)
    {
      if (!sub_221BCDDD8())
      {

        return v2;
      }

      _s14descr283510D89C29PerformActionExecutorDelegateCMa(0);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_221BBB688();
      }

      v2 = v14;
      result = sub_221BCDC48();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      OUTLINED_FUNCTION_20_19();
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_221BBB1E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC988, &qword_221BE9B88);
  result = sub_221BCDE28();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_221BB5B90(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_221BCE308();
    sub_221BCD448();
    result = sub_221BCE358();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_221BBB43C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC9B8, &qword_221BE9BC8);
  result = sub_221BCDE28();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_221BB5B90(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_221BCE308();
    MEMORY[0x223DA4060](v16);
    result = sub_221BCE358();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_221BBB688()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_17_20(v2, v3, v4);
  v5 = sub_221BCDE28();
  v6 = v5;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v6;
    OUTLINED_FUNCTION_22();
    return;
  }

  v7 = 0;
  v8 = (v1 + 56);
  v9 = 1 << *(v1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v1 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_7_24();
        v11 = v17 & v16;
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_12_18();
    if (v27 >= 64)
    {
      sub_221BB5B90(0, (v27 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_9_29();
      *v8 = v28;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_35_13();
LABEL_12:
    v18 = *(*(v1 + 48) + 8 * (v14 | (v7 << 6)));
    v19 = sub_221BCDC48() & ~(-1 << *(v6 + 32));
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_3_35();
LABEL_21:
    OUTLINED_FUNCTION_27_16();
    *(v13 + v24) |= v25;
    *(*(v6 + 48) + 8 * v26) = v18;
    OUTLINED_FUNCTION_20_19();
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_0_64();
  while (++v20 != v22 || (v21 & 1) == 0)
  {
    v23 = v20 == v22;
    if (v20 == v22)
    {
      v20 = 0;
    }

    v21 |= v23;
    if (*(v13 + 8 * v20) != -1)
    {
      OUTLINED_FUNCTION_2_39();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_221BBB824(uint64_t a1)
{
  v2 = v1;
  v36 = sub_221BCC558();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC978, &qword_221BE9B78);
  result = sub_221BCDE28();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_221BB5B90(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_221BBE984(&qword_27CFB9420, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_221BCD308();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_221BBBB7C(uint64_t a1)
{
  v2 = v1;
  v3 = _s17LNConnectionStoreC9AssertionOMa(0);
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC970, &qword_221BE9B70);
  result = sub_221BCDE28();
  v10 = result;
  if (!*(v8 + 16))
  {
LABEL_27:

    *v2 = v10;
    return result;
  }

  v35 = v1;
  v36 = v8;
  v11 = 0;
  v12 = (v8 + 56);
  v13 = 1 << *(v8 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v8 + 56);
  v16 = (v13 + 63) >> 6;
  v17 = result + 56;
  if (!v15)
  {
LABEL_7:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      sub_221BB5B90(0, (v34 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v34;
    }

    v2 = v35;
    *(v8 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v21 = *(v8 + 48);
    v39 = *(v38 + 72);
    sub_221BA1030(v21 + v39 * (v18 | (v11 << 6)), v7);
    sub_221BCE308();
    v22 = v7;
    v23 = v7;
    v24 = v37;
    sub_221A5BB74(v23, v37);
    MEMORY[0x223DA4060](0);
    v25 = sub_221BCC558();
    sub_221BBE984(&qword_27CFB9420, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_221BCD318();
    (*(*(v25 - 8) + 8))(v24, v25);
    result = sub_221BCE358();
    v26 = -1 << *(v10 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v22;
LABEL_21:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = sub_221BA1030(v7, *(v10 + 48) + v29 * v39);
    ++*(v10 + 16);
    v8 = v36;
    if (!v15)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  v7 = v22;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v17 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_221BBBF28(uint64_t a1)
{
  v2 = v1;
  v36 = sub_221BCC418();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC9B0, &qword_221BE9BC0);
  result = sub_221BCDE28();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_221BB5B90(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_221BBE984(&qword_27CFBC9A8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    result = sub_221BCD308();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_221BBC280(uint64_t a1, void *a2)
{
  sub_221BCDC48();
  OUTLINED_FUNCTION_9_29();
  result = sub_221BCDD48();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_221BBC300(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_221BBB688();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_221BBDD10();
LABEL_8:
      v8 = *v3;
      v9 = sub_221BCDC48();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_221BCDC58();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    sub_221BBD3FC(&qword_27CFBC950, &qword_221BE9B40);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    sub_221BCE218();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

void sub_221BBC494(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_221BBB1E0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_221BBD8C0(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_221BCE308();
      sub_221BCD448();
      v16 = sub_221BCE358();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_221BCE1B8() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_221BBD150();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_221BCE218();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

unint64_t sub_221BBC5FC(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_221BBB43C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_221BBDAF4(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_221BCE308();
      MEMORY[0x223DA4060](v5);
      result = sub_221BCE358();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_221BBD2A8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_221BCE218();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_221BBC734(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_221BBB688();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_221BBDD10();
LABEL_10:
      v12 = *v3;
      v13 = sub_221BCDC48();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        _s14descr283510D89C29PerformActionExecutorDelegateCMa(0);
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = sub_221BCDC58();

        if (v16)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_221BBD3FC(&qword_27CFBC958, &qword_221BE9B48);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_221BCE218();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_221BBC8AC(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_221BCC558();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_221BBB824(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_221BBDEA4(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_221BBE984(&qword_27CFB9420, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v14 = sub_221BCD308();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_221BBE984(&qword_27CFB8AE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v16 = sub_221BCD338();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_221BBD6D8();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_221BCE218();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_221BBCB5C(uint64_t a1, unint64_t a2, char a3)
{
  v43 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B08, &unk_221BD6720);
  MEMORY[0x28223BE20](v41);
  v7 = &v37 - v6;
  v8 = _s17LNConnectionStoreC9AssertionOMa(0);
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v21 = &v37 - v20;
  v22 = *(*v3 + 16);
  v23 = *(*v3 + 24);
  if (v23 <= v22 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v38 = v12;
      sub_221BBBB7C(v22 + 1);
      goto LABEL_8;
    }

    if (v23 <= v22)
    {
      v38 = v12;
      sub_221BBE1BC(v22 + 1);
LABEL_8:
      v39 = v3;
      v24 = *v3;
      sub_221BCE308();
      sub_221A5BB74(v43, v21);
      MEMORY[0x223DA4060](0);
      v25 = sub_221BCC558();
      sub_221BBE984(&qword_27CFB9420, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_221BCD318();
      v26 = *(*(v25 - 8) + 8);
      v26(v21, v25);
      v27 = sub_221BCE358();
      v28 = v24 + 56;
      v40 = v24;
      v29 = ~(-1 << *(v24 + 32));
      while (1)
      {
        a2 = v27 & v29;
        if (((*(v28 + (((v27 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v29)) & 1) == 0)
        {
          break;
        }

        sub_221A5BB74(*(v40 + 48) + *(v42 + 72) * a2, v10);
        v30 = *(v41 + 48);
        sub_221A5BB74(v10, v7);
        sub_221A5BB74(v43, &v7[v30]);
        v31 = sub_221BCC518();
        sub_2219A197C(v10);
        v26(&v7[v30], v25);
        v26(v7, v25);
        if (v31)
        {
          goto LABEL_16;
        }

        v27 = a2 + 1;
      }

      v3 = v39;
      goto LABEL_13;
    }

    sub_221BBD534(v12, v13, v14, v15, v16, v17, v18, v19, v37, v38, v39, v40, v41, v42, v43, v44[0], v44[1], v44[2], v44[3], v44[4]);
  }

LABEL_13:
  v32 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_221BA1030(v43, *(v32 + 48) + *(v42 + 72) * a2);
  v34 = *(v32 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
LABEL_16:
    result = sub_221BCE218();
    __break(1u);
  }

  else
  {
    *(v32 + 16) = v36;
  }

  return result;
}

uint64_t sub_221BBCEA0(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_221BCC418();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_221BBBF28(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_221BBE538(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_221BBE984(&qword_27CFBC9A8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v14 = sub_221BCD308();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_221BBE984(&qword_27CFBBFB8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v16 = sub_221BCD338();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_221BBD6D8();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_221BCE218();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void sub_221BBD150()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC988, &qword_221BE9B88);
  v2 = *v0;
  v3 = sub_221BCDE18();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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
}

void *sub_221BBD2A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC9B8, &qword_221BE9BC8);
  v2 = *v0;
  v3 = sub_221BCDE18();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_221BBD3FC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_221BCDE18();
  if (v4[2])
  {
    v6 = OUTLINED_FUNCTION_6_31();
    v8 = (v7 + 63) >> 6;
    if (v5 != v4 || v6 >= &v4[v8 + 7])
    {
      memmove(v6, v4 + 7, 8 * v8);
    }

    v10 = 0;
    *(v5 + 16) = v4[2];
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_8_25();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_35_13();
LABEL_15:
        v20 = v16 | (v10 << 6);
        v21 = *(v4[6] + 8 * v20);
        *(*(v5 + 48) + 8 * v20) = v21;
        v22 = v21;
      }

      while (v13);
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
        goto LABEL_17;
      }

      ++v17;
      if (v4[v10 + 7])
      {
        OUTLINED_FUNCTION_7_24();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v5;
  }
}

void sub_221BBD534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v24 = _s17LNConnectionStoreC9AssertionOMa(0);
  v25 = OUTLINED_FUNCTION_18_4(v24);
  v27 = v26;
  MEMORY[0x28223BE20](v25);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC970, &qword_221BE9B70);
  v30 = *v20;
  v31 = sub_221BCDE18();
  if (v30[2])
  {
    v32 = OUTLINED_FUNCTION_6_31();
    v34 = (v33 + 63) >> 6;
    if (v31 != v30 || v32 >= &v30[v34 + 7])
    {
      memmove(v32, v30 + 7, 8 * v34);
    }

    v36 = 0;
    *(v31 + 16) = v30[2];
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_8_25();
    v39 = v38 & v37;
    v41 = (v40 + 63) >> 6;
    if ((v38 & v37) != 0)
    {
      do
      {
        v42 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
LABEL_15:
        v46 = *(v27 + 72) * (v42 | (v36 << 6));
        sub_221A5BB74(v30[6] + v46, v29);
        sub_221BA1030(v29, *(v31 + 48) + v46);
      }

      while (v39);
    }

    v43 = v36;
    while (1)
    {
      v36 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v36 >= v41)
      {
        goto LABEL_17;
      }

      ++v43;
      if (v30[v36 + 7])
      {
        OUTLINED_FUNCTION_7_24();
        v39 = v45 & v44;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v23 = v31;
    OUTLINED_FUNCTION_22();
  }
}

void sub_221BBD6D8()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v7(0);
  OUTLINED_FUNCTION_3_34();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  v13 = *v0;
  v14 = sub_221BCDE18();
  if (v13[2])
  {
    v31 = v6;
    v15 = OUTLINED_FUNCTION_6_31();
    v17 = (v16 + 63) >> 6;
    if (v14 != v13 || v15 >= &v13[v17 + 7])
    {
      memmove(v15, v13 + 7, 8 * v17);
    }

    v19 = 0;
    *(v14 + 16) = v13[2];
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_8_25();
    v22 = v21 & v20;
    v24 = (v23 + 63) >> 6;
    v32 = v9 + 32;
    v33 = v9 + 16;
    if ((v21 & v20) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_33_11();
LABEL_15:
        v29 = *(v9 + 72) * (v25 | (v19 << 6));
        (*(v9 + 16))(v12, v13[6] + v29, v1);
        (*(v9 + 32))(*(v14 + 48) + v29, v12, v1);
      }

      while (v22);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v6 = v31;
        goto LABEL_19;
      }

      ++v26;
      if (v13[v19 + 7])
      {
        OUTLINED_FUNCTION_7_24();
        v22 = v28 & v27;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v6 = v14;
    OUTLINED_FUNCTION_22();
  }
}

uint64_t sub_221BBD8C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC988, &qword_221BE9B88);
  result = sub_221BCDE28();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_221BCE308();

        sub_221BCD448();
        result = sub_221BCE358();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_221BBDAF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC9B8, &qword_221BE9BC8);
  result = sub_221BCDE28();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_221BCE308();
        MEMORY[0x223DA4060](v15);
        result = sub_221BCE358();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_221BBDD10()
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_17_20(v2, v3, v4);
  v5 = sub_221BCDE28();
  v6 = v5;
  if (*(v1 + 16))
  {
    v26 = v0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v17 = *(*(v1 + 48) + 8 * (v13 | (v7 << 6)));
        v18 = sub_221BCDC48() & ~(-1 << *(v6 + 32));
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_3_35();
LABEL_21:
        OUTLINED_FUNCTION_27_16();
        *(v12 + v23) |= v24;
        *(*(v6 + 48) + 8 * v25) = v17;
        OUTLINED_FUNCTION_20_19();
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_0_64();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v12 + 8 * v19) != -1)
        {
          OUTLINED_FUNCTION_2_39();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v0 = v26;
          goto LABEL_25;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v7))
        {
          OUTLINED_FUNCTION_7_24();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v0 = v6;
    OUTLINED_FUNCTION_1_4();
  }
}

uint64_t sub_221BBDEA4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_221BCC558();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC978, &qword_221BE9B78);
  v7 = sub_221BCDE28();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_221BBE984(&qword_27CFB9420, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        result = sub_221BCD308();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_221BBE1BC(uint64_t a1)
{
  v2 = v1;
  v3 = _s17LNConnectionStoreC9AssertionOMa(0);
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC970, &qword_221BE9B70);
  result = sub_221BCDE28();
  v10 = result;
  if (*(v8 + 16))
  {
    v34 = v1;
    v35 = v8;
    v11 = 0;
    v12 = v8 + 56;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    if (v15)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_12:
        v21 = *(v8 + 48);
        v38 = *(v37 + 72);
        sub_221A5BB74(v21 + v38 * (v18 | (v11 << 6)), v7);
        sub_221BCE308();
        v22 = v7;
        v23 = v7;
        v24 = v36;
        sub_221A5BB74(v23, v36);
        MEMORY[0x223DA4060](0);
        v25 = sub_221BCC558();
        sub_221BBE984(&qword_27CFB9420, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_221BCD318();
        (*(*(v25 - 8) + 8))(v24, v25);
        result = sub_221BCE358();
        v26 = -1 << *(v10 + 32);
        v27 = result & ~v26;
        v28 = v27 >> 6;
        if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
        {
          break;
        }

        v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
        v7 = v22;
LABEL_21:
        *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        result = sub_221BA1030(v7, *(v10 + 48) + v29 * v38);
        ++*(v10 + 16);
        v8 = v35;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v22;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v17 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v19 = v11;
      while (1)
      {
        v11 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v11 >= v16)
        {

          v2 = v34;
          goto LABEL_25;
        }

        v20 = *(v12 + 8 * v11);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v15 = (v20 - 1) & v20;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_221BBE538(uint64_t a1)
{
  v2 = v1;
  v33 = sub_221BCC418();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC9B0, &qword_221BE9BC0);
  v7 = sub_221BCDE28();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_221BBE984(&qword_27CFBC9A8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        result = sub_221BCD308();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_221BBE850(void *a1)
{
  v1 = [a1 managedAccountIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCD388();

  return v3;
}

unint64_t sub_221BBE8B4()
{
  result = qword_27CFBC948;
  if (!qword_27CFBC948)
  {
    sub_2219A1D20(255, &unk_27CFBB670, 0x277D23960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC948);
  }

  return result;
}

uint64_t sub_221BBE984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_221BBE9F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221BBEA30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_221BBEA80(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

void OUTLINED_FUNCTION_5_32()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v0 + 56;
  *(v2 - 104) = v1 + 16;
  *(v2 - 128) = v1 + 8;
}

uint64_t OUTLINED_FUNCTION_17_20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_24_16(uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_25_15(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_26_10(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_221BCD308();
}

uint64_t OUTLINED_FUNCTION_39_11(void x0_0, void x1_0, void x2_0, uint64_t a1, void a5, void a6, void a7, void a8, uint64_t a3, char a4)
{

  return swift_dynamicCast();
}

uint64_t sub_221BBEDE4()
{
  v1 = [v0 identifier];
  v2 = sub_221BCD388();
  v4 = v3;

  if (sub_221BCD528())
  {
    v5 = sub_2219BBB74(1uLL, v2, v4);
    v2 = MEMORY[0x223DA3160](v5);
    v4 = v6;
  }

  if (v2 == 0x494C52556E65704FLL && v4 == 0xED0000746E65746ELL)
  {

    return 1;
  }

  else
  {
    v8 = sub_221BCE1B8();

    return v8 & 1;
  }
}

uint64_t sub_221BBEED0(double a1)
{
  v2 = v1;
  v3 = sub_221BCD028();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  v10 = v8 == *MEMORY[0x277CD8F08] || v8 == *MEMORY[0x277CD8F00] || v8 == *MEMORY[0x277CD8EF0];
  v11 = v10;
  if (!v10)
  {
    v12 = v8 == *MEMORY[0x277CD8F10] || v8 == *MEMORY[0x277CD8EF8];
    v13 = v12 || v8 == *MEMORY[0x277CD8F28];
    v14 = v13 || v8 == *MEMORY[0x277CD8F18];
    if (v14 || v8 == *MEMORY[0x277CD8F20])
    {
      return 1;
    }
  }

  (*(v4 + 8))(v7, v3);
  return v11;
}

BOOL sub_221BBF060(uint64_t a1, double a2)
{
  v4 = sub_221BCD028();
  sub_221BBF214(v5);
  v6 = OUTLINED_FUNCTION_0_67();
  v7 = *(*(v4 - 8) + 16);
  v7(v8, v2, v4);
  v9 = sub_221BCC328();

  v10 = OUTLINED_FUNCTION_0_67();
  v7(v11, a1, v4);
  v12 = sub_221BCC328();

  v13 = [v9 domain];
  v14 = sub_221BCD388();
  v16 = v15;

  v17 = [v12 domain];
  v18 = sub_221BCD388();
  v20 = v19;

  if (v14 == v18 && v16 == v20)
  {
  }

  else
  {
    v22 = sub_221BCE1B8();

    if ((v22 & 1) == 0)
    {

      return 0;
    }
  }

  v24 = [v9 code];
  v25 = [v12 code];

  return v24 == v25;
}

unint64_t sub_221BBF214(double a1)
{
  result = qword_27CFBC9C0;
  if (!qword_27CFBC9C0)
  {
    sub_221BCD028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC9C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_67()
{

  return swift_allocError();
}

unint64_t sub_221BBF28C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBD40, &qword_221BE63B8);
  OUTLINED_FUNCTION_8_1(v2);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_55(v4);
  v5 = sub_221BCCF48();
  OUTLINED_FUNCTION_0_68(v5);
  if (v6)
  {
    sub_2219A6860(v0, &qword_27CFBBD40, &qword_221BE63B8);
    return 0;
  }

  v7 = sub_221BBF8E0();
  v9 = v8;
  OUTLINED_FUNCTION_2_40();
  (*(v10 + 8))(v0, v1);
  if (v9)
  {
    return 0;
  }

  return (v7 >> 19) & 1;
}

unint64_t sub_221BBF364()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBD40, &qword_221BE63B8);
  OUTLINED_FUNCTION_8_1(v2);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_55(v4);
  v5 = sub_221BCCF48();
  OUTLINED_FUNCTION_0_68(v5);
  if (v6)
  {
    sub_2219A6860(v0, &qword_27CFBBD40, &qword_221BE63B8);
    return 0;
  }

  v7 = sub_221BBF8E0();
  v9 = v8;
  OUTLINED_FUNCTION_2_40();
  (*(v10 + 8))(v0, v1);
  if (v9)
  {
    return 0;
  }

  return (v7 >> 7) & 1;
}

uint64_t sub_221BBF43C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBD40, &qword_221BE63B8);
  OUTLINED_FUNCTION_8_1(v2);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_55(v4);
  v5 = sub_221BCCF48();
  OUTLINED_FUNCTION_0_68(v5);
  if (v6)
  {
    sub_2219A6860(v0, &qword_27CFBBD40, &qword_221BE63B8);
    return 0;
  }

  else
  {
    v7 = sub_221BCCF58();
    OUTLINED_FUNCTION_2_40();
    (*(v8 + 8))(v0, v1);
  }

  return v7;
}

uint64_t sub_221BBF52C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBD40, &qword_221BE63B8);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFBC9C8, qword_221BE9CA8);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = sub_221BCCF28();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  sub_221BCCED8();
  v15 = sub_221BCCF48();
  if (__swift_getEnumTagSinglePayload(v3, 1, v15) == 1)
  {
    sub_2219A6860(v3, &qword_27CFBBD40, &qword_221BE63B8);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
LABEL_4:
    sub_2219A6860(v7, qword_27CFBC9C8, qword_221BE9CA8);
    return 2;
  }

  sub_221BCCF38();
  (*(*(v15 - 8) + 8))(v3, v15);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  (*(v9 + 32))(v14, v7, v8);
  (*(v9 + 16))(v11, v14, v8);
  if ((*(v9 + 88))(v11, v8) != *MEMORY[0x277CD8D08])
  {
    v19 = *(v9 + 8);
    v19(v14, v8);
    v19(v11, v8);
    return 2;
  }

  (*(v9 + 96))(v11, v8);
  if (*v11 == 49 && *(v11 + 1) == 0xE100000000000000)
  {

    v18 = 1;
  }

  else
  {
    v18 = sub_221BCE1B8();
  }

  (*(v9 + 8))(v14, v8);
  return v18 & 1;
}

uint64_t OUTLINED_FUNCTION_1_55(uint64_t a1)
{

  return sub_221BCCED8();
}

unint64_t sub_221BBF8E0()
{
  result = sub_221BCCF58();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = HIBYTE(v2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v0 = sub_221BBFB80(result, v3, 10);
    v14 = v15;
LABEL_74:

    if ((v14 & 1) == 0)
    {
      return v0;
    }

    return 0;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_221BCDEE8();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (v5 != 1)
        {
          v0 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_0_69();
              if (!v9 && v8)
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_2_41();
              if (!v9)
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_1_56();
              if (v8)
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_3_37();
              if (v9)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_72;
      }

      goto LABEL_82;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v0 = 0;
        if (result)
        {
          while (1)
          {
            v13 = *result - 48;
            if (v13 > 9)
            {
              goto LABEL_72;
            }

            if (!is_mul_ok(v0, 0xAuLL))
            {
              goto LABEL_72;
            }

            v8 = __CFADD__(10 * v0, v13);
            v0 = 10 * v0 + v13;
            if (v8)
            {
              goto LABEL_72;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_72:
      v0 = 0;
      v11 = 1;
      goto LABEL_73;
    }

    if (v5 >= 1)
    {
      if (v5 != 1)
      {
        v0 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_0_69();
            if (!v9 && v8)
            {
              goto LABEL_72;
            }

            OUTLINED_FUNCTION_2_41();
            if (!v9)
            {
              goto LABEL_72;
            }

            v8 = 10 * v0 >= v10;
            v0 = 10 * v0 - v10;
            if (!v8)
            {
              goto LABEL_72;
            }

            OUTLINED_FUNCTION_3_37();
            if (v9)
            {
              goto LABEL_73;
            }
          }
        }

LABEL_62:
        v11 = 0;
LABEL_73:
        v14 = v11;
        goto LABEL_74;
      }

      goto LABEL_72;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v0 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_0_69();
          if (!v9 && v8)
          {
            break;
          }

          OUTLINED_FUNCTION_2_41();
          if (!v9)
          {
            break;
          }

          OUTLINED_FUNCTION_1_56();
          if (v8)
          {
            break;
          }

          OUTLINED_FUNCTION_3_37();
          if (v9)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    if (v4)
    {
      if (v4 != 1)
      {
        OUTLINED_FUNCTION_4_34();
        while (1)
        {
          OUTLINED_FUNCTION_0_69();
          if (!v9 && v8)
          {
            break;
          }

          OUTLINED_FUNCTION_2_41();
          if (!v9)
          {
            break;
          }

          v8 = 10 * v0 >= v12;
          v0 = 10 * v0 - v12;
          if (!v8)
          {
            break;
          }

          OUTLINED_FUNCTION_3_37();
          if (v9)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    goto LABEL_81;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      OUTLINED_FUNCTION_4_34();
      while (1)
      {
        OUTLINED_FUNCTION_0_69();
        if (!v9 && v8)
        {
          break;
        }

        OUTLINED_FUNCTION_2_41();
        if (!v9)
        {
          break;
        }

        OUTLINED_FUNCTION_1_56();
        if (v8)
        {
          break;
        }

        OUTLINED_FUNCTION_3_37();
        if (v9)
        {
          goto LABEL_73;
        }
      }
    }

    goto LABEL_72;
  }

LABEL_83:
  __break(1u);
  return result;
}

unsigned __int8 *sub_221BBFB80(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_221BCD578();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_221B962E8(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_221BCDEE8();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
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

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_221BC019C()
{
  OUTLINED_FUNCTION_1_52();
  os_unfair_lock_lock((v0 + 64));
  OUTLINED_FUNCTION_1_52();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1_52();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_1_52();
  v6 = *(v0 + 72);
  type metadata accessor for Assertable.ManagedObject.State(0, v2, v4, *(v5 + 96));

  j__os_unfair_lock_unlock((v0 + 64));
  sub_221BCDE68();
  swift_getMetatypeMetadata();
  v7 = sub_221BCD3D8();

  MEMORY[0x223DA31F0](60, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v8 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v8);

  MEMORY[0x223DA31F0](0x7463656A626F283ELL, 0xEA0000000000203ALL);
  swift_unknownObjectRetain();
  v9 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v9);

  MEMORY[0x223DA31F0](0x7472657373610A2CLL, 0xEE00203A736E6F69);
  sub_221BCD9C8();

  swift_getWitnessTable();
  sub_221BCD758();
  sub_221BCD748();
  swift_getWitnessTable();
  v10 = sub_221BCD3E8();
  MEMORY[0x223DA31F0](v10);

  MEMORY[0x223DA31F0](0x657669746361202CLL, 0xEA0000000000203ALL);
  if (v6)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v6)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v11, v12);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v7;
}

void sub_221BC04A4()
{
  v1 = v0;
  OUTLINED_FUNCTION_1_57();
  os_unfair_lock_lock((v0 + 64));
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_1_57();
  v5 = *(v4 + 96);
  if (*(v0 + 72) == 1)
  {
    *(v0 + 72) = 0;
    type metadata accessor for Assertable.ManagedObject.State(0, v2, v3, v5);
    j__os_unfair_lock_unlock((v0 + 64));
    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v6 = sub_221BCCD88();
    __swift_project_value_buffer(v6, qword_27CFDEDF8);

    v7 = sub_221BCCD68();
    v8 = sub_221BCDA68();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315394;
      v11 = static Instrumentation.currentActivityId.getter();
      v13 = sub_2219A6360(v11, v12, &v18);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;

      swift_getWitnessTable();
      v14 = sub_221BCD3E8();
      v16 = sub_2219A6360(v14, v15, &v18);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_221989000, v7, v8, "%sReleasing object for %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v10, -1, -1);
      MEMORY[0x223DA4C00](v9, -1, -1);
    }

    v17 = *(v1 + 48);
    if (v17)
    {
      v17(v1);
    }
  }

  else
  {
    type metadata accessor for Assertable.ManagedObject.State(0, v2, v3, v5);

    j__os_unfair_lock_unlock((v0 + 64));
  }
}

void sub_221BC0770()
{
  v1 = *v0;
  os_unfair_lock_lock((v0 + 64));
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = sub_221BCD9A8();
  type metadata accessor for Assertable.ManagedObject.State(0, v2, v3, v4);
  j__os_unfair_lock_unlock((v0 + 64));
  if (!v5)
  {

    sub_221BC04A4();
  }
}

uint64_t *sub_221BC0858()
{
  v1 = v0;
  v2 = *v0;
  sub_22198B60C(v1[2], v1[3]);
  sub_22198B60C(v1[4], v1[5]);
  sub_22198B60C(v1[6], v1[7]);
  type metadata accessor for Assertable.ManagedObject.State(255, v2[10], v2[11], v2[12]);
  v3 = sub_221BCC898();
  sub_221BB7E98(v3);
  v4 = qword_27CFBCA50;
  v5 = sub_221BCC558();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_221BC0940()
{
  v0 = sub_221BC0858();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *sub_221BC09B8()
{
  type metadata accessor for Assertable.ManagedObject(255, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  sub_221BCD2D8();
  OUTLINED_FUNCTION_6_13();
  v1 = sub_221BCC898();
  sub_221BB7E98(v1);
  sub_221BCD2D8();
  OUTLINED_FUNCTION_6_13();
  v2 = sub_221BCC898();
  sub_221BB7E98(v2);
  return v0;
}

uint64_t sub_221BC0A94()
{
  sub_221BC09B8();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_221BC0AC8()
{

  sub_221BC0770();

  return v0;
}

uint64_t sub_221BC0B0C()
{
  sub_221BC0AC8();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_221BC0B58(uint64_t a1)
{
  result = sub_221BCC558();
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

uint64_t sub_221BC0C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221BC0CD0()
{
  v0 = sub_221BC019C();
  MEMORY[0x223DA31F0](v0);

  MEMORY[0x223DA31F0](62, 0xE100000000000000);
  return 0x617472657373413CLL;
}

uint64_t sub_221BC0D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Cache.State(255, *(a1 + 80), a3, a4);
  sub_221BCDC98();
  result = sub_221BCC888();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_221BC0E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_221BCDFB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC728, &unk_221BE9640);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC730, &unk_221BE9F00);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  sub_221BC17C8(a1, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2219A6860(v10, &qword_27CFBC728, &unk_221BE9640);
  }

  else
  {
    v21[1] = v2;
    sub_221BC1838(v10, v13);
    sub_221BCDF88();
    sub_221BCDFA8();
    (*(v5 + 8))(v7, v4);
    if (sub_221BCE408())
    {
      v14 = v13[*(v11 + 28)];
      sub_2219A6860(v13, &qword_27CFBC730, &unk_221BE9F00);
      return v14;
    }

    sub_2219A6860(v13, &qword_27CFBC730, &unk_221BE9F00);
  }

  v15 = [objc_opt_self() currentUser];
  v16 = [v15 state];

  v17 = [v16 biometry];
  if (v17)
  {
    v18 = v17;
    if ([v17 isEnrolled])
    {
      v14 = [v18 isLockedOut];
      v19 = v16;
      v16 = v18;
    }

    else
    {
      v14 = 0;
      v19 = v18;
    }
  }

  else
  {
    v14 = 0;
  }

  sub_2219A6860(a1, &qword_27CFBC728, &unk_221BE9640);
  sub_221BCDF98();
  *(a1 + *(v11 + 28)) = v14;
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
  return v14;
}

uint64_t sub_221BC1168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Cache.State(255, *(*v4 + 80), a3, a4);
  sub_221BCDC98();
  sub_221BCC888();
  v5 = sub_221BCC898();
  sub_221BB7E98(v5);
  return v4;
}

uint64_t sub_221BC1200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_221BC1168(a1, a2, a3, a4);
  v5 = *(*v4 + 48);
  v6 = *(*v4 + 52);

  return MEMORY[0x2821FE8D8](v4, v5, v6);
}

uint64_t sub_221BC1288(uint64_t a1)
{
  result = sub_221BCDFB8();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_221BC1310(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_221BCDFB8();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v23 = a1;
      v8 = v14;
    }

    else
    {
      v23 = ((a1 + v15) & ~v12);
      v7 = v10;
    }

    return __swift_getEnumTagSinglePayload(v23, v7, v8);
  }

  v16 = (v15 & ~v12) + v13;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_24;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_221BC1528(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_221BCDFB8();
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(v10 + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v11 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v9 = v8;
          }

          else
          {
            v24 = (&a1[v15] & ~v14);
            v25 = a2;
            v11 = v12;
          }

          __swift_storeEnumTagSinglePayload(v24, v25, v11, v9);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_221BC17C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC728, &unk_221BE9640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221BC1838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC730, &unk_221BE9F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Entitlement.Validator.validate()()
{
  v1 = v0;
  v2 = type metadata accessor for Entitlement.Validator(0);
  v3 = *(v0 + *(v2 + 20));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      sub_2219A1B08(v5, &v49);
      v7 = v51;
      v8 = v52;
      __swift_project_boxed_opaque_existential_0(&v49, v51);
      OUTLINED_FUNCTION_1_58();
      v9(v7, v8);
      if (v48 >= 2)
      {
        __swift_destroy_boxed_opaque_existential_0(&v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_21_7();
          sub_2219B3AFC();
          v6 = v12;
        }

        v10 = *(v6 + 16);
        if (v10 >= *(v6 + 24) >> 1)
        {
          sub_2219B3AFC();
          v6 = v13;
        }

        *(v6 + 16) = v10 + 1;
        v11 = v6 + 16 * v10;
        *(v11 + 32) = v47;
        *(v11 + 40) = v48;
      }

      else
      {
        sub_221BC29C0(v47, v48);
        __swift_destroy_boxed_opaque_existential_0(&v49);
      }

      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  if (*(v6 + 16))
  {
    v49 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    sub_2219998AC();
    OUTLINED_FUNCTION_7_27();
    v14 = sub_221BCD328();
    v16 = v15;

    v49 = 0xD000000000000022;
    v50 = 0x8000000221BF2210;
    MEMORY[0x223DA31F0](v14, v16);

    v18 = v49;
    v17 = v50;

    v19 = sub_221BCCD68();
    v20 = sub_221BCDA78();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = 136315138;
      v23 = sub_2219A6360(v18, v17, &v49);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_221989000, v19, v20, "%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }

    else
    {
    }
  }

  else
  {
  }

  v24 = *(v1 + *(v2 + 24));
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v24 + 32;
    v27 = MEMORY[0x277D84F90];
    do
    {
      sub_2219A1B08(v26, &v49);
      v28 = v51;
      v29 = v52;
      __swift_project_boxed_opaque_existential_0(&v49, v51);
      OUTLINED_FUNCTION_1_58();
      v30(v28, v29);
      if (v48 >= 2)
      {
        __swift_destroy_boxed_opaque_existential_0(&v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_21_7();
          sub_2219B3AFC();
          v27 = v33;
        }

        v31 = *(v27 + 16);
        if (v31 >= *(v27 + 24) >> 1)
        {
          sub_2219B3AFC();
          v27 = v34;
        }

        *(v27 + 16) = v31 + 1;
        v32 = v27 + 16 * v31;
        *(v32 + 32) = v47;
        *(v32 + 40) = v48;
      }

      else
      {
        sub_221BC29C0(v47, v48);
        __swift_destroy_boxed_opaque_existential_0(&v49);
      }

      v26 += 40;
      --v25;
    }

    while (v25);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  if (*(v27 + 16))
  {
    v49 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    sub_2219998AC();
    OUTLINED_FUNCTION_7_27();
    v35 = sub_221BCD328();
    v49 = 0xD00000000000001FLL;
    v50 = 0x8000000221BF2240;
    MEMORY[0x223DA31F0](v35);

    v37 = v49;
    v36 = v50;

    v38 = sub_221BCCD68();
    v39 = sub_221BCDA78();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      *v40 = 136315138;
      v42 = sub_2219A6360(v37, v36, &v49);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_221989000, v38, v39, "%s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }

    else
    {
    }

    sub_2219ACB94(v43, v44, v45);
    swift_allocError();
    *v46 = v27;
    *(v46 + 8) = 0;
    *(v46 + 16) = 4;
    swift_willThrow();
  }

  else
  {
  }
}

AppIntentsServices::Entitlement __swiftcall Entitlement.init(key:)(AppIntentsServices::Entitlement::Constants key)
{
  v2 = v1;
  v3 = Entitlement.Constants.rawValue.getter();
  *v2 = v3;
  v2[1] = v4;
  result.key._object = v4;
  result.key._countAndFlagsBits = v3;
  return result;
}

double Entitlement.isTrue()@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t Entitlement.Predicate.exceptOn(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  OUTLINED_FUNCTION_0_7();
  MEMORY[0x28223BE20](v8);
  v10 = OUTLINED_FUNCTION_2_42(v9, v17);
  v11(v10);

  v15 = sub_221BC2240(v12, v13, v14);
  return Entitlement.PlatformFilter.init<A>(_:allowedPlatforms:deniedPlatforms:)(v4, 0, v15, a2, a3, x8_0);
}

uint64_t Entitlement.Predicate.on(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  OUTLINED_FUNCTION_0_7();
  MEMORY[0x28223BE20](v8);
  v10 = OUTLINED_FUNCTION_2_42(v9, v17);
  v11(v10);

  v15 = sub_221BC2240(v12, v13, v14);
  return Entitlement.PlatformFilter.init<A>(_:allowedPlatforms:deniedPlatforms:)(v4, v15, 0, a2, a3, x8_0);
}

AppIntentsServices::Entitlement::Contains __swiftcall Entitlement.contains(_:)(AppIntentsServices::Entitlement::Constants a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
  OUTLINED_FUNCTION_268_1();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_221BD19E0;
  *(v6 + 32) = Entitlement.Constants.rawValue.getter();
  *(v6 + 40) = v7;
  *v3 = v5;
  v3[1] = v4;
  v3[2] = v6;

  result.values._rawValue = v10;
  result.entitlement.key._object = v9;
  result.entitlement.key._countAndFlagsBits = v8;
  return result;
}

double static Entitlement.anyOf(_:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

AppIntentsServices::Entitlement::Contains __swiftcall Entitlement.Contains.contains(_:)(AppIntentsServices::Entitlement::Constants a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = Entitlement.Constants.rawValue.getter();
  *(inited + 40) = v8;

  sub_221BC3A48(inited);
  *v3 = v5;
  v3[1] = v4;
  v3[2] = v6;
  result.values._rawValue = v11;
  result.entitlement.key._object = v10;
  result.entitlement.key._countAndFlagsBits = v9;
  return result;
}

uint64_t Entitlement.Validator.init(logger:requiredEntitlements:recommendedEntitlements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_221BCCD88();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for Entitlement.Validator(0);
  *(a4 + *(result + 20)) = a3;
  *(a4 + *(result + 24)) = a2;
  return result;
}

uint64_t sub_221BC2180(uint64_t a1)
{
  result = MEMORY[0x223DA36E0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_221BBA42C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_221BC2240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_221BC415C(a1, a2, a3);
  v6 = MEMORY[0x223DA36E0](v4, &type metadata for Entitlement.PlatformFilter.Platform, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      sub_221BBA574(&v11, *(a1 + v8++));
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

void sub_221BC22D8(uint64_t a1)
{
  v2 = sub_2219A69A0();
  v3 = sub_221BC40D0();
  v4 = sub_221BC4114(&qword_27CFBC948, sub_221BC40D0, MEMORY[0x277D85378]);
  v15 = MEMORY[0x223DA36E0](v2, v3, v4);
  v5 = sub_2219A69A0();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223DA3BF0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_221BBA264(&v14, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_221BC23F4(uint64_t a1)
{
  v2 = sub_221BCC418();
  OUTLINED_FUNCTION_0_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  v12 = sub_221BC4114(&qword_27CFBC9A8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v13 = MEMORY[0x223DA36E0](v11, v2, v12);
  v24 = v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v17 = *(v4 + 16);
    v15 = v4 + 16;
    v16 = v17;
    v18 = (*(v15 + 64) + 32) & ~*(v15 + 64);
    v23 = a1;
    v19 = a1 + v18;
    v20 = *(v15 + 56);
    do
    {
      v16(v7, v19, v2);
      sub_221BBAC9C();
      (*(v15 - 8))(v10, v2);
      v19 += v20;
      --v14;
    }

    while (v14);

    return v24;
  }

  else
  {
    v21 = v13;
  }

  return v21;
}

AppIntentsServices::Entitlement::Contains __swiftcall Entitlement.contains(string:)(Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v5 = v1;
  v7 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
  OUTLINED_FUNCTION_268_1();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_221BD19E0;
  *(v8 + 32) = countAndFlagsBits;
  *(v8 + 40) = object;
  *v5 = v7;
  v5[1] = v6;
  v5[2] = v8;

  result.values._rawValue = v11;
  result.entitlement.key._object = v10;
  result.entitlement.key._countAndFlagsBits = v9;
  return result;
}

unint64_t Entitlement.Constants.rawValue.getter()
{
  result = 0xD00000000000002BLL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000002CLL;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 0xC:
    case 0x19:
      result = 0xD000000000000025;
      break;
    case 5:
    case 0xD:
    case 0xF:
    case 0x11:
    case 0x12:
      result = 0xD000000000000024;
      break;
    case 6:
      result = 0xD00000000000002FLL;
      break;
    case 7:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
    case 0xA:
      result = 0xD000000000000018;
      break;
    case 0xB:
      result = 0xD00000000000001ALL;
      break;
    case 0xE:
      result = 0xD000000000000020;
      break;
    case 0x10:
      result = 0xD000000000000026;
      break;
    case 0x13:
      result = 0xD00000000000003FLL;
      break;
    case 0x14:
      result = 0xD000000000000040;
      break;
    case 0x15:
      result = 0xD000000000000034;
      break;
    case 0x16:
      result = 0xD000000000000023;
      break;
    case 0x17:
      result = 0xD000000000000029;
      break;
    case 0x18:
      result = 0xD000000000000016;
      break;
    case 0x1A:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

id sub_221BC2854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_opt_self();
  v7 = sub_221BCD358();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v12[4] = sub_221BC41B0;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221BC2A64;
  v12[3] = &block_descriptor_15;
  v9 = _Block_copy(v12);

  v10 = [v6 validateEntitlement:v7 forCurrentTaskWithValidator:v9];
  _Block_release(v9);

  return v10;
}

uint64_t type metadata accessor for Entitlement.Validator(uint64_t a1)
{
  result = qword_27CFBCCF0;
  if (!qword_27CFBCCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221BC29C0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_221BC29D4(uint64_t a1, uint64_t (*a2)(void *))
{
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF8, &qword_221BE6A00);
  v5[0] = swift_allocObject();
  sub_221BC4238(a1, v5[0] + 16);
  LOBYTE(a2) = a2(v5);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return a2 & 1;
}

uint64_t sub_221BC2A64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v6 = a2;
    sub_2219A1AB0(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  swift_unknownObjectRetain();
  v4 = v3(v8);

  sub_221BC41D0(v8);
  return v4 & 1;
}

uint64_t (*static Entitlement.validatorClosure.getter())()
{
  OUTLINED_FUNCTION_106_3(&off_2817DA010, v2);
  v0 = off_2817DA010;

  return v0;
}

uint64_t static Entitlement.validatorClosure.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_2817DA010 = a1;
  qword_2817DA018 = a2;
}

uint64_t static Entitlement.PredicateResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 1)
  {
    if (v5 == 1)
    {
      goto LABEL_10;
    }
  }

  else if (v3)
  {
    if (v5 >= 2)
    {

LABEL_10:
      v6 = 1;
      goto LABEL_11;
    }
  }

  else if (!v5)
  {
    goto LABEL_10;
  }

  sub_221BC3B00(*a1, v3);
  v6 = 0;
LABEL_11:
  sub_221BC3B00(v4, v5);
  sub_221BC29C0(v2, v3);
  sub_221BC29C0(v4, v5);
  return v6;
}

void Entitlement.AnyOf.evaluate()(uint64_t *a1@<X8>)
{
  v3 = 0;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1 + 32;
  v7 = MEMORY[0x277D84F90];
LABEL_2:
  v8 = v6 + 40 * v3;
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    sub_2219A1B08(v8, v21);
    v9 = v22;
    v10 = v23;
    __swift_project_boxed_opaque_existential_0(v21, v22);
    OUTLINED_FUNCTION_1_58();
    v11(v9, v10);
    __swift_destroy_boxed_opaque_existential_0(v21);
    if (v20 != 1)
    {
      if (!v20)
      {

        *a1 = v19;
        a1[1] = 0;
        return;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21_7();
        sub_2219B3AFC();
        v7 = v14;
      }

      v12 = *(v7 + 16);
      if (v12 >= *(v7 + 24) >> 1)
      {
        sub_2219B3AFC();
        v7 = v15;
      }

      ++v3;
      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v19;
      *(v13 + 40) = v20;
      goto LABEL_2;
    }

    v8 += 40;
    ++v3;
  }

  if (*(v7 + 16))
  {
    v21[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    sub_2219998AC();
    v16 = sub_221BCD328();
    v18 = v17;

    *a1 = v16;
    a1[1] = v18;
  }

  else
  {

    *a1 = xmmword_221BD04D0;
  }
}

AppIntentsServices::Entitlement::Contains __swiftcall Entitlement.Contains.contains(string:)(Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v5 = v1;
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = countAndFlagsBits;
  *(inited + 40) = object;

  sub_221BC3A48(inited);
  *v5 = v7;
  v5[1] = v6;
  v5[2] = v8;
  result.values._rawValue = v12;
  result.entitlement.key._object = v11;
  result.entitlement.key._countAndFlagsBits = v10;
  return result;
}

uint64_t Entitlement.Contains.evaluate()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_106_3(&off_2817DA010, v17);
  v7 = off_2817DA010;
  OUTLINED_FUNCTION_268_1();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v5;

  (v7)(v3, v4, sub_221BC3B14, v8);

  OUTLINED_FUNCTION_106_3(v6 + 16, v16);
  if (*(*(v6 + 16) + 16))
  {
    sub_221BCDE68();

    v15 = v4;
    MEMORY[0x223DA31F0](0xD000000000000010, 0x8000000221BF2260);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    sub_2219998AC();
    v9 = sub_221BCD328();
    v11 = v10;

    MEMORY[0x223DA31F0](v9, v11);

    v13 = v3;
    v14 = v15;
  }

  else
  {

    v13 = 0;
    v14 = 0;
  }

  *a1 = v13;
  a1[1] = v14;
  return result;
}

uint64_t sub_221BC3128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22199B650(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
  result = swift_dynamicCast();
  if (result)
  {
    v24 = a2;
    v8 = 0;
    v9 = v26;
    v10 = *(a5 + 16);
    v11 = a5 + 40;
    v25 = MEMORY[0x277D84F90];
    v23 = a5 + 40;
LABEL_3:
    for (i = (v11 + 16 * v8); ; i += 2)
    {
      if (v10 == v8)
      {

        v20 = v24;
        swift_beginAccess();
        v21 = v25;
        *(v20 + 16) = v25;

        return *(v21 + 16) == 0;
      }

      if (v8 >= v10)
      {
        break;
      }

      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v14 = *(i - 1);
      v15 = *i;
      v27[0] = v14;
      v27[1] = v15;
      MEMORY[0x28223BE20](result);
      v22[2] = v27;

      if (!sub_221A14908(sub_221A14BBC, v22, v9))
      {
        v16 = v25;
        result = swift_isUniquelyReferenced_nonNull_native();
        v26 = v16;
        if ((result & 1) == 0)
        {
          result = sub_2219A2FB4(0, *(v16 + 16) + 1, 1);
          v16 = v26;
        }

        v11 = v23;
        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_2219A2FB4((v17 > 1), v18 + 1, 1);
          v11 = v23;
          v16 = v26;
        }

        *(v16 + 16) = v18 + 1;
        v25 = v16;
        v19 = v16 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v15;
        v8 = v13;
        goto LABEL_3;
      }

      ++v8;
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *(a2 + 16) = a5;

    return 0;
  }

  return result;
}

uint64_t Entitlement.IsTrue.evaluate()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  OUTLINED_FUNCTION_106_3(&off_2817DA010, v9);
  v5 = off_2817DA010;

  LOBYTE(v5) = (v5)(v3, v4, sub_221BC3464, 0);

  v7 = 0;
  v8 = 0;
  if ((v5 & 1) == 0)
  {
    sub_221BCDE68();

    result = MEMORY[0x223DA31F0](0x20646C756F687320, 0xEF65757274206562);
    v7 = v3;
    v8 = v4;
  }

  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t Entitlement.PlatformFilter.Platform.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

uint64_t Entitlement.PlatformFilter.init<A>(_:allowedPlatforms:deniedPlatforms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  OUTLINED_FUNCTION_0_7();
  v13 = v12;
  v14 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  result = (*(v13 + 32))(&v15[v14], a1, a4);
  *a6 = sub_221BC3B20;
  a6[1] = v15;
  return result;
}

uint64_t sub_221BC3638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  if (!a1 || (result = sub_2219EAD04(1u, a1), (result & 1) != 0))
  {
    if (!a2)
    {
      return (*(a4 + 8))(a3, a4);
    }

    result = sub_2219EAD04(1u, a2);
    if ((result & 1) == 0)
    {
      return (*(a4 + 8))(a3, a4);
    }
  }

  *a5 = xmmword_221BD04D0;
  return result;
}

Swift::Bool __swiftcall Entitlement.Validator.evaluateRequiredEntitlements()()
{
  v1 = type metadata accessor for Entitlement.Validator(0);
  v2 = 0;
  v3 = *(v0 + *(v1 + 24));
  v4 = *(v3 + 16);
  for (i = v3 + 32; ; i += 40)
  {
    if (v4 == v2)
    {
      goto LABEL_7;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    sub_2219A1B08(i, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    OUTLINED_FUNCTION_1_58();
    v8(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v12);
    if (v11 >= 2)
    {
      sub_221BC29C0(v10, v11);
LABEL_7:
      LOBYTE(v1) = v4 == v2;
      return v1;
    }

    ++v2;
    LOBYTE(v1) = sub_221BC29C0(v10, v11);
  }

  __break(1u);
  return v1;
}

AppIntentsServices::Entitlement::Constants_optional __swiftcall Entitlement.Constants.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_221BCE1F8();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
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
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_221BC3964@<X0>(unint64_t *a1@<X8>)
{
  result = Entitlement.Constants.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_221BC398C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_35(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_221BC4058(v4, 1, sub_2219B3BB4);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_32();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_221BC3A48(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_35(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_221BC4058(v4, 1, sub_2219B3AFC);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_32();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

double sub_221BC3B00(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_221BC3B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCCE0;
  if (!qword_27CFBCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCCE0);
  }

  return result;
}

unint64_t sub_221BC3BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCCE8;
  if (!qword_27CFBCCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCCE8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices11EntitlementV15PredicateResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_221BC3C4C(uint64_t a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Entitlement.PlatformFilter.Platform(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void sub_221BC3DF4(uint64_t a1)
{
  sub_221BCCD88();
  if (v1 <= 0x3F)
  {
    sub_221BC3E78(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_221BC3E78(uint64_t a1)
{
  if (!qword_27CFBCD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFBCD08, &qword_221BEA210);
    v1 = sub_221BCD748();
    if (!v2)
    {
      atomic_store(v1, &qword_27CFBCD00);
    }
  }
}

uint64_t getEnumTagSinglePayload for Entitlement.Constants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Entitlement.Constants(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_221BC4058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_221BC40D0()
{
  result = unk_27CFBB670;
  if (!unk_27CFBB670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &unk_27CFBB670);
  }

  return result;
}

uint64_t sub_221BC4114(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_221BC415C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCD10;
  if (!qword_27CFBCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCD10);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_221BC41D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF8, &qword_221BE6A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221BC4238(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF8, &qword_221BE6A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221BC4328(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a5;
  v62 = a4;
  v63 = a3;
  v9 = sub_221BCC418();
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CFB73C8 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v15 = sub_221BCCD88();
  v16 = __swift_project_value_buffer(v15, qword_27CFDEEA0);
  v17 = sub_221BCDA68();
  (*(v11 + 16))(v14, a1, v9);
  v61 = v16;
  v18 = sub_221BCCD68();
  v60 = v17;
  v19 = os_log_type_enabled(v18, v17);
  v70 = a2;
  if (v19)
  {
    OUTLINED_FUNCTION_285();
    v20 = swift_slowAlloc();
    v59[1] = a1;
    v21 = v20;
    v59[0] = swift_slowAlloc();
    *v66 = v59[0];
    *v21 = 136446722;
    sub_221BC5200();
    v22 = sub_221BCE168();
    v23 = a6;
    v25 = v24;
    (*(v11 + 8))(v14, v9);
    v26 = sub_2219A6360(v22, v25, v66);
    a6 = v23;
    v27 = v65;
    LOBYTE(a2) = v70;

    *(v21 + 4) = v26;
    *(v21 + 12) = 2082;
    if (a2)
    {
      v28 = 0x6972772D64616572;
    }

    else
    {
      v28 = 0x6C6E6F2D64616572;
    }

    if (a2)
    {
      v29 = 0xEA00000000006574;
    }

    else
    {
      v29 = 0xE900000000000079;
    }

    v30 = sub_2219A6360(v28, v29, v66);

    *(v21 + 14) = v30;
    *(v21 + 22) = 2080;
    v31 = v62;
    v32 = v63;
    *&v67 = v63;
    *(&v67 + 1) = v62;
    v68 = v27;
    v69 = a6;
    type metadata accessor for audit_token_t(0);
    v33 = sub_221BCD3D8();
    v35 = sub_2219A6360(v33, v34, v66);

    *(v21 + 24) = v35;
    _os_log_impl(&dword_221989000, v18, v60, "Issue extension to: %{public}s with permissions: %{public}s for process with audit token: %s", v21, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  else
  {

    (*(v11 + 8))(v14, v9);
    v31 = v62;
    v32 = v63;
  }

  result = sub_221BCC3D8();
  v37 = result;
  v39 = v38;
  if (a2)
  {
    if (*MEMORY[0x277D861C0])
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (!*MEMORY[0x277D861B8])
  {
    __break(1u);
    return result;
  }

LABEL_16:
  sub_221BCD408();
  *&v67 = v32;
  *(&v67 + 1) = v31;
  v68 = v65;
  v69 = a6;
  v40 = v32;
  v41 = sandbox_extension_issue_file_to_process();

  if (v41)
  {

    v43 = sub_221BCCD68();
    v44 = sub_221BCDA98();
    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_285();
      v45 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v66 = v62;
      *v45 = 141558531;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      v46 = sub_221BCD4B8();
      v48 = sub_2219A6360(v46, v47, v66);

      *(v45 + 14) = v48;
      *(v45 + 22) = 2080;
      *&v67 = v63;
      *(&v67 + 1) = v31;
      v68 = v65;
      v69 = a6;
      type metadata accessor for audit_token_t(0);
      v49 = sub_221BCD3D8();
      v51 = sub_2219A6360(v49, v50, v66);

      *(v45 + 24) = v51;
      _os_log_impl(&dword_221989000, v43, v44, "The extension token “%{private,mask.hash}s” was issued to the process with the audit token “%s”.", v45, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    v39 = sub_221BCD4B8();
    free(v41);
  }

  else
  {
    v52 = MEMORY[0x223DA2AE0](v42);
    v53 = v52;
    v71 = 0;
    LOBYTE(v67) = v70 & 1;
    *(&v67 + 4) = v40;
    *v66 = a6;
    v66[8] = 0;
    *&v67 = v67 & 0xFFFFFFFF00000001;
    *&v66[4] = *&v66[4] & 0x1FFFFFFFFLL | 0x8000000000000000;
    sub_221BC5258(v52, v54, v55);
    v56 = swift_allocError();
    *v57 = v37;
    *(v57 + 8) = v39;
    *(v57 + 16) = v67;
    *(v57 + 24) = DWORD2(v67);
    *(v57 + 28) = v31;
    v58 = *v66;
    *(v57 + 36) = v65;
    *(v57 + 44) = v58;
    *(v57 + 52) = *&v66[8];
    *(v57 + 56) = v53;
    v64 = v56;
    swift_willThrow();
  }

  return v39;
}

uint64_t sub_221BC48B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_221BCC418();
  OUTLINED_FUNCTION_0_2();
  v56 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  if (sub_221BCC348())
  {
    v18 = sub_221BCC388();
    v19 = MEMORY[0x223DA42E0]();

    if (!v19)
    {
LABEL_18:
      v48 = sub_221BCC388();
      sub_221BC4DBC(a1, a2, v57);
      v49 = v57[0];
      v50 = v57[1];
      v51 = sub_221BCC448();
      sub_2219EC040(v49, v50);
      MEMORY[0x223DA42D0](v48, v51);

      v52 = OUTLINED_FUNCTION_2_43();
      return v53(v52);
    }

    if (a3)
    {
      v55 = a4;
      if (qword_27CFB73C8 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v20 = sub_221BCCD88();
      __swift_project_value_buffer(v20, qword_27CFDEEA0);
      (*(v56 + 16))(v17, v5, v10);
      v21 = sub_221BCCD68();
      v22 = sub_221BCDA98();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        OUTLINED_FUNCTION_285();
        v54 = swift_slowAlloc();
        v57[0] = v54;
        *v23 = 136315138;
        sub_221BC5200();
        v24 = sub_221BCE168();
        v26 = v25;
        v27 = OUTLINED_FUNCTION_5_33();
        v28(v27);
        v29 = sub_2219A6360(v24, v26, v57);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_221989000, v21, v22, "Attaching a sandbox extension to a file URL that already has one attached; the existing one will be replaced: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      else
      {

        v46 = OUTLINED_FUNCTION_5_33();
        v47(v46);
      }

      goto LABEL_18;
    }

    v44 = OUTLINED_FUNCTION_2_43();

    return v45(v44);
  }

  else
  {
    if (qword_27CFB73C8 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v30 = sub_221BCCD88();
    __swift_project_value_buffer(v30, qword_27CFDEEA0);
    v31 = *(v56 + 16);
    v31(v14, v4, v10);
    v32 = sub_221BCCD68();
    v33 = sub_221BCDA78();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v54 = v31;
      v35 = v34;
      OUTLINED_FUNCTION_285();
      v36 = swift_slowAlloc();
      v57[0] = v36;
      *v35 = 136315138;
      v37 = sub_221BCC368();
      v55 = v5;
      v38 = v10;
      v40 = v39;
      (*(v56 + 8))(v14, v38);
      v41 = sub_2219A6360(v37, v40, v57);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_221989000, v32, v33, "Sandbox extensions are only supported on file URLs. URL: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v31 = v54;
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      (*(v56 + 8))(v14, v10);
    }

    v42 = OUTLINED_FUNCTION_2_43();
    return (v31)(v42);
  }
}

size_t sub_221BC4D6C@<X0>(const char *a1@<X0>, size_t *a2@<X8>)
{
  result = strlen(a1);
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x223DA21C0](a1, result + 1);
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_221BC4DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_221BCDE58();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9[0] = a1;
    v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    result = strlen(v9);
    v6 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v7 = v9;
      goto LABEL_8;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_221BCDE58();
  }

  v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
  result = strlen(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
  v6 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_12;
  }

  v7 = (v4 + 32);
LABEL_8:
  result = MEMORY[0x223DA21C0](v7, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_221BC4E80(char a1)
{
  if (a1)
  {
    return 0x6972772D64616572;
  }

  else
  {
    return 0x6C6E6F2D64616572;
  }
}

uint64_t sub_221BC4EC8()
{
  result = sub_221BC4F00();
  if (!v2)
  {
    sub_221BC53D0(v0, &v3);
    return sub_2219989AC(v0);
  }

  return result;
}

uint64_t sub_221BC4F00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  *v12 = *(v0 + 44);
  *&v12[8] = *(v0 + 13);
  if ((*&v12[4] & 0x8000000000000000) != 0)
  {
    sub_221BCDE68();
    MEMORY[0x223DA31F0](0x1000000000000033, 0x8000000221BF2280);
    if ((*&v12[4] & 0x7FFFFFFFFFFFFFFFLL & 0x100000000) != 0)
    {
      v6 = 0xE500000000000000;
      v7 = 0x3E6C696E3CLL;
    }

    else
    {
      type metadata accessor for audit_token_t(0);
      v7 = sub_221BCD3D8();
      v6 = v8;
    }

    MEMORY[0x223DA31F0](v7, v6);

    MEMORY[0x223DA31F0](0x100000000000001ELL, 0x8000000221BF22C0);
    MEMORY[0x223DA31F0](v1, v2);
    MEMORY[0x223DA31F0](0x68746977209D80E2, 0xAC0000009C80E220);
    if (v3)
    {
      v9 = 0x6972772D64616572;
    }

    else
    {
      v9 = 0x6C6E6F2D64616572;
    }

    if (v3)
    {
      v10 = 0xEA00000000006574;
    }

    else
    {
      v10 = 0xE900000000000079;
    }

    MEMORY[0x223DA31F0](v9, v10);

    MEMORY[0x223DA31F0](0x1000000000000011, 0x8000000221BF22E0);
    v11 = sub_221BCCDA8();
    MEMORY[0x223DA31F0](v11);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0;
  }

  else
  {
    sub_221BCDE68();

    v4 = sub_221BCCDA8();
    MEMORY[0x223DA31F0](v4);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x100000000000002BLL;
  }
}

unint64_t sub_221BC5200()
{
  result = qword_27CFB9278;
  if (!qword_27CFB9278)
  {
    sub_221BCC418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9278);
  }

  return result;
}

unint64_t sub_221BC5258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCD18;
  if (!qword_27CFBCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCD18);
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_221BC52D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 60))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 48) >> 2) & 0x80000000 | (*(a1 + 16) >> 1);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_221BC5324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-2 * a2);
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0x200000000;
      *(result + 56) = 0;
      return result;
    }

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221BC539C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 0x1FFFFFFFFLL | (a2 << 63);
  *(result + 16) &= 0xFFFFFFFF00000001;
  *(result + 48) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Sandbox.Permissions(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_221BC54F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCD20;
  if (!qword_27CFBCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCD20);
  }

  return result;
}

uint64_t sub_221BC5570(uint64_t result)
{
  if (result < 0)
  {
    goto LABEL_18;
  }

  v1 = result;
  v2 = MEMORY[0x277D84F90];
  if (!result)
  {
LABEL_15:
    v13 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBCD28, &qword_221BEA478);
    sub_221BC574C();
    return sub_221BCD568();
  }

  v13 = MEMORY[0x277D84F90];
  sub_2219A3094(0, result, 0);
  v3 = 0;
  v2 = v13;
  while (1)
  {
    if (("en couldn’t be consumed (" & 0x2F00000000000000) == 0x2000000000000000)
    {
      v4 = 0xE100000000000000;
      v5 = 95;
      goto LABEL_12;
    }

    result = sub_221BCD458();
    if (result < 0)
    {
      break;
    }

    v6 = result;
    if (!result)
    {
      goto LABEL_17;
    }

    v12 = 0;
    MEMORY[0x223DA4C20](&v12, 8);
    if (v6 > v12 * v6)
    {
      v7 = -v6 % v6;
      while (v7 > v12 * v6)
      {
        v12 = 0;
        MEMORY[0x223DA4C20](&v12, 8);
      }
    }

    sub_221BCD488();
    v5 = sub_221BCD558();
    v4 = v8;
LABEL_12:
    v13 = v2;
    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_2219A3094((v9 > 1), v10 + 1, 1);
      v2 = v13;
    }

    ++v3;
    *(v2 + 16) = v10 + 1;
    v11 = v2 + 16 * v10;
    *(v11 + 32) = v5;
    *(v11 + 40) = v4;
    if (v3 == v1)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_221BC574C()
{
  result = qword_280FA8EF0;
  if (!qword_280FA8EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFBCD28, &qword_221BEA478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA8EF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentsServices(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_221BC585C(void *__src, uint64_t a2)
{
  if (*(__src + 15))
  {
    memcpy(__dst, __src, sizeof(__dst));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_221B9F788(__dst, a2, isUniquelyReferenced_nonNull_native, v5, v6, v7, v8, v9, *v2, __dst[0], __dst[1], __dst[2]);
    *v2 = v19;
    sub_221BCC558();
    OUTLINED_FUNCTION_11_4();
    return (*(v10 + 8))(a2);
  }

  else
  {
    OUTLINED_FUNCTION_96_4();
    sub_221A01F0C(v12, v13, v14);
    sub_2219A039C(a2, __dst);
    sub_221BCC558();
    OUTLINED_FUNCTION_11_4();
    (*(v15 + 8))(a2);
    OUTLINED_FUNCTION_96_4();
    return sub_221A01F0C(v16, v17, v18);
  }
}

uint64_t sub_221BC5970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2219A1AB0(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_221B9F8D4(v8, a2, a3);

    *v3 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_30_14(a1);
    sub_2219A04D4(v8, a2, a3);

    return OUTLINED_FUNCTION_30_14(v8);
  }

  return result;
}

uint64_t sub_221BC5A34(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE88, &unk_221BE6970);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76D8, &unk_221BE6980);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_97_3();
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    OUTLINED_FUNCTION_30_14(a1);
    sub_2219A09B8(a2, v9);
    sub_221BCC558();
    OUTLINED_FUNCTION_11_4();
    (*(v12 + 8))(a2);
    return OUTLINED_FUNCTION_30_14(v9);
  }

  else
  {
    sub_221BCB5C4(a1, v3, &qword_27CFB76D8, &unk_221BE6980);
    swift_isUniquelyReferenced_nonNull_native();
    v14 = OUTLINED_FUNCTION_22_15();
    sub_221BA0198(v14, v15, v16);
    *v4 = v18[1];
    sub_221BCC558();
    OUTLINED_FUNCTION_11_4();
    return (*(v17 + 8))(a2);
  }
}

uint64_t sub_221BC5BD0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAD8, &unk_221BE55B0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_97_3();
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    OUTLINED_FUNCTION_30_14(a1);
    sub_2219A09DC(a2, v9);
    sub_221BCC558();
    OUTLINED_FUNCTION_11_4();
    (*(v12 + 8))(a2);
    return OUTLINED_FUNCTION_30_14(v9);
  }

  else
  {
    sub_221BCB5C4(a1, v3, &qword_27CFB76C8, &unk_221BE8C60);
    swift_isUniquelyReferenced_nonNull_native();
    v14 = OUTLINED_FUNCTION_22_15();
    sub_221BA01BC(v14, v15, v16);
    *v4 = v18[1];
    sub_221BCC558();
    OUTLINED_FUNCTION_11_4();
    return (*(v17 + 8))(a2);
  }
}

uint64_t sub_221BC5D6C(uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 255)
  {
    OUTLINED_FUNCTION_96_4();
    sub_221A01F0C(v14, v15, v16);
    sub_2219A0B94(a2, v22);
    sub_2219A1878(a2);
    OUTLINED_FUNCTION_96_4();
    return sub_221A01F0C(v17, v18, v19);
  }

  else
  {
    sub_2219A18CC(a1, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = OUTLINED_FUNCTION_24_17(isUniquelyReferenced_nonNull_native, v5, isUniquelyReferenced_nonNull_native, v6, v7, v8, v9, v10, v20, *v2, v22[0]);
    sub_221BA036C(v11, v12);
    result = sub_2219A1878(a2);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_221BC5E98@<X0>(uint64_t *a1@<X8>)
{
  result = IntentsServices.Errors.Code.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t IntentsServices.Errors.errorDescription.getter()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      OUTLINED_FUNCTION_5_34();
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      v11 = 0x2064696C61766E49;
      v6 = OUTLINED_FUNCTION_6_33();
      goto LABEL_12;
    case 4:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      OUTLINED_FUNCTION_5_34();
      v11 = v4 + 5;
      v5 = MEMORY[0x223DA33D0](v1, MEMORY[0x277D837D0]);
      MEMORY[0x223DA31F0](v5);

      return v11;
    case 5:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      OUTLINED_FUNCTION_5_34();
      v3 = v8 | 4;
      goto LABEL_10;
    case 6:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      v11 = 0x7070757320746F4ELL;
      goto LABEL_11;
    case 7:
      OUTLINED_FUNCTION_11_14();
      return 0xD00000000000003DLL;
    case 8:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      OUTLINED_FUNCTION_5_34();
      v3 = v9 + 5;
      goto LABEL_10;
    default:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      OUTLINED_FUNCTION_5_34();
      v3 = v2 - 1;
LABEL_10:
      v11 = v3;
LABEL_11:
      v10 = OUTLINED_FUNCTION_6_33();
      MEMORY[0x223DA31F0](v10);
      v6 = OUTLINED_FUNCTION_11_28();
LABEL_12:
      MEMORY[0x223DA31F0](v6);
      return v11;
  }
}

uint64_t IntentsServices.Errors.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v21 = *v0;
  v22 = v2;
  v23 = v3;
  v4 = IntentsServices.Errors.errorDescription.getter();
  v6 = MEMORY[0x277D84F98];
  if (v5)
  {
    v7 = v4;
    v8 = v5;
    v9 = sub_221BCD388();
    v11 = v10;
    v20 = MEMORY[0x277D837D0];
    *&v19 = v7;
    *(&v19 + 1) = v8;
    sub_2219A1AB0(&v19, v18);
    swift_isUniquelyReferenced_nonNull_native();
    sub_221B9F8D4(v18, v9, v11);
  }

  if (v3 == 7)
  {
    sub_221BCD388();
    v20 = sub_221BC625C();
    *&v19 = v1;
    sub_2219A1AB0(&v19, v18);
    v12 = OUTLINED_FUNCTION_4();
    sub_221BC62A0(v12, v13, 7);
    swift_isUniquelyReferenced_nonNull_native();
    v21 = v6;
    OUTLINED_FUNCTION_96_4();
    sub_221B9F8D4(v14, v15, v16);

    return v21;
  }

  return v6;
}

id IntentsServices.Errors.underlyingError.getter()
{
  if (*(v0 + 16) != 7)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

unint64_t sub_221BC625C()
{
  result = qword_27CFBAF28;
  if (!qword_27CFBAF28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFBAF28);
  }

  return result;
}

void sub_221BC62A0(id a1, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:

      break;
    case 7:
      v3 = a1;
      break;
    default:
      return;
  }
}

uint64_t sub_221BC6308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB8B4(a1, a2, a3);

  return MEMORY[0x28211F4B8](a1, v4);
}

uint64_t sub_221BC6344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB8B4(a1, a2, a3);

  return MEMORY[0x28211F4A8](a1, v4);
}

uint64_t sub_221BC6404@<X0>(uint64_t *a1@<X8>)
{
  result = IntentsServices.ExecutionError.Code.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t IntentsServices.ExecutionError.errorCode.getter()
{
  v1 = *v0;
  result = 205;
  switch(*(v0 + 32))
  {
    case 1:
      result = 211;
      break;
    case 2:
      return result;
    case 3:
      result = 214;
      break;
    case 4:
      result = 207;
      break;
    case 5:
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      if (v4 | v1 | v3)
      {
        v5 = v4 | v3;
        if (v1 == 1 && v5 == 0)
        {
          result = 202;
        }

        else if (v1 == 2 && v5 == 0)
        {
          result = 208;
        }

        else if (v1 != 3 || v5)
        {
          if (v1 != 4 || v5)
          {
            if (v1 != 5 || v5)
            {
              if (v1 != 6 || v5)
              {
                if (v1 != 7 || v5)
                {
                  if (v1 != 8 || v5)
                  {
                    if (v5)
                    {
                      v8 = 0;
                    }

                    else
                    {
                      v8 = v1 == 9;
                    }

                    if (v8)
                    {
                      result = 210;
                    }

                    else
                    {
                      result = 203;
                    }
                  }

                  else
                  {
                    result = 212;
                  }
                }

                else
                {
                  result = 215;
                }
              }

              else
              {
                result = 204;
              }
            }

            else
            {
              result = 216;
            }
          }

          else
          {
            result = 217;
          }
        }

        else
        {
          result = 213;
        }
      }

      else
      {
        result = 201;
      }

      break;
    default:
      result = 206;
      break;
  }

  return result;
}

void IntentsServices.ExecutionError.errorDescription.getter()
{
  v1 = *v0;
  switch(*(v0 + 32))
  {
    case 2:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      OUTLINED_FUNCTION_4_36();
      v3 = [v1 description];
      v4 = sub_221BCD388();
      v6 = v5;

      MEMORY[0x223DA31F0](v4, v6);

      goto LABEL_4;
    case 3:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      OUTLINED_FUNCTION_4_36();
      v8 = OUTLINED_FUNCTION_6_33();
      MEMORY[0x223DA31F0](v8);
      v9 = OUTLINED_FUNCTION_11_28();
      MEMORY[0x223DA31F0](v9);
      v7 = OUTLINED_FUNCTION_26_11();
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      OUTLINED_FUNCTION_4_36();
      v2 = OUTLINED_FUNCTION_6_33();
      MEMORY[0x223DA31F0](v2);
LABEL_4:
      v7 = OUTLINED_FUNCTION_11_28();
      goto LABEL_7;
    case 5:
      OUTLINED_FUNCTION_11_14();
      return;
    default:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      OUTLINED_FUNCTION_4_36();
      v7 = OUTLINED_FUNCTION_6_33();
LABEL_7:
      MEMORY[0x223DA31F0](v7);
      return;
  }
}

uint64_t sub_221BC6894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB860(a1, a2, a3);

  return MEMORY[0x28211F4B8](a1, v4);
}

uint64_t sub_221BC68D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB860(a1, a2, a3);

  return MEMORY[0x28211F4A8](a1, v4);
}

uint64_t sub_221BC6970@<X0>(uint64_t *a1@<X8>)
{
  result = IntentsServices.FileCacheError.Codes.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t IntentsServices.FileCacheError.errorCode.getter()
{
  v1 = *(v0 + 8);
  if (v1 > 2)
  {
    return 801;
  }

  else
  {
    return OUTLINED_FUNCTION_15_22(v1);
  }
}

unint64_t IntentsServices.FileCacheError.errorDescription.getter()
{
  v1 = 0xD000000000000022;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1 || v2 == 2)
    {
      OUTLINED_FUNCTION_11_14();
    }

    else
    {
      v3 = *v0;
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();
      OUTLINED_FUNCTION_19_19();
      MEMORY[0x223DA31F0]();
      MEMORY[0x223DA31F0](v3, v2);
      OUTLINED_FUNCTION_19_19();
      MEMORY[0x223DA31F0]();
      return v5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_14();
    return 0xD000000000000051;
  }

  return v1;
}

uint64_t IntentsServices.FileCacheError.errorUserInfo.getter()
{
  v6 = *v1;
  IntentsServices.FileCacheError.errorDescription.getter();
  if (v2)
  {
    OUTLINED_FUNCTION_183();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221BD19E0;
    *(inited + 32) = sub_221BCD388();
    *(inited + 40) = v4;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v0;
    *(inited + 56) = &v6;
    return sub_221BCD2C8();
  }

  else
  {

    return sub_221BCD2C8();
  }
}

uint64_t sub_221BC6B8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_221BCE1B8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_221BC6C14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000221BF30C0 == a2;
  if (v3 || (sub_221BCE1B8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x46676E6968636163 && a2 == 0xEE006572756C6961;
    if (v6 || (sub_221BCE1B8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461447974706D65 && a2 == 0xED0000656C694661;
      if (v7 || (sub_221BCE1B8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000019 && 0x8000000221BF30E0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_221BCE1B8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_221BC6D90(char a1)
{
  result = 0x46676E6968636163;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7461447974706D65;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_221BC6E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_221BC6B8C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_221BC6E84@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_75_2();
  *a1 = result & 1;
  return result;
}

uint64_t sub_221BC6EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BC9B24(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_221BC6EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BC9B24(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_221BC6F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BC9AD0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_221BC6F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BC9AD0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_221BC6FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_221BC6C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_221BC6FD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_221BC6D88();
  *a1 = result;
  return result;
}

uint64_t sub_221BC6FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BC99D4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_221BC7038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BC99D4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_221BC7074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BC9A7C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_221BC70B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BC9A7C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_221BC70EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BC9A28(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_221BC7128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BC9A28(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t IntentsServices.FileCacheError.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBCD30, &qword_221BEA498);
  OUTLINED_FUNCTION_0_2();
  v47 = v4;
  v48 = v3;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104_2();
  v46 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBCD38, &qword_221BEA4A0);
  OUTLINED_FUNCTION_0_2();
  v44 = v8;
  v45 = v7;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_104_2();
  v43 = v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBCD40, &qword_221BEA4A8);
  OUTLINED_FUNCTION_0_2();
  v40 = v11;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v14 = v38 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBCD48, &qword_221BEA4B0);
  OUTLINED_FUNCTION_0_2();
  v39 = v15;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  v18 = v38 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBCD50, &qword_221BEA4B8);
  OUTLINED_FUNCTION_0_2();
  v20 = v19;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  v23 = v38 - v22;
  v24 = v1[1];
  v38[1] = *v1;
  v25 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BC99D4(v25, v26, v27);
  v28 = sub_221BCE3D8();
  switch(v24)
  {
    case 0:
      v51 = 1;
      sub_221BC9AD0(v28, v29, v30);
      v32 = v49;
      OUTLINED_FUNCTION_16_18();
      sub_221BCE128();
      (*(v40 + 8))(v14, v42);
      return (*(v20 + 8))(v23, v32);
    case 1:
      v52 = 2;
      sub_221BC9A7C(v28, v29, v30);
      v31 = v43;
      v32 = v49;
      OUTLINED_FUNCTION_16_18();
      sub_221BCE128();
      v34 = v44;
      v33 = v45;
      goto LABEL_6;
    case 2:
      v53 = 3;
      sub_221BC9A28(v28, v29, v30);
      v31 = v46;
      v32 = v49;
      OUTLINED_FUNCTION_16_18();
      sub_221BCE128();
      v34 = v47;
      v33 = v48;
LABEL_6:
      (*(v34 + 8))(v31, v33);
      return (*(v20 + 8))(v23, v32);
  }

  v50 = 0;
  sub_221BC9B24(v28, v29, v30);
  v36 = v49;
  OUTLINED_FUNCTION_16_18();
  sub_221BCE128();
  v37 = v41;
  sub_221BCE138();
  (*(v39 + 8))(v18, v37);
  return (*(v20 + 8))(v23, v36);
}

uint64_t IntentsServices.FileCacheError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBCD80, &qword_221BEA4C0);
  OUTLINED_FUNCTION_0_2();
  v73 = v4;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104_2();
  v75 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBCD88, &qword_221BEA4C8);
  OUTLINED_FUNCTION_0_2();
  v69 = v8;
  v70 = v7;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_104_2();
  v71 = v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBCD90, &qword_221BEA4D0);
  OUTLINED_FUNCTION_0_2();
  v66 = v11;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v14 = v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBCD98, &qword_221BEA4D8);
  OUTLINED_FUNCTION_0_2();
  v67 = v16;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  v19 = v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBCDA0, &qword_221BEA4E0);
  OUTLINED_FUNCTION_0_2();
  v74 = v21;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_97_3();
  v23 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221BC99D4(v23, v24, v25);
  v26 = v77;
  sub_221BCE3B8();
  if (v26)
  {
    goto LABEL_9;
  }

  v64 = v14;
  v65 = v19;
  v63[1] = v15;
  v28 = v75;
  v27 = v76;
  v77 = a1;
  v29 = v2;
  v30 = sub_221BCE118();
  result = sub_221BC9B78(v30, 0);
  if (v33 == v34 >> 1)
  {
LABEL_8:
    v43 = sub_221BCDED8();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85C0, &qword_221BD3BD8);
    *v45 = &type metadata for IntentsServices.FileCacheError;
    sub_221BCE0D8();
    sub_221BCDEB8();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v74 + 8))(v29, v20);
    a1 = v77;
LABEL_9:
    v46 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v46);
  }

  if (v33 < (v34 >> 1))
  {
    v63[0] = *(v32 + v33);
    sub_221BC9BC0(v33 + 1, v34 >> 1, result, v32, v33, v34);
    v36 = v35;
    v38 = v37;
    v39 = swift_unknownObjectRelease();
    if (v36 == v38 >> 1)
    {
      v42 = v73;
      switch(v63[0])
      {
        case 1:
          v79 = 1;
          sub_221BC9AD0(v39, v40, v41);
          v50 = v64;
          OUTLINED_FUNCTION_14_26(&_s14FileCacheErrorO24CachingFailureCodingKeysON, &v79);
          swift_unknownObjectRelease();
          (*(v66 + 8))(v50, v68);
          v55 = OUTLINED_FUNCTION_9_30();
          v56(v55);
          v57 = 0;
          v59 = 0;
          break;
        case 2:
          v80 = 2;
          sub_221BC9A7C(v39, v40, v41);
          v47 = v71;
          OUTLINED_FUNCTION_14_26(&_s14FileCacheErrorO23EmptyDataFileCodingKeysON, &v80);
          swift_unknownObjectRelease();
          (*(v69 + 8))(v47, v70);
          v48 = OUTLINED_FUNCTION_9_30();
          v49(v48);
          v57 = 0;
          v59 = 1;
          break;
        case 3:
          v81 = 3;
          sub_221BC9A28(v39, v40, v41);
          OUTLINED_FUNCTION_14_26(&_s14FileCacheErrorO35InsufficientCacheCapacityCodingKeysON, &v81);
          swift_unknownObjectRelease();
          (*(v42 + 8))(v28, v27);
          v51 = OUTLINED_FUNCTION_9_30();
          v52(v51);
          v57 = 0;
          v59 = 2;
          break;
        default:
          v78 = 0;
          sub_221BC9B24(v39, v40, v41);
          OUTLINED_FUNCTION_14_26(&_s14FileCacheErrorO28CachedFileNotFoundCodingKeysON, &v78);
          v53 = sub_221BCE0E8();
          v54 = v74;
          v57 = v53;
          v59 = v58;
          swift_unknownObjectRelease();
          v60 = OUTLINED_FUNCTION_32_12();
          v61(v60);
          (*(v54 + 8))(v2, v20);
          break;
      }

      v62 = v72;
      *v72 = v57;
      v62[1] = v59;
      v46 = v77;
      return __swift_destroy_boxed_opaque_existential_0(v46);
    }

    v29 = v2;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_221BC7CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB80C(a1, a2, a3);

  return MEMORY[0x28211F4B8](a1, v4);
}

uint64_t sub_221BC7D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB80C(a1, a2, a3);

  return MEMORY[0x28211F4A8](a1, v4);
}

uint64_t sub_221BC7DCC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentsServices.MetadataError.Code.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t IntentsServices.MetadataError.errorDescription.getter()
{
  v1 = *v0;
  switch(*(v0 + 32))
  {
    case 1:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();
      OUTLINED_FUNCTION_31_17();

      v11 = v1;
      v8 = 0x20746F6E20736920;
      v9 = 0xEF746E6573657270;
      goto LABEL_13;
    case 2:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();
      OUTLINED_FUNCTION_31_17();

      v11 = v1;
      OUTLINED_FUNCTION_38_9();
      OUTLINED_FUNCTION_19_19();
      goto LABEL_12;
    case 3:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      OUTLINED_FUNCTION_8_26();
      OUTLINED_FUNCTION_38_9();
      v3 = v6 | 1;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();
      OUTLINED_FUNCTION_31_17();

      v11 = v1;
      OUTLINED_FUNCTION_19_19();
      v4 = 0xD000000000000026;
      goto LABEL_9;
    case 5:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();
      OUTLINED_FUNCTION_31_17();

      v11 = v1;
      OUTLINED_FUNCTION_38_9();
      OUTLINED_FUNCTION_19_19();
LABEL_9:
      MEMORY[0x223DA31F0](v4);
      v7 = OUTLINED_FUNCTION_26_11();
      goto LABEL_10;
    case 6:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();
      OUTLINED_FUNCTION_31_17();

      v11 = v1;
      OUTLINED_FUNCTION_19_19();
      v5 = 0xD000000000000026;
LABEL_12:
      MEMORY[0x223DA31F0](v5);
      v8 = OUTLINED_FUNCTION_26_11();
      goto LABEL_13;
    default:
      OUTLINED_FUNCTION_2_37();
      sub_221BCDE68();

      OUTLINED_FUNCTION_8_26();
      OUTLINED_FUNCTION_38_9();
      v3 = v2 - 11;
LABEL_6:
      v11 = v3;
      v7 = OUTLINED_FUNCTION_118_0();
LABEL_10:
      MEMORY[0x223DA31F0](v7);
      v8 = OUTLINED_FUNCTION_11_28();
LABEL_13:
      MEMORY[0x223DA31F0](v8, v9);
      return v11;
  }
}

uint64_t sub_221BC8048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB7B8(a1, a2, a3);

  return MEMORY[0x28211F4B8](a1, v4);
}

uint64_t sub_221BC8084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB7B8(a1, a2, a3);

  return MEMORY[0x28211F4A8](a1, v4);
}

unint64_t IntentsServices.ObservationError.errorDescription.getter()
{
  OUTLINED_FUNCTION_2_37();
  sub_221BCDE68();

  OUTLINED_FUNCTION_8_26();
  v0 = OUTLINED_FUNCTION_6_33();
  MEMORY[0x223DA31F0](v0);
  v1 = OUTLINED_FUNCTION_11_28();
  MEMORY[0x223DA31F0](v1);
  return 0xD000000000000028;
}

uint64_t IntentsServices.ObservationError.errorUserInfo.getter()
{
  sub_221BCDE68();

  OUTLINED_FUNCTION_8_26();
  v5 = v0;
  v1 = OUTLINED_FUNCTION_4();
  MEMORY[0x223DA31F0](v1);
  MEMORY[0x223DA31F0](46, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = sub_221BCD388();
  *(inited + 40) = v3;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD000000000000028;
  *(inited + 56) = v5;
  return sub_221BCD2C8();
}

uint64_t sub_221BC82A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB764(a1, a2, a3);

  return MEMORY[0x28211F4B8](a1, v4);
}

uint64_t sub_221BC82E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB764(a1, a2, a3);

  return MEMORY[0x28211F4A8](a1, v4);
}

uint64_t sub_221BC8384@<X0>(uint64_t *a1@<X8>)
{
  result = IntentsServices.RemoteDispatcherError.Code.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t IntentsServices.RemoteDispatcherError.errorCode.getter()
{
  v1 = *v0;
  result = 301;
  switch(*(v0 + 32))
  {
    case 1:
      result = 310;
      break;
    case 2:
      result = 302;
      break;
    case 3:
      result = 311;
      break;
    case 4:
      result = 312;
      break;
    case 5:
      result = 316;
      break;
    case 6:
      result = 315;
      break;
    case 7:
      result = 317;
      break;
    case 8:
      result = 309;
      break;
    case 9:
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      if (v4 | v1 | v3)
      {
        v5 = v4 | v3;
        if (v1 == 1 && v5 == 0)
        {
          result = 303;
        }

        else if (v1 == 2 && v5 == 0)
        {
          result = 304;
        }

        else if (v1 != 3 || v5)
        {
          if (v1 != 4 || v5)
          {
            if (v1 != 5 || v5)
            {
              if (v5)
              {
                v8 = 0;
              }

              else
              {
                v8 = v1 == 6;
              }

              if (v8)
              {
                result = 307;
              }

              else
              {
                result = 308;
              }
            }

            else
            {
              result = 313;
            }
          }

          else
          {
            result = 306;
          }
        }

        else
        {
          result = 305;
        }
      }

      else
      {
        result = 314;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t IntentsServices.RemoteDispatcherError.errorDescription.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  switch(*(v0 + 32))
  {
    case 1:

      sub_221BCDE68();

      OUTLINED_FUNCTION_33_12();
      MEMORY[0x223DA31F0](v7 | 4, v8 | 0x8000000000000000);
      v5 = v2;
      v9 = v1;
      goto LABEL_14;
    case 2:

      return OUTLINED_FUNCTION_4();
    case 3:
      OUTLINED_FUNCTION_7_28();
      sub_221BCDE68();

      OUTLINED_FUNCTION_8_26();
      OUTLINED_FUNCTION_33_12();
      swift_getErrorValue();
      v6 = sub_221BCE288();
      MEMORY[0x223DA31F0](v6);

      return OUTLINED_FUNCTION_4();
    case 4:
      OUTLINED_FUNCTION_7_28();
      sub_221BCDE68();
      MEMORY[0x223DA31F0](0xD000000000000026, 0x8000000221BF2BC0);
      v3 = OUTLINED_FUNCTION_4();
      MEMORY[0x223DA31F0](v3);
      MEMORY[0x223DA31F0](544175136, 0xE400000000000000);
      MEMORY[0x223DA31F0](v2, v1);
      v4 = "vice was changed from ";
      v5 = 0xD00000000000008ELL;
      goto LABEL_13;
    case 5:
    case 7:
    case 8:
      OUTLINED_FUNCTION_7_28();
      sub_221BCDE68();

      OUTLINED_FUNCTION_8_26();
      goto LABEL_10;
    case 6:
      OUTLINED_FUNCTION_7_28();
      sub_221BCDE68();

      OUTLINED_FUNCTION_8_26();
      OUTLINED_FUNCTION_33_12();
LABEL_10:
      v5 = OUTLINED_FUNCTION_4();
      goto LABEL_14;
    case 9:
      OUTLINED_FUNCTION_20_20();
      return OUTLINED_FUNCTION_4();
    default:
      if (!*(v0 + 8))
      {
        sub_221BC9C3C(*v0, 0, *(v0 + 16), *(v0 + 24), 0);
      }

      v10 = OUTLINED_FUNCTION_4();
      sub_221BC9CE8(v10, v11, v2, v1, 0);
      sub_221BCDE68();

      OUTLINED_FUNCTION_33_12();
      v5 = v12 | 0xC;
LABEL_13:
      v9 = v4 | 0x8000000000000000;
LABEL_14:
      MEMORY[0x223DA31F0](v5, v9);
      return OUTLINED_FUNCTION_4();
  }
}

uint64_t sub_221BC88E4(void (*a1)(void))
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v4;
  v10 = v3;
  a1();
  if (v5)
  {
    OUTLINED_FUNCTION_183();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221BD19E0;
    *(inited + 32) = sub_221BCD388();
    *(inited + 40) = v7;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v1;
    *(inited + 56) = v9;
    return sub_221BCD2C8();
  }

  else
  {

    return sub_221BCD2C8();
  }
}

uint64_t sub_221BC8A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB710(a1, a2, a3);

  return MEMORY[0x28211F4B8](a1, v4);
}

uint64_t sub_221BC8A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB710(a1, a2, a3);

  return MEMORY[0x28211F4A8](a1, v4);
}

uint64_t sub_221BC8B10@<X0>(uint64_t *a1@<X8>)
{
  result = IntentsServices.SerializationError.Code.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t IntentsServices.SerializationError.errorDescription.getter()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  switch(*(v0 + 32))
  {
    case 1:
      OUTLINED_FUNCTION_27_17();

      OUTLINED_FUNCTION_8_26();
      v18 = v1;
      v10 = sub_221BCE478();
      MEMORY[0x223DA31F0](v10);

      MEMORY[0x223DA31F0](8250, 0xE200000000000000);
      MEMORY[0x223DA31F0](v2, v3);
      result = v1;
      if (v4)
      {
        goto LABEL_9;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_27_17();

      OUTLINED_FUNCTION_8_26();
      v18 = v1;
      v8 = sub_221BCE478();
      MEMORY[0x223DA31F0](v8);

      MEMORY[0x223DA31F0](8250, 0xE200000000000000);
      MEMORY[0x223DA31F0](v2, v3);
      result = v1;
      if (v4)
      {
LABEL_9:
        v11 = v4;
        sub_221BCDE68();

        OUTLINED_FUNCTION_8_26();
        v17 = v12;
        v13 = [v11 localizedDescription];
        v14 = sub_221BCD388();
        v16 = v15;

        MEMORY[0x223DA31F0](v14, v16);

        MEMORY[0x223DA31F0](v1, v17);

        goto LABEL_10;
      }

      break;
    case 3:
      sub_221BCDE68();

      OUTLINED_FUNCTION_8_26();
      v18 = 0xD00000000000001DLL;
      v9 = OUTLINED_FUNCTION_118_0();
      MEMORY[0x223DA31F0](v9);
      v5 = 46;
      v6 = 0xE100000000000000;
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_11_14();
      result = 0xD000000000000022;
      break;
    default:
      sub_221BCDE68();

      OUTLINED_FUNCTION_8_26();
      v18 = 0xD000000000000017;
      v5 = OUTLINED_FUNCTION_118_0();
LABEL_7:
      MEMORY[0x223DA31F0](v5, v6);
LABEL_10:
      result = v18;
      break;
  }

  return result;
}

uint64_t IntentsServices.SerializationError.errorUserInfo.getter()
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 32);
  v48 = *v1;
  *&v49 = v2;
  *(&v49 + 1) = v3;
  v50 = v4;
  IntentsServices.SerializationError.errorDescription.getter();
  if (v5)
  {
    OUTLINED_FUNCTION_183();
    sub_221BCD388();
    v7 = v6;
    *(&v49 + 1) = MEMORY[0x277D837D0];
    *&v48 = v0;
    *(&v48 + 1) = &v48;
    sub_2219A1AB0(&v48, v47);
    v8 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = OUTLINED_FUNCTION_24_17(isUniquelyReferenced_nonNull_native, v10, v11, isUniquelyReferenced_nonNull_native, v12, v13, v14, v15, v44, v8, v47[0]);
    sub_221B9F8D4(v16, v17, v7);

    v18 = v45;
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  if (v4 == 2)
  {
    v19 = v3;
    sub_221BCD388();
    v21 = v27;
    if (!v3)
    {
      v37 = OUTLINED_FUNCTION_118_0();
      v39 = sub_221B9E9B8(v37, v38);
      if (v40)
      {
        v41 = v39;
        swift_isUniquelyReferenced_nonNull_native();
        *&v47[0] = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7768, &qword_221BE9980);
        sub_221BCE028();
        v18 = *&v47[0];

        sub_2219A1AB0((*(v18 + 56) + 32 * v41), &v48);
        sub_221BCE048();
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      v42 = &v48;
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (v4 == 1)
  {
    v19 = v3;
    sub_221BCD388();
    v21 = v20;
    if (!v3)
    {
      v22 = OUTLINED_FUNCTION_118_0();
      v24 = sub_221B9E9B8(v22, v23);
      if (v25)
      {
        v26 = v24;
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7768, &qword_221BE9980);
        sub_221BCE028();

        sub_2219A1AB0((*(v18 + 56) + 32 * v26), v47);
        sub_221BCE048();
      }

      else
      {
        memset(v47, 0, sizeof(v47));
      }

      v42 = v47;
LABEL_17:
      sub_221A01F0C(v42, &qword_27CFB7FF8, &qword_221BE6A00);
      return v18;
    }

LABEL_10:
    *(&v49 + 1) = sub_221BC625C();
    *&v48 = v19;
    sub_2219A1AB0(&v48, v47);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v35 = OUTLINED_FUNCTION_24_17(v28, v29, v30, v28, v31, v32, v33, v34, v44, v18, v47[0]);
    sub_221B9F8D4(v35, v36, v21);

    return v46;
  }

  return v18;
}

uint64_t sub_221BC913C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB6BC(a1, a2, a3);

  return MEMORY[0x28211F4B8](a1, v4);
}

uint64_t sub_221BC9178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB6BC(a1, a2, a3);

  return MEMORY[0x28211F4A8](a1, v4);
}

uint64_t IntentsServices.UserIdentifierConversionError.errorDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_2_37();
  sub_221BCDE68();
  OUTLINED_FUNCTION_19_19();
  MEMORY[0x223DA31F0](0xD000000000000027);
  v3 = OUTLINED_FUNCTION_6_33();
  MEMORY[0x223DA31F0](v3);
  v4 = OUTLINED_FUNCTION_17_21();
  MEMORY[0x223DA31F0](v4);
  MEMORY[0x223DA31F0](v1, v2);
  MEMORY[0x223DA31F0](39, 0xE100000000000000);
  return v6;
}

uint64_t IntentsServices.UserIdentifierConversionError.errorUserInfo.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_25_16();
  sub_221BCDE68();
  OUTLINED_FUNCTION_11_14();
  MEMORY[0x223DA31F0](0xD000000000000027);
  v3 = OUTLINED_FUNCTION_4();
  MEMORY[0x223DA31F0](v3);
  v4 = OUTLINED_FUNCTION_17_21();
  MEMORY[0x223DA31F0](v4);
  MEMORY[0x223DA31F0](v1, v2);
  MEMORY[0x223DA31F0](39, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = sub_221BCD388();
  *(inited + 40) = v6;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  return sub_221BCD2C8();
}

uint64_t sub_221BC93E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB668(a1, a2, a3);

  return MEMORY[0x28211F4B8](a1, v4);
}

uint64_t sub_221BC9420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_221BCB668(a1, a2, a3);

  return MEMORY[0x28211F4A8](a1, v4);
}

uint64_t sub_221BC94C0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentsServices.SecurityError.Code.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t IntentsServices.SecurityError.errorCode.getter()
{
  type metadata accessor for IntentsServices.SecurityError(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221BC9DD0(v0, v3);
  OUTLINED_FUNCTION_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 801;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_221BC9E34(v3);
      result = 804;
      break;
    case 2:
      return result;
    case 3:
      result = 802;
      break;
    case 4:
      result = 803;
      break;
    default:
      sub_221BC9E34(v3);
      result = 800;
      break;
  }

  return result;
}

unint64_t IntentsServices.SecurityError.errorDescription.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  type metadata accessor for IntentsServices.SecurityError(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221BC9DD0(v1, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_221BCB5C4(v10, v7, &qword_27CFB7DD0, &unk_221BD19F0);
      OUTLINED_FUNCTION_25_16();
      sub_221BCDE68();

      OUTLINED_FUNCTION_8_26();
      v18[0] = 0xD000000000000022;
      v18[1] = v15;
      sub_221BC9E90(v7, v4);
      v16 = sub_221BCD3D8();
      MEMORY[0x223DA31F0](v16);

      v12 = v18[0];
      OUTLINED_FUNCTION_30_14(v7);
      break;
    case 2u:
      v12 = 0xD000000000000037;
      break;
    case 3u:
      OUTLINED_FUNCTION_36_12();
      v12 = v14 + 34;
      break;
    case 4u:
      OUTLINED_FUNCTION_36_12();
      v12 = v13 + 14;
      break;
    default:
      OUTLINED_FUNCTION_25_16();
      sub_221BCDE68();
      MEMORY[0x223DA31F0](0xD000000000000046, 0x8000000221BF3070);
      v11 = OUTLINED_FUNCTION_4();
      MEMORY[0x223DA31F0](v11);

      v12 = v18[0];
      break;
  }

  return v12;
}

uint64_t IntentsServices.SecurityError.errorUserInfo.getter()
{
  IntentsServices.SecurityError.errorDescription.getter();
  if (v2)
  {
    OUTLINED_FUNCTION_183();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221BD19E0;
    *(inited + 32) = sub_221BCD388();
    *(inited + 40) = v4;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v0;
    *(inited + 56) = v1;
    return sub_221BCD2C8();
  }

  else
  {

    return sub_221BCD2C8();
  }
}

uint64_t sub_221BC9924(uint64_t a1)
{
  v2 = sub_221BCB624(&qword_27CFBCE80, &protocol conformance descriptor for IntentsServices.SecurityError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_221BC997C(uint64_t a1)
{
  v2 = sub_221BCB624(&qword_27CFBCE80, &protocol conformance descriptor for IntentsServices.SecurityError);

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_221BC99D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCD58;
  if (!qword_27CFBCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCD58);
  }

  return result;
}

unint64_t sub_221BC9A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCD60;
  if (!qword_27CFBCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCD60);
  }

  return result;
}

unint64_t sub_221BC9A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCD68;
  if (!qword_27CFBCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCD68);
  }

  return result;
}

unint64_t sub_221BC9AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCD70;
  if (!qword_27CFBCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCD70);
  }

  return result;
}

unint64_t sub_221BC9B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCD78;
  if (!qword_27CFBCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCD78);
  }

  return result;
}

uint64_t sub_221BC9B78(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_221BC9BC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_221BC9C3C(void *a1, id a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
      goto LABEL_2;
    case 1:
    case 4:

LABEL_2:

      break;
    case 3:

      break;
    default:
      return;
  }
}

void sub_221BC9CE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
      goto LABEL_3;
    case 1:
    case 4:

LABEL_3:

      break;
    case 3:

      v5 = a1;
      break;
    default:
      return;
  }
}

uint64_t type metadata accessor for IntentsServices.SecurityError(uint64_t a1)
{
  result = qword_27CFBCE00;
  if (!qword_27CFBCE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221BC9DD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentsServices.SecurityError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221BC9E34(uint64_t a1)
{
  v2 = type metadata accessor for IntentsServices.SecurityError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221BC9E90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_221BC9F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCDA8;
  if (!qword_27CFBCDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCDA8);
  }

  return result;
}

unint64_t sub_221BC9F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCDB0;
  if (!qword_27CFBCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCDB0);
  }

  return result;
}

unint64_t sub_221BC9FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCDB8;
  if (!qword_27CFBCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCDB8);
  }

  return result;
}

unint64_t sub_221BCA018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCDC0;
  if (!qword_27CFBCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCDC0);
  }

  return result;
}

unint64_t sub_221BCA074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCDC8;
  if (!qword_27CFBCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCDC8);
  }

  return result;
}

unint64_t sub_221BCA0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCDD0;
  if (!qword_27CFBCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCDD0);
  }

  return result;
}

unint64_t sub_221BCA124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCDD8;
  if (!qword_27CFBCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCDD8);
  }

  return result;
}

unint64_t sub_221BCA180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCDE0;
  if (!qword_27CFBCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCDE0);
  }

  return result;
}

unint64_t sub_221BCA1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCDE8;
  if (!qword_27CFBCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCDE8);
  }

  return result;
}

unint64_t sub_221BCA234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCDF0;
  if (!qword_27CFBCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCDF0);
  }

  return result;
}

unint64_t sub_221BCA28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCDF8;
  if (!qword_27CFBCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCDF8);
  }

  return result;
}

uint64_t sub_221BCA320(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 17))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 8)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221BCA360(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t _s6ErrorsO4CodeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s6ErrorsO4CodeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices0bC0O14ExecutionErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_221BCA53C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221BCA57C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_221BCA5C4(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t _s14ExecutionErrorO4CodeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14ExecutionErrorO4CodeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices0bC0O14FileCacheErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_221BCA76C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221BCA7C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_221BCA844(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 33))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221BCA884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t _s13MetadataErrorO4CodeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13MetadataErrorO4CodeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices0bC0O21RemoteDispatcherErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 8)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t sub_221BCAA7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF7 && *(a1 + 33))
    {
      v2 = *a1 + 246;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 9)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221BCAABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_221BCAB04(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t _s21RemoteDispatcherErrorO4CodeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s21RemoteDispatcherErrorO4CodeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices0bC0O18SerializationErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_221BCACB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221BCACF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_221BCAD38(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_221BCAD94(uint64_t a1)
{
  sub_221BCAE08();
  if (v1 <= 0x3F)
  {
    sub_221BCAE30(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_221BCAE08()
{
  result = qword_27CFBCE10;
  if (!qword_27CFBCE10)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27CFBCE10);
  }

  return result;
}

void sub_221BCAE30(uint64_t a1)
{
  if (!qword_27CFBCE18)
  {
    sub_221BCC418();
    v1 = sub_221BCDC98();
    if (!v2)
    {
      atomic_store(v1, &qword_27CFBCE18);
    }
  }
}

_BYTE *sub_221BCAE88(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_221BCAF64(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_221BCAFEC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_221BCB0C8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_221BCB1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE20;
  if (!qword_27CFBCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE20);
  }

  return result;
}

unint64_t sub_221BCB200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE28;
  if (!qword_27CFBCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE28);
  }

  return result;
}

unint64_t sub_221BCB258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE30;
  if (!qword_27CFBCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE30);
  }

  return result;
}

unint64_t sub_221BCB2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE38;
  if (!qword_27CFBCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE38);
  }

  return result;
}

unint64_t sub_221BCB308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE40;
  if (!qword_27CFBCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE40);
  }

  return result;
}

unint64_t sub_221BCB360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE48;
  if (!qword_27CFBCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE48);
  }

  return result;
}

unint64_t sub_221BCB3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE50;
  if (!qword_27CFBCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE50);
  }

  return result;
}

unint64_t sub_221BCB410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE58;
  if (!qword_27CFBCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE58);
  }

  return result;
}

unint64_t sub_221BCB468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE60;
  if (!qword_27CFBCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE60);
  }

  return result;
}

unint64_t sub_221BCB4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE68;
  if (!qword_27CFBCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE68);
  }

  return result;
}

unint64_t sub_221BCB518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE70;
  if (!qword_27CFBCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE70);
  }

  return result;
}

unint64_t sub_221BCB570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE78;
  if (!qword_27CFBCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE78);
  }

  return result;
}

uint64_t sub_221BCB5C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_221BCB624(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntentsServices.SecurityError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221BCB668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE88;
  if (!qword_27CFBCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE88);
  }

  return result;
}

unint64_t sub_221BCB6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE90;
  if (!qword_27CFBCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE90);
  }

  return result;
}

unint64_t sub_221BCB710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCE98;
  if (!qword_27CFBCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCE98);
  }

  return result;
}

unint64_t sub_221BCB764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCEA0;
  if (!qword_27CFBCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCEA0);
  }

  return result;
}

unint64_t sub_221BCB7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCEA8;
  if (!qword_27CFBCEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCEA8);
  }

  return result;
}

unint64_t sub_221BCB80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCEB0;
  if (!qword_27CFBCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCEB0);
  }

  return result;
}

unint64_t sub_221BCB860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCEB8;
  if (!qword_27CFBCEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCEB8);
  }

  return result;
}

unint64_t sub_221BCB8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBCEC0;
  if (!qword_27CFBCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBCEC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_26(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_27_17()
{

  return sub_221BCDE68();
}

uint64_t OUTLINED_FUNCTION_30_14(uint64_t a1)
{

  return sub_221A01F0C(a1, v1, v2);
}

double OUTLINED_FUNCTION_31_17()
{

  return result;
}

void sub_221BCBB20()
{
  qword_27CFDED48 = "AppIntentsServices";
  unk_27CFDED50 = 18;
  byte_27CFDED58 = 2;
  OUTLINED_FUNCTION_0_70(&qword_27CFDED48);
}

void sub_221BCBB50()
{
  qword_27CFDED78 = "AppIntentsServices";
  unk_27CFDED80 = 18;
  byte_27CFDED88 = 2;
  OUTLINED_FUNCTION_0_70(&qword_27CFDED78);
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_221BCBB94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 42))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 41);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221BCBBE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_70(uint64_t a1@<X8>)
{
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v1;
}

uint64_t sub_221BCBC4C(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_11_14();
    v1 = sub_221BCD358();
    v2 = OUTLINED_FUNCTION_2_44(v1, sel_integerForKey_);

    if (v2)
    {
      return v2;
    }

    else
    {
      return 10;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221BCBCB0(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_11_14();
    v1 = sub_221BCD358();
    v2 = OUTLINED_FUNCTION_2_44(v1, sel_integerForKey_);

    if (v2)
    {
      return sub_221BCBDB0(v2);
    }

    else
    {
      return OUTLINED_FUNCTION_0_71();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221BCBD1C(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_11_14();
    v1 = sub_221BCD358();
    v2 = OUTLINED_FUNCTION_2_44(v1, sel_stringForKey_);

    if (!v2)
    {
      return 0;
    }

    v3 = sub_221BCD388();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221BCBDE4(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_11_14();
    v1 = sub_221BCD358();
    v2 = OUTLINED_FUNCTION_2_44(v1, sel_integerForKey_);

    if (v2)
    {
      return sub_221BCBDB0(v2);
    }

    else
    {
      return OUTLINED_FUNCTION_0_71();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_221BCBE50()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_221BCBEA0(0xD00000000000001CLL, 0x8000000221BEC4D0);
  qword_27CFDEDA8 = result;
  return result;
}

id sub_221BCBEA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_221BCD358();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

id OUTLINED_FUNCTION_2_44(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_221BCC02C()
{
  v0 = sub_221BCCD88();
  __swift_allocate_value_buffer(v0, qword_27CFDEE40);
  __swift_project_value_buffer(v0, qword_27CFDEE40);
  return OUTLINED_FUNCTION_3_38();
}

uint64_t sub_221BCC0DC()
{
  v0 = sub_221BCCD88();
  __swift_allocate_value_buffer(v0, qword_27CFDEE88);
  __swift_project_value_buffer(v0, qword_27CFDEE88);
  return OUTLINED_FUNCTION_3_38();
}

uint64_t sub_221BCC198(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_221BCCD88();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_221BCCD78();
}

uint64_t OUTLINED_FUNCTION_3_38()
{

  return sub_221BCCD78();
}