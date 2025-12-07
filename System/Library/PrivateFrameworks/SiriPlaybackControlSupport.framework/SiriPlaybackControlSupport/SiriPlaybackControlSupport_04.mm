uint64_t HomeAutomationEntityQuery.description.getter()
{
  v73 = *(v0 + 96);

  sub_268C1606C();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D627230]();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
  v7 = OUTLINED_FUNCTION_4_11(v1, v2, v3, v4, v5, v6);
  MEMORY[0x26D627230](v7);

  v8 = MEMORY[0x26D627230](0x614E656E6F7A202CLL, 0xEC000000203A656DLL);
  v14 = OUTLINED_FUNCTION_4_11(v8, v9, v10, v11, v12, v13);
  MEMORY[0x26D627230](v14);

  v15 = MEMORY[0x26D627230](0x614E656D6F68202CLL, 0xEC000000203A656DLL);
  v21 = OUTLINED_FUNCTION_4_11(v15, v16, v17, v18, v19, v20);
  MEMORY[0x26D627230](v21);

  OUTLINED_FUNCTION_3_11();
  v22 = MEMORY[0x26D627230]();
  v28 = OUTLINED_FUNCTION_4_11(v22, v23, v24, v25, v26, v27);
  MEMORY[0x26D627230](v28);

  v29 = MEMORY[0x26D627230](0x636976726573202CLL, 0xEF203A656D614E65);
  v35 = OUTLINED_FUNCTION_4_11(v29, v30, v31, v32, v33, v34);
  MEMORY[0x26D627230](v35);

  OUTLINED_FUNCTION_3_11();
  v36 = MEMORY[0x26D627230](0xD000000000000010);
  OUTLINED_FUNCTION_4_11(v36, v37, v38, v39, v40, v41);
  OUTLINED_FUNCTION_5_10();

  MEMORY[0x26D627230](0x656369766564202CLL, 0xEE00203A65707954);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE608, &qword_268C187A8);
  OUTLINED_FUNCTION_6_13(v42, v43, v44, v45, v46, v47, v48);
  OUTLINED_FUNCTION_5_10();

  MEMORY[0x26D627230](0x486563616C70202CLL, 0xED0000203A746E69);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE610, &qword_268C187B0);
  OUTLINED_FUNCTION_6_13(v49, v50, v51, v52, v53, v54, v55);
  OUTLINED_FUNCTION_5_10();

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D627230]();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE618, &qword_268C187B8);
  OUTLINED_FUNCTION_6_13(v56, v57, v58, v59, v60, v61, v62);
  OUTLINED_FUNCTION_5_10();

  MEMORY[0x26D627230](0x657265666572202CLL, 0xED0000203A65636ELL);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE620, &unk_268C187C0);
  OUTLINED_FUNCTION_6_13(v63, v64, v65, v66, v67, v68, v69);
  OUTLINED_FUNCTION_5_10();

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D627230](0xD000000000000010);
  if (v73)
  {
    v70 = 1702195828;
  }

  else
  {
    v70 = 0x65736C6166;
  }

  if (v73)
  {
    v71 = 0xE400000000000000;
  }

  else
  {
    v71 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v70, v71);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_268C00CF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 101))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_268C00D48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 101) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 101) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_268C00DCC@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 32);
    v4 = *(result + 36);
    v5 = v2 - 1;
    if (v5)
    {
      v6 = (result + 44);
      do
      {
        v7 = *(v6 - 4);
        v8 = *v6;
        v6 += 2;
        v9 = v8;
        v10 = 4 - v3 < 4 - v7;
        v11 = v4 < v8;
        if (v7 == v3)
        {
          v10 = v11;
        }

        if (v10)
        {
          v3 = v7;
          v4 = v9;
        }

        --v5;
      }

      while (v5);
    }

    v12 = v3 | (LODWORD(v4) << 32);
  }

  else
  {
    v12 = 4;
  }

  *a2 = v12;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_268C15C0C();
}

void OUTLINED_FUNCTION_5_10()
{

  JUMPOUT(0x26D627230);
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_268C15C0C();
}

uint64_t AtomicArray.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AtomicArray.init(name:)(a1, a2);
  return v4;
}

void *AtomicArray.init(name:)(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_268C15D3C();
  v2[4] = a1;
  v2[5] = a2;
  v5 = objc_allocWithZone(MEMORY[0x277CCAAF8]);

  v6 = [v5 init];
  v2[3] = v6;
  v7 = v6;
  v8 = sub_268C15BEC();

  [v7 setName_];

  return v2;
}

uint64_t sub_268C00FF8(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  v16 = v15 - v14;
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v17 = __swift_project_value_buffer(v10, qword_2802D2F10);
  (*(v12 + 16))(v16, v17, v10);
  v40 = *(v4 + 16);
  v40(v9, v41, v3);

  v18 = v16;
  v19 = v12;
  v39 = v18;
  v20 = v3;
  v21 = sub_268C159FC();
  v22 = sub_268C15DFC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v37 = v10;
    v24 = v23;
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v24 = 136446466;
    *(v24 + 4) = sub_268BB3D28(*(v2 + 32), *(v2 + 40), v42);
    *(v24 + 12) = 2082;
    v40(v6, v9, v20);
    v25 = sub_268C15C0C();
    v38 = v6;
    v26 = v25;
    v27 = v20;
    v28 = v22;
    v30 = v29;
    v31 = v9;
    v32 = v27;
    (*(v4 + 8))(v31, v27);
    v33 = sub_268BB3D28(v26, v30, v42);

    *(v24 + 14) = v33;
    v6 = v38;
    _os_log_impl(&dword_268BAD000, v21, v28, "AtomicArray#append [%{public}s] element: %{public}s. acquiring global lock...", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v19 + 8))(v39, v37);
    v20 = v32;
  }

  else
  {

    (*(v4 + 8))(v9, v20);
    (*(v19 + 8))(v39, v10);
  }

  [*(v2 + 24) lock];
  v40(v6, v41, v20);
  swift_beginAccess();
  sub_268C15D7C();
  sub_268C15D6C();
  swift_endAccess();
  return sub_268C015C8(v2, "AtomicArray#append [%{public}s] released global lock");
}

uint64_t sub_268C013DC()
{
  v1 = v0;
  v2 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_0();
  v8 = v7 - v6;
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v9 = __swift_project_value_buffer(v2, qword_2802D2F10);
  (*(v4 + 16))(v8, v9, v2);

  v10 = sub_268C159FC();
  v11 = sub_268C15DFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_268BB3D28(*(v1 + 32), *(v1 + 40), &v16);
    _os_log_impl(&dword_268BAD000, v10, v11, "AtomicArray#getAll [%{public}s]. acquiring global lock...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  (*(v4 + 8))(v8, v2);
  [*(v1 + 24) lock];
  v14 = sub_268C00EB4();
  sub_268C015C8(v1, "AtomicArray#getAll [%{public}s] released global lock");
  return v14;
}

uint64_t sub_268C015C8(uint64_t a1, const char *a2, ...)
{
  v4 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  v10 = v9 - v8;
  [*(a1 + 24) unlock];
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v11 = __swift_project_value_buffer(v4, qword_2802D2F10);
  (*(v6 + 16))(v10, v11, v4);

  v12 = sub_268C159FC();
  v13 = sub_268C15DFC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_268BB3D28(*(a1 + 32), *(a1 + 40), &v17);
    _os_log_impl(&dword_268BAD000, v12, v13, a2, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  return (*(v6 + 8))(v10, v4);
}

uint64_t AtomicArray.deinit()
{

  return v0;
}

uint64_t AtomicArray.__deallocating_deinit()
{
  AtomicArray.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_268C018F0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_268C01EAC(319);
    if (v2 <= 0x3F)
    {
      sub_268C01F04();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_268C01990(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_268C1533C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v9 + 80);
  v14 = *(*(v8 - 8) + 64);
  if (!v10)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  v16 = *(v6 + 64) + v13;
  v17 = v14 + 7;
  if (v12 < a2)
  {
    v18 = ((v17 + (v16 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 40;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v12 + 1;
    }

    if (v20 >= 0x10000)
    {
      LODWORD(v21) = 4;
    }

    else
    {
      LODWORD(v21) = 2;
    }

    if (v20 < 0x100)
    {
      LODWORD(v21) = 1;
    }

    if (v20 >= 2)
    {
      v21 = v21;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = *(a1 + v18);
        if (!v22)
        {
          break;
        }

        goto LABEL_28;
      case 2:
        v22 = *(a1 + v18);
        if (v22)
        {
          goto LABEL_28;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x268C01BD0);
      case 4:
        v22 = *(a1 + v18);
        if (!v22)
        {
          break;
        }

LABEL_28:
        v23 = v22 - 1;
        if (v19)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      default:
        break;
    }
  }

  if (v7 == v12)
  {

    return __swift_getEnumTagSinglePayload(a1, v7, v5);
  }

  v26 = (a1 + v16) & ~v13;
  if (v11 == v12)
  {
    if (v10 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, v10, v15);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v27 = *(((v17 + v26) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v27 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  return (v27 + 1);
}

double sub_268C01BE4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_268C1533C();
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = *(v12 + 80);
  v17 = *(v8 + 64) + v16;
  v18 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v18;
  }

  v19 = v18 + 7;
  v20 = ((v19 + (v17 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v19 + (v17 & ~v16)) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v21 = a3 - v15 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v15 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 > v15)
  {
    if (((v19 + (v17 & ~v16)) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v25 = a2 - v15;
    }

    else
    {
      v25 = 1;
    }

    if (((v19 + (v17 & ~v16)) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v26 = ~v15 + a2;
      bzero(a1, v20);
      *a1 = v26;
    }

    switch(v24)
    {
      case 1:
        *(a1 + v20) = v25;
        return result;
      case 2:
        *(a1 + v20) = v25;
        return result;
      case 3:
        goto LABEL_53;
      case 4:
        *(a1 + v20) = v25;
        return result;
      default:
        return result;
    }
  }

  v27 = ~v16;
  v28 = v10;
  switch(v24)
  {
    case 1:
      *(a1 + v20) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    case 2:
      *(a1 + v20) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    case 3:
LABEL_53:
      __break(1u);
      JUMPOUT(0x268C01E6CLL);
    case 4:
      *(a1 + v20) = 0;
      goto LABEL_39;
    default:
LABEL_39:
      if (!a2)
      {
        return result;
      }

LABEL_40:
      if (v9 == v15)
      {
        v29 = a1;
        v30 = a2;
        v13 = v9;
        v28 = v7;
      }

      else
      {
        v29 = ((a1 + v17) & v27);
        if (v14 != v15)
        {
          v31 = (v29 + v19) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            result = 0.0;
            *(v31 + 8) = 0u;
            *(v31 + 24) = 0u;
            *v31 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v31 + 24) = (a2 - 1);
          }

          return result;
        }

        v30 = (a2 + 1);
      }

      __swift_storeEnumTagSinglePayload(v29, v30, v13, v28);
      return result;
  }
}

void sub_268C01EAC(uint64_t a1)
{
  if (!qword_2802CE8D8)
  {
    sub_268C1533C();
    v1 = sub_268C15F1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2802CE8D8);
    }
  }
}

unint64_t sub_268C01F04()
{
  result = qword_2802CE8E0;
  if (!qword_2802CE8E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2802CE8E0);
  }

  return result;
}

BOOL sub_268C01F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_268C1624C();
  sub_268C15C3C();
  v6 = sub_268C1626C();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_268C1618C();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_268C0204C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = type metadata accessor for Device(0);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_11();
  v57 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - v8;
  v10 = sub_268C15A1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_11();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v17 = a1[1];
  if (v17)
  {
    v58 = v5;
    v18 = *a1;
    v19 = *a2;

    v20 = sub_268C01F60(v18, v17, v19);

    if (v20)
    {
      if (qword_2802CDB68 != -1)
      {
        OUTLINED_FUNCTION_3_2(&qword_2802CDB68);
      }

      v21 = v10;
      v22 = __swift_project_value_buffer(v10, qword_2802D2EC0);
      v23 = v11;
      v24 = *(v11 + 16);
      v56 = v21;
      v24(v13, v22, v21);
      v25 = a1;
      v26 = v57;
      sub_268BE5088(v25, v57);

      v27 = sub_268C159FC();
      v28 = sub_268C15DEC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v60 = v55;
        *v29 = 136315394;
        v30 = sub_268BB3D28(v18, v17, &v60);

        *(v29 + 4) = v30;
        *(v29 + 12) = 2080;
        v31 = Device.description.getter();
        v33 = v32;
        sub_268BE50EC(v26);
        v34 = sub_268BB3D28(v31, v33, &v60);

        *(v29 + 14) = v34;
        _os_log_impl(&dword_268BAD000, v27, v28, "Found duplicate device for id: %s. Device: %s. Dropping...", v29, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();
      }

      else
      {

        sub_268BE50EC(v26);
      }

      (*(v23 + 8))(v13, v56);
      v49 = v59;
      v50 = 1;
    }

    else
    {
      sub_268BDA100(&v60, v18, v17);

      v48 = v59;
      sub_268BE5088(a1, v59);
      v49 = v48;
      v50 = 0;
    }

    v52 = v58;
  }

  else
  {
    if (qword_2802CDB68 != -1)
    {
      OUTLINED_FUNCTION_3_2(&qword_2802CDB68);
    }

    v35 = __swift_project_value_buffer(v10, qword_2802D2EC0);
    v36 = v11;
    (*(v11 + 16))(v16, v35, v10);
    v37 = a1;
    sub_268BE5088(a1, v9);
    v38 = sub_268C159FC();
    v39 = sub_268C15DEC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v58 = v5;
      v41 = v40;
      v42 = swift_slowAlloc();
      v56 = v10;
      v57 = v36;
      v43 = v42;
      v60 = v42;
      *v41 = 136315138;
      v44 = Device.description.getter();
      v46 = v45;
      sub_268BE50EC(v9);
      v47 = sub_268BB3D28(v44, v46, &v60);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_268BAD000, v38, v39, "Unable to get device identifier for device: %s. Keeping the device anyway...", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_30();
      v5 = v58;
      OUTLINED_FUNCTION_30();

      (*(v57 + 8))(v16, v56);
    }

    else
    {

      sub_268BE50EC(v9);
      (*(v36 + 8))(v16, v10);
    }

    v51 = v59;
    sub_268BE5088(v37, v59);
    v49 = v51;
    v50 = 0;
    v52 = v5;
  }

  return __swift_storeEnumTagSinglePayload(v49, v50, 1, v52);
}

uint64_t sub_268C0258C()
{
  v0 = sub_268C15A1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268C1586C();
  v5 = sub_268C1584C();
  if (*(v4 + 16))
  {

    v6 = sub_268C028D8();
LABEL_5:

    return v6;
  }

  if (*(v5 + 16))
  {
    v6 = sub_268C02AA4(v5);
    goto LABEL_5;
  }

  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_2802D2F10);
  (*(v1 + 16))(v3, v8, v0);
  v9 = sub_268C159FC();
  v10 = sub_268C15DFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_268BAD000, v9, v10, "UsoValue#getInterpretationGroups No entitySpands or usoIdentifiers found", v11, 2u);
    MEMORY[0x26D628010](v11, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return MEMORY[0x277D84F90];
}

uint64_t sub_268C0278C()
{
  v0 = sub_268C1570C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_268C172C0;
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x8000000268C1D120;
  (*(v1 + 104))(v3, *MEMORY[0x277D5E6E8], v0);
  v5 = sub_268C156FC();
  v7 = v6;
  result = (*(v1 + 8))(v3, v0);
  *(v4 + 48) = v5;
  *(v4 + 56) = v7;
  qword_2802D2F28 = v4;
  return result;
}

uint64_t sub_268C028D8()
{
  v0 = sub_268C1551C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = -1;
  v4 = sub_268C1586C();
  v5 = 0;
  v10[0] = MEMORY[0x277D84F90];
  v6 = *(v4 + 16);
  for (i = (v1 + 8); ; (*i)(v3, v0))
  {
    if (v6 == v5)
    {

      return v10[0];
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v5, v0);
    sub_268C02DA0(v10, v3);
    ++v5;
  }

  __break(1u);

  (*i)(v3, v0);

  __break(1u);
  return result;
}

uint64_t sub_268C02AA4(uint64_t a1)
{
  v2 = 0;
  v25 = MEMORY[0x277D84F98];
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v4 = *(sub_268C155DC() - 8);
    sub_268C043B0(&v25, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2++);
  }

  v5 = v25;
  v6 = *(v25 + 16);
  if (v6)
  {
    v25 = MEMORY[0x277D84F90];
    v24 = v5;
    sub_268C160CC();
    v8 = sub_268BC4E10();
    result = v24;
    v11 = v10;
    v12 = 0;
    v13 = v24 + 64;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(result + 32))
      {
        v14 = v8 >> 6;
        if ((*(v13 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }

        if (*(result + 36) != v11)
        {
          goto LABEL_26;
        }

        v23 = v7;

        sub_268C160AC();
        sub_268C160DC();
        sub_268C160EC();
        sub_268C160BC();
        result = v24;
        v15 = 1 << *(v24 + 32);
        if (v8 >= v15)
        {
          goto LABEL_27;
        }

        v16 = *(v13 + 8 * v14);
        if ((v16 & (1 << v8)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v24 + 36) != v11)
        {
          goto LABEL_29;
        }

        v17 = v16 & (-2 << (v8 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v14 << 6;
          v19 = v14 + 1;
          v20 = (v24 + 72 + 8 * v14);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_268C05180(v8, v11, v23 & 1);
              result = v24;
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_268C05180(v8, v11, v23 & 1);
          result = v24;
        }

LABEL_19:
        if (++v12 == v6)
        {
          goto LABEL_22;
        }

        v7 = 0;
        v11 = *(result + 36);
        v8 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_22:

    return v25;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

void sub_268C02DA0(void *a1, uint64_t a2)
{
  v181 = a2;
  v149 = a1;
  v156 = sub_268C1572C();
  v184 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v147 = &v142 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE908, &qword_268C1A088);
  MEMORY[0x28223BE20](v158);
  v161 = &v142 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE240, &qword_268C17D78);
  MEMORY[0x28223BE20](v4 - 8);
  v157 = &v142 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE910, &qword_268C1A090);
  MEMORY[0x28223BE20](v6 - 8);
  v151 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v163 = &v142 - v9;
  MEMORY[0x28223BE20](v10);
  v155 = &v142 - v11;
  v174 = sub_268C156EC();
  v195 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v173 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v172 = &v142 - v14;
  v197 = sub_268C1570C();
  v189 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v162 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE8E8, &qword_268C1A078);
  MEMORY[0x28223BE20](v186);
  v17 = &v142 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE8F0, &qword_268C1A080);
  MEMORY[0x28223BE20](v18 - 8);
  v177 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v183 = &v142 - v21;
  MEMORY[0x28223BE20](v22);
  v176 = &v142 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v142 - v25;
  MEMORY[0x28223BE20](v27);
  v194 = &v142 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE918, &qword_268C1A098);
  MEMORY[0x28223BE20](v29 - 8);
  v180 = &v142 - v30;
  v179 = sub_268C1561C();
  v31 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v168 = &v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v167 = &v142 - v34;
  v35 = sub_268C1548C();
  v192 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v199 = &v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE238, &qword_268C17D70);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v142 - v38;
  v40 = sub_268C158DC();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v44 = &v142 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *v42 + 1;
  if (__OFADD__(*v42, 1))
  {
    __break(1u);
  }

  else
  {
    v193 = v26;
    *v42 = v45;
    type metadata accessor for InterpretationGroup();
    swift_allocObject();
    v46 = sub_268BF6D2C(v45);
    sub_268C1550C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v40);
    v188 = v46;
    if (EnumTagSinglePayload == 1)
    {
      sub_268BC4CFC(v39, &qword_2802CE238, &qword_268C17D70);
    }

    else
    {
      (*(v41 + 32))(v44, v39, v40);
      sub_268BBB3F8(v198);
      (*(v41 + 8))(v44, v40);
      v48 = LOBYTE(v198[0]) | (HIDWORD(v198[0]) << 32);
      swift_beginAccess();
      *(v46 + 56) = v48;
    }

    v49 = v35;
    v50 = sub_268C154CC();
    v51 = *(v50 + 16);
    if (v51)
    {
      v191 = *(v192 + 16);
      v52 = (*(v192 + 80) + 32) & ~*(v192 + 80);
      v145 = v50;
      v53 = v50 + v52;
      v190 = (v192 + 8);
      v166 = (v31 + 32);
      v165 = (v31 + 88);
      v142 = (v31 + 8);
      v185 = (v189 + 104);
      v159 = (v189 + 32);
      v187 = (v189 + 8);
      v171 = (v195 + 104);
      v192 += 16;
      v189 = *(v192 + 56);
      v164 = *MEMORY[0x277D5E558];
      v170 = (v195 + 8);
      v152 = *MEMORY[0x277D5E528];
      v148 = *MEMORY[0x277D5E550];
      v175 = 0x8000000268C1BA60;
      v160 = 0x8000000268C1BA80;
      v144 = *MEMORY[0x277D5E548];
      v154 = (v184 + 104);
      v146 = (v184 + 32);
      v143 = *MEMORY[0x277D5E530];
      v150 = (v184 + 8);
      LODWORD(v184) = *MEMORY[0x277D5E6E0];
      v169 = *MEMORY[0x277D5E6B0];
      v153 = *MEMORY[0x277D5E738];
      v54 = &qword_2802CE8F0;
      v178 = v17;
      v182 = v35;
      do
      {
        v191(v199, v53, v49);
        if (qword_2802CDBE8 != -1)
        {
          swift_once();
        }

        v55 = qword_2802D2F28;
        v198[0] = sub_268C1547C();
        v198[1] = v56;
        MEMORY[0x28223BE20](v198[0]);
        *(&v142 - 2) = v198;
        v57 = v196;
        LOBYTE(v55) = sub_268BC48EC(sub_268BFB5B0, (&v142 - 4), v55);
        v196 = v57;

        v58 = v194;
        if (v55)
        {
          v59 = v180;
          sub_268C1544C();
          v60 = v179;
          if (__swift_getEnumTagSinglePayload(v59, 1, v179) != 1)
          {
            v195 = v51;
            (*v190)(v199, v49);
            v67 = v59;
            v68 = *v166;
            v69 = v167;
            (*v166)(v167, v67, v60);
            v70 = v168;
            v68(v168, v69, v60);
            v71 = (*v165)(v70, v60);
            if (v71 == v164)
            {
              v72 = 3;
              v49 = v182;
              v73 = v188;
              v51 = v195;
              v54 = &qword_2802CE8F0;
            }

            else
            {
              v49 = v182;
              v73 = v188;
              v54 = &qword_2802CE8F0;
              if (v71 == v152)
              {
                v72 = 2;
              }

              else if (v71 == v148)
              {
                v72 = 6;
              }

              else
              {
                if (v71 != v144)
                {
                  v51 = v195;
                  if (v71 == v143)
                  {
                    v72 = 1;
                  }

                  else
                  {
                    v139 = v188;
                    (*v142)(v168, v60);
                    v73 = v139;
                    v72 = 8;
                  }

                  goto LABEL_63;
                }

                v72 = 5;
              }

              v51 = v195;
            }

LABEL_63:
            *(v73 + 32) = v72;
            goto LABEL_64;
          }

          sub_268BC4CFC(v59, &qword_2802CE918, &qword_268C1A098);
        }

        v195 = v53;
        v61 = v49;
        sub_268C1545C();
        v62 = v193;
        v63 = v54;
        v64 = v197;
        (*v185)(v193, v184, v197);
        __swift_storeEnumTagSinglePayload(v62, 0, 1, v64);
        v65 = *(v186 + 48);
        sub_268C051D0(v58, v17, v63, &qword_268C1A080);
        sub_268C051D0(v62, &v17[v65], v63, &qword_268C1A080);
        if (__swift_getEnumTagSinglePayload(v17, 1, v64) == 1)
        {
          sub_268BC4CFC(v62, v63, &qword_268C1A080);
          sub_268BC4CFC(v58, v63, &qword_268C1A080);
          v54 = v63;
          if (__swift_getEnumTagSinglePayload(&v17[v65], 1, v197) != 1)
          {
            goto LABEL_17;
          }

          sub_268BC4CFC(v17, v63, &qword_268C1A080);
          v49 = v61;
        }

        else
        {
          v66 = v176;
          sub_268C051D0(v17, v176, v63, &qword_268C1A080);
          if (__swift_getEnumTagSinglePayload(&v17[v65], 1, v197) == 1)
          {
            v54 = v63;
            sub_268BC4CFC(v193, v63, &qword_268C1A080);
            sub_268BC4CFC(v58, v63, &qword_268C1A080);
            (*v187)(v66, v197);
LABEL_17:
            sub_268BC4CFC(v17, &qword_2802CE8E8, &qword_268C1A078);
            v49 = v61;
            goto LABEL_23;
          }

          v74 = &v17[v65];
          v75 = v51;
          v76 = v162;
          v77 = v197;
          (*v159)(v162, v74, v197);
          sub_268C05238(&qword_2802CE900, MEMORY[0x277D5E708], MEMORY[0x277D5E710]);
          v78 = v66;
          v79 = sub_268C15BDC();
          v80 = *v187;
          v81 = v76;
          v51 = v75;
          (*v187)(v81, v77);
          sub_268BC4CFC(v193, &qword_2802CE8F0, &qword_268C1A080);
          sub_268BC4CFC(v194, &qword_2802CE8F0, &qword_268C1A080);
          v82 = v78;
          v49 = v182;
          v80(v82, v77);
          v54 = &qword_2802CE8F0;
          sub_268BC4CFC(v17, &qword_2802CE8F0, &qword_268C1A080);
          if ((v79 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v83 = v172;
        sub_268C154EC();
        v84 = v173;
        v85 = v49;
        v86 = v174;
        (*v171)(v173, v169, v174);
        v87 = MEMORY[0x26D626C90](v83, v84);
        v88 = *v170;
        (*v170)(v84, v86);
        v89 = v83;
        v17 = v178;
        v90 = v86;
        v49 = v85;
        v88(v89, v90);
        v54 = &qword_2802CE8F0;
        if (v87)
        {
          v91 = v51;
          v92 = v199;
          v93 = sub_268C1543C();
          v95 = v94;
          v96 = v92;
          v51 = v91;
          (*v190)(v96, v85);
          v97 = v188;
          *(v188 + 40) = v93;
          *(v97 + 48) = v95;

          v53 = v195;
          goto LABEL_64;
        }

LABEL_23:
        v98 = v183;
        sub_268C1545C();
        if (__swift_getEnumTagSinglePayload(v98, 1, v197) == 1)
        {
          sub_268BC4CFC(v98, v54, &qword_268C1A080);
          v53 = v195;
LABEL_25:
          v99 = v177;
          sub_268C1545C();
          if (__swift_getEnumTagSinglePayload(v99, 1, v197) == 1)
          {
            sub_268BC4CFC(v99, v54, &qword_268C1A080);
LABEL_59:
            (*v190)(v199, v49);
            goto LABEL_64;
          }

          v107 = sub_268C156FC();
          v108 = v99;
          v109 = v107;
          v111 = v110;
          (*v187)(v108, v197);
          if (v109 == 0xD00000000000001CLL && v160 == v111)
          {
          }

          else
          {
            v113 = sub_268C1618C();

            if ((v113 & 1) == 0)
            {
              goto LABEL_59;
            }
          }

          v121 = v188;
          *(v188 + 32) = 0;
          *(v121 + 40) = sub_268C1543C();
          *(v121 + 48) = v122;

          v123 = v157;
          sub_268C154FC();
          v124 = v123;
          v125 = sub_268C1574C();
          if (__swift_getEnumTagSinglePayload(v124, 1, v125) == 1)
          {
            sub_268BC4CFC(v124, &qword_2802CE240, &qword_268C17D78);
            v126 = v155;
            v127 = v156;
            __swift_storeEnumTagSinglePayload(v155, 1, 1, v156);
          }

          else
          {
            v126 = v155;
            sub_268C1573C();
            (*(*(v125 - 8) + 8))(v124, v125);
            v127 = v156;
          }

          v128 = v161;
          v129 = v163;
          (*v154)(v163, v153, v127);
          __swift_storeEnumTagSinglePayload(v129, 0, 1, v127);
          v130 = *(v158 + 48);
          sub_268C051D0(v126, v128, &qword_2802CE910, &qword_268C1A090);
          v131 = v127;
          sub_268C051D0(v129, v128 + v130, &qword_2802CE910, &qword_268C1A090);
          if (__swift_getEnumTagSinglePayload(v128, 1, v127) == 1)
          {
            sub_268BC4CFC(v129, &qword_2802CE910, &qword_268C1A090);
            sub_268BC4CFC(v126, &qword_2802CE910, &qword_268C1A090);
            v132 = __swift_getEnumTagSinglePayload(v128 + v130, 1, v127);
            v49 = v182;
            v54 = &qword_2802CE8F0;
            if (v132 == 1)
            {
              sub_268BC4CFC(v128, &qword_2802CE910, &qword_268C1A090);
              v17 = v178;
              goto LABEL_56;
            }
          }

          else
          {
            v133 = v151;
            sub_268C051D0(v128, v151, &qword_2802CE910, &qword_268C1A090);
            if (__swift_getEnumTagSinglePayload(v128 + v130, 1, v131) != 1)
            {
              v134 = v128 + v130;
              v135 = v147;
              (*v146)(v147, v134, v131);
              sub_268C05238(&qword_2802CE920, MEMORY[0x277D5E748], MEMORY[0x277D5E750]);
              LODWORD(v195) = sub_268C15BDC();
              v136 = *v150;
              (*v150)(v135, v131);
              sub_268BC4CFC(v163, &qword_2802CE910, &qword_268C1A090);
              sub_268BC4CFC(v126, &qword_2802CE910, &qword_268C1A090);
              v136(v133, v131);
              sub_268BC4CFC(v161, &qword_2802CE910, &qword_268C1A090);
              v17 = v178;
              v49 = v182;
              v54 = &qword_2802CE8F0;
              if ((v195 & 1) == 0)
              {
                goto LABEL_59;
              }

LABEL_56:
              v138 = sub_268BF6CD8(v198);
              if (*v137 != 4)
              {
                *(v137 + 4) = 1065353216;
              }

              (v138)(v198, 0);
              goto LABEL_59;
            }

            sub_268BC4CFC(v163, &qword_2802CE910, &qword_268C1A090);
            sub_268BC4CFC(v126, &qword_2802CE910, &qword_268C1A090);
            (*v150)(v133, v131);
            v49 = v182;
            v54 = &qword_2802CE8F0;
          }

          sub_268BC4CFC(v128, &qword_2802CE908, &qword_268C1A088);
          v17 = v178;
          goto LABEL_59;
        }

        v100 = sub_268C156FC();
        v101 = v98;
        v102 = v100;
        v104 = v103;
        (*v187)(v101, v197);
        if (v102 == 0xD000000000000017 && v175 == v104)
        {

          v53 = v195;
        }

        else
        {
          v106 = sub_268C1618C();

          v53 = v195;
          if ((v106 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        v114 = v188;
        *(v188 + 32) = 7;
        v115 = v51;
        v116 = v199;
        v117 = sub_268C1543C();
        v119 = v118;
        v120 = v116;
        v51 = v115;
        (*v190)(v120, v49);
        *(v114 + 40) = v117;
        *(v114 + 48) = v119;

LABEL_64:
        v53 += v189;
        --v51;
      }

      while (v51);
    }

    v141 = v149;
    MEMORY[0x26D6272B0](v140);
    sub_268BBAF50(*((*v141 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_268C15D5C();
  }
}

uint64_t sub_268C043B0(uint64_t *a1, uint64_t a2)
{
  v111 = sub_268C156EC();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = &v105 - v6;
  v7 = sub_268C1570C();
  v118 = *(v7 - 8);
  v119 = v7;
  MEMORY[0x28223BE20](v7);
  v117 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v107 = &v105 - v10;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE8E8, &qword_268C1A078);
  MEMORY[0x28223BE20](v115);
  v116 = &v105 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE8F0, &qword_268C1A080);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v105 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v105 - v19;
  v21 = sub_268C1561C();
  v113 = *(v21 - 8);
  v114 = v21;
  MEMORY[0x28223BE20](v21);
  v112 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_268C15A1C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a2;
  v27 = sub_268C1558C();
  if ((v27 & 0x100000000) != 0)
  {
    v28 = -1;
  }

  else
  {
    v28 = v27;
  }

  v29 = *a1;
  if (sub_268C0F5D8(v28, *a1))
  {
  }

  else
  {
    type metadata accessor for InterpretationGroup();
    swift_allocObject();
    v30 = sub_268BF6D2C(v28);
    v106 = v26;
    v31 = v23;
    v32 = v24;
    v33 = v17;
    v34 = v14;
    v35 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122[0] = *a1;
    v37 = v35;
    v14 = v34;
    v17 = v33;
    v24 = v32;
    v23 = v31;
    v26 = v106;
    sub_268BEF50C(v37, v28, isUniquelyReferenced_nonNull_native);
    v29 = v122[0];
    *a1 = v122[0];
  }

  v38 = sub_268C0F5D8(v28, v29);
  if (v38)
  {
    v39 = v38;
    swift_beginAccess();
    sub_268BBADBC();
    v40 = *(*(v39 + 16) + 16);
    sub_268BBAE48(v40);
    v41 = *(v39 + 16);
    *(v41 + 16) = v40 + 1;
    v42 = sub_268C155DC();
    (*(*(v42 - 8) + 16))(v41 + ((*(*(v42 - 8) + 80) + 32) & ~*(*(v42 - 8) + 80)) + *(*(v42 - 8) + 72) * v40, v120, v42);
    *(v39 + 16) = v41;
    swift_endAccess();
    if (qword_2802CDBE8 != -1)
    {
      swift_once();
    }

    v43 = qword_2802D2F28;
    v44 = sub_268C155CC();
    if (v45)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0xE000000000000000;
    }

    v122[0] = v46;
    v122[1] = v47;
    MEMORY[0x28223BE20](v44);
    *(&v105 - 2) = v122;
    v48 = v121;
    v49 = sub_268BC48EC(sub_268BC4C7C, (&v105 - 4), v43);
    v121 = v48;

    if (v49)
    {
      v50 = v112;
      sub_268C1554C();
      v52 = v113;
      v51 = v114;
      v53 = (*(v113 + 11))(v50, v114);
      v55 = v118;
      v54 = v119;
      if (v53 == *MEMORY[0x277D5E558])
      {
        v56 = 3;
      }

      else if (v53 == *MEMORY[0x277D5E528])
      {
        v56 = 2;
      }

      else if (v53 == *MEMORY[0x277D5E550])
      {
        v56 = 6;
      }

      else if (v53 == *MEMORY[0x277D5E548])
      {
        v56 = 5;
      }

      else if (v53 == *MEMORY[0x277D5E530])
      {
        v56 = 1;
      }

      else
      {
        (*(v52 + 8))(v50, v51);
        v56 = 8;
      }

      *(v39 + 32) = v56;
LABEL_60:
      v86 = sub_268C155CC();
      v88 = v87;
      v89 = v117;
      (*(v55 + 104))(v117, *MEMORY[0x277D5E6C0], v54);
      v90 = sub_268C156FC();
      v92 = v91;
      (*(v55 + 8))(v89, v54);
      if (v88)
      {
        if (v86 == v90 && v88 == v92)
        {
        }

        else
        {
          v94 = sub_268C1618C();

          if ((v94 & 1) == 0)
          {
          }
        }

        sub_268C0518C();
        v95 = sub_268C155BC();
        v96 = v121;
        v98 = sub_268C050A8(v95, v97);
        v121 = v96;
        if (v96)
        {

          v121 = 0;
          return result;
        }

        v99 = v98;
        if (v98)
        {
          [v98 matchScore];
          v101 = v100;
          if ([v99 isPartialMatch] & 1) != 0 || (objc_msgSend(v99, sel_isApproximateMatch))
          {

            v102 = 1;
          }

          else
          {
            v103 = [v99 isAliasMatch];

            v102 = 3;
            if (!v103)
            {
              v102 = 0;
            }
          }

          v104 = v102 | (v101 << 32);
          swift_beginAccess();
          *(v39 + 56) = v104;
        }
      }
    }

    v114 = v14;
    sub_268C1557C();
    v55 = v118;
    v54 = v119;
    (*(v118 + 104))(v17, *MEMORY[0x277D5E6E0], v119);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v54);
    v62 = v116;
    v63 = *(v115 + 12);
    sub_268C051D0(v20, v116, &qword_2802CE8F0, &qword_268C1A080);
    sub_268C051D0(v17, v62 + v63, &qword_2802CE8F0, &qword_268C1A080);
    if (__swift_getEnumTagSinglePayload(v62, 1, v54) == 1)
    {
      sub_268BC4CFC(v17, &qword_2802CE8F0, &qword_268C1A080);
      v64 = v116;
      sub_268BC4CFC(v20, &qword_2802CE8F0, &qword_268C1A080);
      if (__swift_getEnumTagSinglePayload(v64 + v63, 1, v54) == 1)
      {
        sub_268BC4CFC(v64, &qword_2802CE8F0, &qword_268C1A080);
LABEL_35:
        v70 = v110;
        sub_268C1556C();
        v71 = v108;
        v72 = v109;
        v73 = v111;
        (*(v109 + 104))(v108, *MEMORY[0x277D5E6B0], v111);
        v74 = MEMORY[0x26D626C90](v70, v71);
        v75 = v71;
        LOBYTE(v71) = v74;
        v76 = *(v72 + 8);
        v76(v75, v73);
        v76(v70, v73);
        if (v71)
        {
          goto LABEL_53;
        }

LABEL_36:
        v77 = sub_268C155CC();
        if (v78)
        {
          if (v77 == 0xD000000000000017 && v78 == 0x8000000268C1BA60)
          {
          }

          else
          {
            v80 = sub_268C1618C();

            if ((v80 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          *(v39 + 32) = 7;
          goto LABEL_53;
        }

LABEL_42:
        v81 = sub_268C155CC();
        if (!v82)
        {
          goto LABEL_60;
        }

        if (v81 == 0xD00000000000001CLL && v82 == 0x8000000268C1BA80)
        {
        }

        else
        {
          v84 = sub_268C1618C();

          if ((v84 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        *(v39 + 32) = 0;
LABEL_53:
        *(v39 + 40) = sub_268C155BC();
        *(v39 + 48) = v85;

        goto LABEL_60;
      }
    }

    else
    {
      v113 = v17;
      v115 = v20;
      v65 = v114;
      sub_268C051D0(v62, v114, &qword_2802CE8F0, &qword_268C1A080);
      if (__swift_getEnumTagSinglePayload(v62 + v63, 1, v54) != 1)
      {
        v66 = v107;
        (*(v55 + 32))(v107, v62 + v63, v54);
        sub_268C05238(&qword_2802CE900, MEMORY[0x277D5E708], MEMORY[0x277D5E710]);
        v67 = v62;
        v68 = sub_268C15BDC();
        v69 = *(v55 + 8);
        v69(v66, v119);
        sub_268BC4CFC(v113, &qword_2802CE8F0, &qword_268C1A080);
        sub_268BC4CFC(v115, &qword_2802CE8F0, &qword_268C1A080);
        v69(v65, v119);
        v55 = v118;
        v54 = v119;
        sub_268BC4CFC(v67, &qword_2802CE8F0, &qword_268C1A080);
        if ((v68 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      sub_268BC4CFC(v113, &qword_2802CE8F0, &qword_268C1A080);
      v64 = v116;
      sub_268BC4CFC(v115, &qword_2802CE8F0, &qword_268C1A080);
      (*(v55 + 8))(v65, v54);
    }

    sub_268BC4CFC(v64, &qword_2802CE8E8, &qword_268C1A078);
    goto LABEL_36;
  }

  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v23, qword_2802D2F10);
  (*(v24 + 16))(v26, v57, v23);
  v58 = sub_268C159FC();
  v59 = sub_268C15DEC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_268BAD000, v58, v59, "Fatal: Expected an interpretation group to be initialized", v60, 2u);
    MEMORY[0x26D628010](v60, -1, -1);
  }

  return (*(v24 + 8))(v26, v23);
}

id sub_268C050A8(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_268C15BEC();

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() spanInfoFromEncodedString:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_268C1524C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_268C05180(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_268C0518C()
{
  result = qword_2802CE8F8;
  if (!qword_2802CE8F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802CE8F8);
  }

  return result;
}

uint64_t sub_268C051D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_268C05238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

SiriPlaybackControlSupport::DeviceSelectionControlType_optional __swiftcall DeviceSelectionControlType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268C1615C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceSelectionControlType.rawValue.getter()
{
  result = 0x656C626173756170;
  switch(*v0)
  {
    case 1:
      result = 0x6C62616D75736572;
      break;
    case 2:
      result = 0x6E6F436F65646976;
      break;
    case 3:
      result = 0x6F43656D756C6F76;
      break;
    case 4:
      result = 7958113;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268C053DC()
{
  result = qword_2802CE928;
  if (!qword_2802CE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE928);
  }

  return result;
}

uint64_t sub_268C05454@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceSelectionControlType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceSelectionConstants(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x268C05518);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceSelectionControlType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268C0561CLL);
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

uint64_t static LocalizationProvider.shared.getter(uint64_t a1)
{
  type metadata accessor for LocalizationProvider();

  return swift_initStaticObject();
}

unint64_t LocalizationKey.rawValue.getter()
{
  result = 0x4D414E5F4D4F4F52;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x4E414C5F4F545541;
      break;
    case 9:
      result = 0x5254535F4D4F4F52;
      break;
    case 0xA:
      result = 0x504F54535F414857;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_268C061B4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  else
  {
    LOBYTE(v10[0]) = 10;
    v2 = sub_268C056A8(v10);
    v1 = MEMORY[0x277D84F90];
    if (v3)
    {
      v10[0] = v2;
      v10[1] = v3;
      sub_268BB9A64();
      OUTLINED_FUNCTION_5_11();
      v5 = v4;

      if (*(v5 + 16))
      {
        OUTLINED_FUNCTION_6_14();
        v1 = v10[0];
        do
        {

          OUTLINED_FUNCTION_10_11();

          OUTLINED_FUNCTION_9_8();
          if (v7)
          {
            OUTLINED_FUNCTION_7_10(v6);
            v1 = v10[0];
          }

          OUTLINED_FUNCTION_4_12();
        }

        while (!v8);
      }
    }

    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_268C062D4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
  }

  else
  {
    LOBYTE(v10[0]) = 9;
    v2 = sub_268C056A8(v10);
    v1 = MEMORY[0x277D84F90];
    if (v3)
    {
      v10[0] = v2;
      v10[1] = v3;
      sub_268BB9A64();
      OUTLINED_FUNCTION_5_11();
      v5 = v4;

      if (*(v5 + 16))
      {
        OUTLINED_FUNCTION_6_14();
        v1 = v10[0];
        do
        {

          OUTLINED_FUNCTION_10_11();

          OUTLINED_FUNCTION_9_8();
          if (v7)
          {
            OUTLINED_FUNCTION_7_10(v6);
            v1 = v10[0];
          }

          OUTLINED_FUNCTION_4_12();
        }

        while (!v8);
      }
    }

    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t LocalizationProvider.deinit()
{

  return v0;
}

uint64_t LocalizationProvider.__deallocating_deinit()
{
  LocalizationProvider.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t LocalizationTable.init(rawValue:)@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_268C1615C();

  *a2 = v3 != 0;
  return result;
}

SiriPlaybackControlSupport::LocalizationKey_optional __swiftcall LocalizationKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268C1615C();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_268C065D0@<X0>(unint64_t *a1@<X8>)
{
  result = LocalizationKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268C065F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_268C15BEC();

  v11 = sub_268C15BEC();

  v12 = sub_268C15BEC();
  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_268C15BFC();

  return v14;
}

unint64_t sub_268C066E8()
{
  result = qword_2802CE930;
  if (!qword_2802CE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE930);
  }

  return result;
}

unint64_t sub_268C06740()
{
  result = qword_2802CE938;
  if (!qword_2802CE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE938);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalizationTable(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x268C068F0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalizationKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocalizationKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x268C06A7CLL);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_12()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_5_11()
{

  JUMPOUT(0x26D627550);
}

char *OUTLINED_FUNCTION_6_14()
{

  return sub_268BB4AB8(0, v0, 0);
}

char *OUTLINED_FUNCTION_7_10@<X0>(unint64_t a1@<X8>)
{

  return sub_268BB4AB8((a1 > 1), v1, 1);
}

void OUTLINED_FUNCTION_10_11()
{

  JUMPOUT(0x26D6271F0);
}

uint64_t EncryptionProvider.encodeRouteIds(_:completion:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_11(a1);
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  OUTLINED_FUNCTION_22_0();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v3;
  v12 = qword_2802CDB60;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v13 = qword_2802D2EB8;
  sub_268C159DC();
  v14 = OUTLINED_FUNCTION_32_2();
  v15(v14);
  OUTLINED_FUNCTION_23_3();
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_0_12(v16);
  v18(v17);
  *(v16 + v2) = 0;
  v19 = v16 + v1;
  *(v19 + 8) = sub_268C06E20;
  *(v19 + 16) = v11;

  sub_268C15EAC();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_268C077E0;
  *(v20 + 24) = v16;

  sub_268C06E4C(sub_268C07800, v20, v22[1]);

  return (*(v6 + 8))(v10, v12);
}

uint64_t sub_268C06DEC()
{

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

void sub_268C06E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = qword_2802CDBE0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_2802D2F10);
  (*(v7 + 16))(v9, v12, v6);

  v13 = sub_268C159FC();
  v14 = sub_268C15DCC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    v17 = MEMORY[0x26D6272E0](a3, MEMORY[0x277D837D0]);
    v24 = v6;
    v19 = sub_268BB3D28(v17, v18, aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_268BAD000, v13, v14, "Encoding routeIds: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x26D628010](v16, -1, -1);
    MEMORY[0x26D628010](v15, -1, -1);

    (*(v7 + 8))(v9, v24);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v21 = sub_268C15CFC();
  aBlock[4] = sub_268C07A08;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268C07178;
  aBlock[3] = &block_descriptor_28;
  v22 = _Block_copy(aBlock);

  [v20 encodeHashedRouteUIDs:v21 completion:v22];
  _Block_release(v22);
}

uint64_t sub_268C07178(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_268C15D0C();

  v2(v3);
}

uint64_t EncryptionProvider.decodeRouteIds(_:completion:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_11(a1);
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  OUTLINED_FUNCTION_22_0();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v3;
  v12 = qword_2802CDB60;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v13 = qword_2802D2EB8;
  sub_268C159DC();
  v14 = OUTLINED_FUNCTION_32_2();
  v15(v14);
  OUTLINED_FUNCTION_23_3();
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_0_12(v16);
  v18(v17);
  *(v16 + v2) = 0;
  v19 = v16 + v1;
  *(v19 + 8) = sub_268C07808;
  *(v19 + 16) = v11;

  sub_268C15EAC();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_268C077E0;
  *(v20 + 24) = v16;

  sub_268C07404(sub_268C07800, v20, v22[1]);

  return (*(v6 + 8))(v10, v12);
}

void sub_268C07404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = qword_2802CDBE0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_2802D2F10);
  (*(v7 + 16))(v9, v12, v6);

  v13 = sub_268C159FC();
  v14 = sub_268C15DCC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    v17 = MEMORY[0x26D6272E0](a3, MEMORY[0x277D837D0]);
    v24 = v6;
    v19 = sub_268BB3D28(v17, v18, aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_268BAD000, v13, v14, "Decoding routeIds: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x26D628010](v16, -1, -1);
    MEMORY[0x26D628010](v15, -1, -1);

    (*(v7 + 8))(v9, v24);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v21 = sub_268C15CFC();
  aBlock[4] = sub_268BD7F98;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268C07730;
  aBlock[3] = &block_descriptor_3;
  v22 = _Block_copy(aBlock);

  [v20 decodeHashedRouteUIDs:v21 completion:v22];
  _Block_release(v22);
}

uint64_t sub_268C07730(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_268C15B5C();

  v2(v3);
}

uint64_t sub_268C07838(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_268C159EC() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + v6);
  v10 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v2 + 32);

  return a2(a1, v7, v8, v13, v2 + v5, v9, v11, v12);
}

_BYTE *storeEnumTagSinglePayload for EncryptionProvider(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x268C079B8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = 14;
  *(a1 + 32) = 2;
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1)
{
  *(v1 - 88) = a1;

  return sub_268C159EC();
}

uint64_t sub_268C07A74()
{
  sub_268C1542C();
  v0 = sub_268C158EC();
  sub_268C0F218(0x73656D616ELL, 0xE500000000000000, v0);
  v2 = v1;

  if (v2)
  {
    return v2;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

void sub_268C07AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D27878]) init];
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_268C07BC4;
  v8[3] = &block_descriptor_4;
  v7 = _Block_copy(v8);

  sub_268C07C74(a1, v7, v6);
  _Block_release(v7);
}

void sub_268C07BC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_268C07C74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_268C15CFC();
  [a3 resolveWithRouteIdentifiers:v5 completion:a2];
}

uint64_t sub_268C07D50()
{
  v6[0] = sub_268C15E4C();
  v0 = *(v6[0] - 8);
  MEMORY[0x28223BE20](v6[0]);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268C15E1C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_268C15AAC();
  MEMORY[0x28223BE20](v4 - 8);
  sub_268C089BC();
  sub_268C15A7C();
  v6[1] = MEMORY[0x277D84F90];
  sub_268BC1148(&qword_2802CE070, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE078, &unk_268C177B0);
  sub_268BC1190(&unk_2802CE080, &qword_2802CE078, &unk_268C177B0);
  sub_268C15FCC();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v6[0]);
  result = sub_268C15E8C();
  qword_2802D2F30 = result;
  return result;
}

uint64_t static OS_dispatch_semaphore.wrap<A>(timeoutSeconds:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v66 = a2;
  v76 = a4;
  sub_268C15ADC();
  OUTLINED_FUNCTION_3_0();
  v74 = v9;
  v75 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v59 - v12;
  sub_268C15A5C();
  OUTLINED_FUNCTION_3_0();
  v70 = v14;
  v71 = v13;
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C15AAC();
  OUTLINED_FUNCTION_3_0();
  v68 = v18;
  v69 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v59 - v28;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v62 = v26;
  v30 = __swift_project_value_buffer(v21, qword_2802D2F10);
  v31 = *(v23 + 16);
  v61 = v30;
  v60 = v31;
  (v31)(v29);
  v32 = sub_268C159FC();
  v33 = sub_268C15DFC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v67 = v20;
    v35 = a3;
    v36 = a1;
    v37 = v34;
    *v34 = 134217984;
    *(v34 + 4) = a5;
    _os_log_impl(&dword_268BAD000, v32, v33, "DispatchSemaphore#wrap: Running asynchronous block synchronously with timeout: %f seconds", v34, 0xCu);
    v38 = v37;
    a1 = v36;
    a3 = v35;
    v20 = v67;
    MEMORY[0x26D628010](v38, -1, -1);
  }

  v39 = *(v23 + 8);
  v64 = v21;
  v63 = v23 + 8;
  v59 = v39;
  v39(v29, v21);
  v40 = dispatch_semaphore_create(0);
  v67 = sub_268C15F1C();
  v41 = swift_allocBox();
  v65 = v42;
  __swift_storeEnumTagSinglePayload(v42, 1, 1, a3);
  if (qword_2802CDBF0 != -1)
  {
    swift_once();
  }

  v43 = swift_allocObject();
  v43[2] = a3;
  v43[3] = a1;
  v43[4] = v66;
  v43[5] = v41;
  v43[6] = v40;
  aBlock[4] = sub_268C087FC;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268BC5554;
  aBlock[3] = &block_descriptor_5;
  v44 = _Block_copy(aBlock);

  v66 = v41;

  v45 = v40;
  sub_268C15A6C();
  v77 = MEMORY[0x277D84F90];
  sub_268BC1148(&qword_2802CE048, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  v46 = v71;
  sub_268C15FCC();
  MEMORY[0x26D627440](0, v20, v16, v44);
  _Block_release(v44);
  (*(v70 + 8))(v16, v46);
  (*(v68 + 8))(v20, v69);

  v47 = v72;
  sub_268C15ABC();
  v48 = v73;
  sub_268C15B3C();
  v49 = v75;
  v50 = *(v74 + 8);
  v50(v47, v75);
  sub_268C15EBC();
  v50(v48, v49);
  if (sub_268C15A4C())
  {
    v51 = v62;
    v52 = v64;
    v60(v62, v61, v64);
    v53 = sub_268C159FC();
    v54 = sub_268C15DEC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = a5;
      _os_log_impl(&dword_268BAD000, v53, v54, "Semaphore wait timed out after: %f seconds", v55, 0xCu);
      MEMORY[0x26D628010](v55, -1, -1);
      v56 = v45;
    }

    else
    {
      v56 = v53;
      v53 = v45;
    }

    v59(v51, v52);
  }

  else
  {
  }

  v57 = v65;
  swift_beginAccess();
  (*(*(v67 - 8) + 16))(v76, v57);
}

uint64_t sub_268C08710(void (*a1)(uint64_t (*)(), void *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = a3;
  v9[4] = a4;

  v10 = a4;
  a1(sub_268C089B0, v9);
}

uint64_t sub_268C087B4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268C08824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_268C15F1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = swift_projectBox();
  (*(*(a4 - 8) + 16))(v9, a1, a4);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, a4);
  swift_beginAccess();
  (*(v7 + 40))(v10, v9, v6);
  return sub_268C15EDC();
}

uint64_t sub_268C08970()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_268C089BC()
{
  result = qword_2802CE068;
  if (!qword_2802CE068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802CE068);
  }

  return result;
}

void sub_268C08A48()
{
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  OUTLINED_FUNCTION_8_13(v2, qword_2802D2F10);
  v3 = OUTLINED_FUNCTION_5_12();
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_16_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_21_5(v7);
    OUTLINED_FUNCTION_10_12(&dword_268BAD000);
    OUTLINED_FUNCTION_17_8();
  }

  v8 = OUTLINED_FUNCTION_11_8();
  v9(v8);
  v10 = OUTLINED_FUNCTION_7_12();
  v0(v10);
  OUTLINED_FUNCTION_32_0();
}

void PlaybackControlling.seek(devices:to:shouldStartPlaybackAfterCommand:with:)()
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v3 = OUTLINED_FUNCTION_1_13(v2, qword_2802D2F10);
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v8, v9, "PlaybackControlling#seek default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v10 = OUTLINED_FUNCTION_6_15();
  v11(v10);
  v12 = OUTLINED_FUNCTION_4_13();
  v0(v12);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.setShuffleMode(to:on:with:)()
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v3 = OUTLINED_FUNCTION_1_13(v2, qword_2802D2F10);
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v8, v9, "PlaybackControlling#setShuffleMode default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v10 = OUTLINED_FUNCTION_6_15();
  v11(v10);
  v12 = OUTLINED_FUNCTION_4_13();
  v0(v12);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.setRepeatMode(to:on:shouldStartPlaybackAfterCommand:with:)()
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v3 = OUTLINED_FUNCTION_1_13(v2, qword_2802D2F10);
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v8, v9, "PlaybackControlling#setRepeatMode default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v10 = OUTLINED_FUNCTION_6_15();
  v11(v10);
  v12 = OUTLINED_FUNCTION_4_13();
  v0(v12);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.setLanguageOption(languageIdentifier:type:device:with:)()
{
  OUTLINED_FUNCTION_25_4();
  v1 = v0;
  sub_268C15A1C();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v3 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v4 = OUTLINED_FUNCTION_1_13(v3, qword_2802D2F10);
  v5(v4);
  v6 = sub_268C159FC();
  v7 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v7))
  {
    v8 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v8);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v9, v10, "PlaybackControlling#setLanguageOption default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v11 = OUTLINED_FUNCTION_6_15();
  v12(v11);
  v13 = OUTLINED_FUNCTION_4_13();
  v1(v13);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.getLanguageOptions(for:device:with:)()
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v3 = OUTLINED_FUNCTION_1_13(v2, qword_2802D2F10);
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v8, v9, "PlaybackControlling#getLanguageOptions default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v10 = OUTLINED_FUNCTION_6_15();
  v11(v10);
  sub_268BD8218();
  v12 = swift_allocError();
  *v13 = 0x8000000000000060;
  v14 = v12;
  v15 = 1;
  v0(&v14);
  sub_268BD818C(v14, v15);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.getDurationInfo(device:with:)()
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v3 = OUTLINED_FUNCTION_1_13(v2, qword_2802D2F10);
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v8, v9, "PlaybackControlling#getDurationInfo default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v10 = OUTLINED_FUNCTION_6_15();
  v11(v10);
  v12[0] = 0;
  v12[1] = 0;
  v13 = 1;
  v0(v12);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.getLocalPlayState(with:)(uint64_t a1)
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v3 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v4 = OUTLINED_FUNCTION_1_13(v3, qword_2802D2F10);
  v5(v4);
  v6 = sub_268C159FC();
  v7 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v7))
  {
    v8 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v8);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v9, v10, "PlaybackControlling#getLocalPlayState default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v11 = OUTLINED_FUNCTION_6_15();
  v12(v11);
  v13 = 0;
  v1(&v13);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.getLocalPlaybackRate(with:)(uint64_t a1)
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v3 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v4 = OUTLINED_FUNCTION_1_13(v3, qword_2802D2F10);
  v5(v4);
  v6 = sub_268C159FC();
  v7 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v7))
  {
    v8 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v8);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v9, v10, "PlaybackControlling#getLocalPlaybackRate default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v11 = OUTLINED_FUNCTION_6_15();
  v12(v11);
  v1(0x100000000);
  OUTLINED_FUNCTION_14_3();
}

void sub_268C094C0()
{
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  OUTLINED_FUNCTION_8_13(v2, qword_2802D2F10);
  v3 = OUTLINED_FUNCTION_5_12();
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_16_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_21_5(v7);
    OUTLINED_FUNCTION_10_12(&dword_268BAD000);
    OUTLINED_FUNCTION_17_8();
  }

  v8 = OUTLINED_FUNCTION_11_8();
  v9(v8);
  v0(0, 0);
  OUTLINED_FUNCTION_32_0();
}

void PlaybackControlling.setVolumeLevelRelative(routeIds:delta:isIncrease:isLocal:completion:)()
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v3 = OUTLINED_FUNCTION_1_13(v2, qword_2802D2F10);
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v8, v9, "PlaybackControlling#setVolumeLevelRelative default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v10 = OUTLINED_FUNCTION_6_15();
  v11(v10);
  v12 = OUTLINED_FUNCTION_4_13();
  v0(v12);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.setVolumeLevelAbsolute(routeIds:volumeLevel:isLocal:completion:)()
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v3 = OUTLINED_FUNCTION_1_13(v2, qword_2802D2F10);
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v8, v9, "PlaybackControlling#setVolumeLevelAbsolute default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v10 = OUTLINED_FUNCTION_6_15();
  v11(v10);
  v12 = OUTLINED_FUNCTION_4_13();
  v0(v12);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.setVolumeLevelLocal(device:volumeLevel:completion:)()
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v3 = OUTLINED_FUNCTION_1_13(v2, qword_2802D2F10);
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v8, v9, "PlaybackControlling#setVolumeLevelLocal default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v10 = OUTLINED_FUNCTION_6_15();
  v11(v10);
  v12 = OUTLINED_FUNCTION_4_13();
  v0(v12);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.addOutputDevicesToGroup(groupId:outputDeviceUIDs:with:)()
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v3 = OUTLINED_FUNCTION_1_13(v2, qword_2802D2F10);
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v8, v9, "PlaybackControlling#addOutputDevicesToGroup default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v10 = OUTLINED_FUNCTION_6_15();
  v11(v10);
  v12 = OUTLINED_FUNCTION_4_13();
  v0(v12);
  OUTLINED_FUNCTION_14_3();
}

void PlaybackControlling.moveOutputDevicesToGroup(groupId:outputDeviceUIDs:with:)()
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v3 = OUTLINED_FUNCTION_1_13(v2, qword_2802D2F10);
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v8, v9, "PlaybackControlling#moveOutputDevicesToGroup default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v10 = OUTLINED_FUNCTION_6_15();
  v11(v10);
  v12 = OUTLINED_FUNCTION_4_13();
  v0(v12);
  OUTLINED_FUNCTION_14_3();
}

void sub_268C09B64()
{
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  OUTLINED_FUNCTION_8_13(v2, qword_2802D2F10);
  v3 = OUTLINED_FUNCTION_5_12();
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_16_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_21_5(v7);
    OUTLINED_FUNCTION_10_12(&dword_268BAD000);
    OUTLINED_FUNCTION_17_8();
  }

  v8 = OUTLINED_FUNCTION_11_8();
  v9(v8);
  v10 = OUTLINED_FUNCTION_7_12();
  v0(v10);
  OUTLINED_FUNCTION_32_0();
}

void PlaybackControlling.isChangePlaybackRateSupported(for:with:)()
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v3 = OUTLINED_FUNCTION_1_13(v2, qword_2802D2F10);
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v7);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v8, v9, "PlaybackControlling#isChangePlaybackRateSupported default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v10 = OUTLINED_FUNCTION_6_15();
  v11(v10);
  v0(0, MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_3();
}

void sub_268C09DB8()
{
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v2 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  OUTLINED_FUNCTION_8_13(v2, qword_2802D2F10);
  v3 = OUTLINED_FUNCTION_5_12();
  v4(v3);
  v5 = sub_268C159FC();
  v6 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_16_7(v6))
  {
    v7 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_21_5(v7);
    OUTLINED_FUNCTION_10_12(&dword_268BAD000);
    OUTLINED_FUNCTION_17_8();
  }

  v8 = OUTLINED_FUNCTION_11_8();
  v9(v8);
  v0(0);
  OUTLINED_FUNCTION_32_0();
}

Swift::String_optional __swiftcall PlaybackControlling.acquireAndReleaseSnippetAssertionWithFixedTime()()
{
  v1 = sub_268C15A1C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v3 = __swift_project_value_buffer(v1, qword_2802D2F10);
  (*(v2 + 16))(v0, v3, v1);
  v4 = sub_268C159FC();
  v5 = sub_268C15DEC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_23_0();
    *v6 = 0;
    _os_log_impl(&dword_268BAD000, v4, v5, "PlaybackControlling#acquireAndReleaseSnippetAssertionWithFixedTime default implementation should not be used", v6, 2u);
    MEMORY[0x26D628010](v6, -1, -1);
  }

  (*(v2 + 8))(v0, v1);
  v7 = 0;
  v8 = 0;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

void PlaybackControlling.hasResumableContent(completion:)(uint64_t a1)
{
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v3 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v4 = OUTLINED_FUNCTION_1_13(v3, qword_2802D2F10);
  v5(v4);
  v6 = sub_268C159FC();
  v7 = sub_268C15DEC();
  if (OUTLINED_FUNCTION_13_7(v7))
  {
    v8 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_14_7(v8);
    OUTLINED_FUNCTION_9_9(&dword_268BAD000, v9, v10, "PlaybackControlling#hasResumableContent default implementation should not be used");
    OUTLINED_FUNCTION_16_2();
  }

  v11 = OUTLINED_FUNCTION_6_15();
  v12(v11);
  v1(0);
  OUTLINED_FUNCTION_14_3();
}

uint64_t OUTLINED_FUNCTION_4_13()
{
  *(v0 - 80) = 0x8000000000000060;
  *(v0 - 72) = 1;
  return v0 - 80;
}

uint64_t OUTLINED_FUNCTION_7_12()
{
  *(v0 - 96) = 0x8000000000000060;
  *(v0 - 88) = 1;
  return v0 - 96;
}

void OUTLINED_FUNCTION_9_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_10_12(void *a1)
{

  _os_log_impl(a1, v2, v3, v1, v4, 2u);
}

BOOL OUTLINED_FUNCTION_13_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return sub_268C15A1C();
}

BOOL OUTLINED_FUNCTION_16_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_17_8()
{

  JUMPOUT(0x26D628010);
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return sub_268C15A1C();
}

uint64_t OUTLINED_FUNCTION_20_5()
{

  return sub_268C15A1C();
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return sub_268C15A1C();
}

dispatch_semaphore_t sub_268C0A370()
{
  result = dispatch_semaphore_create(0);
  qword_2802CE948 = result;
  return result;
}

uint64_t *sub_268C0A394()
{
  if (qword_2802CDBF8 != -1)
  {
    OUTLINED_FUNCTION_7_13(&qword_2802CDBF8);
  }

  return &qword_2802CE948;
}

id static TailspinHelper.tailspinSem.getter()
{
  if (qword_2802CDBF8 != -1)
  {
    OUTLINED_FUNCTION_7_13(&qword_2802CDBF8);
  }

  v1 = qword_2802CE948;

  return v1;
}

id sub_268C0A420@<X0>(void *a1@<X8>)
{
  sub_268C0A394();
  v2 = qword_2802CE948;
  *a1 = qword_2802CE948;

  return v2;
}

void sub_268C0A460(id *a1)
{
  v1 = *a1;
  sub_268C0A394();
  v2 = qword_2802CE948;
  qword_2802CE948 = v1;
}

uint64_t sub_268C0A4A8()
{
  v7 = sub_268C15E4C();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268C15E1C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_268C15AAC();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_268C089BC();
  sub_268C15A9C();
  v8 = MEMORY[0x277D84F90];
  sub_268BC1148(&qword_2802CE070, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE078, &unk_268C177B0);
  sub_268BC1190(&unk_2802CE080, &qword_2802CE078, &unk_268C177B0);
  sub_268C15FCC();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_268C15E8C();
  qword_2802CE960 = result;
  return result;
}

void static TailspinHelper.setTrialPolicy(data:)()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_268C15A5C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  v23 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  v15 = v14 - v13;
  if (qword_2802CDC00 != -1)
  {
    OUTLINED_FUNCTION_1_14(&qword_2802CDC00);
  }

  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = v3;
  v16[4] = v0;
  OUTLINED_FUNCTION_2_11(v16);
  OUTLINED_FUNCTION_6_2(COERCE_DOUBLE(1107296256));
  v24[2] = v17;
  v24[3] = &block_descriptor_6;
  v18 = _Block_copy(v24);
  sub_268C0AA4C(v5, v3);
  sub_268C15A6C();
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v19, v20, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  v21 = sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_8_14(v21);
  v22 = OUTLINED_FUNCTION_10_13();
  MEMORY[0x26D627440](v22);
  _Block_release(v18);
  (*(v8 + 8))(v1, v6);
  (*(v11 + 8))(v15, v23);

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268C0A940(uint64_t a1, unint64_t a2)
{
  v2 = qword_2802CE950;
  v3 = qword_2802CE958;
  qword_2802CE950 = a1;
  qword_2802CE958 = a2;
  sub_268C0AA4C(a1, a2);

  return sub_268C0D51C(v2, v3);
}

uint64_t sub_268C0A988()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_268C0A9D0(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268C0A9D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268C0AA4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268C0AA60(a1, a2);
  }

  return a1;
}

uint64_t sub_268C0AA60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static TailspinHelper.doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin(tailspinList:)(uint64_t a1)
{
  if (qword_2802CDC00 != -1)
  {
    a1 = OUTLINED_FUNCTION_1_14(&qword_2802CDC00);
  }

  MEMORY[0x28223BE20](a1);
  sub_268C15E6C();
  return v2;
}

uint64_t sub_268C0AB6C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v76 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE978, &qword_268C1A548);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v66 - v3;
  v5 = sub_268C159AC();
  v77 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v75 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - v8;
  v10 = sub_268C15A1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  MEMORY[0x28223BE20](v18);
  v21 = &v66 - v20;
  v22 = qword_2802CE958;
  if (qword_2802CE958 >> 60 == 15)
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v23 = v10;
    v24 = __swift_project_value_buffer(v10, qword_2802D2F10);
    v25 = v11;
    (*(v11 + 16))(v21, v24, v23);
    v26 = sub_268C159FC();
    v27 = sub_268C15DDC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_268BAD000, v26, v27, "TailspinHelper#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin no policy, returning false", v28, 2u);
      MEMORY[0x26D628010](v28, -1, -1);
    }

    result = (*(v25 + 8))(v21, v23);
LABEL_23:
    v64 = 0;
    goto LABEL_24;
  }

  v71 = v9;
  v72 = v19;
  v30 = qword_2802CE950;
  sub_268C1598C();
  sub_268C0AA60(v30, v22);
  v73 = v30;
  v74 = v22;
  sub_268C1597C();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_268BC4CFC(v4, &qword_2802CE978, &qword_268C1A548);
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v10, qword_2802D2F10);
    v32 = v11;
    (*(v11 + 16))(v17, v31, v10);
    v33 = sub_268C159FC();
    v34 = sub_268C15DDC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_268BAD000, v33, v34, "TailspinHelper#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin no parseable policy, returning false", v35, 2u);
      MEMORY[0x26D628010](v35, -1, -1);
    }

    sub_268C0D51C(v73, v74);

    result = (*(v32 + 8))(v17, v10);
    goto LABEL_23;
  }

  v36 = v77;
  v37 = v71;
  (*(v77 + 32))(v71, v4, v5);
  v38 = *(sub_268C1599C() + 16);

  v39 = v5;
  v40 = v10;
  if (!v38)
  {
    v58 = v11;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v59 = __swift_project_value_buffer(v10, qword_2802D2F10);
    (*(v11 + 16))(v13, v59, v10);
    v60 = sub_268C159FC();
    v61 = sub_268C15DDC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_268BAD000, v60, v61, "TailspinHelper#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin tailspin list is empty", v62, 2u);
      v63 = v62;
      v37 = v71;
      MEMORY[0x26D628010](v63, -1, -1);
    }

    sub_268C0D51C(v73, v74);

    (*(v58 + 8))(v13, v10);
    result = (*(v36 + 8))(v37, v39);
    goto LABEL_23;
  }

  v41 = v11;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v40, qword_2802D2F10);
  (*(v11 + 16))(v72, v42, v40);
  v43 = v75;
  (*(v36 + 16))(v75, v37, v39);
  v44 = v36;
  v45 = sub_268C159FC();
  v46 = sub_268C15DDC();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v67 = v47;
    v69 = swift_slowAlloc();
    v79 = v69;
    *v47 = 136315138;
    v68 = v46;
    sub_268C1599C();
    v66 = MEMORY[0x26D6272E0]();
    v70 = v40;
    v48 = v43;
    v49 = v39;
    v51 = v50;

    v52 = *(v44 + 8);
    v52(v48, v49);
    v53 = v52;
    v54 = sub_268BB3D28(v66, v51, &v79);
    v39 = v49;

    v55 = v67;
    *(v67 + 1) = v54;
    _os_log_impl(&dword_268BAD000, v45, v68, "TailspinHelper#doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin tailspins supported: %s", v55, 0xCu);
    v56 = v69;
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x26D628010](v56, -1, -1);
    MEMORY[0x26D628010](v55, -1, -1);

    v57 = v53;
    (*(v41 + 8))(v72, v70);
  }

  else
  {

    v57 = *(v44 + 8);
    v57(v43, v39);
    (*(v41 + 8))(v72, v40);
  }

  v65 = sub_268C1599C();
  sub_268C0D51C(v73, v74);
  v57(v37, v39);
  *v76 = v65;

  v64 = 1;
LABEL_24:
  *v78 = v64;
  return result;
}

void static TailspinHelper.collectAnyExtraFiles(filePathsAndExtensions:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v128[1] = *MEMORY[0x277D85DE8];
  v2 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_11();
  v103 = v6;
  OUTLINED_FUNCTION_14_8();
  MEMORY[0x28223BE20](v7);
  v105 = &v99 - v8;
  OUTLINED_FUNCTION_14_8();
  MEMORY[0x28223BE20](v9);
  v11 = &v99 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE968, qword_268C1A4F8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v99 - v13;
  v15 = sub_268C1528C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_11();
  v117 = v17;
  OUTLINED_FUNCTION_14_8();
  MEMORY[0x28223BE20](v18);
  v126 = &v99 - v19;
  OUTLINED_FUNCTION_14_8();
  MEMORY[0x28223BE20](v20);
  v115 = &v99 - v22;
  v24 = v1 + 64;
  v23 = *(v1 + 64);
  v25 = 1 << *(v1 + 32);
  v26 = -1;
  v127 = MEMORY[0x277D84F90];
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v121 = v26 & v23;
  v120 = (v21 + 32);
  v123 = v21 + 16;
  v124 = v21;
  v122 = (v21 + 8);
  v110 = v4 + 16;
  v111 = (v4 + 8);
  v27 = (v25 + 63) >> 6;

  v28 = 0;
  v102 = 0;
  *&v29 = 136315138;
  v104 = v29;
  *&v29 = 136315650;
  v101 = v29;
  v125 = v15;
  v113 = v27;
  v114 = v1 + 64;
  v107 = v2;
  v109 = v1;
  v106 = v11;
  v108 = v14;
LABEL_4:
  while (2)
  {
    v30 = v121;
    if (v121)
    {
LABEL_9:
      v121 = (v30 - 1) & v30;
      v32 = (v28 << 10) | (16 * __clz(__rbit64(v30)));
      v33 = (*(v1 + 48) + v32);
      v35 = *v33;
      v34 = v33[1];
      v36 = (*(v1 + 56) + v32);
      v37 = *v36;
      v38 = v36[1];

      v116 = v35;
      sub_268C1527C();
      if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
      {

        sub_268BC4CFC(v14, &qword_2802CE968, qword_268C1A4F8);
LABEL_39:
        v27 = v113;
        v24 = v114;
        continue;
      }

      v112 = v34;
      v118 = *v120;
      (v118)(v115, v14, v15);
      v39 = [objc_opt_self() defaultManager];
      v40 = v15;
      v41 = sub_268C1526C();
      v128[0] = 0;
      v42 = [v39 contentsOfDirectoryAtURL:v41 includingPropertiesForKeys:0 options:0 error:v128];

      v43 = v128[0];
      if (!v42)
      {
        v75 = v128[0];

        v76 = sub_268C1524C();

        swift_willThrow();
        if (qword_2802CDBE0 != -1)
        {
          OUTLINED_FUNCTION_5_13();
          swift_once();
        }

        __swift_project_value_buffer(v2, qword_2802D2F10);
        OUTLINED_FUNCTION_9_10();
        v77 = v103;
        v78(v103);
        v79 = v112;

        v80 = sub_268C159FC();
        v81 = sub_268C15DEC();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v128[0] = v83;
          *v82 = v104;
          v84 = v2;
          v85 = sub_268BB3D28(v116, v79, v128);

          *(v82 + 4) = v85;
          v2 = v84;
          v86 = v111;
          _os_log_impl(&dword_268BAD000, v80, v81, "TailspinHelper#collectAnyExtraFiles error fetching attachment(s) for directory: %s", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();

          (*v86)(v77, v84);
        }

        else
        {

          OUTLINED_FUNCTION_11_9();
          v87(v77, v2);
        }

        v15 = v125;
        (*v122)(v115, v125);
        v102 = 0;
        v1 = v109;
        v14 = v108;
        goto LABEL_39;
      }

      v2 = sub_268C15D0C();
      v44 = v43;

      v45 = 0;
      v46 = *(v2 + 16);
      v119 = MEMORY[0x277D84F90];
      v15 = v40;
      while (1)
      {
        while (1)
        {
          if (v46 == v45)
          {

            if (qword_2802CDBE0 != -1)
            {
              OUTLINED_FUNCTION_5_13();
              swift_once();
            }

            v2 = v107;
            __swift_project_value_buffer(v107, qword_2802D2F10);
            OUTLINED_FUNCTION_9_10();
            v58 = v106;
            v59(v106);
            v60 = v119;
            swift_retain_n();
            v61 = v112;

            v62 = sub_268C159FC();
            v63 = sub_268C15DDC();

            v118 = v62;
            v64 = os_log_type_enabled(v62, v63);
            v14 = v108;
            if (v64)
            {
              v65 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v128[0] = v100;
              *v65 = v101;
              v66 = sub_268BB3D28(v116, v61, v128);
              LODWORD(v116) = v63;
              v67 = v2;
              v68 = v66;

              *(v65 + 4) = v68;
              v2 = v67;
              *(v65 + 12) = 2080;
              v69 = sub_268BB3D28(v37, v38, v128);

              *(v65 + 14) = v69;
              *(v65 + 22) = 2048;
              v70 = *(v60 + 16);

              *(v65 + 24) = v70;

              v71 = v118;
              _os_log_impl(&dword_268BAD000, v118, v116, "TailspinHelper#collectAnyExtraFiles looking in %s, for %s extensions, found %ld", v65, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_30();
              v15 = v125;
              OUTLINED_FUNCTION_30();

              OUTLINED_FUNCTION_11_9();
              v73 = v58;
              v74 = v67;
            }

            else
            {

              OUTLINED_FUNCTION_11_9();
              v73 = v58;
              v74 = v2;
            }

            v72(v73, v74);
            v27 = v113;
            sub_268BB0664(v60);
            (*v122)(v115, v15);
            v1 = v109;
            v24 = v114;
            goto LABEL_4;
          }

          if (v45 >= *(v2 + 16))
          {
            __break(1u);
            goto LABEL_45;
          }

          v47 = (*(v124 + 80) + 32) & ~*(v124 + 80);
          v48 = *(v124 + 72);
          (*(v124 + 16))(v126, v2 + v47 + v48 * v45, v15);
          if (sub_268C1525C() != v37 || v49 != v38)
          {
            break;
          }

LABEL_22:
          (v118)(v117, v126, v125);
          v52 = v119;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v128[0] = v52;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_268BB4AF8(0, v52[2] + 1, 1);
            v52 = v128[0];
          }

          v55 = v52[2];
          v54 = v52[3];
          v56 = (v55 + 1);
          if (v55 >= v54 >> 1)
          {
            v119 = (v55 + 1);
            sub_268BB4AF8(v54 > 1, v55 + 1, 1);
            v56 = v119;
            v52 = v128[0];
          }

          ++v45;
          v52[2] = v56;
          v119 = v52;
          v57 = v52 + v47 + v55 * v48;
          v15 = v125;
          (v118)(v57, v117, v125);
        }

        v51 = sub_268C1618C();

        if (v51)
        {
          goto LABEL_22;
        }

        v15 = v125;
        (*v122)(v126, v125);
        ++v45;
      }
    }

    break;
  }

  while (1)
  {
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v31 >= v27)
    {
      break;
    }

    v30 = *(v24 + 8 * v31);
    ++v28;
    if (v30)
    {
      v28 = v31;
      goto LABEL_9;
    }
  }

  if (qword_2802CDBE0 == -1)
  {
    goto LABEL_41;
  }

LABEL_46:
  OUTLINED_FUNCTION_5_13();
  swift_once();
LABEL_41:
  __swift_project_value_buffer(v2, qword_2802D2F10);
  OUTLINED_FUNCTION_9_10();
  v88 = v105;
  v89(v105);
  v90 = v127;

  v91 = sub_268C159FC();
  v92 = sub_268C15DCC();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v128[0] = v94;
    *v93 = v104;
    v95 = MEMORY[0x26D6272E0](v90, v15);
    v97 = sub_268BB3D28(v95, v96, v128);

    *(v93 + 4) = v97;
    _os_log_impl(&dword_268BAD000, v91, v92, "TailspinHelper#collectAnyExtraFiles: %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v94);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  OUTLINED_FUNCTION_11_9();
  v98(v88, v2);
  OUTLINED_FUNCTION_32_0();
}

void static TailspinHelper.generateTailSpinIfPolicyAndErrorAllow(tailspinList:errorDescription:suiteName:)()
{
  OUTLINED_FUNCTION_31_0();
  v28 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_268C15A5C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_0();
  v29 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_0();
  v21 = v20 - v19;
  if (qword_2802CDC00 != -1)
  {
    OUTLINED_FUNCTION_1_14(&qword_2802CDC00);
  }

  v22 = swift_allocObject();
  v22[2] = v11;
  v22[3] = v9;
  v22[4] = v7;
  v22[5] = v28;
  v22[6] = v5;
  v22[7] = v3;
  OUTLINED_FUNCTION_2_11(v22);
  OUTLINED_FUNCTION_6_2(COERCE_DOUBLE(1107296256));
  v30[2] = v23;
  v30[3] = &block_descriptor_6;
  v24 = _Block_copy(v30);

  sub_268C15A6C();
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v25, v26, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  sub_268C15FCC();
  v27 = OUTLINED_FUNCTION_10_13();
  MEMORY[0x26D627440](v27);
  _Block_release(v24);
  (*(v14 + 8))(v1, v12);
  (*(v17 + 8))(v21, v29);

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268C0C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a5;
  v55 = a6;
  v53 = a4;
  v61 = a2;
  v62 = a3;
  v7 = sub_268C15A1C();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v52 - v11;
  v12 = 0;
  v13 = *(a1 + 16);
  v57 = a1;
  v14 = a1 + 40;
  v60 = MEMORY[0x277D84F90];
  v56 = a1 + 40;
LABEL_2:
  v15 = (v14 + 16 * v12);
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      swift_once();
LABEL_15:
      v25 = v13 - 32;
      v26 = v59;
      v27 = __swift_project_value_buffer(v59, qword_2802D2F10);
      v28 = v52;
      (v15[2])(v52, v27, v26);

      v29 = v62;

      v30 = sub_268C159FC();
      v31 = sub_268C15DDC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v60 = v25;
        v33 = v32;
        v34 = swift_slowAlloc();
        v65[0] = v34;
        *v33 = 136315394;
        v35 = MEMORY[0x26D6272E0](v12, MEMORY[0x277D837D0]);
        v37 = sub_268BB3D28(v35, v36, v65);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_268BB3D28(v61, v29, v65);
        _os_log_impl(&dword_268BAD000, v30, v31, "TailspinHelper#generateTailSpinIfPolicyAndErrorAllow collecting tailspin for list: %s and errorDescription: %s", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D628010](v34, -1, -1);
        MEMORY[0x26D628010](v33, -1, -1);
      }

      (v15[1])(v28, v26);
      v38 = v53;
      *(swift_allocObject() + 16) = v38;
      sub_268C158FC();
    }

    if (__OFADD__(v12, 1))
    {
      goto LABEL_24;
    }

    v16 = v9;
    v18 = *(v15 - 1);
    v17 = *v15;
    v65[0] = v61;
    v65[1] = v62;
    v63 = v18;
    v64 = v17;
    sub_268BB9A64();

    if (sub_268C15F7C())
    {
      v19 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268BB4AB8(0, *(v19 + 2) + 1, 1);
        v19 = v66;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_268BB4AB8((v21 > 1), v22 + 1, 1);
        v19 = v66;
      }

      *(v19 + 2) = v22 + 1;
      v60 = v19;
      v23 = &v19[16 * v22];
      *(v23 + 4) = v18;
      *(v23 + 5) = v17;
      ++v12;
      v9 = v16;
      v14 = v56;
      goto LABEL_2;
    }

    ++v12;
    v15 += 2;
    v9 = v16;
  }

  v24 = *(v60 + 2);

  if (v24)
  {
    byte_2802CE940 = 1;
    v13 = "Music-Timeout-Error-V5";
    v12 = v57;
    v15 = v58;
    if (qword_2802CDBE0 != -1)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v41 = v57;
  v40 = v58;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v42 = v59;
  v43 = __swift_project_value_buffer(v59, qword_2802D2F10);
  (v40[2])(v9, v43, v42);

  v44 = v62;

  v45 = sub_268C159FC();
  v46 = sub_268C15DDC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v65[0] = v48;
    *v47 = 136315394;
    v49 = MEMORY[0x26D6272E0](v41, MEMORY[0x277D837D0]);
    v51 = sub_268BB3D28(v49, v50, v65);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_268BB3D28(v61, v44, v65);
    _os_log_impl(&dword_268BAD000, v45, v46, "TailspinHelper#generateTailSpinIfPolicyAndErrorAllow no op, with tailspinList: %s and errorDescription: '%s'", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D628010](v48, -1, -1);
    MEMORY[0x26D628010](v47, -1, -1);
  }

  result = (v40[1])(v9, v42);
  byte_2802CE940 = 0;
  return result;
}

void sub_268C0C760(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  if ((a1 & 1) != 0 && a3)
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_2802D2F10);
    (*(v7 + 16))(v12, v13, v6);

    v14 = sub_268C159FC();
    v15 = sub_268C15DFC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_268BB3D28(a2, a3, &v24);
      _os_log_impl(&dword_268BAD000, v14, v15, "TailspinHelper#generateTailSpinIfPolicyAndErrorAllow createTailSpinFile generated: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x26D628010](v17, -1, -1);
      MEMORY[0x26D628010](v16, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v6, qword_2802D2F10);
    (*(v7 + 16))(v9, v18, v6);
    v19 = sub_268C159FC();
    v20 = sub_268C15DEC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_268BAD000, v19, v20, "TailspinHelper#generateTailSpinIfPolicyAndErrorAllow failed to create tailspin file", v21, 2u);
      MEMORY[0x26D628010](v21, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  if (qword_2802CDBF8 != -1)
  {
    swift_once();
  }

  v22 = qword_2802CE948;
  sub_268C15EDC();
}

void static TailspinHelper.getAllTailspins(suiteName:completion:)()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268C15A5C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  v27 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_0();
  v19 = v18 - v17;
  if (qword_2802CDC00 != -1)
  {
    OUTLINED_FUNCTION_1_14(&qword_2802CDC00);
  }

  v20 = swift_allocObject();
  v20[2] = v9;
  v20[3] = v7;
  v20[4] = v0;
  v20[5] = v5;
  v20[6] = v3;
  OUTLINED_FUNCTION_2_11(v20);
  OUTLINED_FUNCTION_6_2(COERCE_DOUBLE(1107296256));
  v28[2] = v21;
  v28[3] = &block_descriptor_12;
  v22 = _Block_copy(v28);

  sub_268C15A6C();
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v23, v24, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  v25 = sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_8_14(v25);
  v26 = OUTLINED_FUNCTION_10_13();
  MEMORY[0x26D627440](v26);
  _Block_release(v22);
  (*(v12 + 8))(v1, v10);
  (*(v15 + 8))(v19, v27);

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268C0CD08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v59 = a5;
  v60 = a4;
  v56 = sub_268C15A3C();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_268C15ADC();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v48 - v10;
  v11 = sub_268C15A1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v57 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  type metadata accessor for TailspinHelper();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE970, &qword_268C1A540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v61 = sub_268C1590C();
  v62 = v21;

  MEMORY[0x26D627230](a1, a2);

  v22 = v62;
  *(inited + 32) = v61;
  *(inited + 40) = v22;
  *(inited + 48) = 0x6E6970736C696174;
  *(inited + 56) = 0xE800000000000000;
  sub_268C15B7C();
  static TailspinHelper.collectAnyExtraFiles(filePathsAndExtensions:)();
  v24 = v23;

  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v11, qword_2802D2F10);
  v58 = *(v12 + 16);
  v58(v19, v25, v11);

  v26 = sub_268C159FC();
  v27 = sub_268C15DFC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = *(v24 + 16);

    _os_log_impl(&dword_268BAD000, v26, v27, "TailspinHelper#getAllTailspins count: %ld", v28, 0xCu);
    MEMORY[0x26D628010](v28, -1, -1);
  }

  else
  {
  }

  v29 = *(v12 + 8);
  v29(v19, v11);
  if (byte_2802CE940 == 1)
  {
    v58(v16, v25, v11);
    v30 = sub_268C159FC();
    v31 = sub_268C15DFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = 20;
      _os_log_impl(&dword_268BAD000, v30, v31, "TailspinHelper#getAllTailspins waiting up to %ld seconds for tailspin file creation to complete", v32, 0xCu);
      MEMORY[0x26D628010](v32, -1, -1);
    }

    v49 = v25;

    v48 = v29;
    v29(v16, v11);
    if (qword_2802CDBF8 != -1)
    {
      swift_once();
    }

    v33 = qword_2802CE948;
    v34 = v50;
    sub_268C15ABC();
    v35 = v52;
    *v52 = 20;
    v36 = v54;
    v37 = v56;
    (*(v54 + 104))(v35, *MEMORY[0x277D85188], v56);
    v38 = v51;
    MEMORY[0x26D6270F0](v34, v35);
    (*(v36 + 8))(v35, v37);
    v39 = *(v53 + 8);
    v40 = v34;
    v41 = v55;
    v39(v40, v55);
    sub_268C15EBC();

    v39(v38, v41);
    v42 = sub_268C15A4C();
    v43 = v57;
    v58(v57, v49, v11);
    v44 = sub_268C159FC();
    v45 = sub_268C15DFC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = v42 & 1;
      _os_log_impl(&dword_268BAD000, v44, v45, "TailspinHelper#getAllTailspins notification received: %{BOOL}d", v46, 8u);
      MEMORY[0x26D628010](v46, -1, -1);
    }

    v48(v43, v11);
  }

  v60(v24);
}

uint64_t sub_268C0D3C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_268C0D3F8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_268C0D450()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268C0D51C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268C0A9D0(a1, a2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_14(uint64_t a1)
{

  return sub_268C15FCC();
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_268C15AAC();
}

uint64_t sub_268C0D638@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE980, &qword_268C1A560);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_268C157DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C157CC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    result = sub_268C0D808(v4);
    *a1 = 0;
    *(a1 + 8) = -1;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (qword_2802CDC08 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_268C0F3A0(qword_2802D2F38, a1);
    swift_endAccess();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_268C0D808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE980, &qword_268C1A560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268C0D870()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE988, &qword_268C1A568);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE990, qword_268C1A570) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_268C1A550;
  v3 = v38 + v2 + v0[14];
  v4 = *MEMORY[0x277D5EC48];
  v5 = sub_268C157DC();
  v6 = *(*(v5 - 8) + 104);
  (v6)(v38 + v2, v4, v5);
  *v3 = 1;
  *(v3 + 8) = 0;
  v7 = v38 + v2 + v1 + v0[14];
  v6();
  *v7 = 1;
  *(v7 + 8) = 0;
  v8 = v38 + v2 + 2 * v1 + v0[14];
  v6();
  *v8 = 1;
  *(v8 + 8) = 0;
  v9 = v38 + v2 + 3 * v1 + v0[14];
  v6();
  *v9 = 2;
  *(v9 + 8) = 0;
  v10 = v38 + v2 + 4 * v1 + v0[14];
  v6();
  *v10 = 3;
  *(v10 + 8) = 0;
  v11 = v38 + v2 + 5 * v1 + v0[14];
  v6();
  *v11 = 4;
  *(v11 + 8) = 0;
  v12 = v38 + v2 + 6 * v1 + v0[14];
  v6();
  *v12 = 5;
  *(v12 + 8) = 0;
  v13 = v38 + v2 + 7 * v1 + v0[14];
  v6();
  *v13 = 6;
  *(v13 + 8) = 0;
  v14 = v38 + v2 + 8 * v1 + v0[14];
  v6();
  *v14 = 7;
  *(v14 + 8) = 0;
  v15 = v38 + v2 + 9 * v1 + v0[14];
  v6();
  *v15 = 8;
  *(v15 + 8) = 0;
  v16 = v38 + v2 + 10 * v1 + v0[14];
  v6();
  *v16 = 9;
  *(v16 + 8) = 0;
  v17 = v38 + v2 + 11 * v1 + v0[14];
  v6();
  *v17 = 10;
  *(v17 + 8) = 0;
  v18 = v38 + v2 + 12 * v1 + v0[14];
  v6();
  *v18 = 11;
  *(v18 + 8) = 0;
  v19 = v38 + v2 + 13 * v1 + v0[14];
  v6();
  *v19 = 12;
  *(v19 + 8) = 0;
  v20 = v38 + v2 + 14 * v1 + v0[14];
  v6();
  *v20 = 13;
  *(v20 + 8) = 0;
  v21 = v38 + v2 + 15 * v1 + v0[14];
  v6();
  *v21 = 14;
  *(v21 + 8) = 0;
  v22 = v38 + v2 + 16 * v1 + v0[14];
  v6();
  *v22 = 15;
  *(v22 + 8) = 0;
  v23 = v38 + v2 + 17 * v1 + v0[14];
  v6();
  *v23 = 16;
  *(v23 + 8) = 0;
  v24 = v38 + v2 + 18 * v1 + v0[14];
  v6();
  *v24 = 17;
  *(v24 + 8) = 0;
  v25 = v38 + v2 + 19 * v1 + v0[14];
  v6();
  *v25 = 18;
  *(v25 + 8) = 0;
  v26 = v38 + v2 + 20 * v1 + v0[14];
  v6();
  *v26 = 19;
  *(v26 + 8) = 0;
  v27 = v38 + v2 + 21 * v1 + v0[14];
  v6();
  *v27 = 20;
  *(v27 + 8) = 0;
  v28 = v38 + v2 + 22 * v1 + v0[14];
  v6();
  *v28 = 21;
  *(v28 + 8) = 0;
  v29 = v38 + v2 + 23 * v1 + v0[14];
  v6();
  *v29 = 22;
  *(v29 + 8) = 0;
  v30 = v38 + v2 + 24 * v1 + v0[14];
  v6();
  *v30 = 23;
  *(v30 + 8) = 0;
  v31 = v38 + v2 + 25 * v1 + v0[14];
  v6();
  *v31 = 24;
  *(v31 + 8) = 0;
  v32 = v38 + v2 + 26 * v1 + v0[14];
  v6();
  *v32 = 25;
  *(v32 + 8) = 0;
  v33 = v38 + v2 + 27 * v1 + v0[14];
  v6();
  *v33 = 3;
  *(v33 + 8) = 1;
  v34 = v38 + v2 + 28 * v1 + v0[14];
  v6();
  *v34 = 2;
  *(v34 + 8) = 1;
  v35 = v38 + v2 + 29 * v1 + v0[14];
  v6();
  *v35 = 1;
  *(v35 + 8) = 1;
  v36 = v38 + v2 + 30 * v1 + v0[14];
  v6();
  *v36 = 1;
  *(v36 + 8) = 1;
  sub_268C0E018();
  result = sub_268C15B7C();
  qword_2802D2F38 = result;
  return result;
}

unint64_t sub_268C0E018()
{
  result = qword_2802CE228;
  if (!qword_2802CE228)
  {
    sub_268C157DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE228);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x3A)
  {
    if (a2 + 198 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 198) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 199;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC7;
  v5 = v6 - 199;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ControlsError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 198 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 198) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3A)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x39)
  {
    v6 = ((a2 - 58) >> 8) + 1;
    *result = a2 - 58;
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
        JUMPOUT(0x268C0E1C4);
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
          *result = a2 - 58;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268C0E200()
{
  result = qword_2802CE998;
  if (!qword_2802CE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE998);
  }

  return result;
}

uint64_t sub_268C0E254(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v84 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = (&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = a5;
  v89 = a4;
  if (a3)
  {
    v16 = MEMORY[0x277CC8838];
    v17 = sub_268C0E9D4(a4, a5, MEMORY[0x277CC8838]);
    v18 = MEMORY[0x277CC8830];
    sub_268C0E9D4(v17, v19, MEMORY[0x277CC8830]);
    v5 = v20;

    v21 = sub_268C15C1C();
    a5 = v22;

    v23 = sub_268C0E9D4(a1, a2, v16);
    sub_268C0E9D4(v23, v24, v18);
    v25 = v21;

    a1 = sub_268C15C1C();
  }

  else
  {

    v25 = a4;
  }

  v26 = sub_268C15C4C();
  v27 = sub_268C15C4C();
  v28 = v27;
  if (v26 < 1 || v27 <= 0)
  {

    if (v28 <= v26)
    {
      return v26;
    }

    else
    {
      return v28;
    }
  }

  if (__OFADD__(v27, 1))
  {
    goto LABEL_83;
  }

  v31 = sub_268C0EB14(0, v27 + 1);
  if (__OFADD__(v26, 1))
  {
    goto LABEL_84;
  }

  v87 = v28;
  v32 = sub_268C0EBB8(v31, v26 + 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_85;
  }

  while (1)
  {
    if (*(v32 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v28 = *(v32 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 40) = v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_1_15();
    *(v32 + 40) = v80;
LABEL_17:
    if (v28[2])
    {
      v86 = v25;
      v25 = a5;
      v90 = v32;
      v28[4] = 1;
      v34 = v26 - 1;
      if (v26 != 1)
      {
        a5 = v90 + 48;
        v5 = 2;
        while (v5 < *(v90 + 16))
        {
          v28 = *a5;
          v75 = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v28;
          if ((v75 & 1) == 0)
          {
            OUTLINED_FUNCTION_1_15();
            *a5 = v76;
          }

          if (!v28[2])
          {
            goto LABEL_80;
          }

          v28[4] = v5++;
          a5 += 8;
          if (!--v34)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

LABEL_19:
      v5 = v90;
      if (*(v90 + 16))
      {
        v83 = v15;
        v15 = (v90 + 32);
        v28 = *(v90 + 32);
        v35 = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + 32) = v28;
        if (v35)
        {
          goto LABEL_21;
        }

        goto LABEL_90;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_90:
    OUTLINED_FUNCTION_1_15();
LABEL_21:
    v36 = v87;
    if (v28[2] < 2uLL)
    {
      __break(1u);
LABEL_92:
      swift_once();
      goto LABEL_52;
    }

    v28[5] = 1;
    *v15 = v28;
    v37 = v36 - 1;
    if (v36 == 1)
    {
      break;
    }

    a5 = 6;
    while (*(v5 + 16))
    {
      v28 = *v15;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      *v15 = v28;
      if ((v77 & 1) == 0)
      {
        OUTLINED_FUNCTION_1_15();
        *v15 = v78;
      }

      if ((a5 - 4) >= v28[2])
      {
        goto LABEL_82;
      }

      v28[a5] = a5 - 4;
      ++a5;
      if (!--v37)
      {
        goto LABEL_23;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    sub_268C0EC64();
    v32 = v79;
  }

LABEL_23:
  v82 = v11;
  v38 = 1;
  v85 = v26;
  while (2)
  {
    v39 = 0;
    v40 = v38 - 1;
    do
    {
      sub_268C15C5C();
      v41 = sub_268C15C8C();
      v43 = v42;
      sub_268C15C5C();
      v45 = v41 == sub_268C15C8C() && v43 == v44;
      if (v45)
      {

        v47 = 0;
      }

      else
      {
        v46 = sub_268C1618C();

        v47 = (v46 & 1) == 0;
      }

      v48 = *(v90 + 16);
      if (v38 > v48)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v49 = v15[v40];
      if (v39 + 1 >= *(v49 + 2))
      {
        goto LABEL_69;
      }

      v50 = v49 + 8 * v39;
      v51 = *(v50 + 40);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_70;
      }

      if (v38 >= v48)
      {
        goto LABEL_71;
      }

      v54 = v15[v38];
      if (v39 >= *(v54 + 2))
      {
        goto LABEL_72;
      }

      v55 = *(v54 + v39 + 4);
      v52 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v52)
      {
        goto LABEL_73;
      }

      v57 = *(v50 + 32);
      v52 = __OFADD__(v57, v47);
      v58 = v57 + v47;
      if (v52)
      {
        goto LABEL_74;
      }

      if (v56 < v53)
      {
        v53 = v56;
      }

      if (v58 >= v53)
      {
        v59 = v53;
      }

      else
      {
        v59 = v58;
      }

      v60 = swift_isUniquelyReferenced_nonNull_native();
      v15[v38] = v54;
      if ((v60 & 1) == 0)
      {
        sub_268C0EC50();
        v54 = v61;
        v15[v38] = v61;
      }

      if (v39 + 1 >= *(v54 + 2))
      {
        goto LABEL_75;
      }

      *(v54 + v39++ + 5) = v59;
    }

    while (v87 != v39);
    v45 = v38++ == v85;
    if (!v45)
    {
      continue;
    }

    break;
  }

  v62 = sub_268BF9D94(v90);
  if (v62)
  {
    v63 = sub_268BF9DC8(v62);
    v65 = v64;

    if ((v65 & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  if (qword_2802CDBE0 != -1)
  {
    goto LABEL_92;
  }

LABEL_52:
  a1 = v82;
  v66 = __swift_project_value_buffer(v82, qword_2802D2F10);
  v38 = v83;
  v15 = v84;
  (v84[2])(v83, v66, a1);
  v40 = sub_268C159FC();
  v67 = sub_268C15DFC();
  v68 = os_log_type_enabled(v40, v67);
  v69 = v90;
  if (!v68)
  {
LABEL_76:

    v15[1](v38, a1);

    return 99;
  }

  v70 = swift_slowAlloc();
  v71 = swift_slowAlloc();
  v92 = v71;
  *v70 = 136315394;
  v91 = sub_268BF9D94(v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE9A0, &qword_268C1A658);
  v72 = sub_268C15C0C();
  v74 = sub_268BB3D28(v72, v73, &v92);

  *(v70 + 4) = v74;
  *(v70 + 12) = 2048;
  v63 = 99;
  *(v70 + 14) = 99;
  _os_log_impl(&dword_268BAD000, v40, v67, "    Got nil value from %s.\n    Returning a big editDistanceValue: %ld", v70, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v71);
  MEMORY[0x26D628010](v71, -1, -1);
  MEMORY[0x26D628010](v70, -1, -1);

  v15[1](v38, a1);
LABEL_77:

  return v63;
}

uint64_t sub_268C0E9D4(uint64_t a1, uint64_t a2, void (*a3)(__n128))
{
  v6 = sub_268C1522C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  v16[1] = a2;
  a3(v10);
  sub_268BB9A64();
  v13 = sub_268C15F2C();
  (*(v8 + 8))(v12, v6);
  v16[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5B0, &qword_268C18770);
  sub_268BDCF60();
  v14 = sub_268C15B9C();

  return v14;
}

uint64_t sub_268C0EB14(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_268C15D4C();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_268C16D40)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_268C0EBB8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD10, &qword_268C170D8);
      v4 = sub_268C15D4C();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

void *static MRCommandIDHelper.ensureMRCommandIDInOptions(options:)(void *a1)
{
  v2 = sub_268C1531C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v47 = v9;
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  *&v50 = *MEMORY[0x277D27CE8];
  v15 = v50;
  v16 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  sub_268C1601C();
  sub_268C0F2AC(v52, a1, &v50);
  sub_268BDAE1C(v52);
  if (v51)
  {
    sub_268BD8290(&v50, v53);
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    v17 = v48;
    v18 = __swift_project_value_buffer(v48, qword_2802D2F10);
    v19 = v47;
    (*(v47 + 16))(v14, v18, v17);
    sub_268BB5B20(v53, v52);
    v20 = sub_268C159FC();
    v21 = sub_268C15DDC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = v23;
      *v22 = 136315138;
      sub_268BB5B20(v52, &v50);
      v24 = sub_268C15C0C();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_0(v52);
      v27 = sub_268BB3D28(v24, v26, &v49);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_268BAD000, v20, v21, "MRCommandIDHelper#ensureMRCommandID already have MR command ID: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v52);
    }

    (*(v19 + 8))(v14, v17);
    __swift_destroy_boxed_opaque_existential_0(v53);
  }

  else
  {
    v46 = v11;
    sub_268BE07E8(&v50);
    sub_268C1530C();
    v28 = sub_268C152EC();
    v30 = v29;
    v31 = v7;
    v32 = v28;
    (*(v4 + 8))(v31, v2);
    v49 = a1;

    v33 = sub_268C15BEC();
    v51 = sub_268C0F310();
    *&v50 = v33;
    *&v53[0] = v15;
    v34 = v16;
    sub_268C1601C();
    sub_268C0F744(&v50, v52, v53);
    sub_268BDAE1C(v52);
    sub_268BE07E8(v53);
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    v35 = v48;
    v36 = __swift_project_value_buffer(v48, qword_2802D2F10);
    v38 = v46;
    v37 = v47;
    (*(v47 + 16))(v46, v36, v35);

    v39 = sub_268C159FC();
    v40 = sub_268C15DDC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v52[0] = v42;
      *v41 = 136315138;
      v43 = sub_268BB3D28(v32, v30, v52);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_268BAD000, v39, v40, "MRCommandIDHelper#ensureMRCommandID generated MR command ID: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    else
    {
    }

    (*(v37 + 8))(v38, v35);
    return v49;
  }

  return a1;
}

unint64_t sub_268C0F1C0()
{
  result = qword_2802CDC80;
  if (!qword_2802CDC80)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CDC80);
  }

  return result;
}

void sub_268C0F218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_268BD99A0(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_3_14(v3);
    }
  }
}

void sub_268C0F264(uint64_t a1@<X1>, char *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_268BD9A18(), (v5 & 1) != 0))
  {
    v6 = *(*(a1 + 56) + v4);
  }

  else
  {
    v6 = 5;
  }

  *a2 = v6;
}

double sub_268C0F2AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_268BD9AE0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_268BB5B20(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_268C0F310()
{
  result = qword_2802CE9A8;
  if (!qword_2802CE9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802CE9A8);
  }

  return result;
}

uint64_t sub_268C0F354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_268BD99A0(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_14(v3);
  return swift_unknownObjectRetain();
}

void sub_268C0F3A0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_268BD9B24(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 16 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    *a2 = v7;
  }

  else
  {
    *a2 = 0;
    v8 = -1;
  }

  *(a2 + 8) = v8;
}

double sub_268C0F3F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_268BD99A0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_268BB5B20(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_268C0F48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a3(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_12(v4);

  return v3;
}

uint64_t sub_268C0F4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_268BD99A0(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for MediaGroup(0);
    sub_268BF24DC(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for MediaGroup(0);
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

void sub_268C0F58C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_268BD9C8C(a1);
    if (v3)
    {
      OUTLINED_FUNCTION_3_14(v2);
    }
  }
}

uint64_t sub_268C0F5D8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_268BD9BEC(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_14(v2);
}

uint64_t sub_268C0F624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268BD99A0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_12(v4);

  return v3;
}

uint64_t static MRCommandIDHelper.getMRCommandIDFromOptions(options:)(uint64_t a1)
{
  *&v6 = *MEMORY[0x277D27CE8];
  v2 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  sub_268C1601C();
  sub_268C0F2AC(v5, a1, &v6);
  sub_268BDAE1C(v5);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_268BE07E8(&v6);
    return 0;
  }
}

_OWORD *sub_268C0F744@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  v8 = sub_268BD9AE0(a2);
  if (__OFADD__(v17[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE9B0, qword_268C1A6A8);
  if (sub_268C1610C())
  {
    v12 = sub_268BD9AE0(a2);
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_268C161CC();
    __break(1u);
    return result;
  }

LABEL_5:
  v14 = v17;
  if (v11)
  {
    sub_268BD8290((v17[7] + 32 * v10), a3);
    result = sub_268BD8290(a1, (v17[7] + 32 * v10));
  }

  else
  {
    sub_268BDADC0(a2, v16);
    result = sub_268BEF158(v10, v16, a1, v14);
    *a3 = 0u;
    a3[1] = 0u;
  }

  *v4 = v14;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MRCommandIDHelper(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x268C0F924);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268C0F9A4(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t UsoIdentifier.AppIdentifier.init(rawValue:)@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_268C1615C();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_268C0FAD4@<X0>(void *a1@<X8>)
{
  result = UsoIdentifier.AppIdentifier.rawValue.getter();
  *a1 = 0xD000000000000014;
  a1[1] = v3;
  return result;
}

uint64_t sub_268C0FB34(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  sub_268C156EC();
  OUTLINED_FUNCTION_3_13();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_14();
  (*(v9 + 104))(v5);
  v11 = sub_268C156DC();
  v13 = v12;
  result = (*(v9 + 8))(v5, v4);
  *a3 = v11;
  *a4 = v13;
  return result;
}

uint64_t sub_268C0FC1C()
{
  v0 = sub_268C1570C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D5E6E0], v0, v2);
  v5 = sub_268C156FC();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_2802CE9B8 = v5;
  unk_2802CE9C0 = v7;
  return result;
}

uint64_t static UsoIdentifier.getRoomPlaceHintIdentifier()()
{
  if (qword_2802CDC18 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_2802CDC18);
  }

  return sub_268C155AC();
}

uint64_t sub_268C0FDEC()
{
  sub_268C1561C();
  OUTLINED_FUNCTION_3_13();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_14();
  (*(v3 + 104))(v1);
  sub_268C1560C();
  (*(v3 + 8))(v1, v0);
  if (qword_2802CDC10 != -1)
  {
    OUTLINED_FUNCTION_4_14(&qword_2802CDC10);
  }

  OUTLINED_FUNCTION_1_16();
  return sub_268C155AC();
}

uint64_t _s12SiriOntology13UsoIdentifierV0A22PlaybackControlSupportE015getRoomSemanticD08roomNameACSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = qword_2802CDC10;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_4_14(&qword_2802CDC10);
  }

  v3 = qword_2802CDC20;

  if (v3 != -1)
  {
    swift_once();
  }

  return sub_268C155AC();
}

uint64_t static UsoIdentifier.getTVHomeAutomationServiceIdentifier()()
{
  if (qword_2802CDBA0 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_2802CDBA0);
  }

  sub_268C0F474(8, off_2802CE390);
  if (qword_2802CDC18 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_2802CDC18);
  }

  OUTLINED_FUNCTION_1_16();

  return sub_268C155AC();
}

uint64_t static UsoIdentifier.getHomePodHomeAutomationServiceIdentifier()()
{
  if (qword_2802CDBA0 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_2802CDBA0);
  }

  sub_268C0F474(2, off_2802CE390);
  if (qword_2802CDC18 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_2802CDC18);
  }

  OUTLINED_FUNCTION_1_16();

  return sub_268C155AC();
}

unint64_t sub_268C10248()
{
  result = qword_2802CE9C8;
  if (!qword_2802CE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE9C8);
  }

  return result;
}

_BYTE *_s13AppIdentifierOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x268C10338);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_14(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_268C10428()
{
  if (qword_2802CDC28 != -1)
  {
    OUTLINED_FUNCTION_4_15(&qword_2802CDC28);
  }

  sub_268C15ECC();
  v0 = qword_2802CE9D0;
  if (qword_2802CE9D0)
  {
  }

  else
  {
    type metadata accessor for LifeCycleManager();
    OUTLINED_FUNCTION_5_15();
    swift_allocObject();
    v0 = sub_268C104F0();
    qword_2802CE9D0 = v0;
  }

  sub_268C15EDC();
  return v0;
}

dispatch_semaphore_t sub_268C104CC()
{
  result = dispatch_semaphore_create(1);
  qword_2802D2F60 = result;
  return result;
}

uint64_t sub_268C104F0()
{
  v9 = sub_268C15E4C();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268C15E1C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_268C15AAC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_268C089BC();
  v8[0] = "numberOfWorkItems";
  v8[1] = v6;
  sub_268C15A6C();
  v10 = MEMORY[0x277D84F90];
  sub_268BC1148(&qword_2802CE070, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE078, &unk_268C177B0);
  sub_268BC1190(&unk_2802CE080, &qword_2802CE078, &unk_268C177B0);
  sub_268C15FCC();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9);
  *(v0 + 16) = sub_268C15E8C();
  *(v0 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE9D8, qword_268C1A848);
  *(v0 + 32) = sub_268C15B7C();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  return v0;
}

uint64_t sub_268C10784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_268C15A5C();
  OUTLINED_FUNCTION_3_0();
  v30 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_0();
  v17 = v16 - v15;
  v29 = sub_268C15AAC();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15_0();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_5_15();
  v24 = swift_allocObject();
  v24[2] = v6;
  v24[3] = a5;
  v24[4] = a1;
  v24[5] = a2;
  v24[6] = a3;
  v24[7] = a4;
  aBlock[4] = sub_268C1222C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268BC5554;
  aBlock[3] = &block_descriptor_31;
  v25 = _Block_copy(aBlock);

  sub_268C15A6C();
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v26, v27, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  sub_268C15FCC();
  MEMORY[0x26D627440](0, v23, v17, v25);
  _Block_release(v25);
  (*(v30 + 8))(v17, v12);
  (*(v19 + 8))(v23, v29);
}

uint64_t sub_268C10A34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_268C15A1C();
  v29 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48) < a2)
  {
    *(a1 + 48) = a2;
  }

  swift_beginAccess();
  v15 = *(a1 + 32);

  v16 = sub_268C0F624(a3, a4, v15);

  if (v16)
  {
    result = sub_268C1229C(v16);
    *(a1 + 40) = 1;
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(a1 + 32);
    sub_268BEF61C(sub_268C12274, v18, a3, a4, isUniquelyReferenced_nonNull_native);
    *(a1 + 32) = v30;
    swift_endAccess();
    v28 = sub_268C11F5C(*(a1 + 48));
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v12, qword_2802D2F10);
    v21 = v29;
    (*(v29 + 16))(v14, v20, v12);

    v22 = sub_268C159FC();
    v23 = sub_268C15DFC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_268BB3D28(a3, a4, v31);
      *(v24 + 12) = 2048;
      v26 = v28;
      *(v24 + 14) = v28;
      _os_log_impl(&dword_268BAD000, v22, v23, "LifeCycleManager#register Registering %s for %ld seconds", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x26D628010](v25, -1, -1);
      MEMORY[0x26D628010](v24, -1, -1);

      (*(v21 + 8))(v14, v12);
    }

    else
    {

      (*(v21 + 8))(v14, v12);
      v26 = v28;
    }

    return sub_268C10D88(v26);
  }

  return result;
}

uint64_t sub_268C10D88(uint64_t a1)
{
  v42 = a1;
  v46 = sub_268C15A3C();
  OUTLINED_FUNCTION_3_0();
  v44 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v41 = (v5 - v4);
  v45 = sub_268C15ADC();
  OUTLINED_FUNCTION_3_0();
  v43 = v6;
  MEMORY[0x28223BE20](v7);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v39 - v10;
  sub_268C15AAC();
  OUTLINED_FUNCTION_3_0();
  v49 = v12;
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  v48 = v14 - v13;
  v15 = sub_268C15A5C();
  OUTLINED_FUNCTION_3_0();
  v47 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_0();
  v20 = v19 - v18;
  if (*(v1 + 24))
  {

    sub_268C15AFC();
  }

  v21 = swift_allocObject();
  swift_weakInit();
  v56 = sub_268C121B8;
  v57 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_268BC5554;
  v55 = &block_descriptor_7;
  _Block_copy(&aBlock);
  v51 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v22, v23, MEMORY[0x277D851A0]);

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_6_16(&v51, v24);
  sub_268C15B1C();
  swift_allocObject();
  v25 = sub_268C15AEC();

  *(v1 + 24) = v25;

  v56 = sub_268C121D8;
  v57 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_268BC5554;
  v55 = &block_descriptor_22;
  v26 = _Block_copy(&aBlock);

  v27 = v48;
  sub_268C15A6C();
  v51 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6_16(&v51, v24);
  sub_268C15B0C();
  _Block_release(v26);

  (*(v47 + 8))(v20, v15);
  (*(v49 + 8))(v27, v50);

  if (*(v1 + 24))
  {
    v29 = *(v1 + 56);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 56) = v31;

      v32 = v39;
      sub_268C15ABC();
      v33 = v41;
      *v41 = v42;
      v34 = v44;
      v35 = v46;
      (*(v44 + 104))(v33, *MEMORY[0x277D85188], v46);
      v36 = v40;
      sub_268C15ACC();
      (*(v34 + 8))(v33, v35);
      v37 = *(v43 + 8);
      v38 = v45;
      v37(v32, v45);
      sub_268C15E3C();

      return (v37)(v36, v38);
    }
  }

  return result;
}

uint64_t sub_268C112EC(uint64_t a1)
{
  v1 = sub_268C15A5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_268C15AAC();
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268C15A1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v13 = *(Strong + 40), , v13 == 1))
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v8, qword_2802D2F10);
    (*(v9 + 16))(v11, v14, v8);
    v15 = sub_268C159FC();
    v16 = sub_268C15DFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_268BAD000, v15, v16, "LifeCycleManager#restart Need to restart, won't shut down.", v17, 2u);
      MEMORY[0x26D628010](v17, -1, -1);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v20[1] = *(result + 16);
      aBlock[4] = sub_268C121E0;
      aBlock[5] = result;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_268BC5554;
      aBlock[3] = &block_descriptor_25;
      v19 = _Block_copy(aBlock);

      sub_268C15A6C();
      v22 = MEMORY[0x277D84F90];
      sub_268BC1148(&qword_2802CE048, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v20[0] = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
      sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
      sub_268C15FCC();
      MEMORY[0x26D627440](0, v7, v4, v19);
      _Block_release(v19);
      (*(v2 + 8))(v4, v1);
      (*(v21 + 8))(v7, v20[0]);
    }
  }

  return result;
}

void sub_268C11754(uint64_t a1)
{
  v2 = sub_268C15A1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(a1 + 32);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v39 = (v3 + 8);
  v40 = (v3 + 16);
  v12 = v6;

  v13 = 0;
  *&v14 = 136315138;
  v36 = v14;
  v37 = v12;
  v38 = v2;
  v35 = v5;
  if (v10)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      do
      {
LABEL_8:
        v16 = (v13 << 10) | (16 * __clz(__rbit64(v10)));
        v17 = (*(v12 + 48) + v16);
        v18 = *v17;
        v19 = v17[1];
        v20 = (*(v12 + 56) + v16);
        v21 = *v20;
        v22 = v20[1];
        v41 = v18;
        v42 = v21;
        v23 = qword_2802CDBE0;

        v43 = v22;

        if (v23 != -1)
        {
          swift_once();
        }

        v24 = __swift_project_value_buffer(v2, qword_2802D2F10);
        (*v40)(v5, v24, v2);

        v25 = sub_268C159FC();
        v26 = v5;
        v27 = sub_268C15DFC();

        if (os_log_type_enabled(v25, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v44 = v29;
          *v28 = v36;
          v30 = sub_268BB3D28(v41, v19, &v44);

          *(v28 + 4) = v30;
          _os_log_impl(&dword_268BAD000, v25, v27, "LifeCycleManager#restart Shutting down %s...", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          v31 = v29;
          v12 = v37;
          MEMORY[0x26D628010](v31, -1, -1);
          v32 = v28;
          v2 = v38;
          MEMORY[0x26D628010](v32, -1, -1);

          v5 = v35;
          v33 = (*v39)(v35, v2);
        }

        else
        {

          v33 = (*v39)(v26, v2);
          v5 = v26;
        }

        v10 &= v10 - 1;
        v42(v33);
      }

      while (v10);
    }
  }

  __break(1u);
}

void sub_268C11AA8(uint64_t a1)
{
  v2 = sub_268C15A1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = *(a1 + 56);
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(a1 + 56) = v11;
  if (v11)
  {
    return;
  }

  if (*(a1 + 40))
  {
    if (qword_2802CDBE0 == -1)
    {
LABEL_5:
      v12 = __swift_project_value_buffer(v2, qword_2802D2F10);
      (*(v3 + 16))(v5, v12, v2);

      v13 = sub_268C159FC();
      v14 = sub_268C15DFC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = *(a1 + 48);

        _os_log_impl(&dword_268BAD000, v13, v14, "LifeCycleManager#restart Will restart with interval %ld", v15, 0xCu);
        MEMORY[0x26D628010](v15, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
      *(a1 + 24) = 0;

      sub_268C10D88(*(a1 + 48));
      *(a1 + 40) = 0;
      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_5;
  }

  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_2802D2F10);
  (*(v3 + 16))(v8, v16, v2);
  v17 = sub_268C159FC();
  v18 = sub_268C15DFC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_268BAD000, v17, v18, "LifeCycleManager#restart WorkItem finished and didn't need to restart", v19, 2u);
    MEMORY[0x26D628010](v19, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
  type metadata accessor for LifeCycleManager();
  sub_268C11DB4();
}

uint64_t sub_268C11DB4()
{
  v0 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v6 = v5 - v4;
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v7 = __swift_project_value_buffer(v0, qword_2802D2F10);
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_268C159FC();
  v9 = sub_268C15DFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_268BAD000, v8, v9, "LifeCycleManager##clear Clearing LifeCycleManager", v10, 2u);
    MEMORY[0x26D628010](v10, -1, -1);
  }

  (*(v2 + 8))(v6, v0);
  if (qword_2802CDC28 != -1)
  {
    OUTLINED_FUNCTION_4_15(&qword_2802CDC28);
  }

  sub_268C15ECC();
  qword_2802CE9D0 = 0;

  return sub_268C15EDC();
}

uint64_t sub_268C11F5C(uint64_t a1)
{
  v2 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_0();
  v8 = v7 - v6;
  if (a1 >= 301)
  {
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    v9 = __swift_project_value_buffer(v2, qword_2802D2F10);
    (*(v4 + 16))(v8, v9, v2);
    v10 = sub_268C159FC();
    v11 = sub_268C15DEC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = a1;
      *(v12 + 12) = 2048;
      *(v12 + 14) = 15;
      _os_log_impl(&dword_268BAD000, v10, v11, "LifeCycleManager#validateIntervalInSec Received a very big interval in the LifeCycle. Please review this value is correct: %ld. Returning default value as fallback %ld", v12, 0x16u);
      MEMORY[0x26D628010](v12, -1, -1);
    }

    (*(v4 + 8))(v8, v2);
    return 15;
  }

  return a1;
}

uint64_t sub_268C120FC()
{

  return v0;
}

uint64_t sub_268C1212C()
{
  sub_268C120FC();
  OUTLINED_FUNCTION_5_15();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_268C12180()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268C121E8()
{

  OUTLINED_FUNCTION_5_15();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_268C1223C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268C1229C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_16(uint64_t a1, uint64_t a2)
{

  return sub_268C15FCC();
}

void sub_268C12504(uint64_t a1, uint64_t a2, int a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v37 = a5;
  v38 = a4;
  v36 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v35 = &v35 - v13;
  if (a1)
  {
    v14 = sub_268BC4EF4(a1);
    for (i = 0; v14 != i; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x26D627640](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v16 = *(a1 + 8 * i + 32);
      }

      v17 = v16;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if ([v16 command] == a3)
      {
        if (qword_2802CDB70 != -1)
        {
          OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
        }

        v24 = v36;
        v25 = __swift_project_value_buffer(v36, qword_2802D2ED8);
        v26 = v35;
        (*(v8 + 16))(v35, v25, v24);
        v27 = v17;
        v28 = sub_268C159FC();
        v29 = sub_268C15DFC();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 67109376;
          *(v30 + 4) = a3;
          *(v30 + 8) = 1024;
          *(v30 + 10) = [v27 isEnabled];

          _os_log_impl(&dword_268BAD000, v28, v29, "Is %u enabled for now playing app: %{BOOL}d", v30, 0xEu);
          OUTLINED_FUNCTION_30();
        }

        else
        {

          v28 = v27;
        }

        (*(v8 + 8))(v26, v24);
        v31 = [v27 isEnabled];
        v32 = sub_268C1304C(v27);
        if (!v32 || (sub_268C12934(v32), v34 = v33, , !v34))
        {
          v34 = sub_268C15B7C();
        }

        v38(v31, v34);

        return;
      }
    }
  }

  if (qword_2802CDB70 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  v18 = v36;
  v19 = __swift_project_value_buffer(v36, qword_2802D2ED8);
  (*(v8 + 16))(v11, v19, v18);
  v20 = sub_268C159FC();
  v21 = sub_268C15DFC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = a3;
    _os_log_impl(&dword_268BAD000, v20, v21, "%u not present in supported commands for now playing app.", v22, 8u);
    OUTLINED_FUNCTION_30();
  }

  (*(v8 + 8))(v11, v18);
  v23 = sub_268C15B7C();
  v38(0, v23);
}

void sub_268C12934(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE9E0, &qword_268C1A898);
    v2 = sub_268C1614C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_268BDADC0(*(a1 + 48) + 40 * v9, __src);
    sub_268BB5B20(*(a1 + 56) + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_268BDADC0(__dst, v19);
    if (!swift_dynamicCast())
    {
      sub_268C130B8(__dst);

      return;
    }

    v5 &= v5 - 1;
    sub_268BB5B20(&__dst[40], v20);
    sub_268C130B8(__dst);
    v21 = v18;
    sub_268BD8290(v20, v22);
    v10 = v21;
    sub_268BD8290(v22, v23);
    sub_268BD8290(v23, &v21);
    v11 = sub_268BD99A0(v10, *(&v10 + 1));
    v12 = v11;
    if (v13)
    {
      *(v2[6] + 16 * v11) = v10;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v14);
      sub_268BD8290(&v21, v14);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
      *(v2[6] + 16 * v11) = v10;
      sub_268BD8290(&v21, (v2[7] + 32 * v11));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_22;
      }

      v2[2] = v17;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_268C12BCC(void *a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void), void *a6)
{
  v12 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  if (a2)
  {
    v40 = a3;
    v41 = a6;
    v21 = a2;
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    v22 = __swift_project_value_buffer(v12, qword_2802D2ED8);
    (*(v14 + 16))(v20, v22, v12);
    v23 = a2;

    v24 = sub_268C159FC();
    v25 = sub_268C15DEC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = a5;
      v42 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_268BB3D28(v40, a4, &v42);
      *(v26 + 12) = 2082;
      swift_getErrorValue();
      v28 = sub_268C161DC();
      v30 = sub_268BB3D28(v28, v29, &v42);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_268BAD000, v24, v25, "Error getting playing item for device: %s from MediaRemote error: %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      a5 = v39;
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    (*(v14 + 8))(v20, v12);
    a5(0);
  }

  else if (a1)
  {
    v31 = a1;
    v32 = [v31 tracklist];
    v41 = [v32 playingItem];

    a5(v41);
    v33 = v41;
  }

  else
  {
    v39 = a5;
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    v34 = __swift_project_value_buffer(v12, qword_2802D2ED8);
    (*(v14 + 16))(v17, v34, v12);

    v35 = sub_268C159FC();
    v36 = sub_268C15DEC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_268BB3D28(a3, a4, &v42);
      _os_log_impl(&dword_268BAD000, v35, v36, "Unexpected nil response getting playing item for device %s without error", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    (*(v14 + 8))(v17, v12);
    v39(0);
  }
}

uint64_t sub_268C1304C(void *a1)
{
  v1 = [a1 options];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268C15B5C();

  return v3;
}

uint64_t sub_268C130B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE9E8, &qword_268C1A8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_268C13120()
{
  v106 = sub_268C1553C();
  OUTLINED_FUNCTION_3_0();
  v96 = v1;
  MEMORY[0x28223BE20](v2);
  v92 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE9F0, qword_268C1A8A8);
  MEMORY[0x28223BE20](v4);
  v6 = &v88 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF58, &qword_268C17338);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_1_11();
  v98 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v88 - v10;
  MEMORY[0x28223BE20](v12);
  v105 = &v88 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF50, &qword_268C172D0);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_1_11();
  v97 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v88 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - v20;
  sub_268C155DC();
  OUTLINED_FUNCTION_3_0();
  v109 = v22;
  v110 = v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_11();
  v108 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v88 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v88 - v29;
  MEMORY[0x28223BE20](v31);
  v91 = &v88 - v32;
  OUTLINED_FUNCTION_3_15();
  v104 = v0;
  v33 = sub_268C156BC();
  v107 = v11;
  v95 = v21;
  v93 = v18;
  if (!v33)
  {
LABEL_14:
    v44 = v109;
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v109);
    OUTLINED_FUNCTION_3_15();
    v45 = sub_268C156BC();
    v46 = v44;
    v47 = v97;
    if (v45)
    {
      v48 = v45;
      v102 = v6;
      v103 = v4;
      v49 = *(v45 + 16);
      if (v49)
      {
        v50 = 0;
        v21 = 0x64695F6D657469;
        OUTLINED_FUNCTION_2_14();
        v52 = (v51 + 8);
        while (v50 < *(v48 + 16))
        {
          OUTLINED_FUNCTION_5_16();
          v53(v27);
          v54 = sub_268C155CC();
          if (v55)
          {
            if (v54 == 0x64695F6D657469 && v55 == 0xE700000000000000)
            {

LABEL_46:

              v81 = v109;
              v82 = *(v110 + 32);
              v83 = v97;
              v82(v97, v27, v109);
              OUTLINED_FUNCTION_1_17(v83);
              v84 = OUTLINED_FUNCTION_6_17();
              (v82)(v84);
              v60 = v81;
              OUTLINED_FUNCTION_1_17(0x64695F6D657469);
              v85 = v93;
              goto LABEL_51;
            }

            v57 = sub_268C1618C();

            if (v57)
            {
              goto LABEL_46;
            }
          }

          ++v50;
          v46 = v109;
          (*v52)(v27, v109);
          if (v49 == v50)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_57;
      }

LABEL_25:

      v21 = v95;
      v47 = v97;
      v6 = v102;
      v4 = v103;
      v11 = v107;
    }

    v58 = 1;
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v46);
    OUTLINED_FUNCTION_3_15();
    v59 = sub_268C156BC();
    if (v59)
    {
      v60 = v109;
      v61 = v98;
      v104 = *(v59 + 16);
      if (v104)
      {
        v62 = 0;
        OUTLINED_FUNCTION_2_14();
        v103 = v63 + v64;
        v102 = (v65 + 16);
        v101 = *MEMORY[0x277D5E4B8];
        v99 = v63;
        v100 = (v96 + 13);
        v90 = (v96 + 4);
        ++v96;
        v66 = (v65 + 8);
        v89 = (v65 + 8);
        while (1)
        {
          if (v62 >= *(v63 + 16))
          {
            goto LABEL_58;
          }

          (*(v110 + 16))(v108, v103 + *(v110 + 72) * v62, v60);
          v67 = v105;
          sub_268C1555C();
          v68 = v106;
          (*v100)(v11, v101, v106);
          __swift_storeEnumTagSinglePayload(v11, 0, 1, v68);
          v69 = *(v4 + 48);
          sub_268C13B30(v67, v6);
          sub_268C13B30(v11, &v6[v69]);
          OUTLINED_FUNCTION_7_15(v6);
          if (v43)
          {
            break;
          }

          sub_268C13B30(v6, v61);
          OUTLINED_FUNCTION_7_15(&v6[v69]);
          if (v70)
          {
            sub_268BC4CFC(v11, &qword_2802CDF58, &qword_268C17338);
            sub_268BC4CFC(v67, &qword_2802CDF58, &qword_268C17338);
            (*v96)(v61, v68);
LABEL_38:
            sub_268BC4CFC(v6, &qword_2802CE9F0, qword_268C1A8A8);
            goto LABEL_40;
          }

          v71 = &v6[v69];
          v72 = v6;
          v73 = v4;
          v74 = v92;
          (*v90)(v92, v71, v68);
          sub_268C13BA0();
          v94 = sub_268C15BDC();
          v75 = *v96;
          v76 = v74;
          v4 = v73;
          v6 = v72;
          v61 = v98;
          (*v96)(v76, v68);
          sub_268BC4CFC(v11, &qword_2802CDF58, &qword_268C17338);
          sub_268BC4CFC(v67, &qword_2802CDF58, &qword_268C17338);
          v75(v61, v68);
          v66 = v89;
          sub_268BC4CFC(v6, &qword_2802CDF58, &qword_268C17338);
          if (v94)
          {
            goto LABEL_47;
          }

LABEL_40:
          ++v62;
          v60 = v109;
          (*v66)(v108, v109);
          v11 = v107;
          v63 = v99;
          if (v104 == v62)
          {
            goto LABEL_41;
          }
        }

        sub_268BC4CFC(v11, &qword_2802CDF58, &qword_268C17338);
        sub_268BC4CFC(v67, &qword_2802CDF58, &qword_268C17338);
        OUTLINED_FUNCTION_7_15(&v6[v69]);
        if (v43)
        {
          sub_268BC4CFC(v6, &qword_2802CDF58, &qword_268C17338);
LABEL_47:

          v60 = v109;
          v21 = v95;
          (*(v110 + 32))(v95, v108, v109);
          v58 = 0;
          goto LABEL_48;
        }

        goto LABEL_38;
      }

LABEL_41:

      v58 = 1;
      v21 = v95;
LABEL_48:
      v47 = v97;
    }

    else
    {
      v60 = v109;
    }

    __swift_storeEnumTagSinglePayload(v21, v58, 1, v60);
    OUTLINED_FUNCTION_8_15(v47);
    v85 = v93;
    if (!v43)
    {
      sub_268BC4CFC(v47, &qword_2802CDF50, &qword_268C172D0);
    }

LABEL_51:
    OUTLINED_FUNCTION_8_15(v85);
    if (!v43)
    {
      sub_268BC4CFC(v85, &qword_2802CDF50, &qword_268C172D0);
    }

    goto LABEL_53;
  }

  v34 = v33;
  v35 = v18;
  v36 = *(v33 + 16);
  if (!v36)
  {

    v18 = v35;
    goto LABEL_14;
  }

  v102 = v6;
  v103 = v4;
  v37 = 0;
  OUTLINED_FUNCTION_2_14();
  v39 = (v38 + 8);
  while (1)
  {
    if (v37 >= *(v34 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_5_16();
    v40(v30);
    v41 = sub_268C155CC();
    if (!v42)
    {
      goto LABEL_11;
    }

    v43 = v41 == 0x6C646E7542707061 && v42 == 0xEB00000000644965;
    if (v43)
    {
      break;
    }

    v21 = sub_268C1618C();

    if (v21)
    {
      goto LABEL_44;
    }

LABEL_11:
    ++v37;
    (*v39)(v30, v109);
    if (v36 == v37)
    {

      v21 = v95;
      v18 = v93;
      v6 = v102;
      v4 = v103;
      v11 = v107;
      goto LABEL_14;
    }
  }

LABEL_44:

  v77 = v109;
  v78 = *(v110 + 32);
  v79 = v93;
  v78(v93, v30, v109);
  OUTLINED_FUNCTION_1_17(v79);
  v80 = OUTLINED_FUNCTION_6_17();
  (v78)(v80);
  v60 = v77;
  OUTLINED_FUNCTION_1_17(v21);
LABEL_53:
  OUTLINED_FUNCTION_8_15(v21);
  if (v43)
  {
    sub_268BC4CFC(v21, &qword_2802CDF50, &qword_268C172D0);
  }

  else
  {
    v86 = v110;
    v87 = v91;
    (*(v110 + 32))(v91, v21, v60);
    sub_268C155BC();
    (*(v86 + 8))(v87, v60);
  }
}

uint64_t sub_268C13B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF58, &qword_268C17338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_268C13BA0()
{
  result = qword_2802CE9F8;
  if (!qword_2802CE9F8)
  {
    sub_268C1553C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE9F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t Device.init<A>(from:isRequestingDevice:predicate:mediaGroup:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a4;
  v49 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_268C15F1C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  memcpy(__dst, a3, sizeof(__dst));
  *(a7 + 88) = xmmword_268C16D40;
  v46 = (a7 + 88);
  *(a7 + 64) = 0;
  *(a7 + 72) = 0;
  v17 = type metadata accessor for Device(0);
  *(a7 + 104) = 0u;
  *(a7 + 120) = 0u;
  *(a7 + 136) = 0u;
  *(a7 + 152) = 0u;
  *(a7 + 168) = 0u;
  *(a7 + 184) = 0u;
  *(a7 + 200) = 0;
  v18 = *(v17 + 44);
  v19 = type metadata accessor for MediaGroup(0);
  v48 = v18;
  __swift_storeEnumTagSinglePayload(a7 + v18, 1, 1, v19);
  v47 = v17;
  v20 = *(v17 + 48);
  *(a7 + v20) = 0;
  v21 = OUTLINED_FUNCTION_0_14();
  *(a7 + 32) = v22(v21);
  *(a7 + 40) = v23;
  *a7 = (*(a6 + 88))(a5, a6);
  *(a7 + 8) = v24;
  *(a7 + 16) = (*(a6 + 104))(a5, a6);
  *(a7 + 24) = v25;
  (*(a6 + 72))(a5, a6);
  if (__swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v27 = v29;
    OUTLINED_FUNCTION_4_16();
    (*(v30 + 8))(v16, AssociatedTypeWitness);
  }

  *(a7 + 48) = v26;
  *(a7 + 56) = v27;
  v31 = OUTLINED_FUNCTION_0_14();
  v33._countAndFlagsBits = v32(v31);
  DeviceCategory.init(homekitType:)(v33);
  if ((v51[1] & 1) == 0)
  {
    v34 = v51[0];
    if (v51[0] == 16 && (v35 = OUTLINED_FUNCTION_0_14(), (v36(v35) & 1) != 0))
    {
      if (qword_2802CDB88 != -1)
      {
        swift_once();
      }

      *(a7 + 64) = sub_268C0F474(1, off_2802CE1D8);
      *(a7 + 72) = v37;
      *(a7 + v20) = 1;
    }

    else
    {
      if (qword_2802CDBA0 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_2802CDBA0);
      }

      *(a7 + 64) = sub_268C0F474(v34, off_2802CE390);
      *(a7 + 72) = v38;
    }
  }

  v39 = *(v47 + 52);
  v40 = OUTLINED_FUNCTION_0_14();
  v42 = v41(v40);
  OUTLINED_FUNCTION_4_16();
  (*(v43 + 8))(a1, a5);
  *(a7 + v39) = v42 & 1;
  *(a7 + 80) = v49 & 1;
  v44 = v46;
  memcpy(v51, v46, sizeof(v51));
  sub_268C14C98(v51, &qword_2802CE578, &qword_268C18750);
  memcpy(v44, __dst, 0x78uLL);
  return sub_268C1414C(v50, a7 + v48);
}

uint64_t type metadata accessor for Device(uint64_t a1)
{
  result = qword_2802CEA00;
  if (!qword_2802CEA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268C1414C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Device.init(from:isRequestingDevice:predicate:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  Device.init()(a4);
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);

  *(a4 + 32) = v9;
  *(a4 + 40) = v8;
  v10 = type metadata accessor for MediaGroup(0);
  v11 = sub_268C152EC();
  v13 = v12;

  *a4 = v11;
  *(a4 + 8) = v13;
  if (qword_2802CDBA0 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_2802CDBA0);
  }

  v14 = sub_268C0F474(4, off_2802CE390);
  v16 = v15;

  *(a4 + 64) = v14;
  *(a4 + 72) = v16;
  *(a4 + 80) = a2 & 1;
  memcpy(__dst, (a4 + 88), sizeof(__dst));
  sub_268C14C98(__dst, &qword_2802CE578, &qword_268C18750);
  memcpy((a4 + 88), a3, 0x78uLL);
  v17 = *(type metadata accessor for Device(0) + 44);
  sub_268C14C98(a4 + v17, &qword_2802CE568, &unk_268C18740);
  sub_268C14CF4(a1, a4 + v17);
  return __swift_storeEnumTagSinglePayload(a4 + v17, 0, 1, v10);
}

uint64_t Device.identifier.setter()
{
  OUTLINED_FUNCTION_8_6();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Device.mediaSystemId.setter()
{
  OUTLINED_FUNCTION_8_6();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Device.name.setter()
{
  OUTLINED_FUNCTION_8_6();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Device.roomName.setter()
{
  OUTLINED_FUNCTION_8_6();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Device.type.setter()
{
  OUTLINED_FUNCTION_8_6();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Device.predicate.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 88), 0x78uLL);
  memcpy(a1, (v1 + 88), 0x78uLL);
  return sub_268C14D58(__dst, v4, &qword_2802CE578, &qword_268C18750);
}

void *Device.predicate.setter(const void *a1)
{
  memcpy(__dst, (v1 + 88), sizeof(__dst));
  sub_268C14C98(__dst, &qword_2802CE578, &qword_268C18750);
  return memcpy((v1 + 88), a1, 0x78uLL);
}

uint64_t Device.mediaGroup.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_17() + 44);

  return sub_268C1414C(v0, v2);
}

uint64_t Device.supportsNativeMatter.setter(char a1)
{
  result = type metadata accessor for Device(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t Device.isSideKick.setter(char a1)
{
  result = type metadata accessor for Device(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Device.description.getter()
{
  v1 = 7104878;
  sub_268C1606C();
  v19 = 0;
  v20 = 0xE000000000000000;
  MEMORY[0x26D627230](0xD000000000000015, 0x8000000268C1D420);
  if (*(v0 + 8))
  {
    v2 = *v0;
    v3 = *(v0 + 8);
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x26D627230](v2, v3);

  MEMORY[0x26D627230](0x203A656D616E202CLL, 0xE800000000000000);
  if (*(v0 + 40))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x26D627230](v4, v5);

  MEMORY[0x26D627230](0x656469537369202CLL, 0xEE00203A6B63694BLL);
  v6 = type metadata accessor for Device(0);
  if (*(v0 + *(v6 + 52)))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + *(v6 + 52)))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v7, v8);

  MEMORY[0x26D627230](0xD000000000000016, 0x8000000268C1D440);
  if (*(v0 + 80))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + 80))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v9, v10);

  MEMORY[0x26D627230](0x614E6D6F6F72202CLL, 0xEC000000203A656DLL);
  if (*(v0 + 56))
  {
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x26D627230](v11, v12);

  MEMORY[0x26D627230](0x203A65707974202CLL, 0xE800000000000000);
  if (*(v0 + 72))
  {
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
  }

  else
  {
    v14 = 0xE300000000000000;
    v13 = 7104878;
  }

  MEMORY[0x26D627230](v13, v14);

  MEMORY[0x26D627230](0x636964657270202CLL, 0xED0000203A657461);
  if (*(v0 + 96) == 1)
  {
    v15 = 0xE300000000000000;
  }

  else
  {
    memcpy(v18, (v0 + 104), sizeof(v18));
    v1 = FilteringPredicate.description.getter();
    v15 = v16;
  }

  MEMORY[0x26D627230](v1, v15);

  MEMORY[0x26D627230](0x47616964656D202CLL, 0xEE00203A70756F72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
  sub_268C160FC();
  MEMORY[0x26D627230](125, 0xE100000000000000);
  return v19;
}

uint64_t Device.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_268C16D40;
  v2 = type metadata accessor for Device(0);
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  v3 = v2[11];
  v4 = type metadata accessor for MediaGroup(0);
  result = __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 0;
  return result;
}

uint64_t sub_268C14C98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_16();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_268C14CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C14D58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_16();
  v5 = OUTLINED_FUNCTION_2_5();
  v6(v5);
  return a2;
}

void *Device.init(identifier:mediaSystemId:name:isRequestingDevice:roomName:type:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, const void *a12)
{
  *(a9 + 88) = xmmword_268C16D40;
  v18 = type metadata accessor for Device(0);
  *(a9 + 104) = 0u;
  *(a9 + 120) = 0u;
  *(a9 + 136) = 0u;
  *(a9 + 152) = 0u;
  *(a9 + 168) = 0u;
  *(a9 + 184) = 0u;
  *(a9 + 200) = 0;
  v19 = v18[11];
  v20 = type metadata accessor for MediaGroup(0);
  __swift_storeEnumTagSinglePayload(a9 + v19, 1, 1, v20);
  *(a9 + v18[12]) = 0;
  *(a9 + v18[13]) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 80) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  memcpy(__dst, (a9 + 88), 0x78uLL);
  sub_268C14C98(__dst, &qword_2802CE578, &qword_268C18750);
  return memcpy((a9 + 88), a12, 0x78uLL);
}

uint64_t sub_268C14F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
    v10 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_268C14FD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_268C1505C(uint64_t a1)
{
  sub_268C15134(319, &qword_2802CE0C8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_268C15134(319, &qword_2802CEA10, &type metadata for FilteringPredicate);
    if (v2 <= 0x3F)
    {
      sub_268C15180(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_268C15134(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_268C15F1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_268C15180(uint64_t a1)
{
  if (!qword_2802CEA18)
  {
    type metadata accessor for MediaGroup(255);
    v1 = sub_268C15F1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2802CEA18);
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return type metadata accessor for Device(0);
}