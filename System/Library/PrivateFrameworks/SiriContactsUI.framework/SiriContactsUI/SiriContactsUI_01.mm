uint64_t sub_2669B2CB0(uint64_t a1, uint64_t a2)
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  (*(*(ContactQuickActionButtonsView - 8) + 32))(a2, a1, ContactQuickActionButtonsView);
  return a2;
}

unint64_t sub_2669B2D5C()
{
  result = qword_2800AC5D0;
  if (!qword_2800AC5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC5C0, &qword_2669C8328);
    sub_26699A174(&qword_2800AC5D8, &qword_2800AC5E0, &qword_2669C8330, &unk_2669C8DB0);
    sub_26699A174(&qword_2800AC5E8, &qword_2800AC5F0, &qword_2669C8338, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC5D0);
  }

  return result;
}

uint64_t objectdestroyTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for GetContactQuickActionButtonsView(0);
  OUTLINED_FUNCTION_4_2();
  v6 = (v4 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  v7 = sub_2669C5954();
  if (!OUTLINED_FUNCTION_12_0(v7))
  {
    OUTLINED_FUNCTION_14_1();
    v8 = OUTLINED_FUNCTION_15_1();
    v9(v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");

  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

void sub_2669B2FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_1();
  sub_2669AF9F0();
  OUTLINED_FUNCTION_23_0();
}

char *sub_2669B3008(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC790, &qword_2669C84E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_2669B3108(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC798, &qword_2669C84E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

void sub_2669B318C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_17_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC810, &qword_2669C85A0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 32);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[32 * v9] <= v13)
    {
      memmove(v13, v14, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2669B3288(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_17_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC830, qword_2669C85B8);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

void sub_2669B3378(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_17_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC828, &qword_2669C85B0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

void *sub_2669B3468(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC798, &qword_2669C84E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC788, &qword_2669C84D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2669B35A0()
{
  OUTLINED_FUNCTION_21_0();
  result = sub_2669C5F24();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_2669B3600()
{
  OUTLINED_FUNCTION_21_0();
  result = sub_2669C5F04();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2669B366C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5E0, &qword_2669C8330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2669B3724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2669B376C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2669B4C30(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2669B3F6C(v5);
  *a1 = v2;
  return result;
}

void *sub_2669B37D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2669B3108(*(a1 + 16), 0);
  v4 = sub_2669B4AB0(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_2669B544C(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2669B38C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2669B38FC()
{
  result = qword_2800AC6D8;
  if (!qword_2800AC6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC660, &qword_2669C83C8);
    sub_2669B39E0(&qword_2800AC6E0, &qword_2800AC658, &qword_2669C83C0, sub_2669B3A80);
    sub_2669B39E0(&qword_2800AC6F8, &qword_2800AC630, &qword_2669C8398, sub_2669B3B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC6D8);
  }

  return result;
}

uint64_t sub_2669B39E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_0_7();
    sub_26699A174(v7, v8, v9, v10);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2669B3A80()
{
  result = qword_2800AC6F0;
  if (!qword_2800AC6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC638, &qword_2669C83A0);
    sub_26699A174(&qword_2800AC6A0, &qword_2800AC690, &qword_2669C83F8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC6F0);
  }

  return result;
}

unint64_t sub_2669B3B30()
{
  result = qword_2800AC700;
  if (!qword_2800AC700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC620, &qword_2669C8388);
    sub_26699A174(&qword_2800AC708, &qword_2800AC710, &qword_2669C8438, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC700);
  }

  return result;
}

void sub_2669B3D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_5();
  sub_2669B0B94(v8, v7, v6, v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)), v5, v3);
  OUTLINED_FUNCTION_23_0();
}

unint64_t sub_2669B3E08()
{
  result = qword_2800AC740;
  if (!qword_2800AC740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC738, &qword_2669C84B0);
    sub_26699A174(&qword_2800AC748, &qword_2800AC750, &qword_2669C84B8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC740);
  }

  return result;
}

uint64_t sub_2669B3F6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2669C6A74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC788, &qword_2669C84D8);
        v6 = sub_2669C6784();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_2669B414C(v7, v8, a1, v4);
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
    return sub_2669B4070(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2669B4070(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_2669C6A94();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2669B414C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v88 = result;
  v93 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        result = *v11;
        v12 = v11[1];
        v13 = (*a3 + 24 * v9);
        if (result == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          result = sub_2669C6A94();
          v15 = result;
        }

        v7 = v9 + 2;
        v16 = v10 + 24 * v9;
        v17 = 24 * v9;
        v18 = (v16 + 56);
        while (v7 < v6)
        {
          result = *(v18 - 1);
          if (result == *(v18 - 4) && *v18 == *(v18 - 3))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_2669C6A94();
            if ((v15 ^ result))
            {
              break;
            }
          }

          ++v7;
          v18 += 3;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v20 = 24 * v7;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v24 = (v23 + v17);
              v25 = v23 + v20;
              v26 = *v24;
              v27 = *(v24 + 1);
              v28 = *(v25 - 24);
              v24[2] = *(v25 - 8);
              *v24 = v28;
              *(v25 - 24) = v26;
              *(v25 - 16) = v27;
            }

            ++v22;
            v20 -= 24;
            v17 += 24;
          }

          while (v22 < v21);
        }
      }

LABEL_28:
      v29 = a3[1];
      if (v7 < v29)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v29)
          {
            v30 = a3[1];
          }

          else
          {
            v30 = v9 + a4;
          }

          if (v30 < v9)
          {
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
            return result;
          }

          if (v7 != v30)
          {
            v31 = *a3;
            v32 = *a3 + 24 * v7 - 24;
            v90 = v9;
            v33 = v9 - v7;
            do
            {
              v34 = (v31 + 24 * v7);
              result = *v34;
              v35 = v34[1];
              v36 = v33;
              v37 = v32;
              do
              {
                if (result == *v37 && v35 == *(v37 + 8))
                {
                  break;
                }

                result = sub_2669C6A94();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_125;
                }

                v39 = *(v37 + 32);
                v40 = *(v37 + 16);
                result = *(v37 + 24);
                *(v37 + 24) = *v37;
                *(v37 + 40) = v40;
                *v37 = result;
                *(v37 + 8) = v39;
                v35 = v39;
                v37 -= 24;
              }

              while (!__CFADD__(v36++, 1));
              ++v7;
              v32 += 24;
              --v33;
            }

            while (v7 != v30);
            v7 = v30;
            v9 = v90;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2669B3008(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v43 = *(v8 + 16);
      v42 = *(v8 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        result = sub_2669B3008((v42 > 1), v43 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v44;
      v45 = v8 + 32;
      v46 = (v8 + 32 + 16 * v43);
      *v46 = v9;
      v46[1] = v7;
      v91 = *v88;
      if (!*v88)
      {
        goto LABEL_128;
      }

      if (v43)
      {
        v89 = v8 + 32;
        while (1)
        {
          v47 = v44 - 1;
          v48 = (v45 + 16 * (v44 - 1));
          v49 = (v8 + 16 * v44);
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v50 = *(v8 + 32);
            v51 = *(v8 + 40);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
LABEL_70:
            if (v53)
            {
              goto LABEL_110;
            }

            v65 = *v49;
            v64 = v49[1];
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_113;
            }

            v69 = v48[1];
            v70 = v69 - *v48;
            if (__OFSUB__(v69, *v48))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v67, v70))
            {
              goto LABEL_118;
            }

            if (v67 + v70 >= v52)
            {
              if (v52 < v70)
              {
                v47 = v44 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v44 < 2)
          {
            goto LABEL_112;
          }

          v72 = *v49;
          v71 = v49[1];
          v60 = __OFSUB__(v71, v72);
          v67 = v71 - v72;
          v68 = v60;
LABEL_85:
          if (v68)
          {
            goto LABEL_115;
          }

          v74 = *v48;
          v73 = v48[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_117;
          }

          if (v75 < v67)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v47 - 1 >= v44)
          {
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
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v79 = (v45 + 16 * (v47 - 1));
          v80 = *v79;
          v81 = v47;
          v82 = (v45 + 16 * v47);
          v83 = v82[1];
          result = sub_2669B47D4((*a3 + 24 * *v79), (*a3 + 24 * *v82), *a3 + 24 * v83, v91);
          if (v5)
          {
          }

          if (v83 < v80)
          {
            goto LABEL_105;
          }

          v84 = v8;
          v85 = *(v8 + 16);
          if (v81 > v85)
          {
            goto LABEL_106;
          }

          *v79 = v80;
          v79[1] = v83;
          if (v81 >= v85)
          {
            goto LABEL_107;
          }

          v44 = v85 - 1;
          result = memmove(v82, v82 + 2, 16 * (v85 - 1 - v81));
          *(v84 + 16) = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          v45 = v89;
          if (!v86)
          {
            goto LABEL_99;
          }
        }

        v54 = v45 + 16 * v44;
        v55 = *(v54 - 64);
        v56 = *(v54 - 56);
        v60 = __OFSUB__(v56, v55);
        v57 = v56 - v55;
        if (v60)
        {
          goto LABEL_108;
        }

        v59 = *(v54 - 48);
        v58 = *(v54 - 40);
        v60 = __OFSUB__(v58, v59);
        v52 = v58 - v59;
        v53 = v60;
        if (v60)
        {
          goto LABEL_109;
        }

        v61 = v49[1];
        v62 = v61 - *v49;
        if (__OFSUB__(v61, *v49))
        {
          goto LABEL_111;
        }

        v60 = __OFADD__(v52, v62);
        v63 = v52 + v62;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v63 >= v57)
        {
          v77 = *v48;
          v76 = v48[1];
          v60 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v60)
          {
            goto LABEL_119;
          }

          if (v52 < v78)
          {
            v47 = v44 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v93 = v8;
        break;
      }
    }
  }

  if (!*v88)
  {
    goto LABEL_129;
  }

  sub_2669B469C(&v93, *v88, a3);
}

uint64_t sub_2669B469C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2669B49C8(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2669B47D4((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2669B47D4(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2669C6A94() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 24;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
LABEL_29:
  v17 = v6 - 24;
  for (v5 -= 24; v11 > v4 && v6 > v7; v5 -= 24)
  {
    v19 = *(v11 - 3) == *(v6 - 3) && *(v11 - 2) == *(v6 - 2);
    if (!v19 && (sub_2669C6A94() & 1) != 0)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v21;
        v6 = v17;
      }

      goto LABEL_29;
    }

    if (v11 != (v5 + 24))
    {
      v20 = *(v11 - 24);
      *(v5 + 16) = *(v11 - 1);
      *v5 = v20;
    }

    v11 -= 24;
  }

LABEL_46:
  v22 = (v11 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_2669B49DC(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2669C6654();

  return v3;
}

void sub_2669B4A4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2669C6624();

  [a3 setAceId_];
}

void *sub_2669B4AB0(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
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

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t objectdestroy_82Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for GetContactQuickActionButtonsView(0);
  OUTLINED_FUNCTION_4_2();
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = v4 + v6;

  v10 = sub_2669C5954();
  if (!OUTLINED_FUNCTION_12_0(v10))
  {
    OUTLINED_FUNCTION_14_1();
    v11 = OUTLINED_FUNCTION_15_1();
    v12(v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");

  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_2669B4DE8()
{
  OUTLINED_FUNCTION_21_0();
  result = sub_2669C5EC4();
  *v0 = result;
  return result;
}

uint64_t sub_2669B4E38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2669B4F38(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  OUTLINED_FUNCTION_2_2(ContactQuickActionButtonsView);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

uint64_t sub_2669B4FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for GetContactQuickActionButtonsView(0);
  OUTLINED_FUNCTION_4_2();
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);

  v7 = v4 + v6;
  v8 = sub_2669C5954();
  if (!OUTLINED_FUNCTION_12_0(v8))
  {
    OUTLINED_FUNCTION_14_1();
    v9 = OUTLINED_FUNCTION_15_1();
    v10(v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");

  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

void sub_2669B50EC()
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  OUTLINED_FUNCTION_2_2(ContactQuickActionButtonsView);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)));

  sub_2669B0F90(v3, v4);
}

uint64_t sub_2669B5184(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14_1();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_2669B51E4()
{
  OUTLINED_FUNCTION_2_6();
  v1 = OUTLINED_FUNCTION_5_1((*(v0 + 80) + 16) & ~*(v0 + 80));

  sub_2669B05B4(v1);
}

void sub_2669B52AC()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_5_1((*(v0 + 80) + 16) & ~*(v0 + 80));
  sub_2669B18BC();
}

uint64_t sub_2669B5334()
{
  OUTLINED_FUNCTION_21_0();
  result = sub_2669C5F24();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

void sub_2669B53E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_5();
  v4 = OUTLINED_FUNCTION_8_1();
  v3(v4);
  OUTLINED_FUNCTION_23_0();
}

uint64_t sub_2669B546C(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_2_6();
  v3 = OUTLINED_FUNCTION_5_1((*(v2 + 80) + 16) & ~*(v2 + 80));
  return a1(v3);
}

uint64_t sub_2669B5530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a6;
  v39 = a7;
  v33 = a2;
  v34 = a5;
  v36 = a1;
  v37 = a3;
  v35 = a9;
  v32 = sub_2669C5894();
  v40 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2669C5B54();
  v31 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a8 - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  (*(v18 + 32))(&v31 - v22, a4, a8);
  v24 = v33;
  (*(v14 + 16))(v17, v33, v13);
  v25 = v34;
  v26 = v32;
  (*(v40 + 16))(v12, v34, v32);
  (*(v18 + 16))(v21, v23, a8);
  sub_2669C14A4(v36, v17, v37, v21, v12, v38, v39, a8, v35, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v28 = v27;
  (*(v40 + 8))(v25, v26);
  (*(v14 + 8))(v24, v31);
  (*(v18 + 8))(v23, a8);
  return v28;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2669B2C48(v9, &a9 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t a1)
{

  return sub_2669C6364();
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{

  return sub_2669C5E74();
}

uint64_t sub_2669B5B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC030, qword_2669C77F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_2669C5C14();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_2669B5C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC030, qword_2669C77F0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_2669C5C14();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for ModifyContactAttributeConfirmationView(uint64_t a1)
{
  result = qword_2800AC838;
  if (!qword_2800AC838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2669B5D94(uint64_t a1)
{
  sub_26699ADCC(319);
  if (v1 <= 0x3F)
  {
    sub_26699AD38(319);
    if (v2 <= 0x3F)
    {
      sub_2669C5C14();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2669B5E4C@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v2 = sub_2669C5BB4();
  v3 = OUTLINED_FUNCTION_0_8(v2, v124);
  v101 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_2(&v82 - v6);
  v7 = sub_2669C6444();
  v8 = OUTLINED_FUNCTION_0_8(v7, &v130);
  v116 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_2(&v82 - v11);
  v12 = sub_2669C6474();
  v13 = OUTLINED_FUNCTION_0_8(v12, &v128);
  v113 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = OUTLINED_FUNCTION_5_2(&v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ModifyContactAttributeConfirmationView(v16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v95 = v19;
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC878, &qword_2669C8680);
  v112 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v82 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC880, &qword_2669C8688);
  v25 = OUTLINED_FUNCTION_0_8(v24, &v129);
  v115 = v26;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  v83 = &v82 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC888, &unk_2669C8690);
  v30 = OUTLINED_FUNCTION_0_8(v29, v120);
  v114 = v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  v89 = &v82 - v33;
  OUTLINED_FUNCTION_2_7();
  v96 = v34;
  v108 = v1;
  v92 = v20;
  sub_2669B77D4(v1, v20, v35);
  v94 = *(v18 + 80);
  v36 = (v94 + 16) & ~v94;
  v93 = v36;
  v37 = swift_allocObject();
  sub_2669B7700(v20, v37 + v36);
  v118 = v1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC180, &qword_2669C8740);
  v121 = MEMORY[0x277CE0BD8];
  v122 = MEMORY[0x277CE0BC8];
  v90 = OUTLINED_FUNCTION_7_1();
  v86 = v23;
  sub_2669C6364();
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v38 = v109;
  sub_2669C5FC4();
  v107 = sub_26699A174(&qword_2800AC890, &qword_2800AC878, &qword_2669C8680, MEMORY[0x277CDF028]);
  v39 = sub_2669B787C(&qword_2800AC898, MEMORY[0x277D63B78], MEMORY[0x277D63B68]);
  v40 = v110;
  v85 = v39;
  sub_2669C6214();
  OUTLINED_FUNCTION_8_2();
  v113 = v41;
  v88 = v42;
  v43 = v40;
  v42(v38, v40);
  OUTLINED_FUNCTION_8_2();
  v112 = v44;
  v87 = v45;
  v46 = v21;
  v84 = v21;
  v45(v23, v21);
  v47 = v98;
  sub_2669C5BC4();
  v48 = v101;
  v49 = v100;
  v50 = v102;
  (v101[13])(v100, *MEMORY[0x277D55AC8], v102);
  v51 = sub_2669C5BA4();
  v52 = v48[1];
  v52(v49, v50);
  v52(v47, v50);
  v53 = v116;
  v54 = *(v116 + 104);
  v102 = v54;
  v55 = MEMORY[0x277D63A78];
  if ((v51 & 1) == 0)
  {
    v55 = MEMORY[0x277D63A90];
  }

  v56 = v99;
  v57 = v111;
  v54(v99, *v55, v111);
  v121 = v46;
  v122 = v43;
  v123 = v107;
  v124[0] = v39;
  v58 = OUTLINED_FUNCTION_7_1();
  v59 = v89;
  OUTLINED_FUNCTION_6_2();
  v60 = v83;
  sub_2669C6184();
  v61 = *(v53 + 8);
  v116 = v53 + 8;
  v101 = v61;
  (v61)(v56, v57);
  OUTLINED_FUNCTION_8_2();
  v115 = v62;
  v100 = v63;
  v63(v60, v47);
  v121 = v47;
  v122 = v58;
  OUTLINED_FUNCTION_7_1();
  v64 = v97;
  v65 = sub_2669C6174();
  OUTLINED_FUNCTION_8_2();
  v114 = v66;
  v99 = v67;
  v67(v59, v64);
  v124[0] = MEMORY[0x277CE11C8];
  v124[1] = MEMORY[0x277D63A60];
  v121 = v65;
  v68 = v108;
  v69 = v92;
  sub_2669B77D4(v108, v92, v96);
  v70 = v93;
  v71 = swift_allocObject();
  sub_2669B7700(v69, v71 + v70);
  v117 = v68;
  v72 = v86;
  sub_2669C6364();
  v73 = v109;
  sub_2669C5FC4();
  v74 = v104;
  v75 = v84;
  v76 = v110;
  sub_2669C6214();
  v88(v73, v76);
  v87(v72, v75);
  v77 = v105;
  v78 = v111;
  v102(v105, *MEMORY[0x277D63A88], v111);
  v79 = v103;
  OUTLINED_FUNCTION_6_2();
  sub_2669C6184();
  (v101)(v77, v78);
  v100(v74, v76);
  v80 = sub_2669C6174();
  v99(v79, v64);
  v120[1] = MEMORY[0x277D63A60];
  v120[0] = MEMORY[0x277CE11C8];
  v119 = v80;
  return sub_2669C6494();
}

uint64_t sub_2669B68E4()
{
  v0 = sub_2669C5854();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ModifyContactAttributeConfirmationView(0);
  sub_2669C5BF4();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277D55978])
  {
    return (*(v1 + 8))(v3, v0);
  }

  (*(v1 + 96))(v3, v0);
  v4 = *v3;
  v5 = v3[1];
  sub_26699BE4C(v3[2], v3[3]);
  sub_2669B6A34(v4, v5);
  return sub_26699BE4C(v4, v5);
}

void sub_2669B6A34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v3 = sub_2669C5C94();
    __swift_project_value_buffer(v3, qword_2800ACC88);
    oslog = sub_2669C5C74();
    v4 = sub_2669C6864();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_266996000, oslog, v4, "#GetContactAttributeButtonableView could not obtain direct invocation for button press", v5, 2u);
      MEMORY[0x26D5E4D50](v5, -1, -1);
    }

LABEL_16:

    return;
  }

  sub_26699BEF0();
  sub_26699BF34(a1, a2);
  v8 = sub_2669C6844();
  if (!v8)
  {
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v12 = sub_2669C5C94();
    __swift_project_value_buffer(v12, qword_2800ACC88);
    oslog = sub_2669C5C74();
    v13 = sub_2669C6864();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_266996000, oslog, v13, "#GetContactAttributeButtonableView could not convert direct invocation to actionable command", v14, 2u);
      MEMORY[0x26D5E4D50](v14, -1, -1);
    }

    sub_26699BE4C(a1, a2);
    goto LABEL_16;
  }

  v9 = v8;
  v10 = *(v2 + *(type metadata accessor for ModifyContactAttributeConfirmationView(0) + 20));
  if (v10)
  {
    v11 = v10;
    sub_2669C65C4();

    sub_26699BE4C(a1, a2);
  }

  else
  {
    sub_2669C65D4();
    sub_2669B787C(&qword_2800AC010, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_2669C5E74();
    __break(1u);
  }
}

uint64_t sub_2669B6CEC()
{
  v0 = sub_2669C5854();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ModifyContactAttributeConfirmationView(0);
  sub_2669C5BF4();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277D55978])
  {
    return (*(v1 + 8))(v3, v0);
  }

  (*(v1 + 96))(v3, v0);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  sub_26699BE4C(v4, v5);
  sub_2669B6A34(v6, v7);
  return sub_26699BE4C(v6, v7);
}

uint64_t sub_2669B6E3C(uint64_t a1, uint64_t (*a2)(void))
{
  type metadata accessor for ModifyContactAttributeConfirmationView(0);
  v3 = a2();
  sub_266999FC4(v3, v4, v5);
  v6 = sub_2669C6164();
  v8 = v7;
  v10 = v9 & 1;
  sub_2669C6254();
  sub_26699A018(v6, v8, v10);
}

uint64_t sub_2669B6F04()
{
  v1 = type metadata accessor for ModifyContactAttributeConfirmationView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_2_7();
  sub_2669B77D4(v0, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_2669B7700(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC848, &qword_2669C8660);
  sub_26699A174(&qword_2800AC850, &qword_2800AC848, &qword_2669C8660, MEMORY[0x277CE14C0]);
  return sub_2669C6484();
}

uint64_t sub_2669B7058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v61 = a2;
  v55 = sub_2669C5814();
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2669C64A4();
  v57 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC858, &qword_2669C8668);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v49 = &v46 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC860, &qword_2669C8670);
  v56 = *(v59 - 8);
  v6 = MEMORY[0x28223BE20](v59);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v46 - v8;
  v9 = sub_2669C60E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ModifyContactAttributeBodyView(0);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v47 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = (&v46 - v17);
  v19 = *(type metadata accessor for ModifyContactAttributeConfirmationView(0) + 24);
  v20 = *(v14 + 36);
  v21 = sub_2669C5C14();
  (*(*(v21 - 8) + 16))(v18 + v20, a1 + v19, v21);
  sub_2669C65D4();
  sub_2669B787C(&qword_2800AC010, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *v18 = sub_2669C5E84();
  v18[1] = v22;
  v62 = 0x402E000000000000;
  v23 = *MEMORY[0x277CE0A68];
  v24 = *(v10 + 104);
  v25 = v24(v12, v23, v9);
  sub_26699BF8C(v25, v26, v27);
  sub_2669C5D84();
  v62 = 0x4031000000000000;
  v24(v12, v23, v9);
  sub_2669C5D84();
  v28 = v48;
  sub_2669B5E4C(v48);
  v30 = v51;
  v29 = v52;
  v31 = v55;
  (*(v52 + 104))(v51, *MEMORY[0x277D62F38], v55);
  v32 = sub_2669B787C(&qword_2800AC868, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
  v33 = v49;
  v34 = v54;
  sub_2669C6194();
  (*(v29 + 8))(v30, v31);
  (*(v57 + 8))(v28, v34);
  v62 = v34;
  v63 = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v50;
  v36 = v58;
  sub_2669C61B4();
  (*(v60 + 8))(v33, v36);
  v37 = v47;
  sub_2669B77D4(v18, v47, type metadata accessor for ModifyContactAttributeBodyView);
  v38 = v56;
  v39 = *(v56 + 16);
  v40 = v53;
  v41 = v59;
  v39(v53, v35, v59);
  v42 = v61;
  sub_2669B77D4(v37, v61, type metadata accessor for ModifyContactAttributeBodyView);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC870, &qword_2669C8678);
  v39((v42 + *(v43 + 48)), v40, v41);
  v44 = *(v38 + 8);
  v44(v35, v41);
  sub_26699C0CC(v18);
  v44(v40, v41);
  return sub_26699C0CC(v37);
}

uint64_t sub_2669B7700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModifyContactAttributeConfirmationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2669B7764@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ModifyContactAttributeConfirmationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2669B7058(v4, a1);
}

uint64_t sub_2669B77D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2669B787C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for ModifyContactAttributeConfirmationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC060, &qword_2669C78A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2669C5D44();
    OUTLINED_FUNCTION_0();
    (*(v6 + 8))(v0 + v3);
  }

  else
  {
  }

  v7 = *(v1 + 24);
  sub_2669C5C14();
  OUTLINED_FUNCTION_0();
  (*(v8 + 8))(v5 + v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2669B7A28(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ModifyContactAttributeConfirmationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2669B7BAC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_2669C5C14();
      v11 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_2669B7CA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_2669C5C14();
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for ModifyContactAttributeBodyView(uint64_t a1)
{
  result = qword_2800AC8B0;
  if (!qword_2800AC8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2669B7DC4(uint64_t a1)
{
  sub_26699AD38(319);
  if (v1 <= 0x3F)
  {
    sub_2669A2C2C(319, v1, v2);
    if (v3 <= 0x3F)
    {
      sub_2669C5C14();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

BOOL sub_2669B7E7C()
{
  type metadata accessor for ModifyContactAttributeBodyView(0);
  v0 = sub_2669C5BD4();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  return v3 == 0;
}

uint64_t sub_2669B7ED4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  type metadata accessor for ModifyContactAttributeBodyView(0);
  v6 = sub_2669C5BD4();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    return sub_2669C5BD4();
  }

  sub_2669C5BE4();
  v11 = sub_2669C5964();
  (*(v2 + 8))(v5, v0);
  v12 = sub_2669C6924();

  return v12;
}

uint64_t sub_2669B800C()
{
  v1 = type metadata accessor for ModifyContactAttributeBodyView(0);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  sub_2669C5BB4();
  OUTLINED_FUNCTION_2();
  v103 = v8;
  v104 = v7;
  v9 = MEMORY[0x28223BE20](v7);
  v101 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v102 = v93 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  OUTLINED_FUNCTION_2_2(v12);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v13);
  v15 = v93 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC8D0, qword_2669C8750);
  OUTLINED_FUNCTION_2();
  v18 = v17;
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v19);
  v100 = v93 - v20;
  v99 = *(v1 + 28);
  v21 = sub_2669BB520();
  v22 = sub_2669B7ED4();
  if (v21)
  {
    v94 = v3;
    v95 = v18;
    v96 = v5;
    v97 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v98 = v16;
    v105 = v22;
    v106 = v23;
    sub_266999FC4(v22, v23, v24);
    sub_2669C6164();
    OUTLINED_FUNCTION_7_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
    sub_2669C5D94();
    v25 = sub_2669C60A4();
    OUTLINED_FUNCTION_5_3(v15, v26, v27, v25);
    sub_2669C60C4();
    sub_2669B913C(v15);
    v28 = sub_2669C6154();
    v30 = v29;
    v32 = v31;

    v33 = OUTLINED_FUNCTION_6_3();
    sub_26699A018(v33, v34, v35);

    sub_2669C60B4();
    v93[0] = sub_2669C6124();
    v37 = v36;
    v39 = v38;
    v93[1] = v40;
    sub_26699A018(v28, v30, v32 & 1);

    if (!sub_2669B7E7C())
    {
      v41 = v102;
      sub_2669C5BC4();
      v43 = v103;
      v42 = v104;
      v44 = v101;
      (*(v103 + 104))(v101, *MEMORY[0x277D55AC8], v104);
      sub_2669C5BA4();
      v45 = *(v43 + 8);
      v45(v44, v42);
      v45(v41, v42);
    }

    v46 = v93[0];
    v47 = sub_2669C6114();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_26699A018(v46, v37, v39 & 1);

    v105 = v47;
    v106 = v49;
    v107 = v51 & 1;
    v108 = v53;
    v54 = v97;
    sub_2669B91EC(v0, v97);
    v55 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v56 = swift_allocObject();
    sub_2669B93AC(v54, v56 + v55);
    v57 = MEMORY[0x277CE0BD8];
    v58 = MEMORY[0x277CE0BC8];
    v59 = v100;
    sub_2669C6234();

    sub_26699A018(v47, v49, v51 & 1);

    v105 = v57;
    v106 = v58;
    swift_getOpaqueTypeConformance2();
    v60 = v98;
    v61 = sub_2669C6174();
    (*(v95 + 8))(v59, v60);
  }

  else
  {
    v105 = v22;
    v106 = v23;
    sub_266999FC4(v22, v23, v24);
    sub_2669C6164();
    OUTLINED_FUNCTION_7_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
    sub_2669C5D94();
    v62 = sub_2669C60A4();
    OUTLINED_FUNCTION_5_3(v15, v63, v64, v62);
    sub_2669C60C4();
    sub_2669B913C(v15);
    v65 = sub_2669C6154();
    v67 = v66;
    v69 = v68;

    v70 = OUTLINED_FUNCTION_6_3();
    sub_26699A018(v70, v71, v72);

    sub_2669C60B4();
    v73 = sub_2669C6124();
    v75 = v74;
    v77 = v76;
    v100 = v78;
    sub_26699A018(v65, v67, v69 & 1);

    if (!sub_2669B7E7C())
    {
      v79 = v102;
      sub_2669C5BC4();
      v81 = v103;
      v80 = v104;
      v82 = v101;
      (*(v103 + 104))(v101, *MEMORY[0x277D55AC8], v104);
      sub_2669C5BA4();
      v83 = *(v81 + 8);
      v83(v82, v80);
      v83(v79, v80);
    }

    v84 = sub_2669C6114();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    sub_26699A018(v73, v75, v77 & 1);

    v105 = v84;
    v106 = v86;
    v91 = v88 & 1;
    v107 = v88 & 1;
    v108 = v90;
    v61 = sub_2669C6174();
    sub_26699A018(v84, v86, v91);
  }

  return v61;
}

uint64_t sub_2669B879C(id *a1)
{
  type metadata accessor for ModifyContactAttributeBodyView(0);
  v2 = sub_2669C5B94();
  if (*a1)
  {
    v4 = v2;
    v5 = v3;
    v6 = *a1;
    sub_26699AE40();

    return sub_26699BE4C(v4, v5);
  }

  else
  {
    sub_2669C65D4();
    sub_2669B91A4(&qword_2800AC010, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_2669C5E74();
    __break(1u);
  }

  return result;
}

uint64_t sub_2669B8888(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2669C5FE4();
  v4 = sub_2669C6144();
  v6 = v5;
  v8 = v7;
  sub_2669C6134();
  OUTLINED_FUNCTION_7_2();
  sub_26699A018(v4, v6, v8 & 1);

  return OUTLINED_FUNCTION_6_3();
}

uint64_t sub_2669B8958@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v83 = sub_2669C5814();
  OUTLINED_FUNCTION_2();
  v81 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_4_1(v4);
  v5 = sub_2669C5844();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_4_1(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  OUTLINED_FUNCTION_2_2(v8);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v9);
  v11 = v74 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  OUTLINED_FUNCTION_2();
  v84 = v12;
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v13);
  v15 = v74 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC180, &qword_2669C8740);
  OUTLINED_FUNCTION_2();
  v75 = v16;
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_1(v74 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC8C0, &qword_2669C8748);
  OUTLINED_FUNCTION_2();
  v21 = v20;
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v22);
  v24 = v74 - v23;
  v79 = sub_2669C6544();
  OUTLINED_FUNCTION_2();
  v78 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_4_1(v27);
  v28 = sub_2669B7E7C();
  v86 = v1;
  v29 = sub_2669B800C();
  v30 = v29;
  v31 = MEMORY[0x277CE11C8];
  if (v28)
  {
    v99 = v29;
    v32 = MEMORY[0x277CE11C0];
    sub_2669C6254();

    v99 = v31;
    v100 = v32;
    OUTLINED_FUNCTION_2_8();
    swift_getOpaqueTypeConformance2();
    v30 = sub_2669C6174();
    (*(v21 + 8))(v24, v19);
  }

  v101 = v31;
  v102 = MEMORY[0x277D63A60];
  v98 = 0;
  v99 = v30;
  v96 = 0u;
  v97 = 0u;
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v33 = sub_2669B7E7C();
  v34 = v85;
  if (v33)
  {
    v35 = 0;
    v36 = 0;
    v89 = 0;
    v88 = 0;
    v90 = 0;
    v37 = v84;
  }

  else
  {
    type metadata accessor for ModifyContactAttributeBodyView(0);
    sub_2669C5BE4();
    v38 = sub_2669C5964();
    (*(v84 + 8))(v15, v34);
    v39 = sub_2669C6924();
    v41 = v40;

    v88 = v39;
    v89 = v41;
    sub_266999FC4(v42, v43, v44);
    v45 = sub_2669C6164();
    v47 = v46;
    LOBYTE(v39) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
    sub_2669C5D94();
    v49 = sub_2669C60A4();
    OUTLINED_FUNCTION_5_3(v11, v50, v51, v49);
    sub_2669C60C4();
    sub_2669B913C(v11);
    v52 = sub_2669C6154();
    v54 = v53;
    v56 = v55;
    v58 = v57;

    sub_26699A018(v45, v47, v39 & 1);

    v88 = v52;
    v89 = v54;
    LOBYTE(v90) = v56 & 1;
    v91 = v58;
    v59 = MEMORY[0x277CE0BD8];
    v60 = MEMORY[0x277CE0BC8];
    v61 = v74[1];
    sub_2669C6254();
    sub_26699A018(v52, v54, v56 & 1);

    v88 = v59;
    v34 = v85;
    v89 = v60;
    v37 = v84;
    OUTLINED_FUNCTION_2_8();
    swift_getOpaqueTypeConformance2();
    v62 = v76;
    v63 = sub_2669C6174();
    (*(v75 + 8))(v61, v62);
    v88 = v63;
    v36 = MEMORY[0x277D63A60];
    v35 = MEMORY[0x277CE11C8];
  }

  v91 = v35;
  v92 = v36;
  type metadata accessor for ModifyContactAttributeBodyView(0);
  sub_2669C5BE4();
  v64 = sub_2669C5964();
  (*(v37 + 8))(v15, v34);
  v65 = [v64 identifier];

  sub_2669C6654();
  sub_2669C5834();

  v87[3] = sub_2669C6454();
  v87[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v87);
  sub_2669C6464();
  v66 = v77;
  sub_2669C6534();
  v67 = v81;
  v68 = v80;
  v69 = v83;
  (*(v81 + 104))(v80, *MEMORY[0x277D62F38], v83);
  OUTLINED_FUNCTION_1_7();
  sub_2669B91A4(v70, v71, MEMORY[0x277D63DA8]);
  v72 = v79;
  sub_2669C6194();
  (*(v67 + 8))(v68, v69);
  return (*(v78 + 8))(v66, v72);
}

uint64_t sub_2669B913C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2669B91A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2669B91EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModifyContactAttributeBodyView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2669B9250()
{
  v1 = (type metadata accessor for ModifyContactAttributeBodyView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[8], v6);
  v8 = v1[9];
  v9 = sub_2669C5C14();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2669B93AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModifyContactAttributeBodyView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2669B9410()
{
  v1 = type metadata accessor for ModifyContactAttributeBodyView(0);
  OUTLINED_FUNCTION_2_2(v1);
  v3 = (v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return sub_2669B879C(v3);
}

uint64_t sub_2669B946C()
{
  sub_2669C6544();
  OUTLINED_FUNCTION_1_7();
  sub_2669B91A4(v0, v1, MEMORY[0x277D63DA8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2669B9574()
{
  v0 = sub_2669C60E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0x4028000000000000;
  v4 = *MEMORY[0x277CE0A68];
  v5 = *(v1 + 104);
  v6 = v5(v3, v4, v0);
  sub_26699BF8C(v6, v7, v8);
  sub_2669C5D84();
  type metadata accessor for GetContactQuickActionButtonLabelStyle(0);
  v11 = 0x4030000000000000;
  v5(v3, v4, v0);
  return sub_2669C5D84();
}

uint64_t sub_2669B9704()
{
  OUTLINED_FUNCTION_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2669B9768()
{
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  v0 = OUTLINED_FUNCTION_0_9();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2669B97C4()
{
  OUTLINED_FUNCTION_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2669B9828()
{
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  v0 = OUTLINED_FUNCTION_0_9();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_2669B9890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2669A2C2C(319, a2, a3);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2669B9918@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2669C5F94();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC8F8, &unk_2669C8840);
  return sub_2669B997C(a2 + *(v3 + 44));
}

uint64_t sub_2669B997C@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC900, &qword_2669C8850);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC908, &qword_2669C8858);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  sub_2669C6004();
  type metadata accessor for GetContactQuickActionButtonLabelStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  sub_2669C5D94();
  sub_2669C63F4();
  sub_2669C5DB4();
  v17 = &v16[*(v11 + 44)];
  v18 = v31;
  *v17 = v30;
  *(v17 + 1) = v18;
  *(v17 + 2) = v32;
  sub_2669C6014();
  sub_2669C5D94();
  v19 = sub_2669C60A4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v19);
  v20 = sub_2669C60C4();
  sub_2669B9E20(v3, &qword_2800AC2E8, &qword_2669C81D0);
  KeyPath = swift_getKeyPath();
  v22 = &v9[*(v5 + 44)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_2669B9DB8(v16, v14, &qword_2800AC908, &qword_2669C8858);
  v23 = v28;
  sub_2669B9DB8(v9, v28, &qword_2800AC900, &qword_2669C8850);
  v24 = v29;
  sub_2669B9DB8(v14, v29, &qword_2800AC908, &qword_2669C8858);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC910, &qword_2669C8890);
  sub_2669B9DB8(v23, v24 + *(v25 + 48), &qword_2800AC900, &qword_2669C8850);
  sub_2669B9E20(v9, &qword_2800AC900, &qword_2669C8850);
  sub_2669B9E20(v16, &qword_2800AC908, &qword_2669C8858);
  sub_2669B9E20(v23, &qword_2800AC900, &qword_2669C8850);
  return sub_2669B9E20(v14, &qword_2800AC908, &qword_2669C8858);
}

double sub_2669B9CE0@<D0>(uint64_t a2@<X8>)
{
  sub_2669C6004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  sub_2669C5D94();
  sub_2669C63F4();
  sub_2669C5DB4();
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC908, &qword_2669C8858) + 36));
  *v3 = v5;
  v3[1] = v6;
  result = *&v7;
  v3[2] = v7;
  return result;
}

uint64_t sub_2669B9DB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2669B9E20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2669B9E84()
{
  result = qword_2800AC918;
  if (!qword_2800AC918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC920, &qword_2669C8898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC918);
  }

  return result;
}

unint64_t sub_2669B9EEC()
{
  result = qword_2800AC928;
  if (!qword_2800AC928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC908, &qword_2669C8858);
    sub_2669B9F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC928);
  }

  return result;
}

unint64_t sub_2669B9F78()
{
  result = qword_2800AC930;
  if (!qword_2800AC930)
  {
    sub_2669C5FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC930);
  }

  return result;
}

uint64_t sub_2669B9FE4()
{
  v0 = sub_2669C5A94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GetContactAttributeAgeView(0);
  type metadata accessor for GetContactAttributeViewModel(0);
  result = MEMORY[0x26D5E3750]();
  if (*(result + 16))
  {
    (*(v1 + 16))(v3, result + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    v5 = sub_2669C5A64();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    if (v7)
    {
      return v5;
    }

    else
    {
      return 48;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GetContactAttributeAgeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  ContactAttributeAgeView = type metadata accessor for GetContactAttributeAgeView(0);
  v3 = ContactAttributeAgeView - 8;
  v76 = *(ContactAttributeAgeView - 8);
  MEMORY[0x28223BE20](ContactAttributeAgeView);
  v77 = v4;
  v78 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2669C5844();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_3_6();
  v75 = v6;
  sub_2669C5A94();
  OUTLINED_FUNCTION_2();
  v67 = v8;
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_6();
  v66 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC180, &qword_2669C8740);
  OUTLINED_FUNCTION_2();
  v82 = v16;
  v83 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v66 - v18;
  sub_2669C6584();
  OUTLINED_FUNCTION_2();
  v71 = v21;
  v72 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_6();
  v70 = v22;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC938, &unk_2669C88A0);
  MEMORY[0x28223BE20](v74);
  v73 = &v66 - v23;
  v24 = sub_2669B9FE4();
  v103 = MEMORY[0x277D837D0];
  v104 = MEMORY[0x277D63F90];
  v101 = v24;
  v102 = v25;
  v26 = *(v3 + 28);
  v79 = v1;
  v81 = v1 + v26;
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  sub_2669C5AE4();
  v27 = sub_2669C5964();
  (*(v12 + 8))(v15, v10);
  v28 = sub_2669C6924();
  v30 = v29;

  v96 = v28;
  v97 = v30;
  sub_266999FC4(v31, v32, v33);
  v34 = sub_2669C6164();
  v36 = v35;
  v96 = v34;
  v97 = v35;
  v38 = v37 & 1;
  v98 = v37 & 1;
  v99 = v39;
  v40 = MEMORY[0x277CE0BD8];
  v41 = MEMORY[0x277CE0BC8];
  sub_2669C6254();
  v42 = v34;
  v43 = v81;
  sub_26699A018(v42, v36, v38);

  v96 = v40;
  v97 = v41;
  swift_getOpaqueTypeConformance2();
  v44 = v82;
  v45 = sub_2669C6174();
  v46 = (*(v83 + 8))(v19, v44);
  v99 = MEMORY[0x277CE11C8];
  v100 = MEMORY[0x277D63A68];
  v96 = v45;
  result = MEMORY[0x26D5E3750](v46);
  if (*(result + 16))
  {
    v49 = v66;
    v48 = v67;
    v50 = v68;
    (*(v67 + 16))(v66, result + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v68);

    v51 = sub_2669C5A54();
    v53 = v52;
    (*(v48 + 8))(v49, v50);
    if (v53)
    {
      v54 = MEMORY[0x277D63F90];
      v55 = MEMORY[0x277D837D0];
    }

    else
    {
      v51 = 0;
      v55 = 0;
      v54 = 0;
      v93 = 0;
    }

    v91 = v51;
    v92 = v53;
    v94 = v55;
    v95 = v54;
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
    v56 = sub_2669C4E90();
    if (v57)
    {
      v58 = MEMORY[0x277D63F90];
      v59 = MEMORY[0x277D837D0];
    }

    else
    {
      v56 = 0;
      v59 = 0;
      v58 = 0;
      v84[7] = 0;
    }

    v84[5] = v56;
    v84[6] = v57;
    v84[8] = v59;
    v84[9] = v58;
    sub_2669C5AC4();
    sub_2669C5834();

    v84[3] = sub_2669C6454();
    v84[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v84);
    sub_2669C6464();
    v60 = v70;
    sub_2669C6574();
    v61 = *(v43 + *(ContactAttributeViewModel + 28));
    v62 = v73;
    (*(v71 + 32))(v73, v60, v72);
    *(v62 + *(v74 + 36)) = v61;
    v63 = v78;
    sub_2669BAB88(v79, v78);
    v64 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v65 = swift_allocObject();
    sub_2669BAD4C(v63, v65 + v64);
    sub_2669BAE10();

    sub_2669C6234();

    return sub_2669BAF58(v62);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for GetContactAttributeAgeView(uint64_t a1)
{
  result = qword_2800AC950;
  if (!qword_2800AC950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2669BA814()
{
  v0 = sub_2669C65A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2669C5B54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GetContactAttributeAgeView(0);
  type metadata accessor for GetContactAttributeViewModel(0);
  sub_2669C5A34();
  v8 = sub_2669C5B24();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v11 = sub_2669C5C94();
    __swift_project_value_buffer(v11, qword_2800ACC88);
    v12 = sub_2669C5C74();
    v13 = sub_2669C6864();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_266996000, v12, v13, "#GetContactAttributeAgeView could not obtain direct invocation for button press", v14, 2u);
      MEMORY[0x26D5E4D50](v14, -1, -1);
    }
  }

  else
  {
    sub_26699BEF0();
    v15 = sub_2669C6844();
    if (v15)
    {
      v16 = v15;
      sub_2669C64D4();
      v17 = v16;
      sub_2669C6594();

      sub_26699BE4C(v8, v10);
      (*(v1 + 8))(v3, v0);
    }

    else
    {
      if (qword_2800ABEB8 != -1)
      {
        swift_once();
      }

      v18 = sub_2669C5C94();
      __swift_project_value_buffer(v18, qword_2800ACC88);
      v19 = sub_2669C5C74();
      v20 = sub_2669C6864();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_266996000, v19, v20, "#GetContactAttributeAgeView could not convert direct invocation to actionable command", v21, 2u);
        MEMORY[0x26D5E4D50](v21, -1, -1);
      }

      sub_26699BE4C(v8, v10);
    }
  }
}

uint64_t sub_2669BAB88(uint64_t a1, uint64_t a2)
{
  ContactAttributeAgeView = type metadata accessor for GetContactAttributeAgeView(0);
  (*(*(ContactAttributeAgeView - 8) + 16))(a2, a1, ContactAttributeAgeView);
  return a2;
}

uint64_t sub_2669BABEC()
{
  v1 = (type metadata accessor for GetContactAttributeAgeView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_2669C64F4();
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v0 + v3);
  v6 = (v0 + v3 + v1[7]);
  __swift_destroy_boxed_opaque_existential_0(v6);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  v8 = *(ContactAttributeViewModel + 20);
  sub_2669C5B04();
  OUTLINED_FUNCTION_0_1();
  (*(v9 + 8))(&v6[v8]);
  v10 = *(ContactAttributeViewModel + 24);
  sub_2669C5D44();
  OUTLINED_FUNCTION_0_1();
  (*(v11 + 8))(&v6[v10]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2669BAD4C(uint64_t a1, uint64_t a2)
{
  ContactAttributeAgeView = type metadata accessor for GetContactAttributeAgeView(0);
  (*(*(ContactAttributeAgeView - 8) + 32))(a2, a1, ContactAttributeAgeView);
  return a2;
}

void sub_2669BADB0()
{
  type metadata accessor for GetContactAttributeAgeView(0);

  sub_2669BA814();
}

unint64_t sub_2669BAE10()
{
  result = qword_2800AC940;
  if (!qword_2800AC940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC938, &unk_2669C88A0);
    sub_2669BAE9C();
    sub_2669BAEF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC940);
  }

  return result;
}

unint64_t sub_2669BAE9C()
{
  result = qword_2800AC948;
  if (!qword_2800AC948)
  {
    sub_2669C6584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC948);
  }

  return result;
}

unint64_t sub_2669BAEF4()
{
  result = qword_2800AC168;
  if (!qword_2800AC168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC170, &qword_2669C7BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC168);
  }

  return result;
}

uint64_t sub_2669BAF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC938, &unk_2669C88A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2669BAFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2669C64F4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    ContactAttributeViewModel = v6;
    v8 = a1;
  }

  else
  {
    ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, ContactAttributeViewModel);
}

uint64_t sub_2669BB0A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2669C64F4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    ContactAttributeViewModel = v8;
    v10 = a1;
  }

  else
  {
    ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, ContactAttributeViewModel);
}

uint64_t sub_2669BB148(uint64_t a1)
{
  result = sub_2669C64F4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GetContactAttributeViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2669BB1CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC938, &unk_2669C88A0);
  sub_2669BAE10();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2669BB23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2669BB76C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_9(v4);
  return v3;
}

uint64_t sub_2669BB284(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2669BB7E4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_9(v3);
  return v2;
}

void *sub_2669BB2CC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2669BB6D8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_2669BB314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2669BB76C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2669BB37C(unsigned int *a1)
{
  v2 = sub_2669C5864();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v8 = v7 - v6;
  v9 = sub_2669C5894();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  v15 = v14 - v13;
  v16 = sub_2669C5C04();
  v17 = MEMORY[0x26D5E3530](v16);
  (*(v11 + 8))(v15, v9);
  (*(v4 + 104))(v8, *a1, v2);
  v18 = sub_2669BB284(v8, v17);
  v20 = v19;

  (*(v4 + 8))(v8, v2);
  if (!v20)
  {
    return sub_2669C66D4();
  }

  return v18;
}

BOOL sub_2669BB520()
{
  v0 = sub_2669C5B74();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v6 = v5 - v4;
  v7 = sub_2669C5854();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v13 = v12 - v11;
  sub_2669C5BF4();
  v14 = (*(v9 + 88))(v13, v7);
  v15 = *MEMORY[0x277D55970];
  (*(v9 + 8))(v13, v7);
  if (v14 != v15)
  {
    return 0;
  }

  sub_2669C5B64();
  v16 = (*(v2 + 88))(v6, v0) == *MEMORY[0x277D55AB0];
  (*(v2 + 8))(v6, v0);
  return v16;
}

unint64_t sub_2669BB6D8(uint64_t a1)
{
  sub_2669C6654();
  sub_2669C6AC4();
  sub_2669C66F4();
  v2 = sub_2669C6AD4();

  return sub_2669BB868(a1, v2);
}

unint64_t sub_2669BB76C(uint64_t a1, uint64_t a2)
{
  sub_2669C6AC4();
  sub_2669C66F4();
  v4 = sub_2669C6AD4();

  return sub_2669BB960(a1, a2, v4);
}

unint64_t sub_2669BB7E4(uint64_t a1)
{
  sub_2669C5864();
  sub_2669BBBBC(&qword_2800AC960, MEMORY[0x277D559D0]);
  v2 = sub_2669C6604();

  return sub_2669BBA14(a1, v2);
}

unint64_t sub_2669BB868(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_2669C6654();
    v7 = v6;
    if (v5 == sub_2669C6654() && v7 == v8)
    {

      return i;
    }

    v10 = sub_2669C6A94();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_2669BB960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2669C6A94() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2669BBA14(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_2669C5864();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2669BBBBC(&qword_2800AC968, MEMORY[0x277D559D8]);
    v9 = sub_2669C6614();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2669BBBBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2669C5864();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1)
{
}

void sub_2669BBC20()
{
  OUTLINED_FUNCTION_35();
  v3 = v2;
  v4 = sub_2669C5894();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_46();
  v6 = sub_2669C5B54();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-1] - v15;
  sub_2669C59F4();
  v17 = sub_2669C5964();
  (*(v13 + 8))(v16, v11);
  sub_2669C59C4();
  if (sub_2669C59D4())
  {
    v18 = sub_2669C62D4();
  }

  else
  {
    v18 = sub_2669C62C4();
  }

  v19 = v18;
  sub_2669C5A04();
  v20 = [objc_opt_self() sharedInstance];
  v23[3] = sub_26699F8F0(0, &qword_2800ACAF0, 0x277D6EDF8);
  v23[4] = &off_28782C1C0;
  v23[0] = v20;
  (*(v0 + 488))(v17, v10, v19, v23, v1, [objc_allocWithZone(MEMORY[0x277CFBF28]) init]);
  sub_2669C5A14();
  OUTLINED_FUNCTION_0_1();
  (*(v21 + 8))(v3);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_2669BBE7C()
{
  sub_2669BBF38();
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = sub_2669BB2CC(v1, v0);

  if (!v2 || (v3 = [v2 array], v2, v4 = sub_2669C6764(), v3, v5 = sub_2669BE878(v4), , !v5))
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t sub_2669BBFC4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2669C5CD4();

  return v3;
}

uint64_t sub_2669BC044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_2669C5CE4();
}

uint64_t sub_2669BC0E8(unsigned int *a1)
{
  v3 = sub_2669C5864();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_46();
  v7 = MEMORY[0x26D5E3530]();
  (*(v5 + 104))(v1, *a1, v3);
  v8 = sub_2669BB284(v1, v7);
  v10 = v9;

  (*(v5 + 8))(v1, v3);
  if (!v10)
  {
    return sub_2669C66D4();
  }

  return v8;
}

uint64_t sub_2669BC1FC(uint64_t a1)
{
  v3 = sub_2669C5954();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_46();
  (*(v5 + 16))(v1, a1, v3);
  v7 = OUTLINED_FUNCTION_45();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D55A28])
  {
    return sub_2669BC0D0();
  }

  if (v9 == *MEMORY[0x277D55A18])
  {
    return sub_2669BC0AC();
  }

  if (v9 == *MEMORY[0x277D55A38])
  {
    return sub_2669BC0DC();
  }

  if (v9 == *MEMORY[0x277D55A20])
  {
    return sub_2669BC0C4();
  }

  if (v9 == *MEMORY[0x277D55A30])
  {
    return sub_2669BC0B8();
  }

  result = sub_2669C6A84();
  __break(1u);
  return result;
}

uint64_t sub_2669BC35C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800ACA60, &unk_2669C8A58);
  OUTLINED_FUNCTION_2_2(v0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - v2;
  v18 = MEMORY[0x277D84F98];
  sub_2669BC4C4();
  sub_2669BE194();
  sub_2669BBF4C(v18);
  sub_2669C67C4();
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_32();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_51(v4);
  v5 = OUTLINED_FUNCTION_13_2();
  sub_2669BF8F0(v5, v6, v3, v7, v4);

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_32();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_51(v8);
  v9 = OUTLINED_FUNCTION_13_2();
  sub_2669BF8F0(v9, v10, v3, v11, v8);

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_32();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_51(v12);
  v13 = OUTLINED_FUNCTION_13_2();
  sub_2669BF8F0(v13, v14, v3, v15, v12);
}

void sub_2669BC4C4()
{
  OUTLINED_FUNCTION_35();
  v2 = v1;
  v70 = sub_2669C5954();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v69 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  v9 = OUTLINED_FUNCTION_2_2(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_0();
  v68 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v61 = &v59 - v13;
  v79 = MEMORY[0x277D84F90];
  v71 = v0;
  v14 = [*(v0 + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_contact) phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC718, qword_2669C8440);
  OUTLINED_FUNCTION_43();
  v15 = sub_2669C6764();

  v16 = sub_26699F950(v15);
  if (v16)
  {
    if (v16 >= 1)
    {
      v60 = v2;
      v17 = 0;
      v65 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_labelCATs;
      v63 = (v4 + 104);
      v64 = v15 & 0xC000000000000001;
      v18 = &_OBJC_LABEL_PROTOCOL___NSObject;
      v62 = *MEMORY[0x277D55A18];
      v19 = &_OBJC_LABEL_PROTOCOL___NSObject;
      v20 = v61;
      v66 = v16;
      v67 = v15;
      while (1)
      {
        v21 = v64 ? MEMORY[0x26D5E4670](v17, v15) : *(v15 + 8 * v17 + 32);
        v22 = v21;
        v23 = sub_2669C13D0([v21 v18[32]]);
        v76 = v17;
        if (v24)
        {
          v74 = v24;
          v75 = v23;
        }

        else
        {
          v25 = [v22 v18[32]];
          v26 = [v25 v19[44]];

          v20 = v61;
          v27 = sub_2669C6654();
          v74 = v28;
          v75 = v27;
        }

        v29 = sub_2669C66A4();
        v31 = v30;
        v32 = [v22 v18[32]];
        v33 = [v32 v19[44]];

        sub_2669C6654();
        v34 = sub_2669C66B4();
        v36 = v35;

        v77 = v29;
        v78 = v31;

        MEMORY[0x26D5E43B0](v34, v36);

        sub_2669C57B4();

        v37 = sub_2669C5874();
        v38 = [v22 identifier];
        v39 = sub_2669C6654();
        v41 = v40;

        if (!*(v37 + 16))
        {
          break;
        }

        v42 = sub_2669BB76C(v39, v41);
        v44 = v43;

        if ((v44 & 1) == 0)
        {
          goto LABEL_14;
        }

        v73 = *(*(v37 + 56) + 16 * v42);

LABEL_17:
        sub_2669C6674();
        v47 = [v22 v18[32]];
        v48 = [v47 v19[44]];

        sub_2669C6654();
        (*v63)(v69, v62, v70);
        v72 = v22;
        v49 = v20;
        sub_2669B9DB8(v20, v68, &qword_2800AC540, &qword_2669C8220);
        v50 = objc_allocWithZone(sub_2669C5914());
        v51 = sub_2669C58B4();
        MEMORY[0x26D5E43F0]();
        if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          OUTLINED_FUNCTION_49();
        }

        v17 = v76 + 1;
        OUTLINED_FUNCTION_45();
        sub_2669C6794();

        sub_2669C0BA0(v49, &qword_2800AC540, &qword_2669C8220);
        v20 = v49;
        v15 = v67;
        v18 = &_OBJC_LABEL_PROTOCOL___NSObject;
        v19 = &_OBJC_LABEL_PROTOCOL___NSObject;
        if (v66 == v17)
        {
          v52 = v79;

          v2 = v60;
          goto LABEL_22;
        }
      }

LABEL_14:

      v45 = [v22 label];
      if (v45)
      {
        v46 = v45;
        v73 = sub_2669C6654();
      }

      else
      {
        v73 = 0;
      }

      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {

    v52 = MEMORY[0x277D84F90];
LABEL_22:
    v53 = *MEMORY[0x277CBCF70];
    sub_26699F8F0(0, &qword_2800ACAA0, 0x277CBEB40);
    sub_2669BFE64(v52);
    v55 = v54;

    if (sub_2669BFFAC(v55))
    {
      swift_isUniquelyReferenced_nonNull_native();
      v77 = *v2;
      v56 = OUTLINED_FUNCTION_3();
      sub_2669C10DC(v56, v57, v58);
      *v2 = v77;
    }

    else
    {
    }

    OUTLINED_FUNCTION_37();
  }
}

uint64_t sub_2669BCABC()
{
  OUTLINED_FUNCTION_12_1();
  v1[9] = v0;
  v2 = sub_2669C6414();
  v1[10] = v2;
  OUTLINED_FUNCTION_10_1(v2);
  v1[11] = v3;
  v1[12] = OUTLINED_FUNCTION_37_0();
  v4 = sub_2669C6434();
  v1[13] = v4;
  OUTLINED_FUNCTION_10_1(v4);
  v1[14] = v5;
  v1[15] = OUTLINED_FUNCTION_37_0();
  v6 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2669BCBAC()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_2669BCC48;

  return MEMORY[0x2821B7678]();
}

uint64_t sub_2669BCC48()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_16_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2669BCD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_7_3();
  sub_26699F8F0(0, &qword_2800ACAC8, 0x277D85C78);
  v38 = sub_2669C6894();
  OUTLINED_FUNCTION_44();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_36_0(v18);
  OUTLINED_FUNCTION_33();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v15;
  v14[6] = sub_2669C1B2C;
  v14[7] = v19;
  v14[2] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_10(COERCE_DOUBLE(1107296256));
  v14[4] = v20;
  v14[5] = &block_descriptor_73;
  v21 = _Block_copy(v17);

  sub_2669C6424();
  v14[8] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_3_7();
  sub_2669C1A24(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACAD8, &qword_2669C8B58);
  v24 = sub_2669C1A68();
  OUTLINED_FUNCTION_11_2(v24);
  OUTLINED_FUNCTION_17_2();
  _Block_release(v21);

  v25 = OUTLINED_FUNCTION_28_0();
  v26(v25);
  v27 = OUTLINED_FUNCTION_27_0();
  v28(v27);

  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_48();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12, a13, a14);
}

uint64_t sub_2669BCEE4()
{
  OUTLINED_FUNCTION_12_1();
  v1[9] = v0;
  v2 = sub_2669C6414();
  v1[10] = v2;
  OUTLINED_FUNCTION_10_1(v2);
  v1[11] = v3;
  v1[12] = OUTLINED_FUNCTION_37_0();
  v4 = sub_2669C6434();
  v1[13] = v4;
  OUTLINED_FUNCTION_10_1(v4);
  v1[14] = v5;
  v1[15] = OUTLINED_FUNCTION_37_0();
  v6 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2669BCFD4()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_2669BD070;

  return MEMORY[0x2821B7680]();
}

uint64_t sub_2669BD070()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_16_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2669BD158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_7_3();
  sub_26699F8F0(0, &qword_2800ACAC8, 0x277D85C78);
  v38 = sub_2669C6894();
  OUTLINED_FUNCTION_44();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_36_0(v18);
  OUTLINED_FUNCTION_33();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v15;
  v14[6] = sub_2669C1ACC;
  v14[7] = v19;
  v14[2] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_10(COERCE_DOUBLE(1107296256));
  v14[4] = v20;
  v14[5] = &block_descriptor_65;
  v21 = _Block_copy(v17);

  sub_2669C6424();
  v14[8] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_3_7();
  sub_2669C1A24(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACAD8, &qword_2669C8B58);
  v24 = sub_2669C1A68();
  OUTLINED_FUNCTION_11_2(v24);
  OUTLINED_FUNCTION_17_2();
  _Block_release(v21);

  v25 = OUTLINED_FUNCTION_28_0();
  v26(v25);
  v27 = OUTLINED_FUNCTION_27_0();
  v28(v27);

  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_48();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12, a13, a14);
}

uint64_t sub_2669BD30C()
{
  OUTLINED_FUNCTION_12_1();
  v1[9] = v0;
  v2 = sub_2669C6414();
  v1[10] = v2;
  OUTLINED_FUNCTION_10_1(v2);
  v1[11] = v3;
  v1[12] = OUTLINED_FUNCTION_37_0();
  v4 = sub_2669C6434();
  v1[13] = v4;
  OUTLINED_FUNCTION_10_1(v4);
  v1[14] = v5;
  v1[15] = OUTLINED_FUNCTION_37_0();
  v6 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2669BD3FC()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_2669BD498;

  return MEMORY[0x2821B7688]();
}

uint64_t sub_2669BD498()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_16_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2669BD580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_7_3();
  sub_26699F8F0(0, &qword_2800ACAC8, 0x277D85C78);
  v38 = sub_2669C6894();
  OUTLINED_FUNCTION_44();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_36_0(v18);
  OUTLINED_FUNCTION_33();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v15;
  v14[6] = sub_2669C1A00;
  v14[7] = v19;
  v14[2] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_2_10(COERCE_DOUBLE(1107296256));
  v14[4] = v20;
  v14[5] = &block_descriptor_57;
  v21 = _Block_copy(v17);

  sub_2669C6424();
  v14[8] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_3_7();
  sub_2669C1A24(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACAD8, &qword_2669C8B58);
  v24 = sub_2669C1A68();
  OUTLINED_FUNCTION_11_2(v24);
  OUTLINED_FUNCTION_17_2();
  _Block_release(v21);

  v25 = OUTLINED_FUNCTION_28_0();
  v26(v25);
  v27 = OUTLINED_FUNCTION_27_0();
  v28(v27);

  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_48();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12, a13, a14);
}

void sub_2669BD734()
{
  OUTLINED_FUNCTION_35();
  v116 = v0;
  v2 = v1;
  v122 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  v5 = OUTLINED_FUNCTION_2_2(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_0();
  v112 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v123 = &v104 - v9;
  v115 = sub_2669C59B4();
  OUTLINED_FUNCTION_2();
  v117 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  v14 = v13 - v12;
  v15 = sub_2669C5954();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_1();
  v21 = v20 - v19;
  v22 = *(v17 + 104);
  v22(v20 - v19, *MEMORY[0x277D55A18], v15);
  v23 = sub_2669997AC(v2, v21);
  v121 = v17;
  v24 = *(v17 + 8);
  v24(v21, v15);
  v25 = *MEMORY[0x277D55A38];
  if (v23 & 1) != 0 || (v22(v21, *MEMORY[0x277D55A38], v15), v26 = sub_2669997AC(v2, v21), v24(v21, v15), (v26))
  {
    v22(v21, v25, v15);
    v111 = v2;
    v113 = sub_2669997AC(v2, v21);
    v110 = v15;
    v24(v21, v15);
    v114 = [objc_allocWithZone(MEMORY[0x277CBEB40]) init];
    v27 = *(v122 + 16);
    if (v27)
    {
      v109 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_contact;
      v108 = *(v117 + 16);
      v107 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_labelCATs;
      v28 = v122 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
      v106 = (v121 + 16);
      v105 = (v117 + 8);
      v117 += 16;
      v104 = *(v117 + 56);
      while (1)
      {
        v121 = v28;
        v122 = v27;
        v108(v14);
        if (sub_2669C5984())
        {
          sub_26699F8F0(0, &qword_2800ACAB8, 0x277CBDB70);
          v29 = sub_2669C59A4();
          v31 = sub_2669C0808(v29, v30);
          v32 = sub_2669C1440(v31);
          v34 = v110;
          if (!v33)
          {
            v32 = sub_2669C59A4();
          }

          v119 = v33;
          v120 = v32;
          sub_2669C59A4();
          sub_2669C6904();
        }

        else
        {
          v35 = sub_2669C59A4();
          v119 = v36;
          v120 = v35;
          sub_2669C59A4();
          sub_2669C68F4();

          v34 = v110;
        }

        v37 = sub_2669C5874();
        v38 = sub_2669C5974();
        if (!*(v37 + 16))
        {
          break;
        }

        v40 = sub_2669BB76C(v38, v39);
        v42 = v41;

        if ((v42 & 1) == 0)
        {
          goto LABEL_14;
        }

        v118 = *(*(v37 + 56) + 16 * v40);

LABEL_15:
        sub_2669C6684();
        sub_2669C59A4();
        (*v106)(v21, v111, v34);
        v43 = v123;
        sub_2669B9DB8(v123, v112, &qword_2800AC540, &qword_2669C8220);
        v44 = objc_allocWithZone(sub_2669C5914());
        v45 = sub_2669C58B4();
        [v114 addObject_];

        sub_2669C0BA0(v43, &qword_2800AC540, &qword_2669C8220);
        (*v105)(v14, v115);
        v28 = v121 + v104;
        v27 = v122 - 1;
        if (v122 == 1)
        {
          goto LABEL_16;
        }
      }

LABEL_14:

      v118 = sub_2669C5994();
      goto LABEL_15;
    }

LABEL_16:
    v46 = v114;
    v47 = [v46 count];
    v48 = v116;
    if (v47 < 1)
    {
    }

    else
    {
      if (v113)
      {

        v49 = *MEMORY[0x277CBCF80];
        sub_2669BBF38();
        v50 = OUTLINED_FUNCTION_31_0();
        v51 = sub_2669BB2CC(v50, v48);

        if (v51 && (v52 = [v51 mutableCopy], v51, v52))
        {
          [v52 unionOrderedSet_];
          swift_getKeyPath();
          swift_getKeyPath();
          v53 = v52;
          v54 = sub_2669C5CC4();
          v56 = v55;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40(*v56);
          sub_2669C10DC(v53, v49, v57);
          *v56 = v124;
          v58 = OUTLINED_FUNCTION_42();
          v54(v58);
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v84 = v46;
          v85 = sub_2669C5CC4();
          v87 = v86;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40(*v87);
          v88 = OUTLINED_FUNCTION_3();
          sub_2669C10DC(v88, v89, v90);
          *v87 = v124;
          v91 = OUTLINED_FUNCTION_42();
          v85(v91);
        }
      }

      else
      {
        sub_2669C6684();
        v65 = v64;
        sub_2669BBF60();
        v66 = OUTLINED_FUNCTION_31_0();
        v67 = sub_2669BB314(v66, v65, v48);

        if (v67)
        {

          sub_26699F8F0(0, &qword_2800ACAA0, 0x277CBEB40);
          v68 = OUTLINED_FUNCTION_31_0();
          sub_2669BFE64(v68);
          v70 = v69;

          v71 = sub_2669BFFAC(v70);
          [v71 unionOrderedSet_];
          v72 = sub_2669C6684();
          v74 = v73;
          v75 = [v71 array];
          v76 = sub_2669C6764();

          v77 = sub_2669BE878(v76);

          if (v77)
          {
            v78 = v77;
          }

          else
          {
            v78 = MEMORY[0x277D84F90];
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v79 = sub_2669C5CC4();
          v81 = v80;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40(*v81);
          sub_2669C1208(v78, v72, v74, v82);
          *v81 = v124;

          v83 = OUTLINED_FUNCTION_42();
          v79(v83);
        }

        else
        {
          v92 = sub_2669C6684();
          v94 = v93;
          v95 = [v46 array];

          v96 = sub_2669C6764();
          v97 = sub_2669BE878(v96);

          if (v97)
          {
            v98 = v97;
          }

          else
          {
            v98 = MEMORY[0x277D84F90];
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v99 = sub_2669C5CC4();
          v101 = v100;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40(*v101);
          sub_2669C1208(v98, v92, v94, v102);
          *v101 = v124;

          v103 = OUTLINED_FUNCTION_42();
          v99(v103);
        }
      }
    }
  }

  else
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v59 = sub_2669C5C94();
    __swift_project_value_buffer(v59, qword_2800ACC88);
    v60 = sub_2669C5C74();
    v61 = sub_2669C6864();
    if (OUTLINED_FUNCTION_34_0(v61))
    {
      *OUTLINED_FUNCTION_7() = 0;
      OUTLINED_FUNCTION_50(&dword_266996000, v62, v63, "#GetContactQuickActionButtonsViewModel didn't get a FaceTimeable action type, returning");
      OUTLINED_FUNCTION_4_0();
    }
  }

  OUTLINED_FUNCTION_37();
}

void sub_2669BE194()
{
  OUTLINED_FUNCTION_35();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v4);
  v62 = &v53 - v5;
  v61 = sub_2669C5954();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v60 = v10 - v9;
  v70 = MEMORY[0x277D84F90];
  v63 = v0;
  v11 = [*(v0 + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_contact) phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC718, qword_2669C8440);
  OUTLINED_FUNCTION_43();
  v12 = sub_2669C6764();

  v13 = sub_26699F950(v12);
  if (v13)
  {
    if (v13 >= 1)
    {
      v53 = v2;
      v14 = 0;
      v56 = v12 & 0xC000000000000001;
      v57 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_labelCATs;
      v55 = (v7 + 104);
      v15 = &_OBJC_LABEL_PROTOCOL___NSObject;
      v54 = *MEMORY[0x277D55A28];
      v58 = v13;
      v59 = v12;
      v16 = v62;
      while (1)
      {
        v17 = v56 ? MEMORY[0x26D5E4670](v14, v12) : *(v12 + 8 * v14 + 32);
        v18 = v17;
        v19 = sub_2669C13D0([v17 v15[32]]);
        if (v20)
        {
          v67 = v20;
          v68 = v19;
        }

        else
        {
          v21 = [v18 v15[32]];
          v22 = [v21 stringValue];

          v23 = sub_2669C6654();
          v67 = v24;
          v68 = v23;
        }

        v25 = sub_2669C5874();
        v26 = [v18 identifier];
        v27 = sub_2669C6654();
        v29 = v28;

        if (!*(v25 + 16))
        {
          break;
        }

        v30 = sub_2669BB76C(v27, v29);
        v32 = v31;

        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }

        v33 = (*(v25 + 56) + 16 * v30);
        v34 = *v33;
        v65 = v33[1];
        v66 = v34;

LABEL_17:
        sub_2669C6694();
        v64 = v39;
        v40 = [v18 v15[32]];
        v41 = [v40 stringValue];

        sub_2669C6654();
        (*v55)(v60, v54, v61);
        v42 = sub_2669C57C4();
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v42);
        v43 = [v18 identifier];
        sub_2669C6654();

        v44 = objc_allocWithZone(sub_2669C5914());
        v45 = sub_2669C58B4();
        MEMORY[0x26D5E43F0]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          OUTLINED_FUNCTION_49();
        }

        ++v14;
        sub_2669C6794();

        v12 = v59;
        v15 = &_OBJC_LABEL_PROTOCOL___NSObject;
        if (v58 == v14)
        {
          v46 = v70;

          v2 = v53;
          goto LABEL_22;
        }
      }

LABEL_14:

      v35 = [v18 label];
      if (v35)
      {
        v36 = v35;
        v37 = sub_2669C6654();
        v65 = v38;
        v66 = v37;
      }

      else
      {
        v65 = 0xE000000000000000;
        v66 = 0;
      }

      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
LABEL_22:
    v47 = *MEMORY[0x277CBCF78];
    sub_26699F8F0(0, &qword_2800ACAA0, 0x277CBEB40);
    sub_2669BFE64(v46);
    v49 = v48;

    if (sub_2669BFFAC(v49))
    {
      swift_isUniquelyReferenced_nonNull_native();
      v69 = *v2;
      v50 = OUTLINED_FUNCTION_3();
      sub_2669C10DC(v50, v51, v52);
      *v2 = v69;
    }

    else
    {
    }

    OUTLINED_FUNCTION_37();
  }
}

void sub_2669BE6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    a3 = 0;
  }

  sub_2669BE73C(a1, a2, a3);
}

void sub_2669BE73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_2669BE80C;
    v6[3] = &block_descriptor_104;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 launchAppForDialRequest:a1 completion:v5];
  _Block_release(v5);
}

void sub_2669BE80C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2669BE878(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_2669C6A04();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_26699F890(v3, v5);
    sub_2669C5914();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_2669C69E4();
    sub_2669C6A14();
    sub_2669C6A24();
    sub_2669C69F4();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_2669BEB30()
{
  v1 = *&v0[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_cancelableTokens];
  v2 = sub_26699F950(v1);

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      v7.receiver = v0;
      v7.super_class = type metadata accessor for GetContactQuickActionButtonsViewModel(0);
      objc_msgSendSuper2(&v7, sel_dealloc);
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = OUTLINED_FUNCTION_45();
      v4 = MEMORY[0x26D5E4670](v6);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v4 cancel];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t type metadata accessor for GetContactQuickActionButtonsViewModel(uint64_t a1)
{
  result = qword_2800ACA30;
  if (!qword_2800ACA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2669BEE74()
{
  OUTLINED_FUNCTION_35();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800ACA60, &unk_2669C8A58);
  OUTLINED_FUNCTION_2_2(v0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v1);
  v49 = &v48 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - v5;
  v7 = sub_2669C57C4();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v17 = sub_2669C5954();
  OUTLINED_FUNCTION_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_1();
  v23 = v22 - v21;
  sub_2669C58F4();
  v24 = sub_2669C5924();
  (*(v19 + 8))(v23, v17);
  if ((v24 & 1) == 0)
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v31 = sub_2669C5C94();
    __swift_project_value_buffer(v31, qword_2800ACC88);
    v26 = sub_2669C5C74();
    v32 = sub_2669C6864();
    if (!OUTLINED_FUNCTION_34_0(v32))
    {
      goto LABEL_12;
    }

    *OUTLINED_FUNCTION_7() = 0;
    v30 = "#GetContactQuickActionButtonsViewModel performCall provided action type mismatched";
    goto LABEL_11;
  }

  sub_2669C58E4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    (*(v9 + 32))(v16, v6, v7);
    sub_26699F8F0(0, &qword_2800ACA70, 0x277D6EED0);
    (*(v9 + 16))(v13, v16, v7);
    v33 = sub_2669BF318(v13);
    if (v33)
    {
      v34 = v33;
      if ([v33 isValid])
      {
        v35 = sub_2669C67C4();
        v36 = v49;
        __swift_storeEnumTagSinglePayload(v49, 1, 1, v35);
        OUTLINED_FUNCTION_32();
        v37 = swift_allocObject();
        v38 = OUTLINED_FUNCTION_51(v37);
        v39 = OUTLINED_FUNCTION_13_2();
        sub_2669BF8F0(v39, v40, v36, v41, v37);

LABEL_22:
        v46 = OUTLINED_FUNCTION_3();
        v47(v46);
        goto LABEL_23;
      }
    }

    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v42 = sub_2669C5C94();
    __swift_project_value_buffer(v42, qword_2800ACC88);
    v43 = sub_2669C5C74();
    v44 = sub_2669C6864();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_7();
      *v45 = 0;
      _os_log_impl(&dword_266996000, v43, v44, "#GetContactQuickActionButtonsViewModel performCall failed to construct dial request", v45, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    goto LABEL_22;
  }

  sub_2669C0BA0(v6, &qword_2800AC540, &qword_2669C8220);
  if (qword_2800ABEB8 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
  }

  v25 = sub_2669C5C94();
  __swift_project_value_buffer(v25, qword_2800ACC88);
  v26 = sub_2669C5C74();
  v27 = sub_2669C6864();
  if (!OUTLINED_FUNCTION_34_0(v27))
  {
    goto LABEL_12;
  }

  *OUTLINED_FUNCTION_7() = 0;
  v30 = "#GetContactQuickActionButtonsViewModel performCall but no URL available, cannot execute";
LABEL_11:
  OUTLINED_FUNCTION_50(&dword_266996000, v28, v29, v30);
  OUTLINED_FUNCTION_4_0();
LABEL_12:

LABEL_23:
  OUTLINED_FUNCTION_37();
}

id sub_2669BF318(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2669C57A4();
  v4 = [v2 initWithURL_];

  sub_2669C57C4();
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t sub_2669BF3C8()
{
  v1 = v0[22];
  v2 = [objc_opt_self() sharedInstance];
  v0[23] = v2;
  v0[2] = v0;
  v0[3] = sub_2669BF510;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACA78, &qword_2669C8A90);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2669BF810;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v2 launchAppForDialRequest:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2669BF510()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_16_2();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_2669BF668;
  }

  else
  {
    v5 = sub_2669BF610;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2669BF610()
{
  OUTLINED_FUNCTION_12_1();

  OUTLINED_FUNCTION_15_2();

  return v1();
}

uint64_t sub_2669BF668()
{
  v17 = v0;
  v1 = *(v0 + 184);
  swift_willThrow();

  if (qword_2800ABEB8 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
  }

  v2 = *(v0 + 192);
  v3 = sub_2669C5C94();
  __swift_project_value_buffer(v3, qword_2800ACC88);
  v4 = v2;
  v5 = sub_2669C5C74();
  v6 = sub_2669C6864();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 192);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_2669C6AB4();
    v13 = sub_26699F100(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_266996000, v5, v6, "#GetContactQuickActionButtonsViewModel performCall TU task caught: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_2();

  return v14();
}

uint64_t sub_2669BF810(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_2669BF880(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_2669BF880(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACA80, &qword_2669C8A98);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2669BF8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800ACA60, &unk_2669C8A58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_2669B9DB8(a3, v24 - v10, &unk_2800ACA60, &unk_2669C8A58);
  v12 = sub_2669C67C4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2669C0BA0(v11, &unk_2800ACA60, &unk_2669C8A58);
  }

  else
  {
    sub_2669C67B4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2669C67A4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2669C6664() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_2669C0BA0(a3, &unk_2800ACA60, &unk_2669C8A58);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2669C0BA0(a3, &unk_2800ACA60, &unk_2669C8A58);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2669BFBD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2669C1DA8;

  return sub_2669BCABC();
}

uint64_t sub_2669BFC64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2669BFCF4;

  return sub_2669BCEE4();
}

uint64_t sub_2669BFCF4()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_20_0();
  v1 = *v0;
  OUTLINED_FUNCTION_14_2();
  *v2 = v1;

  OUTLINED_FUNCTION_15_2();

  return v3();
}

uint64_t sub_2669BFDD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2669C1DA8;

  return sub_2669BD30C();
}

void sub_2669BFE64(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2669C6A54();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2669C0F58(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v9;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D5E4670](v3, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        sub_2669C5914();
        swift_dynamicCast();
        v9 = v4;
        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2669C0F58(v6 > 1, v7 + 1, 1);
          v4 = v9;
        }

        ++v3;
        *(v4 + 16) = v7 + 1;
        sub_2669C1960(&v8, (v4 + 32 * v7 + 32));
      }

      while (v2 != v3);
    }
  }
}

id sub_2669BFFAC(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_2669C6754();

  v3 = [v1 initWithArray_];

  return v3;
}

void sub_2669C0024(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v52 - v4;
  v63 = sub_2669C5954();
  v5 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2669C59B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CBEB40]) init];
    v12 = v11;
    v13 = *(a2 + 16);
    if (v13)
    {
      v58 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_labelCATs;
      v15 = *(v8 + 16);
      v14 = v8 + 16;
      v57 = v15;
      v16 = a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v56 = *(v14 + 56);
      v55 = *MEMORY[0x277D55A28];
      v54 = (v5 + 104);
      v59 = v14;
      v53 = (v14 - 8);
      v60 = v7;
      v61 = v11;
      v17 = v64;
      while (1)
      {
        v70 = v13;
        v57(v10, v16, v7);
        v18 = sub_2669C5874();
        v19 = sub_2669C5974();
        if (!*(v18 + 16))
        {
          break;
        }

        v21 = sub_2669BB76C(v19, v20);
        v23 = v22;

        if ((v23 & 1) == 0)
        {
          goto LABEL_8;
        }

        v24 = (*(v18 + 56) + 16 * v21);
        v25 = *v24;
        v68 = v24[1];
        v69 = v25;

LABEL_9:
        v28 = sub_2669C6694();
        v66 = v29;
        v67 = v28;
        sub_2669C59A4();
        sub_2669C59A4();
        (*v54)(v62, v55, v63);
        v30 = sub_2669C57C4();
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v30);
        sub_2669C5974();
        v31 = objc_allocWithZone(sub_2669C5914());
        v32 = sub_2669C58B4();
        v12 = v61;
        [v61 addObject_];

        v7 = v60;
        (*v53)(v10, v60);
        v16 += v56;
        v13 = v70 - 1;
        if (v70 == 1)
        {
          goto LABEL_10;
        }
      }

LABEL_8:

      v26 = sub_2669C5994();
      v68 = v27;
      v69 = v26;
      goto LABEL_9;
    }

LABEL_10:
    if ([v12 count] <= 0)
    {
    }

    else
    {
      v33 = *MEMORY[0x277CBCF78];
      v34 = sub_2669BBF38();
      v35 = sub_2669BB2CC(v33, v34);

      if (v35 && (v36 = [v35 mutableCopy], v35, v36))
      {
        [v36 unionOrderedSet_];
        swift_getKeyPath();
        swift_getKeyPath();
        v37 = v36;
        v38 = Strong;
        v39 = sub_2669C5CC4();
        v41 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = *v41;
        sub_2669C10DC(v37, v33, isUniquelyReferenced_nonNull_native);
        *v41 = v71;
        v39(v72, 0);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v37 = v12;
        v47 = Strong;
        v48 = sub_2669C5CC4();
        v50 = v49;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v71 = *v50;
        sub_2669C10DC(v37, v33, v51);
        *v50 = v71;
        v48(v72, 0);
      }
    }
  }

  else
  {
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v43 = sub_2669C5C94();
    __swift_project_value_buffer(v43, qword_2800ACC88);
    v44 = sub_2669C5C74();
    v45 = sub_2669C6864();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_266996000, v44, v45, "#GetContactQuickActionButtonsViewModel tried to process actions but already got dealloc'ed", v46, 2u);
      MEMORY[0x26D5E4D50](v46, -1, -1);
    }
  }
}

uint64_t sub_2669C06B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_2669C06FC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_2669C5954();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_46();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    (*(v7 + 104))(v3, *a3, v5);
    sub_2669BD734();

    v11 = OUTLINED_FUNCTION_45();
    return v12(v11);
  }

  return result;
}

id sub_2669C0808(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2669C6624();

  v4 = [v2 initWithStringValue_];

  return v4;
}

void sub_2669C08BC(uint64_t a1)
{
  sub_2669C5B54();
  if (v1 <= 0x3F)
  {
    sub_2669C5894();
    if (v2 <= 0x3F)
    {
      sub_2669C0A74(319, &qword_2800ACA40, &qword_2800ACA48, &qword_2669C8A10);
      if (v3 <= 0x3F)
      {
        sub_2669C0A74(319, &qword_2800ACA50, &qword_2800ACA58, &qword_2669C8A18);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2669C0A74(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_43();
    v5 = sub_2669C5CF4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2669C0AD0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GetContactQuickActionButtonsViewModel(0);
  result = sub_2669C5CA4();
  *a2 = result;
  return result;
}

uint64_t sub_2669C0B14()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_4(v1);

  return sub_2669BF3A8(v3, v4, v5, v6);
}

uint64_t sub_2669C0BA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2669C0BF4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2669C0CEC;

  return v6(a1);
}

uint64_t sub_2669C0CEC()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_20_0();
  v1 = *v0;
  OUTLINED_FUNCTION_14_2();
  *v2 = v1;

  OUTLINED_FUNCTION_15_2();

  return v3();
}

uint64_t sub_2669C0DD0()
{

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2669C0E04()
{
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_0(v1);

  return v4(v3);
}

uint64_t sub_2669C0E98()
{
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_0(v1);

  return v4(v3);
}

uint64_t sub_2669C0FB8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2669BB6D8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACAA8, &qword_2669C8AB8);
  sub_2669C6A34();

  v6 = *(*(v8 + 56) + 8 * v5);
  type metadata accessor for CNActionType(0);
  sub_26699F8F0(0, &qword_2800ACAA0, 0x277CBEB40);
  sub_2669C1A24(&qword_2800ACAB0, type metadata accessor for CNActionType);
  sub_2669C6A44();
  *v2 = v8;
  return v6;
}

void sub_2669C10DC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2669BB6D8(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACAA8, &qword_2669C8AB8);
  if ((sub_2669C6A34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_2669BB6D8(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for CNActionType(0);
    sub_2669C6AA4();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  v13 = *v4;
  if (v10)
  {
    v14 = v13[7];
    v15 = *(v14 + 8 * v9);
    *(v14 + 8 * v9) = a1;
  }

  else
  {
    sub_2669C1344(v9, a2, a1, v13);

    v16 = a2;
  }
}

uint64_t sub_2669C1208(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2669BB76C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACAC0, &qword_2669C8B50);
  if ((sub_2669C6A34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_2669BB76C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_2669C6AA4();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_2669C1388(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_2669C1344(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_2669C1388(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_2669C13D0(void *a1)
{
  v2 = [a1 formattedStringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2669C6654();

  return v3;
}

uint64_t sub_2669C1440(void *a1)
{
  v1 = [a1 formattedStringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2669C6654();

  return v3;
}

void sub_2669C14A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_35();
  v22 = v21;
  v24 = v23;
  v64 = v26;
  v65 = v25;
  v28 = v27;
  v66 = v30;
  v67 = v29;
  v63 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACA88, &qword_2669C8AA0);
  OUTLINED_FUNCTION_2();
  v33 = v32;
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800ACA90, &unk_2669C8AA8);
  OUTLINED_FUNCTION_2();
  v37 = v36;
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v38);
  v40 = &v62 - v39;
  v70[3] = v22;
  v70[4] = a21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  (*(*(v22 - 8) + 32))(boxed_opaque_existential_1, v28, v22);
  *&v24[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_cancelableTokens] = MEMORY[0x277D84F90];
  v42 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_lock;
  *&v24[v42] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v43 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel__actionsByType;
  v44 = MEMORY[0x277D84F98];
  v69 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACA48, &qword_2669C8A10);
  sub_2669C5CB4();
  (*(v37 + 32))(&v24[v43], v40, v35);
  v69 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACA58, &qword_2669C8A18);
  OUTLINED_FUNCTION_35_0();
  v45 = *(v33 + 32);
  v46 = OUTLINED_FUNCTION_29_0();
  v45(v46);
  v69 = v44;
  OUTLINED_FUNCTION_35_0();
  v47 = OUTLINED_FUNCTION_29_0();
  v45(v47);
  v69 = v44;
  OUTLINED_FUNCTION_35_0();
  v48 = OUTLINED_FUNCTION_29_0();
  v45(v48);
  v49 = v63;
  *&v24[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_contact] = v63;
  sub_2669C18FC(v70, &v24[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_dialRequestPerformer]);
  v50 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_directInvocationsModel;
  v51 = sub_2669C5B54();
  v52 = *(v51 - 8);
  (*(v52 + 16))(&v24[v50], v67, v51);
  v53 = objc_allocWithZone(MEMORY[0x277CFBF30]);
  v63 = v49;
  v54 = v64;
  v55 = [v53 initWithDiscoveringEnvironment_];
  *&v24[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_dataSource] = v55;
  v56 = OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_labelCATs;
  v57 = sub_2669C5894();
  v58 = *(v57 - 8);
  v59 = v65;
  (*(v58 + 16))(&v24[v56], v65, v57);
  *&v24[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_textColor] = v66;

  sub_2669C62D4();
  LOBYTE(v49) = sub_2669C6294();

  v24[OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_shouldUseLightBackground] = v49 & 1;
  ContactQuickActionButtonsViewModel = type metadata accessor for GetContactQuickActionButtonsViewModel(0);
  v68.receiver = v24;
  v68.super_class = ContactQuickActionButtonsViewModel;
  v61 = objc_msgSendSuper2(&v68, sel_init);
  sub_2669BC35C();

  (*(v58 + 8))(v59, v57);
  (*(v52 + 8))(v67, v51);
  __swift_destroy_boxed_opaque_existential_0(v70);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_2669C18FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2669C1960(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2669C1970()
{
  OUTLINED_FUNCTION_41();
  result = sub_2669BBF60();
  *v0 = result;
  return result;
}

uint64_t sub_2669C199C()
{
  OUTLINED_FUNCTION_41();
  result = sub_2669BBF38();
  *v0 = result;
  return result;
}

uint64_t sub_2669C19C8()
{
  MEMORY[0x26D5E4DE0](v0 + 16);
  OUTLINED_FUNCTION_44();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2669C1A24(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_43();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2669C1A68()
{
  result = qword_2800ACAE0;
  if (!qword_2800ACAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ACAD8, &qword_2669C8B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACAE0);
  }

  return result;
}

uint64_t objectdestroy_53Tm()
{

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2669C1B34()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_4(v1);

  return sub_2669BFBD4();
}

uint64_t sub_2669C1BC0()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_4(v1);

  return sub_2669BFC64();
}

uint64_t objectdestroyTm_4()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_32();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2669C1C88()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_4(v1);

  return sub_2669BFDD4();
}

uint64_t sub_2669C1D14()
{
  OUTLINED_FUNCTION_41();
  result = sub_2669BBFB0();
  *v0 = result;
  return result;
}

uint64_t sub_2669C1D40()
{
  OUTLINED_FUNCTION_41();
  result = sub_2669BBF88();
  *v0 = result;
  return result;
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1)
{

  return MEMORY[0x2821FCEB0](v1, v2, a1, v3, v4);
}

void OUTLINED_FUNCTION_17_2()
{

  JUMPOUT(0x26D5E4550);
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

BOOL OUTLINED_FUNCTION_34_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return sub_2669C5CB4();
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1)
{
  v3 = a1 + 16;

  return MEMORY[0x2821FEC40](v3, v1);
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return sub_2669C6774();
}

void OUTLINED_FUNCTION_50(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id OUTLINED_FUNCTION_51(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;

  return v1;
}

uint64_t sub_2669C2108()
{
  v1 = sub_2669C5954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D55A28])
  {
    return 0x2E6567617373656DLL;
  }

  if (v5 == *MEMORY[0x277D55A18])
  {
    v7 = 0x2E656E6F6870;
    return v7 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
  }

  if (v5 == *MEMORY[0x277D55A38])
  {
    v7 = 0x2E6F65646976;
    return v7 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
  }

  if (v5 == *MEMORY[0x277D55A20])
  {
    return 0x65706F6C65766E65;
  }

  if (v5 == *MEMORY[0x277D55A30])
  {
    return 0xD000000000000029;
  }

  result = sub_2669C6A84();
  __break(1u);
  return result;
}

uint64_t sub_2669C2308(uint64_t a1, uint64_t a2)
{
  v2 = sub_2669C5844();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2669C5824();
  return sub_2669C6464();
}

uint64_t GetContactAttributeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v174 = a1;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB60, &qword_2669C8C60);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_9();
  v172 = v2;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB68, &qword_2669C8C68);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_5_2(v4);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(v5);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  v150 = v8 - v7;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB70, &qword_2669C8C70);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  v152 = v10;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB78, &qword_2669C8C78);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_2(v12);
  v146 = sub_2669C60E4();
  OUTLINED_FUNCTION_2();
  v145 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_1();
  v17 = OUTLINED_FUNCTION_5_2(v16 - v15);
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView(v17);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5_2(v20 - v19);
  sub_2669C5D44();
  OUTLINED_FUNCTION_2();
  v159 = v22;
  v160 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  v26 = OUTLINED_FUNCTION_5_2(&v139 - v25);
  ContactAttributeAgeView = type metadata accessor for GetContactAttributeAgeView(v26);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_1();
  v157 = v29 - v28;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB80, &qword_2669C8C80);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9();
  v168 = v31;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB88, &qword_2669C8C88);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9();
  v163 = v33;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB90, &qword_2669C8C90);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9();
  v164 = v35;
  ContactView = type metadata accessor for GetContactView(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_1();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ACB98, &unk_2669C8C98);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_9();
  v169 = v42;
  v43 = sub_2669C5B04();
  OUTLINED_FUNCTION_2();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v139 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = (&v139 - v52);
  v54 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v54);
  v56 = &v139 - v55;
  type metadata accessor for GetContactAttributeView(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_1_1();
  v60 = v59 - v58;
  sub_2669C39DC(v171, v59 - v58, type metadata accessor for GetContactAttributeView);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2669C3A3C(v60, type metadata accessor for GetContactAttributeView);
    swift_storeEnumTagMultiPayload();
    sub_2669C3594();
    return sub_2669C5FB4();
  }

  else
  {
    v171 = v40;
    (*(v45 + 32))(v56, v60, v43);
    v62 = v45;
    if (sub_2669C5A24())
    {
      v140 = v45;
      OUTLINED_FUNCTION_13_3();
      v63();
      sub_2669C59E4();
      swift_storeEnumTagMultiPayload();
      sub_2669C39DC(v39, v163, type metadata accessor for GetContactView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_5();
      sub_2669C392C(v64, v65, &protocol conformance descriptor for GetContactView);
      OUTLINED_FUNCTION_5_4();
      sub_2669C392C(v66, v67, &protocol conformance descriptor for GetContactAttributeAgeView);
      v68 = v164;
      sub_2669C5FB4();
      sub_2669C397C(v68, v168, &qword_2800ACB90, &qword_2669C8C90);
      swift_storeEnumTagMultiPayload();
      sub_2669C3620();
      sub_2669C370C();
      v69 = v169;
      sub_2669C5FB4();
      sub_26699A428(v68, &qword_2800ACB90, &qword_2669C8C90);
      sub_2669C3A3C(v39, type metadata accessor for GetContactView);
      v70 = v56;
      v53 = v140;
      v71 = v43;
      v62 = v69;
      v72 = v172;
    }

    else
    {
      v73 = sub_26699A5AC();
      v141 = v56;
      if (v73)
      {
        v74 = *(v45 + 16);
        OUTLINED_FUNCTION_13_3();
        v74();
        v75 = [objc_opt_self() sharedInstance];
        v176 = sub_2669C38E8();
        v177 = &off_28782C1C0;
        v175 = v75;
        v76 = v157 + *(ContactAttributeAgeView + 20);
        sub_2669C18FC(&v175, v76);
        v77 = ContactAttributeViewModel;
        (v74)(v76 + *(ContactAttributeViewModel + 20), v53, v43);
        sub_2669C5AD4();
        v79 = v159;
        v78 = v160;
        OUTLINED_FUNCTION_11_3();
        v80 = v149;
        v81(v149);
        (*(v79 + 32))(v76 + *(v77 + 24), v80, v78);
        if (sub_2669C5AD4())
        {
          v82 = sub_2669C62D4();
        }

        else
        {
          v82 = sub_2669C62C4();
        }

        v94 = v82;
        v95 = *(v62 + 8);
        v139 = v43;
        v95(v53, v43);
        __swift_destroy_boxed_opaque_existential_0(&v175);
        *(v76 + *(v77 + 28)) = v94;
        v96 = v157;
        sub_2669C64E4();
        sub_2669C39DC(v96, v163, type metadata accessor for GetContactAttributeAgeView);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_6_5();
        sub_2669C392C(v97, v98, &protocol conformance descriptor for GetContactView);
        OUTLINED_FUNCTION_5_4();
        sub_2669C392C(v99, v100, &protocol conformance descriptor for GetContactAttributeAgeView);
        v101 = v164;
        sub_2669C5FB4();
        sub_2669C397C(v101, v168, &qword_2800ACB90, &qword_2669C8C90);
        swift_storeEnumTagMultiPayload();
        sub_2669C3620();
        sub_2669C370C();
        OUTLINED_FUNCTION_8_4();
        sub_2669C5FB4();
        sub_26699A428(v101, &qword_2800ACB90, &qword_2669C8C90);
        sub_2669C3A3C(v96, type metadata accessor for GetContactAttributeAgeView);
        v71 = v139;
        v72 = v172;
        v70 = v141;
      }

      else
      {
        v83 = sub_2669C5AB4();
        v84 = *(v45 + 16);
        if (v83)
        {
          OUTLINED_FUNCTION_13_3();
          v84();
          v85 = [objc_opt_self() sharedInstance];
          v176 = sub_2669C38E8();
          v177 = &off_28782C1C0;
          v175 = v85;
          v86 = v155 + *(ContactAttributeSingleResultView + 20);
          sub_2669C18FC(&v175, v86);
          v87 = OUTLINED_FUNCTION_14_3();
          v71 = v43;
          (v84)(v87, v50, v43);
          sub_2669C5AD4();
          v89 = v159;
          v88 = v160;
          OUTLINED_FUNCTION_11_3();
          v90 = v142;
          v91(v142);
          (*(v89 + 32))(v86 + *(v39 + 24), v90, v88);
          v92 = sub_2669C5AD4();
          v72 = v172;
          if (v92)
          {
            v93 = sub_2669C62D4();
          }

          else
          {
            v93 = sub_2669C62C4();
          }

          v113 = v93;
          (*(v62 + 8))(v50, v43);
          __swift_destroy_boxed_opaque_existential_0(&v175);
          *(v86 + *(v39 + 28)) = v113;
          sub_2669C65D4();
          OUTLINED_FUNCTION_3_8();
          sub_2669C392C(v114, v115, MEMORY[0x277D63F50]);
          v116 = sub_2669C5E84();
          v117 = v155;
          *v155 = v116;
          v117[1] = v118;
          v53 = ContactAttributeSingleResultView;
          v175 = 0x402E000000000000;
          v119 = (*(v145 + 104))(v144, *MEMORY[0x277CE0A68], v146);
          sub_26699BF8C(v119, v120, v121);
          sub_2669C5D84();
          sub_2669C39DC(v117, v152, type metadata accessor for GetContactAttributeSingleResultView);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_4_3();
          sub_2669C392C(v122, v123, &protocol conformance descriptor for GetContactAttributeSingleResultView);
          sub_2669C37C8();
          v124 = v154;
          sub_2669C5FB4();
          sub_2669C397C(v124, v168, &qword_2800ACB78, &qword_2669C8C78);
          swift_storeEnumTagMultiPayload();
          sub_2669C3620();
          sub_2669C370C();
          OUTLINED_FUNCTION_8_4();
          sub_2669C5FB4();
          sub_26699A428(v124, &qword_2800ACB78, &qword_2669C8C78);
          sub_2669C3A3C(v155, type metadata accessor for GetContactAttributeSingleResultView);
        }

        else
        {
          v102 = v148;
          OUTLINED_FUNCTION_13_3();
          v84();
          v103 = [objc_opt_self() sharedInstance];
          v176 = sub_2669C38E8();
          v177 = &off_28782C1C0;
          v175 = v103;
          v104 = v150;
          sub_2669C18FC(&v175, v150);
          v105 = OUTLINED_FUNCTION_14_3();
          v53 = v43;
          (v84)(v105, v102, v43);
          sub_2669C5AD4();
          v106 = v159;
          v107 = v160;
          OUTLINED_FUNCTION_11_3();
          v108 = v143;
          v109(v143);
          v110 = *(v106 + 32);
          ContactAttributeAgeView = *(v39 + 24);
          v110(v104 + ContactAttributeAgeView, v108, v107);
          v111 = sub_2669C5AD4();
          v72 = v172;
          if (v111)
          {
            v112 = sub_2669C62D4();
          }

          else
          {
            v112 = sub_2669C62C4();
          }

          v125 = v112;
          v126 = *(v62 + 8);
          v139 = v53;
          v126(v148, v53);
          __swift_destroy_boxed_opaque_existential_0(&v175);
          v127 = v150;
          *(v150 + *(v39 + 28)) = v125;
          v128 = *(type metadata accessor for GetContactAttributeMultiResultView(0) + 20);
          v171 = type metadata accessor for GetContactAttributeViewModel;
          v129 = v147;
          sub_2669C39DC(v127, v147 + v128, type metadata accessor for GetContactAttributeViewModel);
          sub_2669C65D4();
          OUTLINED_FUNCTION_3_8();
          sub_2669C392C(v130, v131, MEMORY[0x277D63F50]);
          *v129 = sub_2669C5E84();
          v129[1] = v132;
          KeyPath = swift_getKeyPath();
          v134 = (v129 + *(v153 + 36));
          v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC430, &qword_2669C80A0);
          (*(v159 + 16))(v134 + *(v135 + 28), v127 + ContactAttributeAgeView, v160);
          *v134 = KeyPath;
          sub_2669C397C(v129, v152, &qword_2800ACB68, &qword_2669C8C68);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_4_3();
          sub_2669C392C(v136, v137, &protocol conformance descriptor for GetContactAttributeSingleResultView);
          sub_2669C37C8();
          v138 = v154;
          sub_2669C5FB4();
          sub_2669C397C(v138, v168, &qword_2800ACB78, &qword_2669C8C78);
          swift_storeEnumTagMultiPayload();
          sub_2669C3620();
          sub_2669C370C();
          OUTLINED_FUNCTION_8_4();
          v71 = v139;
          sub_2669C5FB4();
          sub_26699A428(v138, &qword_2800ACB78, &qword_2669C8C78);
          sub_26699A428(v129, &qword_2800ACB68, &qword_2669C8C68);
          sub_2669C3A3C(v127, v171);
        }

        v70 = v141;
      }
    }

    sub_2669C397C(v62, v72, &qword_2800ACB98, &unk_2669C8C98);
    swift_storeEnumTagMultiPayload();
    sub_2669C3594();
    sub_2669C5FB4();
    sub_26699A428(v62, &qword_2800ACB98, &unk_2669C8C98);
    return v53[1](v70, v71);
  }
}

uint64_t type metadata accessor for GetContactAttributeView(uint64_t a1)
{
  result = qword_2800ACBE0;
  if (!qword_2800ACBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2669C3594()
{
  result = qword_2800ACBA0;
  if (!qword_2800ACBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ACB98, &unk_2669C8C98);
    sub_2669C3620();
    sub_2669C370C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACBA0);
  }

  return result;
}

unint64_t sub_2669C3620()
{
  result = qword_2800ACBA8;
  if (!qword_2800ACBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ACB90, &qword_2669C8C90);
    sub_2669C392C(&qword_2800ACBB0, type metadata accessor for GetContactView, &protocol conformance descriptor for GetContactView);
    sub_2669C392C(&qword_2800ACBB8, type metadata accessor for GetContactAttributeAgeView, &protocol conformance descriptor for GetContactAttributeAgeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACBA8);
  }

  return result;
}

unint64_t sub_2669C370C()
{
  result = qword_2800ACBC0;
  if (!qword_2800ACBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ACB78, &qword_2669C8C78);
    sub_2669C392C(&qword_2800ACBC8, type metadata accessor for GetContactAttributeSingleResultView, &protocol conformance descriptor for GetContactAttributeSingleResultView);
    sub_2669C37C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACBC0);
  }

  return result;
}

unint64_t sub_2669C37C8()
{
  result = qword_2800ACBD0;
  if (!qword_2800ACBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ACB68, &qword_2669C8C68);
    sub_2669C392C(&qword_2800ACBD8, type metadata accessor for GetContactAttributeMultiResultView, &protocol conformance descriptor for GetContactAttributeMultiResultView);
    sub_2669C3884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACBD0);
  }

  return result;
}

unint64_t sub_2669C3884()
{
  result = qword_2800AC470;
  if (!qword_2800AC470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC430, &qword_2669C80A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC470);
  }

  return result;
}

unint64_t sub_2669C38E8()
{
  result = qword_2800ACAF0;
  if (!qword_2800ACAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800ACAF0);
  }

  return result;
}

uint64_t sub_2669C392C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2669C397C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2669C39DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2669C3A3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2669C3AB4(uint64_t a1)
{
  result = sub_2669C5B04();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2669C3B18()
{
  result = qword_2800ACBF0;
  if (!qword_2800ACBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2800ACBF8, qword_2669C8D60);
    sub_2669C3594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACBF0);
  }

  return result;
}

uint64_t sub_2669C3C50(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_2669C3CEC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  if (v7 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v6 + 80);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(v9 + 80);
  if (v10 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v12 + v13 + ((v11 + 2) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *&a1[v16];
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *&a1[v16];
      if (!*&a1[v16])
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_28:
      if (v10 > 0xFE)
      {
        v27 = &a1[v11 + 2] & ~v11;
        if (v7 != v14)
        {
          v27 = (v27 + v12 + v13) & ~v13;
          v7 = *(v9 + 84);
          v5 = v8;
        }

        return __swift_getEnumTagSinglePayload(v27, v7, v5);
      }

      else
      {
        v24 = *a1;
        v25 = v24 >= 2;
        v26 = (v24 + 2147483646) & 0x7FFFFFFF;
        if (v25)
        {
          return (v26 + 1);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = a1[v16];
  if (!a1[v16])
  {
    goto LABEL_28;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (a1[2] << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v14 + (v23 | v21) + 1;
}

void sub_2669C3F18(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((v16 + v17 + ((v15 + 2) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  v20 = a3 >= v14;
  v21 = a3 - v14;
  if (v21 != 0 && v20)
  {
    if (v18 <= 3)
    {
      v25 = ((v21 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v14 < a2)
  {
    v23 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> v19) + 1;
      if (v18)
      {
        v27 = v23 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        a1[v18] = v24;
        return;
      case 2:
        *&a1[v18] = v24;
        return;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v18] = v24;
        return;
      default:
        return;
    }
  }

  switch(v22)
  {
    case 1:
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 2:
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 3:
LABEL_47:
      __break(1u);
      JUMPOUT(0x2669C41E8);
    case 4:
      *&a1[v18] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (a2)
      {
LABEL_30:
        if (v13 > 0xFE)
        {
          v28 = &a1[v15 + 2] & ~v15;
          if (v9 != v14)
          {
            v28 = (v28 + v16 + v17) & ~v17;
            v9 = v12;
            v7 = v10;
          }

          __swift_storeEnumTagSinglePayload(v28, a2, v9, v7);
        }

        else
        {
          *a1 = a2 + 1;
        }
      }

      return;
  }
}

uint64_t sub_2669C426C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = a1[2];
  v7 = a1[4];
  v6 = a1[5];
  KeyPath = a1[3];
  v4 = KeyPath;
  v45 = v5;
  v46 = v6;
  v47 = v7;
  v8 = sub_2669C6104();
  OUTLINED_FUNCTION_2();
  v32 = v9;
  MEMORY[0x28223BE20](v10);
  v29 = &v28 - v11;
  OUTLINED_FUNCTION_0_10();
  WitnessTable = swift_getWitnessTable();
  v31 = WitnessTable;
  v30 = sub_2669C4794(WitnessTable, v13, v14);
  KeyPath = v8;
  v45 = &type metadata for GetContactQuickActionPrimitiveButtonStyle;
  v46 = WitnessTable;
  v47 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v28 - v22;
  v39 = v5;
  v40 = v4;
  v41 = v7;
  v42 = v6;
  v43 = v3;
  v34 = v5;
  v35 = v4;
  v36 = v7;
  v37 = v6;
  v38 = v3;
  v24 = v29;
  sub_2669C60F4();
  LOBYTE(v5) = *v3;
  LOBYTE(v6) = v3[1];
  KeyPath = swift_getKeyPath();
  LOBYTE(v45) = 0;
  BYTE1(v45) = v5;
  BYTE2(v45) = v6;
  sub_2669C6214();

  (*(v32 + 8))(v24, v8);
  v25 = *(v17 + 16);
  v25(v23, v21, OpaqueTypeMetadata2);
  v26 = *(v17 + 8);
  v26(v21, OpaqueTypeMetadata2);
  v25(v33, v23, OpaqueTypeMetadata2);
  return (v26)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_2669C4558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  ContactQuickActionButton = type metadata accessor for GetContactQuickActionButton(0, v16);
  v14 = *(v6 + 16);
  v14(v8, a1 + *(ContactQuickActionButton + 56), a2);
  v14(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_2669C4674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  ContactQuickActionButton = type metadata accessor for GetContactQuickActionButton(0, v16);
  v14 = *(v6 + 16);
  v14(v8, a1 + *(ContactQuickActionButton + 60), a2);
  v14(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

unint64_t sub_2669C4794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2800ACC80;
  if (!qword_2800ACC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ACC80);
  }

  return result;
}

uint64_t sub_2669C4830@<X0>(_BYTE *a2@<X8>)
{
  result = sub_2669C5F04();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2669C4888(int8x16_t *a1)
{
  sub_2669C6104();
  OUTLINED_FUNCTION_0_10();
  WitnessTable = swift_getWitnessTable();
  sub_2669C4794(WitnessTable, v1, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2669C4928()
{
  v0 = sub_2669C5C94();
  __swift_allocate_value_buffer(v0, qword_2800ACC88);
  __swift_project_value_buffer(v0, qword_2800ACC88);
  return sub_2669C5C84();
}

uint64_t static Logger.siriContacts.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2800ABEB8 != -1)
  {
    swift_once();
  }

  v2 = sub_2669C5C94();
  v3 = __swift_project_value_buffer(v2, qword_2800ACC88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

_BYTE *storeEnumTagSinglePayload for Logger(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2669C4AECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
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

uint64_t sub_2669C4B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2669C5B04();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_2669C5D44();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2669C4C7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_2669C5B04();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_2669C5D44();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for GetContactAttributeViewModel(uint64_t a1)
{
  result = qword_2800ACCA0;
  if (!qword_2800ACCA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2669C4D90(uint64_t a1)
{
  result = sub_2669C4E34();
  if (v2 <= 0x3F)
  {
    result = sub_2669C5B04();
    if (v3 <= 0x3F)
    {
      result = sub_2669C5D44();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2669C4E34()
{
  result = qword_2800ACCB0;
  if (!qword_2800ACCB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2800ACCB0);
  }

  return result;
}

uint64_t sub_2669C4E90()
{
  v0 = sub_2669C5864();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v6 = v5 - v4;
  v7 = sub_2669C5894();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v13 = v12 - v11;
  type metadata accessor for GetContactAttributeViewModel(0);
  v14 = sub_2669C5AF4();
  v15 = MEMORY[0x26D5E3530](v14);
  (*(v9 + 8))(v13, v7);
  (*(v2 + 104))(v6, *MEMORY[0x277D559C0], v0);
  v16 = sub_2669BB284(v6, v15);

  (*(v2 + 8))(v6, v0);
  return v16;
}

uint64_t sub_2669C5030@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v35 - v7;
  v9 = v3[3];
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v9);
  if ((*(v10 + 8))(v9, v10))
  {
    if (a2)
    {
      v11 = sub_2669C66A4();
      v13 = v12;
      v14 = sub_2669C66B4();
      v16 = v15;
      v35[0] = v11;
      v35[1] = v13;

      MEMORY[0x26D5E43B0](v14, v16);

      sub_2669C57B4();

      v17 = sub_2669C57C4();
      if (__swift_getEnumTagSinglePayload(v8, 1, v17) != 1)
      {
        (*(*(v17 - 8) + 32))(a3, v8, v17);
        v24 = a3;
        v25 = 0;
        v26 = 1;
        v27 = v17;
        return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
      }

      sub_2669C5708(v8);
    }

    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v18 = sub_2669C5C94();
    __swift_project_value_buffer(v18, qword_2800ACC88);
    v19 = sub_2669C5C74();
    v20 = sub_2669C6864();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      OUTLINED_FUNCTION_6(&dword_266996000, v22, v23, "#GetContactAttributeViewModel callURL could not be built");
      MEMORY[0x26D5E4D50](v21, -1, -1);
    }

    sub_2669C57C4();
    v24 = OUTLINED_FUNCTION_3_9();
  }

  else
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v28 = sub_2669C5C94();
    __swift_project_value_buffer(v28, qword_2800ACC88);
    v29 = sub_2669C5C74();
    v30 = sub_2669C6864();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      OUTLINED_FUNCTION_6(&dword_266996000, v32, v33, "#GetContactAttributeViewModel callURL but telephony unavailable");
      MEMORY[0x26D5E4D50](v31, -1, -1);
    }

    sub_2669C57C4();
    v24 = OUTLINED_FUNCTION_3_9();
  }

  return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

void sub_2669C5344(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2669C57C4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v10 = v9 - v8;
  sub_2669C5510();
  (*(v6 + 16))(v10, a1, v4);
  v11 = sub_2669BF318(v10);
  if (v11)
  {
    v12 = v11;
    v13 = v2[3];
    v14 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v13);
    (*(v14 + 16))(v12, sub_2669C5554, 0, v13, v14);
  }

  else
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v15 = sub_2669C5C94();
    __swift_project_value_buffer(v15, qword_2800ACC88);
    v12 = sub_2669C5C74();
    v16 = sub_2669C6864();
    if (os_log_type_enabled(v12, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_266996000, v12, v16, "#GetContactAttributeViewModel performCall failed to construct dial request", v17, 2u);
      MEMORY[0x26D5E4D50](v17, -1, -1);
    }
  }
}

unint64_t sub_2669C5510()
{
  result = qword_2800ACA70;
  if (!qword_2800ACA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800ACA70);
  }

  return result;
}

void sub_2669C5554(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v3 = sub_2669C5C94();
    __swift_project_value_buffer(v3, qword_2800ACC88);
    v4 = a1;
    v5 = sub_2669C5C74();
    v6 = sub_2669C6864();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_2669C6AB4();
      v11 = sub_26699F100(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_266996000, v5, v6, "#GetContactAttributeViewModel performCall error opening dial request %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x26D5E4D50](v8, -1, -1);
      MEMORY[0x26D5E4D50](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2669C5708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}