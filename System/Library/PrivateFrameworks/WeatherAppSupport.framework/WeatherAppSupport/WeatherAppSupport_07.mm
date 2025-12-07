uint64_t sub_220D811D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  v8 = MEMORY[0x28223BE20](v48);
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v49 = &v42 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v53 = a1;
  v52 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_220CFB694(a2, v16 / v13, a4);
    v27 = a4 + v19 * v13;
    v28 = -v13;
    v29 = v27;
    v44 = a1;
    v45 = v28;
LABEL_36:
    v42 = v29;
    v46 = a2 + v28;
    v47 = a2;
    while (1)
    {
      if (v27 <= a4)
      {
        v53 = v47;
        v51 = v29;
        goto LABEL_58;
      }

      if (v47 <= a1)
      {
        break;
      }

      v43 = v29;
      v30 = a4;
      v31 = a3 + v28;
      v32 = v27 + v28;
      v33 = v49;
      v34 = v27;
      sub_220D7FC40();
      v35 = v50;
      sub_220D7FC40();
      v36 = sub_220DBE440();
      sub_220D7FC98(v35, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      sub_220D7FC98(v33, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      if (v36)
      {
        v38 = a3 < v47 || v31 >= v47;
        a4 = v30;
        if (v38)
        {
          v39 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v43;
          a1 = v44;
          a3 += v28;
          a2 = v39;
          v28 = v45;
          v27 = v34;
        }

        else
        {
          a1 = v44;
          v29 = v43;
          v15 = a3 == v47;
          v28 = v45;
          v40 = v46;
          a3 = v31;
          a2 = v46;
          v27 = v34;
          if (!v15)
          {
            v41 = v43;
            swift_arrayInitWithTakeBackToFront();
            v27 = v34;
            a2 = v40;
            v29 = v41;
          }
        }

        goto LABEL_36;
      }

      v37 = a3 < v34 || v31 >= v34;
      a4 = v30;
      if (v37)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v28;
        v27 = v32;
        v29 = v32;
        v28 = v45;
        a1 = v44;
      }

      else
      {
        v29 = v32;
        v15 = v34 == a3;
        a3 += v28;
        v27 = v32;
        v28 = v45;
        a1 = v44;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v31;
          v27 = v32;
          v29 = v32;
        }
      }
    }

    v53 = v47;
    v51 = v42;
  }

  else
  {
    sub_220CFB694(a1, v14 / v13, a4);
    v47 = a4 + v18 * v13;
    v51 = v47;
    while (a4 < v47 && a2 < a3)
    {
      v21 = v49;
      sub_220D7FC40();
      v22 = a2;
      v23 = v50;
      sub_220D7FC40();
      v24 = sub_220DBE440();
      sub_220D7FC98(v23, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      sub_220D7FC98(v21, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      if (v24)
      {
        a2 = v22 + v13;
        if (a1 < v22 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v22;
        }

        else
        {
          a2 = v22;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v52 = a4 + v13;
        a4 += v13;
      }

      a1 += v13;
      v53 = a1;
    }
  }

LABEL_58:
  sub_220D81780(&v53, &v52, &v51, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
  return 1;
}

void sub_220D81668(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_45_2();
  v10 = !v10 || v3 >= v9;
  if (v10)
  {
    OUTLINED_FUNCTION_5_13();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {
    OUTLINED_FUNCTION_5_13();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_220D81780(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_6();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_45_2();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    OUTLINED_FUNCTION_5_13();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_5_13();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_220D81848(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_220D81874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95BC0, &unk_220DC5B20);
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

uint64_t sub_220D8198C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t OUTLINED_FUNCTION_33_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return sub_220D7F650(a1, a2, a3, 0, a4);
}

uint64_t OUTLINED_FUNCTION_40_3(uint64_t a1)
{

  return sub_220CDA548(a1, v2, v1);
}

uint64_t SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.init(date:label:value:dataElement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_220DBE560();
  OUTLINED_FUNCTION_6();
  (*(v14 + 32))(a7, a1);
  v15 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  v16 = (a7 + v15[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a7 + v15[6]);
  *v17 = a4;
  v17[1] = a5;
  v18 = a7 + v15[7];

  return sub_220D81C80(a6, v18);
}

uint64_t sub_220D81C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SunriseSunsetDetailChartViewModel.init(chartData:sunLocation:location:twilightCivil:twilightNautical:twilightAstronomical:startDate:sunEventAccessibilityModels:chartBackground:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  v31 = a10[1];
  v32 = *a10;
  v17 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
  *&a9[v17[14]] = 0x4056800000000000;
  *&a9[v17[15]] = 0xC056800000000000;
  *a9 = a1;
  sub_220D81ED8(a2, &a9[v17[5]]);
  v18 = v17[6];
  v19 = sub_220DBF1D0();
  OUTLINED_FUNCTION_5();
  v21 = v20;
  (*(v20 + 16))(&a9[v18], a3, v19);
  *&a9[v17[7]] = a4;
  *&a9[v17[8]] = a5;
  *&a9[v17[9]] = a6;
  v22 = v17[10];
  v23 = sub_220DBE560();
  OUTLINED_FUNCTION_5();
  v25 = v24;
  (*(v24 + 16))(&a9[v22], a7, v23);
  *&a9[v17[11]] = a8;
  v26 = &a9[v17[12]];
  *v26 = v32;
  *(v26 + 1) = v31;

  v28 = sub_220D823B8(v27, a3, a7);

  (*(v25 + 8))(a7, v23);
  (*(v21 + 8))(a3, v19);
  result = sub_220D828F8(a2);
  *&a9[v17[13]] = v28;
  return result;
}

uint64_t sub_220D81ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.date.getter()
{
  OUTLINED_FUNCTION_3();
  sub_220DBE560();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0) + 20));

  return v1;
}

uint64_t SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.value.getter()
{
  v1 = *(v0 + *(type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0) + 24));

  return v1;
}

uint64_t SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.dataElement.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = v1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(v2) + 28);

  return sub_220D81ED8(v3, v0);
}

uint64_t static SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_220DBE460() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  OUTLINED_FUNCTION_5_24(v2[5]);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_24(v2[6]);
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_8_15(v2[7]);

  return static DetailChartDataElement.== infix(_:_:)(v9, v10);
}

uint64_t SunriseSunsetDetailChartViewModel.sunLocation.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = v1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(v2) + 20);

  return sub_220D81ED8(v3, v0);
}

uint64_t SunriseSunsetDetailChartViewModel.location.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for SunriseSunsetDetailChartViewModel(v2) + 24);
  sub_220DBF1D0();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

double SunriseSunsetDetailChartViewModel.twilightCivil.getter()
{
  type metadata accessor for SunriseSunsetDetailChartViewModel(0);

  return result;
}

double SunriseSunsetDetailChartViewModel.twilightNautical.getter()
{
  type metadata accessor for SunriseSunsetDetailChartViewModel(0);

  return result;
}

double SunriseSunsetDetailChartViewModel.twilightAstronomical.getter()
{
  type metadata accessor for SunriseSunsetDetailChartViewModel(0);

  return result;
}

uint64_t SunriseSunsetDetailChartViewModel.startDate.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for SunriseSunsetDetailChartViewModel(v2) + 40);
  sub_220DBE560();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

double SunriseSunsetDetailChartViewModel.sunEventAccessibilityModels.getter()
{
  type metadata accessor for SunriseSunsetDetailChartViewModel(0);

  return result;
}

double SunriseSunsetDetailChartViewModel.chartBackground.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  *v0 = *(v1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(v2) + 48));

  return result;
}

double SunriseSunsetDetailChartViewModel.xDomain.getter()
{
  type metadata accessor for SunriseSunsetDetailChartViewModel(0);

  return result;
}

uint64_t sub_220D823B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v55 = a2;
  v56 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v54 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v53 = v7 - v6;
  sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v58 = v9;
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95F00, &unk_220DC5A50);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v51 = &v48 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v52 = &v48 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v48 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v48 - v33;
  v35 = a1;
  sub_220D100C8(a1, v18);
  v36 = type metadata accessor for DetailChartDataElement(0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v36) == 1)
  {
    v16 = v18;
    v37 = v19;
  }

  else
  {
    v49 = v12;
    v50 = *(v21 + 16);
    v50(v32, v18, v19);
    sub_220D828F8(v18);
    v48 = *(v21 + 32);
    v48(v34, v32, v19);
    sub_220D108A4(v35, v16);
    v37 = v19;
    if (__swift_getEnumTagSinglePayload(v16, 1, v36) != 1)
    {
      v41 = v51;
      v50(v51, v16, v19);
      sub_220D828F8(v16);
      v42 = v52;
      v43 = v48;
      v48(v52, v41, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95BE0, &qword_220DC4FD8);
      v44 = *(v21 + 72);
      v45 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_220DC17C0;
      v46 = v40 + v45;
      v50(v46, v34, v37);
      v43(v46 + v44, v42, v37);
      (*(v21 + 8))(v34, v37);
      return v40;
    }

    (*(v21 + 8))(v34, v19);
    v12 = v49;
  }

  sub_220CDA548(v16, &qword_27CF95F00, &unk_220DC5A50);
  v38 = v53;
  sub_220DBF1C0();
  sub_220DBE600();
  (*(v54 + 8))(v38, v56);
  sub_220DBE5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95BE0, &qword_220DC4FD8);
  v39 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_220DC17C0;
  (*(v21 + 16))(v40 + v39, v25, v37);
  sub_220DBE390();
  (*(v21 + 8))(v25, v37);
  (*(v58 + 8))(v12, v59);
  return v40;
}

uint64_t sub_220D828F8(uint64_t a1)
{
  v2 = type metadata accessor for DetailChartDataElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SunriseSunsetDetailChartViewModel.shouldTriggerHaptic(currentDate:previousDate:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-v5];
  v7 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_220D56F0C(a2, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_220CDA548(v6, &qword_27CF951E0, &unk_220DC1D80);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v13, v6, v7);
    v23 = MEMORY[0x277D84F90];
    type metadata accessor for SunriseSunsetDetailChartViewModel(0);

    sub_220D7FA3C(v15);

    sub_220D7FA3C(v16);

    v18 = sub_220D7FA3C(v17);
    v22 = 0;
    v19 = v23;
    MEMORY[0x28223BE20](v18);
    *&v21[-32] = v13;
    *&v21[-24] = a1;
    *&v21[-16] = &v22;
    sub_220D82D28(sub_220D82D08, &v21[-48], v19);

    v14 = v22;
    (*(v9 + 8))(v13, v7);
  }

  return v14;
}

uint64_t sub_220D82B80(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = sub_220DBE560();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  if (sub_220DBE440())
  {
    sub_220CD9B24();
    if ((sub_220DC0580() & 1) == 0)
    {
      *a4 = 1;
    }
  }

  sub_220CD9B24();
  if (sub_220DC0580())
  {
    return (*(v7 + 8))(v9, v6);
  }

  v11 = sub_220DBE440();
  result = (*(v7 + 8))(v9, v6);
  if (v11)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t (*sub_220D82D28(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3))(unint64_t)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(type metadata accessor for DetailChartDataElement(0) - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

uint64_t WeatherValueCalculationContext.init(hourWeather:dayWeather:chartCondition:units:currentWeather:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  sub_220DBE960();
  OUTLINED_FUNCTION_6();
  v24 = a4[1];
  v25 = *a4;
  v23 = a4[2];
  (*(v14 + 32))(a7, a1);
  v15 = type metadata accessor for WeatherValueCalculationContext(0);
  sub_220D8329C(a2, a7 + v15[5]);
  *(a7 + v15[6]) = v13;
  v16 = (a7 + v15[7]);
  *v16 = v25;
  v16[1] = v24;
  v16[2] = v23;
  v17 = v15[8];
  sub_220DBEAD0();
  OUTLINED_FUNCTION_6();
  (*(v18 + 32))(a7 + v17, a5);
  v19 = v15[9];
  sub_220DBE740();
  OUTLINED_FUNCTION_6();
  v21 = *(v20 + 32);

  return v21(a7 + v19, a6);
}

uint64_t type metadata accessor for WeatherValueCalculationContext(uint64_t a1)
{
  result = qword_27CF95F30;
  if (!qword_27CF95F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D8329C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WeatherValueCalculationContext.hourWeather.getter()
{
  OUTLINED_FUNCTION_3();
  sub_220DBE960();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t WeatherValueCalculationContext.dayWeather.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = v1 + *(type metadata accessor for WeatherValueCalculationContext(v2) + 20);

  return sub_220D833A8(v3, v0);
}

uint64_t sub_220D833A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WeatherValueCalculationContext.chartCondition.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  result = type metadata accessor for WeatherValueCalculationContext(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

id WeatherValueCalculationContext.units.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = v1 + *(type metadata accessor for WeatherValueCalculationContext(v2) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v15 = *(v3 + 40);
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v15;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;

  return v15;
}

uint64_t WeatherValueCalculationContext.currentWeather.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for WeatherValueCalculationContext(v2) + 32);
  sub_220DBEAD0();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t WeatherValueCalculationContext.timeZone.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for WeatherValueCalculationContext(v2) + 36);
  sub_220DBE740();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

void sub_220D835D8(uint64_t a1)
{
  sub_220DBE960();
  if (v1 <= 0x3F)
  {
    sub_220D836A4(319);
    if (v2 <= 0x3F)
    {
      sub_220DBEAD0();
      if (v3 <= 0x3F)
      {
        sub_220DBE740();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220D836A4(uint64_t a1)
{
  if (!qword_27CF95F40)
  {
    sub_220DBE830();
    v1 = sub_220DC0AE0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF95F40);
    }
  }
}

uint64_t sub_220D8381C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_220DBF410();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_220DBF400();
}

uint64_t sub_220D838B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_220DBF410();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
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

uint64_t SunEventViewModelFactory.makeSunriseSunsetTableViewRowModel(date:title:timeZone:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a4@<X8>)
{
  v7 = sub_220DBE4A0();
  v9 = v8;
  v10 = type metadata accessor for OverviewTableRowViewModel(0);
  v11 = a4 + *(v10 + 24);
  *v11 = v7;
  *(v11 + 1) = v9;
  v11[16] = 2;
  v12 = type metadata accessor for OverviewTableValueString(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a1;
  a4[3] = a2;
  *(a4 + *(v10 + 28)) = 0;
  return swift_bridgeObjectRetain_n();
}

_BYTE *storeEnumTagSinglePayload for SunEventViewModelFactory(_BYTE *result, int a2, int a3)
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

uint64_t SunriseSunsetChartBackground.init(gradient:opacity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t static SunriseSunsetChartBackground.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return MEMORY[0x223D97D10](*a1, *a2) & (v2 == v3);
}

uint64_t sub_220D83BEC(uint64_t *a1, int a2)
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

uint64_t sub_220D83C2C(uint64_t result, int a2, int a3)
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

double sub_220D83CA4()
{
  sub_220DBFEF0();
  v0 = sub_220DBFF10();

  sub_220DBFED0();
  v1 = sub_220DBFF10();

  result = 6.0;
  xmmword_27CF95FA8 = xmmword_220DC5E80;
  qword_27CF95FB8 = 0xC039000000000000;
  qword_27CF95FC0 = v0;
  qword_27CF95FC8 = v1;
  return result;
}

uint64_t ChartOcclusionHashView.Style.init(occlusionHashWidth:occlusionHashIntersegmentSpacing:occlusionHashAngleDegrees:occlusionHashFillColor:occlusionHashOverlayColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  return result;
}

uint64_t static ChartOcclusionHashView.Style.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF94F60 != -1)
  {
    swift_once();
  }

  v2 = qword_27CF95FB8;
  v3 = qword_27CF95FC0;
  v4 = qword_27CF95FC8;
  *a1 = xmmword_27CF95FA8;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

__n128 ChartOcclusionHashView.init(width:height:style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *(a1 + 16);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = *a1;
  *(a2 + 32) = v4;
  result = *(a1 + 24);
  *(a2 + 40) = result;
  return result;
}

uint64_t ChartOcclusionHashView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v14 = *v1;
  v15 = v1[2];
  v16 = *(v1 + 6);
  v3 = hypot(*&v14, *(&v14 + 1));
  v4 = v3 - *&v14;
  v5 = v3 - *(&v14 + 1);
  sub_220DBFCB0();
  v6 = v4 * -0.5;
  v7 = v5 * -0.5;

  sub_220DC01A0();
  v9 = v8;
  v11 = v10;
  v12 = sub_220DBFBC0();
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = *(&v15 + 1);
  *(a1 + 48) = 256;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = *&v15 * 0.0174532925;
  *(a1 + 80) = v9;
  *(a1 + 88) = v11;
  *(a1 + 96) = v16;
  *(a1 + 104) = v12;
}

uint64_t sub_220D83F1C(uint64_t result, double *a2, double a3)
{
  v4 = a2[2];
  v5 = v4 + a2[3];
  v6 = ceil(a3 / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = v6;
  v8 = MEMORY[0x277D84F90];
  if (v6 >= 1001)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_220DC17A0;
    sub_220DC0B80();

    v10 = sub_220DC0780();
    MEMORY[0x223D982B0](v10);

    MEMORY[0x223D982B0](0x746867696568202CLL, 0xE90000000000003DLL);
    v11 = sub_220DC0780();
    MEMORY[0x223D982B0](v11);

    MEMORY[0x223D982B0](0x6874676E656C202CLL, 0xE90000000000003DLL);
    v12 = sub_220DC0780();
    MEMORY[0x223D982B0](v12);

    MEMORY[0x223D982B0](0x6F4374636572202CLL, 0xEC0000003D746E75);
    v13 = sub_220DC0C70();
    MEMORY[0x223D982B0](v13);

    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_220CEFDB0();
    *(v9 + 32) = 0x3D6874646977;
    *(v9 + 40) = 0xE600000000000000;
    MEMORY[0x223D96E50]("Occlusion hash pattern is trying to add too many Rects to Path; %@", 66, 2, v9);

    v7 = 1000;
    goto LABEL_8;
  }

  if (v7 < 0)
  {
LABEL_27:
    __break(1u);
    return v29;
  }

  if (v7)
  {
LABEL_8:
    sub_220CFB834(0, v7, 0);
    v14 = 0;
    v15 = v8;
    v16 = *(v8 + 16);
    do
    {
      v17 = *(v8 + 24);
      v18 = v16 + 1;
      if (v16 >= v17 >> 1)
      {
        sub_220CFB834((v17 > 1), v16 + 1, 1);
      }

      *(v8 + 16) = v18;
      *(v8 + 8 * v16++ + 32) = v14++;
    }

    while (v7 != v14);
    goto LABEL_15;
  }

  v18 = *(MEMORY[0x277D84F90] + 16);
  if (v18)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:
    sub_220CFB814(0, v18, 0);
    v19 = v8;
    v20 = *(v8 + 16);
    v21 = 32 * v20 + 56;
    v22 = 32;
    do
    {
      v23 = *(v15 + v22);
      v24 = *(v19 + 24);
      v25 = v20 + 1;
      if (v20 >= v24 >> 1)
      {
        sub_220CFB814((v24 > 1), v20 + 1, 1);
      }

      *(v19 + 16) = v25;
      v26 = (v19 + v21);
      *(v26 - 3) = v5 * v23;
      *(v26 - 2) = 0.0;
      *(v26 - 1) = v4;
      *v26 = a3;
      v21 += 32;
      v22 += 8;
      v20 = v25;
      --v18;
    }

    while (v18);
    goto LABEL_19;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_19:

  v27 = *(v19 + 16);
  if (v27)
  {
    v28 = v19 + 56;
    do
    {
      sub_220DBFC90();
      v28 += 32;
      --v27;
    }

    while (v27);
  }
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

uint64_t sub_220D84334(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_220D84374(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_220D843E0()
{
  result = qword_27CF95FD0;
  if (!qword_27CF95FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95FD8, &qword_220DC5F68);
    sub_220D84498();
    sub_220CE161C(&qword_27CF96010, &qword_27CF96018, qword_220DC5F88, MEMORY[0x277CE0490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95FD0);
  }

  return result;
}

unint64_t sub_220D84498()
{
  result = qword_27CF95FE0;
  if (!qword_27CF95FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95FE8, &qword_220DC5F70);
    sub_220D84524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95FE0);
  }

  return result;
}

unint64_t sub_220D84524()
{
  result = qword_27CF95FF0;
  if (!qword_27CF95FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95FF8, &qword_220DC5F78);
    sub_220CE161C(&qword_27CF96000, &qword_27CF96008, &qword_220DC5F80, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95FF0);
  }

  return result;
}

uint64_t sub_220D8463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v76 = a2;
  v77 = a6;
  v69 = a3;
  v71 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_4();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - v13;
  sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v74 = v16;
  v75 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_0();
  v72 = v22;
  v73 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = sub_220DC0260();
  OUTLINED_FUNCTION_0();
  v78 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4();
  v31 = v29 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v70 = &v66 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v66 - v35;
  if (sub_220DBE610())
  {
    v67 = v11;
    v37 = v77;
    sub_220DBE600();
    sub_220DBE480();
    v69 = v25;
    sub_220DBE320();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
    v38 = sub_220DBEF90();
    MEMORY[0x28223BE20](v38);
    v68 = v6;
    v76 = v19;
    v39 = sub_220CFACFC();
    v40 = v71;
    v41 = sub_220D86028(a4, v71, v39);
    v43 = v42;
    v44 = v67;
    sub_220D86868(a4, v40, v39, v37, v14);

    sub_220CF6B14(v14, v44, &qword_27CF951F8, &qword_220DC1DA0);
    v45 = v26;
    if (__swift_getEnumTagSinglePayload(v44, 1, v26) == 1)
    {
      sub_220CE1ABC(v44, &qword_27CF951F8, &qword_220DC1DA0);
      sub_220DC0240();

      v46 = v68;
      v47 = v78;
    }

    else
    {
      v71 = v41;
      v77 = v14;
      v47 = v78;
      v49 = v70;
      (*(v78 + 32))(v70, v44, v45);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_6_0();
      v50 = sub_220DBE240();
      v66 = v51;
      v67 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      OUTLINED_FUNCTION_7_20();
      v52 = sub_220DC0250();
      OUTLINED_FUNCTION_0();
      v54 = v53;
      v56 = *(v55 + 72);
      v57 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_220DC17C0;
      v59 = (v58 + v57);
      *v59 = v71;
      *(v59 + 1) = v43;
      v60 = *(v54 + 104);
      v60(v59, *MEMORY[0x277D7B3D8], v52);
      (*(v47 + 16))(&v59[v56], v49, v45);
      v60(&v59[v56], *MEMORY[0x277D7B3C0], v52);
      sub_220DC0220();
      (*(v47 + 8))(v49, v45);
      v14 = v77;
      v46 = v68;
    }

    sub_220CE1ABC(v14, &qword_27CF951F8, &qword_220DC1DA0);
    (*(v72 + 8))(v69, v73);
    v61 = v75;
    v62 = *(v74 + 8);
    v62(v76, v75);
    v62(v46, v61);
  }

  else
  {
    v48 = v77;
    if (sub_220DBE640())
    {
      sub_220D851DC(v69, v31);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
      v63 = sub_220DBEF90();
      sub_220D85780(v48, v63, v31);
    }

    v36 = v31;
    v45 = v26;
    v47 = v78;
  }

  v64 = sub_220DC0230();
  (*(v47 + 8))(v36, v45);
  return v64;
}

uint64_t sub_220D84C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v64 = a5;
  v65 = sub_220DC0260();
  OUTLINED_FUNCTION_0();
  v63 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v61 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_4();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v53 - v18;
  v20 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v62 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_0();
  v58 = v28;
  v59 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  sub_220DBE600();
  sub_220DBE480();
  sub_220DBE320();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  sub_220DBEF90();
  v66 = v5;
  v67 = v25;
  v60 = v25;
  v32 = sub_220CFACFC();
  v33 = sub_220D86028(a1, a3, v32);
  v57 = v34;
  sub_220D86868(a1, a3, v32, a2, v19);
  v35 = v65;

  sub_220CF6B14(v19, v16, &qword_27CF951F8, &qword_220DC1DA0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v35) == 1)
  {
    sub_220CE1ABC(v16, &qword_27CF951F8, &qword_220DC1DA0);
    sub_220DC0240();
  }

  else
  {
    v54 = v31;
    v55 = v19;
    v56 = v20;
    (*(v63 + 32))(v61, v16, v35);
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }

    OUTLINED_FUNCTION_6_0();
    v36 = sub_220DBE240();
    v53[0] = v37;
    v53[1] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v38 = sub_220DC0250();
    OUTLINED_FUNCTION_0();
    v40 = v39;
    v42 = *(v41 + 72);
    v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_220DC17C0;
    v45 = (v44 + v43);
    v46 = v57;
    *v45 = v33;
    v45[1] = v46;
    v47 = *(v40 + 104);
    v47(v45, *MEMORY[0x277D7B3D8], v38);
    v48 = v63;
    v49 = v61;
    v50 = v65;
    (*(v63 + 16))(v45 + v42, v61, v65);
    v47((v45 + v42), *MEMORY[0x277D7B3C0], v38);
    sub_220DC0220();
    (*(v48 + 8))(v49, v50);
    v19 = v55;
    v20 = v56;
    v31 = v54;
  }

  sub_220CE1ABC(v19, &qword_27CF951F8, &qword_220DC1DA0);
  (*(v58 + 8))(v31, v59);
  v51 = *(v62 + 8);
  v51(v60, v20);
  return (v51)(v5, v20);
}

uint64_t sub_220D851DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v36[1] = a2;
  v3 = sub_220DBF410();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v36 - v11;
  v13 = sub_220DBF310();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  sub_220CF6B14(a1, v12, &qword_27CF94F90, &unk_220DC4410);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    (*(v15 + 32))(v19, v12, v13);
    sub_220DBF300();
    v25 = v24;
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v24 > -9.22337204e18)
    {
      if (v24 < 9.22337204e18)
      {
        sub_220DBF2F0();
        if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v26 > -9.22337204e18)
          {
            if (v26 < 9.22337204e18)
            {
              v5 = v25;
              v27 = v26;
              if (*&v25 != *&v26)
              {
                if (qword_280FA6600 != -1)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                OUTLINED_FUNCTION_5_26();
                OUTLINED_FUNCTION_6_0();
                sub_220DBE240();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                OUTLINED_FUNCTION_7_20();
                v32 = sub_220DC0250();
                OUTLINED_FUNCTION_0();
                v34 = v33;
                v35 = OUTLINED_FUNCTION_6_21();
                *(v35 + 16) = xmmword_220DC17A0;
                *(&unk_220DC4410 + v35) = v27;
                (*(v34 + 104))(&unk_220DC4410 + v35, *MEMORY[0x277D7B3E0], v32);
                goto LABEL_17;
              }

              if (qword_280FA6600 == -1)
              {
LABEL_13:
                OUTLINED_FUNCTION_5_26();
                OUTLINED_FUNCTION_6_0();
                sub_220DBE240();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                OUTLINED_FUNCTION_7_20();
                v28 = sub_220DC0250();
                OUTLINED_FUNCTION_0();
                v30 = v29;
                v31 = OUTLINED_FUNCTION_6_21();
                *(v31 + 16) = xmmword_220DC17A0;
                *(&unk_220DC4410 + v31) = v5;
                (*(v30 + 104))(&unk_220DC4410 + v31, *MEMORY[0x277D7B3E0], v28);
LABEL_17:
                sub_220DC0220();
                return (*(v15 + 8))(v19, v13);
              }

LABEL_24:
              OUTLINED_FUNCTION_10(&qword_280FA6600);
              goto LABEL_13;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_20;
  }

  sub_220CE1ABC(v12, &qword_27CF94F90, &unk_220DC4410);
  sub_220DBF3C0();
  v20 = sub_220DBF3F0();
  v21 = sub_220DC0980();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_220CD1000, v20, v21, "Failed to create UVI description due to missing extrema values", v22, 2u);
    MEMORY[0x223D98FB0](v22, -1, -1);
  }

  (*(v5 + 8))(v9, v3);
  return sub_220DC0240();
}

uint64_t sub_220D85708@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v5 = sub_220DBEF90();
  sub_220D85780(a2, v5, x8_0);
}

uint64_t sub_220D85780@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v76 = a2;
  v68 = a3;
  v62 = sub_220DBF410();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_220DBEF70();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220DBE960();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - v10;
  v12 = sub_220DBE6E0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220DBE560();
  v66 = *(v16 - 8);
  v67 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  sub_220DBE480();
  v63 = a1;
  sub_220DBE600();
  sub_220DBE320();
  v22 = v6;
  (*(v13 + 8))(v15, v12);
  v64 = v21;
  v65 = v19;
  v77 = v21;
  v78 = v19;

  v23 = sub_220CFACFC();
  v24 = 0;
  v76 = *(v23 + 16);
  v25 = (v73 + 8);
  v26 = (v7 + 8);
  v72 = v7 + 16;
  v73 = v7;
  v69 = (v7 + 32);
  v71 = MEMORY[0x277D84F90];
  while (v76 != v24)
  {
    if (v24 >= *(v23 + 16))
    {
      __break(1u);
LABEL_23:
      swift_once();
LABEL_14:
      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v43 = sub_220DC0250();
      v44 = *(v43 - 8);
      v45 = *(v44 + 72);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_220DC17C0;
      v48 = (v47 + v46);
      *v48 = v24;
      v48[1] = v26;
      v49 = *(v44 + 104);
      (v49)(v48, *MEMORY[0x277D7B3D0], v43);
      v50 = (v48 + v45);
      *v50 = v76;
      v50[1] = v22;
      v49();
      sub_220DC0220();
      goto LABEL_21;
    }

    v27 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v28 = *(v73 + 72);
    (*(v73 + 16))(v11, v23 + v27 + v28 * v24, v22);
    v29 = v74;
    v30 = v22;
    sub_220DBE910();
    v31 = sub_220DBEF50();
    (*v25)(v29, v75);
    if (v31 >= 3)
    {
      v32 = *v69;
      (*v69)(v70, v11, v30);
      v33 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v33;
      v79 = v33;
      v22 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_220CE5648();
        v22 = v30;
        v35 = v79;
      }

      v36 = *(v35 + 16);
      v37 = v36 + 1;
      if (v36 >= *(v35 + 24) >> 1)
      {
        v71 = v22;
        v59 = v36;
        sub_220CE5648();
        v36 = v59;
        v22 = v71;
        v35 = v79;
      }

      ++v24;
      *(v35 + 16) = v37;
      v71 = v35;
      v32((v35 + v27 + v36 * v28), v70, v22);
    }

    else
    {
      (*v26)(v11, v30);
      ++v24;
      v22 = v30;
    }
  }

  v38 = *(v71 + 16);

  if (v38)
  {
    v24 = sub_220D87680(2, v23, v63);
    v26 = v39;
    v41 = v40;
    v22 = v42;

    if (v26)
    {
      v76 = v41;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    v51 = v60;
    sub_220DBF3C0();
    v52 = sub_220DBF3F0();
    v53 = sub_220DC0980();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_220CD1000, v52, v53, "Failed to find start time end time above 2", v54, 2u);
      MEMORY[0x223D98FB0](v54, -1, -1);
    }

    (*(v61 + 8))(v51, v62);
    sub_220DC0210();
  }

  else
  {

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    sub_220DC0240();
  }

LABEL_21:
  v55 = v67;
  v56 = v64;
  v57 = *(v66 + 8);
  v57(v65, v67);
  return (v57)(v56, v55);
}

uint64_t sub_220D86028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v54 = a1;
  v67 = sub_220DBEF70();
  v4 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220DBE960();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v52 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v52 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - v15;
  v17 = 0;
  v18 = *(a3 + 16);
  v64 = a3;
  v65 = v18;
  v66 = v8 + 16;
  v19 = (v4 + 8);
  v20 = (v8 + 8);
  v60 = (v8 + 32);
  v63 = MEMORY[0x277D84F90];
  while (v65 != v17)
  {
    v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v22 = *(v8 + 72);
    (*(v8 + 16))(v16, v64 + v21 + v22 * v17, v7);
    sub_220DBE910();
    v23 = sub_220DBEF50();
    (*v19)(v6, v67);
    if (v23 >= 3)
    {
      v58 = *v60;
      v58(v59, v16, v7);
      v24 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_220CE5648();
        v24 = v68;
      }

      v26 = *(v24 + 16);
      v27 = v26 + 1;
      if (v26 >= *(v24 + 24) >> 1)
      {
        v63 = v26 + 1;
        v53 = v26;
        sub_220CE5648();
        v27 = v63;
        v26 = v53;
        v24 = v68;
      }

      ++v17;
      *(v24 + 16) = v27;
      v63 = v24;
      v58((v24 + v21 + v26 * v22), v59, v7);
    }

    else
    {
      (*v20)(v16, v7);
      ++v17;
    }
  }

  v28 = *(v63 + 16);

  if (!v28)
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_40;
  }

  v29 = sub_220DBEF50();
  if (v29 <= 2)
  {
    v63 = v7;
    MEMORY[0x28223BE20](v29);

    v30 = sub_220CFACFC();
    v31 = 0;
    v65 = *(v30 + 16);
    v59 = MEMORY[0x277D84F90];
    v32 = v55;
    v61 = v6;
    v62 = v8;
    v64 = v30;
    while (v65 != v31)
    {
      if (v31 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v33 = v20;
      v34 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v35 = *(v8 + 72);
      v36 = v63;
      (*(v8 + 16))(v32, v30 + v34 + v35 * v31, v63);
      v37 = v32;
      sub_220DBE910();
      v38 = sub_220DBEF50();
      (*v19)(v6, v67);
      if (v38 >= 3)
      {
        v58 = v34;
        v40 = *v60;
        (*v60)(v56, v37, v36);
        v41 = v59;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v43 = v41;
        v68 = v41;
        if (v42)
        {
          v32 = v37;
        }

        else
        {
          sub_220CE5648();
          v32 = v55;
          v43 = v68;
        }

        v20 = v33;
        v44 = v31;
        v45 = v35;
        v46 = *(v43 + 2);
        v47 = (v46 + 1);
        v48 = v63;
        v30 = v64;
        v49 = v58;
        if (v46 >= *(v43 + 3) >> 1)
        {
          v59 = (v46 + 1);
          sub_220CE5648();
          v47 = v59;
          v44 = v31;
          v32 = v55;
          v43 = v68;
        }

        v31 = v44 + 1;
        *(v43 + 2) = v47;
        v59 = v43;
        v40(v49 + v43 + v46 * v45, v56, v48);
      }

      else
      {
        v39 = v36;
        v20 = v33;
        (*v33)(v37, v39);
        ++v31;
        v32 = v37;
        v30 = v64;
      }

      v6 = v61;
      v8 = v62;
    }

    v50 = *(v59 + 2);

    if (v50)
    {
      if (qword_280FA6600 != -1)
      {
        goto LABEL_40;
      }
    }

    else if (qword_280FA6600 != -1)
    {
      goto LABEL_40;
    }

    return sub_220DBE240();
  }

  if (sub_220DBEF50() >= 8)
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_40;
  }

  if (sub_220DBEF50() < 3)
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_40;
  }

  if (qword_280FA6600 != -1)
  {
LABEL_40:
    swift_once();
  }

  return sub_220DBE240();
}

uint64_t sub_220D86868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v117 = a4;
  v120 = a2;
  v116 = a1;
  v126 = a5;
  v6 = 0;
  v136 = sub_220DBEF70();
  v7 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v9 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220DBE960();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v122 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v123 = &v114 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v119 = &v114 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v118 = &v114 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v127 = &v114 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v124 = &v114 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v130 = &v114 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v114 - v26;
  v28 = *(a3 + 16);
  v133 = a3;
  v134 = v28;
  v135 = v11 + 16;
  v29 = (v7 + 8);
  v30 = (v11 + 8);
  v128 = (v11 + 32);
  v132 = MEMORY[0x277D84F90];
  v121 = 0;
  while (v134 != v6)
  {
    v31 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v32 = *(v11 + 72);
    (*(v11 + 16))(v27, &v133[v31 + v32 * v6], v10);
    sub_220DBE910();
    v33 = sub_220DBEF50();
    (*v29)(v9, v136);
    if (v33 >= 3)
    {
      v125 = *v128;
      (v125)(v130, v27, v10);
      v34 = v132;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_220CE5648();
        v34 = v137;
      }

      v36 = *(v34 + 2);
      v37 = (v36 + 1);
      if (v36 >= *(v34 + 3) >> 1)
      {
        v132 = (v36 + 1);
        v115 = v36;
        sub_220CE5648();
        v37 = v132;
        v36 = v115;
        v34 = v137;
      }

      ++v6;
      *(v34 + 2) = v37;
      v132 = v34;
      (v125)(&v34[v31 + v36 * v32], v130, v10);
    }

    else
    {
      (*v30)(v27, v10);
      ++v6;
    }
  }

  v38 = *(v132 + 2);

  if (!v38)
  {
    goto LABEL_57;
  }

  v39 = 0;
  v132 = MEMORY[0x277D84F90];
  v40 = v124;
  while (v134 != v39)
  {
    v41 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v42 = *(v11 + 72);
    (*(v11 + 16))(v40, &v133[v41 + v42 * v39], v10);
    v43 = v40;
    sub_220DBE910();
    v44 = sub_220DBEF50();
    (*v29)(v9, v136);
    if (v44 <= 2)
    {
      v130 = *v128;
      (v130)(v127, v43, v10);
      v45 = v132;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v47 = v45;
      v137 = v45;
      if (v46)
      {
        v40 = v43;
      }

      else
      {
        sub_220CE5648();
        v40 = v124;
        v47 = v137;
      }

      v48 = *(v47 + 2);
      v49 = (v48 + 1);
      if (v48 >= *(v47 + 3) >> 1)
      {
        v132 = (v48 + 1);
        sub_220CE5648();
        v49 = v132;
        v40 = v124;
        v47 = v137;
      }

      ++v39;
      *(v47 + 2) = v49;
      v132 = v47;
      (v130)(&v47[v41 + v48 * v42], v127, v10);
    }

    else
    {
      (*v30)(v43, v10);
      ++v39;
      v40 = v43;
    }
  }

  v50 = *(v132 + 2);

  if (!v50)
  {
    if (qword_280FA6600 != -1)
    {
LABEL_60:
      swift_once();
    }

    sub_220DBE240();
    v76 = v126;
    sub_220DC0240();

    goto LABEL_56;
  }

  v51 = sub_220DBEF50();
  if (v51 <= 2)
  {
    v131 = v10;
    MEMORY[0x28223BE20](v51);

    v52 = v121;
    v53 = sub_220CFACFC();
    v121 = v52;
    v54 = 0;
    v132 = *(v53 + 16);
    v127 = MEMORY[0x277D84F90];
    v55 = v118;
    v129 = (v11 + 8);
    v130 = v53;
    while (v132 != v54)
    {
      if (v54 >= *(v53 + 16))
      {
        __break(1u);
        goto LABEL_60;
      }

      v56 = v29;
      v57 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v58 = *(v11 + 72);
      v59 = v131;
      (*(v11 + 16))(v55, v53 + v57 + v58 * v54, v131);
      v60 = v55;
      sub_220DBE910();
      v61 = sub_220DBEF50();
      v62 = v56;
      (*v56)(v9, v136);
      if (v61 >= 3)
      {
        v124 = v58;
        v125 = v54;
        v64 = *v128;
        (*v128)(v119, v60, v59);
        v65 = v127;
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v67 = v65;
        v137 = v65;
        if (v66)
        {
          v55 = v60;
        }

        else
        {
          sub_220CE5648();
          v55 = v118;
          v67 = v137;
        }

        v30 = v129;
        v53 = v130;
        v68 = v57;
        v70 = v124;
        v69 = v125;
        v71 = *(v67 + 2);
        v72 = (v71 + 1);
        v29 = v62;
        if (v71 >= *(v67 + 3) >> 1)
        {
          v75 = (v71 + 1);
          v127 = *(v67 + 2);
          sub_220CE5648();
          v72 = v75;
          v71 = v127;
          v69 = v125;
          v55 = v118;
          v67 = v137;
        }

        *(v67 + 2) = v72;
        v127 = v67;
        v73 = &v67[v68 + v71 * v70];
        v74 = v69 + 1;
        (v64)(v73, v119);
        v54 = v74;
      }

      else
      {
        v63 = v59;
        v30 = v129;
        (*v129)(v60, v63);
        ++v54;
        v55 = v60;
        v53 = v130;
        v29 = v56;
      }
    }

    v77 = *(v127 + 2);

    if (v77)
    {
      v10 = v131;
      goto LABEL_38;
    }

    MEMORY[0x28223BE20](v78);

    v99 = sub_220CFACFC();
    v95 = sub_220D87680(2, v99, v117);
    v96 = v100;
    v102 = v101;
    v97 = v103;

    if (v96)
    {
      v136 = v102;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_61;
      }

LABEL_55:
      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v104 = sub_220DC0250();
      v105 = *(v104 - 8);
      v106 = *(v105 + 72);
      v107 = (*(v105 + 80) + 32) & ~*(v105 + 80);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_220DC17C0;
      v109 = (v108 + v107);
      *v109 = v95;
      v109[1] = v96;
      v110 = *(v105 + 104);
      (v110)(v109, *MEMORY[0x277D7B3D0], v104);
      v111 = (v109 + v106);
      *v111 = v136;
      v111[1] = v97;
      v110();
      v76 = v126;
      sub_220DC0220();
LABEL_56:
      v98 = 0;
      goto LABEL_58;
    }

LABEL_57:
    v98 = 1;
    v76 = v126;
    goto LABEL_58;
  }

LABEL_38:
  v79 = 0;
  v132 = MEMORY[0x277D84F90];
LABEL_39:
  v80 = v123;
  while (v134 != v79)
  {
    v81 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v82 = *(v11 + 72);
    (*(v11 + 16))(v80, &v133[v81 + v82 * v79], v10);
    sub_220DBE910();
    v83 = sub_220DBEF50();
    (*v29)(v9, v136);
    if (v83 >= 3)
    {
      v84 = *v128;
      (*v128)(v122, v80, v10);
      v85 = v132;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v87 = v85;
      v137 = v85;
      if ((v86 & 1) == 0)
      {
        sub_220CE5648();
        v87 = v137;
      }

      v88 = *(v87 + 2);
      v89 = (v88 + 1);
      if (v88 >= *(v87 + 3) >> 1)
      {
        v130 = v84;
        v132 = (v88 + 1);
        sub_220CE5648();
        v89 = v132;
        v84 = v130;
        v87 = v137;
      }

      ++v79;
      *(v87 + 2) = v89;
      v132 = v87;
      (v84)(&v87[v81 + v88 * v82], v122, v10);
      goto LABEL_39;
    }

    (*v30)(v80, v10);
    ++v79;
  }

  v90 = *(v132 + 2);

  if (!v90)
  {
    goto LABEL_57;
  }

  v91 = sub_220D87680(2, v133, v117);
  v76 = v126;
  if (v92)
  {
    v95 = v91;
    v96 = v92;
    v97 = v94;
    v136 = v93;
    if (qword_280FA6600 != -1)
    {
LABEL_61:
      swift_once();
    }

    goto LABEL_55;
  }

  v98 = 1;
LABEL_58:
  v112 = sub_220DC0260();
  return __swift_storeEnumTagSinglePayload(v76, v98, 1, v112);
}

uint64_t sub_220D87598(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  sub_220DBE8F0();
  LOBYTE(a3) = a3(v11, a2);
  (*(v7 + 8))(v11, v5);
  return a3 & 1;
}

uint64_t sub_220D87680(uint64_t a1, char *a2, uint64_t a3)
{
  v113 = a3;
  v136 = a1;
  v115 = sub_220DBF410();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v121 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_220DBE6E0();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_220DBE560();
  v111 = *(v112 - 8);
  v6 = MEMORY[0x28223BE20](v112);
  v105 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v106 = &v104 - v9;
  MEMORY[0x28223BE20](v8);
  v107 = &v104 - v10;
  v134 = sub_220DBEF70();
  v11 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E0, &unk_220DC3C00);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v120 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v116 = &v104 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v104 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v119 = &v104 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v128 = &v104 - v24;
  MEMORY[0x28223BE20](v23);
  v123 = &v104 - v25;
  v124 = sub_220DBE960();
  v26 = *(v124 - 8);
  v27 = MEMORY[0x28223BE20](v124);
  v118 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v122 = &v104 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v104 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v125 = &v104 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v104 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v104 - v39;
  v139 = a2;

  sub_220D886C8(&v139);
  v41 = 0;
  v42 = v139;
  v137 = *(v139 + 2);
  v130 = (v11 + 8);
  v131 = v26 + 16;
  v129 = (v26 + 8);
  v127 = (v26 + 32);
  v126 = MEMORY[0x277D84F90];
  v43 = v124;
  v44 = v26;
  v45 = v40;
  v135 = v33;
  v132 = v139;
  while (1)
  {
    if (v137 == v41)
    {

      v60 = v123;
      v61 = v126;
      sub_220D101AC(v126, v123);
      sub_220D10980(v61, v128);

      v62 = v119;
      sub_220CF6B14(v60, v119, &qword_27CF959E0, &unk_220DC3C00);
      if (__swift_getEnumTagSinglePayload(v62, 1, v43) == 1)
      {
        sub_220CE1ABC(v62, &qword_27CF959E0, &unk_220DC3C00);
        v64 = v121;
        v63 = v122;
        v65 = v118;
        v66 = v120;
        v67 = v127;
      }

      else
      {
        v67 = v127;
        v68 = *v127;
        (*v127)(v38, v62, v43);
        sub_220CF6B14(v128, v20, &qword_27CF959E0, &unk_220DC3C00);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v43);
        v64 = v121;
        v63 = v122;
        v66 = v120;
        if (EnumTagSinglePayload == 1)
        {
          (*v129)(v38, v43);
          sub_220CE1ABC(v20, &qword_27CF959E0, &unk_220DC3C00);
        }

        else
        {
          v68(v33, v20, v43);
          sub_220D89E90(&qword_280FA7760, MEMORY[0x277CE31A0], MEMORY[0x277CE31B0]);
          v70 = v38;
          v71 = v43;
          if ((sub_220DC05B0() & 1) == 0)
          {
            v104 = v70;
            v95 = v106;
            sub_220DBE8F0();
            v96 = v107;
            sub_220DBE400();
            v97 = *(v111 + 8);
            v98 = v112;
            v97(v95, v112);
            v84 = sub_220DBE4F0();
            v97(v96, v98);
            v99 = v105;
            sub_220DBE8F0();
            sub_220DBE400();
            v100 = v112;
            v97(v99, v112);
            v101 = v108;
            sub_220DBE6A0();
            sub_220DBE3A0();
            (*(v109 + 8))(v101, v110);
            v97(v95, v100);
            sub_220DBE4F0();
            v97(v96, v100);
            v91 = *v129;
            (*v129)(v135, v71);
            v93 = v104;
            v94 = v71;
            goto LABEL_30;
          }

          v72 = *v129;
          (*v129)(v33, v43);
          v72(v70, v43);
        }

        v65 = v118;
      }

      v73 = v116;
      sub_220CF6B14(v60, v116, &qword_27CF959E0, &unk_220DC3C00);
      if (__swift_getEnumTagSinglePayload(v73, 1, v43) == 1)
      {
        v74 = v73;
LABEL_23:
        sub_220CE1ABC(v74, &qword_27CF959E0, &unk_220DC3C00);
LABEL_24:
        sub_220DBF3C0();
        v77 = sub_220DBF3F0();
        v78 = sub_220DC0980();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v139 = v80;
          *v79 = 136446210;
          v138 = v136;
          v81 = sub_220DC0C70();
          v83 = sub_220D3F210(v81, v82, &v139);

          *(v79 + 4) = v83;
          _os_log_impl(&dword_220CD1000, v77, v78, "Failed to find start time and end time for UVI above:%{public}s", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v80);
          MEMORY[0x223D98FB0](v80, -1, -1);
          MEMORY[0x223D98FB0](v79, -1, -1);
        }

        (*(v114 + 8))(v64, v115);
        sub_220CE1ABC(v128, &qword_27CF959E0, &unk_220DC3C00);
        sub_220CE1ABC(v60, &qword_27CF959E0, &unk_220DC3C00);
        return 0;
      }

      v75 = v73;
      v76 = *v67;
      (*v67)(v63, v75, v43);
      sub_220CF6B14(v128, v66, &qword_27CF959E0, &unk_220DC3C00);
      if (__swift_getEnumTagSinglePayload(v66, 1, v43) == 1)
      {
        (*v129)(v63, v43);
        v74 = v66;
        goto LABEL_23;
      }

      v76(v65, v66, v43);
      if ((sub_220DBE8C0() & 1) == 0)
      {
        v103 = *v129;
        (*v129)(v65, v43);
        v103(v63, v43);
        goto LABEL_24;
      }

      v85 = v106;
      sub_220DBE8F0();
      v86 = v107;
      sub_220DBE400();
      v87 = *(v111 + 8);
      v88 = v112;
      v87(v85, v112);
      v84 = sub_220DBE4F0();
      v87(v86, v88);
      v89 = v105;
      sub_220DBE8F0();
      sub_220DBE400();
      v87(v89, v88);
      v90 = v108;
      sub_220DBE6A0();
      sub_220DBE3A0();
      (*(v109 + 8))(v90, v110);
      v87(v85, v88);
      sub_220DBE4F0();
      v87(v86, v88);
      v91 = *v129;
      v92 = v124;
      (*v129)(v118, v124);
      v93 = v122;
      v94 = v92;
LABEL_30:
      v91(v93, v94);
      sub_220CE1ABC(v128, &qword_27CF959E0, &unk_220DC3C00);
      sub_220CE1ABC(v123, &qword_27CF959E0, &unk_220DC3C00);
      return v84;
    }

    if (v41 >= *(v42 + 2))
    {
      break;
    }

    v46 = v20;
    v47 = v38;
    v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v49 = *(v44 + 72);
    v50 = v44;
    (*(v44 + 16))(v45, &v42[v48 + v49 * v41], v43);
    v51 = v45;
    v52 = v133;
    v53 = v43;
    sub_220DBE910();
    v54 = sub_220DBEF50();
    (*v130)(v52, v134);
    if (v54 > v136)
    {
      v117 = *v127;
      v117(v125, v51, v53);
      v55 = v126;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v55;
      v139 = v55;
      v45 = v51;
      if (isUniquelyReferenced_nonNull_native)
      {
        v43 = v53;
      }

      else
      {
        sub_220CE5648();
        v43 = v124;
        v57 = v139;
      }

      v38 = v47;
      v58 = *(v57 + 2);
      v59 = v58 + 1;
      v20 = v46;
      if (v58 >= *(v57 + 3) >> 1)
      {
        sub_220CE5648();
        v59 = v58 + 1;
        v43 = v124;
        v57 = v139;
      }

      ++v41;
      *(v57 + 2) = v59;
      v126 = v57;
      v117(&v57[v48 + v58 * v49], v125, v43);
      v33 = v135;
      v44 = v50;
      v42 = v132;
    }

    else
    {
      (*v129)(v51, v53);
      ++v41;
      v43 = v53;
      v33 = v135;
      v38 = v47;
      v20 = v46;
      v44 = v50;
      v45 = v51;
      v42 = v132;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_220D88568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_20();
  v3 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  sub_220DBE8F0();
  sub_220D89E90(&qword_280FA7798, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v10 = sub_220DC0580();
  v11 = *(v5 + 8);
  v11(v9, v3);
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    sub_220DBE8F0();
    v12 = sub_220DBE440();
    v11(v9, v3);
  }

  return v12 & 1;
}

uint64_t sub_220D886C8(void *a1)
{
  v2 = *(sub_220DBE960() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A78();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_220D88770(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_220D88770(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_220DC0C60();
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
        sub_220DBE960();
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_220DBE960() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_220D88C38(v8, v9, a1, v4);
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
    return sub_220D888A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_220D888A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_220DBE560();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v41 - v11;
  v12 = sub_220DBE960();
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        v54(v56, v26, v12);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        sub_220DBE8F0();
        v32 = v59;
        sub_220DBE8F0();
        v62 = sub_220DBE440();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        result = v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return result;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        result = v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_220D88C38(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v161 = sub_220DBE560();
  v8 = *(v161 - 8);
  v9 = MEMORY[0x28223BE20](v161);
  v160 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v159 = &v134 - v11;
  v12 = sub_220DBE960();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v151 = &v134 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v158 = &v134 - v19;
  MEMORY[0x28223BE20](v18);
  v162 = &v134 - v20;
  v146 = a3;
  v21 = a3[1];
  v141 = v13;
  if (v21 < 1)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_101:
    v163 = *v137;
    if (!v163)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v126 = v23 + 16;
      v127 = *(v23 + 2);
      while (v127 >= 2)
      {
        if (!*v146)
        {
          goto LABEL_139;
        }

        v128 = v23;
        v129 = &v23[16 * v127];
        v130 = *v129;
        v131 = &v126[2 * v127];
        v132 = *(v131 + 1);
        sub_220D89824(&(*v146)[*(v141 + 9) * *v129], &(*v146)[*(v141 + 9) * *v131], &(*v146)[*(v141 + 9) * v132], v163);
        if (v5)
        {
          break;
        }

        if (v132 < v130)
        {
          goto LABEL_127;
        }

        if (v127 - 2 >= *v126)
        {
          goto LABEL_128;
        }

        *v129 = v130;
        *(v129 + 1) = v132;
        v133 = *v126 - v127;
        if (*v126 < v127)
        {
          goto LABEL_129;
        }

        v127 = *v126 - 1;
        sub_220D81848(v131 + 16, v133, v131);
        *v126 = v127;
        v23 = v128;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v23 = sub_220D81650();
    goto LABEL_103;
  }

  v135 = a4;
  v22 = 0;
  v155 = (v8 + 8);
  v156 = v13 + 16;
  v153 = (v13 + 32);
  v154 = (v13 + 8);
  v23 = MEMORY[0x277D84F90];
  v157 = v12;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    if (v22 + 1 < v21)
    {
      v136 = v23;
      v26 = v22;
      v138 = v22;
      v147 = v5;
      v148 = v22 + 1;
      v27 = *v146;
      v163 = v27;
      v28 = v13;
      v29 = *(v13 + 9);
      v149 = v21;
      v150 = v29;
      v30 = v27 + v29 * v25;
      v31 = v12;
      v32 = *(v28 + 2);
      v32(v162, v30, v12);
      v33 = v158;
      v144 = v32;
      v32(v158, v27 + v29 * v26, v31);
      v5 = v159;
      v34 = v162;
      sub_220DBE8F0();
      v35 = v160;
      sub_220DBE8F0();
      LODWORD(v145) = sub_220DBE440();
      v36 = *v155;
      v37 = v161;
      (*v155)(v35, v161);
      v143 = v36;
      (v36)(v5, v37);
      v38 = *(v141 + 1);
      (v38)(v33, v31);
      v142 = v38;
      (v38)(v34, v31);
      v39 = v149;
      v40 = v138 + 2;
      v41 = v163 + v150 * (v138 + 2);
      while (1)
      {
        v42 = v40;
        if (++v148 >= v39)
        {
          break;
        }

        v5 = v162;
        v43 = v157;
        v44 = v144;
        v163 = v40;
        (v144)(v162, v41, v157);
        v45 = v158;
        v44(v158, v30, v43);
        v46 = v159;
        sub_220DBE8F0();
        v47 = v160;
        sub_220DBE8F0();
        LOBYTE(v152) = sub_220DBE440() & 1;
        LODWORD(v152) = v152;
        v48 = v47;
        v49 = v161;
        v50 = v143;
        (v143)(v48, v161);
        v50(v46, v49);
        v51 = v142;
        (v142)(v45, v43);
        (v51)(v5, v43);
        v42 = v163;
        v39 = v149;
        v41 += v150;
        v30 += v150;
        v40 = v163 + 1;
        if ((v145 & 1) != v152)
        {
          goto LABEL_9;
        }
      }

      v148 = v39;
LABEL_9:
      if (v145)
      {
        v25 = v148;
        v24 = v138;
        v12 = v157;
        if (v148 < v138)
        {
          goto LABEL_133;
        }

        if (v138 >= v148)
        {
          v5 = v147;
          v13 = v141;
          v23 = v136;
          goto LABEL_32;
        }

        if (v39 >= v42)
        {
          v52 = v42;
        }

        else
        {
          v52 = v39;
        }

        v53 = v150 * (v52 - 1);
        v54 = v150 * v52;
        v55 = v138;
        v56 = v138 * v150;
        v5 = v147;
        v13 = v141;
        do
        {
          if (v55 != --v25)
          {
            v57 = v5;
            v58 = *v146;
            if (!*v146)
            {
              goto LABEL_140;
            }

            v163 = *v153;
            (v163)(v140, &v58[v56], v12);
            v59 = v56 < v53 || &v58[v56] >= &v58[v54];
            if (v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v163)(&v58[v53], v140, v12);
            v5 = v57;
            v13 = v141;
          }

          ++v55;
          v53 -= v150;
          v54 -= v150;
          v56 += v150;
        }

        while (v55 < v25);
        v23 = v136;
      }

      else
      {
        v5 = v147;
        v13 = v141;
        v23 = v136;
        v12 = v157;
      }

      v25 = v148;
      v24 = v138;
    }

LABEL_32:
    v60 = v146[1];
    if (v25 < v60)
    {
      if (__OFSUB__(v25, v24))
      {
        goto LABEL_132;
      }

      if (v25 - v24 < v135)
      {
        break;
      }
    }

LABEL_48:
    if (v25 < v24)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220D562D4();
      v23 = v124;
    }

    v80 = *(v23 + 2);
    v81 = v80 + 1;
    if (v80 >= *(v23 + 3) >> 1)
    {
      sub_220D562D4();
      v23 = v125;
    }

    *(v23 + 2) = v81;
    v82 = v23 + 32;
    v83 = &v23[16 * v80 + 32];
    *v83 = v24;
    *(v83 + 1) = v25;
    v163 = *v137;
    if (!v163)
    {
      goto LABEL_141;
    }

    v148 = v25;
    if (v80)
    {
      v152 = v23 + 32;
      while (1)
      {
        v84 = v81 - 1;
        v85 = &v82[16 * v81 - 16];
        v86 = &v23[16 * v81];
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v23 + 4);
          v88 = *(v23 + 5);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_69:
          if (v90)
          {
            goto LABEL_118;
          }

          v102 = *v86;
          v101 = *(v86 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_121;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_126;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v81 < 2)
        {
          goto LABEL_120;
        }

        v109 = *v86;
        v108 = *(v86 + 1);
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_84:
        if (v105)
        {
          goto LABEL_123;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_125;
        }

        if (v112 < v104)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v84 - 1 >= v81)
        {
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
          goto LABEL_135;
        }

        if (!*v146)
        {
          goto LABEL_138;
        }

        v116 = &v82[16 * v84 - 16];
        v117 = *v116;
        v118 = v84;
        v119 = &v82[16 * v84];
        v120 = *(v119 + 1);
        sub_220D89824(&(*v146)[*(v13 + 9) * *v116], &(*v146)[*(v13 + 9) * *v119], &(*v146)[*(v13 + 9) * v120], v163);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v120 < v117)
        {
          goto LABEL_113;
        }

        v147 = 0;
        v5 = v13;
        v121 = v23;
        v122 = *(v23 + 2);
        if (v118 > v122)
        {
          goto LABEL_114;
        }

        *v116 = v117;
        *(v116 + 1) = v120;
        if (v118 >= v122)
        {
          goto LABEL_115;
        }

        v81 = v122 - 1;
        sub_220D81848(v119 + 16, v122 - 1 - v118, v119);
        *(v121 + 2) = v122 - 1;
        v123 = v122 > 2;
        v23 = v121;
        v13 = v5;
        v5 = v147;
        v82 = v152;
        if (!v123)
        {
          goto LABEL_98;
        }
      }

      v91 = &v82[16 * v81];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_116;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_117;
      }

      v98 = *(v86 + 1);
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_119;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_122;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_130;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v21 = v146[1];
    v22 = v148;
    if (v148 >= v21)
    {
      goto LABEL_101;
    }
  }

  v61 = (v24 + v135);
  if (__OFADD__(v24, v135))
  {
    goto LABEL_134;
  }

  if (v61 >= v60)
  {
    v61 = v146[1];
  }

  if (v61 < v24)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v25 == v61)
  {
    goto LABEL_48;
  }

  v136 = v23;
  v147 = v5;
  v62 = *v146;
  v63 = *(v13 + 9);
  v152 = *(v13 + 2);
  v64 = &v62[v63 * (v25 - 1)];
  v149 = -v63;
  v138 = v24;
  v65 = (v24 - v25);
  v150 = v62;
  v139 = v63;
  v66 = &v62[v25 * v63];
  v142 = v61;
LABEL_41:
  v148 = v25;
  v143 = v66;
  v144 = v65;
  v145 = v64;
  v67 = v64;
  while (1)
  {
    v68 = v162;
    v69 = v152;
    (v152)(v162, v66, v12);
    v70 = v158;
    (v69)(v158, v67, v12);
    v71 = v159;
    sub_220DBE8F0();
    v72 = v160;
    sub_220DBE8F0();
    LODWORD(v163) = sub_220DBE440();
    v73 = *v155;
    v74 = v72;
    v75 = v161;
    (*v155)(v74, v161);
    v76 = v71;
    v12 = v157;
    v73(v76, v75);
    v77 = *v154;
    (*v154)(v70, v12);
    v77(v68, v12);
    if ((v163 & 1) == 0)
    {
LABEL_46:
      v25 = v148 + 1;
      v64 = &v145[v139];
      v65 = v144 - 1;
      v66 = &v143[v139];
      if ((v148 + 1) == v142)
      {
        v25 = v142;
        v5 = v147;
        v13 = v141;
        v23 = v136;
        v24 = v138;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v150)
    {
      break;
    }

    v78 = *v153;
    v79 = v151;
    (*v153)(v151, v66, v12);
    swift_arrayInitWithTakeFrontToBack();
    v78(v67, v79, v12);
    v67 += v149;
    v66 += v149;
    v59 = __CFADD__(v65++, 1);
    if (v59)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_220D89824(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v84 = a4;
  v79 = sub_220DBE560();
  v7 = *(v79 - 8);
  v8 = MEMORY[0x28223BE20](v79);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v67 - v10;
  v83 = sub_220DBE960();
  v11 = MEMORY[0x28223BE20](v83);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v81 = &v67 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v21 = (a2 - a1) / v17;
  v87 = a1;
  v86 = v84;
  v74 = (v7 + 8);
  v75 = (v14 + 16);
  v73 = (v14 + 8);
  v22 = v19 / v17;
  if (v21 >= v19 / v17)
  {
    v42 = v84;
    sub_220CFB4E0(a2, v19 / v17, v84);
    v43 = v42 + v22 * v17;
    v44 = -v17;
    v45 = v43;
    v82 = a1;
    v69 = v44;
LABEL_36:
    v46 = a2 + v44;
    v47 = a3;
    v67 = v45;
    v48 = v45;
    v70 = a2 + v44;
    v71 = a2;
    while (1)
    {
      if (v43 <= v84)
      {
        v87 = a2;
        v85 = v48;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v68 = v48;
      v80 = v47 + v44;
      v49 = v43 + v44;
      v50 = v43;
      v51 = *v75;
      v52 = v46;
      v53 = v83;
      v54 = v47;
      (*v75)(v81, v43 + v44, v83);
      v55 = v76;
      v51(v76, v52, v53);
      v56 = v77;
      sub_220DBE8F0();
      v57 = v78;
      sub_220DBE8F0();
      LODWORD(v72) = sub_220DBE440();
      v58 = *v74;
      v59 = v57;
      v60 = v79;
      (*v74)(v59, v79);
      v58(v56, v60);
      v61 = *v73;
      (*v73)(v55, v53);
      v61(v81, v53);
      if (v72)
      {
        v43 = v50;
        a3 = v80;
        if (v54 < v71 || v80 >= v71)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v68;
          v44 = v69;
          a1 = v82;
        }

        else
        {
          v65 = v68;
          v44 = v69;
          v45 = v68;
          v18 = v54 == v71;
          v66 = v70;
          a2 = v70;
          a1 = v82;
          if (!v18)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v66;
            v45 = v65;
          }
        }

        goto LABEL_36;
      }

      v62 = v80;
      if (v54 < v50 || v80 >= v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v47 = v62;
        v43 = v49;
        v48 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
      }

      else
      {
        v48 = v49;
        v18 = v50 == v54;
        v47 = v80;
        v43 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v47 = v62;
          v43 = v49;
          v48 = v49;
        }
      }
    }

    v87 = a2;
    v85 = v67;
  }

  else
  {
    v23 = v84;
    sub_220CFB4E0(a1, (a2 - a1) / v17, v84);
    v71 = v17;
    v72 = v23 + v21 * v17;
    v85 = v72;
    v80 = a3;
    while (v84 < v72 && a2 < a3)
    {
      v82 = a1;
      v25 = *v75;
      v26 = v81;
      v27 = v83;
      (*v75)(v81, a2, v83);
      v28 = v76;
      v25(v76, v84, v27);
      v29 = v77;
      sub_220DBE8F0();
      v30 = v78;
      sub_220DBE8F0();
      v31 = sub_220DBE440();
      v32 = a2;
      v33 = *v74;
      v34 = v30;
      v35 = v79;
      (*v74)(v34, v79);
      v33(v29, v35);
      v36 = *v73;
      (*v73)(v28, v27);
      v36(v26, v27);
      if (v31)
      {
        v37 = v71;
        a2 = v32 + v71;
        v38 = v82;
        if (v82 < v32 || v82 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
        }

        else
        {
          a3 = v80;
          if (v82 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v37 = v71;
        v40 = v84 + v71;
        v38 = v82;
        if (v82 < v84 || v82 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
          a2 = v32;
        }

        else
        {
          a3 = v80;
          a2 = v32;
          if (v82 != v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v86 = v40;
        v84 = v40;
      }

      a1 = v38 + v37;
      v87 = a1;
    }
  }

LABEL_58:
  sub_220D81768(&v87, &v86, &v85);
  return 1;
}

uint64_t sub_220D89E90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_220D89F98@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ChartAreaSeries(0);
  v4 = *(result + 8);
  v5 = (v1 + *(result + 7));
  v7 = *v5;
  v6 = v5 + 1;
  v8 = v7;
  if (!*(v1 + 32))
  {
    v6 = (v1 + 24);
  }

  v9 = *v6;
  v10 = *(v1 + v4 + 8);
  v11 = *(v1 + v4 + 16);
  if (*v6 <= v8 + 0.01)
  {
    v9 = v8 + 0.01;
  }

  if (v8 > v9 || v10 > v11)
  {
    __break(1u);
  }

  else
  {
    if (v10 >= v11)
    {
    }

    else
    {
      sub_220DC00D0();
    }

    sub_220DC0190();
    sub_220DC0180();
    result = sub_220DBF7B0();
    *a1 = v13;
    *(a1 + 16) = v14;
    *(a1 + 32) = v15;
  }

  return result;
}

uint64_t ChartAreaSeries.init(chartData:dateExtrema:visibleDateRange:yAxisRange:areaStyle:halfLineWidth:useSecondValue:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, void *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v17 = *a4;
  v23 = *(a4 + 1);
  v18 = a4[3];
  v19 = type metadata accessor for ChartAreaSeries(0);
  v20 = a6 + v19[8];
  *v20 = v17;
  *(v20 + 8) = v23;
  *(v20 + 3) = v18;
  *a6 = a1;
  memcpy(a6 + 1, a2, 0x59uLL);
  result = sub_220D8A1C0(a3, a6 + v19[6]);
  v22 = (a6 + v19[7]);
  *v22 = a7;
  v22[1] = a8;
  *(a6 + v19[10]) = a9;
  *(a6 + v19[9]) = a5;
  return result;
}

uint64_t type metadata accessor for ChartAreaSeries(uint64_t a1)
{
  result = qword_27CF96058;
  if (!qword_27CF96058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D8A1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ChartAreaSeries.body.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for ChartAreaSeries(0);
  v3 = *(v2 - 8);
  v54 = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96020, &qword_220DC5FE8);
  OUTLINED_FUNCTION_0();
  v45 = v6;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96028, &qword_220DC5FF0);
  OUTLINED_FUNCTION_0();
  v49 = v10;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96030, &qword_220DC5FF8);
  OUTLINED_FUNCTION_0();
  v51 = v14;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  v46 = &v44 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96038, &unk_220DC6000);
  OUTLINED_FUNCTION_0();
  v52 = v17;
  v53 = v18;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  v47 = &v44 - v20;
  *&v60[0] = *v1;
  swift_getKeyPath();
  sub_220D8AA60(v1, &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  sub_220D8AAC4(&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EE0, &qword_220DC85D0);
  sub_220DBF690();
  sub_220D8ABA8();
  sub_220D8B268(&qword_27CF96040, type metadata accessor for DetailChartDataElement, &protocol conformance descriptor for DetailChartDataElement);
  sub_220DC0090();
  sub_220D89F98(v60);
  v57 = v60[0];
  v58 = v60[1];
  v59 = v61;
  v23 = sub_220D8AC0C();
  v24 = MEMORY[0x277CDF838];
  v25 = MEMORY[0x277CDF828];
  sub_220DBF4A0();
  sub_220D7AE00(v60);
  (*(v45 + 8))(v9, v5);
  v56 = v1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96050, &qword_220DC6030);
  *&v57 = v5;
  *(&v57 + 1) = v24;
  *&v58 = v23;
  *(&v58 + 1) = v25;
  OUTLINED_FUNCTION_3_27();
  v29 = OUTLINED_FUNCTION_7_21(v27, v28);
  *&v57 = sub_220DBF590();
  *(&v57 + 1) = MEMORY[0x277CBB2F8];
  OUTLINED_FUNCTION_2_30();
  v32 = OUTLINED_FUNCTION_7_21(v30, v31);
  v33 = v46;
  v34 = v48;
  sub_220DBF500();
  (*(v49 + 8))(v13, v34);
  *&v57 = v34;
  *(&v57 + 1) = v26;
  *&v58 = v29;
  *(&v58 + 1) = v32;
  OUTLINED_FUNCTION_4_21();
  v37 = OUTLINED_FUNCTION_7_21(v35, v36);
  v38 = v47;
  v39 = v50;
  sub_220DBF550();
  (*(v51 + 8))(v33, v39);
  *&v57 = v39;
  *(&v57 + 1) = v37;
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_21(v40, v41);
  v42 = v52;
  sub_220DBF4E0();
  return (*(v53 + 8))(v38, v42);
}

uint64_t sub_220D8A7BC()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  MEMORY[0x28223BE20](v5 - 8);
  sub_220DBFA00();
  sub_220DBE560();
  sub_220DBF5A0();

  sub_220DBFA00();
  type metadata accessor for ChartAreaSeries(0);
  sub_220DBF5A0();

  sub_220DBFA00();
  type metadata accessor for DetailChartDataElement(0);
  sub_220DBF5A0();

  return sub_220DBF680();
}

uint64_t sub_220D8AA60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartAreaSeries(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D8AAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartAreaSeries(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D8AB28()
{
  type metadata accessor for ChartAreaSeries(0);

  return sub_220D8A7BC();
}

unint64_t sub_220D8ABA8()
{
  result = qword_27CF95EE8;
  if (!qword_27CF95EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95EE0, &qword_220DC85D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95EE8);
  }

  return result;
}

unint64_t sub_220D8AC0C()
{
  result = qword_27CF96048;
  if (!qword_27CF96048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96020, &qword_220DC5FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96048);
  }

  return result;
}

uint64_t sub_220D8AC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v25 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v22 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v20 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v21 = &v18 - v10;
  v11 = sub_220DBF590();
  v12 = *(v11 - 8);
  v23 = v11;
  v24 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBFA00();
  v19 = type metadata accessor for ChartAreaSeries(0);
  sub_220DBE560();
  sub_220DBF5A0();

  sub_220DBFA00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  sub_220DBF5A0();

  sub_220DBFA00();
  v15 = (a1 + *(v19 + 28));
  v27 = *v15;
  sub_220DBF5A0();

  sub_220DBFA00();
  v27 = v15[1];
  sub_220DBF5A0();

  sub_220DBF580();
  v16 = v23;
  sub_220DBF520();
  return (*(v24 + 8))(v14, v16);
}

void sub_220D8B0BC(uint64_t a1)
{
  sub_220D8B17C(319);
  if (v1 <= 0x3F)
  {
    sub_220D8B1D4(319);
    if (v2 <= 0x3F)
    {
      sub_220D8B2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220D8B17C(uint64_t a1)
{
  if (!qword_280FA6638)
  {
    type metadata accessor for DetailChartDataElement(255);
    v1 = sub_220DC0770();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA6638);
    }
  }
}

void sub_220D8B1D4(uint64_t a1)
{
  if (!qword_27CF96068)
  {
    sub_220DBE560();
    sub_220D8B268(&qword_280FA7798, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v1 = sub_220DC05A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF96068);
    }
  }
}

uint64_t sub_220D8B268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220D8B2B0()
{
  if (!qword_27CF96070)
  {
    v0 = sub_220DC05A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF96070);
    }
  }
}

BOOL static DetailCondition.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 2:
      if (v2 == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_15;
      }

LABEL_13:
      result = 1;
      break;
    default:
      if ((v2 - 2) >= 6)
      {
        result = ((v2 ^ *a1) & 1) == 0;
      }

      else
      {
LABEL_15:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_220D8B3AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79746964696D7568 && a2 == 0xE800000000000000;
  if (v4 || (sub_220DC0CA0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
    if (v6 || (sub_220DC0CA0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000220DC8A80 == a2;
      if (v7 || (sub_220DC0CA0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL;
        if (v8 || (sub_220DC0CA0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7865646E497675 && a2 == 0xE700000000000000;
          if (v9 || (sub_220DC0CA0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
            if (v10 || (sub_220DC0CA0() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1684957559 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_220DC0CA0();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220D8B630(unsigned __int8 a1)
{
  sub_220DC0CE0();
  MEMORY[0x223D98920](a1);
  return sub_220DC0D20();
}

unint64_t sub_220D8B684(char a1)
{
  result = 0x79746964696D7568;
  switch(a1)
  {
    case 1:
      result = 0x6572757373657270;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6F697469646E6F63;
      break;
    case 4:
      result = 0x7865646E497675;
      break;
    case 5:
      result = 0x696C696269736976;
      break;
    case 6:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220D8B778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220D8B3AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220D8B7C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220D8B5F0();
  *a1 = result;
  return result;
}

uint64_t sub_220D8B7E8(uint64_t a1)
{
  v2 = sub_220D8C374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8B824(uint64_t a1)
{
  v2 = sub_220D8C374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8B860(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220DC0CA0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220D8B8F8()
{
  sub_220DC0CE0();
  MEMORY[0x223D98920](0);
  return sub_220DC0D20();
}

uint64_t sub_220D8B960()
{
  sub_220DC0CE0();
  MEMORY[0x223D98920](0);
  return sub_220DC0D20();
}

uint64_t sub_220D8B9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220D8B860(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220D8B9EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220CE7328();
  *a1 = result & 1;
  return result;
}

uint64_t sub_220D8BA18(uint64_t a1)
{
  v2 = sub_220D8C4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BA54(uint64_t a1)
{
  v2 = sub_220D8C4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8BA94(uint64_t a1)
{
  v2 = sub_220D8C614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BAD0(uint64_t a1)
{
  v2 = sub_220D8C614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8BB0C(uint64_t a1)
{
  v2 = sub_220D8C56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BB48(uint64_t a1)
{
  v2 = sub_220D8C56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8BB84(uint64_t a1)
{
  v2 = sub_220D8C5C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BBC0(uint64_t a1)
{
  v2 = sub_220D8C5C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8BBFC(uint64_t a1)
{
  v2 = sub_220D8C470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BC38(uint64_t a1)
{
  v2 = sub_220D8C470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8BC74(uint64_t a1)
{
  v2 = sub_220D8C41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BCB0(uint64_t a1)
{
  v2 = sub_220D8C41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8BCEC(uint64_t a1)
{
  v2 = sub_220D8C3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BD28(uint64_t a1)
{
  v2 = sub_220D8C3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DetailCondition.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96078, &qword_220DC60C0);
  OUTLINED_FUNCTION_0();
  v65 = v4;
  v66 = v3;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22();
  v64 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96080, &qword_220DC60C8);
  OUTLINED_FUNCTION_0();
  v62 = v8;
  v63 = v7;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22();
  v61 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96088, &qword_220DC60D0);
  OUTLINED_FUNCTION_0();
  v59 = v12;
  v60 = v11;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22();
  v56 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96090, &qword_220DC60D8);
  OUTLINED_FUNCTION_0();
  v57 = v16;
  v58 = v15;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22();
  v55 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96098, &qword_220DC60E0);
  OUTLINED_FUNCTION_0();
  v53 = v20;
  v54 = v19;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22();
  v52 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF960A0, &qword_220DC60E8);
  OUTLINED_FUNCTION_0();
  v50 = v24;
  v51 = v23;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  v27 = &v49 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF960A8, &qword_220DC60F0);
  OUTLINED_FUNCTION_0();
  v49 = v29;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  v32 = &v49 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF960B0, &qword_220DC60F8);
  OUTLINED_FUNCTION_0();
  v67 = v34;
  v68 = v33;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v35);
  v36 = *v1;
  v37 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_220D8C374();
  sub_220DC0D40();
  switch(v36)
  {
    case 2:
      v69[0] = 0;
      sub_220D8C614();
      OUTLINED_FUNCTION_3_28(&type metadata for DetailCondition.HumidityCodingKeys, v69);
      (*(v49 + 8))(v32, v28);
      goto LABEL_9;
    case 3:
      v69[1] = 1;
      sub_220D8C5C0();
      v37 = v68;
      sub_220DC0C40();
      (*(v50 + 8))(v27, v51);
      goto LABEL_9;
    case 4:
      v70[0] = 2;
      sub_220D8C56C();
      v38 = v52;
      OUTLINED_FUNCTION_3_28(&type metadata for DetailCondition.PrecipitationTotalCodingKeys, v70);
      v40 = v53;
      v39 = v54;
      goto LABEL_8;
    case 5:
      v71 = 4;
      sub_220D8C470();
      v38 = v56;
      OUTLINED_FUNCTION_3_28(&type metadata for DetailCondition.UvIndexCodingKeys, &v71);
      v40 = v59;
      v39 = v60;
      goto LABEL_8;
    case 6:
      v72 = 5;
      sub_220D8C41C();
      v38 = v61;
      OUTLINED_FUNCTION_3_28(&type metadata for DetailCondition.VisibilityCodingKeys, &v72);
      v40 = v62;
      v39 = v63;
      goto LABEL_8;
    case 7:
      v73 = 6;
      sub_220D8C3C8();
      v38 = v64;
      OUTLINED_FUNCTION_3_28(&type metadata for DetailCondition.WindCodingKeys, &v73);
      v40 = v65;
      v39 = v66;
LABEL_8:
      (*(v40 + 8))(v38, v39);
LABEL_9:
      v41 = OUTLINED_FUNCTION_12_21();
      result = v42(v41, v37);
      break;
    default:
      v70[2] = 3;
      sub_220D8C4C4();
      v44 = v55;
      v45 = v68;
      sub_220DC0C40();
      v70[1] = v36 & 1;
      sub_220D8C518();
      v46 = v58;
      sub_220DC0C50();
      (*(v57 + 8))(v44, v46);
      v47 = OUTLINED_FUNCTION_12_21();
      result = v48(v47, v45);
      break;
  }

  return result;
}

unint64_t sub_220D8C374()
{
  result = qword_27CF960B8;
  if (!qword_27CF960B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960B8);
  }

  return result;
}

unint64_t sub_220D8C3C8()
{
  result = qword_27CF960C0;
  if (!qword_27CF960C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960C0);
  }

  return result;
}

unint64_t sub_220D8C41C()
{
  result = qword_27CF960C8;
  if (!qword_27CF960C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960C8);
  }

  return result;
}

unint64_t sub_220D8C470()
{
  result = qword_27CF960D0;
  if (!qword_27CF960D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960D0);
  }

  return result;
}

unint64_t sub_220D8C4C4()
{
  result = qword_27CF960D8;
  if (!qword_27CF960D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960D8);
  }

  return result;
}

unint64_t sub_220D8C518()
{
  result = qword_27CF960E0;
  if (!qword_27CF960E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960E0);
  }

  return result;
}

unint64_t sub_220D8C56C()
{
  result = qword_27CF960E8;
  if (!qword_27CF960E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960E8);
  }

  return result;
}

unint64_t sub_220D8C5C0()
{
  result = qword_27CF960F0;
  if (!qword_27CF960F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960F0);
  }

  return result;
}

unint64_t sub_220D8C614()
{
  result = qword_27CF960F8;
  if (!qword_27CF960F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960F8);
  }

  return result;
}

uint64_t DetailCondition.hash(into:)()
{
  v1 = *v0;
  if ((*v0 - 2) >= 6u)
  {
    MEMORY[0x223D98920](3);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_220DC69A8[(*v0 - 2)];
  }

  return MEMORY[0x223D98920](v2);
}

uint64_t DetailCondition.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  if ((v1 - 2) >= 6u)
  {
    MEMORY[0x223D98920](3);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_220DC69A8[(v1 - 2)];
  }

  MEMORY[0x223D98920](v2);
  return sub_220DC0D20();
}

uint64_t DetailCondition.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v102 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96100, &qword_220DC6100);
  OUTLINED_FUNCTION_0();
  v97 = v3;
  v98 = v4;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22();
  v105 = v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96108, &qword_220DC6108);
  OUTLINED_FUNCTION_0();
  v96 = v7;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22();
  v101 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96110, &qword_220DC6110);
  OUTLINED_FUNCTION_0();
  v92 = v10;
  v93 = v11;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22();
  v99 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96118, &qword_220DC6118);
  OUTLINED_FUNCTION_0();
  v94 = v14;
  v95 = v15;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  v100 = v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96120, &qword_220DC6120);
  OUTLINED_FUNCTION_0();
  v91 = v18;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22();
  v103 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96128, &qword_220DC6128);
  OUTLINED_FUNCTION_0();
  v88 = v22;
  v89 = v21;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  v25 = v82 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96130, &qword_220DC6130);
  OUTLINED_FUNCTION_0();
  v87 = v27;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  v30 = v82 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96138, &qword_220DC6138);
  OUTLINED_FUNCTION_0();
  v33 = v32;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  v36 = v82 - v35;
  v37 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_220D8C374();
  v38 = v107;
  sub_220DC0D30();
  if (v38)
  {
    goto LABEL_8;
  }

  v84 = v30;
  v83 = v26;
  v85 = v25;
  v40 = v103;
  v39 = v104;
  v107 = v33;
  v86 = v36;
  v41 = sub_220DC0C30();
  result = sub_220D8DAA8(v41, 0);
  if (v44 == v45 >> 1)
  {
LABEL_7:
    v58 = sub_220DC0BA0();
    swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96140, &qword_220DC6140);
    *v60 = &type metadata for DetailCondition;
    v61 = v86;
    sub_220DC0C10();
    sub_220DC0B90();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v107 + 8))(v61, v31);
LABEL_8:
    v62 = v106;
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v82[1] = 0;
  if (v44 < (v45 >> 1))
  {
    v46 = *(v43 + v44);
    sub_220D8E630(v44 + 1, v45 >> 1, result, v43, v44, v45);
    v48 = v47;
    v50 = v49;
    swift_unknownObjectRelease();
    if (v48 == v50 >> 1)
    {
      v51 = v31;
      v52 = v102;
      v53 = v86;
      switch(v46)
      {
        case 1:
          v109 = 1;
          sub_220D8C5C0();
          v69 = v85;
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.PressureCodingKeys, &v109);
          swift_unknownObjectRelease();
          (*(v88 + 8))(v69, v89);
          v70 = OUTLINED_FUNCTION_2_31();
          v71(v70);
          v57 = 3;
          break;
        case 2:
          v110[0] = 2;
          sub_220D8C56C();
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.PrecipitationTotalCodingKeys, v110);
          swift_unknownObjectRelease();
          (*(v91 + 8))(v40, v39);
          v66 = OUTLINED_FUNCTION_2_31();
          v67(v66);
          v57 = 4;
          break;
        case 3:
          v111 = 3;
          sub_220D8C4C4();
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.ConditionsCodingKeys, &v111);
          sub_220D8DAF0();
          sub_220DC0C20();
          v68 = v107;
          swift_unknownObjectRelease();
          v80 = OUTLINED_FUNCTION_11_16();
          v81(v80);
          (*(v68 + 8))(v53, v51);
          v57 = v110[1];
          break;
        case 4:
          v112 = 4;
          sub_220D8C470();
          v63 = v99;
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.UvIndexCodingKeys, &v112);
          swift_unknownObjectRelease();
          (*(v93 + 8))(v63, v92);
          v64 = OUTLINED_FUNCTION_2_31();
          v65(v64);
          v57 = 5;
          break;
        case 5:
          v113 = 5;
          sub_220D8C41C();
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.VisibilityCodingKeys, &v113);
          swift_unknownObjectRelease();
          v72 = OUTLINED_FUNCTION_12_21();
          v73(v72, v90);
          v74 = OUTLINED_FUNCTION_2_31();
          v75(v74);
          v57 = 6;
          break;
        case 6:
          v114 = 6;
          sub_220D8C3C8();
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.WindCodingKeys, &v114);
          swift_unknownObjectRelease();
          v76 = OUTLINED_FUNCTION_12_21();
          v77(v76);
          v78 = OUTLINED_FUNCTION_2_31();
          v79(v78);
          v57 = 7;
          break;
        default:
          v108 = 0;
          sub_220D8C614();
          v54 = v84;
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.HumidityCodingKeys, &v108);
          swift_unknownObjectRelease();
          (*(v87 + 8))(v54, v83);
          v55 = OUTLINED_FUNCTION_2_31();
          v56(v55);
          v57 = 2;
          break;
      }

      v62 = v106;
      *v52 = v57;
      return __swift_destroy_boxed_opaque_existential_1(v62);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_220D8D0E8()
{
  v1 = *v0;
  sub_220DC0CE0();
  if ((v1 - 2) >= 6u)
  {
    MEMORY[0x223D98920](3);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_220DC69A8[(v1 - 2)];
  }

  MEMORY[0x223D98920](v2);
  return sub_220DC0D20();
}

void DetailCondition.primaryChartCondition.getter(char *a1@<X8>)
{
  v2 = *v1;
  v3 = v2 - 2;
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  if (v3 < 6)
  {
    v4 = 0x70605020100uLL >> (8 * v3);
  }

  *a1 = v4;
}

uint64_t DetailCondition.title.getter()
{
  switch(*v0)
  {
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    case 3:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    case 4:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    case 5:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_11;
      }

LABEL_19:
      OUTLINED_FUNCTION_10(&qword_280FA6600);
LABEL_11:
      OUTLINED_FUNCTION_5_1();
      goto LABEL_16;
    case 6:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    case 7:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    default:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

LABEL_20:
      OUTLINED_FUNCTION_10(&qword_280FA6600);
LABEL_15:
      OUTLINED_FUNCTION_1_6();
LABEL_16:
      OUTLINED_FUNCTION_6_0();
      return sub_220DBE240();
  }
}

uint64_t DetailCondition.subtitle.getter()
{
  if (*v0 - 2 < 6)
  {
    return 0;
  }

  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_0();
  return sub_220DBE240();
}

uint64_t DetailCondition.filledSymbolName.getter()
{
  result = 0x79746964696D7568;
  switch(*v0)
  {
    case 2:
      return result;
    case 3:
      result = OUTLINED_FUNCTION_10_21();
      break;
    case 4:
      result = 0x6C69662E706F7264;
      break;
    case 5:
      result = 0x2E78616D2E6E7573;
      break;
    case 6:
      result = 0x6C6C69662E657965;
      break;
    case 7:
      result = 1684957559;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t DetailCondition.symbolName.getter()
{
  result = 0x79746964696D7568;
  switch(*v0)
  {
    case 2:
      return result;
    case 3:
      result = OUTLINED_FUNCTION_10_21();
      break;
    case 4:
      result = 1886351972;
      break;
    case 5:
      result = 0x78616D2E6E7573;
      break;
    case 6:
      result = 6650213;
      break;
    case 7:
      result = 1684957559;
      break;
    default:
      result = 0x75732E64756F6C63;
      break;
  }

  return result;
}

uint64_t DetailCondition.accessibilityLabel.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96150, &unk_220DC6148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220DC17C0;
  *(inited + 32) = DetailCondition.title.getter();
  *(inited + 40) = v3;
  if ((v1 - 2) >= 6)
  {
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_6_0();
    v4 = sub_220DBE240();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = 0;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v7 = MEMORY[0x277D84F90];
LABEL_7:
  v8 = (inited + 40 + 16 * v6);
  while (++v6 != 3)
  {
    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if (v10)
    {
      v11 = *(v9 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220D56830(0, *(v7 + 16) + 1, 1, v7);
        v7 = v15;
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_220D56830(v12 > 1, v13 + 1, 1, v7);
        v7 = v16;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      goto LABEL_7;
    }
  }

  swift_setDeallocating();
  sub_220D7FE14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95750, &qword_220DC5B30);
  sub_220D3A694();
  v17 = sub_220DC0570();

  return v17;
}

unint64_t DetailCondition.description.getter()
{
  v1 = *v0;
  result = 0x79746964696D7568;
  switch(*v0)
  {
    case 2:
      return result;
    case 3:
      result = 0x6572757373657270;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x7865646E497675;
      break;
    case 6:
      result = 0x696C696269736976;
      break;
    case 7:
      result = 1684957559;
      break;
    default:
      BYTE8(v3) = 0;
      MEMORY[0x223D982B0](0x6F697469646E6F63, 0xEB0000000028736ELL);
      *&v3 = v1 & 1;
      sub_220DC0BC0();
      MEMORY[0x223D982B0](41, 0xE100000000000000);
      result = *(&v3 + 1);
      break;
  }

  return result;
}

unint64_t DetailCondition.rawValue.getter()
{
  result = 0x79746964696D7568;
  switch(*v0)
  {
    case 2:
      return result;
    case 3:
      result = 0x6572757373657270;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x7865646E497675;
      break;
    case 6:
      result = 0x696C696269736976;
      break;
    case 7:
      result = 1684957559;
      break;
    default:
      result = 0x6F697469646E6F63;
      break;
  }

  return result;
}

uint64_t sub_220D8DAA8(uint64_t result, uint64_t a2)
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

unint64_t sub_220D8DAF0()
{
  result = qword_27CF96148;
  if (!qword_27CF96148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96148);
  }

  return result;
}

unint64_t sub_220D8DB48()
{
  result = qword_27CF96158;
  if (!qword_27CF96158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96158);
  }

  return result;
}

unint64_t sub_220D8DBA0()
{
  result = qword_27CF96160;
  if (!qword_27CF96160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96160);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for DetailCondition(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 7)
    {
      return (v7 - 6);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 7;
    if (a2 + 7 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 7);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetailCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF9)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF8)
  {
    v7 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220D8DD78(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for DetailCondition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DetailCondition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DetailCondition.ConditionsCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220D8E000()
{
  result = qword_27CF96168;
  if (!qword_27CF96168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96168);
  }

  return result;
}

unint64_t sub_220D8E058()
{
  result = qword_27CF96170;
  if (!qword_27CF96170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96170);
  }

  return result;
}

unint64_t sub_220D8E0B0()
{
  result = qword_27CF96178;
  if (!qword_27CF96178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96178);
  }

  return result;
}

unint64_t sub_220D8E108()
{
  result = qword_27CF96180;
  if (!qword_27CF96180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96180);
  }

  return result;
}

unint64_t sub_220D8E160()
{
  result = qword_27CF96188;
  if (!qword_27CF96188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96188);
  }

  return result;
}

unint64_t sub_220D8E1B8()
{
  result = qword_27CF96190;
  if (!qword_27CF96190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96190);
  }

  return result;
}

unint64_t sub_220D8E210()
{
  result = qword_27CF96198;
  if (!qword_27CF96198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96198);
  }

  return result;
}

unint64_t sub_220D8E268()
{
  result = qword_27CF961A0;
  if (!qword_27CF961A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961A0);
  }

  return result;
}

unint64_t sub_220D8E2C0()
{
  result = qword_27CF961A8;
  if (!qword_27CF961A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961A8);
  }

  return result;
}

unint64_t sub_220D8E318()
{
  result = qword_27CF961B0;
  if (!qword_27CF961B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961B0);
  }

  return result;
}

unint64_t sub_220D8E370()
{
  result = qword_27CF961B8;
  if (!qword_27CF961B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961B8);
  }

  return result;
}

unint64_t sub_220D8E3C8()
{
  result = qword_27CF961C0;
  if (!qword_27CF961C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961C0);
  }

  return result;
}

unint64_t sub_220D8E420()
{
  result = qword_27CF961C8;
  if (!qword_27CF961C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961C8);
  }

  return result;
}

unint64_t sub_220D8E478()
{
  result = qword_27CF961D0;
  if (!qword_27CF961D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961D0);
  }

  return result;
}

unint64_t sub_220D8E4D0()
{
  result = qword_27CF961D8;
  if (!qword_27CF961D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961D8);
  }

  return result;
}

unint64_t sub_220D8E528()
{
  result = qword_27CF961E0;
  if (!qword_27CF961E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961E0);
  }

  return result;
}

unint64_t sub_220D8E580()
{
  result = qword_27CF961E8;
  if (!qword_27CF961E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961E8);
  }

  return result;
}

unint64_t sub_220D8E5D8()
{
  result = qword_27CF961F0;
  if (!qword_27CF961F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961F0);
  }

  return result;
}

uint64_t sub_220D8E630(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t PrecipitationComponentDescriptionContext.currentWeather.getter()
{
  OUTLINED_FUNCTION_3();
  sub_220DBEAD0();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t PrecipitationComponentDescriptionContext.dailyForecast.getter()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for PrecipitationComponentDescriptionContext(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_2_10();

  return v2(v1);
}

uint64_t PrecipitationComponentDescriptionContext.hourlyForecast.getter()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for PrecipitationComponentDescriptionContext(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_2_10();

  return v2(v1);
}

uint64_t PrecipitationComponentDescriptionContext.timeZone.getter()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for PrecipitationComponentDescriptionContext(v0);
  sub_220DBE740();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_2_10();

  return v2(v1);
}

uint64_t PrecipitationComponentDescriptionContext.heroStringPrecipitationType.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  result = type metadata accessor for PrecipitationComponentDescriptionContext(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

const char *SunriseSunsetPolarSunEventStringBuilder.makeString(for:currentDate:nextEvent:timeZone:)(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v64 = a4;
  v71 = a1;
  v72 = a2;
  sub_220DBF410();
  OUTLINED_FUNCTION_0();
  v62 = v6;
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v61 = v8 - v7;
  sub_220DC03C0();
  OUTLINED_FUNCTION_0();
  v67 = v10;
  v68 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v66 = v12 - v11;
  v70 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v69 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v61 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v61 - v35;
  v65 = *v71;
  v71 = a3;
  sub_220DC03B0();
  sub_220DBE730();
  sub_220DBE3E0();
  v37 = v19;
  v38 = v69;
  (*(v21 + 8))(v25, v37);
  sub_220DBE6A0();
  sub_220DBE390();
  (*(v14 + 8))(v18, v70);
  v39 = *(v38 + 8);
  v39(v31, v26);
  v40 = sub_220DBE440();
  v39(v34, v26);
  v39(v36, v26);
  if ((v40 & 1) == 0)
  {
    if (v65)
    {
      v40 = "cloud.sun.moon.fill";
      if (qword_280FA6600 == -1)
      {
        goto LABEL_12;
      }
    }

    else if (qword_280FA6600 == -1)
    {
LABEL_12:
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      OUTLINED_FUNCTION_6_22();
      return v40;
    }

    OUTLINED_FUNCTION_10(&qword_280FA6600);
    goto LABEL_12;
  }

  v41 = v68;
  (*(v67 + 16))(v66, v71, v68);
  v42 = OUTLINED_FUNCTION_26_0();
  v44 = v43(v42);
  if (v44 == *MEMORY[0x277D7B448])
  {
    v45 = OUTLINED_FUNCTION_26_0();
    v46(v45);
    v47 = OUTLINED_FUNCTION_7_22();
    v48(v47);
    v40 = v36;
    sub_220DBE4D0();
    OUTLINED_FUNCTION_6_22();
    if (qword_280FA6600 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if (v44 == *MEMORY[0x277D7B440])
  {
    v49 = OUTLINED_FUNCTION_26_0();
    v50(v49);
    v51 = OUTLINED_FUNCTION_7_22();
    v52(v51);
    v40 = v36;
    sub_220DBE4D0();
    OUTLINED_FUNCTION_6_22();
    if (qword_280FA6600 == -1)
    {
LABEL_10:
      OUTLINED_FUNCTION_5_28();
      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_220DC17A0;
      *(v53 + 56) = MEMORY[0x277D837D0];
      *(v53 + 64) = sub_220CEFDB0();
      *(v53 + 32) = v40;
      *(v53 + 40) = v41;
      sub_220DC05F0();
      OUTLINED_FUNCTION_6_22();

      v39(v36, v26);
      return v40;
    }

LABEL_19:
    OUTLINED_FUNCTION_10(&qword_280FA6600);
    goto LABEL_10;
  }

  v55 = v61;
  sub_220DBF3D0();
  v56 = sub_220DBF3F0();
  v57 = sub_220DC0980();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_220CD1000, v56, v57, "SunriseSunsetPolarSunEventStringBuilder unhandled case", v58, 2u);
    MEMORY[0x223D98FB0](v58, -1, -1);
  }

  (*(v62 + 8))(v55, v63);
  v59 = OUTLINED_FUNCTION_26_0();
  v60(v59);
  return 0;
}

uint64_t SunriseSunsetPolarSunEventStringBuilder.makeTitle(currentDate:nextEvent:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a1;
  v66 = sub_220DBE1A0();
  OUTLINED_FUNCTION_0();
  v68 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - v11;
  v13 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  sub_220DBE600();
  sub_220D56F0C(a2, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    v62 = v22;
    v63 = v20;
    v60 = v15;
    v61 = v13;
    (*(v15 + 32))(v19, v12, v13);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v32 = sub_220DBE6C0();
    OUTLINED_FUNCTION_0();
    v34 = v33;
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v58 = v31;
    v36 = swift_allocObject();
    v64 = xmmword_220DC17A0;
    *(v36 + 16) = xmmword_220DC17A0;
    v37 = *MEMORY[0x277CC9980];
    v57 = *(v34 + 104);
    v57(v36 + v35, v37, v32);
    sub_220CE05C8(v36);
    v38 = v19;
    v59 = v26;
    sub_220DBE620();

    v39 = sub_220DBE160();
    v41 = v40;
    v42 = *(v68 + 8);
    v43 = v9;
    v44 = v66;
    v68 += 8;
    v42(v43, v66);
    if (v41)
    {
      v39 = 0;
    }

    if (v39 <= 48)
    {
      v51 = v38;
      v26 = v59;
      if (qword_280FA6600 == -1)
      {
LABEL_14:
        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_6_0();
        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v52 = swift_allocObject();
        v53 = MEMORY[0x277D83B88];
        *(v52 + 16) = v64;
        v54 = MEMORY[0x277D83C10];
        *(v52 + 56) = v53;
        *(v52 + 64) = v54;
        *(v52 + 32) = v39;
        v30 = sub_220DC05F0();

        (*(v60 + 8))(v51, v61);
        v22 = v62;
        v20 = v63;
        goto LABEL_15;
      }
    }

    else
    {
      v45 = swift_allocObject();
      *(v45 + 16) = v64;
      v57(v45 + v35, *MEMORY[0x277CC9968], v32);
      sub_220CE05C8(v45);
      v46 = v65;
      v47 = v59;
      sub_220DBE620();

      v48 = sub_220DBE150();
      v50 = v49;
      v42(v46, v44);
      if (v50)
      {
        v39 = 0;
      }

      else
      {
        v39 = v48;
      }

      v26 = v47;
      v51 = v38;
      if (qword_280FA6600 == -1)
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_10(&qword_280FA6600);
    goto LABEL_14;
  }

  sub_220CD8040(v12);
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D83B88];
  *(v27 + 16) = xmmword_220DC17A0;
  v29 = MEMORY[0x277D83C10];
  *(v27 + 56) = v28;
  *(v27 + 64) = v29;
  *(v27 + 32) = 7;
  v30 = sub_220DC05F0();

LABEL_15:
  (*(v22 + 8))(v26, v20);
  return v30;
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetPolarSunEventStringBuilder(_BYTE *result, int a2, int a3)
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

BOOL static DetailChartGradientModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = MEMORY[0x223D97D10](*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

void DetailChartGradientModel.linearGradient(minValue:maxValue:colorSchemeContrast:)(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_35();
  if (v6 != v7 || v4 > v5)
  {
    __break(1u);
  }

  else
  {
    if (v4 >= v5)
    {
    }

    else
    {
      OUTLINED_FUNCTION_0_21(v2, v3, v4, v5);
      sub_220DC00D0();
    }

    sub_220DC0190();
    sub_220DC0180();
    sub_220DBF7B0();
    *a1 = v9;
    *(a1 + 16) = v10;
    *(a1 + 32) = v11;
  }
}

uint64_t DetailChartGradientModel.init(gradient:startValue:endValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

void DetailChartGradientModel.fadingLinearGradient(minValue:maxValue:colorSchemeContrast:fadingFromMinimumValueOpacity:toMaximumValueOpacity:)(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_35();
  if (v9 == v10 && v7 <= v8)
  {
    v12 = *v3;
    if (v7 >= v8)
    {
    }

    else
    {
      OUTLINED_FUNCTION_0_21(v5, v6, v7, v8);
      v12 = sub_220DC00D0();
    }

    sub_220D8FB58();

    v13 = sub_220DC0750();
    v14 = *(v12 + 16);
    if (v14 >= 2 && *(v13 + 16))
    {
      v15 = sub_220D10A50(v13);

      if (v15)
      {

        v27 = MEMORY[0x277D84F90];
        sub_220CFB854(0, v14, 0);
        v16 = v27;
        v17 = v12 + 40;
        do
        {

          sub_220DBFF10();
          v18 = sub_220DC00F0();
          v20 = v19;

          v22 = *(v27 + 16);
          v21 = *(v27 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_220CFB854((v21 > 1), v22 + 1, 1);
          }

          *(v27 + 16) = v22 + 1;
          v23 = v27 + 16 * v22;
          *(v23 + 32) = v18;
          *(v23 + 40) = v20;
          v17 += 16;
          --v14;
        }

        while (v14);

        sub_220DC0100();
        sub_220DC0190();
        sub_220DC0180();
        sub_220DBF7B0();

        v25 = v28;
        v24 = v29;
        goto LABEL_18;
      }
    }

    else
    {
    }

    sub_220DC0190();
    sub_220DC0180();
    sub_220DBF7B0();
    v16 = v26;
    v25 = v28;
    v24 = v29;
LABEL_18:
    *a1 = v16;
    *(a1 + 24) = v24;
    *(a1 + 8) = v25;
    return;
  }

  __break(1u);
}

double sub_220D8FB4C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

unint64_t sub_220D8FB58()
{
  result = qword_27CF961F8;
  if (!qword_27CF961F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF961F8);
  }

  return result;
}

uint64_t static DetailChartGradientModel.windGradientModel(startValue:windSpeedUnit:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v29[1] = a1;
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  v31 = MEMORY[0x277D84F90];
  v11 = 12;
  result = sub_220CFB854(0, 12, 0);
  v13 = 0;
  v14 = 0;
  v15 = v31;
  while (!v14)
  {
    sub_220DBF140();
    result = sub_220DC00F0();
    v16 = result;
    v18 = v17;
    v31 = v15;
    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_220CFB854((v19 > 1), v20 + 1, 1);
      v15 = v31;
    }

    *(v15 + 16) = v20 + 1;
    v21 = v15 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    v14 = v13 == 11;
    if (v13 == 11)
    {
      v13 = 0;
    }

    else if (__OFADD__(v13++, 1))
    {
      __break(1u);
      break;
    }

    if (!--v11)
    {
      v23 = sub_220DC0100();
      v24 = [objc_opt_self() milesPerHour];
      sub_220D3A5F8();
      sub_220DBE040();
      sub_220DBE130();
      v25 = *(v5 + 8);
      v25(v8, v4);
      sub_220DBE050();
      v27 = v26;
      result = (v25)(v10, v4);
      v28 = v30;
      *v30 = v23;
      *(v28 + 1) = a3;
      v28[2] = v27;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220D8FE20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_220D8FE60(uint64_t result, int a2, int a3)
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

uint64_t TemperatureChartKind.title.getter()
{
  if (*v0)
  {
    OUTLINED_FUNCTION_29();
    if (!v1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29();
    if (!v1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }
  }

  OUTLINED_FUNCTION_8();
  return sub_220DBE240();
}

uint64_t TemperatureChartKind.summary.getter()
{
  if (*v0)
  {
    OUTLINED_FUNCTION_29();
    if (!v1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29();
    if (!v1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }
  }

  OUTLINED_FUNCTION_8();
  return sub_220DBE240();
}

uint64_t sub_220D900A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6175746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_220DC0CA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B694C736C656566 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_220DC0CA0();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_220D901B0(char a1)
{
  sub_220DC0CE0();
  MEMORY[0x223D98920](a1 & 1);
  return sub_220DC0D20();
}

uint64_t sub_220D901F8(char a1)
{
  if (a1)
  {
    return 0x6B694C736C656566;
  }

  else
  {
    return 0x6C6175746361;
  }
}

uint64_t sub_220D90230(uint64_t a1)
{
  v2 = sub_220D90CA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D9026C(uint64_t a1)
{
  v2 = sub_220D90CA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D902CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220D900A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220D902F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220D90170();
  *a1 = result;
  return result;
}

uint64_t sub_220D9031C(uint64_t a1)
{
  v2 = sub_220D90BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D90358(uint64_t a1)
{
  v2 = sub_220D90BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D90394(uint64_t a1)
{
  v2 = sub_220D90C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D903D0(uint64_t a1)
{
  v2 = sub_220D90C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureChartKind.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

uint64_t TemperatureChartKind.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96200, &qword_220DC6B40);
  OUTLINED_FUNCTION_0();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96208, &qword_220DC6B48);
  OUTLINED_FUNCTION_0();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96210, &qword_220DC6B50);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220D90BF8();
  sub_220DC0D40();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_220D90C4C();
    v20 = v24;
    sub_220DC0C40();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_220D90CA0();
    sub_220DC0C40();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

uint64_t TemperatureChartKind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96230, &qword_220DC6B58);
  OUTLINED_FUNCTION_0();
  v41 = v3;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96238, &qword_220DC6B60);
  OUTLINED_FUNCTION_0();
  v40 = v8;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96240, &unk_220DC6B68);
  OUTLINED_FUNCTION_0();
  v43 = v13;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v16 = v37 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220D90BF8();
  v17 = v45;
  sub_220DC0D30();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v7;
  v39 = v11;
  v45 = a1;
  v18 = v44;
  v19 = sub_220DC0C30();
  result = sub_220D8DAA8(v19, 0);
  if (v22 == v23 >> 1)
  {
    v44 = result;
LABEL_9:
    v33 = sub_220DC0BA0();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96140, &qword_220DC6140);
    *v35 = &type metadata for TemperatureChartKind;
    sub_220DC0C10();
    sub_220DC0B90();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v16, v12);
    a1 = v45;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37[1] = 0;
  if (v22 >= (v23 >> 1))
  {
    __break(1u);
  }

  else
  {
    v24 = *(v21 + v22);
    v25 = sub_220D8E62C(v22 + 1);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 != v29 >> 1)
    {
      v44 = v25;
      goto LABEL_9;
    }

    v46 = v24;
    if (v24)
    {
      v48 = 1;
      sub_220D90C4C();
      v30 = v6;
      OUTLINED_FUNCTION_4_23(&type metadata for TemperatureChartKind.FeelsLikeCodingKeys, &v48);
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v41 + 8))(v30, v18);
    }

    else
    {
      v47 = 0;
      sub_220D90CA0();
      v36 = v39;
      OUTLINED_FUNCTION_4_23(&type metadata for TemperatureChartKind.ActualCodingKeys, &v47);
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v36, v38);
    }

    (*(v32 + 8))(v16, v27);
    *v31 = v46;
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  return result;
}

unint64_t sub_220D90BF8()
{
  result = qword_27CF96218;
  if (!qword_27CF96218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96218);
  }

  return result;
}

unint64_t sub_220D90C4C()
{
  result = qword_27CF96220;
  if (!qword_27CF96220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96220);
  }

  return result;
}

unint64_t sub_220D90CA0()
{
  result = qword_27CF96228;
  if (!qword_27CF96228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96228);
  }

  return result;
}

unint64_t sub_220D90CF8()
{
  result = qword_27CF96248;
  if (!qword_27CF96248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96248);
  }

  return result;
}

unint64_t sub_220D90D50()
{
  result = qword_27CF96250;
  if (!qword_27CF96250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96258, &qword_220DC6BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96250);
  }

  return result;
}

_BYTE *sub_220D90DB4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220D90EB4()
{
  result = qword_27CF96260;
  if (!qword_27CF96260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96260);
  }

  return result;
}

unint64_t sub_220D90F0C()
{
  result = qword_27CF96268;
  if (!qword_27CF96268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96268);
  }

  return result;
}

unint64_t sub_220D90F64()
{
  result = qword_27CF96270;
  if (!qword_27CF96270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96270);
  }

  return result;
}

unint64_t sub_220D90FBC()
{
  result = qword_27CF96278;
  if (!qword_27CF96278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96278);
  }

  return result;
}

unint64_t sub_220D91014()
{
  result = qword_27CF96280;
  if (!qword_27CF96280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96280);
  }

  return result;
}

unint64_t sub_220D9106C()
{
  result = qword_27CF96288;
  if (!qword_27CF96288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96288);
  }

  return result;
}

unint64_t sub_220D910C4()
{
  result = qword_27CF96290;
  if (!qword_27CF96290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96290);
  }

  return result;
}

void *sub_220D91128(uint64_t a1, uint64_t a2)
{
  v8 = sub_220DBFB00();
  MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_220DBFB10();
}

void *sub_220D91220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_220DBFB00();
  MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_220DBFB10();
}

uint64_t AirQualityNonNumericScaleView.init(index:categories:spacing:pillView:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t AirQualityNonNumericScaleView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96298, &qword_220DC6F80);
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A0, &qword_220DC6F88);
  OUTLINED_FUNCTION_6_6();
  v24 = v4;
  sub_220DBF8A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A8, &qword_220DC6F90);
  OUTLINED_FUNCTION_6_6();
  sub_220DBF8A0();
  sub_220DBFB20();
  v5 = *(a1 + 24);
  v6 = MEMORY[0x277CE0740];
  v34 = v5;
  v35 = sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88, MEMORY[0x277CE0740]);
  WitnessTable = swift_getWitnessTable();
  v32 = v5;
  v33 = sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90, v6);
  v30 = WitnessTable;
  v31 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  v8 = sub_220DC0030();
  OUTLINED_FUNCTION_0_22();
  v11 = sub_220CE161C(v9, &qword_27CF96298, &qword_220DC6F80, v10);
  *&v36 = v23;
  *(&v36 + 1) = MEMORY[0x277D83B88];
  *&v37 = v8;
  *(&v37 + 1) = v11;
  *&v38 = MEMORY[0x277D83B98];
  sub_220DC00C0();
  v29 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2();
  swift_getWitnessTable();
  v12 = sub_220DC0030();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v19 = v2[1];
  v36 = *v2;
  v37 = v19;
  v38 = v2[2];
  v26 = v24;
  v27 = v5;
  v28 = &v36;
  sub_220DBF9E0();
  sub_220DC0020();
  swift_getWitnessTable();
  sub_220D14A4C();
  v20 = *(v13 + 8);
  v20(v16, v12);
  sub_220D14A4C();
  return (v20)(v18, v12);
}

uint64_t sub_220D916A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96298, &qword_220DC6F80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A0, &qword_220DC6F88);
  sub_220DBF8A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A8, &qword_220DC6F90);
  sub_220DBF8A0();
  sub_220DBFB20();
  v7 = MEMORY[0x277CE0740];
  v27[11] = a3;
  v27[12] = sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88, MEMORY[0x277CE0740]);
  WitnessTable = swift_getWitnessTable();
  v27[9] = a3;
  v27[10] = sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90, v7);
  v27[7] = WitnessTable;
  v27[8] = swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = sub_220DC0030();
  v24[0] = sub_220CE161C(qword_27CF962B8, &qword_27CF96298, &qword_220DC6F80, MEMORY[0x277D83980]);
  v27[0] = v25;
  v27[1] = MEMORY[0x277D83B88];
  v27[2] = v9;
  v27[3] = v24[0];
  v27[4] = MEMORY[0x277D83B98];
  v10 = sub_220DC00C0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v28 = *(a1 + 8);
  v27[6] = v28;
  swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = *(a1 + 16);
  *(v17 + 32) = *a1;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a1 + 32);
  sub_220D925AC(&v28, v27);
  v20 = type metadata accessor for AirQualityNonNumericScaleView(0, a2, a3, v19);
  (*(*(v20 - 8) + 16))(v27, a1, v20);
  v23 = swift_getWitnessTable();
  sub_220DC00A0();
  v26 = v23;
  swift_getWitnessTable();
  sub_220D14A4C();
  v21 = *(v11 + 8);
  v21(v14, v10);
  sub_220D14A4C();
  return (v21)(v16, v10);
}

uint64_t sub_220D91AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a2;
  v20 = a1;
  v21 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A0, &qword_220DC6F88);
  sub_220DBF8A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A8, &qword_220DC6F90);
  sub_220DBF8A0();
  sub_220DBFB20();
  v7 = MEMORY[0x277CE0740];
  v30 = a4;
  v31 = sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88, MEMORY[0x277CE0740]);
  WitnessTable = swift_getWitnessTable();
  v28 = a4;
  v29 = sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90, v7);
  v26 = WitnessTable;
  v27 = swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = sub_220DC0030();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  v22 = a3;
  v23 = a4;
  v24 = v19;
  v25 = v20;
  sub_220DBF9E0();
  sub_220DC0020();
  swift_getWitnessTable();
  sub_220D14A4C();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_220D14A4C();
  return (v16)(v15, v9);
}

uint64_t sub_220D91DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v54 = a3;
  v55 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A8, &qword_220DC6F90);
  v6 = sub_220DBF8A0();
  v49 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v44 - v10;
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF962A0, &qword_220DC6F88);
  v14 = sub_220DBF8A0();
  v47 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v46 = &v44 - v18;
  v53 = v6;
  v19 = sub_220DBFB20();
  v51 = *(v19 - 8);
  v52 = v19;
  MEMORY[0x28223BE20](v19);
  v50 = &v44 - v20;
  v21 = *a1;
  v22 = sub_220DBED80();
  (*(a1 + 32))();
  if (v21 >= v22)
  {
    sub_220DBED70();
    v70 = sub_220DBFE70();
    v24 = v54;
    sub_220DBFDB0();

    (*(v11 + 8))(v13, a2);
    v32 = MEMORY[0x277CE0740];
    v33 = sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88, MEMORY[0x277CE0740]);
    v68 = v24;
    v69 = v33;
    swift_getWitnessTable();
    v34 = v46;
    sub_220D14A4C();
    v35 = *(v47 + 8);
    v35(v17, v14);
    sub_220D14A4C();
    v36 = sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90, v32);
    v66 = v24;
    v67 = v36;
    swift_getWitnessTable();
    v31 = v50;
    sub_220D91128(v17, v14);
    v35(v17, v14);
    v35(v34, v14);
  }

  else
  {
    LODWORD(v70) = sub_220DBFB30();
    v23 = v45;
    v24 = v54;
    sub_220DBFDB0();
    (*(v11 + 8))(v13, a2);
    v25 = MEMORY[0x277CE0740];
    v26 = sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90, MEMORY[0x277CE0740]);
    v58 = v24;
    v59 = v26;
    v27 = v53;
    swift_getWitnessTable();
    v28 = v48;
    sub_220D14A4C();
    v29 = *(v49 + 8);
    v29(v23, v27);
    sub_220D14A4C();
    v30 = sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88, v25);
    v56 = v24;
    v57 = v30;
    swift_getWitnessTable();
    v31 = v50;
    sub_220D91220(v23, v14, v27);
    v29(v23, v27);
    v29(v28, v27);
  }

  v37 = MEMORY[0x277CE0740];
  v38 = sub_220CE161C(&qword_27CF962B0, &qword_27CF962A0, &qword_220DC6F88, MEMORY[0x277CE0740]);
  v64 = v24;
  v65 = v38;
  WitnessTable = swift_getWitnessTable();
  v40 = sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90, v37);
  v62 = v24;
  v63 = v40;
  v41 = swift_getWitnessTable();
  v60 = WitnessTable;
  v61 = v41;
  v42 = v52;
  swift_getWitnessTable();
  sub_220D14A4C();
  return (*(v51 + 8))(v31, v42);
}

uint64_t sub_220D924C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_220D924FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_220D9253C(uint64_t result, int a2, int a3)
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

uint64_t sub_220D925AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96298, &qword_220DC6F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ChartPointMarkSeries.init(markers:markStyle:symbolSize:labelFont:fallbackLabelColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = *(a2 + 16);
  *(a5 + 8) = *a2;
  v7 = *(a2 + 32);
  *(a5 + 24) = v6;
  *(a5 + 40) = v7;
  *a5 = result;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 48) = a6;
  return result;
}

uint64_t ChartPointMarkSeries.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96340, &qword_220DC70A0);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v49 - v4;
  v5 = type metadata accessor for ChartPointMarkSeriesContent(0);
  OUTLINED_FUNCTION_6();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v49 - v10);
  v12 = type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0);
  OUTLINED_FUNCTION_6();
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - v16;
  v18 = v1[1];
  v19 = *(v1 + 40);
  v20 = v1[6];
  v21 = *(v1 + 7);
  v22 = *(v1 + 8);
  v59 = *v1;
  v60 = v21;
  if (v19)
  {
    v23 = *(v1 + 3);
    v53 = *(v1 + 4);
    v50 = *(v1 + 2);
    v24 = v18;
    v55 = v9;
    v25 = v5[5];
    v54 = v22;
    v26 = *MEMORY[0x277CE13C8];
    v56 = v15;
    v27 = *&v18;
    v28 = sub_220DC0150();
    v57 = a1;
    v29 = v28;
    OUTLINED_FUNCTION_6();
    v51 = *(v30 + 104);
    v52 = v30 + 104;
    v51(v11 + v25, v26, v29);
    v31 = v59;

    v32 = v50;
    v33 = v23;
    v34 = v23;
    v35 = v53;
    sub_220D92AE8(v27, v50, v34, v53, 1);
    v36 = sqrt(v20);
    *v11 = v31;
    *(v11 + v5[6]) = (v36 - v24) * (v36 - v24);
    v37 = (v11 + v5[7]);
    *v37 = v32;
    v37[1] = v33;
    v37[2] = v35;
    v51(&v17[v12[5]], *MEMORY[0x277CE13C0], v29);
    *v17 = v31;
    *&v17[v12[6]] = v60;
    OUTLINED_FUNCTION_2_33(v12[7]);
    *&v17[v38] = v27;
    v39 = v55;
    sub_220D92AF8(v11, v55, type metadata accessor for ChartPointMarkSeriesContent);
    v61[0] = v39;
    v40 = v56;
    sub_220D92AF8(v17, v56, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
    v61[1] = v40;
    v41 = v58;
    sub_220D77318(v61, v58);

    sub_220D92B58(v17, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
    sub_220D92B58(v11, type metadata accessor for ChartPointMarkSeriesContent);
    sub_220D92B58(v40, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
    sub_220D92B58(v39, type metadata accessor for ChartPointMarkSeriesContent);
    sub_220D92BB0(v41, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96348, &qword_220DC70A8);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v43 = v12[5];
    v44 = *MEMORY[0x277CE13C0];
    v45 = v18;
    sub_220DC0150();
    OUTLINED_FUNCTION_6();
    (*(v46 + 104))(&v17[v43], v44);
    v47 = v60;
    *v17 = v59;
    *&v17[v12[6]] = v47;
    OUTLINED_FUNCTION_2_33(v12[7]);
    *&v17[v48] = v45;
    sub_220D95040(v17, a1, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96348, &qword_220DC70A8);
    swift_storeEnumTagMultiPayload();
  }
}

double sub_220D92AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_220D92AF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D92B58(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220D92BB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96340, &qword_220DC70A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D92C40(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_220D92C80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_220D92CE0()
{
  result = qword_27CF96350;
  if (!qword_27CF96350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96358, &qword_220DC71B8);
    sub_220D92E90(&qword_27CF95EA0, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent, &unk_220DC726C);
    sub_220D92D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96350);
  }

  return result;
}

unint64_t sub_220D92D9C()
{
  result = qword_27CF96360;
  if (!qword_27CF96360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96340, &qword_220DC70A0);
    sub_220D92E90(&qword_27CF95E98, type metadata accessor for ChartPointMarkSeriesContent, &unk_220DC720C);
    sub_220D92E90(&qword_27CF95EA0, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent, &unk_220DC726C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96360);
  }

  return result;
}

uint64_t sub_220D92E90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220D92F00(uint64_t a1)
{
  sub_220D8B17C(319);
  if (v1 <= 0x3F)
  {
    sub_220DC0150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220DC0150();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_220DC0150();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_220D930D8(uint64_t a1)
{
  sub_220D8B17C(319);
  if (v1 <= 0x3F)
  {
    sub_220DC0150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_220D93190@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96388, &unk_220DC72D0);
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v21 - v6;
  v28 = *v1;
  v21[4] = swift_getKeyPath();
  sub_220D92AF8(v1, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_220D95040(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent);

  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EE0, &qword_220DC85D0);
  v21[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96390, &qword_220DC7300);
  v21[1] = sub_220CE161C(&qword_27CF95EE8, &qword_27CF95EE0, &qword_220DC85D0, MEMORY[0x277D83980]);
  v21[0] = sub_220D92E90(&qword_27CF96040, type metadata accessor for DetailChartDataElement, &protocol conformance descriptor for DetailChartDataElement);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96398, &qword_220DC7308);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963A0, &qword_220DC7310);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963A8, &qword_220DC7318);
  v13 = sub_220DBF6F0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963B0, &qword_220DC7320);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v13;
  v25 = v14;
  v26 = MEMORY[0x277CBB468];
  v27 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = sub_220D94DC8();
  v24 = v11;
  v25 = v12;
  v26 = v16;
  v27 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v24 = v10;
  v25 = MEMORY[0x277CE0BD8];
  v26 = v18;
  v27 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_220DC0090();
  sub_220D94E80();
  v19 = v22;
  sub_220DBF490();
  return (*(v5 + 8))(v7, v19);
}

uint64_t sub_220D93588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v67 = a3;
  v4 = sub_220DBF630();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220DBF650();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v60 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v42 - v9;
  v10 = sub_220DBF660();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v58 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220DBF5E0();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x28223BE20](v12);
  v56 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_220DBF600();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963B0, &qword_220DC7320);
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v42 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  MEMORY[0x28223BE20](v16 - 8);
  v42 = &v42 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  MEMORY[0x28223BE20](v18 - 8);
  v44 = sub_220DBF6F0();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963A0, &qword_220DC7310);
  v48 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v22 = &v42 - v21;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96398, &qword_220DC7308);
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v69 = &v42 - v23;
  sub_220DBFA00();
  sub_220DBE560();
  v43 = a1;
  sub_220DBF5A0();

  sub_220DBFA00();
  v73 = *(a1 + *(type metadata accessor for DetailChartDataElement(0) + 20));
  sub_220DBF5A0();

  sub_220DBF6E0();
  v24 = v47;
  sub_220DBF5B0();
  type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0);
  v25 = v55;
  v26 = v46;
  sub_220DBF5F0();
  (*(v50 + 8))(v24, v52);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = MEMORY[0x277CBB468];
  v29 = v44;
  v30 = v49;
  sub_220DBF540();
  (*(v51 + 8))(v26, v30);
  (*(v45 + 8))(v20, v29);
  v72 = v25;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963A8, &qword_220DC7318);
  v73 = v29;
  v74 = v30;
  v75 = v28;
  v76 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_220D94DC8();
  v33 = v68;
  sub_220DBF4B0();
  (*(v48 + 8))(v22, v33);
  v34 = v56;
  sub_220DBF5C0();
  v35 = v59;
  sub_220DBF620();
  sub_220DBF640();
  v36 = v62;
  v37 = *(v61 + 8);
  v37(v35, v62);
  sub_220DBF620();
  sub_220DBF640();
  v37(v35, v36);
  v38 = v58;
  sub_220DBF610();
  v70 = v43;
  v71 = v25;
  sub_220DC0120();
  v73 = v68;
  v74 = v52;
  v75 = v31;
  v76 = v32;
  swift_getOpaqueTypeConformance2();
  v39 = v53;
  v40 = v69;
  sub_220DBF470();
  (*(v65 + 8))(v38, v66);
  (*(v63 + 8))(v34, v64);
  return (*(v54 + 8))(v40, v39);
}

uint64_t sub_220D93F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0) + 20);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963A8, &qword_220DC7318) + 36);
  v8 = sub_220DC0150();
  (*(*(v8 - 8) + 16))(a3 + v7, a2 + v6, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963C8, &qword_220DC7328);
  v10 = *(*(v9 - 8) + 16);

  return v10(a3, a1, v9);
}

uint64_t sub_220D94044@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for DetailChartDataElement(0);
  v6 = static ChartValueLabel.with(label:)(a1 + *(v5 + 32));
  v8 = v7;
  v10 = v9;
  type metadata accessor for ChartPointMarkBorderAndAnnotationSeriesContent(0);
  v23 = sub_220DBFD10();
  v12 = v11;
  v14 = v13;
  sub_220CF0978(v6, v8, v10 & 1);

  if (!*(a1 + *(v5 + 44)))
  {
  }

  v15 = sub_220DBFCF0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_220CF0978(v23, v12, v14 & 1);

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v21;
  return result;
}

uint64_t sub_220D941B0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for ChartPointMarkSeriesContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963D8, &qword_220DC7340);
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v21 - v6;
  v28 = *v1;
  v21[4] = swift_getKeyPath();
  sub_220D92AF8(v1, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartPointMarkSeriesContent);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_220D95040(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ChartPointMarkSeriesContent);

  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EE0, &qword_220DC85D0);
  v21[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963E0, &qword_220DC7348);
  v21[1] = sub_220CE161C(&qword_27CF95EE8, &qword_27CF95EE0, &qword_220DC85D0, MEMORY[0x277D83980]);
  v21[0] = sub_220D92E90(&qword_27CF96040, type metadata accessor for DetailChartDataElement, &protocol conformance descriptor for DetailChartDataElement);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963E8, &qword_220DC7350);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963F0, &qword_220DC7358);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963F8, &qword_220DC7360);
  v13 = sub_220DBF6F0();
  v14 = sub_220DBF600();
  v15 = sub_220D92E90(&qword_27CF95DA0, MEMORY[0x277CBB3B8], MEMORY[0x277CBB3B0]);
  v24 = v13;
  v25 = v14;
  v26 = MEMORY[0x277CBB468];
  v27 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_220D95164();
  v24 = v11;
  v25 = v12;
  v26 = OpaqueTypeConformance2;
  v27 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v24 = v10;
  v25 = MEMORY[0x277CDF838];
  v26 = v18;
  v27 = MEMORY[0x277CDF828];
  swift_getOpaqueTypeConformance2();
  sub_220DC0090();
  sub_220D9521C();
  v19 = v22;
  sub_220DBF490();
  return (*(v5 + 8))(v7, v19);
}

uint64_t sub_220D945B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v37 = a3;
  v45 = sub_220DBF600();
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = sub_220DBF6F0();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963F0, &qword_220DC7358);
  v44 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v39 = &v34 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963E8, &qword_220DC7350);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v34 - v11;
  sub_220DBFA00();
  sub_220DBE560();
  sub_220DBF5A0();

  sub_220DBFA00();
  v13 = *(a1 + *(type metadata accessor for DetailChartDataElement(0) + 20));
  *&v56 = v13;
  v14 = v12;
  sub_220DBF5A0();

  v15 = v38;

  sub_220DBF6E0();
  v16 = v43;
  sub_220DBF5B0();
  v17 = sub_220D92E90(&qword_27CF95DA0, MEMORY[0x277CBB3B8], MEMORY[0x277CBB3B0]);
  v18 = MEMORY[0x277CBB468];
  v19 = v39;
  v20 = v41;
  v21 = v45;
  sub_220DBF540();
  v22 = v21;
  (*(v46 + 8))(v16, v21);
  (*(v42 + 8))(v9, v20);
  v23 = v47;
  v48 = v47;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963F8, &qword_220DC7360);
  *&v56 = v20;
  *(&v56 + 1) = v22;
  *&v57 = v18;
  *(&v57 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_220D95164();
  sub_220DBF4B0();
  (*(v44 + 8))(v19, v15);
  result = type metadata accessor for ChartPointMarkSeriesContent(0);
  v28 = v23 + *(result + 28);
  v30 = *(v28 + 8);
  v29 = *(v28 + 16);
  v31 = v13 + 0.01;
  if (v13 > v13 + 0.01)
  {
    v31 = v13;
  }

  if (v13 > v31 || v30 > v29)
  {
    __break(1u);
  }

  else
  {
    if (v30 >= v29)
    {
    }

    else
    {
      sub_220DC00D0();
    }

    sub_220DC0190();
    sub_220DC0180();
    sub_220DBF7B0();
    v53 = v56;
    v54 = v57;
    v55 = v58;
    v49 = v15;
    v50 = v24;
    v51 = OpaqueTypeConformance2;
    v52 = v26;
    swift_getOpaqueTypeConformance2();
    v33 = v36;
    sub_220DBF4A0();
    sub_220D7AE00(&v56);
    return (*(v35 + 8))(v14, v33);
  }

  return result;
}

uint64_t sub_220D94C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ChartPointMarkSeriesContent(0) + 20);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF963F8, &qword_220DC7360) + 36);
  v8 = sub_220DC0150();
  (*(*(v8 - 8) + 16))(a3 + v7, a2 + v6, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96410, &unk_220DC7368);
  v10 = *(*(v9 - 8) + 16);

  return v10(a3, a1, v9);
}

unint64_t sub_220D94DC8()
{
  result = qword_27CF963B8;
  if (!qword_27CF963B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963A8, &qword_220DC7318);
    sub_220CE161C(&qword_27CF963C0, &qword_27CF963C8, &qword_220DC7328, MEMORY[0x277CE0520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF963B8);
  }

  return result;
}

unint64_t sub_220D94E80()
{
  result = qword_27CF963D0;
  if (!qword_27CF963D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96388, &unk_220DC72D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96398, &qword_220DC7308);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963A0, &qword_220DC7310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963A8, &qword_220DC7318);
    sub_220DBF6F0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963B0, &qword_220DC7320);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_220D94DC8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF963D0);
  }

  return result;
}

uint64_t sub_220D95040(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220D950CC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_220D95164()
{
  result = qword_27CF96400;
  if (!qword_27CF96400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963F8, &qword_220DC7360);
    sub_220CE161C(&qword_27CF96408, &qword_27CF96410, &unk_220DC7368, MEMORY[0x277CE0520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96400);
  }

  return result;
}

unint64_t sub_220D9521C()
{
  result = qword_27CF96418;
  if (!qword_27CF96418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963D8, &qword_220DC7340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963E8, &qword_220DC7350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963F0, &qword_220DC7358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF963F8, &qword_220DC7360);
    sub_220DBF6F0();
    sub_220DBF600();
    sub_220D92E90(&qword_27CF95DA0, MEMORY[0x277CBB3B8], MEMORY[0x277CBB3B0]);
    swift_getOpaqueTypeConformance2();
    sub_220D95164();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96418);
  }

  return result;
}

uint64_t get_witness_table_qd__6Charts12ChartContentHD2_AaBPAAE10symbolSizeyQr12CoreGraphics7CGFloatVFQOy7SwiftUI7ForEachVySay17WeatherAppSupport06DetailB11DataElementVGAmcAE10annotation8position9alignment7spacing18overflowResolution7contentQrAA18AnnotationPositionV_AH9AlignmentVAGSgAA0z8OverflowX0Vqd__yXEtAH4ViewRd__lFQOyAcAE16compositingLayer5styleQrqd__AH011PlaceholderC4ViewVyxGXE_tAHA0_Rd__lFQOyAcAE0D0yQrqd__AA0B11SymbolShapeRd__lFQOyAA9PointMarkV_AA05BasicB11SymbolShapeV12strokeBorder9lineWidthQrAG_tFQOy_Qo_Qo__AH08ModifiedC0VyA4_yA15_GAH16_BlendModeEffectVGQo__AH4TextVQo_G_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

__n128 ConditionDetailChartHeaderStringModel.init(title1:title2:title3:subtitle:subtitleTruncationAlternative:symbolName:titleOrder:accessibilityDescription:accessibilityIdentifiers:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = *a12;
  sub_220DBE210();
  OUTLINED_FUNCTION_6();
  (*(v22 + 32))(a9, a1);
  v23 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
  sub_220CEFF68(a2, a9 + v23[5]);
  v24 = (a9 + v23[6]);
  *v24 = a3;
  v24[1] = a4;
  v25 = (a9 + v23[7]);
  *v25 = a5;
  v25[1] = a6;
  v26 = (a9 + v23[8]);
  *v26 = a7;
  v26[1] = a8;
  v27 = (a9 + v23[11]);
  *v27 = a10;
  v27[1] = a11;
  *(a9 + v23[9]) = v21;
  v28 = (a9 + v23[10]);
  *v28 = a13;
  v28[1] = a14;
  v29 = a9 + v23[12];
  v30 = *(a15 + 16);
  *v29 = *a15;
  *(v29 + 16) = v30;
  result = *(a15 + 32);
  v32 = *(a15 + 48);
  *(v29 + 32) = result;
  *(v29 + 48) = v32;
  return result;
}

uint64_t type metadata accessor for ConditionDetailChartHeaderStringModel(uint64_t a1)
{
  result = qword_27CF96438;
  if (!qword_27CF96438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall ConditionDetailChartHeaderStringModel.AccessibilityIdentifiers.init(title1:title2:title3:subtitle:)(WeatherAppSupport::ConditionDetailChartHeaderStringModel::AccessibilityIdentifiers *__return_ptr retstr, Swift::String_optional title1, Swift::String_optional title2, Swift::String_optional title3, Swift::String_optional subtitle)
{
  retstr->title1 = title1;
  retstr->title2 = title2;
  retstr->title3 = title3;
  retstr->subtitle = subtitle;
}

double ConditionDetailChartHeaderStringModel.init(title1:title2:title3:subtitle:subtitleTruncationAlternative:symbolName:titleOrder:accessibilityDescription:accessibilityIdentifiers:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, __int128 *a17)
{
  v52 = a5;
  v53 = a6;
  v49[0] = a3;
  v49[1] = a2;
  v56 = a13;
  v57 = a7;
  v50 = a10;
  v51 = a11;
  v58 = a16;
  v59 = a8;
  v54 = a12;
  v55 = a15;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v49 - v21;
  v23 = sub_220DBE260();
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_1();
  sub_220DBE210();
  OUTLINED_FUNCTION_6_23();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v30 = *a14;
  v31 = a17[1];
  v60 = *a17;
  v61 = v31;
  v32 = a17[3];
  v62 = a17[2];
  v63 = v32;
  sub_220DBE250();
  sub_220DBE220();
  if (a4)
  {

    sub_220DBE250();
    sub_220DBE220();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v33, 1, v17);
  (*(v25 + 32))(a9, v29, v17);
  v34 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
  sub_220CEFF68(v22, a9 + v34[5]);
  v35 = (a9 + v34[6]);
  v36 = v53;
  *v35 = v52;
  v35[1] = v36;
  v37 = (a9 + v34[7]);
  v38 = v59;
  *v37 = v57;
  v37[1] = v38;
  v39 = (a9 + v34[8]);
  v40 = v51;
  *v39 = v50;
  v39[1] = v40;
  v41 = (a9 + v34[11]);
  v42 = v55;
  v43 = v56;
  *v41 = v54;
  v41[1] = v43;
  *(a9 + v34[9]) = v30;
  v44 = (a9 + v34[10]);
  *v44 = v42;
  v44[1] = v58;
  v45 = (a9 + v34[12]);
  v46 = v61;
  *v45 = v60;
  v45[1] = v46;
  result = *&v62;
  v48 = v63;
  v45[2] = v62;
  v45[3] = v48;
  return result;
}

uint64_t ConditionDetailChartHeaderStringModel.TitleOrder.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

uint64_t static ConditionDetailChartHeaderStringModel.AccessibilityIdentifiers.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v34 = a1[5];
      v35 = a2[5];
      v18 = a1[4];
      v19 = a2[6];
      v20 = a2[7];
      v21 = a1[7];
      v22 = a1[6];
      v23 = a2[4];
      v24 = sub_220DC0CA0();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v16 = v20;
      v14 = v19;
      v5 = v18;
      v8 = v34;
      v15 = v35;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v26 = v7;
      v27 = v12;
      v28 = sub_220DC0CA0();
      v12 = v27;
      v7 = v26;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v30 = v7;
      v31 = sub_220DC0CA0();
      v7 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v16)
    {
      v32 = v7 == v14 && v9 == v16;
      if (v32 || (sub_220DC0CA0() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t ConditionDetailChartHeaderStringModel.title1.getter()
{
  OUTLINED_FUNCTION_3();
  sub_220DBE210();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_20();

  return v1(v0);
}

uint64_t ConditionDetailChartHeaderStringModel.title2.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = v1 + *(type metadata accessor for ConditionDetailChartHeaderStringModel(v2) + 20);

  return sub_220CF16F4(v3, v0);
}

uint64_t ConditionDetailChartHeaderStringModel.title3.getter()
{
  type metadata accessor for ConditionDetailChartHeaderStringModel(0);
  OUTLINED_FUNCTION_4_24();
  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.subtitle.getter()
{
  type metadata accessor for ConditionDetailChartHeaderStringModel(0);
  OUTLINED_FUNCTION_4_24();
  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.subtitleTruncationAlternative.getter()
{
  type metadata accessor for ConditionDetailChartHeaderStringModel(0);
  OUTLINED_FUNCTION_4_24();
  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.titleOrder.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  result = type metadata accessor for ConditionDetailChartHeaderStringModel(v2);
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t ConditionDetailChartHeaderStringModel.accessibilityDescription.getter()
{
  type metadata accessor for ConditionDetailChartHeaderStringModel(0);
  OUTLINED_FUNCTION_4_24();
  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.symbolName.getter()
{
  type metadata accessor for ConditionDetailChartHeaderStringModel(0);
  OUTLINED_FUNCTION_4_24();
  return OUTLINED_FUNCTION_20();
}

uint64_t ConditionDetailChartHeaderStringModel.accessibilityIdentifiers.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = (v1 + *(type metadata accessor for ConditionDetailChartHeaderStringModel(v2) + 48));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v5 = v3[3];
  v10 = v3[2];
  v6 = v10;
  v11 = v5;
  *v0 = v9[0];
  v0[1] = v4;
  v0[2] = v6;
  v0[3] = v5;
  return sub_220D95D7C(v9, &v8);
}

uint64_t static ConditionDetailChartHeaderStringModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_220DBE210();
  OUTLINED_FUNCTION_6_23();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v70 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96420, &qword_220DC7378);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - v16;
  if ((sub_220DBE1E0() & 1) == 0)
  {
    goto LABEL_11;
  }

  v71 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
  v18 = *(v71 + 20);
  v19 = *(v14 + 48);
  sub_220CF16F4(a1 + v18, v17);
  sub_220CF16F4(a2 + v18, &v17[v19]);
  OUTLINED_FUNCTION_9_22(v17);
  if (!v20)
  {
    sub_220CF16F4(v17, v13);
    OUTLINED_FUNCTION_9_22(&v17[v19]);
    if (!v20)
    {
      (*(v6 + 32))(v10, &v17[v19], v2);
      sub_220D96224();
      v23 = sub_220DC05B0();
      v24 = *(v6 + 8);
      v24(v10, v2);
      v24(v13, v2);
      sub_220CDA548(v17, &qword_27CF95030, &qword_220DC17E0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    (*(v6 + 8))(v13, v2);
LABEL_10:
    sub_220CDA548(v17, &qword_27CF96420, &qword_220DC7378);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_9_22(&v17[v19]);
  if (!v20)
  {
    goto LABEL_10;
  }

  sub_220CDA548(v17, &qword_27CF95030, &qword_220DC17E0);
LABEL_14:
  v25 = v71;
  OUTLINED_FUNCTION_0_23();
  if (v28)
  {
    if (!v26)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_2_34(v27);
    v31 = v20 && v29 == v30;
    if (!v31 && (sub_220DC0CA0() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v26)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_0_23();
  if (v34)
  {
    if (!v32)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_2_34(v33);
    v37 = v20 && v35 == v36;
    if (!v37 && (sub_220DC0CA0() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v32)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_0_23();
  if (v40)
  {
    if (!v38)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_2_34(v39);
    v43 = v20 && v41 == v42;
    if (!v43 && (sub_220DC0CA0() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v38)
  {
    goto LABEL_11;
  }

  if (*(a1 + v25[9]) == *(a2 + v25[9]))
  {
    v44 = v25[10];
    v45 = *(a1 + v44);
    v46 = *(a1 + v44 + 8);
    v47 = (a2 + v44);
    v48 = v45 == *v47 && v46 == v47[1];
    if (v48 || (sub_220DC0CA0() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_23();
      if (v51)
      {
        if (v49)
        {
          OUTLINED_FUNCTION_2_34(v50);
          v54 = v20 && v52 == v53;
          if (v54 || (sub_220DC0CA0() & 1) != 0)
          {
            goto LABEL_56;
          }
        }
      }

      else if (!v49)
      {
LABEL_56:
        v55 = (a1 + v25[12]);
        v56 = v55[1];
        v80[0] = *v55;
        v80[1] = v56;
        v57 = v55[3];
        v59 = *v55;
        v58 = v55[1];
        v80[2] = v55[2];
        v80[3] = v57;
        v61 = v55[2];
        v60 = v55[3];
        v76 = v59;
        v77 = v58;
        v78 = v61;
        v79 = v60;
        v62 = (a2 + v25[12]);
        v63 = *v62;
        v64 = v62[1];
        v65 = v62[3];
        v81[2] = v62[2];
        v81[3] = v65;
        v66 = v62[1];
        v67 = v62[2];
        v68 = *v62;
        v81[0] = v63;
        v81[1] = v66;
        v72 = v68;
        v73 = v64;
        v69 = v62[3];
        v74 = v67;
        v75 = v69;
        v21 = static ConditionDetailChartHeaderStringModel.AccessibilityIdentifiers.== infix(_:_:)(&v76, &v72);
        v82[0] = v72;
        v82[1] = v73;
        v82[2] = v74;
        v82[3] = v75;
        sub_220D95D7C(v80, v83);
        sub_220D95D7C(v81, v83);
        sub_220D961F4(v82);
        v83[0] = v76;
        v83[1] = v77;
        v83[2] = v78;
        v83[3] = v79;
        sub_220D961F4(v83);
        return v21 & 1;
      }
    }
  }

LABEL_11:
  v21 = 0;
  return v21 & 1;
}

unint64_t sub_220D96224()
{
  result = qword_27CF96428;
  if (!qword_27CF96428)
  {
    sub_220DBE210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96428);
  }

  return result;
}

unint64_t sub_220D96280()
{
  result = qword_27CF96430;
  if (!qword_27CF96430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96430);
  }

  return result;
}

void sub_220D96300(uint64_t a1)
{
  sub_220DBE210();
  if (v1 <= 0x3F)
  {
    sub_220CF0AB4(319);
    if (v2 <= 0x3F)
    {
      sub_220D963C8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220D963C8()
{
  if (!qword_27CF96448)
  {
    v0 = sub_220DC0AE0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF96448);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ConditionDetailChartHeaderStringModel.TitleOrder(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
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

uint64_t sub_220D96508(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_220D9655C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_220D96618(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v92 = a5;
  v103 = a4;
  v88 = a2;
  v94 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95648, &qword_220DC2D00);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  v99 = &v85 - v10;
  sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v89 = v12;
  v90 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_4_4(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v15 = OUTLINED_FUNCTION_18(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v16);
  v18 = &v85 - v17;
  v19 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v93 = v20;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  v27 = &v85 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v30 = v29;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v85 - v35;
  v37 = a6[1];
  v100 = *a6;
  v101 = v37;
  v38 = a6[2];
  v102 = a6[3];
  v40 = a6[4];
  v39 = a6[5];
  v96 = v38;
  v97 = v40;
  v98 = v39;
  v91 = a3;
  sub_220DBE110();
  sub_220DBE110();
  sub_220D287C0();
  v41 = sub_220DBE020();
  v95 = v30;
  v42 = *(v30 + 8);
  v42(v34, v28);
  v43 = v36;
  v44 = v28;
  v42(v43, v28);
  if (v41)
  {
    sub_220CF6B14(v92, v18, &qword_27CF951E0, &unk_220DC1D80);
    OUTLINED_FUNCTION_3_0(v18);
    if (v45)
    {
      v46 = v85;
      OUTLINED_FUNCTION_32_5();
      OUTLINED_FUNCTION_23_12();
      sub_220DBE6A0();
      v41 = v46;
      sub_220DBE390();
      (*(v89 + 8))(v24, v90);
      OUTLINED_FUNCTION_30_7();
      (*(v47 + 8))(v46, v19);
      OUTLINED_FUNCTION_3_0(v18);
      if (!v45)
      {
        sub_220CE1ABC(v18, &qword_27CF951E0, &unk_220DC1D80);
      }
    }

    else
    {
      OUTLINED_FUNCTION_30_7();
      (*(v52 + 32))(v27, v18, v19);
    }

    v53 = sub_220DBE440();
    (*(v41 + 8))(v27, v19);
    if (v53)
    {
      OUTLINED_FUNCTION_19();
      if (!v45)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (!v45)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    OUTLINED_FUNCTION_6_24();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_6_0();
    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_220DC17A0;
    v57 = v99;
    (*(v95 + 16))(v99, v103, v44);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_35_3(v58, v59, v60);
    v105 = v96;
    v106 = v102;
    v107 = v97;
    v108 = v98;
    v61 = sub_220D96EB4(v57, v104);
    v63 = v62;
    sub_220CE1ABC(v57, &qword_27CF95648, &qword_220DC2D00);
    *(v56 + 56) = MEMORY[0x277D837D0];
    *(v56 + 64) = sub_220CEFDB0();
    *(v56 + 32) = v61;
    *(v56 + 40) = v63;
  }

  else
  {
    v48 = v86;
    sub_220CF6B14(v92, v86, &qword_27CF951E0, &unk_220DC1D80);
    OUTLINED_FUNCTION_3_0(v48);
    if (v45)
    {
      v49 = v85;
      OUTLINED_FUNCTION_32_5();
      v50 = v87;
      sub_220DBE6A0();
      v41 = v49;
      sub_220DBE390();
      (*(v89 + 8))(v50, v90);
      OUTLINED_FUNCTION_30_7();
      (*(v51 + 8))(v49, v19);
      OUTLINED_FUNCTION_3_0(v48);
      if (!v45)
      {
        sub_220CE1ABC(v48, &qword_27CF951E0, &unk_220DC1D80);
      }
    }

    else
    {
      OUTLINED_FUNCTION_30_7();
      (*(v54 + 32))(v24, v48, v19);
    }

    v55 = sub_220DBE440();
    (*(v41 + 8))(v24, v19);
    if (v55)
    {
      OUTLINED_FUNCTION_19();
      if (!v45)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (!v45)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    OUTLINED_FUNCTION_6_24();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_6_0();
    v93 = sub_220DBE240();
    v94 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_220DC17C0;
    v95 = *(v95 + 16);
    v66 = v99;
    (v95)(v99, v91, v44);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_35_3(v67, v68, v69);
    v70 = v96;
    v71 = v97;
    v105 = v96;
    v106 = v102;
    v72 = v98;
    v107 = v97;
    v108 = v98;
    v73 = sub_220D96EB4(v66, v104);
    v75 = v74;
    sub_220CE1ABC(v66, &qword_27CF95648, &qword_220DC2D00);
    *(v65 + 56) = MEMORY[0x277D837D0];
    v76 = sub_220CEFDB0();
    *(v65 + 64) = v76;
    *(v65 + 32) = v73;
    *(v65 + 40) = v75;
    (v95)(v66, v103, v44);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_35_3(v77, v78, v79);
    v105 = v70;
    v106 = v102;
    v107 = v71;
    v108 = v72;
    v80 = sub_220D96EB4(v66, v104);
    v82 = v81;
    sub_220CE1ABC(v66, &qword_27CF95648, &qword_220DC2D00);
    *(v65 + 96) = MEMORY[0x277D837D0];
    *(v65 + 104) = v76;
    *(v65 + 72) = v80;
    *(v65 + 80) = v82;
  }

  v83 = sub_220DC05F0();

  return v83;
}