uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVyShySSGGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_24_PhotosUIPrivate_SwiftUI0A29ComponentItemSelectionHandlerVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29EC7DA38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_29EC7DA78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EC7DB2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_29EC7DB6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EC7DC00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_29EC7DC0C(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_29EC7DC0C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return v3;
}

unint64_t sub_29EC7DC9C()
{
  result = qword_2A1891400;
  if (!qword_2A1891400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18913F0, &qword_29EC81D68);
    sub_29EC7DD28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891400);
  }

  return result;
}

unint64_t sub_29EC7DD28()
{
  result = qword_2A1891408;
  if (!qword_2A1891408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891410, &qword_29EC81D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891408);
  }

  return result;
}

unint64_t sub_29EC7DDD4()
{
  result = qword_2A1891420;
  if (!qword_2A1891420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18913D8, &qword_29EC81D50);
    sub_29EC74C60(&qword_2A1891428, &qword_2A1891430, &qword_29EC81D80, MEMORY[0x29EDC6170]);
    sub_29EC74C60(&qword_2A1891438, &qword_2A1891418, &qword_29EC81D78, MEMORY[0x29EDBC3B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891420);
  }

  return result;
}

uint64_t sub_29EC7DEC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  return v4;
}

uint64_t objectdestroyTm()
{
  sub_29EC734B4(*(v0 + 16), *(v0 + 24));
  sub_29EC7DC00(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_29EC7DC00(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x2A1C733A0](v0, 145, 7);
}

uint64_t sub_29EC7DF90(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_29EC7F4E4();
  sub_29EC7F224();
  v6 = sub_29EC7F4F4();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_29EC7F4A4() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_29EC6C650();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_29EC7E0B8(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_29EC7E0B8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_29EC7F324();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_29EC7F4E4();

        sub_29EC7F224();
        v10 = sub_29EC7F4F4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_29EC7E294(uint64_t a1)
{
  sub_29EC7F0E4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x2A1C7C4A8](v2);
  OUTLINED_FUNCTION_5();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_29EC7ECE4();
}

uint64_t sub_29EC7E34C()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC7ED44();
  *v0 = result & 1;
  return result;
}

id sub_29EC7E3C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_29EC7F254();
  v6 = [a3 fetchAssetsWithUUIDs:v5 options:a2];

  return v6;
}

uint64_t sub_29EC7E430(void *a1)
{
  v1 = [a1 uuid];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_29EC7F214();

  return v3;
}

uint64_t sub_29EC7E4BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_6_0();
  v6(v5);
  return v4;
}

unint64_t sub_29EC7E508()
{
  result = qword_2A18914D8;
  if (!qword_2A18914D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18914B8, &unk_29EC81E28);
    sub_29EC7E5C0();
    sub_29EC74C60(&qword_2A18914E8, &qword_2A18914F0, &qword_29EC81E80, MEMORY[0x29EDBC8F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18914D8);
  }

  return result;
}

unint64_t sub_29EC7E5C0()
{
  result = qword_2A18914E0;
  if (!qword_2A18914E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18914B0, &qword_29EC81E20);
    sub_29EC74C60(&qword_2A1891268, &qword_2A1891230, &qword_29EC80DF0, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18914E0);
  }

  return result;
}

uint64_t sub_29EC7E678(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_29EC7E6D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29EC7E720()
{
  result = qword_2A1891518;
  if (!qword_2A1891518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891510, &qword_29EC81E98);
    sub_29EC7E7A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891518);
  }

  return result;
}

unint64_t sub_29EC7E7A4()
{
  result = qword_2A1891520;
  if (!qword_2A1891520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891520);
  }

  return result;
}

uint64_t sub_29EC7E7F8()
{

  OUTLINED_FUNCTION_4_1();

  return MEMORY[0x2A1C733A0](v0, 105, 7);
}

uint64_t sub_29EC7E83C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_29EC74CCC(result, a2);
  }

  else
  {
  }
}

unint64_t sub_29EC7E888()
{
  result = qword_2A1891538;
  if (!qword_2A1891538)
  {
    sub_29EC6A3C4(255, &qword_2A1891540, 0x29EDBB9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891538);
  }

  return result;
}

uint64_t sub_29EC7E8F0()
{

  OUTLINED_FUNCTION_4_1();

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

void sub_29EC7E948()
{
  OUTLINED_FUNCTION_7();
  sub_29EC7ECF4();
  *v0 = v1;
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_4_1()
{
  sub_29EC6BEAC(*(v0 + 40), *(v0 + 48));
  sub_29EC7DC00(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  return sub_29EC7E83C(v1, v2, v3);
}