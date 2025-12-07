unint64_t sub_26B16BD74()
{
  result = qword_2803E6EA8;
  if (!qword_2803E6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6EA8);
  }

  return result;
}

void sub_26B16BDC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_36();
    v11 = sub_26B16C9BC(v8, v9, v10);
    v12 = a5(a1, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_26B16BE70(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_26B16BF48(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_26B16BDC8(319, &qword_280D2CCE0, &qword_280D2DA78, MEMORY[0x277D84948], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B16C004(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26B16C148(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26B16C328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_26B16C36C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_26B16BDC8(319, &qword_280D2CCE0, &qword_280D2DA78, MEMORY[0x277D84948], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B16C428(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26B16C56C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_26B16C754()
{
  result = qword_2803E6FB8;
  if (!qword_2803E6FB8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2803E6FB8);
  }

  return result;
}

void sub_26B16C794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26B16C7F8()
{
  result = qword_2803E6FD0;
  if (!qword_2803E6FD0)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_2803E6FD0);
  }

  return result;
}

unint64_t sub_26B16C848()
{
  result = qword_2803E6FD8;
  if (!qword_2803E6FD8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2803E6FD8);
  }

  return result;
}

void sub_26B16C890(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_36();
    sub_26B16CBDC(v3, v4, v5, v6);
    v7 = sub_26B213BA0();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_26B16C8E8(uint64_t a1)
{
  if (!qword_2803E7040)
  {
    sub_26B16C9BC(255, &qword_280D2DA78, MEMORY[0x277D84948]);
    v1 = sub_26B213140();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E7040);
    }
  }
}

void sub_26B16C964()
{
  if (!qword_2803E7050)
  {
    v0 = sub_26B213310();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7050);
    }
  }
}

uint64_t sub_26B16C9BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26B16CA10(uint64_t a1)
{
  sub_26B16BDC8(0, &qword_280D2DA38, &unk_280D2DA40, &protocol descriptor for _SonicError, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B16CA98(uint64_t a1)
{
  if (!qword_2803E6D10)
  {
    sub_26B16CB10(255, &qword_2803E6D18);
    v1 = sub_26B213BA0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E6D10);
    }
  }
}

void sub_26B16CB10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_36();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_26B16CB64(uint64_t a1)
{
  if (!qword_2803E7068)
  {
    sub_26B16CB10(255, &qword_2803E7060);
    v1 = sub_26B213BA0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E7068);
    }
  }
}

void sub_26B16CBDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_23_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_arrayInitWithCopy();
}

unint64_t sub_26B16CD98(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_26B212BE0();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      OUTLINED_FUNCTION_10();
      v7 = sub_26B212D00();

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_26B16CE68(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 - a2;
    OUTLINED_FUNCTION_10();
    v10 = sub_26B14F340(v6, v7, v8, v9);
    if (a1 && v10 < a1)
    {
      v11 = v5;
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      OUTLINED_FUNCTION_10();
      v11 = sub_26B14F314(v12, v13, v14, v15);
      if (!a2)
      {
        v5 = 0;
      }
    }

    if (v5 >= v11)
    {
LABEL_9:
      OUTLINED_FUNCTION_10();
      return;
    }
  }

  __break(1u);
}

id sub_26B16CF04(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = sub_26B166B3C(a1);
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      sub_26B16E718(v3 - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v4 + 32);
      }
    }

    return MEMORY[0x26D670B70](v4, a1);
  }

  result = sub_26B2135F0();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t Error.treeDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_26B213DE0();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_26B211DF0();

  v11 = [v10 treeDescription];
  v12 = sub_26B212A80();

  return v12;
}

id sub_26B16D120(void *a1)
{
  v1 = a1;
  NSError.treeDescription.getter();

  v2 = sub_26B212A50();

  return v2;
}

id NSError.treeDescription.getter()
{
  v1 = v0;
  *&v136 = 40;
  *(&v136 + 1) = 0xE100000000000000;
  v2 = [v0 domain];
  v3 = sub_26B212A80();
  v5 = v4;

  MEMORY[0x26D670040](v3, v5);

  MEMORY[0x26D670040](8236, 0xE200000000000000);
  *&v133 = [v1 code];
  v6 = sub_26B213B90();
  MEMORY[0x26D670040](v6);

  MEMORY[0x26D670040](41, 0xE100000000000000);
  v139 = v136;
  *&v132[0] = v1;
  sub_26B165DC4();
  sub_26B16C9BC(0, qword_280D2DCF8, &protocol descriptor for CustomErrorCodeDescription);
  v7 = v1;
  if (swift_dynamicCast())
  {
    sub_26B150514(&v133, &v136);
    *&v133 = 8250;
    *(&v133 + 1) = 0xE200000000000000;
    v8 = *(&v137 + 1);
    v9 = v138;
    __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
    v10 = (*(v9 + 16))(v8, v9);
    MEMORY[0x26D670040](v10);

    MEMORY[0x26D670040](v133, *(&v133 + 1));

    __swift_destroy_boxed_opaque_existential_1(&v136);
  }

  else
  {
    *&v135 = 0;
    v133 = 0u;
    v134 = 0u;
    sub_26B16E73C(&v133);
  }

  v11 = [v7 userInfo];
  v12 = sub_26B2128A0();

  v13 = sub_26B212A80();
  v15 = OUTLINED_FUNCTION_0_12(v13, v14);
  if (v16)
  {
    v17 = v15;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_11_5(v18);
    OUTLINED_FUNCTION_12_5();
    sub_26B165E08((*(v12 + 56) + 32 * v17), &v136);
    sub_26B2139C0();
  }

  else
  {
    OUTLINED_FUNCTION_6_7();
  }

  sub_26B159D48(&v136);
  v19 = sub_26B212A80();
  v21 = OUTLINED_FUNCTION_0_12(v19, v20);
  if (v22)
  {
    v23 = v21;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_11_5(v24);
    OUTLINED_FUNCTION_12_5();
    sub_26B165E08((*(v12 + 56) + 32 * v23), &v136);
    sub_26B2139C0();
  }

  else
  {
    OUTLINED_FUNCTION_6_7();
  }

  sub_26B159D48(&v136);
  v25 = swift_allocObject();
  v131 = v25;
  *(v25 + 16) = MEMORY[0x277D84F90];
  v128 = v25 + 16;
  v26 = sub_26B212A80();
  OUTLINED_FUNCTION_0_12(v26, v27);
  if (v28)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_3_9(v29);
    OUTLINED_FUNCTION_5_5();
    v30 = OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_8_7(v30, v31, MEMORY[0x277D837D0]);
  }

  else
  {
    OUTLINED_FUNCTION_6_7();
  }

  if (*(&v137 + 1))
  {
    if (OUTLINED_FUNCTION_4_9(v32, v33, v34, MEMORY[0x277D837D0]))
    {
      v35 = OUTLINED_FUNCTION_1_10();
      sub_26B16DDE0(v35, v36, 43458, 0xA200000000000000, 2625692192, 0xA400000000000000, 10322146, 0xA300000000000000, v128, v129);
    }
  }

  else
  {
    sub_26B159D48(&v136);
  }

  v37 = sub_26B212A80();
  OUTLINED_FUNCTION_0_12(v37, v38);
  if (v39)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_3_9(v40);
    OUTLINED_FUNCTION_5_5();
    v41 = OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_8_7(v41, v42, MEMORY[0x277D837D0]);
  }

  else
  {
    OUTLINED_FUNCTION_6_7();
  }

  if (*(&v137 + 1))
  {
    if (OUTLINED_FUNCTION_4_9(v43, v44, v45, MEMORY[0x277D837D0]))
    {
      v46 = OUTLINED_FUNCTION_1_10();
      sub_26B16DDE0(v46, v47, 44738, 0xA200000000000000, 11256352, 0xA300000000000000, 48066, 0xA200000000000000, v128, v129);
    }
  }

  else
  {
    sub_26B159D48(&v136);
  }

  v48 = sub_26B212A80();
  OUTLINED_FUNCTION_0_12(v48, v49);
  if (v50)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_3_9(v51);
    OUTLINED_FUNCTION_5_5();
    v52 = OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_8_7(v52, v53, MEMORY[0x277D837D0]);
  }

  else
  {
    OUTLINED_FUNCTION_6_7();
  }

  if (*(&v137 + 1))
  {
    if (OUTLINED_FUNCTION_4_9(v54, v55, v56, MEMORY[0x277D837D0]))
    {
      v57 = OUTLINED_FUNCTION_1_10();
      sub_26B16DDE0(v57, v58, 9931490, 0xA300000000000000, 32, 0xE100000000000000, 0, 0xE000000000000000, v128, v129);
    }
  }

  else
  {
    sub_26B159D48(&v136);
  }

  v59 = *(v12 + 16);
  v130 = v12;
  if (v59)
  {
    v129 = v7;
    v60 = v12 + 64;
    v61 = 1 << *(v12 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v12 + 64);
    v64 = (v61 + 63) >> 6;
    result = sub_26B2128F0();
    v66 = 0;
    if (!v63)
    {
LABEL_36:
      while (1)
      {
        v67 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          break;
        }

        if (v67 >= v64)
        {
          v63 = 0;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          goto LABEL_41;
        }

        v63 = *(v60 + 8 * v67);
        ++v66;
        if (v63)
        {
          v66 = v67;
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_69;
    }

    while (1)
    {
      v67 = v66;
LABEL_40:
      v68 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
      v69 = v68 | (v67 << 6);
      v70 = (*(v130 + 48) + 16 * v69);
      v11 = *v70;
      v71 = v70[1];
      sub_26B15CF98(*(v130 + 56) + 32 * v69, v132);
      *&v133 = v11;
      *(&v133 + 1) = v71;
      sub_26B165E08(v132, &v134);
      sub_26B2128F0();
LABEL_41:
      v136 = v133;
      v137 = v134;
      v138 = v135;
      v72 = *(&v133 + 1);
      if (!*(&v133 + 1))
      {
        break;
      }

      v73 = v136;
      sub_26B165E08(&v137, &v133);
      v74 = __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
      v11 = &v128;
      MEMORY[0x28223BE20](v74);
      (*(v76 + 16))(&v128 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
      v77 = sub_26B212AE0();
      v79 = v78;
      *&v132[0] = 32;
      *(&v132[0] + 1) = 0xE100000000000000;
      MEMORY[0x26D670040](v73, v72);

      MEMORY[0x26D670040](8250, 0xE200000000000000);
      sub_26B16DDE0(v77, v79, 10456546, 0xA300000000000000, *&v132[0], *(&v132[0] + 1), 0, 0xE000000000000000, 1, v131);

      result = __swift_destroy_boxed_opaque_existential_1(&v133);
      if (!v63)
      {
        goto LABEL_36;
      }
    }

    v7 = v129;
  }

  v80 = [v7 underlyingErrors];
  sub_26B16C9BC(0, &qword_280D2DA78, MEMORY[0x277D84948]);
  v81 = sub_26B212E40();

  v82 = sub_26B16951C(v81);

  result = sub_26B166B3C(v82);
  if (result)
  {
    v83 = result;
    v84 = 0;
    v129 = (v82 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v82 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D670B70](v84, v82);
      }

      else
      {
        if (v84 >= v129[2])
        {
          goto LABEL_70;
        }

        result = *(v82 + 8 * v84 + 32);
      }

      v85 = result;
      v86 = (v84 + 1);
      if (__OFADD__(v84, 1))
      {
        break;
      }

      v87 = [result treeDescription];
      v88 = sub_26B212A80();
      v90 = v89;

      v91 = sub_26B16CF04(v82);
      if (v91)
      {
        v92 = v91;

        v93 = v85 != v92;
      }

      else
      {
        v93 = 1;
      }

      sub_26B16DDE0(v88, v90, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, v93, v131);

      ++v84;
      if (v86 == v83)
      {
        goto LABEL_60;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_7_7(0, &v133);
  if (*(*v11 + 16))
  {
    v94 = v128;
    swift_beginAccess();
    sub_26B16E224();
    v96 = v95;
    v98 = v97;
    swift_endAccess();
    v99 = sub_26B16CD98(1uLL, v96, v98);
    *&v132[0] = 11572706;
    *(&v132[0] + 1) = 0xA300000000000000;
    *&v136 = v99;
    *(&v136 + 1) = v100;
    *&v137 = v101;
    *(&v137 + 1) = v102;
    sub_26B16EA1C();
    sub_26B212C00();

    v103 = v132[0];
    swift_beginAccess();
    sub_26B16A354();
    v104 = *(*v94 + 16);
    sub_26B16A548(v104);
    v105 = *v94;
    *(v105 + 16) = v104 + 1;
    *(v105 + 16 * v104 + 32) = v103;
    *v94 = v105;
    swift_endAccess();
  }

LABEL_60:

  sub_26B16E950(0, &qword_280D2DA88, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2162F0;
  *&v136 = 2136003;
  *(&v136 + 1) = 0xA300000000000000;
  v107 = *(&v139 + 1);
  v108 = MEMORY[0x26D670040](v139, *(&v139 + 1));
  v109 = *(&v136 + 1);
  *(inited + 32) = v136;
  *(inited + 40) = v109;
  OUTLINED_FUNCTION_7_7(v108, &v136);
  *&v132[0] = inited;
  v110 = sub_26B2128F0();
  sub_26B168818(v110);
  v111 = *&v132[0];
  v112 = *(*&v132[0] + 16);
  if (v112)
  {
    v129 = v107;
    *&v132[0] = MEMORY[0x277D84F90];
    sub_26B15B3DC(0, v112, 0);
    v113 = *&v132[0];
    v128 = v111;
    v114 = (v111 + 40);
    do
    {
      v115 = *(v114 - 1);
      v116 = *v114;
      sub_26B2128F0();
      v117 = sub_26B16E260(v115, v116);
      v119 = v118;
      v121 = v120;
      v123 = v122;

      *&v132[0] = v113;
      v125 = *(v113 + 16);
      v124 = *(v113 + 24);
      if (v125 >= v124 >> 1)
      {
        sub_26B15B3DC((v124 > 1), v125 + 1, 1);
        v113 = *&v132[0];
      }

      *(v113 + 16) = v125 + 1;
      v126 = (v113 + 32 * v125);
      v126[4] = v117;
      v126[5] = v119;
      v126[6] = v121;
      v126[7] = v123;
      v114 += 2;
      --v112;
    }

    while (v112);
  }

  else
  {

    v113 = MEMORY[0x277D84F90];
  }

  *&v132[0] = v113;
  sub_26B16E950(0, &qword_280D2DB48, MEMORY[0x277D83E40], MEMORY[0x277D83940]);
  sub_26B16E9A0();
  sub_26B16698C();
  v127 = sub_26B212DE0();

  return v127;
}

void *sub_26B16DDE0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v73 = 10;
  v74 = 0xE100000000000000;
  v72 = &v73;
  sub_26B2128F0();
  result = sub_26B16E37C(0x7FFFFFFFFFFFFFFFLL, 0, sub_26B16EAB0, v71, a1, a2);
  v79 = result;
  if (result[2])
  {
    v65 = a7;
    v66 = a8;
    v19 = a10;
    v20 = result[4];
    v21 = result[5];
    v22 = result[7];
    v69 = result[6];
    sub_26B2128F0();
    sub_26B18E420(0, 1);
    if (a9)
    {
      v23 = 0x8094E29C94E2;
    }

    else
    {
      v23 = 0x8094E2B095E2;
    }

    v73 = a3;
    v74 = a4;
    sub_26B2128F0();
    MEMORY[0x26D670040](a5, a6);
    v24 = MEMORY[0x26D66FF50](v20, v21, v69, v22);
    v26 = v25;

    MEMORY[0x26D670040](v24, v26);

    v27 = v73;
    v28 = v74;
    v73 = v23;
    v74 = 0xA600000000000000;
    sub_26B2128F0();
    MEMORY[0x26D670040](v27, v28);

    v29 = v73;
    v30 = v74;
    swift_beginAccess();
    sub_26B16A354();
    v31 = *(*(a10 + 16) + 16);
    sub_26B16A548(v31);
    v32 = *(a10 + 16);
    *(v32 + 16) = v31 + 1;
    v33 = v32 + 16 * v31;
    *(v33 + 32) = v29;
    *(v33 + 40) = v30;
    *(a10 + 16) = v32;
    swift_endAccess();
    v34 = v79[2];
    if (!v34)
    {
LABEL_18:

      swift_beginAccess();
      sub_26B16E224();
      v57 = v56;
      v59 = v58;
      swift_endAccess();
      v73 = v57;
      v74 = v59;
      sub_26B2128F0();
      MEMORY[0x26D670040](v65, v66);

      v60 = v73;
      v61 = v74;
      swift_beginAccess();
      sub_26B16A354();
      v62 = *(*(v19 + 16) + 16);
      sub_26B16A548(v62);
      v63 = *(v19 + 16);
      *(v63 + 16) = v62 + 1;
      v64 = v63 + 16 * v62;
      *(v64 + 32) = v60;
      *(v64 + 40) = v61;
      *(v19 + 16) = v63;
      return swift_endAccess();
    }

    if (a9)
    {
      v35 = 545428706;
    }

    else
    {
      v35 = 8224;
    }

    v36 = 0xE200000000000000;
    if (a9)
    {
      v36 = 0xA400000000000000;
    }

    v67 = v36;
    v68 = v35;
    v37 = v79 + 7;
    while (1)
    {
      v38 = v19;
      v40 = *(v37 - 3);
      v39 = *(v37 - 2);
      v42 = *(v37 - 1);
      v41 = *v37;
      sub_26B2128F0();
      v43 = sub_26B212BB0();
      result = sub_26B212BB0();
      if (__OFADD__(v43, result))
      {
        break;
      }

      v70 = v34;
      v44 = sub_26B212CC0();
      v46 = v45;
      v73 = v68;
      v74 = v67;
      sub_26B2128F0();
      MEMORY[0x26D670040](v44, v46);

      v77 = v73;
      v78 = v74;
      v73 = v40;
      v74 = v39;
      v75 = v42;
      v76 = v41;
      sub_26B16EA1C();
      sub_26B212C00();

      v47 = v77;
      v48 = v78;
      v19 = v38;
      swift_beginAccess();
      v49 = *(v38 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v38 + 16) = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26B16A704(0);
        v49 = v54;
        *(v38 + 16) = v54;
      }

      v52 = *(v49 + 16);
      v51 = *(v49 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_26B16A704(v51 > 1);
        v49 = v55;
      }

      *(v49 + 16) = v52 + 1;
      v53 = v49 + 16 * v52;
      *(v53 + 32) = v47;
      *(v53 + 40) = v48;
      *(v38 + 16) = v49;
      swift_endAccess();
      v37 += 4;
      v34 = v70 - 1;
      if (v70 == 1)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_26B16E224()
{
  if (*(*v0 + 16))
  {
    sub_26B1794B4();
    if (!v1)
    {
      sub_26B1793B0(*(*v0 + 16) - 1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B16E260(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  v4 = v3 | (v2 << 16);
  do
  {
    if (v4 < 0x4000)
    {
      break;
    }

    v4 = sub_26B212BD0();
    sub_26B212CD0();
    v5 = sub_26B2129B0();
  }

  while ((v5 & 1) != 0);
  sub_26B212BC0();

  return sub_26B212D00();
}

uint64_t sub_26B16E338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26B213E30() & 1;
  }
}

uint64_t sub_26B16E37C(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v6 = sub_26B212D00();
    v10 = v29;
    v11 = v30;
    v12 = v31;

    sub_26B16A990();
    v15 = v32;
    v8 = *(v32 + 16);
    v33 = *(v32 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v33 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v37 = (v15 + 32 * v8);
      v37[4] = v6;
      v37[5] = v10;
      v37[6] = v11;
      v37[7] = v12;
      return v15;
    }

LABEL_41:
    sub_26B16A990();
    v15 = v38;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v47 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v45 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v45;
        goto LABEL_30;
      }

      v17 = sub_26B212CD0();
      v11 = v18;
      v48[0] = v17;
      v48[1] = v18;
      v19 = v49(v48);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_26B212BC0();
    }

    v22 = (v45 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v45 >> 14)
    {
      break;
    }

    v46 = sub_26B212D00();
    v41 = v24;
    v42 = v23;
    v40 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B16A990();
      v47 = v27;
    }

    v12 = *(v47 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v47 + 24) >> 1)
    {
      sub_26B16A990();
      v47 = v28;
    }

    *(v47 + 16) = v11;
    v26 = (v47 + 32 * v12);
    v26[4] = v46;
    v26[5] = v42;
    v26[6] = v41;
    v26[7] = v40;
LABEL_20:
    v16 = sub_26B212BC0();
    if ((v22 & 1) == 0 && *(v47 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_26B212D00();
        v10 = v34;
        v11 = v35;
        v12 = v36;

        v15 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v33 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_26B16A990();
      v15 = v39;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26B16E718(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B16E73C(uint64_t a1)
{
  sub_26B16E798(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B16E798(uint64_t a1)
{
  if (!qword_2803E7088[0])
  {
    sub_26B16C9BC(255, qword_280D2DCF8, &protocol descriptor for CustomErrorCodeDescription);
    v1 = sub_26B2133E0();
    if (!v2)
    {
      atomic_store(v1, qword_2803E7088);
    }
  }
}

uint64_t sub_26B16E818(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  v5 = sub_26B214070();

  return a3(a1, a2, v5);
}

unint64_t sub_26B16E89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26B213E30() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_26B16E950(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26B16E9A0()
{
  result = qword_280D2DB40;
  if (!qword_280D2DB40)
  {
    sub_26B16E950(255, &qword_280D2DB48, MEMORY[0x277D83E40], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2DB40);
  }

  return result;
}

unint64_t sub_26B16EA1C()
{
  result = qword_280D2DB60;
  if (!qword_280D2DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2DB60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_5()
{
}

uint64_t OUTLINED_FUNCTION_7_7(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

_OWORD *OUTLINED_FUNCTION_9_6()
{
  v4 = (*(v0 + 56) + 32 * v1);

  return sub_26B165E08(v4, (v2 - 160));
}

uint64_t sub_26B16EB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_26B165E08(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_26B165EDC(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_26B159D48(a1);
    sub_26B1CEC28(a2, a3, v9);

    return sub_26B159D48(v9);
  }

  return result;
}

void sub_26B16EBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0xFF)
  {
    v13 = OUTLINED_FUNCTION_16_0();
    sub_26B1CEDA8(v13, v14, v15);

    sub_26B173EF0(v16, v18);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26B1660EC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native, v10, v11, v12, *v4, v18, v19, v20);

    *v4 = v17;
  }
}

uint64_t sub_26B16EC98(uint64_t a1)
{
  if (*(a1 + 8))
  {
    sub_26B173E00(a1);
    v2 = OUTLINED_FUNCTION_16_0();
    sub_26B1CF094(v2, v3, v4);

    return sub_26B173E00(v17);
  }

  else
  {
    sub_26B166690(a1, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = OUTLINED_FUNCTION_43(isUniquelyReferenced_nonNull_native, v7, v8, isUniquelyReferenced_nonNull_native, v9, v10, v11, v12, v15, *v1, v17[0]);
    sub_26B166378(v13, v14);

    *v1 = v16;
  }

  return result;
}

void wrappingErrors<A, B>(in:_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a7;
  OUTLINED_FUNCTION_29();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v57 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v57 - v20;
  v23 = v22(v19);
  if (v7)
  {
    a1(v23);
    OUTLINED_FUNCTION_1_11();
    sub_26B173E8C(0, v24, v25, MEMORY[0x277D84560]);
    OUTLINED_FUNCTION_40();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26B2162F0;
    *(v26 + 32) = v7;
    swift_getDynamicType();
    sub_26B165DC4();
    v27 = swift_dynamicCastMetatype();
    v28 = *(v11 + 16);
    if (v27)
    {
      v28(v18, v21, a6);
      v29 = v7;
      v30 = sub_26B213DE0();
      v59 = v11;
      if (v30)
      {
        v15 = v30;
        (*(v11 + 8))(v18, a6);
      }

      else
      {
        OUTLINED_FUNCTION_30_0();
        v39 = swift_allocError();
        v41 = OUTLINED_FUNCTION_28_2(v39, v40);
        (*(v11 + 32))(v41, v18, a6);
      }

      v42 = sub_26B211DF0();

      v43 = [v42 domain];
      v60 = sub_26B212A80();
      v58 = v44;

      v45 = [v42 code];
      v46 = [v42 userInfo];
      v47 = sub_26B2128A0();

      v48 = sub_26B212A80();
      v50 = v49;
      OUTLINED_FUNCTION_1_11();
      sub_26B173E8C(0, v51, v52, MEMORY[0x277D83940]);
      v63 = v53;
      *&v62 = v26;
      sub_26B165E08(&v62, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v47;
      sub_26B165EDC(v61, v48, v50, isUniquelyReferenced_nonNull_native);

      v55 = v64;
      v56 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_26B165258(v60, v58, v45, v55);

      v11 = v59;
    }

    else
    {
      v28(v15, v21, a6);
      v31 = OUTLINED_FUNCTION_24();
      type metadata accessor for _WrappingError(v31, v32, v60, v33);
      OUTLINED_FUNCTION_2_12();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_30_0();
      swift_allocError();
      OUTLINED_FUNCTION_18_2();
      _WrappingError.init(error:underlyingErrors:)(v34, v35, v36, v37);
      v38 = v7;
    }

    (*(v11 + 8))(v21, a6);
    swift_willThrow();
  }
}

void Error.withUnderlyingErrors(_:)()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_9_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  swift_getDynamicType();
  sub_26B165DC4();
  if (swift_dynamicCastMetatype())
  {
    v17 = OUTLINED_FUNCTION_38_0();
    v18(v17);
    v19 = sub_26B213DE0();
    if (v19)
    {
      v20 = v19;
      (*(v9 + 8))(v16, v5);
    }

    else
    {
      OUTLINED_FUNCTION_30_0();
      v20 = swift_allocError();
      (*(v9 + 32))(v23, v16, v5);
    }

    v24 = sub_26B211DF0();

    v25 = [v24 domain];
    sub_26B212A80();

    v26 = [v24 code];
    v27 = [v24 userInfo];
    v28 = sub_26B2128A0();

    v29 = sub_26B212A80();
    v31 = v30;
    OUTLINED_FUNCTION_1_11();
    sub_26B173E8C(0, v32, v33, MEMORY[0x277D83940]);
    v43 = v34;
    *&v42 = v7;
    sub_26B165E08(&v42, v41);
    sub_26B2128F0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v28;
    sub_26B165EDC(v41, v29, v31, isUniquelyReferenced_nonNull_native);

    v36 = v40;
    objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v37 = OUTLINED_FUNCTION_26_2();
    sub_26B165258(v37, v38, v26, v36);
  }

  else
  {
    (*(v9 + 16))(v13, v1, v5);
    type metadata accessor for _WrappingError(0, v5, v3, v21);
    OUTLINED_FUNCTION_2_12();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_30_0();
    swift_allocError();
    _WrappingError.init(error:underlyingErrors:)(v13, v7, v5, v22);
    sub_26B2128F0();
  }

  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_0();
  v10 = (v8 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v12();
  OUTLINED_FUNCTION_1_11();
  sub_26B173E8C(0, v15, v16, MEMORY[0x277D84560]);
  OUTLINED_FUNCTION_40();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26B2162F0;
  *(v17 + 32) = 0;
  swift_getDynamicType();
  OUTLINED_FUNCTION_34();
  sub_26B165DC4();
  OUTLINED_FUNCTION_36_0();
  v18 = swift_dynamicCastMetatype();
  v19 = *(v6 + 16);
  if (v18)
  {
    v19(v14, v0, v4);
    v20 = 0;
    OUTLINED_FUNCTION_14_3();
    if (sub_26B213DE0())
    {
      v21 = OUTLINED_FUNCTION_14_3();
      v22(v21);
    }

    else
    {
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_30_0();
      v28 = swift_allocError();
      OUTLINED_FUNCTION_25_0(v28, v29);
      OUTLINED_FUNCTION_39_0();
      v30();
    }

    sub_26B211DF0();
    OUTLINED_FUNCTION_51();
    v31 = [v4 domain];
    sub_26B212A80();

    v32 = [v4 code];
    v33 = [v4 userInfo];
    v34 = sub_26B2128A0();

    v35 = sub_26B212A80();
    v37 = v36;
    OUTLINED_FUNCTION_1_11();
    sub_26B173E8C(0, v38, v39, MEMORY[0x277D83940]);
    v49 = v40;
    *&v48 = v17;
    sub_26B165E08(&v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v34;
    sub_26B165EDC(v47, v35, v37, isUniquelyReferenced_nonNull_native);

    v42 = v46;
    v43 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v44 = OUTLINED_FUNCTION_38_0();
    sub_26B165258(v44, v45, v32, v42);
  }

  else
  {
    v19(v10, v0, v4);
    type metadata accessor for _WrappingError(0, v4, v2, v23);
    OUTLINED_FUNCTION_2_12();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_30_0();
    swift_allocError();
    OUTLINED_FUNCTION_37_0();
    _WrappingError.init(error:underlyingErrors:)(v24, v25, v26, v27);
  }

  OUTLINED_FUNCTION_28();
}

uint64_t wrappingErrors<A, B>(in:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  v10[12] = a7;
  v10[13] = a8;
  v10[10] = a2;
  v10[11] = a3;
  v10[14] = *(a7 - 8);
  v10[15] = swift_task_alloc();
  v10[16] = swift_task_alloc();
  v10[17] = swift_task_alloc();
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v10[18] = v12;
  *v12 = v10;
  v12[1] = sub_26B16F5DC;

  return v14(a1);
}

uint64_t sub_26B16F5DC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_22();
  *v5 = v4;
  *(v2 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B16F728, 0, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_26B16F728()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  (*(v0 + 80))();
  OUTLINED_FUNCTION_1_11();
  sub_26B173E8C(0, v3, v4, MEMORY[0x277D84560]);
  OUTLINED_FUNCTION_40();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26B2162F0;
  *(v5 + 32) = v1;
  swift_getDynamicType();
  sub_26B165DC4();
  v6 = swift_dynamicCastMetatype();
  v7 = *(v2 + 16);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  if (v6)
  {
    v7(*(v0 + 128), v9, *(v0 + 96));
    v12 = v8;
    OUTLINED_FUNCTION_38_0();
    v13 = sub_26B213DE0();
    v14 = *(v0 + 128);
    v15 = *(v0 + 112);
    if (v13)
    {
      v16 = v13;
      (*(v15 + 8))(*(v0 + 128), *(v0 + 96));
    }

    else
    {
      v21 = *(v0 + 96);
      OUTLINED_FUNCTION_30_0();
      v16 = swift_allocError();
      (*(v15 + 32))(v22, v14, v21);
    }

    v23 = sub_26B211DF0();

    v24 = [v23 domain];
    sub_26B212A80();

    v25 = [v23 code];
    v26 = [v23 userInfo];
    v27 = sub_26B2128A0();

    v28 = sub_26B212A80();
    v30 = v29;
    OUTLINED_FUNCTION_1_11();
    sub_26B173E8C(0, v31, v32, MEMORY[0x277D83940]);
    OUTLINED_FUNCTION_49(v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26B165EDC(v0 + 48, v28, v30, isUniquelyReferenced_nonNull_native);

    v35 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v36 = OUTLINED_FUNCTION_16_2();
    sub_26B165258(v36, v37, v25, v27);
  }

  else
  {
    v17 = *(v0 + 120);
    v7(v17, v9, *(v0 + 96));
    type metadata accessor for _WrappingError(0, v11, v10, v18);
    OUTLINED_FUNCTION_2_12();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_30_0();
    swift_allocError();
    _WrappingError.init(error:underlyingErrors:)(v17, v5, v11, v19);
    v20 = v8;
  }

  v38 = *(v0 + 152);
  (*(*(v0 + 112) + 8))(*(v0 + 136), *(v0 + 96));
  swift_willThrow();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t _WrappingError.init(error:underlyingErrors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  OUTLINED_FUNCTION_18_2();
  result = type metadata accessor for _WrappingError(v6, v7, v8, v9);
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t Error.withUnderlyingErrors(_:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[10] = a3;
  v5[13] = *(a3 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v9 = (a1 + *a1);
  v7 = swift_task_alloc();
  v5[16] = v7;
  *v7 = v5;
  v7[1] = sub_26B170000;

  return v9();
}

uint64_t sub_26B170000()
{
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_22();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B17010C, 0, 0);
  }

  return result;
}

uint64_t sub_26B17010C()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  OUTLINED_FUNCTION_1_11();
  sub_26B173E8C(0, v5, v6, MEMORY[0x277D84560]);
  OUTLINED_FUNCTION_40();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26B2162F0;
  *(v7 + 32) = v1;
  swift_getDynamicType();
  sub_26B165DC4();
  v8 = swift_dynamicCastMetatype();
  v9 = v0[11];
  if (v8)
  {
    (*(v3 + 16))(v0[15], v2, v4);
    v10 = v1;
    v11 = sub_26B213DE0();
    v12 = v0[15];
    v13 = v0[13];
    if (v11)
    {
      v14 = v11;
      (*(v13 + 8))(v0[15], v0[10]);
    }

    else
    {
      v25 = v0[10];
      OUTLINED_FUNCTION_30_0();
      v14 = swift_allocError();
      (*(v13 + 32))(v26, v12, v25);
    }

    v27 = v0[17];
    v28 = sub_26B211DF0();

    v29 = [v28 domain];
    sub_26B212A80();

    v30 = [v28 code];
    v31 = [v28 userInfo];
    v32 = sub_26B2128A0();

    v33 = sub_26B212A80();
    v35 = v34;
    OUTLINED_FUNCTION_1_11();
    sub_26B173E8C(0, v36, v37, MEMORY[0x277D83940]);
    OUTLINED_FUNCTION_49(v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26B165EDC((v0 + 6), v33, v35, isUniquelyReferenced_nonNull_native);

    v40 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v41 = OUTLINED_FUNCTION_38_0();
    v20 = sub_26B165258(v41, v42, v30, v32);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_16_2();
    v16(v15);
    v17 = OUTLINED_FUNCTION_24();
    type metadata accessor for _WrappingError(v17, v18, v9, v19);
    OUTLINED_FUNCTION_2_12();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_30_0();
    v20 = swift_allocError();
    OUTLINED_FUNCTION_18_2();
    _WrappingError.init(error:underlyingErrors:)(v21, v22, v23, v24);
  }

  v43 = v0[1];

  return v43(v20);
}

Swift::Bool __swiftcall Error.contains(domain:)(Swift::String domain)
{
  Error.unwrap(firstDomain:)();
  if (v1)
  {
  }

  return OUTLINED_FUNCTION_41_0();
}

void Error.unwrap(firstDomain:)()
{
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_9_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_0();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  if (sub_26B213F80() == v6 && v16 == v4)
  {

    goto LABEL_9;
  }

  v18 = sub_26B213E30();

  if (v18)
  {
LABEL_9:
    (*(v8 + 16))(v15, v0, v2);
    OUTLINED_FUNCTION_27_2();
    if (sub_26B213DE0())
    {
      v23 = OUTLINED_FUNCTION_27_2();
      v24(v23);
    }

    else
    {
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_30_0();
      v25 = swift_allocError();
      v27 = OUTLINED_FUNCTION_25_0(v25, v26);
      (*(v8 + 32))(v27, v15, v2);
    }

LABEL_19:
    OUTLINED_FUNCTION_28();
    return;
  }

  (*(v8 + 16))(v12, v0, v2);
  OUTLINED_FUNCTION_14_3();
  v19 = sub_26B213DE0();
  if (v19)
  {
    v0 = v19;
    v20 = v8 + 8;
    v21 = OUTLINED_FUNCTION_14_3();
    v22(v21);
  }

  else
  {
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_30_0();
    v28 = swift_allocError();
    OUTLINED_FUNCTION_25_0(v28, v29);
    v20 = v8 + 32;
    OUTLINED_FUNCTION_39_0();
    v30();
  }

  sub_26B211DF0();
  OUTLINED_FUNCTION_51();
  v31 = [v2 underlyingErrors];
  OUTLINED_FUNCTION_34();
  sub_26B162128();
  OUTLINED_FUNCTION_36_0();
  v32 = sub_26B212E40();

  v33 = 0;
  v34 = *(v32 + 16);
  while (1)
  {
    if (v34 == v33)
    {

      goto LABEL_19;
    }

    if (v33 >= *(v32 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_33_1();
    v35 = v12;
    OUTLINED_FUNCTION_45();
    Error.unwrap(firstDomain:)();
    v37 = v36;

    v33 = v20;
    if (v37)
    {

      goto LABEL_19;
    }
  }

  __break(1u);
}

Swift::Bool __swiftcall Error.contains(domain:code:)(Swift::String domain, Swift::Int code)
{
  Error.unwrap(firstDomain:code:)();
  if (v2)
  {
  }

  return OUTLINED_FUNCTION_41_0();
}

void Error.unwrap(firstDomain:code:)()
{
  OUTLINED_FUNCTION_27_0();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_0();
  v56 = (v13 - v14);
  v16 = MEMORY[0x28223BE20](v15);
  v55 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - v18;
  v57 = *(v11 + 16);
  v57(&v54 - v18, v3, v20);
  OUTLINED_FUNCTION_48();
  v21 = sub_26B213DE0();
  v58 = v3;
  v59 = v5;
  if (v21)
  {
    v22 = v21;
    v23 = OUTLINED_FUNCTION_48();
    v24(v23);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v22 = swift_allocError();
    (*(v11 + 32))(v25, v19, v7);
  }

  v26 = sub_26B211DF0();

  v27 = [v26 domain];
  v28 = sub_26B212A80();
  v30 = v29;

  if (v28 == v2 && v30 == v1)
  {
  }

  else
  {
    v32 = sub_26B213E30();

    if ((v32 & 1) == 0)
    {

      goto LABEL_14;
    }
  }

  v32 = [v26 code];

  if (v32 == v9)
  {
    v33 = v55;
    v57(v55, v58, v7);
    if (sub_26B213DE0())
    {
      (*(v11 + 8))(v33, v7);
    }

    else
    {
      OUTLINED_FUNCTION_30_0();
      v51 = swift_allocError();
      v53 = OUTLINED_FUNCTION_28_2(v51, v52);
      (*(v11 + 32))(v53, v33, v7);
    }

LABEL_24:
    OUTLINED_FUNCTION_28();
    return;
  }

LABEL_14:
  v34 = v56;
  v57(v56, v58, v7);
  OUTLINED_FUNCTION_48();
  v35 = sub_26B213DE0();
  if (v35)
  {
    v32 = v35;
    v36 = OUTLINED_FUNCTION_48();
    v37(v36);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v38 = swift_allocError();
    v40 = OUTLINED_FUNCTION_28_2(v38, v39);
    (*(v11 + 32))(v40, v34, v7);
  }

  v41 = sub_26B211DF0();

  v59 = v41;
  v42 = [v41 underlyingErrors];
  OUTLINED_FUNCTION_34();
  sub_26B162128();
  OUTLINED_FUNCTION_36_0();
  v43 = sub_26B212E40();

  v44 = 0;
  v45 = *(v43 + 16);
  while (1)
  {
    if (v45 == v44)
    {

      goto LABEL_24;
    }

    if (v44 >= *(v43 + 16))
    {
      break;
    }

    v46 = v44 + 1;
    v47 = *(v43 + 8 * v44 + 32);
    swift_getErrorValue();
    v48 = v47;
    OUTLINED_FUNCTION_16_0();
    Error.unwrap(firstDomain:code:)();
    v50 = v49;

    v44 = v46;
    if (v50)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
}

BOOL Error.contains<A>(any:)()
{
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  (*(v2 + 16))(v5 - v4);
  OUTLINED_FUNCTION_14_3();
  v6 = sub_26B213DE0();
  if (v6)
  {
    v0 = v6;
    v7 = OUTLINED_FUNCTION_14_3();
    v8(v7);
  }

  else
  {
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_30_0();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_28_2(v9, v10);
    OUTLINED_FUNCTION_39_0();
    v11();
  }

  v12 = sub_26B211DF0();

  v13 = [v12 domain];
  sub_26B212A80();

  [v12 code];
  Error.unwrap(firstDomain:code:)();
  v15 = v14;

  if (v15)
  {
  }

  return OUTLINED_FUNCTION_41_0();
}

BOOL Error.contains(where:)()
{
  Error.unwrap(where:)();
  if (v0)
  {
  }

  return OUTLINED_FUNCTION_41_0();
}

void Error.unwrap(where:)()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_0();
  v45 = v9 - v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = *(v7 + 16);
  v46 = v18;
  v17(&v44 - v15, v18);
  v19 = sub_26B213DE0();
  v47 = v1;
  if (v19)
  {
    v20 = v19;
    (*(v7 + 8))(v16, v3);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v20 = swift_allocError();
    (*(v7 + 32))(v21, v16, v3);
  }

  v22 = sub_26B211DF0();

  v23 = v5(v22);
  if (v23)
  {
    (v17)(v14, v46, v3);
    OUTLINED_FUNCTION_27_2();
    if (sub_26B213DE0())
    {
      v24 = OUTLINED_FUNCTION_27_2();
      v25(v24);
    }

    else
    {
      OUTLINED_FUNCTION_30_0();
      v31 = swift_allocError();
      v33 = OUTLINED_FUNCTION_25_0(v31, v32);
      (*(v7 + 32))(v33, v14, v3);
    }

LABEL_17:
    OUTLINED_FUNCTION_28();
  }

  else
  {
    v26 = v45;
    (v17)(v45, v46, v3);
    OUTLINED_FUNCTION_27_2();
    v27 = v47;
    v28 = sub_26B213DE0();
    if (v28)
    {
      v23 = v28;
      v29 = OUTLINED_FUNCTION_27_2();
      v30(v29);
    }

    else
    {
      OUTLINED_FUNCTION_30_0();
      v34 = swift_allocError();
      v36 = OUTLINED_FUNCTION_25_0(v34, v35);
      (*(v7 + 32))(v36, v26, v3);
    }

    sub_26B211DF0();
    OUTLINED_FUNCTION_51();
    v37 = [v3 underlyingErrors];
    OUTLINED_FUNCTION_34();
    sub_26B162128();
    OUTLINED_FUNCTION_36_0();
    v38 = sub_26B212E40();

    v39 = 0;
    v40 = *(v38 + 16);
    while (1)
    {
      if (v40 == v39)
      {

        goto LABEL_17;
      }

      if (v39 >= *(v38 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_33_1();
      v41 = v27;
      OUTLINED_FUNCTION_45();
      Error.unwrap(where:)();
      v43 = v42;

      v39 = v22;
      if (v43)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

void Error.firstValueForUserInfoKey(_:)()
{
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  OUTLINED_FUNCTION_47_0();
  v4 = v3;
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, v11);
  v12 = sub_26B213DE0();
  if (v12)
  {
    v0 = v12;
    (*(v6 + 8))(v10, v2);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v13 = swift_allocError();
    v15 = OUTLINED_FUNCTION_28_2(v13, v14);
    (*(v6 + 32))(v15, v10, v2);
  }

  v16 = sub_26B211DF0();

  v17 = [v16 userInfo];
  v18 = sub_26B2128A0();

  OUTLINED_FUNCTION_16_0();
  sub_26B15CE80(v19, v18);

  if (v40)
  {

    sub_26B165E08(&v39, v41);
    v20 = v4;
LABEL_6:
    sub_26B165E08(v41, v20);
LABEL_18:
    OUTLINED_FUNCTION_28();
  }

  else
  {
    sub_26B159D48(&v39);
    v37 = v16;
    v21 = [v16 underlyingErrors];
    OUTLINED_FUNCTION_34();
    sub_26B162128();
    v22 = sub_26B212E40();

    while (1)
    {
      if (!*(v22 + 16) || (*&v41[0] = *(v22 + 32), v23 = *&v41[0], sub_26B165DC4(), (swift_dynamicCast() & 1) == 0))
      {

        *v4 = 0u;
        v4[1] = 0u;
        goto LABEL_18;
      }

      v24 = v39;
      v25 = [v39 userInfo];
      v26 = sub_26B2128A0();

      if (*(v26 + 16))
      {
        v27 = OUTLINED_FUNCTION_16_0();
        v29 = sub_26B173934(v27, v28);
        if (v30)
        {
          sub_26B15CF98(*(v26 + 56) + 32 * v29, &v39);

          sub_26B165E08(&v39, v41);
          v20 = v4;
          goto LABEL_6;
        }
      }

      v31 = *(v22 + 16);
      if (!v31)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v31 - 1) > *(v22 + 24) >> 1)
      {
        sub_26B16AA48(isUniquelyReferenced_nonNull_native, v31, 1, v22);
        v22 = v33;
      }

      v34 = *(v22 + 16);
      memmove((v22 + 32), (v22 + 40), 8 * v34 - 8);
      *(v22 + 16) = v34 - 1;
      v38 = v22;
      v35 = [v24 underlyingErrors];
      v36 = sub_26B212E40();

      sub_26B1688B4(v36);
      v22 = v38;
    }

    __break(1u);
  }
}

void Error.unwrap<A>(first:)()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_31_1(v2, v3, v4, v5);
  v59 = v6;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_23_2(255, v11, v13, v12);
  OUTLINED_FUNCTION_9_0();
  v54 = v15;
  v55 = v14;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_2();
  v58 = v17;
  OUTLINED_FUNCTION_9_0();
  v53 = v18;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_2();
  v52 = v20;
  OUTLINED_FUNCTION_24();
  sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v56 = v22;
  v57 = v21;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  OUTLINED_FUNCTION_9_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v50 - v33;
  v51 = *(v27 + 16);
  v51(&v50 - v33, v8, v0);
  v35 = sub_26B213DE0();
  v60 = v10;
  if (v35)
  {
    v36 = v35;
    (*(v27 + 8))(v34, v0);
  }

  else
  {
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_30_0();
    v36 = swift_allocError();
    OUTLINED_FUNCTION_18_2();
    v37();
  }

  v38 = sub_26B211DF0();

  v39 = [v38 domain];
  sub_26B212A80();

  [v38 code];
  Error.unwrap(firstDomain:code:)();
  v41 = v40;

  if (!v41)
  {
    v45 = 1;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_52();
  v42 = sub_26B162128();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_22_3(v25, 1);
    (*(v56 + 8))(v25, v57);
    OUTLINED_FUNCTION_44();
    v46 = v58;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v1);
      (*(v53 + 32))(v52, v46, v1);
      v47 = OUTLINED_FUNCTION_13_4();
      (v51)(v47);
      v48 = OUTLINED_FUNCTION_14_3();
      v49(v48);
      goto LABEL_10;
    }

    v45 = 1;
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v1);
    (*(v54 + 8))(v46, v55);
LABEL_12:
    v42 = v60;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_22_3(v25, 0);
  v43 = *(v27 + 32);
  v43(v31, v25, v0);
  v44 = OUTLINED_FUNCTION_13_4();
  (v43)(v44);
LABEL_10:
  v45 = 0;
LABEL_13:
  OUTLINED_FUNCTION_22_3(v42, v45);
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_31_1(v2, v3, v4, v5);
  v60 = v6;
  v61 = v7;
  OUTLINED_FUNCTION_23_2(255, v0, *(v8 + 8), v9);
  OUTLINED_FUNCTION_9_0();
  v55 = v11;
  v56 = v10;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_2();
  v58 = v13;
  OUTLINED_FUNCTION_9_0();
  v54[1] = v14;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_2();
  v54[0] = v16;
  OUTLINED_FUNCTION_24();
  sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v57 = v17;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v18);
  v20 = v54 - v19;
  OUTLINED_FUNCTION_9_0();
  v59 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v25 = (v24 - v23);
  OUTLINED_FUNCTION_46();
  sub_26B211C20();
  OUTLINED_FUNCTION_46();
  sub_26B211C40();
  Error.unwrap(firstDomain:code:)();
  v27 = v26;

  if (!v27)
  {
    v34 = 1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_52();
  v28 = sub_26B162128();
  if (!OUTLINED_FUNCTION_32_0(v28))
  {
    v35 = OUTLINED_FUNCTION_10_6();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v0);
    v38 = OUTLINED_FUNCTION_16_2();
    v39(v38);
    OUTLINED_FUNCTION_44();
    v33 = v58;
    if (OUTLINED_FUNCTION_50(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_9_7();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v1);
      v45 = OUTLINED_FUNCTION_8_8();
      v46(v45);
      v47 = OUTLINED_FUNCTION_6_8();
      v48(v47);
      v49 = OUTLINED_FUNCTION_30_2();
      v50(v49);
      goto LABEL_7;
    }

    v34 = 1;
    v51 = OUTLINED_FUNCTION_10_6();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v1);
    (*(v55 + 8))(v33, v56);
LABEL_9:
    v33 = v61;
    goto LABEL_10;
  }

  v29 = OUTLINED_FUNCTION_9_7();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v0);
  v32 = *(v59 + 32);
  v32(v25, v20, v0);
  v33 = v61;
  v32(v61, v25, v0);
LABEL_7:
  v34 = 0;
LABEL_10:
  OUTLINED_FUNCTION_22_3(v33, v34);
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_27_0();
  v47 = v0;
  v48 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_23_2(255, v3, v6, v5);
  OUTLINED_FUNCTION_9_0();
  v44 = v8;
  v45 = v7;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_2();
  v46 = v10;
  OUTLINED_FUNCTION_9_0();
  v43[1] = v11;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_2();
  v43[0] = v13;
  OUTLINED_FUNCTION_24();
  v14 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v16 = v15;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v17);
  v19 = v43 - v18;
  OUTLINED_FUNCTION_9_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v25 = v24 - v23;
  v49 = v4;
  swift_getMetatypeMetadata();
  sub_26B212B00();
  Error.unwrap(firstDomain:)();
  v27 = v26;

  if (!v27)
  {
    v30 = 1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_52();
  sub_26B162128();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_22_3(v19, 1);
    (*(v16 + 8))(v19, v14);
    OUTLINED_FUNCTION_44();
    v14 = v46;
    if (swift_dynamicCast())
    {
      v31 = OUTLINED_FUNCTION_9_7();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v1);
      v34 = OUTLINED_FUNCTION_8_8();
      v35(v34);
      v36 = OUTLINED_FUNCTION_6_8();
      v37(v36);
      v38 = OUTLINED_FUNCTION_30_2();
      v39(v38);
      goto LABEL_7;
    }

    v30 = 1;
    v40 = OUTLINED_FUNCTION_10_6();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v1);
    (*(v44 + 8))(v14, v45);
LABEL_9:
    v14 = v48;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_22_3(v19, 0);
  v28 = *(v21 + 32);
  v28(v25, v19, v4);
  v29 = OUTLINED_FUNCTION_6_8();
  (v28)(v29);
LABEL_7:
  v30 = 0;
LABEL_10:
  OUTLINED_FUNCTION_22_3(v14, v30);
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_31_1(v2, v3, v4, v5);
  v57 = v6;
  OUTLINED_FUNCTION_23_2(255, v0, *(v7 + 8), v8);
  OUTLINED_FUNCTION_9_0();
  v54 = v10;
  v55 = v9;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_2();
  v56 = v12;
  OUTLINED_FUNCTION_9_0();
  v53[2] = v13;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_2();
  v53[1] = v15;
  OUTLINED_FUNCTION_24();
  sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v16);
  v18 = v53 - v17;
  OUTLINED_FUNCTION_9_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_46();
  sub_26B211C20();
  Error.unwrap(firstDomain:)();
  v26 = v25;

  if (!v26)
  {
    v33 = 1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_52();
  v27 = sub_26B162128();
  if (!OUTLINED_FUNCTION_32_0(v27))
  {
    v34 = OUTLINED_FUNCTION_10_6();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v0);
    v37 = OUTLINED_FUNCTION_16_2();
    v38(v37);
    OUTLINED_FUNCTION_44();
    v18 = v56;
    if (OUTLINED_FUNCTION_50(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_9_7();
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v1);
      v44 = OUTLINED_FUNCTION_8_8();
      v45(v44);
      v46 = OUTLINED_FUNCTION_6_8();
      v47(v46);
      v48 = OUTLINED_FUNCTION_30_2();
      v49(v48);
      goto LABEL_7;
    }

    v33 = 1;
    v50 = OUTLINED_FUNCTION_10_6();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v1);
    (*(v54 + 8))(v18, v55);
LABEL_9:
    v18 = v57;
    goto LABEL_10;
  }

  v28 = OUTLINED_FUNCTION_9_7();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v0);
  v31 = *(v20 + 32);
  v31(v24, v18, v0);
  v32 = OUTLINED_FUNCTION_13_4();
  (v31)(v32);
LABEL_7:
  v33 = 0;
LABEL_10:
  OUTLINED_FUNCTION_22_3(v18, v33);
  OUTLINED_FUNCTION_28();
}

Swift::Bool __swiftcall Error._is(domain:)(Swift::String domain)
{
  OUTLINED_FUNCTION_47_0();
  if (sub_26B213F80() == v2 && v3 == v1)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_37_0();
    v5 = sub_26B213E30();
  }

  return v5 & 1;
}

Swift::Bool __swiftcall Error._is(domain:code:)(Swift::String domain, Swift::Int code)
{
  object = domain._object;
  countAndFlagsBits = domain._countAndFlagsBits;
  OUTLINED_FUNCTION_29();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  (*(v7 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v10);
  OUTLINED_FUNCTION_14_3();
  v12 = sub_26B213DE0();
  if (v12)
  {
    v2 = v12;
    v13 = OUTLINED_FUNCTION_14_3();
    v14(v13);
  }

  else
  {
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_30_0();
    v15 = swift_allocError();
    OUTLINED_FUNCTION_28_2(v15, v16);
    OUTLINED_FUNCTION_39_0();
    v17();
  }

  v18 = sub_26B211DF0();

  v19 = [v18 domain];
  v20 = sub_26B212A80();
  v22 = v21;

  if (v20 == countAndFlagsBits && v22 == object)
  {
  }

  else
  {
    v24 = sub_26B213E30();

    if ((v24 & 1) == 0)
    {

      return 0;
    }
  }

  v26 = [v18 code];

  return v26 == code;
}

uint64_t Error._is(query:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_29();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10);
  v11 = sub_26B213DE0();
  if (v11)
  {
    v12 = v11;
    (*(v6 + 8))(v9, a3);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v12 = swift_allocError();
    (*(v6 + 32))(v13, v9, a3);
  }

  v14 = sub_26B211DF0();

  v15 = a1(v14);
  return v15 & 1;
}

uint64_t sub_26B1725A0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_getObjectType();
  sub_26B165DC4();
  if (swift_dynamicCastMetatype())
  {
    v30[0] = v5;
    v6 = v5;
    swift_getWitnessTable();
    v7 = sub_26B213DE0();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = swift_allocError();
      *v14 = v6;
    }

    v15 = sub_26B211DF0();

    v16 = [v15 domain];
    v17 = sub_26B212A80();
    v19 = v18;

    v20 = [v15 code];
    v21 = [v15 userInfo];
    v22 = sub_26B2128A0();

    v31 = v22;
    v23 = sub_26B212A80();
    v25 = v24;
    sub_26B173E8C(0, &qword_280D2CCE0, sub_26B162128, MEMORY[0x277D83940]);
    v30[3] = v26;
    v30[0] = a1;
    sub_26B2128F0();
    sub_26B16EB34(v30, v23, v25);
    v27 = v31;
    v28 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v11 = sub_26B165258(v17, v19, v20, v27);
  }

  else
  {
    v30[0] = v5;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for _WrappingError(0, a2, WitnessTable, v10);
    swift_getWitnessTable();
    v11 = swift_allocError();
    _WrappingError.init(error:underlyingErrors:)(v30, a1, a2, v12);
    v13 = v5;
    sub_26B2128F0();
  }

  return v11;
}

uint64_t _WrappingError.underlyingErrors.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_26B172940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_26B172994(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4A8](a1, WitnessTable);
}

uint64_t sub_26B1729F4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v37[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37[-1] - v10;
  sub_26B165DC4();
  v12 = swift_dynamicCastMetatype();
  v13 = *(v6 + 16);
  if (v12)
  {
    v13(v11, v4, a2);
    swift_getWitnessTable();
    v14 = sub_26B213DE0();
    if (v14)
    {
      v15 = v14;
      (*(v6 + 8))(v11, a2);
    }

    else
    {
      v15 = swift_allocError();
      (*(v6 + 32))(v20, v11, a2);
    }

    v21 = sub_26B211DF0();

    v22 = [v21 domain];
    v23 = sub_26B212A80();
    v25 = v24;

    v26 = [v21 code];
    v27 = [v21 userInfo];
    v28 = sub_26B2128A0();

    v38 = v28;
    v29 = sub_26B212A80();
    v31 = v30;
    sub_26B173E8C(0, &qword_280D2CCE0, sub_26B162128, MEMORY[0x277D83940]);
    v37[3] = v32;
    v37[0] = a1;
    sub_26B2128F0();
    sub_26B16EB34(v37, v29, v31);
    v33 = v38;
    v34 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v18 = sub_26B165258(v23, v25, v26, v33);
  }

  else
  {
    v13(v9, v4, a2);
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for _WrappingError(0, a2, WitnessTable, v17);
    swift_getWitnessTable();
    v18 = swift_allocError();
    _WrappingError.init(error:underlyingErrors:)(v9, a1, a2, v19);
    sub_26B2128F0();
  }

  return v18;
}

uint64_t _WrappingError.description.getter(uint64_t a1)
{
  sub_26B2136C0();
  sub_26B213DF0();
  MEMORY[0x26D670040](0xD000000000000013, 0x800000026B21F700);
  v3 = *(v1 + *(a1 + 36));
  v4 = sub_26B162128();
  v5 = MEMORY[0x26D670290](v3, v4);
  MEMORY[0x26D670040](v5);

  return 0;
}

uint64_t _WrappingError.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  v16 = sub_26B2141F0();
  MEMORY[0x26D670040](0x203A726F72726528, 0xE800000000000000);
  sub_26B1739A4(0, &qword_2803E6DE8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26B2162F0;
  *(v4 + 56) = *(a1 + 16);
  __swift_allocate_boxed_opaque_existential_0((v4 + 32));
  OUTLINED_FUNCTION_37_0();
  v6 = v5();
  OUTLINED_FUNCTION_21_2(v6, v7);

  MEMORY[0x26D670040](0xD000000000000014, 0x800000026B21F720);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26B2162F0;
  v9 = *(v2 + *(a1 + 36));
  OUTLINED_FUNCTION_1_11();
  sub_26B173E8C(0, v10, v11, MEMORY[0x277D83940]);
  *(v8 + 56) = v12;
  *(v8 + 32) = v9;
  v13 = sub_26B2128F0();
  OUTLINED_FUNCTION_21_2(v13, v14);

  MEMORY[0x26D670040](41, 0xE100000000000000);
  return v16;
}

id _WrappingError.errorCode.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5);
  OUTLINED_FUNCTION_37_0();
  v8 = sub_26B213DE0();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v7, v1);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_18_2();
    v10();
  }

  v11 = sub_26B211DF0();

  v12 = [v11 code];
  return v12;
}

uint64_t _WrappingError.errorUserInfo.getter(uint64_t a1)
{
  sub_26B173E8C(0, &qword_2803E6C68, sub_26B159ECC, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2162F0;
  *(inited + 32) = sub_26B212A80();
  *(inited + 40) = v4;
  v5 = *(v1 + *(a1 + 36));
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_26B2137C0();
    v8 = (v5 + 32);
    do
    {
      v9 = *v8++;
      v10 = v9;
      sub_26B211DF0();
      OUTLINED_FUNCTION_51();
      sub_26B213790();
      sub_26B2137D0();
      sub_26B2137E0();
      sub_26B2137A0();
      --v6;
    }

    while (v6);
    v7 = v15;
  }

  OUTLINED_FUNCTION_12_6();
  sub_26B173E8C(0, v11, v12, MEMORY[0x277D83940]);
  *(inited + 72) = v13;
  *(inited + 48) = v7;
  return sub_26B2128C0();
}

uint64_t _WrappingError<>.errorUserInfo.getter(uint64_t a1)
{
  v3 = sub_26B211C30();
  v4 = sub_26B212A80();
  v6 = sub_26B16E800(v4, v5);
  if (v7)
  {
    v8 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    *&v32 = v3;
    sub_26B166880();
    sub_26B2139B0();

    sub_26B165E08((*(v3 + 56) + 32 * v8), &v33);
    sub_26B2139C0();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  sub_26B159D48(&v33);
  sub_26B212A80();
  v9 = *(v1 + *(a1 + 36));
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    *&v33 = MEMORY[0x277D84F90];
    sub_26B2137C0();
    v12 = (v9 + 32);
    do
    {
      v13 = *v12++;
      v14 = v13;
      sub_26B211DF0();

      sub_26B213790();
      sub_26B2137D0();
      sub_26B2137E0();
      sub_26B2137A0();
      --v10;
    }

    while (v10);
    v11 = v33;
  }

  OUTLINED_FUNCTION_12_6();
  sub_26B173E8C(0, v15, v16, MEMORY[0x277D83940]);
  *(&v34 + 1) = v17;
  *&v33 = v11;
  sub_26B165E08(&v33, &v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = OUTLINED_FUNCTION_43(isUniquelyReferenced_nonNull_native, v19, v20, isUniquelyReferenced_nonNull_native, v21, v22, v23, v24, v30, v3, v32);
  sub_26B165E18(v25, v26, v27, v28);

  return v31;
}

char *sub_26B1734FC(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_17_2(a3, result, a2);
  }

  return result;
}

char *sub_26B173538(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B173560(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B173588(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B1735C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B1735E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_17_2(a3, result, 88 * a2);
  }

  return result;
}

char *sub_26B173610(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t sub_26B17364C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_18_2();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_18_2();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_26B173724(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t sub_26B1737A4(uint64_t a1, char a2)
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

  sub_26B2135F0();
LABEL_9:
  result = sub_26B213750();
  *v2 = result;
  return result;
}

uint64_t sub_26B1738BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

unint64_t sub_26B173934(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_0();
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  sub_26B214070();
  v2 = OUTLINED_FUNCTION_16_0();

  return sub_26B16E89C(v2, v3, v4);
}

void sub_26B1739A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F70] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26B173A40(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_26B173E8C(319, &qword_280D2CCE0, sub_26B162128, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B173AF8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26B173C34(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26B173E00(uint64_t a1)
{
  sub_26B173E8C(0, &qword_2803E7110, sub_26B166480, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B173E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26B173EF0(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_26B166870(a1, a2);
  }
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1, uint64_t a2, ...)
{

  return sub_26B213630();
}

uint64_t OUTLINED_FUNCTION_22_3(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _WrappingError(a1, a2, a3, a4);

  return sub_26B2133E0();
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return swift_getErrorValue();
}

_OWORD *OUTLINED_FUNCTION_49(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 16) = v1;

  return sub_26B165E08((v2 + 16), (v2 + 48));
}

void OUTLINED_FUNCTION_51()
{
}

id OUTLINED_FUNCTION_52()
{
  *(v1 - 88) = v0;

  return v0;
}

uint64_t sub_26B174158()
{
  type metadata accessor for SonicActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_2803E7118 = v0;
  return result;
}

uint64_t *sub_26B174194()
{
  if (qword_2803E6A80 != -1)
  {
    OUTLINED_FUNCTION_0_14(&qword_2803E6A80);
  }

  return &qword_2803E7118;
}

uint64_t static SonicActor.shared.getter()
{
  if (qword_2803E6A80 != -1)
  {
    OUTLINED_FUNCTION_0_14(&qword_2803E6A80);
  }

  swift_beginAccess();
}

uint64_t static SonicActor.shared.setter(uint64_t a1)
{
  if (qword_2803E6A80 != -1)
  {
    OUTLINED_FUNCTION_0_14(&qword_2803E6A80);
  }

  swift_beginAccess();
  qword_2803E7118 = a1;
}

uint64_t (*static SonicActor.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_2803E6A80 != -1)
  {
    OUTLINED_FUNCTION_0_14(&qword_2803E6A80);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B174328@<X0>(void *a1@<X8>)
{
  sub_26B174194();
  swift_beginAccess();
  *a1 = qword_2803E7118;
}

uint64_t sub_26B17437C(uint64_t *a1)
{
  v1 = *a1;

  sub_26B174194();
  swift_beginAccess();
  qword_2803E7118 = v1;
}

uint64_t SonicActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_26B174454(uint64_t a1, uint64_t a2)
{
  result = qword_2803E7120;
  if (!qword_2803E7120)
  {
    type metadata accessor for SonicActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7120);
  }

  return result;
}

uint64_t sub_26B1744E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SonicActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t ActorQueue.TaskOrder.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t sub_26B1745CC()
{
  sub_26B1786E4(0);
  swift_allocObject();
  result = sub_26B2141B0();
  qword_2803E7128 = result;
  return result;
}

uint64_t sub_26B174624()
{
  if (qword_2803E6A88 != -1)
  {
    OUTLINED_FUNCTION_6_9(&qword_2803E6A88);
  }

  sub_26B2141C0();
  return v1;
}

uint64_t ActorQueue.__allocating_init(ordering:)(char *a1)
{
  v2 = swift_allocObject();
  ActorQueue.init(ordering:)(a1);
  return v2;
}

uint64_t ActorQueue.init(ordering:)(char *a1)
{
  v2 = *a1;
  swift_defaultActor_initialize();
  *(v1 + 120) = xmmword_26B216B40;
  *(v1 + 136) = xmmword_26B216B50;
  *(v1 + 152) = 1;
  *(v1 + 160) = *sub_26B2122F0();
  *(v1 + 112) = v2;

  return v1;
}

uint64_t ActorQueue.count.getter()
{
  if (*(v0 + 152))
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(*(v0 + 160) + 24);
  result = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t ActorQueue.run<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = *v4;
  return OUTLINED_FUNCTION_2_13(sub_26B1747C8, v4);
}

uint64_t sub_26B1747C8(void *a1)
{
  v2 = v1[9];
  v3 = v2[16];
  v4 = v2[17];
  if (v4 == v3)
  {
    return sub_26B2139E0();
  }

  v5 = v2[15];
  if (v3 < v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 >= v3)
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x2822008B0](a1);
  }

  v2[17] = v4 + 1;
  v6 = sub_26B174624();
  v7 = sub_26B174E88(v2, v6);

  if (v7)
  {
    v8 = v1[9];
    sub_26B2136C0();
    v1[2] = 0;
    v1[3] = 0xE000000000000000;
    MEMORY[0x26D670040](0xD000000000000015, 0x800000026B21F7B0);
    v1[4] = v8;
    sub_26B2138F0();
    MEMORY[0x26D670040](0xD00000000000002FLL, 0x800000026B21F7D0);
    sub_26B174624();
    v9 = MEMORY[0x26D670290]();
    v11 = v10;

    MEMORY[0x26D670040](v9, v11);

    return sub_26B2139E0();
  }

  v13 = v1[9];
  if ((*(v13 + 152) & 1) == 0)
  {
    v20 = swift_task_alloc();
    v1[11] = v20;
    *(v20 + 16) = v4;
    *(v20 + 24) = v13;
    v21 = swift_task_alloc();
    v1[12] = v21;
    *(v21 + 16) = v13;
    *(v21 + 24) = v4;
    sub_26B176908(v21, v22);
    a1 = swift_task_alloc();
    v1[13] = a1;
    *a1 = v1;
    a1[1] = sub_26B174B30;

    return MEMORY[0x2822008B0](a1);
  }

  *(v13 + 144) = v4;
  *(v13 + 152) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v1[15] = v14;
  *v14 = v15;
  v16 = OUTLINED_FUNCTION_13_5(v14);

  return sub_26B174EE4(v16, v17, v18, v19);
}

uint64_t sub_26B174B30()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;

  if (!v0)
  {
    v7 = *(v3 + 72);

    return MEMORY[0x2822009F8](sub_26B174C44, v7, 0);
  }

  return result;
}

uint64_t sub_26B174C44()
{
  OUTLINED_FUNCTION_25();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 112) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_5(v1);

  return sub_26B174EE4(v3, v4, v5, v6);
}

uint64_t sub_26B174CC8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B174DA8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_10_0();

  return v3();
}

BOOL sub_26B174E88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_26B174EB4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_26B174EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v5[13] = *v4;
  return OUTLINED_FUNCTION_2_13(sub_26B174F30, v4);
}

uint64_t sub_26B174F30()
{
  if (qword_2803E6A88 != -1)
  {
    OUTLINED_FUNCTION_6_9(&qword_2803E6A88);
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v12 = *(v0 + 72);
  v3 = sub_26B174624();
  sub_26B178DA0(0, &qword_2803E6FC0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2162F0;
  *(inited + 32) = v1;
  sub_26B16898C(inited);
  *(v0 + 112) = v3;
  *(v0 + 56) = v3;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v12;
  v7 = sub_26B176908(v5, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 128) = v8;
  *v8 = v9;
  v8[1] = sub_26B1750E8;
  v10 = *(v0 + 64);

  return MEMORY[0x282200908](v10, v0 + 56, &unk_26B216C98, v5, v1, v7, 0xD000000000000020, 0x800000026B21F780);
}

uint64_t sub_26B1750E8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v3 + 136) = v0;

  v6 = *(v3 + 96);
  if (v0)
  {
    v7 = sub_26B17528C;
  }

  else
  {
    v7 = sub_26B175230;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_26B175230()
{
  OUTLINED_FUNCTION_25();
  sub_26B176188();
  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B17528C()
{
  OUTLINED_FUNCTION_25();
  sub_26B176188();
  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1752E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B175308, a3);
}

uint64_t sub_26B175308()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[3];
  v1 = v0[4];
  v5 = sub_26B176908(v3, v4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[6] = v7;
  *v7 = v8;
  v7[1] = sub_26B175400;
  v9 = v0[2];
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v9, v1, v5, 0x293A5F286E7572, 0xE700000000000000, sub_26B178D98, v6, v10);
}

uint64_t sub_26B175400()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B175500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActorQueue.TaskState(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B213100();
  v11 = *(v7 + 32);
  sub_26B176B7C();
  (*(*(v12 - 8) + 16))(&v10[v11], a1, v12);
  *v10 = a2;
  swift_beginAccess();
  result = *(a3 + 160);
  v14 = *(result + 24);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a3 + 160);
    if (*(v17 + 16) < v15 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26B176D30(isUniquelyReferenced_nonNull_native, v15, 0);
      v17 = *(a3 + 160);
    }

    sub_26B176FC8((v17 + 16), v17 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), v10);
    swift_endAccess();
    sub_26B175690();
    return sub_26B176CD4(v10);
  }

  return result;
}

uint64_t sub_26B175690()
{
  if (*(v0 + 112) == 1)
  {
    result = swift_beginAccess();
    if (*(*(v0 + 160) + 24))
    {
      swift_beginAccess();
      sub_26B1764B8((v0 + 160));
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_26B175708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26B213020();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  sub_26B178758(0, &qword_2803E6DE0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  result = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v20 - v15;
  if (*(a3 + 112) == 1)
  {
    v17 = *(v9 + 16);
    v17(v16, a2, v7);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v7);
    v17(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 4) = a3;
    (*(v9 + 32))(&v19[v18], &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    *&v19[(v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = a4;

    sub_26B175C84(0, 0, v16, &unk_26B216C80, v19);
  }

  return result;
}

uint64_t sub_26B175914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26B175938, a4, 0);
}

uint64_t sub_26B175938()
{
  OUTLINED_FUNCTION_25();
  sub_26B175994(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B175994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_26B178A68(0);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActorQueue.TaskState(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = (&v35 - v16);
  if (*(v3 + 112) != 1 || (*(v3 + 152) & 1) == 0 && *(v3 + 144) == a2)
  {
    return result;
  }

  v35 = result;
  v36 = v9;
  v37 = v7;
  v38 = a1;
  swift_beginAccess();
  v18 = *(v3 + 160);

  for (i = 0; ; ++i)
  {
    v20 = v18[3];
    if (i == v20)
    {
    }

    if (i >= v20)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v21 = v18[4];
    v22 = i + v21 >= v18[2] ? v18[2] : 0;
    v23 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v24 = *(v11 + 72);
    sub_26B178AD0(v18 + v23 + (i + v21 - v22) * v24, v17);
    v25 = *v17;
    result = sub_26B176CD4(v17);
    if (v25 == a2)
    {
      break;
    }
  }

  swift_beginAccess();
  result = *(v3 + 160);
  if (i >= *(result + 24))
  {
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26B20BFB8();
  }

  v28 = *(v3 + 160);
  v29 = *(v28 + 32);
  if (v29 + i >= *(v28 + 16))
  {
    v30 = *(v28 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = *(v37 + 48);
  v32 = (v29 - v30 + i) * v24;
  sub_26B178680(v28 + v23 + v32, &v27[v31]);
  sub_26B178680(&v27[v31], v14);
  v33 = *(v35 + 20);
  v34 = sub_26B213020();
  (*(*(v34 - 8) + 24))(&v14[v33], v38, v34);
  sub_26B178AD0(v14, *(v3 + 160) + v23 + v32);
  sub_26B176CD4(v14);
  swift_endAccess();
  return sub_26B175690();
}

uint64_t sub_26B175C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_26B178758(0, &qword_2803E6DE0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  sub_26B1788E4(a3, v24 - v11, &qword_2803E6DE0, v9);
  v13 = sub_26B213020();
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (v9 == 1)
  {
    sub_26B178964(v12, &qword_2803E6DE0, MEMORY[0x277D85720]);
  }

  else
  {
    sub_26B213010();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26B212F70();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26B212B10() + 32;
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

      sub_26B178964(a3, &qword_2803E6DE0, MEMORY[0x277D85720]);

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

  sub_26B178964(a3, &qword_2803E6DE0, MEMORY[0x277D85720]);
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

uint64_t sub_26B175FB0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26B1760A8;

  return v6(a1);
}

uint64_t sub_26B1760A8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B176188()
{
  v1 = v0;
  sub_26B176B7C();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_15();
  sub_26B178758(0, v9, v10, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v39 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  swift_beginAccess();
  if (*(*(v0 + 160) + 24) < 1)
  {
    v21 = type metadata accessor for ActorQueue.TaskState(0);
    v22 = v19;
    v23 = 1;
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B20BFB8();
    }

    v20 = *(v0 + 160);
    v21 = type metadata accessor for ActorQueue.TaskState(0);
    sub_26B1785E4((v20 + 16), v20 + ((*(*(v21 - 8) + 80) + 40) & ~*(*(v21 - 8) + 80)), v19);
    v22 = v19;
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
  swift_endAccess();
  v24 = OUTLINED_FUNCTION_4_10();
  sub_26B1788E4(v24, v17, v25, v26);
  type metadata accessor for ActorQueue.TaskState(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v21);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_0_15();
    sub_26B178964(v17, v28, v29);
    v30 = 0;
  }

  else
  {
    v30 = *v17;
    sub_26B176CD4(v17);
  }

  *(v1 + 144) = v30;
  *(v1 + 152) = EnumTagSinglePayload == 1;
  v31 = OUTLINED_FUNCTION_4_10();
  sub_26B1788E4(v31, v14, v32, v33);
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    OUTLINED_FUNCTION_0_15();
    sub_26B178964(v19, v34, v35);
    v19 = v14;
  }

  else
  {
    (*(v5 + 16))(v8, &v14[*(v21 + 24)], v3);
    sub_26B176CD4(v14);
    sub_26B212F90();
    (*(v5 + 8))(v8, v3);
  }

  OUTLINED_FUNCTION_0_15();
  return sub_26B178964(v19, v36, v37);
}

uint64_t sub_26B1764B8(void *a1)
{
  v3 = type metadata accessor for ActorQueue.TaskState(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B20BFB8();
  }

  v7 = *a1;
  v8 = *(v4 + 80);
  v9 = (v8 + 40) & ~v8;
  result = sub_26B178B34((*a1 + 16), *a1 + v9);
  if (!v1 && (result & 1) != 0)
  {
    v11 = *(v7 + 24);
    if ((v11 & 0x8000000000000000) == 0)
    {

      if (v11)
      {
        v12 = sub_26B212ED0();
        *(v12 + 16) = v11;
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

      v13 = (v8 + 32) & ~v8;
      v25[1] = v11;
      v26 = 0;
      v25[0] = v12 + v13;
      result = sub_26B178BF4((v7 + 16), v7 + v9, v25, &v26);
      if (v11 < v26)
      {
        goto LABEL_30;
      }

      *(v12 + 16) = v26;

      v27 = v12;
      result = sub_26B176728(&v27);
      v14 = v27;
      v24 = *(v7 + 24);
      if (v24 < 0)
      {
        goto LABEL_31;
      }

      v15 = v13;
      v16 = 0;
      v17 = *(v27 + 16);
      v22 = v27 + v15;
      v23 = v17;
      while (1)
      {
        if (v24 == v16 || v23 == v16)
        {
        }

        if (v16 >= *(v14 + 16))
        {
          break;
        }

        v19 = *(v4 + 72);
        result = sub_26B178AD0(v22 + v19 * v16, v6);
        if (v16 >= *(v7 + 24))
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26B20BFB8();
        }

        v7 = *a1;
        v20 = *(*a1 + 32);
        if ((v16 + v20) >= *(*a1 + 16))
        {
          v21 = *(*a1 + 16);
        }

        else
        {
          v21 = 0;
        }

        sub_26B178D34(v6, v7 + v9 + (v16 + v20 - v21) * v19);
        result = sub_26B176CD4(v6);
        ++v16;
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_26B176728(uint64_t *a1)
{
  v2 = *(type metadata accessor for ActorQueue.TaskState(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B1D5788(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_26B1772C8(v7);
  *a1 = v3;
  return result;
}

uint64_t ActorQueue.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActorQueue.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26B176858()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_10(v5);
  *v6 = v7;
  v6[1] = sub_26B1760A8;

  return sub_26B1752E8(v2, v4, v3);
}

unint64_t sub_26B176908(uint64_t a1, uint64_t a2)
{
  result = qword_2803E7130;
  if (!qword_2803E7130)
  {
    type metadata accessor for ActorQueue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7130);
  }

  return result;
}

unint64_t sub_26B176984()
{
  result = qword_2803E7138;
  if (!qword_2803E7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7138);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActorQueue.TaskOrder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ActorQueue.TaskOrder(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_26B176B7C()
{
  if (!qword_2803E7140)
  {
    v0 = sub_26B212FA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7140);
    }
  }
}

uint64_t type metadata accessor for ActorQueue.TaskState(uint64_t a1)
{
  result = qword_2803E7148;
  if (!qword_2803E7148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B176C40(uint64_t a1)
{
  sub_26B213020();
  if (v1 <= 0x3F)
  {
    sub_26B176B7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B176CD4(uint64_t a1)
{
  v2 = type metadata accessor for ActorQueue.TaskState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B176D30(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v4;
  v8 = (*v4 + 16);
  v9 = *v8;
  v10 = type metadata accessor for ActorQueue.TaskState(0);
  v11 = v10;
  if (v9 >= a2)
  {
    v15 = *(*(v10 - 8) + 80);
    sub_26B178758(0, &qword_2803E7178, type metadata accessor for ActorQueue.TaskState, MEMORY[0x277CFB8D8]);
    v14 = swift_allocObject();
    v16 = *(v7 + 24);
    *(v14 + 16) = v9;
    *(v14 + 24) = v16;
    if (v16 >= 1)
    {
      sub_26B20BDB0(v14 + 16, v14 + ((v15 + 40) & ~v15), v8, v7 + ((v15 + 40) & ~v15));
    }
  }

  else
  {
    sub_26B212310();
    v12 = *(*(v11 - 8) + 80);
    if (a1)
    {
      v13 = *(v7 + 24);
      sub_26B178758(0, &qword_2803E7178, type metadata accessor for ActorQueue.TaskState, MEMORY[0x277CFB8D8]);
      v14 = swift_allocObject();
      *(v14 + 16) = sub_26B20BC2C();
      *(v14 + 24) = v13;
      *(v14 + 32) = 0;
      if (v13 >= 1)
      {
        sub_26B177084(v14 + 16, v14 + ((v12 + 40) & ~v12), v8, v7 + ((v12 + 40) & ~v12));
        *(v7 + 24) = 0;
      }
    }

    else
    {
      sub_26B178758(0, &qword_2803E7178, type metadata accessor for ActorQueue.TaskState, MEMORY[0x277CFB8D8]);
      v14 = swift_allocObject();
      v17 = sub_26B20BC2C();
      v18 = *(v7 + 24);
      *(v14 + 16) = v17;
      *(v14 + 24) = v18;
      *(v14 + 32) = 0;
      if (v18 >= 1)
      {
        sub_26B1771A4(v14 + 16, v14 + ((v12 + 40) & ~v12), v8, v7 + ((v12 + 40) & ~v12));
      }
    }
  }

  *v4 = v14;
  return result;
}

void *sub_26B176FC8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for ActorQueue.TaskState(0);
        result = sub_26B178AD0(a3, a2 + *(*(v10 - 8) + 72) * v5);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_26B177084(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for ActorQueue.TaskState(0) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v9)
  {
    v12 = v5 < v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v8 + 72);
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v10 >= 1)
  {
    if (a4)
    {
      v15 = a4 + v13 * v4;
      v16 = a2;
      sub_26B1735A8(v15, v10, a2);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = 0;
  v16 = a2;
LABEL_16:
  if (v5 < v7 && v9 >= 1)
  {
    if (v14)
    {
      sub_26B1735A8(v14, v9, v16 + v13 * v10);
      return;
    }

LABEL_26:
    __break(1u);
  }
}

void sub_26B1771A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for ActorQueue.TaskState(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_26B1772C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B213B80();
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
        type metadata accessor for ActorQueue.TaskState(0);
        v6 = sub_26B212ED0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActorQueue.TaskState(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26B177614(v8, v9, a1, v4);
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
    return sub_26B1773F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B1773F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ActorQueue.TaskState(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v27 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v27 - v17);
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v32 = v21;
      v33 = a3;
      v30 = v24;
      v31 = v23;
      do
      {
        sub_26B178AD0(v24, v18);
        sub_26B178AD0(v21, v14);
        if (sub_26B213000())
        {
          v25 = sub_26B212FF0();
        }

        else
        {
          v25 = *v18 < *v14;
        }

        sub_26B176CD4(v14);
        result = sub_26B176CD4(v18);
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return result;
        }

        sub_26B178680(v24, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_26B178680(v11, v21);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v33 + 1;
      v21 = v32 + v28;
      v23 = v31 - 1;
      v24 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26B177614(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v117 = a1;
  v6 = type metadata accessor for ActorQueue.TaskState(0);
  v125 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v120 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v131 = &v111 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v111 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v111 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v122 = (&v111 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v111 - v21);
  MEMORY[0x28223BE20](v20);
  v25 = (&v111 - v23);
  v127 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_105:
    a4 = *v117;
    if (!*v117)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_107:
      v103 = (v28 + 16);
      for (i = *(v28 + 16); i >= 2; *v103 = i)
      {
        if (!*v127)
        {
          goto LABEL_142;
        }

        v105 = (v28 + 16 * i);
        v106 = *v105;
        v107 = &v103[2 * i];
        v108 = v107[1];
        v109 = v130;
        sub_26B177F5C(*v127 + *(v125 + 72) * *v105, *v127 + *(v125 + 72) * *v107, *v127 + *(v125 + 72) * v108, a4);
        v130 = v109;
        if (v109)
        {
          break;
        }

        if (v108 < v106)
        {
          goto LABEL_130;
        }

        if (i - 2 >= *v103)
        {
          goto LABEL_131;
        }

        *v105 = v106;
        v105[1] = v108;
        v110 = *v103 - i;
        if (*v103 < i)
        {
          goto LABEL_132;
        }

        i = *v103 - 1;
        memmove(v107, v107 + 2, 16 * v110);
      }

LABEL_103:

      return;
    }

LABEL_139:
    v28 = sub_26B1783CC(v28);
    goto LABEL_107;
  }

  v112 = a4;
  v113 = v24;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v132 = v6;
  v114 = &v111 - v23;
  v115 = v22;
  v121 = v16;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    v118 = v27;
    if (v27 + 1 < v26)
    {
      v123 = v26;
      v31 = *v127;
      v32 = *(v125 + 72);
      v129 = v27 + 1;
      sub_26B178AD0(v31 + v32 * v30, v25);
      v126 = v32;
      sub_26B178AD0(v31 + v32 * v29, v22);
      v33 = sub_26B213000();
      v116 = v28;
      if (v33)
      {
        LODWORD(v124) = sub_26B212FF0();
      }

      else
      {
        LODWORD(v124) = *v25 < *v22;
      }

      sub_26B176CD4(v22);
      sub_26B176CD4(v25);
      v34 = v29 + 2;
      v35 = v126 * (v29 + 2);
      v36 = v31 + v35;
      v37 = v129;
      v38 = v126 * v129;
      v39 = v31 + v126 * v129;
      v40 = v113;
      do
      {
        v28 = v34;
        v41 = v37;
        a4 = v38;
        v42 = v35;
        if (v34 >= v123)
        {
          break;
        }

        v128 = v34;
        v129 = v37;
        sub_26B178AD0(v36, v40);
        v43 = v122;
        sub_26B178AD0(v39, v122);
        v44 = (sub_26B213000() & 1) != 0 ? sub_26B212FF0() : *v40 < *v43;
        sub_26B176CD4(v43);
        sub_26B176CD4(v40);
        v28 = v128;
        v41 = v129;
        v34 = v128 + 1;
        v36 += v126;
        v39 += v126;
        v37 = v129 + 1;
        v38 = a4 + v126;
        v35 = v42 + v126;
      }

      while ((v124 & 1) == (v44 & 1));
      if (v124)
      {
        v29 = v118;
        if (v28 < v118)
        {
          goto LABEL_136;
        }

        if (v118 >= v28)
        {
          v30 = v28;
          v28 = v116;
          goto LABEL_33;
        }

        v45 = v118 * v126;
        do
        {
          if (v29 != v41)
          {
            v129 = v41;
            v46 = *v127;
            if (!*v127)
            {
              goto LABEL_143;
            }

            sub_26B178680(v46 + v45, v120);
            v47 = v45 < a4 || v46 + v45 >= (v46 + v42);
            if (v47)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v45 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_26B178680(v120, v46 + a4);
            v41 = v129;
          }

          ++v29;
          a4 -= v126;
          v42 -= v126;
          v45 += v126;
        }

        while (v29 < v41--);
        v30 = v28;
        v28 = v116;
      }

      else
      {
        v30 = v28;
        v28 = v116;
      }

      v29 = v118;
    }

LABEL_33:
    v49 = v127[1];
    if (v30 < v49)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_135;
      }

      if (v30 - v29 < v112)
      {
        break;
      }
    }

LABEL_52:
    if (v30 < v29)
    {
      goto LABEL_134;
    }

    v129 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B16A72C();
      v28 = v101;
    }

    v58 = *(v28 + 16);
    v59 = v58 + 1;
    v27 = v129;
    if (v58 >= *(v28 + 24) >> 1)
    {
      sub_26B16A72C();
      v27 = v129;
      v28 = v102;
    }

    *(v28 + 16) = v59;
    v60 = v28 + 32;
    v61 = (v28 + 32 + 16 * v58);
    *v61 = v118;
    v61[1] = v27;
    v128 = *v117;
    if (!v128)
    {
      goto LABEL_144;
    }

    if (v58)
    {
      while (1)
      {
        v62 = v59 - 1;
        v63 = (v60 + 16 * (v59 - 1));
        v64 = (v28 + 16 * v59);
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v65 = *(v28 + 32);
          v66 = *(v28 + 40);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_72:
          if (v68)
          {
            goto LABEL_121;
          }

          v80 = *v64;
          v79 = v64[1];
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_124;
          }

          v84 = v63[1];
          v85 = v84 - *v63;
          if (__OFSUB__(v84, *v63))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v82, v85))
          {
            goto LABEL_129;
          }

          if (v82 + v85 >= v67)
          {
            if (v67 < v85)
            {
              v62 = v59 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v59 < 2)
        {
          goto LABEL_123;
        }

        v87 = *v64;
        v86 = v64[1];
        v75 = __OFSUB__(v86, v87);
        v82 = v86 - v87;
        v83 = v75;
LABEL_87:
        if (v83)
        {
          goto LABEL_126;
        }

        v89 = *v63;
        v88 = v63[1];
        v75 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v75)
        {
          goto LABEL_128;
        }

        if (v90 < v82)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v62 - 1 >= v59)
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v127)
        {
          goto LABEL_141;
        }

        v94 = v13;
        v95 = v28;
        v96 = (v60 + 16 * (v62 - 1));
        v97 = *v96;
        v98 = v62;
        v99 = (v60 + 16 * v62);
        v28 = v99[1];
        v100 = v130;
        sub_26B177F5C(*v127 + *(v125 + 72) * *v96, *v127 + *(v125 + 72) * *v99, *v127 + *(v125 + 72) * v28, v128);
        v130 = v100;
        if (v100)
        {
          goto LABEL_103;
        }

        if (v28 < v97)
        {
          goto LABEL_116;
        }

        a4 = *(v95 + 16);
        if (v98 > a4)
        {
          goto LABEL_117;
        }

        *v96 = v97;
        v96[1] = v28;
        if (v98 >= a4)
        {
          goto LABEL_118;
        }

        v59 = a4 - 1;
        memmove(v99, v99 + 2, 16 * (a4 - 1 - v98));
        v28 = v95;
        *(v95 + 16) = a4 - 1;
        v27 = v129;
        v13 = v94;
        v16 = v121;
        if (a4 <= 2)
        {
          goto LABEL_101;
        }
      }

      v69 = v60 + 16 * v59;
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_119;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_120;
      }

      v76 = v64[1];
      v77 = v76 - *v64;
      if (__OFSUB__(v76, *v64))
      {
        goto LABEL_122;
      }

      v75 = __OFADD__(v67, v77);
      v78 = v67 + v77;
      if (v75)
      {
        goto LABEL_125;
      }

      if (v78 >= v72)
      {
        v92 = *v63;
        v91 = v63[1];
        v75 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v75)
        {
          goto LABEL_133;
        }

        if (v67 < v93)
        {
          v62 = v59 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v26 = v127[1];
    v25 = v114;
    v22 = v115;
    if (v27 >= v26)
    {
      goto LABEL_105;
    }
  }

  v50 = v29 + v112;
  if (__OFADD__(v29, v112))
  {
    goto LABEL_137;
  }

  if (v50 >= v49)
  {
    v50 = v127[1];
  }

  if (v50 < v29)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v30 == v50)
  {
    goto LABEL_52;
  }

  v116 = v28;
  v51 = *v127;
  v52 = *(v125 + 72);
  v53 = *v127 + v52 * (v30 - 1);
  v54 = -v52;
  v55 = v29 - v30;
  v119 = v52;
  a4 = v51 + v30 * v52;
  v123 = v50;
LABEL_42:
  v128 = v53;
  v129 = v30;
  v124 = a4;
  v126 = v55;
  while (1)
  {
    sub_26B178AD0(a4, v16);
    sub_26B178AD0(v53, v13);
    if (sub_26B213000())
    {
      v56 = sub_26B212FF0();
    }

    else
    {
      v56 = *v16 < *v13;
    }

    sub_26B176CD4(v13);
    sub_26B176CD4(v16);
    if ((v56 & 1) == 0)
    {
LABEL_50:
      v30 = v129 + 1;
      v53 = v128 + v119;
      v55 = v126 - 1;
      a4 = v124 + v119;
      if (v129 + 1 == v123)
      {
        v30 = v123;
        v28 = v116;
        v29 = v118;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    if (!v51)
    {
      break;
    }

    v57 = v131;
    sub_26B178680(a4, v131);
    swift_arrayInitWithTakeFrontToBack();
    sub_26B178680(v57, v53);
    v53 += v54;
    a4 += v54;
    v47 = __CFADD__(v55++, 1);
    if (v47)
    {
      goto LABEL_50;
    }
  }

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
}

uint64_t sub_26B177F5C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = type metadata accessor for ActorQueue.TaskState(0);
  v8 = MEMORY[0x28223BE20](v50);
  v48 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v44 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v44 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_67;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_68;
  }

  v24 = v20 / v19;
  v53 = a1;
  v52 = a4;
  v25 = v22 / v19;
  if (v20 / v19 >= v22 / v19)
  {
    v46 = v15;
    sub_26B1735A8(a2, v22 / v19, a4);
    v31 = a4 + v25 * v19;
    v32 = -v19;
    v33 = v31;
    v49 = -v19;
LABEL_40:
    v47 = a2 + v32;
    v34 = a3;
    v44 = v33;
    while (1)
    {
      if (v31 <= a4)
      {
        v53 = a2;
        v51 = v33;
        goto LABEL_65;
      }

      if (a2 <= a1)
      {
        break;
      }

      v45 = v33;
      v35 = v31 + v32;
      v36 = v46;
      sub_26B178AD0(v31 + v32, v46);
      v37 = v48;
      sub_26B178AD0(v47, v48);
      if (sub_26B213000())
      {
        v38 = sub_26B212FF0();
      }

      else
      {
        v38 = *v36 < *v37;
      }

      v39 = v37;
      a3 = v34 + v49;
      sub_26B176CD4(v39);
      sub_26B176CD4(v36);
      if (v38)
      {
        if (v34 < a2 || a3 >= a2)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v45;
          v32 = v49;
        }

        else
        {
          v33 = v45;
          v21 = v34 == a2;
          v42 = v47;
          a2 = v47;
          v32 = v49;
          if (!v21)
          {
            v43 = v45;
            swift_arrayInitWithTakeBackToFront();
            a2 = v42;
            v33 = v43;
          }
        }

        goto LABEL_40;
      }

      if (v34 < v31 || a3 >= v31)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = a3;
        v31 = v35;
        v33 = v35;
        v32 = v49;
      }

      else
      {
        v33 = v35;
        v21 = v31 == v34;
        v34 = a3;
        v31 = v35;
        v32 = v49;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = a3;
          v31 = v35;
          v33 = v35;
        }
      }
    }

    v53 = a2;
    v51 = v44;
  }

  else
  {
    sub_26B1735A8(a1, v20 / v19, a4);
    v26 = a4 + v24 * v19;
    v51 = v26;
    while (a4 < v26 && a2 < a3)
    {
      sub_26B178AD0(a2, v17);
      sub_26B178AD0(a4, v13);
      if (sub_26B213000())
      {
        v28 = sub_26B212FF0();
      }

      else
      {
        v28 = *v17 < *v13;
      }

      sub_26B176CD4(v13);
      sub_26B176CD4(v17);
      if (v28)
      {
        if (a1 < a2 || a1 >= a2 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v19;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v52 = a4 + v19;
        a4 += v19;
      }

      a1 += v19;
      v53 = a1;
    }
  }

LABEL_65:
  sub_26B1783E0(&v53, &v52, &v51);
  return 1;
}

uint64_t sub_26B1783E0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ActorQueue.TaskState(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_26B1784C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_26B178758(0, &qword_2803E7048, sub_26B16C964, MEMORY[0x277D84560]);
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

uint64_t sub_26B1785E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[2];
  v7 = type metadata accessor for ActorQueue.TaskState(0);
  result = sub_26B178680(a2 + *(*(v7 - 8) + 72) * v6, a3);
  v9 = a1[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = a1[1];
    if (v11 >= *a1)
    {
      v11 = 0;
    }

    a1[2] = v11;
    if (!__OFSUB__(v12, 1))
    {
      a1[1] = v12 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B178680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActorQueue.TaskState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26B1786E4(uint64_t a1)
{
  if (!qword_2803E7160)
  {
    sub_26B178DA0(255, &qword_2803E7168, MEMORY[0x277D83940]);
    v1 = sub_26B2141E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E7160);
    }
  }
}

void sub_26B178758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26B1787BC(uint64_t a1)
{
  v3 = *(sub_26B213020() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_10(v9);
  *v10 = v11;
  v10[1] = sub_26B1760A8;

  return sub_26B175914(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_26B1788E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_26B178758(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26B178964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26B178758(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26B1789D4()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return v4(v3);
}

void sub_26B178A68(uint64_t a1)
{
  if (!qword_2803E7170)
  {
    type metadata accessor for ActorQueue.TaskState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E7170);
    }
  }
}

uint64_t sub_26B178AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActorQueue.TaskState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_26B178B34(uint64_t *result, uint64_t a2)
{
  v3 = result[2];
  v4 = *result;
  v5 = result[1] + v3;
  if (*result >= v5)
  {
    if (v5 < v3)
    {
      __break(1u);
    }

    else
    {
      v7 = type metadata accessor for ActorQueue.TaskState(0);
      v9 = *(v7 - 8);
      result = (v7 - 8);
      v8 = v9;
      if (!__OFSUB__(v5, v3))
      {
        v10[0] = a2 + *(v8 + 72) * v3;
        v10[1] = v5 - v3;
        result = sub_26B1772C8(v10);
        if (v2)
        {
          return result;
        }

        return (v4 < v5);
      }
    }

    __break(1u);
    return result;
  }

  return (v4 < v5);
}

void *sub_26B178BF4(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = sub_26B20BCF0(a1, a2, &v12);
  v7 = v13;
  if (v13 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    if (v13)
    {
      type metadata accessor for ActorQueue.TaskState(0);
      result = swift_arrayInitWithCopy();
    }
  }

  v8 = *a4 + v7;
  if (__OFADD__(*a4, v7))
  {
    goto LABEL_20;
  }

  *a4 = v8;
  if (v16)
  {
    return result;
  }

  v9 = v15;
  if (__OFADD__(v7, v15))
  {
    goto LABEL_21;
  }

  v10 = v15;
  if (v7 + v15 < v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = v14;
  if (*a3)
  {
    result = (type metadata accessor for ActorQueue.TaskState(0) - 8);
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else if (!v14)
  {
    goto LABEL_16;
  }

  if (v9)
  {
    if (v10 < v9)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    type metadata accessor for ActorQueue.TaskState(0);
    result = swift_arrayInitWithCopy();
    v8 = *a4;
  }

LABEL_16:
  if (__OFADD__(v8, v9))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *a4 = v8 + v9;
  return result;
}

uint64_t sub_26B178D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActorQueue.TaskState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_26B178DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D83690]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26B178DF4()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_10(v4);
  *v5 = v6;
  v5[1] = sub_26B178E9C;

  return sub_26B175FB0(v2, v3);
}

uint64_t ActorSemaphore.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ActorSemaphore.init(value:)(a1);
  return v2;
}

uint64_t ActorSemaphore.init(value:)(uint64_t a1)
{
  result = swift_defaultActor_initialize();
  *(v1 + 120) = MEMORY[0x277D84F90];
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 112) = a1;
    return v1;
  }

  return result;
}

uint64_t sub_26B178F44(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 104);
  v5 = *(v4 + 112);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  *(v4 + 112) = v7;
  if (v7 < 0)
  {
    sub_26B179214(a1, a2);
    swift_getObjectType();
    v10 = sub_26B212F70();
    v12 = v11;
    a1 = sub_26B179018;
    a2 = v10;
    a3 = v12;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_26B179018()
{
  v1 = v0[13];
  v0[2] = v0;
  v0[3] = sub_26B17910C;
  v2 = swift_continuation_init();
  swift_beginAccess();
  sub_26B16A48C();
  v3 = *(*(v1 + 120) + 16);
  sub_26B16A65C(v3);
  v4 = *(v1 + 120);
  *(v4 + 16) = v3 + 1;
  *(v4 + 8 * v3 + 32) = v2;
  *(v1 + 120) = v4;
  swift_endAccess();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26B17910C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(*v2 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v3 + 8);

  return v4();
}

unint64_t sub_26B179214(uint64_t a1, uint64_t a2)
{
  result = qword_2803E7180;
  if (!qword_2803E7180)
  {
    type metadata accessor for ActorSemaphore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7180);
  }

  return result;
}

Swift::Void __swiftcall ActorSemaphore.signal()()
{
  v1 = *(v0 + 112);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 112) = v3;
    swift_beginAccess();
    if (*(*(v0 + 120) + 16))
    {
      if (!sub_26B179510())
      {
        sub_26B179438(*(*(v0 + 120) + 16) - 1);
      }

      swift_endAccess();
      swift_continuation_throwingResume();
    }

    else
    {
      swift_endAccess();
    }
  }
}

uint64_t ActorSemaphore.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActorSemaphore.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_26B1793B0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B16BAE8(v3);
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_26B152C58((v3 + 16 * a1 + 48), v4 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

uint64_t sub_26B179438(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26B16BB24(v3);
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
    v7 = v5 - 1 - a1;
    v8 = v3 + 8 * a1;
    v9 = *(v8 + 32);
    sub_26B173F04((v8 + 40), v7, (v8 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

void sub_26B1794B4()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B16BAE8(v1);
    v1 = v3;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B179510()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26B16BB24(v1);
    v1 = result;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    result = *(v1 + 8 * v4 + 32);
    *(v1 + 16) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static UnknownKeyCodable._decodeUnknownKeys(from:)()
{
  OUTLINED_FUNCTION_11_6();
  v2 = v1;
  v4 = v3;
  v31 = v5;
  swift_getAssociatedTypeWitness();
  v28 = v4;
  v29 = v2;
  OUTLINED_FUNCTION_26_2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_15_3(AssociatedConformanceWitness, v7, v8, v9);
  OUTLINED_FUNCTION_0_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_3();
  v10 = sub_26B213B20();
  v30 = sub_26B2133E0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  OUTLINED_FUNCTION_9_0();
  v27 = v16;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v20 = OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_19_2(v20, v21);
  OUTLINED_FUNCTION_17_3();
  sub_26B2140F0();
  if (v0)
  {

    __swift_storeEnumTagSinglePayload(v15, 1, 1, v10);
    (*(v12 + 8))(v15, v30);
    v22 = 0;
    v23 = 2;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v10);
    v25 = v27;
    (*(v27 + 32))(v19, v15, v10);
    v22 = sub_26B179B48(v19, v28, v29);
    (*(v25 + 8))(v19, v10);
    v23 = 0;
  }

  v24 = v31;
  *v31 = v22;
  *(v24 + 8) = v23;
  OUTLINED_FUNCTION_10_2();
}

void UnknownKeyCodable._encode(to:with:)()
{
  OUTLINED_FUNCTION_11_6();
  v35 = v1;
  OUTLINED_FUNCTION_13_6();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_15_3(AssociatedConformanceWitness, v4, v5, v6);
  OUTLINED_FUNCTION_0_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_3();
  v7 = sub_26B213B70();
  OUTLINED_FUNCTION_0();
  v34 = v8;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = *v0;
  v13 = *(v0 + 8);
  sub_26B212970();
  if (v2 || (v35 = v12, v13))
  {
LABEL_16:
    OUTLINED_FUNCTION_10_2();
    return;
  }

  OUTLINED_FUNCTION_19_2(v1, v1[3]);
  v14 = v35;
  sub_26B2128F0();
  OUTLINED_FUNCTION_17_3();
  v15 = v14;
  sub_26B214120();
  v16 = 0;
  v17 = v14 + 8;
  v18 = 1 << *(v14 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v14[8];
  v21 = (v18 + 63) >> 6;
  v22 = v7;
  if (v20)
  {
    while (1)
    {
      v23 = v16;
LABEL_11:
      v25 = __clz(__rbit64(v20)) | (v23 << 6);
      v26 = v15[7];
      v27 = (v15[6] + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      sub_26B179D68(v26 + 48 * v25, &v38);
      v32 = v38;
      v33 = v39;
      v30 = v40;
      v31 = v41;
      sub_26B2128F0();
      if (!v28)
      {
        break;
      }

      v38 = v32;
      v39 = v33;
      v40 = v30;
      v41 = v31;
      v36 = v29;
      v37 = v28;
      sub_26B179DA0();
      v22 = v7;
      sub_26B213B50();
      v20 &= v20 - 1;
      sub_26B179DF4(&v38);

      v16 = v23;
      v15 = v35;
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    v22 = v7;
    v24 = v34;
LABEL_15:
    (*(v24 + 8))(v11, v22);

    goto LABEL_16;
  }

LABEL_7:
  v24 = v34;
  while (1)
  {
    v23 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v23 >= v21)
    {
      goto LABEL_15;
    }

    v20 = v17[v23];
    ++v16;
    if (v20)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_26B179B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for UnknownKeys(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  v10 = sub_26B212860();
  OUTLINED_FUNCTION_0_16();
  swift_getWitnessTable();
  sub_26B213B20();
  sub_26B213B10();
  v9 = sub_26B212E50();
  while (1)
  {
    if (v9 == sub_26B212EF0())
    {

      return v10;
    }

    v7 = sub_26B212EE0();
    sub_26B212E80();
    if ((v7 & 1) == 0)
    {
      break;
    }

    sub_26B2128F0();
    sub_26B212F30();
    sub_26B17AF3C();
    sub_26B213AF0();
    if (v3)
    {
    }

    sub_26B212940();
    sub_26B212960();
  }

  result = sub_26B213730();
  __break(1u);
  return result;
}

unint64_t sub_26B179DA0()
{
  result = qword_2803E7188;
  if (!qword_2803E7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7188);
  }

  return result;
}

void Optional<A>._encode(to:with:)()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  v14 = *(v12 + 8);
  (*(v15 + 16))(v11, v16);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v17 = OUTLINED_FUNCTION_18_3();
    __swift_project_boxed_opaque_existential_1(v17, v18);
    OUTLINED_FUNCTION_26_2();
    sub_26B214110();
    v19 = OUTLINED_FUNCTION_6_10();
    __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    OUTLINED_FUNCTION_26_2();
    sub_26B213E90();
    __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    (*(v6 + 32))(v9, v11, v5);
    v22 = v13;
    v23 = v14;
    (*(v1 + 48))(v3, &v22, v5, v1);
    (*(v6 + 8))(v9, v5);
  }

  OUTLINED_FUNCTION_10_2();
}

void static Array<A>._decodeUnknownKeys(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_6();
  v54 = v20;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v51 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for UnknownKeys(255, AssociatedTypeWitness, AssociatedConformanceWitness, v30);
  OUTLINED_FUNCTION_0_16();
  WitnessTable = swift_getWitnessTable();
  v32 = sub_26B213B20();
  OUTLINED_FUNCTION_0();
  v50 = v33;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v49 - v35;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v37 = v54;
  sub_26B2140D0();
  if (v37)
  {

    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_26B17B120(v55, &qword_2803E7190, sub_26B17A3A0);
    v38 = v51;
    *v51 = 0;
    *(v38 + 8) = 2;
  }

  else
  {
    v49 = v22;
    v53 = v32;
    v54 = WitnessTable;
    v52 = v24;
    sub_26B150514(v55, v57);
    OUTLINED_FUNCTION_1_13();
    swift_getWitnessTable();
    sub_26B212940();
    *&v55[0] = sub_26B212870();
    v39 = OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_19_2(v39, v40);
    OUTLINED_FUNCTION_26_2();
    sub_26B213BD0();
    if ((v41 & 1) == 0)
    {
      sub_26B212F50();
      sub_26B212E90();
    }

    v42 = v49;
    for (i = (v50 + 8); ; (*i)(v36, v53))
    {
      v44 = OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_19_2(v44, v45);
      OUTLINED_FUNCTION_26_2();
      if (sub_26B213BE0())
      {
        break;
      }

      v46 = OUTLINED_FUNCTION_6_10();
      __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
      sub_26B213BC0();
      sub_26B179B48(v36, v52, v42);
      sub_26B212F50();
      sub_26B212F00();
    }

    v48 = v51;
    *v51 = *&v55[0];
    *(v48 + 8) = 1;
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  OUTLINED_FUNCTION_10_2();
}

unint64_t sub_26B17A3A0()
{
  result = qword_2803E7198;
  if (!qword_2803E7198)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2803E7198);
  }

  return result;
}

void Array<A>._encode(to:with:)()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  swift_getAssociatedTypeWitness();
  v65 = v3;
  OUTLINED_FUNCTION_18_3();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = OUTLINED_FUNCTION_15_3(AssociatedConformanceWitness, v13, v14, v15);
  OUTLINED_FUNCTION_0_16();
  WitnessTable = swift_getWitnessTable();
  v71 = sub_26B213B70();
  OUTLINED_FUNCTION_0();
  *&v73 = v17;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_0();
  *&v72 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  v62 = v16;
  v23 = sub_26B212940();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_26B2133E0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v25);
  v70 = &v56 - v30;
  if (*(v9 + 8) != 1 || (v31 = *v9, v32 = sub_26B212EF0(), v32 != sub_26B212EF0()))
  {
LABEL_22:
    OUTLINED_FUNCTION_12_0("Fatal error", v26, v27, v28, v29, "SonicFoundation/Codable+Sonic.swift");
    __break(1u);
    return;
  }

  v69 = v23;
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_26B214100();
  *&v74 = v7;
  *&v80 = v31;
  v33 = sub_26B212F50();
  v34 = sub_26B212F50();
  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  sub_26B213EF0();
  v80 = v78;
  v69 = v33;
  *&v74 = v33;
  v68 = v34;
  *(&v74 + 1) = v34;
  v67 = v35;
  *&v75 = v35;
  v66 = v36;
  *(&v75 + 1) = v36;
  sub_26B213720();
  sub_26B2136F0();
  v64 = v72 + 32;
  v58 = v73 + 8;
  v63 = v72 + 8;
  v37 = v70;
  v60 = v5;
  v59 = v22;
  v57 = TupleTypeMetadata2;
  while (1)
  {
    *&v74 = v69;
    *(&v74 + 1) = v68;
    *&v75 = v67;
    *(&v75 + 1) = v66;
    sub_26B213710();
    sub_26B213700();
    if (__swift_getEnumTagSinglePayload(v37, 1, TupleTypeMetadata2) == 1)
    {

      goto LABEL_20;
    }

    v38 = *(v37 + *(TupleTypeMetadata2 + 48));
    OUTLINED_FUNCTION_9_1();
    v39(v22, v37, v5);
    __swift_mutable_project_boxed_opaque_existential_1(v81, v81[3]);
    sub_26B213C90();
    sub_26B212970();
    if (v1)
    {
      break;
    }

    OUTLINED_FUNCTION_19_2(&v78, v79);
    sub_26B214120();
    v40 = 0;
    v41 = 1 << *(v38 + 32);
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v43 = v42 & *(v38 + 64);
    v44 = (v41 + 63) >> 6;
    if (v43)
    {
      while (1)
      {
        v45 = v40;
LABEL_14:
        v46 = __clz(__rbit64(v43)) | (v45 << 6);
        v47 = (*(v38 + 48) + 16 * v46);
        v48 = *v47;
        v49 = v47[1];
        sub_26B179D68(*(v38 + 56) + 48 * v46, &v74);
        v73 = v75;
        v72 = v74;
        v50 = v76;
        v51 = v77;
        sub_26B2128F0();
        if (!v49)
        {
          break;
        }

        v74 = v72;
        v75 = v73;
        v76 = v50;
        v77 = v51;
        *&v80 = v48;
        *(&v80 + 1) = v49;
        sub_26B179DA0();
        sub_26B213B50();
        v43 &= v43 - 1;
        sub_26B179DF4(&v74);

        v40 = v45;
        if (!v43)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_11:
        v45 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          __break(1u);
          goto LABEL_22;
        }

        if (v45 >= v44)
        {
          break;
        }

        v43 = *(v38 + 64 + 8 * v45);
        ++v40;
        if (v43)
        {
          goto LABEL_14;
        }
      }
    }

    v52 = OUTLINED_FUNCTION_8_9();
    v53(v52);
    OUTLINED_FUNCTION_9_1();
    v22 = v59;
    v5 = v60;
    v54(v59, v60);
    __swift_destroy_boxed_opaque_existential_1(&v78);
    TupleTypeMetadata2 = v57;
    v37 = v70;
  }

  OUTLINED_FUNCTION_9_1();
  v55(v22, v5);

  __swift_destroy_boxed_opaque_existential_1(&v78);
LABEL_20:
  __swift_destroy_boxed_opaque_existential_1(v81);
  OUTLINED_FUNCTION_10_2();
}

uint64_t AnyCodable.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2140E0();
  if (!v2)
  {
    OUTLINED_FUNCTION_19_2(v35, v36);
    if (sub_26B213E60())
    {
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
    }

    else
    {
      v40 = v3;
      v15 = MEMORY[0x277D839B0];
      *&v16 = MEMORY[0x277D839D0];
      *(&v16 + 1) = MEMORY[0x277D839B8];
      v17 = MEMORY[0x277D83B88];
      v18 = MEMORY[0x277D83BB8];
      v19 = MEMORY[0x277D83B90];
      v20 = MEMORY[0x277D83E88];
      v21 = MEMORY[0x277D83EB0];
      v22 = MEMORY[0x277D83E90];
      v23 = MEMORY[0x277D839F8];
      v5 = MEMORY[0x277D83808];
      v24 = MEMORY[0x277D83A30];
      v25 = MEMORY[0x277D83A08];
      v26 = MEMORY[0x277D837D0];
      v27 = MEMORY[0x277D83808];
      v6 = MEMORY[0x277D837D8];
      v28 = MEMORY[0x277D837D8];
      sub_26B17AEEC();
      v29 = v7;
      v30 = sub_26B17AF90(&qword_2803E71A8, sub_26B17AF3C);
      v31 = sub_26B17AF90(&qword_2803E71B8, sub_26B179DA0);
      sub_26B17AFF8();
      v32 = v8;
      v33 = sub_26B17B058(&qword_2803E71C8, sub_26B17AF3C, v5, MEMORY[0x277D83528]);
      v34 = sub_26B17B058(&qword_2803E71D0, sub_26B179DA0, v6, MEMORY[0x277D83508]);
      v9 = v15;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v13 = v9;
      v14 = v16;
      __swift_allocate_boxed_opaque_existential_0(&v12);
      sub_26B213E50();
      sub_26B17B230(&v12, &v37);
      v3 = v40;
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
    v10 = v38;
    *a2 = v37;
    a2[1] = v10;
    a2[2] = v39;
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

void sub_26B17AEEC()
{
  if (!qword_2803E71A0)
  {
    v0 = sub_26B212F50();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E71A0);
    }
  }
}

unint64_t sub_26B17AF3C()
{
  result = qword_2803E71B0;
  if (!qword_2803E71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E71B0);
  }

  return result;
}

uint64_t sub_26B17AF90(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_26B17AEEC();
    a2();
    OUTLINED_FUNCTION_18_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26B17AFF8()
{
  if (!qword_2803E71C0)
  {
    v0 = sub_26B212940();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E71C0);
    }
  }
}

uint64_t sub_26B17B058(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_26B17AFF8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D6723F0);
  }

  return result;
}

uint64_t sub_26B17B120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26B17B178(0, a2, a3);
  OUTLINED_FUNCTION_16();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_26B17B178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26B2133E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26B17B1CC()
{
  result = qword_2803E71E0;
  if (!qword_2803E71E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2803E71E0);
  }

  return result;
}

_OWORD *sub_26B17B230(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t AnyCodable.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B214110();
  sub_26B179D68(v1, &v5);
  if (v6)
  {
    sub_26B17B230(&v5, &v3);
    __swift_project_boxed_opaque_existential_1(&v3, v4);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_26B213E80();
    __swift_destroy_boxed_opaque_existential_1(&v3);
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    OUTLINED_FUNCTION_26_2();
    sub_26B213E90();
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t UnknownKeys.stringValue.getter()
{
  OUTLINED_FUNCTION_13_6();
  sub_26B2128F0();
  return v0;
}

uint64_t UnknownKeys.stringValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UnknownKeys.init(stringValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26B2133E0();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_26B2128F0();
  sub_26B214170();
  if (__swift_getEnumTagSinglePayload(v11, 1, a3) != 1)
  {

    a1 = 0;
  }

  (*(v8 + 8))(v11, v6);
  return a1;
}

uint64_t static UnknownKeys.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26B213E30();
  }
}

uint64_t UnknownKeys.hashValue.getter()
{
  OUTLINED_FUNCTION_13_6();
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  return sub_26B214070();
}

uint64_t sub_26B17B5A0()
{
  v1 = *v0;
  sub_26B2128F0();
  return v1;
}

uint64_t sub_26B17B5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = UnknownKeys.init(stringValue:)(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_26B17B618(uint64_t a1)
{
  sub_26B214030();
  UnknownKeys.hash(into:)(v3, *v1, v1[1]);
  return sub_26B214070();
}

uint64_t sub_26B17B658(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B17B6AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t UnknownKeyCoding.init(wrappedValue:)()
{
  OUTLINED_FUNCTION_13_6();
  v3 = v2;
  v7 = v2 + *(type metadata accessor for UnknownKeyCoding(0, v4, v5, v6) + 36);
  *v7 = 0;
  *(v7 + 8) = 2;
  OUTLINED_FUNCTION_16();
  (*(v8 + 32))(v3, v1, v0);

  *v7 = 0;
  *(v7 + 8) = 2;
  return result;
}

uint64_t UnknownKeyCoding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_9_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a4 + *(type metadata accessor for UnknownKeyCoding(0, v14, v15, v16) + 36);
  *v17 = 0;
  *(v17 + 8) = 2;
  sub_26B16BCF8(a1, &v22);
  sub_26B2131B0();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    (*(v10 + 32))(a4, v13, a2);
    (*(a3 + 40))(&v22, a1, a2, a3);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v19 = v22;
    v20 = v23;

    *v17 = v19;
    *(v17 + 8) = v20;
  }

  return result;
}

uint64_t UnknownKeyCoding.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  v10 = v5;
  v11 = v4;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(v6 + 48);
  sub_26B2128F0();
  v8(a1, &v10, v7, v6);
}

uint64_t AnyCodingKey.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26B214180();
  if (v5)
  {
    v6 = sub_26B214160();
  }

  else
  {
    v6 = sub_26B213B90();
  }

  v7 = v6;
  OUTLINED_FUNCTION_16();
  (*(v8 + 8))(a1, a2);
  return v7;
}

uint64_t AnyCodingKey.stringValue.getter()
{
  OUTLINED_FUNCTION_13_6();
  sub_26B2128F0();
  return v0;
}

uint64_t AnyCodingKey.stringValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AnyCodingKey.intValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t static AnyCodingKey.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_26B213E30(), result = 0, (v13 & 1) != 0))
  {
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || a3 != a7)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t AnyCodingKey.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  if (a5)
  {
    return sub_26B214060();
  }

  sub_26B214060();
  return MEMORY[0x26D671480](a4);
}

uint64_t AnyCodingKey.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  sub_26B214060();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x26D671480](a3);
  }

  return sub_26B214070();
}

void sub_26B17BE18(uint64_t a1@<X0>, SonicFoundation::AnyCodingKey_optional *a2@<X8>)
{
  AnyCodingKey.init(stringValue:)(a2, *&a1);
  a2->value.stringValue._countAndFlagsBits = v4;
  a2->value.stringValue._object = v5;
  a2->value.intValue.value = 0;
  a2->value.intValue.is_nil = 1;
}

void sub_26B17BE58(Swift::Int a1@<X0>, SonicFoundation::AnyCodingKey_optional *a2@<X8>)
{
  AnyCodingKey.init(intValue:)(a2, a1);
  a2->value.stringValue._countAndFlagsBits = v3;
  a2->value.stringValue._object = v4;
  a2->value.intValue.value = v5;
  a2->value.intValue.is_nil = 0;
}

uint64_t sub_26B17BEA8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_26B214030();
  AnyCodingKey.hash(into:)(v7, v2, v3, v4, v5);
  return sub_26B214070();
}

uint64_t sub_26B17BF08(uint64_t a1)
{
  v2 = sub_26B17CCCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B17BF44(uint64_t a1)
{
  v2 = sub_26B17CCCC();

  return MEMORY[0x2821FE720](a1, v2);
}

void TransparentCodable.init(from:)()
{
  OUTLINED_FUNCTION_11_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v11 = v7;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-1] - v9;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_26B2140E0();
  if (!v0)
  {
    OUTLINED_FUNCTION_19_2(v12, v12[3]);
    swift_getAssociatedConformanceWitness();
    sub_26B213E50();
    (*(v2 + 56))(v10, v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_10_2();
}

void TransparentCodable.encode(to:)()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v13[-1] - v10;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_26B214110();
  (*(v1 + 48))(v3, v1);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  swift_getAssociatedConformanceWitness();
  sub_26B213E80();
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_10_2();
}

uint64_t sub_26B17C2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26B17C3A0()
{
  result = qword_2803E71E8;
  if (!qword_2803E71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E71E8);
  }

  return result;
}

unint64_t sub_26B17C3F8()
{
  result = qword_2803E71F0;
  if (!qword_2803E71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E71F0);
  }

  return result;
}

unint64_t sub_26B17C450()
{
  result = qword_2803E71F8[0];
  if (!qword_2803E71F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E71F8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SonicFoundation10AnyCodableO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26B17C50C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B17C55C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_26B17C5B8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26B17C5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B17C630(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26B17C670(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26B17C6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_15SonicFoundation14_UnknownValuesOyxG(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26B17C718(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_26B17C758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B17C79C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_26B17C7CC(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1 = type metadata accessor for _UnknownValues(319, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_26B17C8C0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0xFD)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 > 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26B17CA0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFD)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFD)
            {
              *(v17 + 8) = 0;
              *v17 = (a2 - 254);
            }

            else
            {
              *(v17 + 8) = -a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26B17CC14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_26B17CC54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26B17CCCC()
{
  result = qword_2803E7380[0];
  if (!qword_2803E7380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E7380);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for UnknownKeys(255, v4, a1, a4);
}

void RandomAccessCollection<>.chunkRanges(by:)()
{
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  v4 = v3;
  v82 = v5;
  v7 = *(*(v6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_32_1();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v73 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_46_0();
  v79 = v11;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v12);
  v80 = &v70 - v13;
  OUTLINED_FUNCTION_32_1();
  v85 = v14;
  v15 = sub_26B213310();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_2();
  v78 = v17;
  OUTLINED_FUNCTION_32_1();
  v18 = sub_26B2133E0();
  OUTLINED_FUNCTION_21(v18);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_2();
  v94 = v20;
  OUTLINED_FUNCTION_9_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_46_0();
  v84 = v24;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v25);
  v83 = &v70 - v26;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v27);
  v87 = &v70 - v28;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v70 - v30;
  OUTLINED_FUNCTION_32_1();
  v75 = sub_26B213770();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_15_2();
  v74 = v33;
  OUTLINED_FUNCTION_32_1();
  v91 = sub_26B213A90();
  OUTLINED_FUNCTION_0();
  v70 = v34;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15_2();
  v93 = v36;
  v37 = swift_getAssociatedTypeWitness();
  v38 = sub_26B2133E0();
  OUTLINED_FUNCTION_21(v38);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v39);
  v41 = &v70 - v40;
  v72 = v37;
  v71 = *(v37 - 8);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_15_2();
  v92 = v43;
  v86 = v15;
  v96 = sub_26B212870();
  v89 = v4;
  v90 = v0;
  v44 = v82;
  v88 = v7;
  v45 = sub_26B213240();
  if (!v44)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v45 == 0x8000000000000000 && v44 == -1)
  {
    goto LABEL_14;
  }

  v77 = sub_26B212F50();
  sub_26B212E90();
  v95 = v44;
  v47 = v72;
  swift_getAssociatedConformanceWitness();
  sub_26B16BD74();
  sub_26B213210();
  if (__swift_getEnumTagSinglePayload(v41, 1, v47) != 1)
  {
    (*(v71 + 32))(v92, v41, v47);
    sub_26B213220();
    v48 = v87;
    OUTLINED_FUNCTION_16_2();
    sub_26B213270();
    v82 = v2;
    sub_26B2140C0();
    v51 = *(v22 + 8);
    v50 = v22 + 8;
    v49 = v51;
    v51(v48, AssociatedTypeWitness);
    v51(v31, AssociatedTypeWitness);
    sub_26B213760();
    v52 = (v50 + 24);
    v75 = (v50 + 8);
    v74 = v73 + 16;
    v73 += 32;
    v76 = v31;
    while (1)
    {
      v53 = v94;
      sub_26B213A80();
      if (__swift_getEnumTagSinglePayload(v53, 1, AssociatedTypeWitness) == 1)
      {
        (*(v70 + 8))(v93, v91);
        (*(v71 + 8))(v92, v72);
        OUTLINED_FUNCTION_28();
        return;
      }

      v54 = *v52;
      (*v52)(v31, v94, AssociatedTypeWitness);
      v55 = v83;
      sub_26B213470();
      v56 = v84;
      sub_26B213270();
      v57 = v87;
      sub_26B213EE0();
      v49(v56, AssociatedTypeWitness);
      v49(v55, AssociatedTypeWitness);
      if ((sub_26B212A10() & 1) == 0)
      {
        break;
      }

      v58 = v80;
      (*v75)(v80, v31, AssociatedTypeWitness);
      v59 = TupleTypeMetadata2;
      v54(&v58[*(TupleTypeMetadata2 + 48)], v57, AssociatedTypeWitness);
      v60 = v50;
      v61 = v79;
      v62 = OUTLINED_FUNCTION_41();
      v63(v62);
      v64 = *(v59 + 48);
      v65 = v78;
      v54(v78, v61, AssociatedTypeWitness);
      v49(v61 + v64, AssociatedTypeWitness);
      v66 = OUTLINED_FUNCTION_41();
      v67(v66);
      v68 = *(v59 + 48);
      v31 = v76;
      v54(&v65[*(v86 + 36)], v61 + v68, AssociatedTypeWitness);
      v69 = v61;
      v50 = v60;
      v49(v69, AssociatedTypeWitness);
      sub_26B212F00();
      v49(v31, AssociatedTypeWitness);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
}

void Sequence.chunked(by:)()
{
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v33 = v9;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  OUTLINED_FUNCTION_45_0();
  v13 = sub_26B2133E0();
  OUTLINED_FUNCTION_21(v13);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  OUTLINED_FUNCTION_9_0();
  v31 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v30 = v20 - v19;
  v21 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v34 = v22;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_45_0();
  sub_26B212F50();
  v38 = sub_26B212870();
  v32 = v0;
  OUTLINED_FUNCTION_41();
  v24 = sub_26B212D20();
  if (!v7)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (v24 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_15;
  }

  v29 = v3;
  v35 = sub_26B212F50();
  sub_26B212E90();
  v37 = sub_26B212870();
  sub_26B212E90();
  (*(v31 + 16))(v30, v32, v5);
  sub_26B212D10();
  swift_getAssociatedConformanceWitness();
  v26 = (v33 + 32);
  while (1)
  {
    sub_26B213460();
    if (__swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v26)(v12, v16, AssociatedTypeWitness);
    sub_26B212F00();
    v27 = v37;
    if (sub_26B212EF0() == v7)
    {
      v36 = v27;
      sub_26B2128F0();
      sub_26B212F00();
      sub_26B212F40();
    }
  }

  (*(v34 + 8))(v1, v21);
  v28 = v37;
  v36 = v37;
  swift_getWitnessTable();
  if (sub_26B2132C0())
  {
  }

  else
  {
    v36 = v28;
    sub_26B212F00();
  }

  OUTLINED_FUNCTION_28();
}

void Sequence.async.getter()
{
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  swift_getAssociatedTypeWitness();
  v11 = swift_allocBox();
  (*(v6 + 16))(v10, v0, v4);
  sub_26B212D10();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v2;
  v12[4] = v11;
  swift_getAssociatedTypeWitness();
  sub_26B2130B0();
  OUTLINED_FUNCTION_28();
}

uint64_t sub_26B17DA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  v4[8] = swift_getAssociatedTypeWitness();
  v4[9] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_26B17DAF4, 0, 0);
}

uint64_t sub_26B17DAF4()
{
  swift_beginAccess();
  OUTLINED_FUNCTION_16_2();
  swift_getAssociatedConformanceWitness();
  sub_26B213460();
  swift_endAccess();
  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B17DBAC()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_26B1760A8;

  return sub_26B17DA58(v3, v6, v4, v5);
}

uint64_t Sequence.asyncMap<A>(_:)()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_47_1(v1, v2, v3, v4, v5);
  v0[9] = OUTLINED_FUNCTION_31();
  v0[10] = OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_0();
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_31();
  v7 = sub_26B2133E0();
  OUTLINED_FUNCTION_21(v7);
  v0[13] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_9_0();
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_31();
  v9 = OUTLINED_FUNCTION_12_7();
  v0[16] = v9;
  OUTLINED_FUNCTION_1_7(v9);
  v0[17] = v10;
  v0[18] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26B17DDF0()
{
  OUTLINED_FUNCTION_30();
  v2 = sub_26B212EC0();
  v3 = OUTLINED_FUNCTION_26_3(v2);
  v4(v3);
  OUTLINED_FUNCTION_52_0();
  v5 = *(v1 + 88);
  OUTLINED_FUNCTION_51_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_24_2(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_10_7(v5);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_22_4();
    v9(v8);

    v16 = OUTLINED_FUNCTION_38_1();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_48_0();
    v12(v11);
    OUTLINED_FUNCTION_0_17();
    v18 = v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    *(v0 + 152) = v14;
    *v14 = v15;
    v16 = OUTLINED_FUNCTION_9_8(v14);
    v10 = v18;
  }

  return v10(v16);
}

uint64_t sub_26B17DF8C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B17E090()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_26B212F50();
  sub_26B212F00();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  OUTLINED_FUNCTION_51_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_24_2(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_10_7(v4);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_22_4();
    v8(v7);

    v15 = OUTLINED_FUNCTION_38_1();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_48_0();
    v11(v10);
    OUTLINED_FUNCTION_0_17();
    v17 = v12;
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    v0[19] = v13;
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_9_8(v13);
    v9 = v17;
  }

  return v9(v15);
}