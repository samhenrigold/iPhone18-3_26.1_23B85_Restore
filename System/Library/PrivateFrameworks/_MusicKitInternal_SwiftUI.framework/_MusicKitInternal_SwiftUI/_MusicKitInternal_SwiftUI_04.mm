void sub_2178C66FC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  if (v10 >= 0)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v8 + 80);
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = ((((v13 + 16) & ~v13) + v14 + (((v13 | 7) + 17) & ~(v13 | 7)) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 < a3)
  {
    v16 = a3 - v12;
    if (((((v13 + 16) & ~v13) + v14 + (((v13 | 7) + 17) & ~(v13 | 7)) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_37;
      default:
LABEL_37:
        if (a2)
        {
LABEL_38:
          if (v12 == 0x7FFFFFFF)
          {
            if ((a2 & 0x80000000) != 0)
            {
              a1[16] = 0;
              *a1 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              *(a1 + 1) = a2 - 1;
            }
          }

          else
          {
            v21 = (v13 + (((&a1[(v13 | 7) + 17] & ~(v13 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13;
            v22 = a2 + 1;

            __swift_storeEnumTagSinglePayload(v21, v22, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    if (v15)
    {
      v19 = 1;
    }

    else
    {
      v19 = a2 - v12;
    }

    if (v15)
    {
      v20 = ~v12 + a2;
      bzero(a1, v15);
      *a1 = v20;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2178C696C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for MusicPicker.SheetPresentationModifier(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_2178C5A7C(v7, v4, v5, a2);
}

double sub_2178C6A10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C450, &qword_21796DBE0);
  sub_217967C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C458, &qword_21796DBE8);
  sub_2179664EC();
  sub_2178C6E30();
  sub_2178C6E94();
  sub_21796771C();

  return result;
}

double View.artworkLoadingObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_2179664EC();
  swift_allocObject();

  sub_2179664DC();
  sub_217967C0C();
  MEMORY[0x21CEA69A0](&v10, a3, &_s27LoadingObserverViewModifierVN, a4);

  return result;
}

uint64_t sub_2178C6BD4(uint64_t a1, double a2, double a3, uint64_t a4, void (*a5)(char *, uint64_t *, double, double))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  v12 = sub_217968C2C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  if ((sub_217968BCC() & 1) == 0)
  {
    sub_2178C6EEC(v11);
    (*(*(v12 - 8) + 16))(v11, a1, v12);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  sub_21795F90C(&v16);
  v14 = v16;
  v15 = v17;
  a5(v11, &v14, a2, a3);
  return sub_2178C6EEC(v11);
}

unint64_t sub_2178C6D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2811AD440;
  if (!qword_2811AD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD440);
  }

  return result;
}

uint64_t sub_2178C6D88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2178C6DC8(uint64_t result, int a2, int a3)
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

unint64_t sub_2178C6E30()
{
  result = qword_2811AD460;
  if (!qword_2811AD460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C458, &qword_21796DBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD460);
  }

  return result;
}

unint64_t sub_2178C6E94()
{
  result = qword_2811AD5E0;
  if (!qword_2811AD5E0)
  {
    sub_2179664EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD5E0);
  }

  return result;
}

uint64_t sub_2178C6EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2178C6F54@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_21796616C();
  v12 = sub_21796615C();
  *a6 = sub_2178C7014(v12);
  *(a6 + 1) = v13;
  v15 = _s9CellTitleVMa(0, a4, a5, v14);
  result = (*(*(a4 - 8) + 32))(&a6[v15[9]], a1, a4);
  a6[v15[10]] = a2;
  a6[v15[11]] = a3;
  return result;
}

uint64_t sub_2178C7014(uint64_t a1)
{
  sub_21796616C();
  sub_2178C8B38(qword_27CB8C460, MEMORY[0x277D2AC80], MEMORY[0x277D2AC78]);

  return sub_2179668BC();
}

void sub_2178C70A8(uint64_t a1)
{
  sub_2178C7514(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2178C7140(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = *(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_2178C72C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 2;
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) != -2)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_2178C7514(uint64_t a1)
{
  if (!qword_27CB8C4E8)
  {
    sub_21796616C();
    sub_2178C8B38(qword_27CB8C460, MEMORY[0x277D2AC80], MEMORY[0x277D2AC78]);
    v1 = sub_2179668CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8C4E8);
    }
  }
}

uint64_t sub_2178C75EC(uint64_t a1)
{
  v3 = sub_2179659BC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  if (*(v1 + *(a1 + 44)) != 1)
  {
    goto LABEL_5;
  }

  sub_217938234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C508, &unk_217973820);
  if (!swift_dynamicCast())
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_217875F0C(v13, &qword_27CB8C510, &qword_21796DC70);
LABEL_5:
    v10 = 0;
    return v10 & 1;
  }

  sub_21784A7D4(v13, v15);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_21796590C();
  (*(v4 + 104))(v7, *MEMORY[0x277D2A4B0], v3);
  v10 = sub_2179659AC();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v10 & 1;
}

uint64_t sub_2178C77FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21796760C();
  OUTLINED_FUNCTION_2();
  v30 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C4F0, &qword_21796DC60);
  OUTLINED_FUNCTION_2();
  v29 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = (*(v14 + 64))(v15, v14);
  if (v17)
  {
    v28 = v4;
    sub_2178C7AE4(v16, v17, v15, v14, v31);

    v18 = v31[1];
    v19 = v32;
    v27 = v31[0];
    if (sub_2178C75EC(a1))
    {
      v20 = sub_2178C837C(a1);
      v22 = v21;
      v24 = v23;
      v26 = a2;
      sub_2179675EC();
      sub_21788C9B8(v20, v22, v24 & 1);
      a2 = v26;
    }

    else
    {
      sub_2179675FC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C4F8, &qword_21796DC68);
    sub_2178C8ABC();
    sub_2179676EC();
    (*(v30 + 8))(v8, v28);
    sub_21788C9B8(v27, v18, v19);

    (*(v29 + 32))(a2, v13, v9);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v9);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v9);
  }
}

uint64_t sub_2178C7AE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_217966D7C();
  MEMORY[0x28223BE20](v10 - 8);
  sub_217966D6C();
  sub_217966D5C();
  v12 = _s9CellTitleVMa(0, a3, a4, v11);
  v13 = sub_2178C7D58(a1, a2, v12);
  v15 = v14;
  LOBYTE(a1) = v16;
  sub_217966D2C();
  sub_21788C9B8(v13, v15, a1 & 1);

  sub_217966D5C();
  v17 = sub_2178C7E6C(v12);
  v19 = v18;
  LOBYTE(v13) = v20;
  sub_217966D2C();
  sub_21788C9B8(v17, v19, v13 & 1);

  sub_217966D5C();
  sub_217966D9C();
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  v21 = qword_27CB978B8;
  v22 = sub_21796761C();
  v24 = v23;
  v26 = v25;
  sub_21796747C();
  v27 = sub_2179675DC();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_21788C9B8(v22, v24, v26 & 1);

  *a5 = v27;
  *(a5 + 8) = v29;
  *(a5 + 16) = v31 & 1;
  *(a5 + 24) = v33;
  return result;
}

uint64_t sub_2178C7D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217873C34(a1, a2, a3);

  v5 = sub_21796763C();
  v7 = v6;
  v9 = v8;
  if (*(v3 + *(a3 + 40)) == 1)
  {
    sub_217967B4C();
    sub_217967B2C();
  }

  else
  {
    sub_217967B3C();
  }

  v10 = sub_2179675AC();

  sub_21788C9B8(v5, v7, v9 & 1);

  return v10;
}

uint64_t sub_2178C7E6C(uint64_t a1)
{
  v3 = sub_21796870C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C518, &qword_21796DC78);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C520, &qword_21796DC80);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v41 = a1;
  v42 = v1;
  v20 = v4;
  (*(v19 + 120))(v18);
  (*(v4 + 104))(v15, *MEMORY[0x277CD8000], v3);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
  v21 = *(v7 + 56);
  sub_2178C8B80(v17, v9, &qword_27CB8C520, &qword_21796DC80);
  sub_2178C8B80(v15, &v9[v21], &qword_27CB8C520, &qword_21796DC80);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_217875F0C(v15, &qword_27CB8C520, &qword_21796DC80);
    sub_217875F0C(v17, &qword_27CB8C520, &qword_21796DC80);
    if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v3) == 1)
    {
      sub_217875F0C(v9, &qword_27CB8C520, &qword_21796DC80);
      v23 = v41;
      v22 = v42;
LABEL_8:
      v26 = sub_2178C87FC();
      goto LABEL_10;
    }

LABEL_6:
    sub_217875F0C(v9, &qword_27CB8C518, &qword_21796DC78);
    v26 = 0;
    v27 = 0xE000000000000000;
    v23 = v41;
    v22 = v42;
    goto LABEL_10;
  }

  v24 = v40;
  sub_2178C8B80(v9, v40, &qword_27CB8C520, &qword_21796DC80);
  if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v3) == 1)
  {
    sub_217875F0C(v15, &qword_27CB8C520, &qword_21796DC80);
    sub_217875F0C(v17, &qword_27CB8C520, &qword_21796DC80);
    (*(v20 + 8))(v24, v3);
    goto LABEL_6;
  }

  v28 = v39;
  (*(v20 + 32))(v39, &v9[v21], v3);
  sub_2178C8B38(&qword_27CB8C528, MEMORY[0x277CD8008], MEMORY[0x277CD8010]);
  v29 = sub_217968F1C();
  v30 = *(v20 + 8);
  v30(v28, v3);
  sub_217875F0C(v15, &qword_27CB8C520, &qword_21796DC80);
  sub_217875F0C(v17, &qword_27CB8C520, &qword_21796DC80);
  v30(v24, v3);
  sub_217875F0C(v9, &qword_27CB8C520, &qword_21796DC80);
  v23 = v41;
  v22 = v42;
  if (v29)
  {
    goto LABEL_8;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
LABEL_10:
  v43 = v26;
  v44 = v27;
  sub_217873C34(v26, v27, v25);
  v31 = sub_21796763C();
  v33 = v32;
  v35 = v34;
  v36 = *(v22 + *(v23 + 40));
  sub_217967B4C();
  if (v36 == 1)
  {
    sub_217967B2C();
  }

  v37 = sub_2179675AC();

  sub_21788C9B8(v31, v33, v35 & 1);

  return v37;
}

uint64_t sub_2178C837C(uint64_t a1)
{
  v43 = a1;
  v1 = sub_217966D7C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEC0, &qword_21796B610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - v3;
  sub_217966D8C();
  v5 = sub_21796761C();
  v7 = v6;
  v9 = v8;
  sub_217967B0C();
  v10 = sub_2179675AC();
  v45 = v11;
  v46 = v10;
  v47 = v12;
  v48 = v13;

  sub_21788C9B8(v5, v7, v9 & 1);

  sub_217966D8C();
  v14 = sub_21796761C();
  v16 = v15;
  v18 = v17;
  v19 = sub_2179674BC();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v19);
  sub_21796751C();
  sub_217875F0C(v4, &qword_27CB8AEC0, &qword_21796B610);
  v20 = sub_2179675DC();
  v22 = v21;
  v24 = v23;

  sub_21788C9B8(v14, v16, v18 & 1);

  if (sub_2178C75EC(v43))
  {
    if (qword_27CB8A350 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_217967B0C();
  }

  v25 = sub_2179675AC();
  v27 = v26;
  v29 = v28;

  sub_21788C9B8(v20, v22, v24 & 1);

  v30 = sub_21796759C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_21788C9B8(v25, v27, v29 & 1);

  sub_217966D6C();
  sub_217966D5C();
  v38 = v45;
  v37 = v46;
  sub_217966D2C();
  sub_217966D5C();
  HIDWORD(v42) = v34;
  v43 = v30;
  v44 = v36;
  sub_217966D2C();
  sub_217966D5C();
  sub_217966D9C();
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  v39 = qword_27CB978B8;
  v40 = sub_21796761C();
  sub_21788C9B8(v43, v32, BYTE4(v42) & 1);

  sub_21788C9B8(v37, v38, v47 & 1);

  return v40;
}

uint64_t sub_2178C87FC()
{
  v0 = 3028656112;
  v1 = sub_21796627C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C530, &qword_21796DC88);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_21796614C();
  sub_21796626C();
  (*(v2 + 8))(v4, v1);
  sub_2178C8B80(v13, v11, &qword_27CB8C530, &qword_21796DC88);
  v14 = sub_21796625C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1 || (sub_2178C8B80(v11, v8, &qword_27CB8C530, &qword_21796DC88), v15 = *(v14 - 8), v16 = (*(v15 + 88))(v8, v14), v16 == *MEMORY[0x277D2AE18]))
  {
    v17 = v11;
  }

  else
  {
    if (v16 == *MEMORY[0x277D2AE10])
    {
      v0 = 11768802;
    }

    else
    {
      (*(v15 + 8))(v8, v14);
    }

    v17 = v13;
    v13 = v11;
  }

  sub_217875F0C(v17, &qword_27CB8C530, &qword_21796DC88);
  sub_217875F0C(v13, &qword_27CB8C530, &qword_21796DC88);
  return v0;
}

unint64_t sub_2178C8ABC()
{
  result = qword_27CB8C500;
  if (!qword_27CB8C500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C4F8, &qword_21796DC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C500);
  }

  return result;
}

uint64_t sub_2178C8B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2178C8B80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2178C8BE8()
{
  result = qword_27CB8C538;
  if (!qword_27CB8C538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C540, &qword_21796DC90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C4F8, &qword_21796DC68);
    sub_2178C8ABC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C538);
  }

  return result;
}

void sub_2178C8CA8()
{
  _s13PreviewPlayerCMa(0);
  v0 = swift_allocObject();
  sub_2178C8CE8();
  qword_27CB978B0 = v0;
}

void sub_2178C8CE8()
{
  OUTLINED_FUNCTION_81();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C580, &qword_21796DCF0);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C588, &qword_21796DCF8);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_5();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer__state;
  _s5StateVMa(0);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_2178CCB68(v16, v13);
  sub_21796655C();
  sub_2178653BC(v16, &qword_27CB8C058, &qword_21796D1D8);
  (*(v8 + 32))(v0 + v17, v2, v6);
  v22 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer__isPreviewing;
  v24 = 0;
  sub_21796655C();
  (*(v4 + 32))(v0 + v22, v1, v23);
  *(v0 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) = sub_2178C8F18();
  sub_2178C94EC();
  OUTLINED_FUNCTION_80();
}

id sub_2178C8F18()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() auxiliarySession];
  v1 = *MEMORY[0x277CB8030];
  v17[0] = 0;
  if ([v0 setCategory:v1 error:v17])
  {
    v2 = v17[0];
  }

  else
  {
    v3 = v17[0];
    v4 = sub_2179656CC();

    swift_willThrow();
    if (qword_27CB8A478 != -1)
    {
      swift_once();
    }

    v5 = sub_21796653C();
    __swift_project_value_buffer(v5, qword_27CB97AE8);
    v6 = v4;
    v7 = sub_21796651C();
    v8 = sub_21796937C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136446210;
      v11 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
      v12 = sub_217968F8C();
      v14 = sub_217957F4C(v12, v13, v17);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_217846000, v7, v8, "Failed to set AVAudioSession category with error: %{public}s.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_73();
    }

    else
    {
    }
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CE6598]) init];
  [v15 setAudioSession_];

  return v15;
}

double sub_2178C9170()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_3();
  sub_21796657C();

  return result;
}

uint64_t sub_2178C91E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v3);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_5();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2178CCB68(a1, v1);

  sub_21796658C();
  OUTLINED_FUNCTION_21_3();
  return sub_2178653BC(v5, v6, v7);
}

uint64_t (*sub_2178C92B8(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_21796656C();
  return sub_2178C9348;
}

void sub_2178C9348(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2178C93B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  return v1;
}

uint64_t sub_2178C9424(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21796658C();
}

void sub_2178C9494(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player);
  *(v1 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) = a1;
  v3 = a1;

  sub_2178C94EC();
}

uint64_t sub_2178C94EC()
{
  v1 = sub_2179693EC();
  v3 = v2;
  v5 = v4;
  v6 = HIDWORD(v2);
  v7 = *(v0 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player);
  sub_2178C2C34(0, &qword_27CB8C590, 0x277D85C78);
  v8 = v7;
  v9 = sub_2179693AC();
  OUTLINED_FUNCTION_27_2();
  v10 = swift_allocObject();
  swift_weakInit();
  v18 = sub_2178CCF68;
  v19 = v10;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2178C9924;
  v17 = &block_descriptor_30;
  v11 = _Block_copy(&v14);

  v14 = v1;
  v15 = __PAIR64__(v6, v3);
  v16 = v5;
  v12 = [v8 addPeriodicTimeObserverForInterval:&v14 queue:v9 usingBlock:v11];
  _Block_release(v11);

  sub_2179694AC();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v14);
}

double sub_2178C966C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_21796920C();

  v13 = sub_2179691FC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v12;
  *(v14 + 40) = a1;
  *(v14 + 48) = v5;
  *(v14 + 52) = v7;
  *(v14 + 56) = a3;

  sub_2178D2328();

  return result;
}

uint64_t sub_2178C97F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  sub_21796920C();
  v7[10] = sub_2179691FC();
  v9 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_2178C9890, v9, v8);
}

uint64_t sub_2178C9890()
{
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_11_5();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2178CBA70(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  **(v0 + 40) = Strong == 0;
  OUTLINED_FUNCTION_39();

  return v2();
}

double sub_2178C9924(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);

  return result;
}

uint64_t sub_2178C9990(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v2);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_5();
  sub_2178CAB08(v1);
  v4 = _s5StateVMa(0);
  OUTLINED_FUNCTION_24_3(v1, 1, v4);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  OUTLINED_FUNCTION_21_3();
  sub_2178653BC(v7, v8, v9);
  return v6;
}

void sub_2178C9A40()
{
  OUTLINED_FUNCTION_81();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  OUTLINED_FUNCTION_48(v1);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - v3;
  sub_21796809C();
  OUTLINED_FUNCTION_2();
  v34 = v6;
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
  OUTLINED_FUNCTION_48(v10);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5D0, &qword_21796DD68);
  OUTLINED_FUNCTION_48(v12);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = sub_21796869C();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  sub_2179687BC();
  sub_2179687AC();
  v23 = sub_21796878C();

  if (v23)
  {
    v24 = sub_21796888C();
    if (v24)
    {
      sub_217936580(v24);

      OUTLINED_FUNCTION_24_3(v15, 1, v16);
      if (!v25)
      {
        (*(v18 + 32))(v22, v15, v16);
        sub_21796867C();
        (*(v18 + 8))(v22, v16);
        sub_21796572C();
        v26 = OUTLINED_FUNCTION_22_1();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, v27, v28);
        sub_2178653BC(v0, &qword_27CB8B218, &unk_217970AE0);
        if (EnumTagSinglePayload != 1)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_7();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v16);
    }

    sub_2178653BC(v15, &qword_27CB8C5D0, &qword_21796DD68);
LABEL_9:
    sub_2179688CC();
    sub_2179684BC();
    sub_21796808C();
    (*(v34 + 8))(v9, v35);
    v33 = sub_21796862C();
    OUTLINED_FUNCTION_24_3(v4, 1, v33);
    sub_2178653BC(v4, &qword_27CB8AC40, &qword_21796B248);
  }

LABEL_10:
  OUTLINED_FUNCTION_80();
}

void sub_2178C9D88()
{
  OUTLINED_FUNCTION_81();
  v4 = v3;
  sub_2179688CC();
  OUTLINED_FUNCTION_2();
  v71 = v6;
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = v7;
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v8);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  v69 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
  OUTLINED_FUNCTION_48(v11);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - v13;
  v67 = sub_21796572C();
  OUTLINED_FUNCTION_2();
  v65 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5D0, &qword_21796DD68);
  OUTLINED_FUNCTION_48(v20);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_3();
  v22 = sub_21796869C();
  OUTLINED_FUNCTION_2();
  v66 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v28);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_16_3();
  v30 = _s5StateVMa(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14();
  v34 = v33 - v32;
  v73 = v0;
  sub_2178CAB08(v1);
  OUTLINED_FUNCTION_24_3(v1, 1, v30);
  if (v35)
  {
    sub_2178653BC(v1, &qword_27CB8C058, &qword_21796D1D8);
    v36 = sub_21796888C();
    if (v36)
    {
      sub_217936580(v36);

      v37 = OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_24_3(v37, v38, v22);
      if (!v35)
      {
        (*(v66 + 32))(v27, v2, v22);
        sub_21796867C();
        v39 = v67;
        OUTLINED_FUNCTION_24_3(v14, 1, v67);
        if (!v35)
        {
          v61 = v65;
          (*(v65 + 32))(v19, v14, v39);
          sub_2178CACC4();
          (*(v61 + 8))(v19, v39);
          v62 = OUTLINED_FUNCTION_28_1();
          v63(v62);
          goto LABEL_15;
        }

        v40 = OUTLINED_FUNCTION_28_1();
        v41(v40);
        v42 = &qword_27CB8B218;
        v43 = &unk_217970AE0;
        v44 = v14;
LABEL_14:
        sub_2178653BC(v44, v42, v43);
        sub_21796923C();
        OUTLINED_FUNCTION_13_7();
        __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
        OUTLINED_FUNCTION_27_2();
        v52 = swift_allocObject();
        swift_weakInit();
        v54 = v70;
        v53 = v71;
        v55 = v72;
        (*(v71 + 16))(v70, v4, v72);
        sub_21796920C();

        v56 = sub_2179691FC();
        v57 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v58 = (v68 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
        v59 = swift_allocObject();
        v60 = MEMORY[0x277D85700];
        *(v59 + 16) = v56;
        *(v59 + 24) = v60;
        (*(v53 + 32))(v59 + v57, v54, v55);
        *(v59 + v58) = v52;

        OUTLINED_FUNCTION_26_2();
        sub_2178D207C();

        goto LABEL_15;
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_7();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v22);
    }

    v42 = &qword_27CB8C5D0;
    v43 = &qword_21796DD68;
    v44 = v2;
    goto LABEL_14;
  }

  sub_2178CCDB0(v1, v34);
  if (*(v34 + *(v30 + 20)) == 2)
  {
    sub_2178CC0F4();
  }

  else
  {
    sub_2178CBC5C();
  }

  sub_2178B927C(v34);
LABEL_15:
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178CA2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_2179688CC();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
  v5[11] = swift_task_alloc();
  v7 = sub_21796572C();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5D0, &qword_21796DD68);
  v5[15] = swift_task_alloc();
  v8 = sub_21796869C();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = sub_21796920C();
  v5[20] = sub_2179691FC();
  v9 = swift_task_alloc();
  v5[21] = v9;
  *v9 = v5;
  v9[1] = sub_2178CA524;

  return Song.catalogPreviewAssets.getter();
}

uint64_t sub_2178CA524()
{
  OUTLINED_FUNCTION_84();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  *(v5 + 176) = v4;
  *(v5 + 184) = v0;

  v7 = sub_2179691BC();
  if (v0)
  {
    v8 = sub_2178CA848;
  }

  else
  {
    v8 = sub_2178CA678;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2178CA678()
{
  OUTLINED_FUNCTION_84();
  v1 = v0[22];

  if (!v1)
  {
    goto LABEL_12;
  }

  v3 = v0[15];
  v2 = v0[16];
  sub_217936580(v0[22]);

  OUTLINED_FUNCTION_24_3(v3, 1, v2);
  if (v9)
  {
    v4 = v0[15];
    v5 = &qword_27CB8C5D0;
    v6 = &qword_21796DD68;
LABEL_8:
    sub_2178653BC(v4, v5, v6);
    goto LABEL_12;
  }

  v8 = v0[11];
  v7 = v0[12];
  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  sub_21796867C();
  OUTLINED_FUNCTION_24_3(v8, 1, v7);
  if (v9)
  {
    v10 = v0[11];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v5 = &qword_27CB8B218;
    v6 = &unk_217970AE0;
    v4 = v10;
    goto LABEL_8;
  }

  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  OUTLINED_FUNCTION_11_5();
  if (swift_weakLoadStrong())
  {
    sub_2178CACC4();
  }

  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v12 + 8))(v11, v13);
LABEL_12:

  OUTLINED_FUNCTION_39();

  return v14();
}

uint64_t sub_2178CA848()
{
  v29 = v0;

  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31(&qword_27CB8A480);
  }

  v1 = v0[23];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  v6 = sub_21796653C();
  __swift_project_value_buffer(v6, qword_27CB97B00);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_21796651C();
  v9 = sub_21796937C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[23];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 136446466;
    OUTLINED_FUNCTION_1_9();
    sub_2178CCE14(v16, v17, MEMORY[0x277CD8270]);
    v18 = sub_21796966C();
    v20 = v19;
    (*(v13 + 8))(v12, v14);
    v21 = sub_217957F4C(v18, v20, &v28);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    v0[5] = v11;
    v22 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v23 = sub_217968F8C();
    v25 = sub_217957F4C(v23, v24, &v28);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_217846000, v8, v9, "Failed to fetch catalogPreviewAssets for song: %{public}s. Error = %{public}s.", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  OUTLINED_FUNCTION_39();

  return v26();
}

uint64_t sub_2178CAB08@<X0>(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v4);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_5();
  v6 = _s5StateVMa(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  OUTLINED_FUNCTION_24_3(v2, 1, v6);
  if (v11)
  {
    sub_2178653BC(v2, &qword_27CB8C058, &qword_21796D1D8);
LABEL_7:
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v17, 1, v6);
  }

  sub_2178CCDB0(v2, v10);
  sub_2179688CC();
  OUTLINED_FUNCTION_1_9();
  sub_2178CCE14(v12, v13, MEMORY[0x277CD8258]);
  v14 = sub_21796848C();
  if ((v14 & 1) == 0)
  {
    sub_2178B927C(v10);
    goto LABEL_7;
  }

  v15 = OUTLINED_FUNCTION_28_1();
  sub_2178CCDB0(v15, v16);
  v17 = 0;
  return __swift_storeEnumTagSinglePayload(a2, v17, 1, v6);
}

void sub_2178CACC4()
{
  OUTLINED_FUNCTION_81();
  v1 = v0;
  v3 = v2;
  v4 = sub_2179688CC();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v65 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v10);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v11);
  v12 = sub_21796572C();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_5();
  v63 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v21);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  v69 = v6;
  v25 = *(v6 + 16);
  v64 = v1;
  v67 = v4;
  v60 = v25;
  v25(&v59 - v23, v1, v4);
  v26 = _s5StateVMa(0);
  *&v24[v26[5]] = 1;
  *&v24[v26[6]] = 0x40F86A0000000000;
  *&v24[v26[7]] = 0;
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v26);
  sub_2178C91E4(v24);
  sub_2178C2C34(0, &qword_27CB8C5B8, 0x277CE6650);
  v68 = v14;
  v27 = *(v14 + 16);
  v66 = v3;
  v59 = v27;
  v27(v20, v3, v12);
  v28 = sub_2178CB27C(v20);
  v29 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
  sub_21796923C();
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_27_2();
  v34 = swift_allocObject();
  swift_weakInit();
  sub_21796920C();

  v35 = v28;
  v36 = sub_2179691FC();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = v34;
  v37[5] = v35;
  v62 = v35;

  OUTLINED_FUNCTION_26_2();
  sub_2178D2328();

  v39 = v29;
  sub_2178CBC5C();
  v61 = v39;

  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31(&qword_27CB8A480);
  }

  v40 = sub_21796653C();
  __swift_project_value_buffer(v40, qword_27CB97B00);
  v41 = v65;
  v42 = v67;
  v60(v65, v64, v67);
  v43 = v63;
  v59(v63, v66, v12);
  v44 = sub_21796651C();
  v45 = sub_21796939C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = v42;
    v47 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v70 = v66;
    *v47 = 136446466;
    OUTLINED_FUNCTION_1_9();
    sub_2178CCE14(v48, v49, MEMORY[0x277CD8270]);
    v50 = sub_21796966C();
    v51 = v12;
    v53 = v52;
    (*(v69 + 8))(v41, v46);
    v54 = sub_217957F4C(v50, v53, &v70);

    *(v47 + 4) = v54;
    *(v47 + 12) = 2082;
    v55 = sub_2179656EC();
    v57 = v56;
    (*(v68 + 8))(v43, v51);
    v58 = sub_217957F4C(v55, v57, &v70);

    *(v47 + 14) = v58;
    _os_log_impl(&dword_217846000, v44, v45, "Starting preview for song: %{public}s with previewURL: %{public}s.", v47, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  else
  {

    (*(v68 + 8))(v43, v12);
    (*(v69 + 8))(v41, v42);
  }

  OUTLINED_FUNCTION_80();
}

id sub_2178CB27C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21796570C();
  v4 = [v2 initWithURL:v3 options:0];

  v5 = sub_21796572C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_2178CB31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_21796920C();
  v5[8] = sub_2179691FC();
  v7 = sub_2179691BC();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_2178CB3B8, v7, v6);
}

uint64_t sub_2178CB3B8()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_11_5();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_2178CB4AC;

    return sub_2178CB650();
  }

  else
  {

    **(v0 + 40) = *(v0 + 88) == 0;
    OUTLINED_FUNCTION_39();

    return v4();
  }
}

uint64_t sub_2178CB4AC()
{
  OUTLINED_FUNCTION_84();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_6();
  *v3 = v2;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_2178CB5E4, v5, v4);
}

uint64_t sub_2178CB5E4()
{
  OUTLINED_FUNCTION_62();

  **(v0 + 40) = *(v0 + 88) == 0;
  OUTLINED_FUNCTION_39();

  return v1();
}

uint64_t sub_2178CB650()
{
  OUTLINED_FUNCTION_62();
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = sub_21796920C();
  v1[9] = sub_2179691FC();
  v4 = sub_2179691BC();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_2178CB6E8, v4, v3);
}

uint64_t sub_2178CB6E8()
{
  OUTLINED_FUNCTION_84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5B0, &qword_21796DD50);
  v1 = sub_2179658FC();
  v0[12] = v1;
  v2 = sub_2179691FC();
  v0[13] = v2;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_2178CB7D0;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2821FAF00](v0 + 15, v1, v2, v4);
}

uint64_t sub_2178CB7D0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    v6 = sub_2178CBA18;
  }

  else
  {

    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    v6 = sub_2178CB938;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2178CB938()
{

  v1 = sub_2178C92B8((v0 + 16));
  v3 = v2;
  v4 = _s5StateVMa(0);
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    sub_2179693FC();
    *(v3 + *(v4 + 24)) = v5;
  }

  (v1)(v0 + 16, 0);
  OUTLINED_FUNCTION_39();

  return v6();
}

uint64_t sub_2178CBA18()
{
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_39();

  return v0();
}

void sub_2178CBA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v6);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_3();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  v8 = _s5StateVMa(0);
  v9 = OUTLINED_FUNCTION_22_1();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8))
  {
    sub_2178653BC(v4, &qword_27CB8C058, &qword_21796D1D8);
  }

  else
  {
    v11 = *(v4 + v8[6]);
    sub_2178653BC(v4, &qword_27CB8C058, &qword_21796D1D8);
    v12 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player;
    if ([*(v3 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) timeControlStatus])
    {
      sub_2179693FC();
      v14 = v11 - v13;
      v15 = sub_2178C92B8(v23);
      v17 = OUTLINED_FUNCTION_19_2(v15, v16);
      if (!__swift_getEnumTagSinglePayload(v17, v18, v8))
      {
        *(a2 + v8[7]) = v14;
      }

      (v15)(v23, 0);
      v19 = sub_2178C92B8(v23);
      v21 = OUTLINED_FUNCTION_19_2(v19, v20);
      if (!__swift_getEnumTagSinglePayload(v21, v22, v8))
      {
        *(a2 + v8[5]) = [*(v3 + v12) timeControlStatus];
      }

      (v19)(v23, 0);
      if (v14 <= 0.0)
      {
        sub_2178CC26C();
      }
    }

    else
    {
      sub_2178CC0F4();
    }
  }
}

void sub_2178CBC5C()
{
  OUTLINED_FUNCTION_81();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v4);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  if (v3)
  {
    [*(v1 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) replaceCurrentItemWithPlayerItem_];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  v8 = _s5StateVMa(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    sub_2178653BC(v7, &qword_27CB8C058, &qword_21796D1D8);
  }

  else
  {
    v9 = *&v7[*(v8 + 20)];
    sub_2178653BC(v7, &qword_27CB8C058, &qword_21796D1D8);
    if (v9 == 2)
    {
      goto LABEL_24;
    }
  }

  v10 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player;
  [*(v1 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) play];
  v11 = [*(v1 + v10) error];
  if (v11)
  {
    v12 = v11;
    if (qword_27CB8A480 != -1)
    {
      OUTLINED_FUNCTION_31(&qword_27CB8A480);
    }

    v13 = sub_21796653C();
    __swift_project_value_buffer(v13, qword_27CB97B00);
    v14 = v12;
    v15 = sub_21796651C();
    v16 = sub_21796937C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v38 = v14;
      v39 = v18;
      *v17 = 136315138;
      v19 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
      v20 = sub_217968F8C();
      v22 = sub_217957F4C(v20, v21, &v39);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_217846000, v15, v16, "Failed to play preview. Error=%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_73();
    }

    v39 = v14;
    v23 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    type metadata accessor for AVError(0, v24, v25, v26);
    if (swift_dynamicCast())
    {
      v27 = v38;
      v39 = v38;
      sub_2178CCE14(&qword_27CB8A560, type metadata accessor for AVError, &unk_21796A608);
      sub_21796568C();
      if (v38 == -11912)
      {
        v28 = sub_21796651C();
        v29 = sub_21796939C();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_217846000, v28, v29, "Attempting to rebuild the preview player.", v30, 2u);
          OUTLINED_FUNCTION_73();
        }

        v31 = sub_2178C8F18();
        sub_2178C9494(v31);
        if (v3 && (v32 = [v3 asset]) != 0)
        {
          v33 = v32;
          v34 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
          sub_2178CBC5C();
        }

        else
        {
          v35 = sub_21796651C();
          v36 = sub_21796937C();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&dword_217846000, v35, v36, "Cannot preview item because the AVPlayerItem does not exist.", v37, 2u);
            OUTLINED_FUNCTION_73();
          }
        }
      }
    }
  }

  sub_2178C9424(1);
LABEL_24:
  OUTLINED_FUNCTION_80();
}

void sub_2178CC0F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v1);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  v4 = v11 - v3;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21_3();
  sub_21796657C();

  v6 = _s5StateVMa(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v6))
  {
    sub_2178653BC(v4, &qword_27CB8C058, &qword_21796D1D8);
  }

  else
  {
    KeyPath = *&v4[*(v6 + 20)];
    sub_2178653BC(v4, &qword_27CB8C058, &qword_21796D1D8);
    if (!KeyPath)
    {
      return;
    }
  }

  v7 = sub_2178C92B8(v11);
  v9 = OUTLINED_FUNCTION_19_2(v7, v8);
  if (!__swift_getEnumTagSinglePayload(v9, v10, v6))
  {
    *(KeyPath + *(v6 + 20)) = 0;
  }

  (v7)(v11, 0);
  [*(v0 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) pause];
  sub_2178C9424(0);
  sub_2178CC3BC();
}

void sub_2178CC26C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  v2 = OUTLINED_FUNCTION_48(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17_5();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  v7 = _s5StateVMa(0);
  v8 = OUTLINED_FUNCTION_22_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, v9, v7);
  OUTLINED_FUNCTION_21_3();
  sub_2178653BC(v11, v12, v13);
  if (EnumTagSinglePayload != 1)
  {
    [*(v0 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) replaceCurrentItemWithPlayerItem_];
    OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
    sub_2178C91E4(v5);
    sub_2178CC3BC();
  }
}

void sub_2178CC3BC()
{
  OUTLINED_FUNCTION_81();
  sub_217967ECC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14();
  v4 = v3 - v2;
  v22 = sub_217967EFC();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  v11 = sub_217967EDC();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  sub_2178C2C34(0, &qword_27CB8C590, 0x277D85C78);
  (*(v13 + 104))(v17, *MEMORY[0x277D851B8], v11);
  v18 = sub_2179693CC();
  (*(v13 + 8))(v17, v11);
  v23[4] = sub_2178CCC80;
  v24 = v0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_2178CC7E8;
  v23[3] = &block_descriptor_1;
  v19 = _Block_copy(v23);

  sub_217967EEC();
  sub_2178CCE14(&qword_27CB8C598, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5A0, &qword_21796DD00);
  sub_2178CCCA0();
  sub_2179694BC();
  MEMORY[0x21CEA8320](0, v10, v4, v19);
  _Block_release(v19);

  v20 = OUTLINED_FUNCTION_28_1();
  v21(v20);
  (*(v6 + 8))(v10, v22);

  OUTLINED_FUNCTION_80();
}

void sub_2178CC6D8(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer_player) audioSession];
  v7[0] = 0;
  v2 = [v1 setActive:0 withOptions:1 error:v7];

  v3 = v7[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_2179656CC();

    swift_willThrow();
  }
}

double sub_2178CC7E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_2178CC82C()
{
  v1 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C588, &qword_21796DCF8);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker13PreviewPlayer__isPreviewing;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C580, &qword_21796DCF0);
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_2178CC8E4()
{
  sub_2178CC82C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _s13PreviewPlayerCMa(uint64_t a1)
{
  result = qword_27CB8C560;
  if (!qword_27CB8C560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2178CC990(uint64_t a1)
{
  sub_2178CCA68(319);
  if (v1 <= 0x3F)
  {
    sub_2178CCACC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2178CCA68(uint64_t a1)
{
  if (!qword_27CB8C570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C058, &qword_21796D1D8);
    v1 = sub_21796659C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8C570);
    }
  }
}

void sub_2178CCACC()
{
  if (!qword_27CB8C578)
  {
    v0 = sub_21796659C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8C578);
    }
  }
}

uint64_t sub_2178CCB28@<X0>(uint64_t *a2@<X8>)
{
  _s13PreviewPlayerCMa(0);
  result = sub_21796654C();
  *a2 = result;
  return result;
}

uint64_t sub_2178CCB68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178CCBFC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C058, &qword_21796D1D8);
  OUTLINED_FUNCTION_48(v3);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_3();
  sub_2178CCB68(a1, v1);
  return sub_2178C91E4(v1);
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_2178CCCA0()
{
  result = qword_27CB8C5A8;
  if (!qword_27CB8C5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C5A0, &qword_21796DD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C5A8);
  }

  return result;
}

uint64_t sub_2178CCD04()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_4(v3);
  *v4 = v5;
  v4[1] = sub_217864540;
  v6 = OUTLINED_FUNCTION_8_6();

  return sub_2178CB31C(v6, v7, v8, v2, v1);
}

uint64_t sub_2178CCDB0(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178CCE14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2178CCE5C()
{
  v1 = *(sub_2179688CC() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_4(v3);
  *v4 = v5;
  v4[1] = sub_2178655D0;
  v6 = OUTLINED_FUNCTION_8_6();

  return sub_2178CA2EC(v6, v7, v8, v9, v2);
}

uint64_t sub_2178CCF70()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_4(v5);
  *v6 = v7;
  v6[1] = sub_2178655D0;
  v8 = OUTLINED_FUNCTION_8_6();

  return sub_2178C97F0(v8, v9, v10, v1, v2, v4, v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return swift_beginAccess();
}

uint64_t sub_2178CD180(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2178CD1D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_2178CD250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_217966FAC();
  OUTLINED_FUNCTION_2();
  v32 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5D8, &qword_21796DE70);
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5E0, &qword_21796DE78);
  MEMORY[0x28223BE20](v18);
  v20 = v31 - v19;
  if (a3 && (a2 == 0x2E6E6F7276656863 ? (v21 = a3 == 0xEF64726177726F66) : (v21 = 0), v21 || (sub_21796969C() & 1) != 0))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5E8, &unk_21796DE80);
    (*(*(v22 - 8) + 16))(v20, a1, v22);
    swift_storeEnumTagMultiPayload();
    v23 = sub_2178CD59C();
    v24 = sub_2178CD600();
    v34 = v22;
    v35 = v8;
    v36 = v23;
    v37 = v24;
    OUTLINED_FUNCTION_0_9();
    return sub_217966F8C();
  }

  else
  {
    sub_217966A8C();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5E8, &unk_21796DE80);
    v27 = sub_2178CD59C();
    v28 = sub_2178CD600();
    v31[1] = a4;
    v29 = v28;
    sub_21796773C();
    (*(v32 + 8))(v12, v8);
    v30 = v33;
    (*(v14 + 16))(v20, v17, v33);
    swift_storeEnumTagMultiPayload();
    v34 = v26;
    v35 = v8;
    v36 = v27;
    v37 = v29;
    OUTLINED_FUNCTION_0_9();
    sub_217966F8C();
    return (*(v14 + 8))(v17, v30);
  }
}

unint64_t sub_2178CD59C()
{
  result = qword_27CB8C5F0;
  if (!qword_27CB8C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C5E8, &unk_21796DE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C5F0);
  }

  return result;
}

unint64_t sub_2178CD600()
{
  result = qword_27CB8AE00;
  if (!qword_27CB8AE00)
  {
    sub_217966FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AE00);
  }

  return result;
}

unint64_t sub_2178CD658()
{
  result = qword_27CB8C5F8;
  if (!qword_27CB8C5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CB8C600, &unk_21796DE90);
    sub_2178CD59C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C5E8, &unk_21796DE80);
    sub_217966FAC();
    sub_2178CD600();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C5F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_getOpaqueTypeConformance2();
}

__n128 sub_2178CD764@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  v10 = *a2;
  v17 = *(a2 + 8);
  v11 = *(a2 + 3);
  v12 = _s17PlaylistEntryCellVMa(0, a6, a7, a5);
  v13 = (a4 + v12[11]);
  *v13 = xmmword_21796DEA0;
  v13[1] = xmmword_21796B360;
  v13[2] = xmmword_21796DEB0;
  v13[3] = xmmword_21796DEC0;
  sub_217968DFC();
  OUTLINED_FUNCTION_3();
  (*(v14 + 32))(a4, a1);
  v15 = a4 + v12[9];
  *v15 = v10;
  result = v17;
  *(v15 + 8) = v17;
  *(v15 + 24) = v11;
  *(a4 + v12[10]) = a3;
  return result;
}

uint64_t sub_2178CD864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C770, &qword_21796E048);
  v9 = (a2 + v8[12]);
  if (qword_27CB8A378 != -1)
  {
    swift_once();
  }

  _s13PreviewPlayerCMa(0);
  sub_2178CF218(&qword_27CB8AFE0, _s13PreviewPlayerCMa, &unk_21796DCB8);

  *v9 = sub_2179668BC();
  v9[1] = v10;
  v11 = (a2 + v8[13]);
  __asm { FMOV            V1.2D, #5.0 }

  *v11 = xmmword_21796B360;
  v11[1] = _Q1;
  v11[2] = xmmword_21796B370;
  v17 = sub_217968DFC();
  v18 = *(v17 - 8);
  (*(v18 + 16))(a2, a1, v17);
  *(a2 + v8[9]) = a3;
  sub_2178767B4(&v27);
  v19 = *(&v28 + 1);
  v20 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  v21 = (*(v20 + 104))(v19, v20) * a3;
  __swift_destroy_boxed_opaque_existential_1(&v27);
  *(a2 + v8[10]) = v21;
  sub_2178CF218(&qword_27CB8B0E0, MEMORY[0x277CD8590], MEMORY[0x277D2B450]);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    goto LABEL_9;
  }

  v22 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
LABEL_9:
    (*(v18 + 8))(a1, v17);
    result = sub_2178653BC(&v27, &qword_27CB8B088, &qword_21796B740);
    goto LABEL_10;
  }

  v23 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  (*(v23 + 96))(v26, v22, v23);
  (*(v18 + 8))(a1, v17);
  v24 = LOBYTE(v26[0]);
  result = __swift_destroy_boxed_opaque_existential_1(&v27);
  if (v24)
  {
    a4 = v21 * 0.5;
  }

LABEL_10:
  *(a2 + v8[11]) = a4;
  return result;
}

uint64_t sub_2178CDB84(uint64_t a1)
{
  result = sub_217968DFC();
  if (v4 <= 0x3F)
  {
    result = _s17PlaylistEntryCellV9ConstantsVMa(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2178CDC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2178CDCB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2178CDCD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_2178CDD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v109 = sub_217966FAC();
  OUTLINED_FUNCTION_0_1();
  v107 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v106 = v5;
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v94 = *(v8 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52(&v81[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = sub_217968DFC();
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v110 = v15;
  v16 = *(a1 + 16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C708, &qword_21796E010);
  v86 = v17;
  OUTLINED_FUNCTION_3_10();
  v20 = sub_2178CF218(v18, v19, &unk_2179715E0);
  v85 = v20;
  v21 = *(a1 + 24);
  OUTLINED_FUNCTION_2_5();
  v84 = sub_217864B2C(v22, &qword_27CB8C708, &qword_21796E010, v23);
  v115 = v11;
  v116 = v16;
  v117 = v17;
  v118 = v20;
  v119 = v21;
  v120 = v84;
  v24 = v21;
  _s9HItemCellVMa(0, &v115);
  OUTLINED_FUNCTION_0_1();
  v102 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_52(&v81[-v27]);
  OUTLINED_FUNCTION_5_5();
  v29 = v28;
  v92 = v28;
  WitnessTable = swift_getWitnessTable();
  v91 = WitnessTable;
  OUTLINED_FUNCTION_4_9();
  v90 = sub_2178CF218(v31, v32, MEMORY[0x277CDDFA8]);
  v115 = v29;
  v116 = v109;
  v117 = WitnessTable;
  v118 = v90;
  v99 = MEMORY[0x277CDE6B0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v100 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_52(&v81[-v35]);
  v97 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v104 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_52(&v81[-v38]);
  v103 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v105 = v39;
  v41 = MEMORY[0x28223BE20](v40);
  v98 = &v81[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_52(&v81[-v43]);
  v44 = v88;
  v45 = v11;
  (*(v13 + 16))(v110, v88, v11);
  v46 = *(a1 + 40);
  v47 = v44;
  v48 = v44 + *(a1 + 36);
  v49 = *(v48 + 8);
  v50 = *(v48 + 16);
  v51 = *(v48 + 24);
  LOBYTE(v115) = *v48;
  v116 = v49;
  v117 = v50;
  v118 = v51;
  v83 = v47 + *(a1 + 44);
  v52 = *(v83 + 48);
  v82 = *(v47 + v46);
  v53 = v89;
  (*(v7 + 16))(v89);
  v54 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v16;
  *(v55 + 24) = v24;
  (*(v7 + 32))(v55 + v54, v53, a1);
  v56 = v45;
  v57 = v86;
  v58 = v85;
  v59 = v84;
  v60 = sub_217862E84();
  OUTLINED_FUNCTION_1_10(v60, &v122);
  v61 = sub_217862E84();
  OUTLINED_FUNCTION_1_10(v61, &v121);
  v62 = sub_217862E84();
  OUTLINED_FUNCTION_1_10(v62, &v120);
  LOBYTE(v53) = OUTLINED_FUNCTION_59();

  sub_217863EC4(v51);
  v78 = v57;
  v63 = v95;
  sub_2178EFD2C(v110, &v115, v94 & 1, v89 & 1, 0, 0, v88 & 1, 11, v95, v52, v53 & 1, 0, 0, v82, v16, sub_2178CEF90, v55, v56, v16, v78, v58, v24, v59);
  v64 = v106;
  v65 = v92;
  v66 = v109;
  v67 = v91;
  v68 = v90;
  sub_217884F70(v92);
  OUTLINED_FUNCTION_59();
  v69 = v87;
  sub_21796773C();
  (*(v107 + 8))(v64, v66);
  (*(v102 + 8))(v63, v65);
  sub_21796742C();
  v115 = v65;
  v116 = v66;
  v117 = v67;
  v118 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = v93;
  v72 = OpaqueTypeMetadata2;
  sub_217967A0C();
  (*(v100 + 8))(v69, v72);
  v113 = OpaqueTypeConformance2;
  v114 = MEMORY[0x277CDF918];
  v79 = v97;
  v80 = swift_getWitnessTable();
  sub_2178935BC(v79);
  v73 = v98;
  sub_2179679AC();
  (*(v104 + 8))(v71, v79);
  v111 = v80;
  v112 = MEMORY[0x277CDFC60];
  v74 = v103;
  swift_getWitnessTable();
  v75 = v101;
  sub_2179560E4();
  v76 = *(v105 + 8);
  v76(v73, v74);
  sub_2179560E4();
  return v76(v75, v74);
}

uint64_t sub_2178CE644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a4;
  v7 = sub_217968DFC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C718, &qword_21796E018);
  MEMORY[0x28223BE20](v63);
  v62 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C720, &qword_21796E020);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C728, &qword_21796E028);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C730, &qword_21796E030);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v61 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v67 = &v56 - v21;
  v22 = *(v8 + 16);
  v59 = v7;
  v57 = v22;
  v22(v17, a1, v7);
  v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C738, &qword_21796E038) + 36)] = 0;
  LOBYTE(v7) = sub_21796742C();
  v24 = *(_s17PlaylistEntryCellVMa(0, a2, a3, v23) + 44);
  v60 = a1;
  v25 = a1 + v24;
  sub_21796660C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C740, &qword_21796E040) + 36)];
  *v34 = v7;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  LOBYTE(a3) = sub_21796743C();
  sub_21796660C();
  v35 = &v17[*(v15 + 36)];
  *v35 = a3;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  if (qword_27CB8A3F0 != -1)
  {
    swift_once();
  }

  v40 = xmmword_27CB979E0;
  v41 = qword_27CB979F0;
  v68 = xmmword_27CB979E0;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x657469726F766166, 0xE800000000000000);

  sub_2178EE0A8(v68, *(&v68 + 1), v41);

  sub_2178CF01C();
  sub_21796790C();

  sub_2178653BC(v17, &qword_27CB8C728, &qword_21796E028);
  v42 = v58;
  v57(v58, v60, v59);
  v43 = v62;
  sub_2178CD864(v42, v62, *(v25 + 16), *(v25 + 24));
  LOBYTE(v42) = sub_21796743C();
  sub_21796660C();
  v44 = v43 + *(v63 + 36);
  *v44 = v42;
  *(v44 + 8) = v45;
  *(v44 + 16) = v46;
  *(v44 + 24) = v47;
  *(v44 + 32) = v48;
  *(v44 + 40) = 0;
  v68 = v40;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x6B726F77747261, 0xE700000000000000);

  sub_2178EE0A8(v68, *(&v68 + 1), v41);

  sub_2178CF160();
  v49 = v64;
  sub_21796790C();

  sub_2178653BC(v43, &qword_27CB8C718, &qword_21796E018);
  v50 = v67;
  v51 = v61;
  sub_2178AEC6C(v67, v61, &qword_27CB8C730, &qword_21796E030);
  v52 = v65;
  sub_2178AEC6C(v49, v65, &qword_27CB8C720, &qword_21796E020);
  v53 = v66;
  sub_2178AEC6C(v51, v66, &qword_27CB8C730, &qword_21796E030);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8C778, &unk_21796E050);
  sub_2178AEC6C(v52, v53 + *(v54 + 48), &qword_27CB8C720, &qword_21796E020);
  sub_2178653BC(v49, &qword_27CB8C720, &qword_21796E020);
  sub_2178653BC(v50, &qword_27CB8C730, &qword_21796E030);
  sub_2178653BC(v52, &qword_27CB8C720, &qword_21796E020);
  return sub_2178653BC(v51, &qword_27CB8C730, &qword_21796E030);
}

uint64_t sub_2178CED0C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v5);
  v6 = v0[5];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v6);
  v7 = v0[6];
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v7);
  v8 = v0[7];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v8);
}

uint64_t sub_2178CEDDC()
{
  sub_21796973C();
  sub_2178CED0C();
  return sub_21796977C();
}

BOOL sub_2178CEE24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_2178CEC80(v7, v8);
}

uint64_t sub_2178CEEF0(uint64_t a1)
{
  sub_21796973C();
  sub_2178CED0C();
  return sub_21796977C();
}

uint64_t sub_2178CEF90@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(_s17PlaylistEntryCellVMa(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_2178CE644(v7, v4, v5, a2);
}

unint64_t sub_2178CF01C()
{
  result = qword_27CB8C748;
  if (!qword_27CB8C748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C728, &qword_21796E028);
    sub_2178CF0A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C748);
  }

  return result;
}

unint64_t sub_2178CF0A8()
{
  result = qword_27CB8C750;
  if (!qword_27CB8C750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C740, &qword_21796E040);
    sub_217864B2C(&qword_27CB8C758, &qword_27CB8C738, &qword_21796E038, &unk_217973718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C750);
  }

  return result;
}

unint64_t sub_2178CF160()
{
  result = qword_27CB8C760;
  if (!qword_27CB8C760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C718, &qword_21796E018);
    sub_217864B2C(&qword_27CB8C768, &qword_27CB8C770, &qword_21796E048, &unk_217970288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C760);
  }

  return result;
}

uint64_t sub_2178CF218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2178CF2E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2178CF33C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2178CF398()
{
  type metadata accessor for MusicKitInternal_SwiftUI_FinalClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CB978B8 = result;
  return result;
}

__n128 sub_2178CF3F0@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X6>)
{
  v9 = *a2;
  v15 = *(a2 + 8);
  v10 = *(a2 + 3);
  v16[0] = a3;
  v16[1] = a6;
  v16[2] = a4;
  v16[3] = a7;
  v11 = _s17SearchContentViewVMa(0, v16);
  *(a5 + *(v11 + 56)) = xmmword_21796E0A0;
  v12 = sub_21796810C();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  v13 = a5 + *(v11 + 52);
  *v13 = v9;
  result = v15;
  *(v13 + 8) = v15;
  *(v13 + 24) = v10;
  return result;
}

uint64_t sub_2178CF4E8(void *a1)
{
  v2 = a1[2];
  v3 = a1[4];
  result = sub_21796810C();
  if (v5 <= 0x3F)
  {
    v10 = 0;
    v12 = result;
    v13 = &type metadata for MusicPicker.Click.SourceContext;
    v6 = a1[3];
    v7 = a1[5];
    v9[0] = v2;
    v9[1] = v6;
    v9[2] = v3;
    v9[3] = v7;
    result = _s17SearchContentViewV9ConstantsVMa(319, v9);
    if (v8 <= 0x3F)
    {
      v11 = 0;
      v14 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2178CF5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2178CF638@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_21796708C();
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[2];
  v6 = a1[4];
  v7 = sub_21796810C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  *&v9 = v5;
  *(&v9 + 1) = a1[3];
  v24 = v9;
  *&v10 = v6;
  *(&v10 + 1) = a1[5];
  v23 = v10;
  v34 = v9;
  v35 = v10;
  _s16SearchResultCellVMa(255, &v34);
  swift_getTupleTypeMetadata2();
  v11 = sub_217967E9C();
  OUTLINED_FUNCTION_6_1();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v34 = v7;
  *(&v34 + 1) = AssociatedTypeWitness;
  *&v35 = v11;
  *(&v35 + 1) = WitnessTable;
  v36 = AssociatedConformanceWitness;
  sub_217967D9C();
  sub_21796698C();
  OUTLINED_FUNCTION_19_0();
  v33 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  v31 = swift_getWitnessTable();
  v32 = MEMORY[0x277CDF918];
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  v14 = sub_21796665C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v23 - v19;
  sub_217966E6C();
  v28 = v24;
  v29 = v23;
  v30 = v26;
  sub_21789A9E0();
  sub_21796664C();
  OUTLINED_FUNCTION_18_0();
  swift_getWitnessTable();
  sub_2179560E4();
  v21 = *(v15 + 8);
  v21(v18, v14);
  sub_2179560E4();
  return (v21)(v20, v14);
}

uint64_t sub_2178CF9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a6;
  v59 = a1;
  v63 = a2;
  v64 = a3;
  v50 = a3;
  v51 = a5;
  v65 = a4;
  v66 = a5;
  v57 = _s17SearchContentViewVMa(0, &v63);
  v55 = *(v57 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = v43 - v10;
  v11 = sub_21796810C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v43 - v13;
  v43[1] = v43 - v13;
  v15 = *(a4 + 40);
  v49 = a4;
  v47 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v63 = a2;
  v64 = a3;
  v44 = a2;
  v65 = a4;
  v66 = a5;
  _s16SearchResultCellVMa(255, &v63);
  swift_getTupleTypeMetadata2();
  v17 = sub_217967E9C();
  v45 = v17;
  WitnessTable = swift_getWitnessTable();
  v46 = WitnessTable;
  v48 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = v11;
  v64 = AssociatedTypeWitness;
  v43[2] = v11;
  v65 = v17;
  v66 = WitnessTable;
  v67 = AssociatedConformanceWitness;
  v20 = sub_217967D9C();
  v52 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v43 - v21;
  v23 = sub_21796698C();
  v53 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v43 - v27;
  v29 = v14;
  v30 = v59;
  (*(v12 + 16))(v29, v59, v11);
  v31 = v54;
  v32 = v55;
  v33 = v57;
  (*(v55 + 16))(v54, v30, v57);
  v34 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v35 = swift_allocObject();
  v37 = v49;
  v36 = v50;
  *(v35 + 2) = v44;
  *(v35 + 3) = v36;
  v38 = v51;
  *(v35 + 4) = v37;
  *(v35 + 5) = v38;
  (*(v32 + 32))(&v35[v34], v31, v33);
  v39 = swift_getWitnessTable();
  sub_217967D8C();
  sub_21796742C();
  v62 = v39;
  v40 = swift_getWitnessTable();
  sub_217967A0C();
  (*(v52 + 8))(v22, v20);
  v60 = v40;
  v61 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_2179560E4();
  v41 = *(v53 + 8);
  v41(v26, v23);
  sub_2179560E4();
  return (v41)(v28, v23);
}

uint64_t sub_2178CFF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a6;
  v47 = a4;
  v48 = a5;
  v52 = a2;
  v53 = a7;
  v9 = *(a3 - 1);
  MEMORY[0x28223BE20](a1);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v12;
  v58 = v13;
  v59 = v14;
  v60 = v15;
  v16 = _s16SearchResultCellVMa(0, &v57);
  v51 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v49 = &v44 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v24 = MEMORY[0x28223BE20](v50);
  v45 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v44 - v26;
  sub_217967D6C();
  v28 = sub_21796743C();
  v29 = &v23[*(v21 + 36)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  sub_2178D05C4(v23, v27);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v21);
  (*(v9 + 16))(v11, a1, a3);
  v31 = v47;
  v30 = v48;
  v57 = a3;
  v58 = v47;
  v32 = v46;
  v59 = v48;
  v60 = v46;
  v33 = _s17SearchContentViewVMa(0, &v57);
  v34 = v52 + *(v33 + 52);
  v35 = *(v34 + 8);
  v36 = *(v34 + 16);
  v37 = *(v34 + 24);
  LOBYTE(v57) = *v34;
  v58 = v35;
  v59 = v36;
  v60 = v37;
  sub_217940474(v11, &v57, 0, 0, a3, v19, v31, v30, v32);
  WitnessTable = swift_getWitnessTable();
  v39 = v49;
  sub_2179560E4();

  sub_217863EC4(v37);
  v40 = v51;
  v41 = *(v51 + 8);
  v41(v19, v16);
  v42 = v45;
  sub_2178D0634(v27, v45);
  v57 = v42;
  (*(v40 + 16))(v19, v39, v16);
  v58 = v19;
  v56[0] = v50;
  v56[1] = v16;
  v54 = sub_2178D06A4();
  v55 = WitnessTable;
  sub_2178B9390(&v57, 2, v56);
  v41(v39, v16);
  sub_2178D0728(v27);
  v41(v19, v16);
  return sub_2178D0728(v42);
}

uint64_t sub_2178D0354(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x21CEA86D0](*&v3);
}

uint64_t sub_2178D03A4(double a1, double a2)
{
  sub_21796973C();
  sub_2178D0354(a1, a2);
  return sub_21796977C();
}

uint64_t sub_2178D0464(uint64_t a1)
{
  sub_21796973C();
  sub_2178D0354(*v1, v1[1]);
  return sub_21796977C();
}

uint64_t sub_2178D0508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(_s17SearchContentViewVMa(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_2178CFF30(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_2178D05C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178D0634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2178D06A4()
{
  result = qword_27CB8A7B8;
  if (!qword_27CB8A7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
    sub_217864C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A7B8);
  }

  return result;
}

uint64_t sub_2178D0728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2178D0790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  sub_217967C0C();
  v8 = v11;
  v9 = v12;
  v11 = a1;
  v12 = a2;
  v13 = v8;
  v14 = v9;
  MEMORY[0x21CEA69A0](&v11, a3, &_s23FirstAppearanceModifierVN, a4);

  return result;
}

uint64_t sub_2178D0830(uint64_t *a1, int a2)
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

uint64_t sub_2178D0870(uint64_t result, int a2, int a3)
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

double sub_2178D08DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C880, &qword_21796E278);
  (*(*(v13 - 8) + 16))(a6, a1, v13);
  v14 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C888, &unk_21796E280) + 36));
  *v14 = sub_2178D0AB8;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;

  return result;
}

void sub_2178D09E4(void (*a1)(uint64_t), uint64_t a2, char a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C1C();
  if (v6)
  {
  }

  else
  {
    sub_217967C2C();

    a1(v5);
  }
}

unint64_t sub_2178D0AC8()
{
  result = qword_27CB8C890;
  if (!qword_27CB8C890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C888, &unk_21796E280);
    sub_2178D0B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C890);
  }

  return result;
}

unint64_t sub_2178D0B54()
{
  result = qword_27CB8C898;
  if (!qword_27CB8C898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C880, &qword_21796E278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8C898);
  }

  return result;
}

uint64_t ArtworkImage.Proxy.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_217968C2C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ArtworkImage.Proxy(uint64_t a1)
{
  result = qword_27CB8C8A0;
  if (!qword_27CB8C8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ArtworkImage.Proxy.image.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtworkImage.Proxy(0) + 24));
  v2 = v1;
  return v1;
}

BOOL static ArtworkImage.Proxy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_217968C1C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ArtworkImage.Proxy(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (v13)
    {
      sub_2178D0D80();
      v14 = v13;
      v15 = v12;
      v16 = sub_21796941C();

      if (v16)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v13;
}

unint64_t sub_2178D0D80()
{
  result = qword_2811AD2E8;
  if (!qword_2811AD2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811AD2E8);
  }

  return result;
}

void sub_2178D0DF0(uint64_t a1)
{
  sub_217968C2C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      sub_2178D0E8C(319);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2178D0E8C(uint64_t a1)
{
  if (!qword_27CB8C8B0)
  {
    sub_2178D0D80();
    v1 = sub_21796944C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8C8B0);
    }
  }
}

uint64_t MusicSubscriptionOffer.Options.figaroCampaignToken.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_1_11(a1);
  *v1 = _s17_MusicKit_SwiftUI0A17SubscriptionOfferV7OptionsV01_ab9Internal_cD0E19figaroCampaignTokenSSSgvg_0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_2_6();
}

uint64_t MusicSubscriptionOffer.Options.figaroCampaignGroup.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_1_11(a1);
  *v1 = _s17_MusicKit_SwiftUI0A17SubscriptionOfferV7OptionsV01_ab9Internal_cD0E19figaroCampaignGroupSSSgvg_0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_2_6();
}

uint64_t MusicSubscriptionOffer.Options.homePodSerialNumber.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_1_11(a1);
  *v1 = _s17_MusicKit_SwiftUI0A17SubscriptionOfferV7OptionsV01_ab9Internal_cD0E19homePodSerialNumberSSSgvg_0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_2_6();
}

uint64_t sub_2178D1008(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t MusicSubscriptionOffer.Options.homePodUniqueDeviceIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_1_11(a1);
  *v1 = _s17_MusicKit_SwiftUI0A17SubscriptionOfferV7OptionsV01_ab9Internal_cD0E29homePodUniqueDeviceIdentifierSSSgvg_0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_2_6();
}

uint64_t sub_2178D10AC(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

double sub_2178D1150(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7[0] = 0;
  v4 = 0;
  v5 = 0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
  [v2 getHue:v7 saturation:&v6 brightness:&v5 alpha:&v4];

  return *v7;
}

BOOL sub_2178D11F8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

uint64_t sub_2178D121C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2178D123C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_2178D127C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8C8B8[0];
  if (!qword_27CB8C8B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8C8B8);
  }

  return result;
}

uint64_t sub_2178D12D0(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x21CEA86D0](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x21CEA86D0](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x21CEA86D0](*&v9);
}

uint64_t sub_2178D1350(double a1, double a2, double a3, double a4)
{
  sub_21796973C();
  sub_2178D12D0(a1, a2, a3, a4);
  return sub_21796977C();
}

uint64_t sub_2178D13EC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_21796973C();
  sub_2178D12D0(v2, v3, v4, v5);
  return sub_21796977C();
}

void sub_2178D1454(uint64_t a1)
{
  sub_21796944C();
  sub_217967D5C();
  if (v1 <= 0x3F)
  {
    sub_21796919C();
    sub_21796659C();
    if (v2 <= 0x3F)
    {
      sub_2178E363C(319, &qword_27CB8C578, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_2178E363C(319, &qword_27CB8C940, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_2178E36EC(319, &qword_27CB8C948, &qword_27CB8A578, &qword_21796A750, MEMORY[0x277CBCED0]);
          if (v5 <= 0x3F)
          {
            sub_2178E3688(319, &qword_27CB8C950, MEMORY[0x277CDD968], MEMORY[0x277CBCED0]);
            if (v6 <= 0x3F)
            {
              sub_2178E36EC(319, &qword_27CB8C958, &qword_27CB8C960, &qword_21796E480, MEMORY[0x277CBCED0]);
              if (v7 <= 0x3F)
              {
                sub_2178E36EC(319, &qword_27CB8C968, &qword_27CB8B0A0, &qword_21796B758, MEMORY[0x277CBCED0]);
                if (v8 <= 0x3F)
                {
                  sub_2178E36EC(319, &qword_27CB8C970, &unk_27CB8C978, &unk_21796E488, MEMORY[0x277CBCED0]);
                  if (v9 <= 0x3F)
                  {
                    sub_2178E36EC(319, &qword_27CB8C980, &qword_27CB8B938, &qword_21796C740, MEMORY[0x277CBCED0]);
                    if (v10 <= 0x3F)
                    {
                      sub_2178E363C(319, &qword_27CB8C988, &_s12SearchSourceON);
                      if (v11 <= 0x3F)
                      {
                        sub_2178E36EC(319, &qword_27CB8C990, &qword_27CB8B958, &qword_21796C750, MEMORY[0x277CBCED0]);
                        if (v12 <= 0x3F)
                        {
                          sub_2178E36EC(319, &qword_27CB8C998, &qword_27CB8BA30, &qword_21796C848, MEMORY[0x277CBCED0]);
                          if (v13 <= 0x3F)
                          {
                            sub_2178E36EC(319, &qword_27CB8C9A0, &qword_27CB8BA28, &qword_21796C840, MEMORY[0x277CBCED0]);
                            if (v14 <= 0x3F)
                            {
                              sub_2178E36EC(319, &qword_27CB8C9A8, &qword_27CB8B238, &qword_21796C6B0, MEMORY[0x277CBCED0]);
                              if (v15 <= 0x3F)
                              {
                                sub_2178E36EC(319, &qword_27CB8C9B0, &qword_27CB8B800, &unk_21796C658, MEMORY[0x277CBCED0]);
                                if (v16 <= 0x3F)
                                {
                                  sub_2178E3688(319, &qword_27CB8C9B8, MEMORY[0x277CD8608], MEMORY[0x277D83D88]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_2178E36EC(319, &qword_27CB8C9C0, &qword_27CB8C9C8, &qword_21796E4A8, MEMORY[0x277D83D88]);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_2178E36EC(319, &qword_27CB8C9D0, &qword_27CB8C9D8, qword_21796E4B0, MEMORY[0x277CBCED0]);
                                      if (v19 <= 0x3F)
                                      {
                                        swift_initClassMetadata2();
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2178D1C94()
{
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v59 = v0;
  v63 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v9);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_45_0();
  v65 = v11;
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v60 = v15;
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC50, &qword_21796F620);
  OUTLINED_FUNCTION_48(v17);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_107();
  v19 = sub_21796595C();
  OUTLINED_FUNCTION_2();
  v58 = v20;
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v23);
  v64 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13_4();
  v26 = v25;
  v61 = v7;
  v62 = v13;
  v27 = *(v13 + 16);
  v27(v16, v7, v5);
  v28 = v3;
  OUTLINED_FUNCTION_182();
  sub_21796596C();
  v29 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_24_3(v29, v30, v19);
  if (v31)
  {
    sub_2178BE050(v1, &qword_27CB8CC50, &qword_21796F620);
  }

  else
  {
    v32 = v58;
    v53 = v5;
    v54 = v26;
    v33 = *(v58 + 32);
    v55 = v58 + 32;
    v56 = v33;
    v57 = v28;
    v33(v26, v1, v19);
    sub_21796923C();
    OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    OUTLINED_FUNCTION_27_2();
    v38 = swift_allocObject();
    swift_weakInit();
    (*(v32 + 16))(v64, v26, v19);
    v39 = v53;
    v27(v16, v61, v53);
    sub_21796920C();

    v40 = sub_2179691FC();
    v41 = (*(v32 + 80) + 72) & ~*(v32 + 80);
    v42 = v32;
    v43 = v62;
    v44 = (v22 + *(v62 + 80) + v41) & ~*(v62 + 80);
    v45 = swift_allocObject();
    v46 = MEMORY[0x277D85700];
    *(v45 + 2) = v40;
    *(v45 + 3) = v46;
    v48 = v63;
    v47 = v64;
    *(v45 + 4) = *(v63 + 80);
    *(v45 + 5) = v39;
    v49 = *(v48 + 88);
    v50 = v56;
    v51 = v57;
    *(v45 + 6) = v49;
    *(v45 + 7) = v51;
    *(v45 + 8) = v38;
    v50(&v45[v41], v47, v19);
    (*(v43 + 32))(&v45[v44], v16, v39);

    OUTLINED_FUNCTION_50_2();
    sub_2178D207C();

    (*(v42 + 8))(v54, v19);
  }

  OUTLINED_FUNCTION_80();
}

void sub_2178D207C()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v9);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_160();
  v11 = OUTLINED_FUNCTION_224();
  sub_2178EBFC4(v11, v12, &qword_27CB8A810);
  v13 = sub_21796923C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2178BE050(v0, &qword_27CB8A810, &unk_21796A9A0);
  }

  else
  {
    sub_21796922C();
    OUTLINED_FUNCTION_10();
    (*(v15 + 8))(v0, v13);
  }

  v16 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2178BE050(v6, &qword_27CB8A810, &unk_21796A9A0);
    OUTLINED_FUNCTION_171();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_2179691BC();
  OUTLINED_FUNCTION_151();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_217968F9C();
  OUTLINED_FUNCTION_171();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v2;

  swift_task_create();
  OUTLINED_FUNCTION_123();

  sub_2178BE050(v6, &qword_27CB8A810, &unk_21796A9A0);

LABEL_9:
  OUTLINED_FUNCTION_80();
}

void sub_2178D2328()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v9);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_160();
  v11 = OUTLINED_FUNCTION_224();
  sub_2178EBFC4(v11, v12, &qword_27CB8A810);
  v13 = sub_21796923C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2178BE050(v0, &qword_27CB8A810, &unk_21796A9A0);
  }

  else
  {
    sub_21796922C();
    OUTLINED_FUNCTION_10();
    v15 = OUTLINED_FUNCTION_57_0();
    v16(v15);
  }

  v17 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2178BE050(v6, &qword_27CB8A810, &unk_21796A9A0);
    OUTLINED_FUNCTION_171();
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    *(v19 + 24) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAF8, &qword_21796E730);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_2179691BC();
  OUTLINED_FUNCTION_151();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_217968F9C();
  OUTLINED_FUNCTION_171();
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAF8, &qword_21796E730);
  swift_task_create();
  OUTLINED_FUNCTION_75_1();

  sub_2178BE050(v6, &qword_27CB8A810, &unk_21796A9A0);

LABEL_9:
  OUTLINED_FUNCTION_80();
}

void sub_2178D25E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_117();
}

void sub_2178D2640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_243();
  a21 = v23;
  a22 = v24;
  v25 = OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_176();
  sub_217864B2C(v27, v28, v29, v30);
  OUTLINED_FUNCTION_51_0();
  if (sub_2179692CC())
  {
    sub_217968A2C();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_210();

    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }

  else
  {
    OUTLINED_FUNCTION_51_0();
    sub_2179692EC();
    v36 = OUTLINED_FUNCTION_32_1(&qword_27CB8CC58, &qword_27CB8A6E8, &qword_21796A8E8);
    OUTLINED_FUNCTION_129(v36, v37, v38);
    OUTLINED_FUNCTION_117();
    sub_21796934C();
    OUTLINED_FUNCTION_110();
    v39 = sub_217968A2C();
    OUTLINED_FUNCTION_3();
    v40 = OUTLINED_FUNCTION_68_2();
    v41(v40);
    v22(&a10, 0);
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v39);
    OUTLINED_FUNCTION_210();
  }
}

void sub_2178D2780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_243();
  a21 = v23;
  a22 = v24;
  v25 = OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_176();
  sub_217864B2C(v27, v28, v29, v30);
  OUTLINED_FUNCTION_51_0();
  if (sub_2179692CC())
  {
    sub_217968DFC();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_210();

    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }

  else
  {
    OUTLINED_FUNCTION_51_0();
    sub_2179692EC();
    v36 = OUTLINED_FUNCTION_32_1(&qword_27CB8CC78, &qword_27CB8AAE8, &qword_21796AFA0);
    OUTLINED_FUNCTION_129(v36, v37, v38);
    OUTLINED_FUNCTION_117();
    sub_21796934C();
    OUTLINED_FUNCTION_110();
    v39 = sub_217968DFC();
    OUTLINED_FUNCTION_3();
    v40 = OUTLINED_FUNCTION_68_2();
    v41(v40);
    v22(&a10, 0);
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v39);
    OUTLINED_FUNCTION_210();
  }
}

void sub_2178D28C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_243();
  a21 = v23;
  a22 = v24;
  v25 = OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_176();
  sub_217864B2C(v27, v28, v29, v30);
  OUTLINED_FUNCTION_51_0();
  if (sub_2179692CC())
  {
    sub_217968AFC();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_210();

    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }

  else
  {
    OUTLINED_FUNCTION_51_0();
    sub_2179692EC();
    v36 = OUTLINED_FUNCTION_32_1(&qword_27CB8CC98, &qword_27CB8AB40, &qword_21796BEC0);
    OUTLINED_FUNCTION_129(v36, v37, v38);
    OUTLINED_FUNCTION_117();
    sub_21796934C();
    OUTLINED_FUNCTION_110();
    v39 = sub_217968AFC();
    OUTLINED_FUNCTION_3();
    v40 = OUTLINED_FUNCTION_68_2();
    v41(v40);
    v22(&a10, 0);
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v39);
    OUTLINED_FUNCTION_210();
  }
}

uint64_t sub_2178D2A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_217965D9C();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_217965D9C();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

BOOL sub_2178D2B00(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_152();
  sub_217864B2C(v3, v4, v5, v6);
  OUTLINED_FUNCTION_141();
  sub_2179692AC();
  OUTLINED_FUNCTION_141();
  sub_2179692EC();
  return v9 == v8;
}

void sub_2178D2C28()
{
  OUTLINED_FUNCTION_81();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B238, &qword_21796C6B0);
  OUTLINED_FUNCTION_48(v1);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - v3;
  v5 = sub_217965EFC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  OUTLINED_FUNCTION_48(v7);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_70_0();
  v9 = sub_21796832C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  if (sub_2178D86A8())
  {
  }

  else
  {
    v11 = sub_21796969C();

    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_2178D8938();
  OUTLINED_FUNCTION_24_3(v0, 1, v9);
  if (!v12)
  {
    v13 = OUTLINED_FUNCTION_111();
    v14(v13);
    v34 = sub_2179682EC();
    v15 = OUTLINED_FUNCTION_47_0();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    v18 = _s12SearchColumnVMa(0);
    v19 = OUTLINED_FUNCTION_86_0(&qword_27CB8CB68);
    sub_2178E4920(sub_2178EC8D8, 0, v17, v18, MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v20);
    OUTLINED_FUNCTION_75_1();

    v21 = OUTLINED_FUNCTION_183();
    v22(v21);
    goto LABEL_12;
  }

  sub_2178BE050(v0, &qword_27CB8BA28, &qword_21796C840);
LABEL_7:
  if (sub_2178D86A8() & 1) == 0 || (OUTLINED_FUNCTION_100())
  {
    sub_2178D8900();
    OUTLINED_FUNCTION_24_3(v4, 1, v5);
    if (v12)
    {
      sub_2178BE050(v4, &qword_27CB8B238, &qword_21796C6B0);
    }

    else
    {
      v23 = OUTLINED_FUNCTION_153();
      v24(v23);
      v34 = sub_217965E2C();
      v25 = OUTLINED_FUNCTION_47_0();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
      v28 = _s12SearchColumnVMa(0);
      v29 = OUTLINED_FUNCTION_86_0(&qword_27CB8CB68);
      sub_2178E4920(sub_2178EC8D8, 0, v27, v28, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v30);

      v31 = OUTLINED_FUNCTION_28_1();
      v32(v31);
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_80();
}

void sub_2178D3000()
{
  OUTLINED_FUNCTION_81();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8BB98, &qword_21796C948);
  OUTLINED_FUNCTION_2();
  v48 = v2;
  v49 = v1;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_45_0();
  v47 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  v6 = OUTLINED_FUNCTION_48(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_88();
  v52 = v7;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = sub_21796832C();
  OUTLINED_FUNCTION_2();
  v51 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_88();
  v50 = v14;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B238, &qword_21796C6B0);
  OUTLINED_FUNCTION_48(v18);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_5();
  v20 = sub_217965EFC();
  OUTLINED_FUNCTION_2();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14();
  v26 = v25 - v24;
  v27 = sub_2178D8034();
  v29 = v28;

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
    goto LABEL_18;
  }

  if ((sub_2178D86A8() & 1) == 0)
  {
    sub_2178D8900();
    OUTLINED_FUNCTION_24_3(v0, 1, v20);
    if (!v31)
    {
      OUTLINED_FUNCTION_208();
      v35 = OUTLINED_FUNCTION_143();
      v36(v35);
      sub_217965E2C();
      (*(v22 + 8))(v26, v20);
LABEL_17:

      goto LABEL_18;
    }

    v32 = &qword_27CB8B238;
    v33 = &qword_21796C6B0;
    v34 = v0;
    goto LABEL_16;
  }

  if (!sub_2178D3474())
  {
LABEL_13:
    v42 = v52;
    sub_2178D8938();
    OUTLINED_FUNCTION_60_1(v42);
    if (!v31)
    {
      v43 = OUTLINED_FUNCTION_47_0();
      v44(v43);
      sub_2179682EC();
      v45 = OUTLINED_FUNCTION_145();
      v46(v45);
      goto LABEL_17;
    }

    v32 = &qword_27CB8BA28;
    v33 = &qword_21796C840;
    v34 = v42;
LABEL_16:
    sub_2178BE050(v34, v32, v33);
    goto LABEL_18;
  }

  sub_2178D88C8();
  OUTLINED_FUNCTION_60_1(v10);
  if (v31)
  {
    sub_2178BE050(v10, &qword_27CB8BA28, &qword_21796C840);
    goto LABEL_13;
  }

  v37 = v51;
  OUTLINED_FUNCTION_208();
  v38 = OUTLINED_FUNCTION_144();
  v39(v38);
  v40 = v47;
  sub_2179682FC();
  v41 = sub_2178D2B00(qword_27CB8BB98, &qword_21796C948, &unk_27CB8CC30);
  (*(v48 + 8))(v40, v49);
  (*(v37 + 8))(v17, v11);
  if (!v41)
  {
    goto LABEL_13;
  }

LABEL_18:
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178D3428()
{
  OUTLINED_FUNCTION_79_1();
  result = sub_2178D86A8();
  *v0 = result;
  return result;
}

BOOL sub_2178D3474()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  OUTLINED_FUNCTION_48(v0);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA30, &qword_21796C848);
  OUTLINED_FUNCTION_48(v4);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  if ((sub_2178D86A8() & 1) == 0)
  {

    goto LABEL_5;
  }

  v8 = OUTLINED_FUNCTION_100();

  if (v8)
  {
LABEL_5:
    sub_2178D8890();
    v16 = sub_21796846C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v16);
    v13 = &qword_27CB8BA30;
    v14 = &qword_21796C848;
    v15 = v7;
    goto LABEL_6;
  }

  sub_2178D88C8();
  sub_21796832C();
  v9 = OUTLINED_FUNCTION_61_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, v10, v11);
  v13 = &qword_27CB8BA28;
  v14 = &qword_21796C840;
  v15 = v3;
LABEL_6:
  sub_2178BE050(v15, v13, v14);
  return EnumTagSinglePayload != 1;
}

double sub_2178D35C4()
{
  OUTLINED_FUNCTION_39_2();

  sub_217965C9C();

  return result;
}

double sub_2178D3614()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C960, &qword_21796E480);
  OUTLINED_FUNCTION_48(v1);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_107();
  v3 = sub_2179683FC();
  sub_2178D80D0(v3, v4);
  v5 = sub_21796843C();
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_153();
  v7(v6);
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
  sub_2178D83EC(v0);
  return sub_2178E4DA0();
}

void sub_2178D3708(uint64_t a1)
{
  sub_2179668AC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14();
  v5 = v4 - v3;
  (*(v6 + 16))(v4 - v3, a1);
  sub_2178D8240(v5);
}

uint64_t sub_2178D37C0()
{
  OUTLINED_FUNCTION_79_1();
  result = sub_2178D8034();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2178D37E8(uint64_t a1)
{

  v1 = OUTLINED_FUNCTION_68_2();
  return sub_2178D80D0(v1, v2);
}

void sub_2178D3824(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    a1 = sub_2178D8034();
  }

  v3 = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_2178D80D0(a1, v3);

    sub_2178E4DA0();
  }

  else
  {
  }
}

uint64_t sub_2178D38D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HIDWORD(v22) = a8;
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_144();
  sub_2178D3A74(v18, v19, a3, a4, a5, a6, a7, HIDWORD(v22), a9, a10, a11, a12, a9, a10, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return v17;
}

uint64_t sub_2178D3984(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_21796655C();
  return (*(v4 + 8))(a1, a2);
}

void sub_2178D3A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_81();
  a19 = v27;
  a20 = v28;
  v29 = v24;
  LODWORD(v513) = v30;
  v523 = v31;
  v525 = v33;
  v526 = v32;
  v521 = v34;
  v510 = v35;
  v522 = v36;
  v520 = v37;
  v524 = a24;
  v512 = a23;
  v511 = a22;
  v38 = a21;
  v39 = *v24;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v40);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB70, &qword_21796EFC8);
  OUTLINED_FUNCTION_8_5(v43, &a15);
  v527 = v44;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB78, &qword_21796EFD0);
  OUTLINED_FUNCTION_8_5(v47, &a12);
  v514[1] = v48;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB80, &qword_21796EFD8);
  OUTLINED_FUNCTION_8_5(v51, v532);
  v509[1] = v52;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB88, &qword_21796EFE0);
  OUTLINED_FUNCTION_8_5(v55, v531);
  v507 = v56;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB90, &qword_21796EFE8);
  OUTLINED_FUNCTION_8_5(v59, &v529);
  v505 = v60;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B238, &qword_21796C6B0);
  OUTLINED_FUNCTION_48(v63);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB98, &qword_21796EFF0);
  OUTLINED_FUNCTION_8_5(v66, v528);
  v502 = v67;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  OUTLINED_FUNCTION_48(v70);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBA0, &qword_21796EFF8);
  OUTLINED_FUNCTION_8_5(v73, &v523);
  v500[2] = v74;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA30, &qword_21796C848);
  OUTLINED_FUNCTION_48(v77);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBA8, &qword_21796F000);
  OUTLINED_FUNCTION_8_5(v80, &v519);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B958, &qword_21796C750);
  OUTLINED_FUNCTION_48(v83);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBB0, &qword_21796F008);
  OUTLINED_FUNCTION_8_5(v86, &v515);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBB8, &qword_21796F010);
  OUTLINED_FUNCTION_8_5(v89, v514);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBC0, &qword_21796F018);
  OUTLINED_FUNCTION_8_5(v92, &v512);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBC8, &qword_21796F020);
  OUTLINED_FUNCTION_8_5(v95, v509);
  v497 = v96;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  OUTLINED_FUNCTION_48(v99);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v101);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBD0, &qword_21796F028);
  OUTLINED_FUNCTION_8_5(v102, v506);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C960, &qword_21796E480);
  OUTLINED_FUNCTION_48(v105);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v107);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBD8, &qword_21796F030);
  OUTLINED_FUNCTION_8_5(v108, &v503);
  v476 = v109;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v111);
  v112 = sub_2179668AC();
  v113 = OUTLINED_FUNCTION_48(v112);
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v115 - v114);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBE0, &qword_21796F038);
  OUTLINED_FUNCTION_8_5(v116, v501);
  v436 = v117;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v119);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  OUTLINED_FUNCTION_48(v120);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v122);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBE8, &qword_21796F040);
  OUTLINED_FUNCTION_8_5(v123, v500);
  v125 = v124;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_160();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C580, &qword_21796DCF0);
  OUTLINED_FUNCTION_8_5(v127, &a17);
  v528[0] = v128;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_9_5();
  v130 = v39[10];
  sub_21796919C();
  OUTLINED_FUNCTION_95_0();
  v131 = sub_21796659C();
  OUTLINED_FUNCTION_2();
  v133 = v132;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_70_0();
  v516 = *v38;
  v518 = *(v38 + 8);
  v135 = v39[19];
  v519 = v130;
  v136 = sub_21796911C();
  v501[0] = v39[11];
  sub_2178D56F0(v136);
  (*(v133 + 32))(&v24[v135], v26, v131);
  OUTLINED_FUNCTION_34_1();
  v138 = *(v137 + 160);
  sub_2178D572C(0);
  v139 = v528[0] + 32;
  v140 = *(v528[0] + 32);
  v141 = v517;
  v140(&v24[v138], v25, v517);
  OUTLINED_FUNCTION_34_1();
  v143 = *(v142 + 168);
  sub_2178D575C(0, 0xE000000000000000);
  (*(v125 + 32))(&v24[v143], v24);
  OUTLINED_FUNCTION_34_1();
  _s5AlertVMa(0);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v147);
  OUTLINED_FUNCTION_149();
  sub_2178D58A0(v416, v148, v149, &qword_27CB8A578, &qword_21796A750, v150, v151, v152, v396, v406, v416, v426, v436, v446, v456, v466, v476, v486);
  v153 = OUTLINED_FUNCTION_55_2();
  v154(v153);
  OUTLINED_FUNCTION_34_1();
  sub_21796689C();
  OUTLINED_FUNCTION_149();
  sub_2178D578C(v457);
  v155 = OUTLINED_FUNCTION_55_2();
  v156(v155);
  OUTLINED_FUNCTION_34_1();
  v158 = *(v157 + 192);
  sub_2178D572C(0);
  v498 = v140;
  v528[0] = v139;
  v140(&v29[v158], v25, v141);
  OUTLINED_FUNCTION_34_1();
  v160 = *(v159 + 200);
  sub_2178D572C(0);
  v140(&v29[v160], v25, v141);
  OUTLINED_FUNCTION_34_1();
  sub_21796843C();
  OUTLINED_FUNCTION_147(v504);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
  OUTLINED_FUNCTION_149();
  sub_2178D58A0(v139, v165, v166, &qword_27CB8C960, &qword_21796E480, v167, v168, v169, v397, v407, v417, v427, v437, v447, v457, v467, v477, v487);
  v170 = OUTLINED_FUNCTION_55_2();
  v171(v170);
  OUTLINED_FUNCTION_34_1();
  v173 = *(v172 + 216);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v174);
  sub_2178D58A0(v496, v178, v179, &qword_27CB8B0A0, &qword_21796B758, v180, v181, v182, v398, v408, v418, v428, v438, v448, v458, v468, v478, v488);
  v183 = *(v497 + 32);
  v183(&v29[v173]);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_114(v184, v185, v186, v187, v188, v189, v190, v191, v399, v409, v419, v429, v439, v449, v459, v469, v479, v489);
  v192 = OUTLINED_FUNCTION_157();
  v183(v192);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_114(v193, v194, v195, v196, v197, v198, v199, v200, v400, v410, v420, v430, v440, v450, v460, v470, v480, v490);
  v201 = OUTLINED_FUNCTION_157();
  v183(v201);
  OUTLINED_FUNCTION_34_1();
  v203 = *(v202 + 240);
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_114(v204, v205, v206, v207, v208, v209, v210, v211, v401, v411, v421, v431, v441, v451, v461, v471, v481, v491);
  v212 = OUTLINED_FUNCTION_157();
  v183(v212);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_175();
  sub_2178D5A68(v213, v214, v215, v216, v217);
  v218 = OUTLINED_FUNCTION_33_0();
  v219(v218);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_175();
  sub_2178D5A68(v220, v221, v222, v223, v224);
  v225 = OUTLINED_FUNCTION_33_0();
  v226(v225);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_175();
  sub_2178D5990(0);
  v227 = OUTLINED_FUNCTION_33_0();
  v228(v227);
  OUTLINED_FUNCTION_34_1();
  _s12SearchColumnVMa(0);
  OUTLINED_FUNCTION_147(&v516);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v229, v230, v231, v232);
  OUTLINED_FUNCTION_175();
  sub_2178D59C4(v203);
  v233 = OUTLINED_FUNCTION_33_0();
  v234(v233);
  OUTLINED_FUNCTION_34_1();
  sub_21796846C();
  OUTLINED_FUNCTION_147(&v520);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v235, v236, v237, v238);
  OUTLINED_FUNCTION_175();
  sub_2178D58A0(v203, v239, v240, &qword_27CB8BA30, &qword_21796C848, v241, v242, v243, v402, v412, v422, v432, v442, v452, v462, v472, v482, v492);
  v244 = OUTLINED_FUNCTION_33_0();
  v245(v244);
  OUTLINED_FUNCTION_34_1();
  v247 = *(v246 + 288);
  v248 = sub_21796832C();
  v249 = v501[1];
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v250, v251, v252, v248);
  v253 = v501[2];
  sub_2178D58A0(v249, v254, v255, &qword_27CB8BA28, &qword_21796C840, v256, v257, v258, v403, v413, v423, v433, v443, v453, v463, v473, v483, v493);
  v259 = *(v502 + 32);
  v260 = v503;
  v259(&v29[v247], v253, v503);
  OUTLINED_FUNCTION_34_1();
  v262 = *(v261 + 296);
  sub_217965EFC();
  v263 = v504[0];
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v264, v265, v266, v267);
  v268 = v504[1];
  sub_2178D58A0(v263, v269, v270, &qword_27CB8B238, &qword_21796C6B0, v271, v272, v273, v404, v414, v424, v434, v444, v454, v464, v474, v484, v494);
  (*(v505 + 32))(&v29[v262], v268, v506[0]);
  OUTLINED_FUNCTION_34_1();
  v275 = *(v274 + 304);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v276, v277, v278, v248);
  sub_2178D58A0(v249, v279, v280, &qword_27CB8BA28, &qword_21796C840, v281, v282, v283, v405, v415, v425, v435, v445, v455, v465, v475, v485, v495);
  v259(&v29[v275], v253, v260);
  OUTLINED_FUNCTION_34_1();
  v285 = *(v284 + 312);
  v286 = v506[1];
  sub_2178D5A68(MEMORY[0x277D84F90], v287, v288, &qword_27CB8B800, &unk_21796C658);
  (*(v507 + 32))(&v29[v285], v286, v508);
  OUTLINED_FUNCTION_34_1();
  v290 = *(v289 + 320);
  sub_217965CBC();
  swift_allocObject();
  *&v29[v290] = sub_217965CAC();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_26_3(*(v291 + 328));
  OUTLINED_FUNCTION_26_3(*(v292 + 336));
  OUTLINED_FUNCTION_26_3(*(v293 + 344));
  OUTLINED_FUNCTION_26_3(*(v294 + 352));
  OUTLINED_FUNCTION_26_3(*(v295 + 360));
  OUTLINED_FUNCTION_26_3(*(v296 + 368));
  OUTLINED_FUNCTION_26_3(*(v297 + 376));
  OUTLINED_FUNCTION_26_3(*(v298 + 384));
  sub_217968E3C();
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v299, v300, v301, v302);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_26_3(*(v303 + 400));
  OUTLINED_FUNCTION_26_3(*(v304 + 408));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C9C8, &qword_21796E4A8);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v305, v306, v307, v308);
  OUTLINED_FUNCTION_34_1();
  v310 = *(v309 + 424);
  sub_2179687BC();
  *&v29[v310] = sub_2179687AC();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_26_3(*(v311 + 432));
  OUTLINED_FUNCTION_149();
  sub_2178D5AA8(0);
  v312 = OUTLINED_FUNCTION_55_2();
  v313(v312);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_26_3(*(v314 + 456));
  v316 = *(v315 + 464);
  sub_21796860C();
  sub_2179685FC();
  sub_2179685DC();
  OUTLINED_FUNCTION_219();

  *&v29[v316] = v310;
  OUTLINED_FUNCTION_34_1();
  v29[*(v317 + 472)] = 0;
  OUTLINED_FUNCTION_34_1();
  v29[*(v318 + 480)] = 0;
  OUTLINED_FUNCTION_34_1();
  v29[*(v319 + 488)] = 0;
  OUTLINED_FUNCTION_34_1();
  v29[*(v320 + 496)] = 0;
  OUTLINED_FUNCTION_34_1();
  v29[*(v321 + 504)] = 0;
  OUTLINED_FUNCTION_34_1();
  v323 = *(v322 + 512);
  OUTLINED_FUNCTION_149();
  sub_2178D572C(0);
  v498(&v29[v323], v310, v517);
  OUTLINED_FUNCTION_34_1();
  v29[*(v324 + 520)] = 0;
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_26_3(*(v325 + 528));
  *&v29[*(v326 + 536)] = MEMORY[0x277D84FA0];
  v327 = v522;
  *(v29 + 8) = v520;
  *(v29 + 9) = v327;
  v29[80] = v510;
  OUTLINED_FUNCTION_34_1();
  v329 = *(v328 + 136);
  sub_21796944C();
  OUTLINED_FUNCTION_95_0();
  v330 = sub_217967D5C();
  v517 = *(v330 - 8);
  v331 = *(v517 + 16);
  v528[0] = v330;
  v331(&v29[v329], v526);
  OUTLINED_FUNCTION_34_1();
  v333 = &v29[*(v332 + 144)];
  v334 = v524;
  v335 = v525;
  *v333 = v521;
  *(v333 + 1) = v335;
  *(v333 + 2) = v523;
  v29[16] = v513;
  v336 = v516;
  *(v29 + 3) = v516;
  LOBYTE(v249) = v518;
  v29[32] = v518;
  v337 = v512;
  *(v29 + 5) = v511;
  *(v29 + 6) = v337;
  *(v29 + 7) = v334;
  v513 = objc_opt_self();
  v338 = objc_opt_self();

  v339 = [v338 autoupdatingActiveAccount];
  v340 = [v513 sharedMonitorForIdentity_];

  OUTLINED_FUNCTION_34_1();
  v342 = *(v341 + 448);
  *&v29[v342] = v340;
  v343 = [v340 subscriptionStatus];
  v344 = v519;
  v345 = v501[0];
  v528[3] = v519;
  v529 = v501[0];
  swift_getKeyPath();
  v528[1] = v344;
  v528[2] = v345;
  swift_getKeyPath();
  v530 = v343;

  sub_21796658C();
  v346 = *&v29[v342];
  OUTLINED_FUNCTION_27_2();
  v347 = swift_allocObject();
  OUTLINED_FUNCTION_73_2(v347);
  OUTLINED_FUNCTION_137();
  v348 = swift_allocObject();
  v348[2] = v344;
  v348[3] = v345;
  v348[4] = v343;
  v532[0] = sub_2178EC134;
  v532[1] = v348;
  v530 = MEMORY[0x277D85DD0];
  v531[0] = 1107296256;
  v531[1] = sub_2178D5D9C;
  v531[2] = &block_descriptor_267;
  v349 = _Block_copy(&v530);

  v350 = v346;

  v351 = [v350 beginObservingSubscriptionStatusWithHandler_];
  _Block_release(v349);

  OUTLINED_FUNCTION_34_1();
  *&v29[*(v352 + 456)] = v351;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_34_1();
  v354 = *&v29[*(v353 + 320)];

  sub_217965C4C();

  OUTLINED_FUNCTION_27_2();
  v355 = swift_allocObject();
  OUTLINED_FUNCTION_73_2(v355);
  OUTLINED_FUNCTION_137();
  v356 = swift_allocObject();
  *(OUTLINED_FUNCTION_216(v356) + 32) = v354;
  v357 = MEMORY[0x277CBCEC8];
  sub_217864B2C(&qword_27CB8CBF0, &qword_27CB8CB78, &qword_21796EFD0, MEMORY[0x277CBCEC8]);
  OUTLINED_FUNCTION_166();
  sub_2179665AC();
  OUTLINED_FUNCTION_150();

  OUTLINED_FUNCTION_54();
  v358 = OUTLINED_FUNCTION_144();
  v359(v358);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_188(*(v360 + 352));
  OUTLINED_FUNCTION_34_1();
  v362 = *&v29[*(v361 + 424)];
  v363 = v514[2];
  sub_21796879C();
  OUTLINED_FUNCTION_27_2();
  v364 = swift_allocObject();
  OUTLINED_FUNCTION_73_2(v364);
  OUTLINED_FUNCTION_137();
  v365 = swift_allocObject();
  *(OUTLINED_FUNCTION_216(v365) + 32) = v362;
  sub_217864B2C(&qword_27CB8CBF8, &qword_27CB8CB70, &qword_21796EFC8, v357);
  OUTLINED_FUNCTION_166();
  v366 = v515;
  v367 = v363;
  v368 = v363;
  sub_2179665AC();
  OUTLINED_FUNCTION_150();

  v369 = *(v527 + 8);
  v527 += 8;
  v369(v368, v366);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_188(*(v370 + 432));
  if (v518 != 255)
  {
    if (v518 != 1)
    {
      if (v518)
      {
        sub_2178E3790(v516, v518);
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_27_2();
      v371 = swift_allocObject();
      OUTLINED_FUNCTION_73_2(v371);
      v372 = swift_allocObject();
      v373 = OUTLINED_FUNCTION_216(v372);
      *(v373 + 32) = v367;
      *(v373 + 40) = v366;
      sub_2178BF548(v366, 0);
      OUTLINED_FUNCTION_166();
      sub_2179665AC();
      OUTLINED_FUNCTION_150();

      v369(v368, v366);
      OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_188(*(v374 + 384));
      sub_21796923C();
      OUTLINED_FUNCTION_147(&v499);
      OUTLINED_FUNCTION_13_7();
      __swift_storeEnumTagSinglePayload(v375, v376, v377, v378);
      OUTLINED_FUNCTION_27_2();
      v379 = swift_allocObject();
      OUTLINED_FUNCTION_73_2(v379);

      OUTLINED_FUNCTION_92_0();
      v380 = swift_allocObject();
      v381 = OUTLINED_FUNCTION_213(v380);
      v381[4] = v344;
      v381[5] = v345;
      v381[6] = v368;
      OUTLINED_FUNCTION_50_2();
      sub_2178D2328();
      v382 = v366;
      v383 = 0;
      goto LABEL_7;
    }

    if (v516)
    {
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_27_2();
      v384 = swift_allocObject();
      OUTLINED_FUNCTION_73_2(v384);
      v385 = swift_allocObject();
      v386 = OUTLINED_FUNCTION_216(v385);
      *(v386 + 32) = v367;
      *(v386 + 40) = v366;
      sub_2178BF548(v366, 1u);
      OUTLINED_FUNCTION_166();
      sub_2179665AC();
      OUTLINED_FUNCTION_150();

      v369(v368, v366);
      OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_188(*(v387 + 384));
      sub_21796923C();
      OUTLINED_FUNCTION_147(&v499);
      OUTLINED_FUNCTION_13_7();
      __swift_storeEnumTagSinglePayload(v388, v389, v390, v391);
      OUTLINED_FUNCTION_27_2();
      v392 = swift_allocObject();
      OUTLINED_FUNCTION_73_2(v392);

      OUTLINED_FUNCTION_92_0();
      v393 = swift_allocObject();
      v394 = OUTLINED_FUNCTION_213(v393);
      v394[4] = v344;
      v394[5] = v345;
      v394[6] = v368;
      OUTLINED_FUNCTION_50_2();
      sub_2178D2328();
      v382 = v366;
      v383 = 1;
LABEL_7:
      sub_2178E3790(v382, v383);
    }
  }

LABEL_9:

  sub_2178DD648();

  OUTLINED_FUNCTION_54();
  v395(v526, v528[0]);
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178D56F0(char a1)
{
  v1 = sub_21796919C();
  v9 = OUTLINED_FUNCTION_158(v1, v2, v3, v4, v5, v6, v7, v8, v12, a1);
  return sub_2178D3984(v9, v10);
}

void sub_2178D578C(uint64_t a1)
{
  OUTLINED_FUNCTION_241();
  sub_2179668AC();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_5();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_159();
  v5 = *(v2 + 16);
  OUTLINED_FUNCTION_45();
  v5();
  v6 = OUTLINED_FUNCTION_72_0();
  (v5)(v6);
  OUTLINED_FUNCTION_153();
  sub_21796655C();
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_68_2();
  v7(v8);
  v9 = OUTLINED_FUNCTION_140();
  v7(v9);
  OUTLINED_FUNCTION_242();
}

void sub_2178D58A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_241();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(v22, v20);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17_5();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  sub_2178EBFC4(v25, &a9 - v28, v23);
  v30 = OUTLINED_FUNCTION_120();
  sub_2178EBFC4(v30, v31, v23);
  OUTLINED_FUNCTION_183();
  sub_21796655C();
  sub_2178BE050(v25, v23, v21);
  sub_2178BE050(v29, v23, v21);
  OUTLINED_FUNCTION_242();
}

uint64_t sub_2178D59C4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_51_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_117();
  sub_2178EBFC4(v4, v5, v6);
  v7 = OUTLINED_FUNCTION_183();
  sub_2178D3984(v7, v8);
  v9 = OUTLINED_FUNCTION_68_2();
  return sub_2178BE050(v9, v10, &qword_21796C750);
}

uint64_t sub_2178D5A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v15 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_158(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  return sub_21796655C();
}

uint64_t sub_2178D5AA8(char a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C9D8, qword_21796E4B0);
  OUTLINED_FUNCTION_158(v1, v2, v3, v4, v5, v6, v7, v8, v10, a1);
  return sub_21796655C();
}

double sub_2178D5AF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_21796920C();
  v13 = a2;

  v14 = sub_2179691FC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = v12;
  v15[7] = a2;

  sub_2178D2328();

  return result;
}

uint64_t sub_2178D5C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_21796920C();
  v5[8] = sub_2179691FC();
  v7 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_2178D5D0C, v7, v6);
}

uint64_t sub_2178D5D0C()
{
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_11_5();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2178E2948(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  OUTLINED_FUNCTION_39();

  return v2();
}

void sub_2178D5D9C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

double sub_2178D5E28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = *a1;
  v11 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = v12;
  v13[7] = v10;

  sub_2178D2328();

  return result;
}

uint64_t sub_2178D5F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_2178D5FA0, 0, 0);
}

uint64_t sub_2178D5FA0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    sub_21796920C();
    *(v0 + 72) = OUTLINED_FUNCTION_163(v2);
    OUTLINED_FUNCTION_75_1();
    sub_2179691BC();
    OUTLINED_FUNCTION_109();
    v3 = OUTLINED_FUNCTION_31_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

void sub_2178D60D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  sub_2178D8AA4(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

double sub_2178D60F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = v10;
  sub_2178D2328();

  return result;
}

uint64_t sub_2178D6238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178D6258, 0, 0);
}

uint64_t sub_2178D6258()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_21796920C();
    *(v0 + 64) = OUTLINED_FUNCTION_163(v2);
    OUTLINED_FUNCTION_75_1();
    sub_2179691BC();
    OUTLINED_FUNCTION_109();
    v3 = OUTLINED_FUNCTION_31_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178D6310()
{
  OUTLINED_FUNCTION_62();

  sub_2178DC0A4(v0);

  v1 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2178D6378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_2178D639C, 0, 0);
}

uint64_t sub_2178D639C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    sub_21796920C();
    *(v0 + 72) = OUTLINED_FUNCTION_163(v2);
    OUTLINED_FUNCTION_75_1();
    sub_2179691BC();
    OUTLINED_FUNCTION_109();
    v3 = OUTLINED_FUNCTION_31_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178D6454()
{
  OUTLINED_FUNCTION_62();

  sub_2178D64C4();

  v0 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_2178D64C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_217965B4C();
  v7 = sub_2178D2B00(&qword_27CB8B0A8, &unk_21796B760, &qword_27CB8CAD8);
  (*(v4 + 8))(v6, v3);
  if (!v7 || (sub_217965BBC() & 1) == 0)
  {
    sub_217965B4C();
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
    sub_2178D8540();
  }
}

uint64_t sub_2178D665C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178D667C, 0, 0);
}

uint64_t sub_2178D667C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_115(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_77_0(v3);

    return sub_2178E2FA0();
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178D6740()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_2178D6840(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_241();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v8);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_3();
  sub_21796923C();
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_27_2();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_43_1();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = v3;
  v15[6] = v14;
  v15[7] = v7;

  sub_2178D2328();

  OUTLINED_FUNCTION_242();
}

uint64_t sub_2178D6964()
{
  OUTLINED_FUNCTION_23_2();
  v3 = *(v2 + 456);
  if (*(v0 + v3))
  {
    [*(v0 + *(v1 + 448)) endObservingSubscriptionStatusWithToken_];
  }

  *(v0 + v3) = 0;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_199(*(v4 + 352));
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_199(*(v5 + 432));
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_199(*(v6 + 384));
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_199(*(v7 + 408));
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_199(*(v8 + 360));
  OUTLINED_FUNCTION_39_2();
  *(v0 + *(v9 + 368)) = 0;

  OUTLINED_FUNCTION_39_2();
  *(v0 + *(v10 + 376)) = 0;

  sub_2178E3790(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_39_2();
  v12 = *(v11 + 136);
  sub_21796944C();
  OUTLINED_FUNCTION_95_0();
  sub_217967D5C();
  OUTLINED_FUNCTION_4_1();
  (*(v13 + 8))(v0 + v12);
  OUTLINED_FUNCTION_39_2();

  OUTLINED_FUNCTION_39_2();
  v15 = *(v14 + 152);
  sub_21796919C();
  OUTLINED_FUNCTION_95_0();
  sub_21796659C();
  OUTLINED_FUNCTION_4_1();
  (*(v16 + 8))(v0 + v15);
  OUTLINED_FUNCTION_39_2();
  v18 = *(v17 + 160);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C580, &qword_21796DCF0);
  OUTLINED_FUNCTION_3();
  v21 = *(v20 + 8);
  v21(v0 + v18, v19);
  OUTLINED_FUNCTION_39_2();
  v23 = *(v22 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBE8, &qword_21796F040);
  OUTLINED_FUNCTION_4_1();
  (*(v24 + 8))(v0 + v23);
  OUTLINED_FUNCTION_39_2();
  v26 = *(v25 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBE0, &qword_21796F038);
  OUTLINED_FUNCTION_4_1();
  (*(v27 + 8))(v0 + v26);
  OUTLINED_FUNCTION_39_2();
  v29 = *(v28 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBD8, &qword_21796F030);
  OUTLINED_FUNCTION_4_1();
  (*(v30 + 8))(v0 + v29);
  OUTLINED_FUNCTION_39_2();
  v21(v0 + *(v31 + 192), v19);
  OUTLINED_FUNCTION_39_2();
  v21(v0 + *(v32 + 200), v19);
  OUTLINED_FUNCTION_39_2();
  v34 = *(v33 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBD0, &qword_21796F028);
  OUTLINED_FUNCTION_4_1();
  (*(v35 + 8))(v0 + v34);
  OUTLINED_FUNCTION_39_2();
  v37 = *(v36 + 216);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBC8, &qword_21796F020);
  OUTLINED_FUNCTION_3();
  v40 = *(v39 + 8);
  v40(v0 + v37, v38);
  OUTLINED_FUNCTION_39_2();
  v42 = OUTLINED_FUNCTION_230(*(v41 + 224));
  (v40)(v42);
  OUTLINED_FUNCTION_39_2();
  v44 = OUTLINED_FUNCTION_230(*(v43 + 232));
  (v40)(v44);
  OUTLINED_FUNCTION_39_2();
  v46 = OUTLINED_FUNCTION_230(*(v45 + 240));
  (v40)(v46);
  OUTLINED_FUNCTION_39_2();
  v48 = *(v47 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBC0, &qword_21796F018);
  OUTLINED_FUNCTION_4_1();
  (*(v49 + 8))(v0 + v48);
  OUTLINED_FUNCTION_39_2();
  v51 = *(v50 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBB8, &qword_21796F010);
  OUTLINED_FUNCTION_4_1();
  (*(v52 + 8))(v0 + v51);
  OUTLINED_FUNCTION_39_2();
  v54 = *(v53 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBB0, &qword_21796F008);
  OUTLINED_FUNCTION_4_1();
  (*(v55 + 8))(v0 + v54);
  OUTLINED_FUNCTION_39_2();
  v57 = *(v56 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBA8, &qword_21796F000);
  OUTLINED_FUNCTION_4_1();
  (*(v58 + 8))(v0 + v57);
  OUTLINED_FUNCTION_39_2();
  v60 = *(v59 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CBA0, &qword_21796EFF8);
  OUTLINED_FUNCTION_4_1();
  (*(v61 + 8))(v0 + v60);
  OUTLINED_FUNCTION_39_2();
  v63 = *(v62 + 288);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB98, &qword_21796EFF0);
  OUTLINED_FUNCTION_3();
  v66 = *(v65 + 8);
  v66(v0 + v63, v64);
  OUTLINED_FUNCTION_39_2();
  v68 = *(v67 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB90, &qword_21796EFE8);
  OUTLINED_FUNCTION_4_1();
  (*(v69 + 8))(v0 + v68);
  OUTLINED_FUNCTION_39_2();
  v71 = OUTLINED_FUNCTION_230(*(v70 + 304));
  (v66)(v71);
  OUTLINED_FUNCTION_39_2();
  v73 = *(v72 + 312);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB88, &qword_21796EFE0);
  OUTLINED_FUNCTION_4_1();
  (*(v74 + 8))(v0 + v73);
  OUTLINED_FUNCTION_39_2();

  OUTLINED_FUNCTION_39_2();

  OUTLINED_FUNCTION_39_2();

  OUTLINED_FUNCTION_39_2();

  OUTLINED_FUNCTION_39_2();
  sub_2178BE050(v0 + *(v75 + 392), qword_27CB8AC48, &unk_21796FF10);
  OUTLINED_FUNCTION_39_2();

  OUTLINED_FUNCTION_39_2();
  sub_2178BE050(v0 + *(v76 + 416), &qword_27CB8C9E0, &qword_21796E520);
  OUTLINED_FUNCTION_39_2();

  OUTLINED_FUNCTION_39_2();
  v78 = *(v77 + 440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB80, &qword_21796EFD8);
  OUTLINED_FUNCTION_4_1();
  (*(v79 + 8))(v0 + v78);
  OUTLINED_FUNCTION_39_2();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_39_2();

  OUTLINED_FUNCTION_39_2();
  v21(v0 + *(v81 + 512), v19);
  OUTLINED_FUNCTION_39_2();

  OUTLINED_FUNCTION_39_2();

  return v0;
}

uint64_t sub_2178D728C()
{
  sub_2178D6964();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2178D72FC()
{
  OUTLINED_FUNCTION_229();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C448, &unk_21796DB30);
  MEMORY[0x21CEA6C70](&v2, v0);
  return v2;
}

uint64_t sub_2178D7348()
{
  OUTLINED_FUNCTION_229();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C448, &unk_21796DB30);
  return sub_217967D1C();
}

void sub_2178D7398()
{
  OUTLINED_FUNCTION_81();
  v2 = *v0;
  sub_21796944C();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_5();
  v4 = sub_217967D5C();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_70_0();
  (*(v6 + 16))(v1, &v0[*(v2 + 136)], v4);
  OUTLINED_FUNCTION_45();
  v8();
  OUTLINED_FUNCTION_93_0();
  sub_217967D1C();
  v9 = OUTLINED_FUNCTION_68_2();
  v10(v9);
  v11 = OUTLINED_FUNCTION_120();
  v12(v11);
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178D7524()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_53_1();
  sub_21796919C();
  OUTLINED_FUNCTION_95_0();
  sub_217967D5C();
  return sub_217967D1C();
}

double sub_2178D75EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  if (sub_2178D8034() == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_21796969C();

    if ((v11 & 1) == 0)
    {
      v13 = sub_21796923C();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
      v14 = swift_allocObject();
      swift_weakInit();
      sub_21796920C();

      v15 = sub_2179691FC();
      v16 = swift_allocObject();
      v17 = MEMORY[0x277D85700];
      v16[2] = v15;
      v16[3] = v17;
      v18 = *(v5 + 80);
      v16[4] = v18;
      v19 = *(v5 + 88);
      v16[5] = v19;
      v16[6] = v14;

      sub_2178D2328();

      v20 = sub_2178D8034();
      v22 = v21;

      v23 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v23 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        return sub_2178D79C0();
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
        v24 = swift_allocObject();
        swift_weakInit();
        v25 = swift_allocObject();
        v25[2] = 0;
        v25[3] = 0;
        v25[4] = v18;
        v25[5] = v19;
        v25[6] = v24;
        sub_2178D2328();
      }
    }
  }

  return result;
}

uint64_t sub_2178D789C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21796920C();
  v4[7] = sub_2179691FC();
  v6 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_2178D7934, v6, v5);
}

double sub_2178D79C0()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_2178D8034();
  v7 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = v5;
    if (sub_2178D86A8())
    {
      sub_21796969C();
    }

    v11 = sub_21796923C();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = *(v1 + 80);
    v13[5] = *(v1 + 88);
    v13[6] = v12;
    v13[7] = v9;
    v13[8] = v7;
    sub_2178D2328();
  }

  else
  {
  }

  return result;
}

uint64_t sub_2178D7C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178D7C3C, 0, 0);
}

uint64_t sub_2178D7C3C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_21796920C();
    *(v0 + 64) = OUTLINED_FUNCTION_163(v2);
    OUTLINED_FUNCTION_75_1();
    sub_2179691BC();
    OUTLINED_FUNCTION_109();
    v3 = OUTLINED_FUNCTION_31_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178D7CF4()
{
  OUTLINED_FUNCTION_62();

  sub_2178D7D64();

  v0 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_2178D7D64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B958, &qword_21796C750);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B238, &qword_21796C6B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA30, &qword_21796C848);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  *(v0 + *(*v0 + 328)) = 0;

  *(v0 + *(*v0 + 336)) = 0;

  *(v0 + *(*v0 + 344)) = 0;

  *(v0 + *(*v0 + 360)) = 0;

  *(v0 + *(*v0 + 368)) = 0;

  *(v0 + *(*v0 + 376)) = 0;

  v13 = sub_21796846C();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_2178D88A4();
  v14 = sub_21796832C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  sub_2178D88DC();
  v15 = sub_217965EFC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  sub_2178D8914();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  sub_2178D89E0();
  v16 = _s12SearchColumnVMa(0);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v16);
  sub_2178D886C();
}

uint64_t sub_2178D8034()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_52_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_170();
  swift_getKeyPath();
  OUTLINED_FUNCTION_45();
  sub_21796657C();

  return v1;
}

uint64_t sub_2178D80D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_53_1();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57_0();
  sub_21796657C();

  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_146();
  sub_21796658C();
  sub_2178D75EC(v3, v4);
}

void sub_2178D8240(uint64_t a1)
{
  OUTLINED_FUNCTION_241();
  sub_2179668AC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14();
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = OUTLINED_FUNCTION_141();
  v3(v2);

  OUTLINED_FUNCTION_140();
  sub_21796658C();
  v4 = OUTLINED_FUNCTION_63_0();
  v5(v4);
  OUTLINED_FUNCTION_242();
}

void sub_2178D8410()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v8 = *v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v1);
  OUTLINED_FUNCTION_48(v9);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  v18 = *(v8 + 80);
  v13 = v18;
  v14 = *(v8 + 88);
  v19 = v14;
  swift_getKeyPath();
  v17[0] = v13;
  v17[1] = v14;
  swift_getKeyPath();
  sub_2178EBFC4(v7, v12, v4);

  sub_21796658C();
  v15 = OUTLINED_FUNCTION_47_0();
  sub_2178BE050(v15, v16, v2);
  OUTLINED_FUNCTION_80();
}

double sub_2178D865C(uint64_t a1)
{
  v1 = a1;
  v2 = sub_2178D86A8();
  if ((sub_2178FF258(v2, v1 & 1) & 1) == 0)
  {

    return sub_2178D79C0();
  }

  return result;
}

uint64_t sub_2178D86A8()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_52_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_170();
  swift_getKeyPath();
  OUTLINED_FUNCTION_45();
  sub_21796657C();

  return v1;
}

double sub_2178D8744(char a1)
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_53_1();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_145();
  sub_21796657C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_21796658C();
  return sub_2178D865C(v2);
}

double sub_2178D894C()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_53_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_145();
  sub_21796657C();

  return result;
}

void sub_2178D8A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_53_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_47_0();
  sub_21796657C();

  OUTLINED_FUNCTION_210();
}

void sub_2178D8AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_218();
  swift_getKeyPath();
  OUTLINED_FUNCTION_132();

  OUTLINED_FUNCTION_146();
  sub_21796658C();
  OUTLINED_FUNCTION_210();
}

uint64_t sub_2178D8B4C()
{
  v1 = v0;
  v61 = sub_2179688CC();
  v57 = *(v61 - 8);
  v2 = MEMORY[0x28223BE20](v61);
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v56 = &v50 - v5;
  MEMORY[0x28223BE20](v4);
  v55 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v50 - v8;
  v9 = sub_217968A2C();
  v60 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v67 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v50 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A820, &qword_21796A9C0);
  MEMORY[0x28223BE20](v65);
  v14 = &v50 - v13;
  v15 = sub_217968E3C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v59 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v58 = &v50 - v26;
  v27 = *(*v1 + 392);
  swift_beginAccess();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1 + v27, 1, v15);
  v53 = v1;
  if (EnumTagSinglePayload)
  {
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  }

  else
  {
    (*(v16 + 16))(v18, v1 + v27, v15);
    sub_217968E0C();
    (*(v16 + 8))(v18, v15);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
    {
      v29 = v58;
      (*(v59 + 32))(v58, v21, v22);
      goto LABEL_7;
    }
  }

  v29 = v58;
  sub_2179680AC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
  {
    sub_2178BE050(v21, &qword_27CB8A720, &unk_21796A910);
  }

LABEL_7:
  (*(v59 + 16))(v25, v29, v22);
  sub_217864B2C(&qword_27CB8CB30, &qword_27CB8A6E8, &qword_21796A8E8, MEMORY[0x277CD7CA0]);
  sub_21796905C();
  v30 = *(v65 + 36);
  sub_217864B2C(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8, MEMORY[0x277CD7CB8]);
  v64 = (v60 + 4);
  v65 = (v60 + 2);
  v31 = (v60 + 11);
  v63 = *MEMORY[0x277CD8368];
  v62 = (v60 + 1);
  v50 = (v60 + 12);
  v54 = (v57 + 32);
  v60 = MEMORY[0x277D84F90];
LABEL_8:
  for (i = v9; ; (*v62)(v36, i))
  {
    sub_2179692EC();
    if (*&v14[v30] == v68[0])
    {
      break;
    }

    v33 = sub_21796934C();
    v34 = v66;
    v9 = i;
    (*v65)(v66);
    v33(v68, 0);
    v35 = v22;
    sub_2179692FC();
    v36 = v67;
    (*v64)(v67, v34, i);
    v37 = (*v31)(v36, i);
    if (v37 == v63)
    {
      (*v50)(v36, i);
      v38 = *v54;
      v39 = v51;
      v40 = v36;
      v41 = v61;
      (*v54)(v51, v40, v61);
      v38(v56, v39, v41);
      v38(v55, v56, v41);
      v42 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_2178E81D4(0, v42[2] + 1, 1, v42);
      }

      v22 = v35;
      v44 = v42[2];
      v43 = v42[3];
      if (v44 >= v43 >> 1)
      {
        v42 = sub_2178E81D4((v43 > 1), v44 + 1, 1, v42);
      }

      v42[2] = v44 + 1;
      v45 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v60 = v42;
      v38(v42 + v45 + *(v57 + 72) * v44, v55, v61);
      goto LABEL_8;
    }
  }

  sub_2178BE050(v14, &qword_27CB8A820, &qword_21796A9C0);
  v46 = sub_2178D9438(0x14uLL, v60);

  v68[0] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB00, &qword_21796E770);
  sub_217864B2C(&qword_27CB8CB08, &qword_27CB8CB00, &qword_21796E770, MEMORY[0x277D83970]);
  v47 = v52;
  sub_21796811C();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
  sub_2178D8578();
  return (*(v59 + 8))(v58, v22);
}

uint64_t sub_2178D9438(unint64_t a1, uint64_t a2)
{
  v7 = sub_2179688CC();
  v31 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v33 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = &v26 - v10;
  v11 = *(a2 + 16);
  if (v11 < a1)
  {

    return a2;
  }

  v27 = a1;
  v12 = v11 - a1;
  if (__OFSUB__(v11, a1))
  {
    goto LABEL_33;
  }

  v2 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v2 < (v11 - 1))
  {
    v30 = v31 + 16;
    v13 = (v31 + 40);

    v28 = v2;
    v29 = v13;
    while (!HIDWORD(v11))
    {
      a1 = v11 - 1;
      v14 = arc4random_uniform(v11);
      if (v11 - 1 != v14)
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        v15 = *(a2 + 16);
        if (a1 >= v15)
        {
          goto LABEL_30;
        }

        v35 = v14;
        v16 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v2 = v7;
        v3 = *(v31 + 72);
        v4 = *(v31 + 16);
        v32 = v3 * a1;
        (v4)(v34, a2 + v16 + v3 * a1, v7);
        if (v15 <= v35)
        {
          goto LABEL_31;
        }

        v17 = v3 * v35;
        (v4)(v33, a2 + v16 + v3 * v35, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_2178EBDC4(a2);
        }

        v3 = a2 + v16;
        v4 = *v29;
        (*v29)(a2 + v16 + v32, v33, v7);
        if (*(a2 + 16) <= v35)
        {
          goto LABEL_32;
        }

        (v4)(v3 + v17, v34, v7);
        v2 = v28;
      }

      v18 = v11 - 2;
      --v11;
      if (v2 >= v18)
      {
        goto LABEL_19;
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
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_19:
  a1 = sub_2178E7504(v27, a2);
  v2 = v19;
  v3 = v20;
  v4 = v21;
  if ((v21 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_2179696AC();
  swift_unknownObjectRetain_n();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x277D84F90];
  }

  v24 = *(v23 + 16);

  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_35;
  }

  if (v24 != (v4 >> 1) - v3)
  {
LABEL_36:
    swift_unknownObjectRelease();
LABEL_20:
    sub_2178E8590(a1, v2, v3, v4);
    a2 = v22;
    swift_unknownObjectRelease();
    return a2;
  }

  a2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!a2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return a2;
}

uint64_t sub_2178D978C@<X0>(uint64_t x8_0@<X8>)
{
  OUTLINED_FUNCTION_39_2();
  v5 = *(v4 + 392);
  OUTLINED_FUNCTION_43_1();
  swift_beginAccess();
  return sub_2178EBFC4(v2 + v5, x8_0, qword_27CB8AC48);
}

uint64_t sub_2178D97F8(uint64_t a1)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_238(v1 + *(v2 + 392), v9);
  OUTLINED_FUNCTION_117();
  sub_2178EBD58(v3, v4, v5);
  swift_endAccess();
  sub_2178D8B4C();
  v6 = OUTLINED_FUNCTION_68_2();
  return sub_2178BE050(v6, v7, &unk_21796FF10);
}

uint64_t sub_2178D9884(uint64_t a1)
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_52_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_170();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_105(KeyPath);

  return v3;
}

void sub_2178D9910(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  *a2 = v3;
}

uint64_t sub_2178D99B0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_21796658C();
}

double sub_2178D9A48(char a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  if ((a1 & 1) != 0 && (*(v1 + v3[61]) & 1) == 0)
  {
    sub_2178D859C();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
    sub_2178BE050(v10, &qword_27CB8B0A0, &qword_21796B758);
    if (EnumTagSinglePayload == 1)
    {
      v13 = sub_21796923C();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);
      v14 = swift_allocObject();
      swift_weakInit();
      sub_21796920C();

      v15 = sub_2179691FC();
      v16 = swift_allocObject();
      v17 = MEMORY[0x277D85700];
      v16[2] = v15;
      v16[3] = v17;
      v16[4] = v3[10];
      v16[5] = v3[11];
      v16[6] = v14;

      sub_2178D2328();
    }
  }

  return result;
}

uint64_t sub_2178D9C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21796920C();
  v4[7] = sub_2179691FC();
  v6 = sub_2179691BC();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2178D9CF8, v6, v5);
}

uint64_t sub_2178D9CF8()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_77_0(v2);

    return sub_2178D9EF8();
  }

  else
  {

    OUTLINED_FUNCTION_25_1();

    return v4();
  }
}

uint64_t sub_2178D9DC8()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_206();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;

  OUTLINED_FUNCTION_217();
  v5 = *(v4 + 72);
  v6 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_2178EC8F8, v6, v5);
}

uint64_t sub_2178D9EF8()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  v1[4] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB18, &qword_21796E810);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB20, &qword_21796E818);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_21796920C();
  v1[11] = sub_2179691FC();
  v5 = sub_2179691BC();
  v1[12] = v5;
  v1[13] = v4;

  return MEMORY[0x2822009F8](sub_2178DA098, v5, v4);
}

uint64_t sub_2178DA098()
{
  OUTLINED_FUNCTION_69_1();
  v1 = v0[3];
  v2 = *(*v1 + 488);
  v0[14] = v2;
  if (*(v1 + v2))
  {

    OUTLINED_FUNCTION_191();

    OUTLINED_FUNCTION_39();

    return v3();
  }

  else
  {
    if (qword_27CB8A480 != -1)
    {
      OUTLINED_FUNCTION_31(&qword_27CB8A480);
    }

    v5 = sub_21796653C();
    v0[15] = __swift_project_value_buffer(v5, qword_27CB97B00);
    v6 = sub_21796651C();
    sub_21796939C();
    OUTLINED_FUNCTION_122();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_156();
      OUTLINED_FUNCTION_148(v8);
      OUTLINED_FUNCTION_131(&dword_217846000, v9, v10, "Fetching recently played songs from Apple Music catalog.");
      OUTLINED_FUNCTION_87_1();
    }

    sub_2179688CC();
    sub_2178EBD10(&qword_27CB8CB28, MEMORY[0x277CD8238], MEMORY[0x277CD8260]);
    sub_21796835C();
    sub_21796833C();
    *(v1 + v2) = 1;
    swift_task_alloc();
    OUTLINED_FUNCTION_46_1();
    v0[16] = v11;
    *v11 = v12;
    v11[1] = sub_2178DA2A8;
    v13 = v0[7];
    v14 = v0[8];

    return MEMORY[0x282124750](v13, v14);
  }
}

uint64_t sub_2178DA2A8()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_139();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_2178DA4C0;
  }

  else
  {
    v8 = sub_2178DA3D0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2178DA3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_138();
  v13 = *(v12 + 112);
  v14 = *(v12 + 24);

  *(v14 + v13) = 0;
  sub_21796839C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v15 = OUTLINED_FUNCTION_36_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  sub_2178D85B0();
  v19 = OUTLINED_FUNCTION_93_0();
  v20(v19);
  v21 = OUTLINED_FUNCTION_68_2();
  v22(v21);
  OUTLINED_FUNCTION_191();

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_102();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

void sub_2178DA614(char a1)
{
  sub_2178D9A48(a1);
  OUTLINED_FUNCTION_39_2();
  *(v1 + *(v3 + 504)) = a1;
}

void sub_2178DA660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, unsigned __int8 a17)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_53_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_47_0();
  sub_21796657C();

  OUTLINED_FUNCTION_210();
}

void sub_2178DA700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_218();
  swift_getKeyPath();
  OUTLINED_FUNCTION_132();

  OUTLINED_FUNCTION_146();
  sub_21796658C();
  OUTLINED_FUNCTION_210();
}

uint64_t sub_2178DA794(uint64_t a1)
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_52_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_170();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_105(KeyPath);

  if (!v4)
  {
    return 0;
  }

  v2 = [v4 capabilities];

  return v2 & 1;
}

void sub_2178DA848()
{
  OUTLINED_FUNCTION_81();
  v2 = v0;
  OUTLINED_FUNCTION_39_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10);
  v4 = OUTLINED_FUNCTION_48(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_5();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v134 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v134 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v24 = &v134 - v23;
  v25 = *(v0 + 24);
  switch(*(v0 + 32))
  {
    case 0:
      v26 = OUTLINED_FUNCTION_81_0();
      sub_2178BF534(v26, v27);
      v28 = OUTLINED_FUNCTION_81_0();
      sub_2178BF548(v28, v29);
      v30 = sub_217965B3C();
      v31 = sub_217965B2C();
      v139 = v31;
      if (!v30)
      {
        goto LABEL_7;
      }

      v32 = v30;
      sub_217965C1C();
      OUTLINED_FUNCTION_151();

      if (v1)
      {
        goto LABEL_35;
      }

      sub_217965C3C();
      v41 = sub_217968E3C();
      OUTLINED_FUNCTION_60_1(v24);
      if (!v42)
      {
        v138 = sub_217968D7C();
        v1 = v79;
        OUTLINED_FUNCTION_10();
        (*(v80 + 8))(v24, v41);
LABEL_30:

        goto LABEL_36;
      }

      sub_2178BE050(v24, qword_27CB8AC48, &unk_21796FF10);
LABEL_7:
      if (!v31)
      {
        goto LABEL_34;
      }

      v43 = sub_217965D0C();
      if (v44)
      {
        v1 = v44;
        v138 = v43;
        goto LABEL_30;
      }

      sub_217965D2C();
      v81 = sub_217968E3C();
      OUTLINED_FUNCTION_60_1(v14);
      if (v42)
      {
        sub_2178BE050(v14, qword_27CB8AC48, &unk_21796FF10);
LABEL_34:
        v32 = v25;
        sub_217965B6C();
        OUTLINED_FUNCTION_151();
        v33 = OUTLINED_FUNCTION_240();
        if (v1)
        {
LABEL_35:
          v138 = v32;
        }

        else
        {
          v138 = 0;
          v1 = 0xE000000000000000;
        }
      }

      else
      {
        v138 = sub_217968D7C();
        v1 = v128;
        OUTLINED_FUNCTION_10();
        (*(v129 + 8))(v14, v81);
        v33 = OUTLINED_FUNCTION_240();
      }

LABEL_36:
      sub_2178D759C(v33, v34, v35, v36, v37, v38, v39, v40, v134, v135, v136, v137, v138, v139);
      OUTLINED_FUNCTION_192(v82);
      OUTLINED_FUNCTION_8_7();
      WitnessTable = swift_getWitnessTable();
      v84 = OUTLINED_FUNCTION_194(WitnessTable);

      if (v84)
      {
        if (qword_27CB8A380 != -1)
        {
          OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
        }

        OUTLINED_FUNCTION_67_1();
        OUTLINED_FUNCTION_43_1();
        OUTLINED_FUNCTION_78_1();
        sub_21796560C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
        OUTLINED_FUNCTION_116();
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_21796A340;
        *(v85 + 56) = MEMORY[0x277D837D0];
        *(v85 + 64) = sub_21788C964(v85, v86, v87);
        *(v85 + 32) = v138;
        *(v85 + 40) = v1;
        OUTLINED_FUNCTION_145();
        sub_217968F7C();
        OUTLINED_FUNCTION_110();

        v88 = OUTLINED_FUNCTION_81_0();
        sub_2178E3790(v88, v89);
        v90 = OUTLINED_FUNCTION_81_0();
        goto LABEL_66;
      }

      v137 = v30;
      if (qword_27CB8A358 != -1)
      {
        OUTLINED_FUNCTION_98(&qword_27CB8A358);
      }

      OUTLINED_FUNCTION_207(&qword_27CB977D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
      v92 = swift_allocObject();
      OUTLINED_FUNCTION_237(v92, xmmword_21796B330);
      sub_21796914C();
      OUTLINED_FUNCTION_219();

      v94 = MEMORY[0x277D83C10];
      v92[3].n128_u64[1] = MEMORY[0x277D83B88];
      v92[4].n128_u64[0] = v94;
      v92[2].n128_u64[0] = v2;
      v92[6].n128_u64[0] = MEMORY[0x277D837D0];
      v92[6].n128_u64[1] = sub_21788C964(v93, v95, v96);
      v92[4].n128_u64[1] = v138;
      v92[5].n128_u64[0] = v1;

      OUTLINED_FUNCTION_78_1();
      sub_21796560C();

      OUTLINED_FUNCTION_51_0();
      v97 = sub_217968F3C();
      v99 = v98;

      v140 = v97;
      v141 = v99;
      sub_21796903C();
      OUTLINED_FUNCTION_110();
      v100 = OUTLINED_FUNCTION_81_0();
      sub_2178E3790(v100, v101);

      v102 = OUTLINED_FUNCTION_81_0();
      sub_2178E3790(v102, v103);

      goto LABEL_67;
    case 1:
      if (!v25)
      {
        v63 = OUTLINED_FUNCTION_240();
        v104 = 0;
        v1 = 0;
        v59 = 0;
        v54 = 0;
        goto LABEL_49;
      }

      v48 = OUTLINED_FUNCTION_61_0();
      sub_2178BF548(v48, v49);
      v50 = OUTLINED_FUNCTION_61_0();
      sub_2178BF548(v50, v51);
      v52 = OUTLINED_FUNCTION_61_0();
      sub_2178BF548(v52, v53);
      v54 = sub_217965B3C();
      v55 = OUTLINED_FUNCTION_61_0();
      sub_2178E3790(v55, v56);
      v57 = OUTLINED_FUNCTION_61_0();
      sub_2178BF548(v57, v58);
      v59 = sub_217965B2C();
      v60 = OUTLINED_FUNCTION_61_0();
      sub_2178E3790(v60, v61);
      if (v54)
      {

        v62 = v54;
        sub_217965C1C();
        OUTLINED_FUNCTION_151();

        if (v1)
        {
LABEL_24:
          v104 = v62;
          goto LABEL_49;
        }

        sub_217965C3C();
        v71 = sub_217968E3C();
        OUTLINED_FUNCTION_60_1(v11);
        if (!v42)
        {
          v104 = sub_217968D7C();
          v1 = v105;
          OUTLINED_FUNCTION_10();
          (*(v106 + 8))(v11, v71);

          goto LABEL_49;
        }

        sub_2178BE050(v11, qword_27CB8AC48, &unk_21796FF10);
      }

      if (!v59)
      {
        goto LABEL_47;
      }

      v62 = v59;
      sub_217965D0C();
      if (v72)
      {
        OUTLINED_FUNCTION_151();

        goto LABEL_24;
      }

      sub_217965D2C();
      v107 = sub_217968E3C();
      OUTLINED_FUNCTION_60_1(v7);
      if (v42)
      {
        sub_2178BE050(v7, qword_27CB8AC48, &unk_21796FF10);
LABEL_47:
        v104 = sub_217965B6C();
        v1 = v108;
      }

      else
      {
        sub_217968D7C();
        v1 = v130;
        OUTLINED_FUNCTION_10();
        v132 = v7;
        v104 = v133;
        (*(v131 + 8))(v132, v107);
      }

      v63 = OUTLINED_FUNCTION_240();
LABEL_49:
      sub_2178D759C(v63, v64, v65, v66, v67, v68, v69, v70, v134, v135, v136, v137, v138, v139);
      OUTLINED_FUNCTION_192(v109);
      OUTLINED_FUNCTION_8_7();
      v110 = swift_getWitnessTable();
      v111 = OUTLINED_FUNCTION_194(v110);

      if (v111)
      {
        if (v1)
        {
          if (qword_27CB8A380 != -1)
          {
            OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
          }

          OUTLINED_FUNCTION_67_1();
          OUTLINED_FUNCTION_43_1();
          OUTLINED_FUNCTION_78_1();
          sub_21796560C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
          OUTLINED_FUNCTION_116();
          v112 = swift_allocObject();
          *(v112 + 16) = xmmword_21796A340;
          *(v112 + 56) = MEMORY[0x277D837D0];
          *(v112 + 64) = sub_21788C964(v112, v113, v114);
          *(v112 + 32) = v104;
          *(v112 + 40) = v1;
          OUTLINED_FUNCTION_145();
        }

        else
        {
          if (qword_27CB8A380 != -1)
          {
            OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
          }

          OUTLINED_FUNCTION_91_0();
          OUTLINED_FUNCTION_78_1();
          sub_21796560C();
        }

        sub_217968F7C();
        OUTLINED_FUNCTION_110();

        v126 = OUTLINED_FUNCTION_61_0();
        sub_2178E3790(v126, v127);
      }

      else
      {
        if (!v1)
        {
          if (qword_27CB8A380 != -1)
          {
            OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
          }

          OUTLINED_FUNCTION_91_0();
          OUTLINED_FUNCTION_78_1();
          v104 = sub_21796560C();
          v1 = v115;
        }

        v137 = v104;
        v138 = v59;
        v139 = v54;
        if (qword_27CB8A358 != -1)
        {
          OUTLINED_FUNCTION_98(&qword_27CB8A358);
        }

        OUTLINED_FUNCTION_207(&qword_27CB977D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
        v116 = swift_allocObject();
        OUTLINED_FUNCTION_237(v116, xmmword_21796B330);
        sub_21796914C();
        OUTLINED_FUNCTION_219();

        v118 = MEMORY[0x277D83C10];
        v116[3].n128_u64[1] = MEMORY[0x277D83B88];
        v116[4].n128_u64[0] = v118;
        v116[2].n128_u64[0] = v2;
        v116[6].n128_u64[0] = MEMORY[0x277D837D0];
        v116[6].n128_u64[1] = sub_21788C964(v117, v119, v120);
        v116[4].n128_u64[1] = v137;
        v116[5].n128_u64[0] = v1;

        OUTLINED_FUNCTION_78_1();
        sub_21796560C();

        OUTLINED_FUNCTION_51_0();
        v121 = sub_217968F3C();
        v123 = v122;

        v140 = v121;
        v141 = v123;
        sub_21796903C();
        OUTLINED_FUNCTION_110();

        v124 = OUTLINED_FUNCTION_61_0();
        sub_2178E3790(v124, v125);
      }

      v90 = OUTLINED_FUNCTION_61_0();
LABEL_66:
      sub_2178E3790(v90, v91);
LABEL_67:
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_80();
      return;
    case 2:
      sub_2178D759C(v15, v16, v17, v18, v19, v20, v21, v22, v134, v135, v136, v137, v138, v139);
      v140 = v45;
      sub_21796919C();
      OUTLINED_FUNCTION_8_7();
      v46 = swift_getWitnessTable();
      v47 = OUTLINED_FUNCTION_194(v46);

      if ((v47 & 1) == 0)
      {
        if (qword_27CB8A360 != -1)
        {
          swift_once();
        }

        v139 = unk_27CB97830;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
        OUTLINED_FUNCTION_116();
        v73 = swift_allocObject();
        OUTLINED_FUNCTION_237(v73, xmmword_21796A340);
        v74 = sub_21796914C();

        v75 = MEMORY[0x277D83C10];
        v73[3].n128_u64[1] = MEMORY[0x277D83B88];
        v73[4].n128_u64[0] = v75;
        v73[2].n128_u64[0] = v74;

        OUTLINED_FUNCTION_78_1();
        sub_21796560C();

        OUTLINED_FUNCTION_63_0();
        v76 = sub_217968F3C();
        v78 = v77;

        v140 = v76;
        v141 = v78;
        sub_21796903C();
        goto LABEL_28;
      }

      if (qword_27CB8A380 != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_14;
    case 3:
      if (qword_27CB8A380 != -1)
      {
LABEL_68:
        OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
      }

LABEL_14:
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_78_1();
      sub_21796560C();
LABEL_28:
      OUTLINED_FUNCTION_110();
      goto LABEL_67;
    default:
      goto LABEL_67;
  }
}

void sub_2178DB500(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_241();
  sub_217965CCC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  sub_217968E3C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14();
  v5 = *(v2 + 24);
  switch(*(v2 + 32))
  {
    case 0:
      sub_2178BF548(*(v2 + 24), 0);
      sub_217965B8C();
      v6 = OUTLINED_FUNCTION_28_1();
      if (v7(v6) == *MEMORY[0x277D2A6F0])
      {
        v8 = OUTLINED_FUNCTION_28_1();
        v9(v8);
        OUTLINED_FUNCTION_152();
        v10();
        sub_217968CCC();
        sub_2178E3790(v5, 0);
        v11 = OUTLINED_FUNCTION_140();
      }

      else
      {
        sub_2178E3790(v5, 0);
        v11 = OUTLINED_FUNCTION_28_1();
      }

      v12(v11);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_242();
}

void sub_2178DB700()
{
  OUTLINED_FUNCTION_81();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  OUTLINED_FUNCTION_48(v1);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_107();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  _s6ModuleVMa(0);
  OUTLINED_FUNCTION_2();
  v40 = v10;
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_88();
  v36 = v11;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  sub_2178DBAE4();
  v16 = v15;
  v17 = 0;
  v42 = *(v15 + 16);
  v38 = v5 + 8;
  v39 = (v5 + 32);
  v37 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v42 == v17)
    {

LABEL_14:
      OUTLINED_FUNCTION_80();
      return;
    }

    if (v17 >= *(v16 + 16))
    {
      break;
    }

    v18 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v19 = *(v40 + 72);
    sub_2178EBBC4(v16 + v18 + v19 * v17, v14);
    sub_2178EBFC4(&v14[*(v41 + 24)], v0, &qword_27CB8B0A0);
    v20 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_24_3(v20, v21, v3);
    if (v22)
    {
      sub_2178EBC28(v14);

      sub_2178BE050(v0, &qword_27CB8B0A0, &qword_21796B758);
      goto LABEL_14;
    }

    (*v39)(v8, v0, v3);
    OUTLINED_FUNCTION_36_0();
    sub_217864B2C(&qword_27CB8CAD8, &qword_27CB8B0A8, &unk_21796B760, v23);
    OUTLINED_FUNCTION_120();
    sub_2179692AC();
    OUTLINED_FUNCTION_120();
    sub_2179692EC();
    if (v44 == v43)
    {
      v24 = OUTLINED_FUNCTION_203();
      v25(v24);
      sub_2178EBC28(v14);
      ++v17;
    }

    else
    {
      sub_2178EBBC4(v14, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2178E80C4(0, v37[2] + 1, 1, v37);
      }

      v27 = v37[2];
      v26 = v37[3];
      if (v27 >= v26 >> 1)
      {
        v32 = OUTLINED_FUNCTION_56_2(v26);
        v37 = sub_2178E80C4(v32, v33, v34, v37);
      }

      ++v17;
      v28 = OUTLINED_FUNCTION_203();
      v29(v28);
      sub_2178EBC28(v14);
      v30 = v36;
      v31 = v37;
      v37[2] = v27 + 1;
      sub_2178EBB60(v30, v31 + v18 + v27 * v19);
    }
  }

  __break(1u);
}

uint64_t sub_2178DBA5C()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
  }

  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_78_1();
  return sub_21796560C();
}

void sub_2178DBAE4()
{
  OUTLINED_FUNCTION_81();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10);
  OUTLINED_FUNCTION_48(v2);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  v5 = v53 - v4;
  v58 = sub_217968E3C();
  OUTLINED_FUNCTION_2();
  v55 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v54 = v9 - v8;
  _s6ModuleVMa(0);
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_88();
  v56 = v13;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v14);
  v53[2] = v53 - v15;
  OUTLINED_FUNCTION_84_0();
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_159();
  v18 = sub_2178DBA5C();
  v20 = v19;
  sub_2178D852C();
  *v1 = 0;
  *(v1 + 8) = v18;
  *(v1 + 16) = v20;
  v21 = sub_2178E80C4(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v44 = OUTLINED_FUNCTION_56_2(v22);
    v21 = sub_2178E80C4(v44, v45, v46, v21);
  }

  v21[2] = v23 + 1;
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v25 = *(v11 + 72);
  sub_2178EBB60(v1, v21 + v24 + v25 * v23);
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
  }

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_43_1();
  v57 = v26;
  OUTLINED_FUNCTION_78_1();
  sub_21796560C();
  sub_2178D85D4();
  OUTLINED_FUNCTION_180(1);
  if (v36)
  {
    v47 = OUTLINED_FUNCTION_56_2(v27);
    v21 = sub_2178E80C4(v47, v48, v49, v21);
  }

  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_34_1();
  if ((*(v0 + *(v28 + 480)) & 1) == 0)
  {
    sub_2178D978C(v5);
    v29 = v58;
    OUTLINED_FUNCTION_24_3(v5, 1, v58);
    if (v30)
    {
      sub_2178BE050(v5, qword_27CB8AC48, &unk_21796FF10);
    }

    else
    {
      (*(v55 + 32))(v54, v5, v29);
      OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_78_1();
      v53[1] = sub_21796560C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
      OUTLINED_FUNCTION_116();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_21796A340;
      v32 = sub_217968D7C();
      v34 = v33;
      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 64) = sub_21788C964(v32, v33, v35);
      *(v31 + 32) = v32;
      *(v31 + 40) = v34;
      sub_217968F7C();

      sub_2178D8564();
      OUTLINED_FUNCTION_180(3);
      if (v36)
      {
        v50 = OUTLINED_FUNCTION_56_2(v37);
        v21 = sub_2178E80C4(v50, v51, v52, v21);
      }

      (*(v55 + 8))(v54, v58);
      OUTLINED_FUNCTION_236();
    }

    OUTLINED_FUNCTION_67_1();
    OUTLINED_FUNCTION_43_1();
    OUTLINED_FUNCTION_78_1();
    v38 = sub_21796560C();
    v40 = v39;
    v41 = v56;
    sub_2178D859C();
    *v41 = 2;
    *(v41 + 8) = v38;
    *(v41 + 16) = v40;
    v43 = v21[2];
    v42 = v21[3];
    if (v43 >= v42 >> 1)
    {
      v21 = sub_2178E80C4((v42 > 1), v43 + 1, 1, v21);
    }

    v21[2] = v43 + 1;
    sub_2178EBB60(v41, v21 + v24 + v43 * v25);
  }

  OUTLINED_FUNCTION_80();
}

unint64_t sub_2178DBFEC(uint64_t a1)
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_52_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_170();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_105(KeyPath);

  if (!v4)
  {
    return 0;
  }

  v2 = [v4 capabilities];

  return (v2 >> 8) & 1;
}

double sub_2178DC0A4(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_23_2();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_52_1();
  v6 = *(v5 + 88);
  v27 = v6;
  swift_getKeyPath();
  v24 = v4;
  v25 = v6;
  swift_getKeyPath();
  OUTLINED_FUNCTION_63_0();
  sub_21796657C();

  if (v30 && (v14 = [v30 capabilities], v30, OUTLINED_FUNCTION_34_1(), v15 = sub_21796878C(), (v15 & 1) != 0) && ((v14 & 1) != 0 || (v16 = *(v1 + 32), v16 != 255) && (v17 = *(v2 + 24), v30 = v17, LOBYTE(v31) = v16, v28 = 0, LOBYTE(v29) = 3, sub_2178BF534(v17, v16), sub_2178BF534(v17, v16), v18 = static MusicPicker.Reason.== infix(_:_:)(&v30, &v28), sub_2178BF424(v28, v29), sub_2178BF424(v30, v31), sub_2178E3790(v17, v16), (v18 & 1) != 0)))
  {
    sub_2178D8634(v15, v7, v8, v9, v10, v11, v12, v13, v24, v25, v26, v27, v28, v29);
    v19 = &unk_28298CA38;
    v21 = sub_2178E78D0(v20, &unk_28298CA38);

    if (v21)
    {
      return result;
    }

    v23 = 0;
  }

  else
  {
    v23 = 1;
    v19 = &unk_28298CA60;
  }

  sub_2178D8648(v19, v7, v8, v9, v10, v11, v12, v13, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8);
  return sub_2178D8744(v23);
}

double sub_2178DC530()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {
    if (*(v0 + 32))
    {
      return result;
    }

    swift_beginAccess();
    sub_2178BF534(v1, 0);

    sub_217965BAC();

    v2 = v1;
    v3 = 0;
    return sub_2178E3790(v2, v3);
  }

  if (v1)
  {
    swift_beginAccess();
    sub_2178BF534(v1, 1u);

    sub_217965BAC();

    v2 = v1;
    v3 = 1;
    return sub_2178E3790(v2, v3);
  }

  return sub_2178BF548(0, 1u);
}

void sub_2178DC658()
{
  OUTLINED_FUNCTION_81();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v1);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_45_0();
  v48 = v3;
  OUTLINED_FUNCTION_222();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_222();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_176();
  _s9ViewModelCMa(v8, v9, v10, v11);
  v12 = sub_2179687DC();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_222();
  v21 = *(v20 + 520);
  if (*(v0 + v21))
  {
    if (qword_27CB8A480 != -1)
    {
      OUTLINED_FUNCTION_31(&qword_27CB8A480);
    }

    v22 = sub_21796653C();
    __swift_project_value_buffer(v22, qword_27CB97B00);
    v48 = sub_21796651C();
    sub_21796939C();
    OUTLINED_FUNCTION_122();
    if (os_log_type_enabled(v48, v23))
    {
      v24 = OUTLINED_FUNCTION_156();
      *v24 = 0;
      _os_log_impl(&dword_217846000, v48, v14, "Skipping completion task because it is already running.", v24, 2u);
      OUTLINED_FUNCTION_73();
    }

    OUTLINED_FUNCTION_80();
  }

  else
  {
    *(v0 + v21) = 1;

    sub_2179687EC();
    v27 = objc_opt_self();
    v28 = OUTLINED_FUNCTION_120();
    v29(v28);
    v30 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v5;
    *(v31 + 24) = v7;
    (*(v14 + 32))(v31 + v30, v19, v12);
    v49[4] = sub_2178EB934;
    v49[5] = v31;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 1107296256;
    v49[2] = sub_2178DCDF8;
    v49[3] = &block_descriptor_2;
    v32 = _Block_copy(v49);

    v33 = [v27 scheduledTimerWithTimeInterval:0 repeats:v32 block:0.3];
    _Block_release(v32);
    OUTLINED_FUNCTION_39_2();
    v35 = *(v34 + 528);
    v36 = *(v0 + v35);
    *(v0 + v35) = v33;

    sub_21796923C();
    OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    OUTLINED_FUNCTION_27_2();
    v41 = swift_allocObject();
    swift_weakInit();
    sub_21796920C();
    OUTLINED_FUNCTION_123();

    v42 = sub_2179691FC();
    OUTLINED_FUNCTION_92_0();
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    v43[2] = v42;
    v43[3] = v44;
    v43[4] = v5;
    v43[5] = v7;
    v43[6] = v41;

    OUTLINED_FUNCTION_50_2();
    sub_2178D2328();

    v45 = OUTLINED_FUNCTION_181();
    v46(v45);
    OUTLINED_FUNCTION_80();
  }
}

double sub_2178DCA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa(255, a3, a4, a4);
  v7 = sub_2179687DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a2, v7);
  v15 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a3;
  *(v16 + 5) = a4;
  (*(v8 + 32))(&v16[v15], v10, v7);
  sub_2178D207C();

  return result;
}

uint64_t sub_2178DCC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2178DCC5C, 0, 0);
}

uint64_t sub_2178DCC5C()
{
  OUTLINED_FUNCTION_62();
  _s9ViewModelCMa(255, v0[3], v0[4], v1);
  OUTLINED_FUNCTION_95_0();
  sub_2179687DC();
  v2 = sub_2179687CC();
  v0[5] = v2;
  if (v2)
  {
    sub_21796920C();

    v0[6] = sub_2179691FC();
    OUTLINED_FUNCTION_75_1();
    sub_2179691BC();
    OUTLINED_FUNCTION_109();
    v3 = OUTLINED_FUNCTION_31_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_39();

    return v6();
  }
}

uint64_t sub_2178DCDA0()
{
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_39();

  return v0();
}

void sub_2178DCDF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2178DCE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21796920C();
  v4[7] = sub_2179691FC();
  v6 = sub_2179691BC();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2178DCEF8, v6, v5);
}

uint64_t sub_2178DCEF8()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_77_0(v2);

    return sub_2178DD150();
  }

  else
  {

    OUTLINED_FUNCTION_25_1();

    return v4();
  }
}

uint64_t sub_2178DCFC8()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_206();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;

  OUTLINED_FUNCTION_217();
  v5 = *(v4 + 72);
  v6 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_2178DD0F8, v6, v5);
}

uint64_t sub_2178DD0F8()
{
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_25_1();

  return v0();
}

uint64_t sub_2178DD150()
{
  OUTLINED_FUNCTION_62();
  v1[2] = v0;
  sub_21796920C();
  v1[3] = OUTLINED_FUNCTION_163(v2);
  OUTLINED_FUNCTION_75_1();
  v4 = sub_2179691BC();
  v1[4] = v4;
  v1[5] = v3;

  return MEMORY[0x2822009F8](sub_2178DD1D8, v4, v3);
}

uint64_t sub_2178DD1D8()
{
  OUTLINED_FUNCTION_69_1();
  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31(&qword_27CB8A480);
  }

  v1 = sub_21796653C();
  v0[6] = __swift_project_value_buffer(v1, qword_27CB97B00);
  v2 = sub_21796651C();
  sub_21796939C();
  OUTLINED_FUNCTION_122();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_156();
    OUTLINED_FUNCTION_148(v4);
    OUTLINED_FUNCTION_130(&dword_217846000, v5, v6, "Calling MusicPicker completion handler.");
    OUTLINED_FUNCTION_87_1();
  }

  v7 = v0[2];

  v8 = *(v7 + 48);
  sub_2178D759C(v9, v10, v11, v12, v13, v14, v15, v16, v23, v24, v26, v27, v28, v0);
  v18 = v17;
  v0[7] = v17;
  v25 = (v8 + *v8);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_115(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_77_0(v20);

  return v25(v18);
}

uint64_t sub_2178DD354()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_206();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;

  OUTLINED_FUNCTION_217();
  v5 = *(v4 + 40);
  v6 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_2178DD484, v6, v5);
}

uint64_t sub_2178DD484()
{
  OUTLINED_FUNCTION_84();

  v1 = sub_21796651C();
  sub_21796939C();
  OUTLINED_FUNCTION_122();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_156();
    OUTLINED_FUNCTION_148(v3);
    OUTLINED_FUNCTION_131(&dword_217846000, v4, v5, "Completed MusicPicker completion handler.");
    OUTLINED_FUNCTION_87_1();
  }

  v6 = *(v0 + 16);

  OUTLINED_FUNCTION_34_1();
  *(v6 + *(v7 + 520)) = 0;
  OUTLINED_FUNCTION_34_1();
  v9 = *(v8 + 528);
  v10 = *(v6 + v9);
  if (v10)
  {
    [v10 invalidate];
    v11 = *(v6 + v9);
    *(v6 + v9) = 0;
  }

  if (sub_2178D72FC())
  {
    v12 = sub_21796651C();
    sub_21796939C();
    OUTLINED_FUNCTION_122();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_156();
      OUTLINED_FUNCTION_148(v14);
      OUTLINED_FUNCTION_130(&dword_217846000, v15, v16, "MusicPicker completed. Setting isPresented to false");
      OUTLINED_FUNCTION_87_1();
    }

    sub_2178D7348();
  }

  OUTLINED_FUNCTION_39();

  return v17();
}

void sub_2178DD5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_39_2();
  v27 = *(v26 + 528);
  v28 = *(v25 + v27);
  *(v25 + v27) = 0;

  OUTLINED_FUNCTION_39_2();
  if (*(v25 + *(v36 + 520)) == 1)
  {

    sub_2178DA6EC(1, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
  }

  else
  {

    sub_2178D7348();
  }
}

uint64_t sub_2178DDBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  return MEMORY[0x2822009F8](sub_2178DDBC8, 0, 0);
}

uint64_t sub_2178DDBC8()
{
  OUTLINED_FUNCTION_62();
  if (*(v0 + 80) > 1u)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 40);
  }

  *(v0 + 56) = v1;
  OUTLINED_FUNCTION_43_1();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_77_0(v3);

    return sub_2178DDE2C(v1);
  }

  else
  {

    OUTLINED_FUNCTION_39();

    return v5();
  }
}

uint64_t sub_2178DDCD4()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2178DDDD4()
{
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_39();

  return v0();
}

uint64_t sub_2178DDE2C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_217965B1C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  v2[9] = swift_task_alloc();
  v4 = sub_217965AFC();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  sub_21796920C();
  v2[13] = sub_2179691FC();
  v6 = sub_2179691BC();
  v2[14] = v6;
  v2[15] = v5;

  return MEMORY[0x2822009F8](sub_2178DDFDC, v6, v5);
}

uint64_t sub_2178DDFDC()
{
  OUTLINED_FUNCTION_138();
  if (*(v0 + 24))
  {

    sub_2178D64C4();
LABEL_5:

LABEL_6:

    OUTLINED_FUNCTION_39();

    return v5();
  }

  v1 = *(v0 + 32);
  v2 = *(v1 + 24);
  *(v0 + 128) = v2;
  v3 = *(v1 + 32);
  *(v0 + 168) = v3;
  if (v3 == 255)
  {
    goto LABEL_5;
  }

  v4 = *(*v1 + 472);
  *(v0 + 136) = v4;
  if (*(v1 + v4))
  {
    goto LABEL_5;
  }

  sub_2178BF548(v2, v3);
  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31(&qword_27CB8A480);
  }

  v7 = sub_21796653C();
  *(v0 + 144) = __swift_project_value_buffer(v7, qword_27CB97B00);
  v8 = sub_21796651C();
  v9 = sub_21796939C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_156();
    *v10 = 0;
    _os_log_impl(&dword_217846000, v8, v9, "Fetching suggested songs.", v10, 2u);
    OUTLINED_FUNCTION_73();
  }

  v11 = *(v0 + 96);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);

  sub_21791A5E4(*(v13 + 40), 20, 0, *(v12 + 80), *(v12 + 88), v11);
  v14 = *(sub_217965ADC() + 16);

  if (!v14)
  {

    sub_2179688CC();
    sub_2179680AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
    v18 = OUTLINED_FUNCTION_36_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    sub_2178D8540();
    sub_2178E3790(v2, v3);
    v22 = OUTLINED_FUNCTION_93_0();
    v23(v22);
    goto LABEL_6;
  }

  *(v1 + v4) = 1;
  swift_task_alloc();
  OUTLINED_FUNCTION_46_1();
  *(v0 + 152) = v15;
  *v15 = v16;
  v15[1] = sub_2178DE2CC;
  v17 = *(v0 + 64);

  return MEMORY[0x282189758](v17);
}

uint64_t sub_2178DE2CC()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 160) = v0;

  OUTLINED_FUNCTION_139();
  v6 = *(v5 + 120);
  v7 = *(v1 + 112);
  if (v0)
  {
    v8 = sub_2178DE500;
  }

  else
  {
    v8 = sub_2178DE3F4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2178DE3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_101();
  v15 = *(v14 + 128);
  v16 = *(v14 + 136);
  v17 = *(v14 + 88);
  v37 = *(v14 + 80);
  v38 = *(v14 + 96);
  v18 = *(v14 + 64);
  v20 = *(v14 + 48);
  v19 = *(v14 + 56);
  v21 = *(v14 + 32);
  v22 = *(v14 + 168);

  *(v21 + v16) = 0;
  sub_217965B0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  sub_2178D8540();
  v27 = sub_2178E3790(v15, v22);
  (*(v19 + 8))(v18, v20, v27);
  (*(v17 + 8))(v38, v37);

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_78_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, a12, a13, a14);
}

uint64_t sub_2178DE500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_127();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_138();
  a18 = v20;
  v24 = *(v20 + 160);
  v25 = *(v20 + 136);
  v26 = *(v20 + 96);
  v27 = *(v20 + 32);

  v28 = OUTLINED_FUNCTION_143();
  v29(v28);
  *(v27 + v25) = 0;
  sub_2179688CC();
  sub_2179680AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  sub_2178D8540();
  v34 = v24;
  v35 = sub_21796651C();
  sub_21796937C();
  OUTLINED_FUNCTION_190();
  if (OUTLINED_FUNCTION_189())
  {
    v36 = *(v20 + 160);
    v37 = *(v20 + 128);
    v38 = *(v20 + 168);
    OUTLINED_FUNCTION_186();
    a9 = OUTLINED_FUNCTION_88_0();
    *v26 = 136446210;
    *(v20 + 16) = v36;
    v39 = v36;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v41 = OUTLINED_FUNCTION_193(v40);
    sub_217957F4C(v41, v42, &a9);
    OUTLINED_FUNCTION_187();
    *(v26 + 4) = v21;
    OUTLINED_FUNCTION_57_2(&dword_217846000, v43, v44, "Failed to fetch suggested songs. Error = %{public}s");
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_104();
    sub_2178E3790(v37, v38);
  }

  else
  {
    v45 = *(v20 + 160);
    sub_2178E3790(*(v20 + 128), *(v20 + 168));
  }

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_102();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_2178DE6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178DE6F0, 0, 0);
}

uint64_t sub_2178DE6F0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_115(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_77_0(v3);

    return sub_2178DE7B4();
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178DE7B4()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAB8, &qword_21796E690);
  v1[4] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAC0, &qword_21796E698);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_2179659BC();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAC8, &qword_21796E6A0);
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  sub_21796920C();
  v1[14] = sub_2179691FC();
  v6 = sub_2179691BC();
  v1[15] = v6;
  v1[16] = v5;

  return MEMORY[0x2822009F8](sub_2178DE9B0, v6, v5);
}

uint64_t sub_2178DE9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_138();
  v13 = v12[3];
  v14 = *(*v13 + 496);
  v12[17] = v14;
  if (*(v13 + v14))
  {

    OUTLINED_FUNCTION_126();

    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_102();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    if (qword_27CB8A480 != -1)
    {
      OUTLINED_FUNCTION_31(&qword_27CB8A480);
    }

    v24 = sub_21796653C();
    v12[18] = __swift_project_value_buffer(v24, qword_27CB97B00);
    v25 = sub_21796651C();
    v26 = sub_21796939C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_156();
      *v27 = 0;
      _os_log_impl(&dword_217846000, v25, v26, "Fetching recently favorited songs.", v27, 2u);
      OUTLINED_FUNCTION_73();
    }

    v28 = v12[10];
    v29 = v12[8];
    v30 = v12[9];

    sub_2179688CC();
    sub_21796820C();
    swift_getKeyPath();
    (*(v30 + 104))(v28, *MEMORY[0x277D2A4B0], v29);
    sub_2178EBD10(&qword_27CB8CAD0, MEMORY[0x277D2A4B8], MEMORY[0x277D2A4A8]);
    OUTLINED_FUNCTION_181();
    sub_21796816C();

    v31 = OUTLINED_FUNCTION_118();
    v32(v31);
    swift_getKeyPath();
    sub_21796815C();

    sub_21796819C();
    sub_2179681CC();
    *(v13 + v14) = 1;
    swift_task_alloc();
    OUTLINED_FUNCTION_46_1();
    v12[19] = v33;
    *v33 = v34;
    v33[1] = sub_2178DEC70;
    OUTLINED_FUNCTION_102();

    return MEMORY[0x282124698](v35);
  }
}

uint64_t sub_2178DEC70()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 160) = v0;

  OUTLINED_FUNCTION_139();
  v6 = *(v5 + 128);
  v7 = *(v1 + 120);
  if (v0)
  {
    v8 = sub_2178DEE9C;
  }

  else
  {
    v8 = sub_2178DED98;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2178DED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_138();
  v13 = v12[17];
  v15 = v12[4];
  v14 = v12[5];
  v16 = v12[3];

  *(v16 + v13) = 0;
  v17 = OUTLINED_FUNCTION_143();
  v18(v17);
  v19 = OUTLINED_FUNCTION_36_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
  sub_2178E37F4(v15);
  sub_2178BE050(v15, &qword_27CB8CAB8, &qword_21796E690);
  v22 = OUTLINED_FUNCTION_93_0();
  v23(v22);
  v24 = OUTLINED_FUNCTION_68_2();
  v25(v24);
  OUTLINED_FUNCTION_126();

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_102();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_2178DEFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178DF018, 0, 0);
}

uint64_t sub_2178DF018()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_115(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_77_0(v3);

    return sub_2178DF0DC();
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178DF0DC()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B098, &qword_21796B750);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_217968E3C();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA78, &qword_21796E638);
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA80, &qword_21796E640);
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA88, &qword_21796E648);
  v1[20] = swift_task_alloc();
  v6 = sub_217965D9C();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA90, &qword_21796E650);
  v1[24] = v7;
  v1[25] = *(v7 - 8);
  v1[26] = swift_task_alloc();
  v8 = sub_217965A5C();
  v1[27] = v8;
  v1[28] = *(v8 - 8);
  v1[29] = swift_task_alloc();
  v9 = sub_2179659EC();
  v1[30] = v9;
  v1[31] = *(v9 - 8);
  v1[32] = swift_task_alloc();
  sub_21796920C();
  v1[33] = sub_2179691FC();
  v11 = sub_2179691BC();
  v1[34] = v11;
  v1[35] = v10;

  return MEMORY[0x2822009F8](sub_2178DF500, v11, v10);
}

uint64_t sub_2178DF500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_138();
  v13 = v12[5];
  v14 = *(*v13 + 480);
  v12[36] = v14;
  if (*(v13 + v14))
  {

    OUTLINED_FUNCTION_10_6();
    v35 = v15;

    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_102();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, v35, a10, a11, a12);
  }

  else
  {
    if (qword_27CB8A480 != -1)
    {
      OUTLINED_FUNCTION_31(&qword_27CB8A480);
    }

    v25 = sub_21796653C();
    v12[37] = __swift_project_value_buffer(v25, qword_27CB97B00);
    v26 = sub_21796651C();
    sub_21796939C();
    OUTLINED_FUNCTION_122();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_156();
      OUTLINED_FUNCTION_148(v28);
      OUTLINED_FUNCTION_131(&dword_217846000, v29, v30, "Fetching recent replay playlist's songs.");
      OUTLINED_FUNCTION_87_1();
    }

    sub_2179659DC();
    *(v13 + v14) = 1;
    swift_task_alloc();
    OUTLINED_FUNCTION_46_1();
    v12[38] = v31;
    *v31 = v32;
    v31[1] = sub_2178DF6E4;
    OUTLINED_FUNCTION_102();

    return MEMORY[0x2821894F8](v33);
  }
}

uint64_t sub_2178DF6E4()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 312) = v0;

  OUTLINED_FUNCTION_139();
  v6 = *(v5 + 280);
  v7 = *(v1 + 272);
  if (v0)
  {
    v8 = sub_2178DFECC;
  }

  else
  {
    v8 = sub_2178DF80C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2178DF80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_101();
  v16 = v14[25];
  v15 = v14[26];
  v17 = v14[24];
  v19 = v14[20];
  v18 = v14[21];
  sub_217965A4C();
  v20 = sub_2178E4748(v15);
  (*(v16 + 8))(v15, v17);
  sub_2178D2A00(v20, v19);

  OUTLINED_FUNCTION_24_3(v19, 1, v18);
  if (v21)
  {
    v22 = v14[20];

    sub_2178BE050(v22, &qword_27CB8CA88, &qword_21796E648);
  }

  else
  {
    (*(v14[22] + 32))(v14[23], v14[20], v14[21]);
    v23 = sub_217965D7C();
    if (v24)
    {
      v25 = v23;
      v26 = v24;
      swift_getKeyPath();
      v14[2] = v25;
      v14[3] = v26;
      OUTLINED_FUNCTION_82_1();
      sub_2178EBD10(v27, v28, MEMORY[0x277CD8628]);
      sub_21796837C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A728, &qword_21796B550);
      OUTLINED_FUNCTION_137();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_21796E3B0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAA0, &qword_217970040);
      *(v29 + 32) = sub_21796800C();
      OUTLINED_FUNCTION_140();
      sub_21796836C();
      swift_task_alloc();
      OUTLINED_FUNCTION_46_1();
      v14[40] = v30;
      *v30 = v31;
      v30[1] = sub_2178DFB20;
      OUTLINED_FUNCTION_78_0();

      return MEMORY[0x282124780](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
    }

    (*(v14[22] + 8))(v14[23], v14[21]);
  }

  *(v14[5] + v14[36]) = 0;
  sub_2178DA614(1);
  v40 = OUTLINED_FUNCTION_93_0();
  v41(v40);
  v42 = OUTLINED_FUNCTION_68_2();
  v43(v42);
  OUTLINED_FUNCTION_10_6();
  v54 = v44;

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_78_0();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, v54, a11, a12, a13, a14);
}

uint64_t sub_2178DFB20()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 328) = v0;

  OUTLINED_FUNCTION_139();
  v6 = *(v5 + 280);
  v7 = *(v1 + 272);
  if (v0)
  {
    v8 = sub_2178E005C;
  }

  else
  {
    v8 = sub_2178DFC48;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2178DFC48()
{
  v1 = v0[36];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[5];

  *(v4 + v1) = 0;
  sub_2179683AC();
  sub_21793684C(v3);
  v5 = OUTLINED_FUNCTION_93_0();
  v6(v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v2);
  v8 = v0[29];
  v9 = v0[28];
  v10 = v0[22];
  v34 = v0[23];
  v35 = v0[27];
  v11 = v0[18];
  v32 = v0[19];
  v33 = v0[21];
  v30 = v0[16];
  v31 = v0[17];
  v12 = v0[15];
  v29 = v0[14];
  if (EnumTagSinglePayload == 1)
  {
    sub_2178BE050(v0[7], qword_27CB8AC48, &unk_21796FF10);
    sub_2178DA614(1);
  }

  else
  {
    v13 = v0[13];
    v28 = v0[29];
    v14 = v0[11];
    v15 = v0[6];
    OUTLINED_FUNCTION_208();
    v16(v13);
    v17 = OUTLINED_FUNCTION_57_0();
    v18(v17);
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
    sub_2178D97F8(v15);
    v22 = OUTLINED_FUNCTION_93_0();
    v8 = v28;
    v23(v22);
  }

  (*(v12 + 8))(v30, v29);
  (*(v11 + 8))(v32, v31);
  (*(v10 + 8))(v34, v33);
  (*(v9 + 8))(v8, v35);
  v24 = OUTLINED_FUNCTION_118();
  v25(v24);
  OUTLINED_FUNCTION_10_6();

  OUTLINED_FUNCTION_39();

  return v26();
}

uint64_t sub_2178DFECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_101();

  v17 = v14[39];
  OUTLINED_FUNCTION_235();
  v18 = sub_21796651C();
  sub_21796937C();
  OUTLINED_FUNCTION_190();
  if (OUTLINED_FUNCTION_189())
  {
    v19 = v14[31];
    v40 = v14[32];
    v20 = v14[30];
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_165();
    OUTLINED_FUNCTION_231(4.8751e-34);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v22 = OUTLINED_FUNCTION_193(v21);
    OUTLINED_FUNCTION_202(v22, v23, v24, v25);
    OUTLINED_FUNCTION_187();
    *(v15 + 4) = v16;
    OUTLINED_FUNCTION_57_2(&dword_217846000, v26, v27, "Failed to fetch recent replay playlist's songs. Error = %{public}s");
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_104();

    (*(v19 + 8))(v40, v20);
  }

  else
  {

    v28 = OUTLINED_FUNCTION_118();
    v29(v28);
  }

  OUTLINED_FUNCTION_10_6();
  v41 = v30;

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_78_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v41, a11, a12, a13, a14);
}

uint64_t sub_2178E005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_101();
  v16 = v14[28];
  v15 = v14[29];
  v17 = v14[27];
  v18 = v14[18];
  v19 = v14[17];

  v20 = v18 + 8;
  v21 = OUTLINED_FUNCTION_111();
  v22(v21);
  v23 = OUTLINED_FUNCTION_118();
  v24(v23);
  (*(v16 + 8))(v15, v17);
  v25 = v14[41];
  OUTLINED_FUNCTION_235();
  v26 = sub_21796651C();
  sub_21796937C();
  OUTLINED_FUNCTION_190();
  if (OUTLINED_FUNCTION_189())
  {
    v27 = v14[31];
    v48 = v14[32];
    v28 = v14[30];
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_165();
    OUTLINED_FUNCTION_231(4.8751e-34);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v30 = OUTLINED_FUNCTION_193(v29);
    OUTLINED_FUNCTION_202(v30, v31, v32, v33);
    OUTLINED_FUNCTION_187();
    *(v19 + 4) = v20;
    OUTLINED_FUNCTION_57_2(&dword_217846000, v34, v35, "Failed to fetch recent replay playlist's songs. Error = %{public}s");
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_104();

    (*(v27 + 8))(v48, v28);
  }

  else
  {

    v36 = OUTLINED_FUNCTION_118();
    v37(v36);
  }

  OUTLINED_FUNCTION_10_6();
  v49 = v38;

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_78_0();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, v49, a11, a12, a13, a14);
}

uint64_t sub_2178E0244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178E0264, 0, 0);
}

uint64_t sub_2178E0264()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_115(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_77_0(v3);

    return sub_2178DDE2C(0);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178E032C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178E034C, 0, 0);
}

uint64_t sub_2178E034C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_115(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_77_0(v3);

    return sub_2178E0410();
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178E0410()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  v1[5] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAC0, &qword_21796E698);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAC8, &qword_21796E6A0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  sub_21796920C();
  v1[12] = sub_2179691FC();
  v5 = sub_2179691BC();
  v1[13] = v5;
  v1[14] = v4;

  return MEMORY[0x2822009F8](sub_2178E05B0, v5, v4);
}

uint64_t sub_2178E05B0()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  v1 = v0[4];
  OUTLINED_FUNCTION_223();
  v3 = *(v2 + 488);
  v0[15] = v3;
  if (*(v1 + v3))
  {

    OUTLINED_FUNCTION_172();

    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_195();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    if (qword_27CB8A480 != -1)
    {
      OUTLINED_FUNCTION_31(&qword_27CB8A480);
    }

    v13 = sub_21796653C();
    v0[16] = __swift_project_value_buffer(v13, qword_27CB97B00);
    v14 = sub_21796651C();
    sub_21796939C();
    OUTLINED_FUNCTION_122();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_156();
      OUTLINED_FUNCTION_148(v16);
      OUTLINED_FUNCTION_130(&dword_217846000, v17, v18, "Fetching recently played songs from library.");
      OUTLINED_FUNCTION_87_1();
    }

    v0[17] = sub_2179688CC();
    sub_21796820C();
    swift_getKeyPath();
    sub_2179681BC();

    sub_2179681CC();
    *(v1 + v3) = 1;
    swift_task_alloc();
    OUTLINED_FUNCTION_46_1();
    v0[18] = v19;
    *v19 = v20;
    v19[1] = sub_2178E0798;
    OUTLINED_FUNCTION_195();

    return MEMORY[0x282124698](v21);
  }
}

uint64_t sub_2178E0798()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_139();
  v6 = *(v5 + 112);
  v7 = *(v1 + 104);
  if (v0)
  {
    v8 = sub_2178E0A6C;
  }

  else
  {
    v8 = sub_2178E08C0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2178E08C0()
{
  v1 = v0[15];
  v2 = v0[10];
  v18 = v0[9];
  v19 = v0[11];
  v3 = v0[7];
  v16 = v0[6];
  v17 = v0[8];
  v4 = v0[4];

  *(v4 + v1) = 0;
  v0[3] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB00, &qword_21796E770);
  OUTLINED_FUNCTION_85_0();
  sub_217864B2C(v5, &qword_27CB8CB00, &qword_21796E770, v6);
  sub_21796811C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v8 = OUTLINED_FUNCTION_36_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  sub_2178D85E8();
  sub_21796823C();
  v11 = OUTLINED_FUNCTION_36_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
  sub_2178D85B0();
  (*(v3 + 8))(v17, v16);
  (*(v2 + 8))(v19, v18);
  OUTLINED_FUNCTION_172();

  OUTLINED_FUNCTION_39();

  return v14();
}

void sub_2178E0BC8()
{
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_222();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_185();
  sub_21796944C();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_70_0();
  v3 = OUTLINED_FUNCTION_51_0();
  v4(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA30, &qword_21796E5C0);
  if (swift_dynamicCast())
  {
    v5 = OUTLINED_FUNCTION_36_2();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
    v8 = OUTLINED_FUNCTION_120();
    v10 = v9(v8);
    v11 = sub_2178DA794(v10);
    if (v11 & 1) != 0 || (v13 = OUTLINED_FUNCTION_28_1(), v11 = v14(v13), (v11) || (sub_2178DB500(v11, v12), v15) && (OUTLINED_FUNCTION_28_1(), sub_217938234(), __swift_project_boxed_opaque_existential_1(v30, v31), v16 = OUTLINED_FUNCTION_111(), v18 = v17(v16), v11 = __swift_destroy_boxed_opaque_existential_1(v30), (v18))
    {
      sub_2178DB500(v11, v12);
      if (!v19 || (OUTLINED_FUNCTION_28_1(), sub_217938234(), __swift_project_boxed_opaque_existential_1(v30, v31), v20 = OUTLINED_FUNCTION_93_0(), v22 = v21(v20), __swift_destroy_boxed_opaque_existential_1(v30), (v22 & 1) != 0))
      {
        OUTLINED_FUNCTION_28_1();
        sub_217938234();
        __swift_project_boxed_opaque_existential_1(v30, v31);
        v23 = OUTLINED_FUNCTION_68_2();
        v24(v23);
        __swift_destroy_boxed_opaque_existential_1(v30);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v1);
    v28 = OUTLINED_FUNCTION_120();
    v29(v28);
  }

  OUTLINED_FUNCTION_80();
}

void sub_2178E0E64()
{
  OUTLINED_FUNCTION_81();
  v92 = v1;
  v87 = v3;
  v88 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C9E0, &qword_21796E520);
  OUTLINED_FUNCTION_48(v4);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_45_0();
  v84 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C9C8, &qword_21796E4A8);
  OUTLINED_FUNCTION_2();
  v86 = v8;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_45_0();
  v85 = v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_2();
  v83 = v11;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_45_0();
  v82 = v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB20, &unk_21796B100);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_5();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_106();
  v91 = sub_217968DFC();
  OUTLINED_FUNCTION_2();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_88();
  v90 = v22;
  OUTLINED_FUNCTION_84_0();
  v24 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v77 - v25;
  v93 = sub_21796809C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_5();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v34 = &v77 - v33;
  v35 = *(v0 + 32);
  if (v35 > 1)
  {
LABEL_16:
    OUTLINED_FUNCTION_80();
    return;
  }

  v80 = v32;
  v79 = v7;
  v78 = v0;
  v36 = *(v0 + 24);
  sub_2178BF548(v36, v35);
  sub_2178BF548(v36, v35);
  sub_217938234();
  v92 = v34;
  OUTLINED_FUNCTION_142();
  sub_2179684BC();
  __swift_destroy_boxed_opaque_existential_1(v94);
  if (!v36)
  {
    v48 = v78;
    OUTLINED_FUNCTION_39_2();
    v50 = *(v49 + 416);
    OUTLINED_FUNCTION_43_1();
    swift_beginAccess();
    v51 = v84;
    sub_2178EBFC4(v48 + v50, v84, &qword_27CB8C9E0);
    OUTLINED_FUNCTION_24_3(v51, 1, v79);
    if (v52)
    {
      OUTLINED_FUNCTION_54();
      v53(v92, v93);
      sub_2178E3790(v36, v35);
      sub_2178BE050(v51, &qword_27CB8C9E0, &qword_21796E520);
    }

    else
    {
      OUTLINED_FUNCTION_155();
      v54 = OUTLINED_FUNCTION_47_0();
      v55(v54);
      v56 = v82;
      sub_21796823C();
      v57 = v83;
      v58 = OUTLINED_FUNCTION_215();
      v59 = v89;
      v60(v58);
      v61 = *(v81 + 36);
      OUTLINED_FUNCTION_36_0();
      sub_217864B2C(v62, v63, v64, v65);
      OUTLINED_FUNCTION_28_1();
      sub_2179692AC();
      (*(v57 + 8))(v56, v59);
      OUTLINED_FUNCTION_212();
      v88 = v66;
      while (1)
      {
        OUTLINED_FUNCTION_28_1();
        sub_2179692EC();
        if (*(v17 + v61) == v94[0])
        {
          break;
        }

        v67 = sub_21796934C();
        (*(v20 + 16))(v90);
        (v67)(v94, 0);
        v68 = sub_2179692FC();
        MEMORY[0x21CEA7D10](v94, v68);
        v69 = OUTLINED_FUNCTION_181();
        v70(v69);
        OUTLINED_FUNCTION_142();
        OUTLINED_FUNCTION_47_0();
        sub_2179684BC();
        LOBYTE(v67) = sub_21796805C();
        v71 = *v88;
        (*v88)(v30, v93);
        __swift_destroy_boxed_opaque_existential_1(v94);
        if (v67)
        {
          OUTLINED_FUNCTION_103();
          sub_2178BE050(v17, &qword_27CB8AB20, &unk_21796B100);
          v72 = OUTLINED_FUNCTION_211();
          v73(v72);
          v71(v92, v93);
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_103();
      sub_2178BE050(v17, &qword_27CB8AB20, &unk_21796B100);
      v75 = OUTLINED_FUNCTION_211();
      v76(v75);
      (*v88)(v92, v93);
    }

    goto LABEL_16;
  }

  sub_217965B2C();
  v37 = OUTLINED_FUNCTION_123();
  sub_2178E3790(v37, v35);
  OUTLINED_FUNCTION_155();
  v89 = v36;
  v38 = sub_217965D1C();
  v39 = 0;
  v40 = *(v38 + 16);
  v90 = v20 + 16;
  v41 = (v80 + 8);
  while (1)
  {
    if (v40 == v39)
    {

      v74 = OUTLINED_FUNCTION_103();
      (*v41)(v92, v93, v74);
      goto LABEL_16;
    }

    if (v39 >= *(v38 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_133();
    v43 = (*(v20 + 16))(v26, v38 + v42 + *(v20 + 72) * v39++, v91);
    MEMORY[0x21CEA7D10](v94, v43);
    v44 = OUTLINED_FUNCTION_118();
    v45(v44);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_57_0();
    sub_2179684BC();
    v46 = sub_21796805C();
    v47 = *v41;
    (*v41)(v30, v93);
    __swift_destroy_boxed_opaque_existential_1(v94);
    if (v46)
    {
      (v47)(v92, v93);

      OUTLINED_FUNCTION_103();

      goto LABEL_16;
    }
  }

  __break(1u);
}