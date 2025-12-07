uint64_t sub_2313D382C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case -125:
    case -119:
    case -116:
    case -112:
      v5 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2(v5);
      v6 = &unk_284605620;
      goto LABEL_21;
    case -124:
    case -122:
    case -120:
    case -115:
      v11 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2(v11);
      v6 = &unk_2846055F8;
      goto LABEL_21;
    case -123:
    case -114:
      v14 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2(v14);
      v6 = &unk_284605648;
      goto LABEL_21;
    case -121:
      v28 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2(v28);
      v6 = &unk_284605670;
      goto LABEL_21;
    case -118:
    case -113:
      v13 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2(v13);
      v6 = &unk_2846056E8;
      goto LABEL_21;
    case -117:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE30, &qword_2313DC410);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_2313DB7D0;
      v17 = type metadata accessor for MusicSubscriptionFilter();
      v18 = OUTLINED_FUNCTION_51(v17);
      *(v16 + 56) = v2;
      OUTLINED_FUNCTION_25_1();
      *(v16 + 64) = sub_2313D64E0(v19, v20, &unk_2313DC240);
      *(v16 + 32) = v18;
      v21 = type metadata accessor for PointOfInterestFilter();
      swift_allocObject();
      v22 = sub_2313CA690(&unk_2846056C0);
      *(v16 + 96) = v21;
      OUTLINED_FUNCTION_24_1();
      *(v16 + 104) = sub_2313D64E0(v23, v24, &unk_2313DC270);
      *(v16 + 72) = v22;
      v25 = sub_2313DADEC();
      OUTLINED_FUNCTION_52(v25);
      result = sub_2313DADFC();
      v26 = MEMORY[0x277D61008];
      *(a2 + 24) = v25;
      *(a2 + 32) = v26;
      *a2 = result;
      return result;
    case -111:
      v29 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2(v29);
      v6 = &unk_284605698;
      goto LABEL_21;
    case -110:
    case -109:
LABEL_13:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    case -108:
      v30 = type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2(v30);
      v6 = &unk_284605710;
      goto LABEL_21;
    case -107:
      v27 = type metadata accessor for WeatherLocationEntityCurrentFilter();
      OUTLINED_FUNCTION_17_1();
      v3 = swift_allocObject();
      *(v3 + 16) = 0x746E6572727563;
      *(v3 + 24) = 0xE700000000000000;
      *(a2 + 24) = v27;
      v8 = &unk_27DD4BE40;
      v9 = type metadata accessor for WeatherLocationEntityCurrentFilter;
      v10 = &unk_2313DC2A0;
LABEL_8:
      result = sub_2313D64E0(v8, v9, v10);
      *(a2 + 32) = result;
      *a2 = v3;
      return result;
    default:
      switch(result)
      {
        case '<':
          RoutePlanFilter = type metadata accessor for MapsCreateRoutePlanFilter();
          OUTLINED_FUNCTION_51(RoutePlanFilter);
          OUTLINED_FUNCTION_75();
          v8 = &unk_27DD4BE58;
          v9 = type metadata accessor for MapsCreateRoutePlanFilter;
          v10 = &unk_2313DC330;
          goto LABEL_8;
        case '=':
        case '?':
        case '@':
        case 'B':
          goto LABEL_13;
        case '>':
          v31 = type metadata accessor for MapsSearchNearbyFilter();
          OUTLINED_FUNCTION_51(v31);
          OUTLINED_FUNCTION_75();
          v8 = &unk_27DD4BE50;
          v9 = type metadata accessor for MapsSearchNearbyFilter;
          v10 = &unk_2313DC2D0;
          goto LABEL_8;
        case 'A':
          v36 = type metadata accessor for MapsTrafficConditionFilter();
          OUTLINED_FUNCTION_51(v36);
          OUTLINED_FUNCTION_75();
          v8 = &unk_27DD4BE48;
          v9 = type metadata accessor for MapsTrafficConditionFilter;
          v10 = &unk_2313DC300;
          goto LABEL_8;
        case 'C':
          v32 = type metadata accessor for PointOfInterestFilter();
          OUTLINED_FUNCTION_20_2(v32);
          v6 = &unk_284605738;
          break;
        case 'D':
        case 'E':
        case 'F':
        case 'G':
        case 'H':
        case 'I':
          goto LABEL_7;
        default:
          if (result - 98 < 2)
          {
LABEL_7:
            v12 = type metadata accessor for MusicSubscriptionFilter();
            OUTLINED_FUNCTION_51(v12);
            OUTLINED_FUNCTION_75();
            OUTLINED_FUNCTION_25_1();
            v10 = &unk_2313DC240;
            goto LABEL_8;
          }

          if (result != 41)
          {
            goto LABEL_13;
          }

          v15 = type metadata accessor for PointOfInterestFilter();
          OUTLINED_FUNCTION_20_2(v15);
          v6 = &unk_284605760;
          break;
      }

LABEL_21:
      v33 = sub_2313CA690(v6);
      *(a2 + 24) = v3;
      OUTLINED_FUNCTION_24_1();
      result = sub_2313D64E0(v34, v35, &unk_2313DC270);
      *(a2 + 32) = result;
      *a2 = v33;
      return result;
  }
}

void sub_2313D3C64(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDD8, &qword_2313DC390);
  v4 = swift_allocObject();
  *a2 = v4;
  sub_2313C3BC0(a1, v4 + 16);
}

double sub_2313D3CC4@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_2313D5E90(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_2313BEB24(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2313D3D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2313D5E90(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_2313D3D80()
{
  v0 = sub_2313DAD8C();
  v4[3] = v0;
  v4[4] = sub_2313D64E0(&qword_27DD4BF00, MEMORY[0x277D60FE0], MEMORY[0x277D60FD8]);
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v4);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_2Tm, *MEMORY[0x277D60FD0], v0);
  v2 = sub_2313DAC0C();
  OUTLINED_FUNCTION_52(v2);
  result = sub_2313DABFC();
  qword_27DD4C208 = result;
  return result;
}

BOOL sub_2313D3E64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_2313DAB9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2313CC3B4(v2, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v7, v3);
      v10 = *v7;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 dateSearchType];

        (*(v4 + 8))(v9, v3);
        return v12 == 1;
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v14 = *(v4 + 8);
      v14(v9, v3);
      v14(v7, v3);
    }
  }

  return 0;
}

BOOL sub_2313D40EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_2313DAB9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2313CC3B4(v2, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v7, v3);
      v10 = *v7;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 itemType];

        (*(v4 + 8))(v9, v3);
        return v12 == 2;
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v14 = *(v4 + 8);
      v14(v9, v3);
      v14(v7, v3);
    }
  }

  return 0;
}

uint64_t sub_2313D4374()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_2313DAB9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2313CC3B4(v2, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v7, v3);
      v10 = *v7;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        if ([v11 itemType] == 3)
        {
          v13 = [v12 taskPriority];

          (*(v4 + 8))(v9, v3);
          if (v13 == 2)
          {
            return 1;
          }
        }

        else
        {
          (*(v4 + 8))(v9, v3);
        }
      }

      else
      {

        (*(v4 + 8))(v9, v3);
      }
    }

    else
    {
      v15 = *(v4 + 8);
      v15(v9, v3);
      v15(v7, v3);
    }
  }

  return 0;
}

uint64_t sub_2313D463C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_2313DAB9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2313CC3B4(v2, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v7, v3);
      v10 = *v7;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 attachments];
        if (!v12)
        {

          (*(v4 + 8))(v9, v3);
          return 1;
        }
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v13 = *(v4 + 8);
      v13(v9, v3);
      v13(v7, v3);
    }
  }

  return 0;
}

BOOL sub_2313D48CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - v1;
  v3 = sub_2313DAB9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2313CC3B4(v2, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v7, v3);
      v10 = *v7;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v15[1] = v11;
        sub_2313D643C(0, &qword_27DD4BED0, 0x277CD3EC0);
        v12 = sub_2313DAA7C();
        (*(v4 + 8))(v9, v3);

        return v12 == 5;
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v14 = *(v4 + 8);
      v14(v9, v3);
      v14(v7, v3);
    }
  }

  return 0;
}

uint64_t sub_2313D4B78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_2313DAB9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2313CC3B4(v2, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v7, v3);
      v10 = *v7;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 temporalEventTrigger];
        if (v13 || (v13 = [v12 spatialEventTrigger]) != 0)
        {
          v14 = v13;
        }

        else
        {
          v17 = [v12 targetTaskList];
          if (!v17)
          {
            (*(v4 + 8))(v9, v3);

            return 0;
          }

          v14 = v17;
          v18 = sub_2313D635C([v17 title]);
          if (v19)
          {
            if (v18 == 0xD000000000000012 && v19 == 0x80000002313DE540)
            {

              (*(v4 + 8))(v9, v3);
            }

            else
            {
              v21 = sub_2313DB39C();

              (*(v4 + 8))(v9, v3);
              if ((v21 & 1) == 0)
              {
                return 0;
              }
            }

            return 1;
          }
        }
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v15 = *(v4 + 8);
      v15(v9, v3);
      v15(v7, v3);
    }
  }

  return 0;
}

uint64_t sub_2313D4F0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_2313DAB9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2313CC3B4(v2, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v7, v3);
      v10 = *v7;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 temporalEventTrigger];

        (*(v4 + 8))(v9, v3);
        if (v12)
        {

          return 1;
        }
      }

      else
      {

        (*(v4 + 8))(v9, v3);
      }
    }

    else
    {
      v14 = *(v4 + 8);
      v14(v9, v3);
      v14(v7, v3);
    }
  }

  return 0;
}

uint64_t sub_2313D51A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_2313DAB9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    if ((*(v4 + 88))(v7, v3) != *MEMORY[0x277D60918])
    {
      v15 = *(v4 + 8);
      v15(v9, v3);
      v15(v7, v3);
      return 0;
    }

    (*(v4 + 96))(v7, v3);
    v10 = *v7;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = v11;
    v13 = [v11 temporalEventTrigger];
    if (v13 || (v13 = [v12 spatialEventTrigger]) != 0)
    {
      v14 = v13;
LABEL_8:

LABEL_9:
      (*(v4 + 8))(v9, v3);
      return 0;
    }

    v17 = [v12 targetTaskList];
    if (!v17)
    {
      (*(v4 + 8))(v9, v3);

      return 0;
    }

    v14 = v17;
    v18 = sub_2313D635C([v17 title]);
    if (v19)
    {
      if (v18 == 0xD000000000000012 && v19 == 0x80000002313DE540)
      {

        goto LABEL_8;
      }

      v21 = sub_2313DB39C();

      (*(v4 + 8))(v9, v3);
      if (v21)
      {
        return 0;
      }
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }

    return 1;
  }

  sub_2313CC3B4(v2, &qword_27DD4BEE0, &qword_2313DC460);
  return 0;
}

void sub_2313D5538()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_2313DAB9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2313CC3B4(v2, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D60918])
    {
      (*(v4 + 96))(v7, v3);
      v10 = *v7;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v21 = v10;
        v12 = sub_2313D63CC(v11);
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = MEMORY[0x277D84F90];
        }

        v14 = sub_2313D5E6C(v13);
        v15 = 0;
        while (1)
        {
          if (v14 == v15)
          {
LABEL_15:
            (*(v4 + 8))(v9, v3);

            return;
          }

          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x23192C420](v15, v13);
          }

          else
          {
            if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v16 = *(v13 + 8 * v15 + 32);
          }

          v17 = v16;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          v18 = [v16 currentLocation];

          ++v15;
          if (v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
      }

      else
      {

        (*(v4 + 8))(v9, v3);
      }
    }

    else
    {
      v19 = *(v4 + 8);
      v19(v9, v3);
      v19(v7, v3);
    }
  }
}

uint64_t sub_2313D5894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_2313DAB9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2313CC3B4(v2, &qword_27DD4BEE0, &qword_2313DC460);
LABEL_13:
    v15 = 0;
    return v15 & 1;
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v7, v9, v3);
  if ((*(v4 + 88))(v7, v3) != *MEMORY[0x277D60918])
  {
    v16 = *(v4 + 8);
    v16(v9, v3);
    v16(v7, v3);
    goto LABEL_13;
  }

  (*(v4 + 96))(v7, v3);
  v10 = *v7;
  sub_2313DB07C();
  v11 = swift_dynamicCastClass();
  if (!v11 || (v12 = sub_2313D647C(v11), !v13))
  {

    (*(v4 + 8))(v9, v3);
    goto LABEL_13;
  }

  if (v12 == 0xD000000000000011 && v13 == 0x80000002313DE560)
  {

    (*(v4 + 8))(v9, v3);
    v15 = 1;
  }

  else
  {
    v15 = sub_2313DB39C();

    (*(v4 + 8))(v9, v3);
  }

  return v15 & 1;
}

uint64_t sub_2313D5B80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_2313DAB9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2313CC3B4(v2, &qword_27DD4BEE0, &qword_2313DC460);
LABEL_13:
    v15 = 0;
    return v15 & 1;
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v7, v9, v3);
  if ((*(v4 + 88))(v7, v3) != *MEMORY[0x277D60918])
  {
    v16 = *(v4 + 8);
    v16(v9, v3);
    v16(v7, v3);
    goto LABEL_13;
  }

  (*(v4 + 96))(v7, v3);
  v10 = *v7;
  sub_2313DB07C();
  v11 = swift_dynamicCastClass();
  if (!v11 || (v12 = sub_2313D647C(v11), !v13))
  {

    (*(v4 + 8))(v9, v3);
    goto LABEL_13;
  }

  if (v12 == 0xD000000000000013 && v13 == 0x80000002313DE580)
  {

    (*(v4 + 8))(v9, v3);
    v15 = 1;
  }

  else
  {
    v15 = sub_2313DB39C();

    (*(v4 + 8))(v9, v3);
  }

  return v15 & 1;
}

uint64_t sub_2313D5E6C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

unint64_t sub_2313D5E90(uint64_t a1, uint64_t a2)
{
  sub_2313DB3BC();
  sub_2313DB23C();
  v4 = sub_2313DB3CC();

  return sub_2313D5F08(a1, a2, v4);
}

unint64_t sub_2313D5F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2313DB39C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2313D5FBC()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_37_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_2(v1);

  return sub_2313C51B8(v3, v4, v5, v6);
}

unint64_t sub_2313D6048()
{
  result = qword_2814B1880;
  if (!qword_2814B1880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4BE70, &qword_2313DC430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B1880);
  }

  return result;
}

uint64_t sub_2313D60AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2313D6110()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_37_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_2(v1);

  return sub_2313C51B8(v3, v4, v5, v6);
}

uint64_t sub_2313D619C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2313D62F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2313D635C(void *a1)
{
  v2 = [a1 vocabularyIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2313DB21C();

  return v3;
}

uint64_t sub_2313D63CC(void *a1)
{
  v1 = [a1 attachments];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2313D643C(0, &qword_27DD4BEE8, 0x277CD4070);
  v3 = sub_2313DB2BC();

  return v3;
}

uint64_t sub_2313D643C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2313D647C(void *a1)
{
  v1 = [a1 domainUseCase];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2313DB21C();

  return v3;
}

uint64_t sub_2313D64E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit8Resolver_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_2313D6554(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2313D6594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return sub_2313DAD4C();
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{

  return sub_2313DB39C();
}

void *OUTLINED_FUNCTION_16_1@<X0>(unint64_t a1@<X8>)
{
  *(v3 - 144) = v2;

  return sub_2313C4540((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_22_1()
{
  v2 = *(v0 + 16) + 1;

  return sub_2313C4540(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t result)
{
  v1[12] = v2;
  v1[13] = v3;
  v1[9] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t result)
{
  v1[7] = result;
  v1[8] = v3;
  v1[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_40(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t result)
{
  *(result + 16) = v3;
  *(result + 24) = v4;
  *(v1 + 72) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1)
{

  return sub_2313DAD4C();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_2313D60AC(v0 - 192, v0 - 128);
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_2313C055C(a1, a2, v6, v7, a5, a6);
}

uint64_t *OUTLINED_FUNCTION_58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_2Tm(v2);
}

uint64_t OUTLINED_FUNCTION_62(uint64_t result)
{
  *(result + 16) = v4;
  *(result + 24) = v1;
  *(v2 + 72) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_65(uint64_t result)
{
  *(v2 - 104) = *(result + 16);
  *(v2 - 96) = result;
  *(v2 - 128) = v1 + 32;
  return result;
}

void *OUTLINED_FUNCTION_68()
{
  v2 = *(v0 + 16) + 1;

  return sub_2313C4540(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1)
{
  *(v2 - 112) = v1;

  return sub_2313DA9AC();
}

uint64_t OUTLINED_FUNCTION_81()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_82()
{

  return sub_2313DA9AC();
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1)
{

  return sub_2313DA9AC();
}

uint64_t static DeviceExpertOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  OUTLINED_FUNCTION_8();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_2313DAC2C();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2313D6DCC, 0, 0);
}

uint64_t sub_2313D6DCC()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0[7];
  v2 = sub_2313DABBC();
  swift_allocObject();
  v3 = sub_2313DABCC();
  v0[5] = v2;
  v0[6] = sub_2313DA8A4(&qword_2814B1878, 255, MEMORY[0x277D60A20], MEMORY[0x277D60A18]);
  v0[2] = v3;
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_2313D6F48;

  return v6(v0 + 2);
}

uint64_t sub_2313D6F48()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  *(v1 + 112) = v2;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_2313D704C, 0, 0);
}

uint64_t sub_2313D704C()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2313D8804;
  *(v6 + 24) = v5;
  *v2 = &unk_2313DC510;
  v2[1] = v6;
  (*(v1 + 104))(v2, *MEMORY[0x277D60A90], v3);
  *(swift_task_alloc() + 16) = v4;
  sub_2313DAF1C();

  (*(v1 + 8))(v2, v3);
  v7 = 0;
  while (2)
  {
    v8 = byte_284605788[v7++ + 32];
    v9 = 0xEC000000696A6F6DLL;
    v10 = 0x654D65676E616863;
    switch(v8)
    {
      case 1:
        v10 = 0xD000000000000012;
        v9 = 0x80000002313DE6B0;
        break;
      case 2:
        v10 = 0x746F486F54776F68;
        v11 = 1953460339;
        goto LABEL_7;
      case 3:
        v10 = 0x6F54726569736165;
        v11 = 1684104530;
LABEL_7:
        v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 4:
        v10 = 0xD00000000000001BLL;
        v9 = 0x80000002313DE5A0;
        break;
      default:
        break;
    }

    MEMORY[0x23192C330](v10, v9);

    switch(v8)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        v12 = v0[9];
        v13 = swift_task_alloc();
        *(v13 + 16) = v8;
        *(v13 + 24) = v12;
        sub_2313DAF0C();

        if (v7 != 5)
        {
          continue;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC20, &unk_2313DB7F8);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_2313DB7C0;
        sub_2313DAF2C();

        v15 = v0[1];

        return v15(v14);
      default:
        JUMPOUT(0);
    }
  }
}

uint64_t sub_2313D7450@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  sub_2313DB10C();
  OUTLINED_FUNCTION_3_1();
  v36 = v4;
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_0();
  v7 = v6 - v5;
  v38 = sub_2313DAA6C();
  OUTLINED_FUNCTION_3_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BF18, &qword_2313DC6F8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_2313DAA1C();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_0();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v18 = sub_2313DACCC();
  v19 = OUTLINED_FUNCTION_7_2();
  sub_2313D3CC4(v18, v21, v19, v20);

  if (v42)
  {
    if (swift_dynamicCast())
    {
      v37 = "suggestionIdPrefix";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BF20, qword_2313DC700);
      sub_2313DAA5C();
      *(swift_allocObject() + 16) = xmmword_2313DB7C0;
      sub_2313DAA0C();
      __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
      OUTLINED_FUNCTION_7_2();
      sub_2313DAA4C();
      (*(v9 + 104))(v13, *MEMORY[0x277D5BF60], v38);
      v22 = sub_2313DAA3C();
      v23 = v39;
      v39[3] = v22;
      __swift_allocate_boxed_opaque_existential_2Tm(v23);
      OUTLINED_FUNCTION_7_2();
      return sub_2313DAA2C();
    }
  }

  else
  {
    sub_2313DA844(v41, &qword_27DD4BDD8, &qword_2313DC390);
  }

  sub_2313DAFBC();
  sub_2313D60AC(a1, v41);
  v24 = sub_2313DB0FC();
  v25 = sub_2313DB30C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = 136315138;
    v35 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v41, v42);
    sub_2313DACCC();
    v28 = sub_2313DB1FC();
    v30 = v29;

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    v31 = sub_2313BE1B0(v28, v30, &v40);
    v13 = v35;

    *(v26 + 4) = v31;
    _os_log_impl(&dword_2313B9000, v24, v25, "Unable to find suggestionPhrase in dialog parameter %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();

    (*(v36 + 8))(v7, v37);
  }

  else
  {

    (*(v36 + 8))(v7, v37);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  (*(v9 + 104))(v13, *MEMORY[0x277D5BF60], v38);
  v32 = sub_2313DAA3C();
  v33 = v39;
  v39[3] = v32;
  __swift_allocate_boxed_opaque_existential_2Tm(v33);
  OUTLINED_FUNCTION_7_2();
  return sub_2313DAA2C();
}

uint64_t sub_2313D798C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_2313D79FC(uint64_t a1)
{
  v2 = sub_2313DAB4C();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = (v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE60, &qword_2313DC418);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = v37 - v5;
  v6 = *(a1 + 40);
  v42 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1Tm(a1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
  v7 = sub_2313DAC4C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2313DB7C0;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x277D60B78], v7);
  v63 = v42;
  v64 = v6;
  __swift_allocate_boxed_opaque_existential_2Tm(v62);
  sub_2313DAEBC();

  v11 = v64;
  v42 = v63;
  __swift_project_boxed_opaque_existential_1Tm(v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEF0, &qword_2313DC468);
  v12 = sub_2313DABAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2313DC3E0;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, *MEMORY[0x277D609A8], v12);
  v18(v17 + v14, *MEMORY[0x277D60998], v12);
  v18(v17 + 2 * v14, *MEMORY[0x277D60988], v12);
  v60 = v42;
  v61 = v11;
  __swift_allocate_boxed_opaque_existential_2Tm(v59);
  sub_2313DAE8C();

  v19 = v61;
  v42 = v60;
  __swift_project_boxed_opaque_existential_1Tm(v59, v60);
  v20 = type metadata accessor for DeviceExpertAssetProvider();
  v21 = swift_allocObject();
  *&v54 = v20;
  *(&v54 + 1) = sub_2313DA8A4(qword_2814B1790, v22, type metadata accessor for DeviceExpertAssetProvider, &unk_2313DC6A0);
  v53[0] = v21;
  v57 = v42;
  v58 = v19;
  __swift_allocate_boxed_opaque_existential_2Tm(v56);
  sub_2313DAE7C();
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  v23 = v58;
  v38 = v57;
  v41 = __swift_project_boxed_opaque_existential_1Tm(v56, v57);
  v24 = type metadata accessor for DoNotResolveResolver();
  v25 = swift_allocObject();
  *(v25 + 16) = 0xD000000000000010;
  *(v25 + 24) = 0x80000002313DE7C0;
  *&v51 = v24;
  *&v42 = sub_2313DA8A4(&qword_2814B1840, 255, type metadata accessor for DoNotResolveResolver, &unk_2313DBB40);
  *(&v51 + 1) = v42;
  v50[0] = v25;
  sub_2313DAE2C();
  v26 = swift_allocObject();
  *(v26 + 16) = 0xD000000000000010;
  *(v26 + 24) = 0x80000002313DE7C0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE70, &qword_2313DC430);
  *&v54 = v40;
  v39 = sub_2313D6048();
  *(&v54 + 1) = v39;
  __swift_allocate_boxed_opaque_existential_2Tm(v53);
  v37[1] = sub_2313DAB9C();
  sub_2313DAC5C();
  sub_2313DAB8C();
  sub_2313DAD5C();
  swift_allocObject();
  sub_2313DAD4C();
  v54 = v38;
  v55 = v23;
  __swift_allocate_boxed_opaque_existential_2Tm(v53);
  sub_2313DAEDC();

  sub_2313DA844(v50, &qword_27DD4BF08, &qword_2313DC6D8);
  v27 = v55;
  v38 = v54;
  v41 = __swift_project_boxed_opaque_existential_1Tm(v53, v54);
  v28 = swift_allocObject();
  *(v28 + 16) = 0x4965736143657375;
  *(v28 + 24) = 0xE900000000000064;
  v48 = v24;
  v49 = v42;
  v47[0] = v28;
  sub_2313DAE3C();
  v29 = swift_allocObject();
  *(v29 + 16) = 0x4965736143657375;
  *(v29 + 24) = 0xE900000000000064;
  *&v51 = v40;
  *(&v51 + 1) = v39;
  __swift_allocate_boxed_opaque_existential_2Tm(v50);
  sub_2313DAB8C();
  swift_allocObject();
  sub_2313DAD4C();
  v51 = v38;
  v52 = v27;
  __swift_allocate_boxed_opaque_existential_2Tm(v50);
  sub_2313DAEDC();

  sub_2313DA844(v47, &qword_27DD4BF08, &qword_2313DC6D8);
  v30 = v51;
  v31 = __swift_project_boxed_opaque_existential_1Tm(v50, v51);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v44;
  *v44 = 0x7845656369766564;
  v35[1] = 0xEC00000074726570;
  (*(v45 + 104))(v35, *MEMORY[0x277D60880], v46);
  v48 = sub_2313DAB6C();
  v49 = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_2Tm(v47);
  sub_2313DAB5C();
  sub_2313DAE5C();
  (*(v32 + 8))(v34, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  return __swift_destroy_boxed_opaque_existential_1Tm(v62);
}

uint64_t sub_2313D82A0()
{
  v0 = sub_2313DAF7C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_2313DAB9C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2313DA844(v6, &qword_27DD4BEE0, &qword_2313DC460);
    return 0;
  }

  (*(v8 + 32))(v13, v6, v7);
  (*(v8 + 16))(v11, v13, v7);
  if ((*(v8 + 88))(v11, v7) != *MEMORY[0x277D60928])
  {
    v25 = *(v8 + 8);
    v25(v13, v7);
    v25(v11, v7);
    return 0;
  }

  (*(v8 + 96))(v11, v7);
  (*(v1 + 32))(v3, v11, v0);
  v14 = sub_2313DAF6C();
  v15 = sub_2313D3D28(0x4965736143657375, 0xE900000000000064, v14);
  v17 = v16;

  if (v17)
  {
    v28 = v3;
    v29 = v1;
    v18 = 0;
    v32 = 0x80000002313DE5A0;
    v30 = v0;
    v31 = 0x80000002313DE6B0;
    while (1)
    {
      v19 = &byte_284605788[v18++];
      v20 = 0xEC000000696A6F6DLL;
      v21 = 0x654D65676E616863;
      switch(v19[32])
      {
        case 1u:
          v21 = 0xD000000000000012;
          v20 = v31;
          break;
        case 2u:
          v21 = 0x746F486F54776F68;
          v22 = 1953460339;
          goto LABEL_11;
        case 3u:
          v21 = 0x6F54726569736165;
          v22 = 1684104530;
LABEL_11:
          v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 4u:
          v21 = 0xD00000000000001BLL;
          v20 = v32;
          break;
        default:
          break;
      }

      if (v21 == v15 && v17 == v20)
      {
        break;
      }

      v24 = sub_2313DB39C();

      if (v24)
      {
        goto LABEL_23;
      }

      if (v18 == 5)
      {

        v17 = 1;
        goto LABEL_24;
      }
    }

LABEL_23:

    v17 = 0;
LABEL_24:
    (*(v29 + 8))(v28, v30);
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  (*(v8 + 8))(v13, v7);
  return v17;
}

unint64_t sub_2313D8740(char a1)
{
  result = 0x654D65676E616863;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x746F486F54776F68;
      break;
    case 3:
      result = 0x6F54726569736165;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2313D881C()
{
  OUTLINED_FUNCTION_37_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v1[1] = sub_2313D88C4;
  v3 = OUTLINED_FUNCTION_1_4();

  return v4(v3);
}

uint64_t sub_2313D88C4()
{
  OUTLINED_FUNCTION_8();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2313D89BC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  LODWORD(v76) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE60, &qword_2313DC418);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = v57 - v5;
  v6 = sub_2313DACFC();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC28, &qword_2313DB8E0);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = (v57 - v9);
  v10 = sub_2313DAB4C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = (v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_2313DAE4C();
  v12 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v14 = (v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 40);
  v75 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1Tm(a1, v75);
  *v102 = v75;
  *&v102[16] = v15;
  __swift_allocate_boxed_opaque_existential_2Tm(v101);
  sub_2313DAE6C();
  v16 = *v102;
  v75 = *&v102[8];
  v57[1] = __swift_project_boxed_opaque_existential_1Tm(v101, *v102);
  v57[0] = sub_2313D94A8(v2);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
  v17 = sub_2313DAC4C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = *(v18 + 80);
  v64 = ((v20 + 32) & ~v20) + 2 * v19;
  v65 = v20;
  v21 = (v20 + 32) & ~v20;
  v63 = v21;
  v60 = v19;
  v22 = swift_allocObject();
  v62 = xmmword_2313DB7D0;
  *(v22 + 16) = xmmword_2313DB7D0;
  v23 = v22 + v21;
  v61 = *MEMORY[0x277D60B78];
  v24 = *(v18 + 104);
  v24(v23);
  v59 = *MEMORY[0x277D60B98];
  v24(v23 + v19);
  *v14 = v22;
  v25 = v58;
  (*(v12 + 104))(v14, *MEMORY[0x277D61060], v58);
  *v100 = v16;
  *&v100[8] = v75;
  __swift_allocate_boxed_opaque_existential_2Tm(v99);
  sub_2313DAB2C();

  (*(v12 + 8))(v14, v25);
  v26 = *&v100[16];
  v75 = *v100;
  __swift_project_boxed_opaque_existential_1Tm(v99, *v100);
  sub_2313DAEFC();
  v97 = v75;
  v98 = v26;
  __swift_allocate_boxed_opaque_existential_2Tm(v96);
  sub_2313DAE9C();

  v27 = v98;
  v75 = v97;
  __swift_project_boxed_opaque_existential_1Tm(v96, v97);
  sub_2313D9684(v76);
  v94 = v75;
  v95 = v27;
  __swift_allocate_boxed_opaque_existential_2Tm(v93);
  sub_2313DAE8C();

  v28 = v95;
  v75 = v94;
  __swift_project_boxed_opaque_existential_1Tm(v93, v94);
  v29 = swift_allocObject();
  *(v29 + 16) = v62;
  v30 = v29 + v63;
  (v24)(v29 + v63, v61, v17);
  (v24)(v30 + v60, v59, v17);
  v91 = v75;
  v92 = v28;
  __swift_allocate_boxed_opaque_existential_2Tm(v90);
  sub_2313DAEBC();

  v31 = v92;
  v75 = v91;
  __swift_project_boxed_opaque_existential_1Tm(v90, v91);
  v33 = v67;
  v32 = v68;
  *v67 = 0x7845656369766564;
  v33[1] = 0xEC00000074726570;
  (*(v32 + 104))(v33, *MEMORY[0x277D60880], v69);
  *(swift_allocObject() + 16) = v76;
  *&v85 = sub_2313DAB6C();
  *(&v85 + 1) = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_2Tm(v84);
  sub_2313DAB5C();
  v88 = v75;
  v89 = v31;
  __swift_allocate_boxed_opaque_existential_2Tm(v87);
  sub_2313DAE5C();
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  v34 = v89;
  v76 = v88;
  __swift_project_boxed_opaque_existential_1Tm(v87, v88);
  v85 = v76;
  v86 = v34;
  __swift_allocate_boxed_opaque_existential_2Tm(v84);
  sub_2313DAEAC();
  v35 = v86;
  v76 = v85;
  __swift_project_boxed_opaque_existential_1Tm(v84, v85);
  v37 = v71;
  v36 = v72;
  v38 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x277D60E90], v73);
  v39 = sub_2313DACEC();
  v41 = v40;
  (*(v36 + 8))(v37, v38);
  v42 = v70;
  *v70 = v39;
  *(v42 + 8) = v41;
  v43 = *MEMORY[0x277D61238];
  v44 = sub_2313DAF5C();
  (*(*(v44 - 8) + 104))(v42, v43, v44);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v44);
  v45 = sub_2313DADDC();
  swift_allocObject();
  v46 = sub_2313DADCC();
  v79 = v45;
  v80 = MEMORY[0x277D61000];
  v78[0] = v46;
  v82 = v76;
  v83 = v35;
  __swift_allocate_boxed_opaque_existential_2Tm(v81);
  sub_2313DAE7C();
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  v47 = v82;
  *&v76 = v83;
  v48 = __swift_project_boxed_opaque_existential_1Tm(v81, v82);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = v57 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DeviceExpertUseCaseIdResolver();
  v53 = swift_allocObject();
  strcpy((v53 + 32), "deviceExpert_");
  *(v53 + 46) = -4864;
  *(v53 + 16) = 0x4965736143657375;
  *(v53 + 24) = 0xE900000000000064;
  v79 = v52;
  v80 = sub_2313DA8A4(&qword_2814B16E8, v54, type metadata accessor for DeviceExpertUseCaseIdResolver, &unk_2313DC678);
  v78[0] = v53;
  sub_2313DAE3C();
  v55 = swift_allocObject();
  *(v55 + 16) = 0x4965736143657375;
  *(v55 + 24) = 0xE900000000000064;
  v77[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE70, &qword_2313DC430);
  v77[4] = sub_2313D6048();
  __swift_allocate_boxed_opaque_existential_2Tm(v77);
  sub_2313DAB9C();
  sub_2313DAC5C();
  sub_2313DAB8C();
  sub_2313DAD5C();
  swift_allocObject();
  sub_2313DAD4C();
  sub_2313DAEDC();

  (*(v49 + 8))(v51, v47);
  sub_2313DA844(v78, &qword_27DD4BF08, &qword_2313DC6D8);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  return __swift_destroy_boxed_opaque_existential_1Tm(v101);
}

uint64_t sub_2313D94A8(char a1)
{
  switch(a1)
  {
    case 1:
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BF10, &qword_2313DC6E0);
      v2 = OUTLINED_FUNCTION_11_3(v6);
      *(v2 + 16) = xmmword_2313DC4F0;
      if (qword_2814B1868 != -1)
      {
        swift_once();
      }

      v3 = &qword_2814B1CA8;
      break;
    case 2:
    case 3:
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BF10, &qword_2313DC6E0);
      v2 = OUTLINED_FUNCTION_11_3(v1);
      *(v2 + 16) = xmmword_2313DC4F0;
      if (qword_2814B1858 != -1)
      {
        swift_once();
      }

      v3 = &qword_2814B1C98;
      break;
    case 4:
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BF10, &qword_2313DC6E0);
      v2 = OUTLINED_FUNCTION_11_3(v4);
      *(v2 + 16) = xmmword_2313DC4F0;
      if (qword_2814B1850 != -1)
      {
        swift_once();
      }

      v3 = &qword_2814B1C90;
      break;
    default:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BF10, &qword_2313DC6E0);
      v2 = OUTLINED_FUNCTION_11_3(v5);
      *(v2 + 16) = xmmword_2313DC4F0;
      if (qword_2814B1860 != -1)
      {
        swift_once();
      }

      v3 = &qword_2814B1CA0;
      break;
  }

  *(v2 + 32) = *v3;

  return v2;
}

uint64_t sub_2313D9684(char a1)
{
  if (((1 << a1) & 0x16) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEF0, &qword_2313DC468);
    v1 = sub_2313DABAC();
    OUTLINED_FUNCTION_3_1();
    v3 = v2;
    v5 = *(v4 + 72);
    v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2313DB7D0;
    v8 = v7 + v6;
    v9 = *(v3 + 104);
    v9(v8, *MEMORY[0x277D609A8], v1);
    v10 = *MEMORY[0x277D60998];
    v11 = v8 + v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEF0, &qword_2313DC468);
    v1 = sub_2313DABAC();
    OUTLINED_FUNCTION_3_1();
    v13 = v12;
    v15 = *(v14 + 72);
    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2313DC3E0;
    v17 = v7 + v16;
    v9 = *(v13 + 104);
    v9(v17, *MEMORY[0x277D609A8], v1);
    v9(v17 + v15, *MEMORY[0x277D60998], v1);
    v11 = v17 + 2 * v15;
    v10 = *MEMORY[0x277D60988];
  }

  v9(v11, v10, v1);
  return v7;
}

uint64_t sub_2313D987C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313CCD9C;

  return static DeviceExpertOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)();
}

uint64_t sub_2313D995C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_2313DACFC();
  OUTLINED_FUNCTION_3_1();
  v56 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_0();
  v55 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC28, &qword_2313DB8E0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v50 - v13);
  MEMORY[0x28223BE20](v12);
  v59 = &v50 - v15;
  v16 = sub_2313DAF5C();
  OUTLINED_FUNCTION_3_1();
  v60 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_0();
  v54 = v20 - v19;
  sub_2313DB10C();
  OUTLINED_FUNCTION_3_1();
  v57 = v22;
  v58 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_0();
  v25 = v24 - v23;
  v26 = *a1;
  sub_2313DABDC();
  sub_2313DAF9C();

  v27 = sub_2313DB0FC();
  v28 = sub_2313DB2FC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v53 = v11;
    v30 = v29;
    v51 = swift_slowAlloc();
    *&v62 = v51;
    *v30 = 136315138;
    v31 = v3;
    v32 = v16;
    v33 = v14;
    v34 = sub_2313DB1FC();
    v52 = v26;
    v36 = v35;

    v37 = v34;
    v14 = v33;
    v16 = v32;
    v3 = v31;
    v38 = sub_2313BE1B0(v37, v36, &v62);

    *(v30 + 4) = v38;
    _os_log_impl(&dword_2313B9000, v27, v28, "DeviceExpertAssetProvider: view context - %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {
  }

  (*(v57 + 8))(v25, v58);
  v39 = sub_2313DABDC();
  sub_2313D3CC4(v39, &v62, 0x6974736567677573, 0xEE006E6F63496E6FLL);

  if (v63)
  {
    v40 = v59;
    v41 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v40, v41 ^ 1u, 1, v16);
    if (__swift_getEnumTagSinglePayload(v40, 1, v16) != 1)
    {
      v42 = v60;
      v43 = v54;
      (*(v60 + 32))(v54, v40, v16);
      (*(v42 + 16))(v14, v43, v16);
      OUTLINED_FUNCTION_6_3();
      return (*(v42 + 8))(v43, v16);
    }
  }

  else
  {
    sub_2313DA844(&v62, &qword_27DD4BDD8, &qword_2313DC390);
    v40 = v59;
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v16);
  }

  sub_2313DA844(v40, &qword_27DD4BC28, &qword_2313DB8E0);
  v46 = v55;
  v45 = v56;
  (*(v56 + 104))(v55, *MEMORY[0x277D60E90], v3);
  v47 = sub_2313DACEC();
  v49 = v48;
  (*(v45 + 8))(v46, v3);
  *v14 = v47;
  v14[1] = v49;
  (*(v60 + 104))(v14, *MEMORY[0x277D61238], v16);
  return OUTLINED_FUNCTION_6_3();
}

uint64_t sub_2313D9ED8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2313D9EF8, 0, 0);
}

uint64_t sub_2313D9EF8()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = sub_2313DAD2C();
  v3 = v2;
  if (sub_2313DB28C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD90, &qword_2313DC060);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2313DB7C0;
    v5 = sub_2313DB24C();
    v6 = sub_2313DA038(v5, v1, v3);
    v7 = MEMORY[0x23192C2F0](v6);
    v9 = v8;

    *(v4 + 32) = v7;
    *(v4 + 40) = v9;
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v10 = sub_2313DA10C(v4);

  v11 = *(v0 + 8);

  return v11(v10);
}

unint64_t sub_2313DA038(unint64_t result, uint64_t a2, unint64_t a3)
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
    result = sub_2313DB25C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_2313DB29C();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2313DA10C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2313C4680(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2313C4680((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_2313DA79C(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2313DA20C()
{

  return v0;
}

uint64_t sub_2313DA234()
{
  sub_2313DA20C();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2313DA28C()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_2313DA2C0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2313CBE58;

  return sub_2313D9ED8(v4, a2);
}

uint64_t sub_2313DA3E8(uint64_t a1, char a2)
{
  v3 = sub_2313DAF7C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_2313DAB9C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2313DA844(v9, &qword_27DD4BEE0, &qword_2313DC460);
LABEL_12:
    v23 = 0;
    return v23 & 1;
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v14, v16, v10);
  if ((*(v11 + 88))(v14, v10) != *MEMORY[0x277D60928])
  {
    v24 = *(v11 + 8);
    v24(v16, v10);
    v24(v14, v10);
    goto LABEL_12;
  }

  (*(v11 + 96))(v14, v10);
  (*(v4 + 32))(v6, v14, v3);
  v17 = sub_2313DAF6C();
  v18 = sub_2313D3D28(0x4965736143657375, 0xE900000000000064, v17);
  v20 = v19;

  if (!v20)
  {
    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v16, v10);
    goto LABEL_12;
  }

  if (v18 == sub_2313D8740(a2) && v20 == v21)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_2313DB39C();
  }

  (*(v4 + 8))(v6, v3);
  (*(v11 + 8))(v16, v10);
  return v23 & 1;
}

_OWORD *sub_2313DA79C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2313DA7B4()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_37_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v1[1] = sub_2313DA8F0;
  v3 = OUTLINED_FUNCTION_1_4();

  return sub_2313C51B8(v3, v4, v5, v6);
}

uint64_t sub_2313DA844(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2313DA8A4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_6_3()
{
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);

  return sub_2313DAF8C();
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1)
{

  return swift_allocObject();
}