_BYTE *storeEnumTagSinglePayload for WidgetExposureEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C20994()
{
  result = qword_27CF7B988;
  if (!qword_27CF7B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B988);
  }

  return result;
}

unint64_t sub_220C209EC()
{
  result = qword_27CF7B990;
  if (!qword_27CF7B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B990);
  }

  return result;
}

unint64_t sub_220C20A44()
{
  result = qword_27CF7B998;
  if (!qword_27CF7B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B998);
  }

  return result;
}

uint64_t sub_220C20B60()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_2812CF960);
  __swift_project_value_buffer(v0, qword_2812CF960);
  return sub_220CA0244();
}

uint64_t ComponentExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ComponentExposureEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t ComponentExposureEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentExposureEvent.timedData.setter()
{
  OUTLINED_FUNCTION_13_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentExposureEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentExposureEvent.orientationData.setter()
{
  OUTLINED_FUNCTION_13_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentExposureEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentExposureEvent.locationData.setter()
{
  OUTLINED_FUNCTION_13_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentExposureEvent.hostViewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentExposureEvent.hostViewData.setter()
{
  OUTLINED_FUNCTION_13_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentExposureEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentExposureEvent.privateUserData.setter()
{
  OUTLINED_FUNCTION_13_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentExposureEvent.componentData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentExposureEvent.componentData.setter()
{
  OUTLINED_FUNCTION_13_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentExposureEvent.componentPositionData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentExposureEvent.componentPositionData.setter()
{
  OUTLINED_FUNCTION_13_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t ComponentExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for ComponentExposureEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0();
  v9 = OUTLINED_FUNCTION_16_0();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v11 = OUTLINED_FUNCTION_16_0();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v13 = OUTLINED_FUNCTION_16_0();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
  OUTLINED_FUNCTION_0_0();
  v15 = OUTLINED_FUNCTION_16_0();
  v16(v15);
  v17 = *(v4 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
  OUTLINED_FUNCTION_0_0();
  v19 = *(v18 + 104);

  return v19(a1 + v17, v2);
}

uint64_t ComponentExposureEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t ComponentExposureEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ComponentExposureEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ComponentExposureEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ComponentExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

__n128 ComponentExposureEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for ComponentExposureEvent.Model(v2) + 28));
  *v0 = result;
  return result;
}

uint64_t ComponentExposureEvent.Model.hostViewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ComponentExposureEvent.Model(v2) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t ComponentExposureEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ComponentExposureEvent.Model(v2) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t ComponentExposureEvent.Model.componentData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ComponentExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

double ComponentExposureEvent.Model.componentPositionData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for ComponentExposureEvent.Model(v2) + 44));
  *v0 = result;
  return result;
}

uint64_t ComponentExposureEvent.Model.init(eventData:timedData:orientationData:locationData:hostViewData:privateUserData:componentData:componentPositionData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a3;
  v14 = *a4;
  v15 = a4[1];
  v16 = *a5;
  v17 = a5[1];
  v18 = *(a5 + 8);
  v30 = a6[1];
  v31 = *a6;
  v19 = *(a6 + 4);
  v20 = *(a6 + 20);
  v32 = *a7;
  sub_220CA0494();
  OUTLINED_FUNCTION_0_0();
  v22 = *a8;
  (*(v21 + 32))(a9, a1);
  v23 = type metadata accessor for ComponentExposureEvent.Model(0);
  v24 = v23[5];
  sub_220CA04D4();
  OUTLINED_FUNCTION_0_0();
  result = (*(v25 + 32))(a9 + v24, a2);
  *(a9 + v23[6]) = v13;
  v27 = (a9 + v23[7]);
  *v27 = v14;
  v27[1] = v15;
  v28 = a9 + v23[8];
  *v28 = v16;
  *(v28 + 8) = v17;
  *(v28 + 16) = v18;
  v29 = a9 + v23[9];
  *v29 = v31;
  *(v29 + 8) = v30;
  *(v29 + 16) = v19;
  *(v29 + 20) = v20;
  *(a9 + v23[10]) = v32;
  *(a9 + v23[11]) = v22;
  return result;
}

uint64_t sub_220C21AA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7765695674736F68 && a2 == 0xEC00000061746144;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5565746176697270 && a2 == 0xEF61746144726573;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E656E6F706D6F63 && a2 == 0xED00006174614474;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000015 && 0x8000000220CB4C90 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_220CA1154();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220C21D54(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x4464656D6974;
      goto LABEL_5;
    case 2:
      v3 = 0x746E6569726FLL;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 0x7765695674736F68;
      break;
    case 5:
      result = 0x5565746176697270;
      break;
    case 6:
      result = 0x6E656E6F706D6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C21E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C21AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C21E90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C21D4C();
  *a1 = result;
  return result;
}

uint64_t sub_220C21EB8(uint64_t a1)
{
  v2 = sub_220C22284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C21EF4(uint64_t a1)
{
  v2 = sub_220C22284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComponentExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B8, &qword_220CA39B0);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C22284();
  sub_220CA1254();
  LOBYTE(v59) = 0;
  v11 = sub_220CA0494();
  OUTLINED_FUNCTION_7();
  v14 = sub_220C04F84(v12, v13, MEMORY[0x277CEAEB8]);
  OUTLINED_FUNCTION_17(v3, &v59, v5, v11, v14);
  if (!v2)
  {
    v15 = type metadata accessor for ComponentExposureEvent.Model(0);
    v16 = v15[5];
    LOBYTE(v59) = 1;
    v17 = sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    v20 = sub_220C04F84(v18, v19, MEMORY[0x277CEAED8]);
    OUTLINED_FUNCTION_17(v3 + v16, &v59, v5, v17, v20);
    LOWORD(v59) = *(v3 + v15[6]);
    v62 = 2;
    sub_220BFE5BC();
    v21 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v21, v22, v23, v24, v25);
    v59 = *(v3 + v15[7]);
    v62 = 3;
    sub_220C05568();
    v26 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v26, v27, v28, v29, v30);
    v31 = v3 + v15[8];
    v32 = *v31;
    v33 = *(v31 + 8);
    LOWORD(v31) = *(v31 + 16);
    *&v59 = v32;
    *(&v59 + 1) = v33;
    LOWORD(v60) = v31;
    v62 = 4;
    v34 = sub_220C04820();

    v35 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v35, v36, v37, v38, v34);
    if (v34)
    {
    }

    else
    {

      v39 = v3 + v15[9];
      v40 = *v39;
      v41 = *(v39 + 8);
      v42 = *(v39 + 16);
      LOBYTE(v39) = *(v39 + 20);
      *&v59 = v40;
      *(&v59 + 1) = v41;
      v60 = v42;
      v61 = v39;
      v62 = 5;
      v43 = sub_220BFF788();

      v44 = OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17(v44, v45, v46, v47, v43);

      if (!v43)
      {
        LOBYTE(v59) = *(v3 + v15[10]);
        v62 = 6;
        sub_220C222D8();
        v48 = OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_17(v48, v49, v50, v51, v52);
        *&v59 = *(v3 + v15[11]);
        v62 = 7;
        sub_220C2232C();
        v53 = OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_17(v53, v54, v55, v56, v57);
      }
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C22284()
{
  result = qword_27CF7B9C0;
  if (!qword_27CF7B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B9C0);
  }

  return result;
}

unint64_t sub_220C222D8()
{
  result = qword_2812D06D0;
  if (!qword_2812D06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D06D0);
  }

  return result;
}

unint64_t sub_220C2232C()
{
  result = qword_2812CFC08;
  if (!qword_2812CFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC08);
  }

  return result;
}

uint64_t ComponentExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v44 = v4;
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v7 = v6 - v5;
  sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v46 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v12 = v11 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9C8, &qword_220CA39B8);
  OUTLINED_FUNCTION_3();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v47 = type metadata accessor for ComponentExposureEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v21 = v20 - v19;
  v22 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_220C22284();
  v43 = v17;
  v23 = v48;
  sub_220CA1234();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v48 = v14;
  LOBYTE(v50) = 0;
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v24, v25, MEMORY[0x277CEAEC0]);
  sub_220CA1034();
  (*(v46 + 32))(v21, v12);
  LOBYTE(v50) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v26, v27, MEMORY[0x277CEAEE0]);
  v28 = v45;
  sub_220CA1034();
  v29 = v47;
  (*(v44 + 32))(v21 + *(v47 + 20), v7, v28);
  v53 = 2;
  sub_220BFE564();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v21 + v29[6]) = v50;
  v53 = 3;
  sub_220C05514();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v21 + v29[7]) = v50;
  v53 = 4;
  sub_220C0449C();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  v30 = *(&v50 + 1);
  v31 = v51;
  v32 = v21 + v29[8];
  *v32 = v50;
  *(v32 + 8) = v30;
  *(v32 + 16) = v31;
  v53 = 5;
  sub_220BFF730();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  v33 = *(&v50 + 1);
  v34 = v51;
  v35 = v52;
  v36 = v21 + v29[9];
  *v36 = v50;
  *(v36 + 8) = v33;
  *(v36 + 16) = v34;
  *(v36 + 20) = v35;
  v53 = 6;
  sub_220C22978();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v21 + v29[10]) = v50;
  v53 = 7;
  sub_220C229CC();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  v37 = OUTLINED_FUNCTION_15_2();
  v38(v37);
  *(v21 + v29[11]) = v50;
  sub_220C22A20(v21, v41);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_220C22A84(v21);
}

unint64_t sub_220C22978()
{
  result = qword_2812D06C8;
  if (!qword_2812D06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D06C8);
  }

  return result;
}

unint64_t sub_220C229CC()
{
  result = qword_2812CFC00;
  if (!qword_2812CFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC00);
  }

  return result;
}

uint64_t sub_220C22A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C22A84(uint64_t a1)
{
  v2 = type metadata accessor for ComponentExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C22B48(uint64_t a1)
{
  sub_220C04EB8(319);
  if (v1 <= 0x3F)
  {
    sub_220C05010(319);
    if (v2 <= 0x3F)
    {
      sub_220C05158(319, &qword_2812D0E20, sub_220BFE564, sub_220BFE5BC, &type metadata for OrientationData);
      if (v3 <= 0x3F)
      {
        sub_220C05158(319, &qword_2812D0E38, sub_220C05514, sub_220C05568, &type metadata for LocationData);
        if (v4 <= 0x3F)
        {
          sub_220C05158(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820, &type metadata for ViewData);
          if (v5 <= 0x3F)
          {
            sub_220C05158(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
            if (v6 <= 0x3F)
            {
              sub_220C05158(319, &qword_2812D0E30, sub_220C22978, sub_220C222D8, &type metadata for ComponentData);
              if (v7 <= 0x3F)
              {
                sub_220C05158(319, &qword_2812D0DF8, sub_220C229CC, sub_220C2232C, &type metadata for ComponentPositionData);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220C22DD4(uint64_t a1)
{
  result = sub_220CA0494();
  if (v2 <= 0x3F)
  {
    result = sub_220CA04D4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComponentExposureEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ComponentExposureEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C23004()
{
  result = qword_27CF7B9E0;
  if (!qword_27CF7B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B9E0);
  }

  return result;
}

unint64_t sub_220C2305C()
{
  result = qword_27CF7B9E8;
  if (!qword_27CF7B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B9E8);
  }

  return result;
}

unint64_t sub_220C230B4()
{
  result = qword_27CF7B9F0;
  if (!qword_27CF7B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B9F0);
  }

  return result;
}

uint64_t sub_220C231D0()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7BA28);
  __swift_project_value_buffer(v0, qword_27CF7BA28);
  return sub_220CA0244();
}

uint64_t LocationExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t LocationExposureEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t LocationExposureEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationExposureEvent.timedData.setter()
{
  OUTLINED_FUNCTION_15_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationExposureEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationExposureEvent.orientationData.setter()
{
  OUTLINED_FUNCTION_15_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationExposureEvent.locationListPositionData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationExposureEvent.locationListPositionData.setter()
{
  OUTLINED_FUNCTION_15_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationExposureEvent.temperatureScaleData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationExposureEvent.temperatureScaleData.setter()
{
  OUTLINED_FUNCTION_15_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationExposureEvent.locationConditionData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationExposureEvent.locationConditionData.setter()
{
  OUTLINED_FUNCTION_15_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationExposureEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationExposureEvent.locationData.setter()
{
  OUTLINED_FUNCTION_15_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationExposureEvent.hostViewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationExposureEvent.hostViewData.setter()
{
  OUTLINED_FUNCTION_15_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationExposureEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationExposureEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationExposureEvent.privateUserData.setter()
{
  OUTLINED_FUNCTION_15_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for LocationExposureEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
  OUTLINED_FUNCTION_0_0();
  v9 = OUTLINED_FUNCTION_16_0();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_0_0();
  v11 = OUTLINED_FUNCTION_16_0();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_0_0();
  v13 = OUTLINED_FUNCTION_16_0();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0();
  v15 = OUTLINED_FUNCTION_16_0();
  v16(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v17 = OUTLINED_FUNCTION_16_0();
  v18(v17);
  v19 = *(v4 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v21 = *(v20 + 104);

  return v21(a1 + v19, v2);
}

uint64_t LocationExposureEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t LocationExposureEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationExposureEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationExposureEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for LocationExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t LocationExposureEvent.Model.locationListPositionData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for LocationExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t LocationExposureEvent.Model.temperatureScaleData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for LocationExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

double LocationExposureEvent.Model.locationConditionData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = v1 + *(type metadata accessor for LocationExposureEvent.Model(v2) + 36);
  v4 = *(v3 + 12);
  *v0 = *v3;
  result = *(v3 + 4);
  *(v0 + 4) = result;
  *(v0 + 12) = v4;
  return result;
}

__n128 LocationExposureEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for LocationExposureEvent.Model(v2) + 40));
  *v0 = result;
  return result;
}

uint64_t LocationExposureEvent.Model.hostViewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for LocationExposureEvent.Model(v2) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t LocationExposureEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for LocationExposureEvent.Model(v2) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t LocationExposureEvent.Model.init(eventData:timedData:orientationData:locationListPositionData:temperatureScaleData:locationConditionData:locationData:hostViewData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, int *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v14 = *a3;
  v15 = *a4;
  v16 = *a5;
  v17 = *a6;
  v18 = *(a6 + 3);
  v19 = *a7;
  v20 = a7[1];
  v21 = a8[1];
  v33 = *a8;
  v32 = *(a8 + 8);
  v36 = a10[1];
  v37 = *a10;
  v34 = *(a10 + 20);
  v35 = *(a10 + 4);
  sub_220CA0494();
  OUTLINED_FUNCTION_0_0();
  v23 = *(a6 + 4);
  (*(v22 + 32))(a9, a1);
  v24 = type metadata accessor for LocationExposureEvent.Model(0);
  v25 = v24[5];
  sub_220CA04D4();
  OUTLINED_FUNCTION_0_0();
  result = (*(v26 + 32))(a9 + v25, a2);
  *(a9 + v24[6]) = v14;
  *(a9 + v24[7]) = v15;
  *(a9 + v24[8]) = v16;
  v28 = a9 + v24[9];
  *v28 = v17;
  *(v28 + 4) = v23;
  *(v28 + 12) = v18;
  v29 = (a9 + v24[10]);
  *v29 = v19;
  v29[1] = v20;
  v30 = a9 + v24[11];
  *v30 = v33;
  *(v30 + 8) = v21;
  *(v30 + 16) = v32;
  v31 = a9 + v24[12];
  *v31 = v37;
  *(v31 + 8) = v36;
  *(v31 + 16) = v35;
  *(v31 + 20) = v34;
  return result;
}

uint64_t sub_220C242E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x8000000220CB4CB0 == a2;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000220CB4B90 == a2;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x8000000220CB4CD0 == a2;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7765695674736F68 && a2 == 0xEC00000061746144;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_220CA1154();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_220C245E0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x4464656D6974;
      goto LABEL_5;
    case 2:
      v3 = 0x746E6569726FLL;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0x7765695674736F68;
      break;
    case 8:
      result = 0x5565746176697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C24710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C242E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C24738@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C245D8();
  *a1 = result;
  return result;
}

uint64_t sub_220C24760(uint64_t a1)
{
  v2 = sub_220C24B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C2479C(uint64_t a1)
{
  v2 = sub_220C24B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA50, &qword_220CA3C28);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C24B68();
  sub_220CA1254();
  LOBYTE(v66) = 0;
  v11 = sub_220CA0494();
  OUTLINED_FUNCTION_7();
  v14 = sub_220C04F84(v12, v13, MEMORY[0x277CEAEB8]);
  OUTLINED_FUNCTION_17(v3, &v66, v5, v11, v14);
  if (!v2)
  {
    v15 = type metadata accessor for LocationExposureEvent.Model(0);
    v16 = v15[5];
    LOBYTE(v66) = 1;
    v17 = sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    v20 = sub_220C04F84(v18, v19, MEMORY[0x277CEAED8]);
    OUTLINED_FUNCTION_17(v3 + v16, &v66, v5, v17, v20);
    LOWORD(v66) = *(v3 + v15[6]);
    v69 = 2;
    sub_220BFE5BC();
    v21 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v21, v22, v23, v24, v25);
    LODWORD(v66) = *(v3 + v15[7]);
    v69 = 3;
    sub_220C05418();
    v26 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v26, v27, v28, v29, v30);
    LOBYTE(v66) = *(v3 + v15[8]);
    v69 = 4;
    sub_220BFF604();
    v31 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v31, v32, v33, v34, v35);
    v36 = v3 + v15[9];
    v37 = *(v36 + 12);
    LOBYTE(v66) = *v36;
    *(&v66 + 4) = *(v36 + 4);
    HIDWORD(v66) = v37;
    v69 = 5;
    sub_220C054C0();
    v38 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v38, v39, v40, v41, v42);
    v66 = *(v3 + v15[10]);
    v69 = 6;
    sub_220C05568();
    v43 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v43, v44, v45, v46, v47);
    v48 = v3 + v15[11];
    v49 = *v48;
    v50 = *(v48 + 8);
    LOWORD(v48) = *(v48 + 16);
    *&v66 = v49;
    *(&v66 + 1) = v50;
    LOWORD(v67) = v48;
    v69 = 7;
    v51 = sub_220C04820();

    v52 = OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17(v52, v53, v54, v55, v51);

    if (!v51)
    {
      v56 = v3 + v15[12];
      v57 = *v56;
      v58 = *(v56 + 8);
      v59 = *(v56 + 16);
      LOBYTE(v56) = *(v56 + 20);
      *&v66 = v57;
      *(&v66 + 1) = v58;
      v67 = v59;
      v68 = v56;
      v69 = 8;
      v60 = sub_220BFF788();

      v61 = OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17(v61, v62, v63, v64, v60);
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C24B68()
{
  result = qword_27CF7BA58;
  if (!qword_27CF7BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BA58);
  }

  return result;
}

uint64_t LocationExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v67 = v4;
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v7 = v6 - v5;
  v8 = sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v69 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v13 = v12 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA60, &qword_220CA3C30);
  OUTLINED_FUNCTION_3();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v70 = type metadata accessor for LocationExposureEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11();
  v22 = v21 - v20;
  v23 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_220C24B68();
  v66 = v18;
  v24 = v71;
  sub_220CA1234();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  v71 = v15;
  LOBYTE(v73) = 0;
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v25, v26, MEMORY[0x277CEAEC0]);
  sub_220CA1034();
  (*(v69 + 32))(v22, v13, v8);
  LOBYTE(v73) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v27, v28, MEMORY[0x277CEAEE0]);
  v29 = v68;
  sub_220CA1034();
  v30 = v70;
  (*(v67 + 32))(v22 + v70[5], v7, v29);
  v76 = 2;
  sub_220BFE564();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v22 + v30[6]) = v73;
  v76 = 3;
  sub_220C053C4();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v22 + v30[7]) = v73;
  v76 = 4;
  sub_220BFF5AC();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_18(v31, v32, v33, v34);
  *(v22 + v30[8]) = v73;
  v76 = 5;
  sub_220C0546C();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_18(v35, v36, v37, v38);
  v39 = HIDWORD(v73);
  v40 = v22 + v30[9];
  *v40 = v73;
  *(v40 + 4) = *(&v73 + 4);
  *(v40 + 12) = v39;
  v76 = 6;
  sub_220C05514();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_18(v41, v42, v43, v44);
  *(v22 + v30[10]) = v73;
  v76 = 7;
  sub_220C0449C();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_18(v45, v46, v47, v48);
  v49 = *(&v73 + 1);
  v50 = v74;
  v51 = v22 + v70[11];
  *v51 = v73;
  *(v51 + 8) = v49;
  *(v51 + 16) = v50;
  v76 = 8;
  sub_220BFF730();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_18(v52, v53, v54, v55);
  v56 = OUTLINED_FUNCTION_11_3();
  v57(v56);
  v58 = *(&v73 + 1);
  v59 = v74;
  v60 = v75;
  v61 = v22 + v70[12];
  *v61 = v73;
  *(v61 + 8) = v58;
  *(v61 + 16) = v59;
  *(v61 + 20) = v60;
  sub_220C251EC(v22, v64);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return sub_220C25250(v22);
}

uint64_t sub_220C251EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C25250(uint64_t a1)
{
  v2 = type metadata accessor for LocationExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C25314(uint64_t a1)
{
  sub_220C04EB8(319);
  if (v1 <= 0x3F)
  {
    sub_220C05010(319);
    if (v2 <= 0x3F)
    {
      sub_220C051D4(319, &qword_2812D0E20, sub_220BFE564, sub_220BFE5BC, &type metadata for OrientationData);
      if (v3 <= 0x3F)
      {
        sub_220C051D4(319, &qword_2812D0DE8, sub_220C053C4, sub_220C05418, &type metadata for LocationListPositionData);
        if (v4 <= 0x3F)
        {
          sub_220C051D4(319, &qword_2812D0E00, sub_220BFF5AC, sub_220BFF604, &type metadata for TemperatureScaleData);
          if (v5 <= 0x3F)
          {
            sub_220C051D4(319, &qword_2812D0DF0, sub_220C0546C, sub_220C054C0, &type metadata for LocationConditionData);
            if (v6 <= 0x3F)
            {
              sub_220C051D4(319, &qword_2812D0E38, sub_220C05514, sub_220C05568, &type metadata for LocationData);
              if (v7 <= 0x3F)
              {
                sub_220C051D4(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820, &type metadata for ViewData);
                if (v8 <= 0x3F)
                {
                  sub_220C051D4(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t sub_220C255F0(uint64_t a1)
{
  result = sub_220CA0494();
  if (v2 <= 0x3F)
  {
    result = sub_220CA04D4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationExposureEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C2579C()
{
  result = qword_27CF7BA88;
  if (!qword_27CF7BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BA88);
  }

  return result;
}

unint64_t sub_220C257F4()
{
  result = qword_27CF7BA90;
  if (!qword_27CF7BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BA90);
  }

  return result;
}

unint64_t sub_220C2584C()
{
  result = qword_27CF7BA98;
  if (!qword_27CF7BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BA98);
  }

  return result;
}

uint64_t sub_220C25998(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x8000000220CB4CF0 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000031 && 0x8000000220CB4D10 == a2;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000030 && 0x8000000220CB4D50 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000002ALL && 0x8000000220CB4D90 == a2;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000029 && 0x8000000220CB4DC0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_220CA1154();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_220C25B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C25998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C25B60(uint64_t a1)
{
  v2 = sub_220C05E00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C25B9C(uint64_t a1)
{
  v2 = sub_220C05E00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationSettingsData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BAA8, &qword_220CA3EB8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C05E00();
  sub_220CA1234();
  if (!v2)
  {
    v23 = 0;
    OUTLINED_FUNCTION_0_6();
    v11 = sub_220CA1004();
    v22 = 1;
    OUTLINED_FUNCTION_0_6();
    v12 = sub_220CA0FB4();
    v21 = 2;
    OUTLINED_FUNCTION_0_6();
    v18 = sub_220CA0FB4();
    v20 = 3;
    OUTLINED_FUNCTION_0_6();
    v17 = sub_220CA0FB4();
    v19 = 4;
    OUTLINED_FUNCTION_0_6();
    v14 = sub_220CA0FB4();
    (*(v7 + 8))(v10, v5);
    *a2 = v11 & 1;
    a2[1] = v12;
    v15 = v17;
    a2[2] = v18;
    a2[3] = v15;
    a2[4] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for NotificationSettingsData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C25EC0()
{
  result = qword_27CF7BAB0;
  if (!qword_27CF7BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BAB0);
  }

  return result;
}

uint64_t sub_220C25FDC()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7BAE8);
  __swift_project_value_buffer(v0, qword_27CF7BAE8);
  return sub_220CA0244();
}

uint64_t PrecipitationNotificationMissedEvent.eventData.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1, v0);
}

uint64_t PrecipitationNotificationMissedEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t PrecipitationNotificationMissedEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for PrecipitationNotificationMissedEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1);
}

uint64_t PrecipitationNotificationMissedEvent.locationData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for PrecipitationNotificationMissedEvent(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*PrecipitationNotificationMissedEvent.locationData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for PrecipitationNotificationMissedEvent(v0);
  return nullsub_1;
}

uint64_t PrecipitationNotificationMissedEvent.notificationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for PrecipitationNotificationMissedEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB00, &qword_220CA40D0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1);
}

uint64_t PrecipitationNotificationMissedEvent.notificationData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for PrecipitationNotificationMissedEvent(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB00, &qword_220CA40D0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*PrecipitationNotificationMissedEvent.notificationData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for PrecipitationNotificationMissedEvent(v0);
  return nullsub_1;
}

uint64_t PrecipitationNotificationMissedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for PrecipitationNotificationMissedEvent(0);
  v5 = *(v4 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1();
  (*(v6 + 104))(a1 + v5, v2);
  v7 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB00, &qword_220CA40D0);
  OUTLINED_FUNCTION_1();
  v9 = *(v8 + 104);

  return v9(a1 + v7, v2);
}

uint64_t PrecipitationNotificationMissedEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1, v0);
}

__n128 PrecipitationNotificationMissedEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for PrecipitationNotificationMissedEvent.Model(v2) + 20));
  *v0 = result;
  return result;
}

uint64_t PrecipitationNotificationMissedEvent.Model.notificationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = v1 + *(type metadata accessor for PrecipitationNotificationMissedEvent.Model(v2) + 24);
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  *v0 = *v3;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  *(v0 + 48) = v9;
}

uint64_t PrecipitationNotificationMissedEvent.Model.init(eventData:locationData:notificationData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = *(a3 + 2);
  v10 = *(a3 + 2);
  v11 = *(a3 + 3);
  v12 = *(a3 + 8);
  v13 = *(a3 + 5);
  v14 = *(a3 + 6);
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  (*(v15 + 32))(a4, a1);
  result = type metadata accessor for PrecipitationNotificationMissedEvent.Model(0);
  v17 = (a4 + *(result + 20));
  *v17 = v6;
  v17[1] = v7;
  v18 = a4 + *(result + 24);
  *v18 = v8;
  *(v18 + 8) = v9;
  *(v18 + 16) = v10;
  *(v18 + 24) = v11;
  *(v18 + 32) = v12;
  *(v18 + 40) = v13;
  *(v18 + 48) = v14;
  return result;
}

uint64_t sub_220C266D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000220CB4DF0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_220C267F8(char a1)
{
  if (!a1)
  {
    return 0x746144746E657665;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 0xD000000000000010;
}

uint64_t sub_220C26868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C266D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C26890(uint64_t a1)
{
  v2 = sub_220C26B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C268CC(uint64_t a1)
{
  v2 = sub_220C26B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrecipitationNotificationMissedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB08, &qword_220CA40D8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C26B4C();
  sub_220CA1254();
  LOBYTE(v20) = 0;
  sub_220CA0494();
  sub_220C04FCC(&qword_2812D0D90, MEMORY[0x277CEAEB8]);
  sub_220CA1104();
  if (!v2)
  {
    v11 = type metadata accessor for PrecipitationNotificationMissedEvent.Model(0);
    v20 = *(v3 + *(v11 + 20));
    v26 = 1;
    sub_220C05568();
    sub_220CA1104();
    v12 = v3 + *(v11 + 24);
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    v17 = *(v12 + 40);
    v18 = *(v12 + 48);
    LOBYTE(v20) = *v12;
    DWORD2(v20) = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v26 = 2;
    sub_220C26BA0();

    sub_220CA1104();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C26B4C()
{
  result = qword_27CF7BB10;
  if (!qword_27CF7BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB10);
  }

  return result;
}

unint64_t sub_220C26BA0()
{
  result = qword_27CF7BB18;
  if (!qword_27CF7BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB18);
  }

  return result;
}

uint64_t PrecipitationNotificationMissedEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v27 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB20, &qword_220CA40E0);
  OUTLINED_FUNCTION_3();
  v28 = v9;
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for PrecipitationNotificationMissedEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C26B4C();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v27;
  LOBYTE(v31) = 0;
  sub_220C04FCC(&qword_2812D0D88, MEMORY[0x277CEAEC0]);
  OUTLINED_FUNCTION_2_2(v30, &v31);
  (*(v14 + 32))(v13, v7, v30);
  v37 = 1;
  sub_220C05514();
  OUTLINED_FUNCTION_2_2(&type metadata for LocationData, &v37);
  *&v13[*(v10 + 20)] = v31;
  v37 = 2;
  sub_220C26F38();
  OUTLINED_FUNCTION_2_2(&type metadata for MissedPrecipitationNotificationData, &v37);
  v15 = OUTLINED_FUNCTION_3_1();
  v16(v15);
  v17 = DWORD2(v31);
  v18 = v32;
  v19 = v33;
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v23 = &v13[*(v10 + 24)];
  *v23 = v31;
  *(v23 + 2) = v17;
  *(v23 + 2) = v18;
  *(v23 + 3) = v19;
  *(v23 + 8) = v20;
  *(v23 + 5) = v21;
  *(v23 + 6) = v22;
  sub_220C26F8C(v13, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C26FF0(v13);
}

unint64_t sub_220C26F38()
{
  result = qword_27CF7BB28;
  if (!qword_27CF7BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB28);
  }

  return result;
}

uint64_t sub_220C26F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationNotificationMissedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C26FF0(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationNotificationMissedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C270B4(uint64_t a1)
{
  sub_220C04EB8(319);
  if (v1 <= 0x3F)
  {
    sub_220C271C0(319, &qword_2812D0E38, sub_220C05514, sub_220C05568, &type metadata for LocationData);
    if (v2 <= 0x3F)
    {
      sub_220C271C0(319, &qword_27CF7BB40, sub_220C26F38, sub_220C26BA0, &type metadata for MissedPrecipitationNotificationData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C271C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220C27264(uint64_t a1)
{
  result = sub_220CA0494();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationNotificationMissedEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C273C8()
{
  result = qword_27CF7BB58;
  if (!qword_27CF7BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB58);
  }

  return result;
}

unint64_t sub_220C27420()
{
  result = qword_27CF7BB60;
  if (!qword_27CF7BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB60);
  }

  return result;
}

unint64_t sub_220C27478()
{
  result = qword_27CF7BB68;
  if (!qword_27CF7BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB68);
  }

  return result;
}

uint64_t sub_220C27518(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x79616C7265766FLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C275AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C27518(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C275D8(uint64_t a1)
{
  v2 = sub_220C27790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C27614(uint64_t a1)
{
  v2 = sub_220C27790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapOverlayData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB70, &qword_220CA4310);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C27790();
  sub_220CA1254();
  v12 = v9;
  sub_220C277E4();
  sub_220CA1104();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C27790()
{
  result = qword_27CF7BB78;
  if (!qword_27CF7BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB78);
  }

  return result;
}

unint64_t sub_220C277E4()
{
  result = qword_27CF7BB80;
  if (!qword_27CF7BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB80);
  }

  return result;
}

uint64_t MapOverlayData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB88, &qword_220CA4318);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C27790();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C27998();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C27998()
{
  result = qword_27CF7BB90;
  if (!qword_27CF7BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB90);
  }

  return result;
}

unint64_t sub_220C279F0()
{
  result = qword_27CF7BB98;
  if (!qword_27CF7BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB98);
  }

  return result;
}

unint64_t sub_220C27A48()
{
  result = qword_27CF7BBA0;
  if (!qword_27CF7BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapOverlayData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MapOverlayData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C27C58()
{
  result = qword_27CF7BBA8;
  if (!qword_27CF7BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBA8);
  }

  return result;
}

unint64_t sub_220C27CB0()
{
  result = qword_27CF7BBB0;
  if (!qword_27CF7BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBB0);
  }

  return result;
}

unint64_t sub_220C27D08()
{
  result = qword_27CF7BBB8;
  if (!qword_27CF7BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBB8);
  }

  return result;
}

uint64_t sub_220C27D70(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return MEMORY[0x282200420]();
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_220C27DB8()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 24));
  sub_220C289AC((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_220C27E0C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  if (!*a1)
  {
    if (qword_2812D1768 != -1)
    {
      swift_once();
    }

    v10 = sub_220CA0A84();
    __swift_project_value_buffer(v10, qword_2812D1770);
    v11 = sub_220CA0A64();
    v12 = sub_220CA0DA4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_220BF4000, v11, v12, "WidgetFlushManager starting flush", v13, 2u);
      MEMORY[0x223D95B30](v13, -1, -1);
    }

    v14 = sub_220C280D0();
    *a1 = v14;
    *a2 = v14;
    goto LABEL_13;
  }

  if (swift_task_isCancelled())
  {

    if (qword_2812D1768 != -1)
    {
      swift_once();
    }

    v5 = sub_220CA0A84();
    __swift_project_value_buffer(v5, qword_2812D1770);
    v6 = sub_220CA0A64();
    v7 = sub_220CA0D94();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_220BF4000, v6, v7, "WidgetFlushManager task was cancelled without going idle.", v8, 2u);
      MEMORY[0x223D95B30](v8, -1, -1);
    }

    v9 = sub_220C280D0();

    *a1 = v9;
    *a2 = v9;
LABEL_13:

    return;
  }

  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v15 = sub_220CA0A84();
  __swift_project_value_buffer(v15, qword_2812D1770);
  v16 = sub_220CA0A64();
  v17 = sub_220CA0DA4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_220BF4000, v16, v17, "WidgetFlushManager already flushing", v18, 2u);
    MEMORY[0x223D95B30](v18, -1, -1);
  }

  *a2 = v4;
}

uint64_t sub_220C280D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BBC0, &qword_220CB2070);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_220CA0D34();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  return sub_220C8A5C8(0, 0, v3, &unk_220CA4618, v5);
}

uint64_t sub_220C281B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_220C281D0, 0, 0);
}

uint64_t sub_220C281D0()
{
  OUTLINED_FUNCTION_1_3();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_220C282A4;
  v2 = *(v0 + 16);

  return MEMORY[0x282200830](v2, &unk_220CA4628);
}

void sub_220C282A4()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v2 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_2_3();

    v4();
  }
}

uint64_t sub_220C283CC()
{
  OUTLINED_FUNCTION_1_3();
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_220C28468;

  return sub_220C4D8F8();
}

uint64_t sub_220C28468()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_220C28554, 0, 0);
}

uint64_t sub_220C28554()
{
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v0 = sub_220CA0A84();
  __swift_project_value_buffer(v0, qword_2812D1770);
  v1 = sub_220CA0A64();
  v2 = sub_220CA0DA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_220BF4000, v1, v2, "WidgetFlushManager finishing flush", v3, 2u);
    MEMORY[0x223D95B30](v3, -1, -1);
  }

  sub_220C28670();
  OUTLINED_FUNCTION_2_3();

  return v4();
}

void sub_220C28670()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 24));

  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
}

void sub_220C286B8()
{
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v0 = sub_220CA0A84();
  __swift_project_value_buffer(v0, qword_2812D1770);
  v1 = sub_220CA0A64();
  v2 = sub_220CA0DA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_220BF4000, v1, v2, "WidgetFlushManager flush was cancelled", v3, 2u);
    MEMORY[0x223D95B30](v3, -1, -1);
  }

  sub_220C28670();
}

uint64_t sub_220C2879C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_220C2880C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_220C2885C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_220C288B0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_220C288C8(void *result, int a2)
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

uint64_t sub_220C289C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_220C28A7C;

  return sub_220C281B0(a1, v4, v5, v6);
}

uint64_t sub_220C28A7C()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_2_3();

  return v3();
}

uint64_t sub_220C28B5C()
{
  OUTLINED_FUNCTION_1_3();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_220C28A7C;

  return sub_220C283AC(v3, v0);
}

WeatherAnalytics::OtherConditionsFeedbackData __swiftcall OtherConditionsFeedbackData.init(rainbowsReport:lightningReport:fogReport:hailReport:smokeReport:hazeReport:)(Swift::Bool rainbowsReport, Swift::Bool lightningReport, Swift::Bool fogReport, Swift::Bool hailReport, Swift::Bool smokeReport, Swift::Bool hazeReport)
{
  *v6 = rainbowsReport;
  v6[1] = lightningReport;
  v6[2] = fogReport;
  v6[3] = hailReport;
  v6[4] = smokeReport;
  v6[5] = hazeReport;
  result.rainbowsReport = rainbowsReport;
  return result;
}

uint64_t sub_220C28D40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73776F626E696172 && a2 == 0xEE0074726F706552;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E696E746867696CLL && a2 == 0xEF74726F70655267;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F706552676F66 && a2 == 0xE900000000000074;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F7065526C696168 && a2 == 0xEA00000000007472;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x706552656B6F6D73 && a2 == 0xEB0000000074726FLL;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6F706552657A6168 && a2 == 0xEA00000000007472)
          {

            return 5;
          }

          else
          {
            v11 = sub_220CA1154();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220C28F54(char a1)
{
  result = 0x73776F626E696172;
  switch(a1)
  {
    case 1:
      result = 0x6E696E746867696CLL;
      break;
    case 2:
      result = 0x726F706552676F66;
      break;
    case 3:
      v3 = 1818845544;
      goto LABEL_7;
    case 4:
      result = 0x706552656B6F6D73;
      break;
    case 5:
      v3 = 1702519144;
LABEL_7:
      result = v3 | 0x6F70655200000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C2902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C28D40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C29054(uint64_t a1)
{
  v2 = sub_220C292BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C29090(uint64_t a1)
{
  v2 = sub_220C292BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OtherConditionsFeedbackData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BBC8, &qword_220CA4630);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = v1[1];
  v22 = v1[2];
  v23 = v10;
  v11 = v1[3];
  v20 = v1[4];
  v21 = v11;
  v19 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C292BC();
  v12 = v4;
  sub_220CA1254();
  v28[1] = 0;
  sub_220CA10D4();
  if (!v2)
  {
    v14 = v21;
    v13 = v22;
    v15 = v19;
    v16 = v20;
    v28[0] = 1;
    OUTLINED_FUNCTION_1_4(v23, v28);
    v27 = 2;
    OUTLINED_FUNCTION_1_4(v13, &v27);
    v26 = 3;
    OUTLINED_FUNCTION_1_4(v14, &v26);
    v25 = 4;
    OUTLINED_FUNCTION_1_4(v16, &v25);
    v24 = 5;
    OUTLINED_FUNCTION_1_4(v15, &v24);
  }

  return (*(v6 + 8))(v9, v12);
}

unint64_t sub_220C292BC()
{
  result = qword_27CF7BBD0;
  if (!qword_27CF7BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBD0);
  }

  return result;
}

uint64_t OtherConditionsFeedbackData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BBD8, &qword_220CA4638);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C292BC();
  sub_220CA1234();
  if (!v2)
  {
    v29 = 0;
    v11 = OUTLINED_FUNCTION_0_7(&v29);
    v28 = 1;
    v12 = OUTLINED_FUNCTION_0_7(&v28);
    v27 = 2;
    v23 = OUTLINED_FUNCTION_0_7(&v27);
    v26 = 3;
    v22 = OUTLINED_FUNCTION_0_7(&v26);
    v25 = 4;
    v21 = OUTLINED_FUNCTION_0_7(&v25);
    v24 = 5;
    v14 = OUTLINED_FUNCTION_0_7(&v24);
    v19 = v12 & 1;
    v20 = v11 & 1;
    v23 &= 1u;
    v15 = v22 & 1;
    v16 = v21 & 1;
    (*(v7 + 8))(v10, v5);
    v17 = v19;
    *a2 = v20;
    a2[1] = v17;
    a2[2] = v23;
    a2[3] = v15;
    a2[4] = v16;
    a2[5] = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C29548()
{
  result = qword_27CF7BBE0;
  if (!qword_27CF7BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBE0);
  }

  return result;
}

unint64_t sub_220C295A0()
{
  result = qword_27CF7BBE8;
  if (!qword_27CF7BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBE8);
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OtherConditionsFeedbackData(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[6])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t storeEnumTagSinglePayload for OtherConditionsFeedbackData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OtherConditionsFeedbackData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C297B8()
{
  result = qword_27CF7BBF0;
  if (!qword_27CF7BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBF0);
  }

  return result;
}

unint64_t sub_220C29810()
{
  result = qword_27CF7BBF8;
  if (!qword_27CF7BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBF8);
  }

  return result;
}

unint64_t sub_220C29868()
{
  result = qword_27CF7BC00;
  if (!qword_27CF7BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BC00);
  }

  return result;
}

uint64_t MobileData.countryCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileData.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MobileData.networkCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MobileData.networkCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

WeatherAnalytics::MobileData __swiftcall MobileData.init(countryCode:networkCode:)(Swift::String countryCode, Swift::String networkCode)
{
  *v2 = countryCode;
  v2[1] = networkCode;
  result.networkCode = networkCode;
  result.countryCode = countryCode;
  return result;
}

uint64_t sub_220C299E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436B726F7774656ELL && a2 == 0xEB0000000065646FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C29AB4(char a1)
{
  if (a1)
  {
    return 0x436B726F7774656ELL;
  }

  else
  {
    return 0x437972746E756F63;
  }
}

uint64_t sub_220C29AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C299E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C29B1C(uint64_t a1)
{
  v2 = sub_220C29D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C29B58(uint64_t a1)
{
  v2 = sub_220C29D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC08, &qword_220CA4850);
  OUTLINED_FUNCTION_3();
  v12 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C29D04();
  sub_220CA1254();
  v14 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v13 = 1;
    sub_220CA10C4();
  }

  return (*(v12 + 8))(v8, v4);
}

unint64_t sub_220C29D04()
{
  result = qword_2812D0868;
  if (!qword_2812D0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0868);
  }

  return result;
}

uint64_t MobileData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC10, &qword_220CA4858);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C29D04();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v11 = sub_220CA0FF4();
  v13 = v12;
  v21 = 1;
  v14 = sub_220CA0FF4();
  v16 = v15;
  v17 = *(v7 + 8);
  v20 = v14;
  v17(v10, v5);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v20;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C29F50()
{
  result = qword_2812D0848;
  if (!qword_2812D0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0848);
  }

  return result;
}

unint64_t sub_220C29FA8()
{
  result = qword_2812D0850;
  if (!qword_2812D0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0850);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MobileData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C2A11C()
{
  result = qword_27CF7BC18;
  if (!qword_27CF7BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BC18);
  }

  return result;
}

unint64_t sub_220C2A174()
{
  result = qword_2812D0858;
  if (!qword_2812D0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0858);
  }

  return result;
}

unint64_t sub_220C2A1CC()
{
  result = qword_2812D0860;
  if (!qword_2812D0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0860);
  }

  return result;
}

uint64_t *sub_220C2A220(uint64_t a1)
{
  v2 = v1;
  v237[1] = *MEMORY[0x277D85DE8];
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC20, &qword_220CA4AD0);
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v193 = &v174 - v4;
  v200 = sub_220C9F6A4();
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v198 = (&v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v206 = sub_220C9F804();
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v204 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_220CA0494();
  v213 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v8 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for AppSessionEndEvent.Model(0);
  MEMORY[0x28223BE20](v197);
  v201 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC28, &qword_220CA4AD8);
  MEMORY[0x28223BE20](v10 - 8);
  v218 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v227 = &v174 - v13;
  v222 = sub_220C9FE64();
  v203 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v229 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  MEMORY[0x28223BE20](v15 - 8);
  v211 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v202 = &v174 - v18;
  MEMORY[0x28223BE20](v19);
  v225 = &v174 - v20;
  MEMORY[0x28223BE20](v21);
  v224 = &v174 - v22;
  MEMORY[0x28223BE20](v23);
  v208 = &v174 - v24;
  v25 = sub_220C9F7D4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v196 = &v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v215 = &v174 - v29;
  MEMORY[0x28223BE20](v30);
  v219 = &v174 - v31;
  MEMORY[0x28223BE20](v32);
  v223 = &v174 - v33;
  MEMORY[0x28223BE20](v34);
  v214 = &v174 - v35;
  v216 = type metadata accessor for WeatherSession(0);
  MEMORY[0x28223BE20](v216);
  v217 = &v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_220C9FE94();
  v220 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v210 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v233 = &v174 - v39;
  v230 = sub_220C9FEB4();
  v235 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v209 = &v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v228 = &v174 - v42;
  MEMORY[0x28223BE20](v43);
  v221 = &v174 - v44;
  v45 = sub_220CA04E4();
  v231 = *(v45 - 8);
  v232 = v45;
  MEMORY[0x28223BE20](v45);
  v47 = (&v174 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v48 = sub_220CA0A84();
  v207 = __swift_project_value_buffer(v48, qword_2812D1770);
  v49 = sub_220CA0A64();
  v50 = sub_220CA0DA4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_220BF4000, v49, v50, "FlushAnalyticsBatchesTask runs repair", v51, 2u);
    v52 = v51;
    v2 = v1;
    MEMORY[0x223D95B30](v52, -1, -1);
  }

  if (sub_220CA0394())
  {
    return MEMORY[0x277D84F90];
  }

  sub_220CA03E4();
  if (v53)
  {

    return MEMORY[0x277D84F90];
  }

  v190 = v2;
  sub_220CA0524();
  swift_allocObject();
  v56 = sub_220CA0514();
  *v47 = sub_220C2C120;
  v47[1] = 0;
  (*(v231 + 104))(v47, *MEMORY[0x277D6C9B0], v232);
  sub_220CA04F4();
  v57 = objc_opt_self();
  sub_220CA03D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC38, &qword_220CA4AE8);
  v58 = sub_220CA0CF4();

  v237[0] = 0;
  v54 = [v57 dataWithJSONObject:v58 options:0 error:v237];

  v59 = v237[0];
  if (v54)
  {
    v189 = v57;
    v60 = sub_220C9F764();
    v62 = v61;

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC40, &qword_220CA4AF0);
    sub_220C2C948();
    v54 = v56;
    v64 = v190;
    sub_220CA0504();
    v190 = v64;
    if (v64)
    {
      sub_220C2CA44(v60, v62);
    }

    else
    {
      v184 = v25;
      v181 = v63;
      v187 = v60;
      v186 = v62;
      v188 = v56;
      v183 = v8;
      v66 = 0;
      v67 = v237[0];
      v68 = 0x8000000220CB4EB0;
      v69 = *(v237[0] + 2);
      v232 = (v235 + 16);
      v192 = (v220 + 8);
      v231 = v235 + 8;
      v70 = v230;
      v220 = v237[0];
      v191 = v69;
      v71 = v221;
      v72 = v233;
      while (1)
      {
        if (v69 == v66)
        {
          sub_220CA03A4();
          v78 = sub_220CA0BD4();

          v237[0] = 0;
          v54 = [v189 dataWithJSONObject:v78 options:0 error:v237];

          v79 = v237[0];
          if (!v54)
          {
            v84 = v79;

            sub_220C9F734();

            swift_willThrow();
            sub_220C2CA44(v187, v186);
            goto LABEL_14;
          }

          v177 = 0x8000000220CB4EB0;
          v80 = sub_220C9F764();
          v82 = v81;

          sub_220C2CC78(&qword_2812D0988, type metadata accessor for WeatherSession, &protocol conformance descriptor for WeatherSession);
          v54 = v188;
          v83 = v190;
          sub_220CA0504();
          if (v83)
          {
            sub_220C2CA44(v80, v82);

            sub_220C2CA44(v187, v186);
            goto LABEL_14;
          }

          v174 = v80;
          v175 = v82;
          v190 = 0;
          v182 = v26;
          if (v191)
          {
            v85 = &v220[(*(v235 + 80) + 32) & ~*(v235 + 80)];
            v221 = *(v235 + 72);
            v180 = (v26 + 16);
            v179 = (v26 + 8);
            v178 = (v213 + 8);
            v233 = MEMORY[0x277D84F90];
            ++v203;
            v189 = *(v235 + 16);
            v185 = (v26 + 32);
            v86 = v191;
            v87 = v219;
            v88 = v230;
            v89 = v184;
            do
            {
              (v189)(v228, v85, v88);
              sub_220C9FE74();
              v90 = v227;
              sub_220C9FE54();
              v91 = v90;
              v92 = v226;
              if (__swift_getEnumTagSinglePayload(v90, 1, v226) == 1)
              {
                v93 = v225;
                __swift_storeEnumTagSinglePayload(v225, 1, 1, v89);
              }

              else
              {
                v94 = v90;
                v95 = v218;
                sub_220C2CA9C(v94, v218);
                sub_220CA0474();
                v91 = v227;
                v93 = v225;
                (*v180)(v225, v87, v89);
                __swift_storeEnumTagSinglePayload(v93, 0, 1, v89);
                (*v179)(v87, v89);
                (*v178)(v95, v92);
              }

              v96 = v224;
              sub_220C2CB7C(v91, &qword_27CF7BC28, &qword_220CA4AD8);
              (*v203)(v229, v222);
              sub_220C2CB0C(v93, v96);
              v88 = v230;
              (*v231)(v228, v230);
              if (__swift_getEnumTagSinglePayload(v96, 1, v89) == 1)
              {
                sub_220C2CB7C(v96, &qword_27CF7BC30, &qword_220CA4AE0);
              }

              else
              {
                v97 = *v185;
                (*v185)(v223, v96, v89);
                v98 = a1;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v233 = sub_220C71340(0, *(v233 + 2) + 1, 1, v233);
                }

                v100 = *(v233 + 2);
                v99 = *(v233 + 3);
                if (v100 >= v99 >> 1)
                {
                  v233 = sub_220C71340((v99 > 1), v100 + 1, 1, v233);
                }

                v101 = v233;
                *(v233 + 2) = v100 + 1;
                v97(&v101[((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v100], v223, v89);
                a1 = v98;
                v87 = v219;
                v88 = v230;
              }

              v85 = &v221[v85];
              --v86;
            }

            while (v86);
          }

          else
          {
            v233 = MEMORY[0x277D84F90];
            v89 = v184;
          }

          v102 = v208;
          sub_220CA03B4();
          if (__swift_getEnumTagSinglePayload(v102, 1, v89) == 1)
          {
            v103 = v202;
            sub_220C2C1DC(v233, v202);
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v103, 1, v89);
            v105 = v182;
            v106 = v215;
            v107 = v211;
            if (EnumTagSinglePayload == 1)
            {
              sub_220C9F7C4();
              if (__swift_getEnumTagSinglePayload(v103, 1, v89) != 1)
              {
                sub_220C2CB7C(v103, &qword_27CF7BC30, &qword_220CA4AE0);
              }
            }

            else
            {
              (*(v182 + 32))(v214, v103, v89);
            }

            v108 = v89;
            if (__swift_getEnumTagSinglePayload(v102, 1, v89) != 1)
            {
              sub_220C2CB7C(v102, &qword_27CF7BC30, &qword_220CA4AE0);
            }
          }

          else
          {
            v105 = v182;
            (*(v182 + 32))(v214, v102, v89);
            v106 = v215;
            v107 = v211;
            v108 = v89;
          }

          sub_220C2C448(v233, v107);

          v109 = __swift_getEnumTagSinglePayload(v107, 1, v108);
          v176 = a1;
          if (v109 == 1)
          {
            sub_220C9F7C4();
            v110 = v108;
            v111 = __swift_getEnumTagSinglePayload(v107, 1, v108);
            v112 = v210;
            if (v111 != 1)
            {
              sub_220C2CB7C(v107, &qword_27CF7BC30, &qword_220CA4AE0);
            }
          }

          else
          {
            v110 = v108;
            (*(v105 + 32))(v106, v107, v108);
            v112 = v210;
          }

          v113 = 0;
          v114 = v230;
          v115 = v209;
          do
          {
            v116 = v113;
            if (v191 == v113)
            {
              break;
            }

            if (v113 >= *(v220 + 2))
            {
              __break(1u);
            }

            (*(v235 + 16))(v115, &v220[((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v113], v114);
            sub_220C9FEA4();
            v117 = sub_220C9FE84();
            v119 = v118;
            (*v192)(v112, v234);
            if (v117 == 0xD000000000000014 && 0x8000000220CB4ED0 == v119)
            {

              (*v231)(v115, v114);
              break;
            }

            ++v113;
            v121 = sub_220CA1154();

            (*v231)(v115, v114);
          }

          while ((v121 & 1) == 0);
          v122 = v215;
          sub_220C9F774();
          v124 = v123;
          v125 = v220;
          if (v191 == v116 || (*(v220 + 2) != 1 ? (v126 = v123 < 1.0) : (v126 = 1), v126))
          {
            v130 = v110;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC48, &qword_220CA4AF8);
            v127 = swift_allocObject();
            *(v127 + 16) = xmmword_220CA4A60;
            *(v127 + 56) = v181;
            *(v127 + 64) = sub_220BF9A3C(&qword_2812CE7C0, &qword_27CF7BC40, &qword_220CA4AF0, MEMORY[0x277CC9C50]);
            v128 = MEMORY[0x277D839F8];
            *(v127 + 32) = v125;
            v129 = MEMORY[0x277D83A80];
            *(v127 + 96) = v128;
            *(v127 + 104) = v129;
            *(v127 + 72) = v124;
            MEMORY[0x223D949C0]("Expect an AppSessionStartEvent, multiple events and an session duration >= 1.0s when repairing", 94, 2, v127);
          }

          else
          {
            v130 = v110;
          }

          v131 = v182;
          if (sub_220CA03C4())
          {
            v132 = 3;
          }

          else
          {
            v132 = 4;
          }

          v133 = sub_220CA0A64();
          v134 = sub_220CA0DA4();
          v135 = os_log_type_enabled(v133, v134);
          LODWORD(v233) = v132;
          if (v135)
          {
            v136 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            v237[0] = v137;
            *v136 = 136446466;
            v236 = v132;
            v138 = sub_220CA0C34();
            v140 = sub_220BFC484(v138, v139, v237);
            v122 = v215;

            *(v136 + 4) = v140;
            *(v136 + 12) = 2050;
            *(v136 + 14) = v124;
            _os_log_impl(&dword_220BF4000, v133, v134, "Repair session - endReason=%{public}s, duration=%{public}f", v136, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v137);
            MEMORY[0x223D95B30](v137, -1, -1);
            MEMORY[0x223D95B30](v136, -1, -1);
          }

          v141 = v206;
          v142 = v205;
          v143 = v204;
          sub_220C9F7F4();
          v144 = sub_220C9F7E4();
          v234 = v145;
          v235 = v144;
          (*(v142 + 8))(v143, v141);
          v232 = *(v131 + 16);
          v232(v219, v122, v130);
          v146 = v217;

          v147 = v183;
          sub_220CA0484();
          v148 = v216;
          v54 = v212;
          v149 = v190;
          sub_220C2C6B4(*(v146 + *(v216 + 44)), v237);
          if (!v149)
          {
            v151 = LOBYTE(v237[0]);
            v152 = v148;
            v153 = BYTE1(v237[0]);
            sub_220C2C73C(*(v146 + *(v152 + 48)), &v236);
            v68 = 0;
            v154 = v151 | (v153 << 8);
            LODWORD(v235) = v236;
            v155 = v184;
            v156 = v146;
            v157 = v232;
            v232(v219, v214, v184);
            v157(v196, v215, v155);
            v158 = v197;
            v70 = v201;
            sub_220CA04C4();
            v159 = v156 + *(v152 + 52);
            v160 = *v159;
            v161 = *(v159 + 4);
            (*(v213 + 32))(v70, v183, v226);
            *(v70 + v158[5]) = v154;
            *(v70 + v158[6]) = v235;
            *(v70 + v158[7]) = v233;
            v162 = v70 + v158[9];
            *(v162 + 4) = v161;
            *v162 = v160;
            sub_220C9F6E4();
            swift_allocObject();
            sub_220C9F6D4();
            v163 = v198;
            *v198 = sub_220C2C82C;
            v163[1] = 0;
            (*(v199 + 104))(v163, *MEMORY[0x277CC8770], v200);
            sub_220C9F6B4();
            sub_220C2CC78(&qword_2812CFFF0, type metadata accessor for AppSessionEndEvent.Model, &protocol conformance descriptor for AppSessionEndEvent.Model);
            sub_220C9F6C4();
            goto LABEL_84;
          }

          sub_220C2CA44(v187, v186);

          sub_220C2CA44(v174, v175);
          (*(v213 + 8))(v147, v226);
          v150 = *(v131 + 8);
          v150(v215, v130);
          v150(v214, v130);
          v164 = v146;
LABEL_82:
          sub_220C2CBD0(v164, type metadata accessor for WeatherSession);
          return v54;
        }

        if (v66 >= v67[2])
        {
          break;
        }

        (*(v235 + 16))(v71, v67 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v66, v70);
        sub_220C9FEA4();
        v73 = sub_220C9FE84();
        v75 = v74;
        (*v192)(v72, v234);
        if (v73 == 0xD000000000000012 && 0x8000000220CB4EB0 == v75)
        {

          (*v231)(v71, v70);
LABEL_28:

          sub_220C2CA44(v187, v186);

          return MEMORY[0x277D84F90];
        }

        ++v66;
        v77 = sub_220CA1154();

        (*v231)(v71, v70);
        v67 = v220;
        v69 = v191;
        if (v77)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_84:
      v165 = v214;
      v166 = objc_allocWithZone(sub_220CA0374());
      v167 = sub_220CA0384();
      sub_220C2C7B8(v167);
      if (v68)
      {
        sub_220C2CA44(v187, v186);

        sub_220C2CA44(v174, v175);
        sub_220C2CBD0(v70, type metadata accessor for AppSessionEndEvent.Model);
        v168 = *(v182 + 8);
        v54 = v184;
        v168(v215, v184);
        v168(v165, v54);
        v164 = v217;
        goto LABEL_82;
      }

      sub_220CA03E4();
      v190 = 0;
      sub_220CA0394();
      type metadata accessor for AppSessionEndEvent(0);
      sub_220C2CC78(qword_2812CFF48, type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
      v169 = v193;
      sub_220C9FF54();
      sub_220CA01C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC50, &qword_220CA4B00);
      v54 = swift_allocObject();
      *(v54 + 1) = xmmword_220CA4A70;
      v170 = v195;
      v54[7] = v195;
      v54[8] = sub_220BF9A3C(&qword_2812D0E80, &qword_27CF7BC20, &qword_220CA4AD0, MEMORY[0x277CEACA8]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54 + 4);
      (*(v194 + 32))(boxed_opaque_existential_1, v169, v170);
      sub_220C2CA44(v187, v186);

      sub_220C2CA44(v174, v175);
      sub_220C2CBD0(v201, type metadata accessor for AppSessionEndEvent.Model);
      v172 = *(v182 + 8);
      v173 = v184;
      v172(v215, v184);
      v172(v214, v173);
      sub_220C2CBD0(v217, type metadata accessor for WeatherSession);
    }
  }

  else
  {
    v65 = v59;
    sub_220C9F734();

    swift_willThrow();
LABEL_14:
  }

  return v54;
}

void *sub_220C2C120(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220CA1224();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_220CA1174();
    __swift_destroy_boxed_opaque_existential_1(v3);
    return sub_220C9F784();
  }

  return result;
}

uint64_t sub_220C2C1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220C9F7D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v9, v13, v4, v10);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      (v12)(v7, v13 + *(v5 + 72) * i, v4);
      sub_220C2CC78(&qword_2812D0F48, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v16 = sub_220CA0BF4();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v7, v4);
      }

      else
      {
        v17(v7, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_220C2C448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220C9F7D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v9, v13, v4, v10);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      (v12)(v7, v13 + *(v5 + 72) * i, v4);
      sub_220C2CC78(&qword_2812D0F48, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v16 = sub_220CA0BF4();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v7, v4);
      }

      else
      {
        v17(v7, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_220C2C6B4@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  if ((result & 0xFF00) == 0x500)
  {
    sub_220C2CC24();
    swift_allocError();
    *v2 = 0xD000000000000027;
    v2[1] = 0x8000000220CB4FA0;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_220C2C73C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result == 4)
  {
    sub_220C2CC24();
    swift_allocError();
    *v2 = 0xD00000000000002CLL;
    v2[1] = 0x8000000220CB4F70;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id sub_220C2C7B8(void *a1)
{
  if (a1)
  {
    return a1;
  }

  sub_220C2CC24();
  swift_allocError();
  *v2 = 0xD00000000000001CLL;
  v2[1] = 0x8000000220CB4F50;
  return swift_willThrow();
}

void sub_220C2C82C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220CA1244();
  sub_220C9F794();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_220CA1184();
    __swift_destroy_boxed_opaque_existential_1(v4);
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_220C2C948()
{
  result = qword_2812CE7C8;
  if (!qword_2812CE7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF7BC40, &qword_220CA4AF0);
    sub_220C2CC78(&qword_2812D0E88, MEMORY[0x277CEAC80], MEMORY[0x277CEAC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE7C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_220C2CA44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_220C2CA9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC28, &qword_220CA4AD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C2CB0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C2CB7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220C2CBD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_220C2CC24()
{
  result = qword_2812D0CC8[0];
  if (!qword_2812D0CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812D0CC8);
  }

  return result;
}

uint64_t sub_220C2CC78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PrivateUserData.privateUserID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrivateUserData.privateUserID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PrivateUserData.privateUserHashMod.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_220C2CDB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5565746176697270 && a2 == 0xED00004449726573;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220CB4FD0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C2CE88(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x5565746176697270;
  }
}

uint64_t sub_220C2CED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C2CDB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C2CF00(uint64_t a1)
{
  v2 = sub_220C2D100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C2CF3C(uint64_t a1)
{
  v2 = sub_220C2D100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrivateUserData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC58, &qword_220CA4B70);
  OUTLINED_FUNCTION_3();
  v11 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  v10 = *(v1 + 16);
  v12 = *(v1 + 20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C2D100();
  sub_220CA1254();
  v15 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v14 = 1;
    v13 = v12;
    sub_220CA10A4();
  }

  return (*(v11 + 8))(v8, v4);
}

unint64_t sub_220C2D100()
{
  result = qword_2812D03E0;
  if (!qword_2812D03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D03E0);
  }

  return result;
}

uint64_t PrivateUserData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC60, &qword_220CA4B78);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C2D100();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_220CA0FF4();
  v8 = v7;
  v9 = sub_220CA0FD4();
  v10 = OUTLINED_FUNCTION_0_3();
  v11(v10);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 20) = BYTE4(v9) & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_220C2D344(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_220C2D384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrivateUserData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C2D4A8()
{
  result = qword_27CF7BC68;
  if (!qword_27CF7BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BC68);
  }

  return result;
}

unint64_t sub_220C2D500()
{
  result = qword_2812D03D0;
  if (!qword_2812D03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D03D0);
  }

  return result;
}

unint64_t sub_220C2D558()
{
  result = qword_2812D03D8;
  if (!qword_2812D03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D03D8);
  }

  return result;
}

uint64_t WeatherSession.sessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WeatherSession.appSessionID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WeatherSession.userData.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
}

uint64_t WeatherSession.sessionData.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_2() + 28);

  return sub_220C2D6AC(v2, v0);
}

uint64_t type metadata accessor for WeatherSession(uint64_t a1)
{
  result = qword_2812D0978;
  if (!qword_2812D0978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220C2D6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC70, &qword_220CA4D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void WeatherSession.appData.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_7_2() + 32));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;

  sub_220C2D764(v3, v4, v5, v6);
}

void sub_220C2D764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void WeatherSession.deviceData.getter()
{
  v2 = OUTLINED_FUNCTION_7_2();
  v3 = OUTLINED_FUNCTION_4_5(v1 + *(v2 + 36));
  *v0 = v3;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;
  v0[5] = v8;
  v0[6] = v9;

  sub_220C2D7F4(v3, v4, v5, v6, v7, v8, v9);
}

void sub_220C2D7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t WeatherSession.debugData.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_7_2() + 40));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t WeatherSession.orientationData.getter()
{
  result = OUTLINED_FUNCTION_7_2();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t WeatherSession.temperatureScaleData.getter()
{
  result = OUTLINED_FUNCTION_7_2();
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t WeatherSession.notificationSettingsData.getter()
{
  result = OUTLINED_FUNCTION_7_2();
  v3 = (v1 + *(result + 52));
  v4 = *v3;
  *(v0 + 4) = *(v3 + 4);
  *v0 = v4;
  return result;
}

uint64_t sub_220C2D914(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6973736553707061 && a2 == 0xEC00000044496E6FLL;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6174614472657375 && a2 == 0xE800000000000000;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x446E6F6973736573 && a2 == 0xEB00000000617461;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6144656369766564 && a2 == 0xEA00000000006174;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7461446775626564 && a2 == 0xE900000000000061;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x8000000220CB4B90 == a2;
                  if (v13 || (sub_220CA1154() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000018 && 0x8000000220CB4BB0 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_220CA1154();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_220C2DC4C(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x6973736553707061;
      break;
    case 2:
      result = 0x6174614472657375;
      break;
    case 3:
      result = 0x446E6F6973736573;
      break;
    case 4:
      result = 0x61746144707061;
      break;
    case 5:
      result = 0x6144656369766564;
      break;
    case 6:
      v3 = 0x446775626564;
      goto LABEL_10;
    case 7:
      v3 = 0x746E6569726FLL;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C2DD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C2D914(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C2DDBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C2DC44();
  *a1 = result;
  return result;
}

uint64_t sub_220C2DDE4(uint64_t a1)
{
  v2 = sub_220C2E244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C2DE20(uint64_t a1)
{
  v2 = sub_220C2E244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeatherSession.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC78, &qword_220CA4D98);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C2E244();
  sub_220CA1254();
  LOBYTE(v37) = 0;
  OUTLINED_FUNCTION_1_1();
  sub_220CA10C4();
  if (!v2)
  {
    LOBYTE(v37) = 1;
    OUTLINED_FUNCTION_1_1();
    sub_220CA1074();
    v37 = *(v3 + 32);
    v38 = *(v3 + 40);
    v43 = 2;
    v11 = sub_220BFF6B4();

    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_1_1();
    sub_220CA1094();
    if (v11)
    {
    }

    else
    {

      v12 = type metadata accessor for WeatherSession(0);
      LOBYTE(v37) = 3;
      type metadata accessor for SessionData(0);
      sub_220BFF3DC(&qword_2812D1640, &protocol conformance descriptor for SessionData);
      OUTLINED_FUNCTION_1_1();
      sub_220CA1094();
      v13 = (v3 + v12[8]);
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v37 = *v13;
      *&v38 = v14;
      *(&v38 + 1) = v15;
      v39 = v16;
      v43 = 4;
      sub_220C2D764(v37, v14, v15, v16);
      sub_220BFDB88();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_1_1();
      sub_220CA1094();
      v17 = OUTLINED_FUNCTION_9_1();
      sub_220C2E298(v17, v18, v19, v20);
      v37 = OUTLINED_FUNCTION_4_5(v3 + v12[9]);
      *&v38 = v21;
      *(&v38 + 1) = v22;
      v39 = v23;
      v40 = v24;
      v41 = v25;
      v42 = v26;
      v43 = 5;
      sub_220C2D7F4(v37, v21, v22, v23, v24, v25, v26);
      sub_220BFDC50();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_1_1();
      sub_220CA1094();
      v27 = OUTLINED_FUNCTION_9_1();
      sub_220C2E2DC(v27, v28, v29, v30, v40, v41, v42);
      v31 = (v3 + v12[10]);
      v32 = v31[1];
      v37 = *v31;
      *&v38 = v32;
      v43 = 6;
      v33 = sub_220BFCED0();

      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_1_1();
      sub_220CA1094();

      if (!v33)
      {
        LOWORD(v37) = *(v3 + v12[11]);
        v43 = 7;
        sub_220BFE5BC();
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_1_1();
        sub_220CA1094();
        LOBYTE(v37) = *(v3 + v12[12]);
        v43 = 8;
        sub_220BFF604();
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_1_1();
        sub_220CA1094();
        v34 = (v3 + v12[13]);
        v35 = *v34;
        BYTE4(v37) = *(v34 + 4);
        LODWORD(v37) = v35;
        v43 = 9;
        sub_220C04388();
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_1_1();
        sub_220CA1094();
      }
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C2E244()
{
  result = qword_2812D09A0;
  if (!qword_2812D09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D09A0);
  }

  return result;
}

void sub_220C2E298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_220C2E2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

void WeatherSession.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC70, &qword_220CA4D90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC80, &qword_220CA4DA0);
  OUTLINED_FUNCTION_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v35 = type metadata accessor for WeatherSession(0);
  MEMORY[0x28223BE20](v35);
  v34 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_220C2E244();
  sub_220CA1234();
  if (!v2)
  {
    v32 = a2;
    LOBYTE(v36) = 0;
    v16 = sub_220CA0FF4();
    v19 = v34;
    *v34 = v16;
    v19[1] = v20;
    LOBYTE(v36) = 1;
    v19[2] = sub_220CA0FA4();
    v19[3] = v21;
    v40 = 2;
    sub_220BFF65C();
    OUTLINED_FUNCTION_0_8(&type metadata for UserData);
    v22 = v37;
    *(v19 + 2) = v36;
    v19[6] = v22;
    type metadata accessor for SessionData(0);
    LOBYTE(v36) = 3;
    sub_220BFF3DC(&qword_2812D1638, &protocol conformance descriptor for SessionData);
    sub_220CA0FC4();
    v23 = v35;
    sub_220C2E9A8(v7, v19 + v35[7]);
    v40 = 4;
    sub_220BFDB30();
    OUTLINED_FUNCTION_0_8(&type metadata for AppData);
    v24 = (v19 + v23[8]);
    v25 = v37;
    *v24 = v36;
    v24[1] = v25;
    v40 = 5;
    sub_220BFDBF8();
    OUTLINED_FUNCTION_0_8(&type metadata for DeviceData);
    v26 = v39;
    v27 = v19 + v23[9];
    v28 = v37;
    *v27 = v36;
    *(v27 + 1) = v28;
    *(v27 + 2) = v38;
    *(v27 + 6) = v26;
    v40 = 6;
    sub_220BFCE78();
    OUTLINED_FUNCTION_0_8(&type metadata for DebugData);
    *(v19 + v35[10]) = v36;
    v40 = 7;
    sub_220BFE564();
    OUTLINED_FUNCTION_0_8(&type metadata for OrientationData);
    *(v19 + v35[11]) = v36;
    v40 = 8;
    sub_220BFF5AC();
    OUTLINED_FUNCTION_0_8(&type metadata for TemperatureScaleData);
    *(v19 + v35[12]) = v36;
    v40 = 9;
    sub_220C04330();
    OUTLINED_FUNCTION_0_8(&type metadata for NotificationSettingsData);
    (*(v9 + 8))(v12, v33);
    v29 = v36;
    v30 = v34;
    v31 = v34 + v35[13];
    v31[4] = BYTE4(v36);
    *v31 = v29;
    sub_220C2EA18(v30, v32);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_220C2EA7C(v30);
    return;
  }

  OUTLINED_FUNCTION_6_2();
  v17 = v34;
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v14)
  {

    if ((v9 & 1) == 0)
    {
LABEL_9:
      v18 = v35;
      if (v15)
      {
        goto LABEL_10;
      }

      return;
    }
  }

  else if (!v9)
  {
    goto LABEL_9;
  }

  v18 = v35;
  sub_220C2E940(v17 + v35[7]);
  if (v15)
  {
LABEL_10:
    sub_220C2E298(*(v17 + v18[8]), *(v17 + v18[8] + 8), *(v17 + v18[8] + 16), *(v17 + v18[8] + 24));
  }
}

uint64_t sub_220C2E940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC70, &qword_220CA4D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220C2E9A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC70, &qword_220CA4D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C2EA18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C2EA7C(uint64_t a1)
{
  v2 = type metadata accessor for WeatherSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C2EB30(uint64_t a1)
{
  sub_220BFE7B0(319, &qword_2812CE7D0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_220BFE7B0(319, &qword_2812CE828, &type metadata for UserData);
    if (v2 <= 0x3F)
    {
      sub_220C2ECE4(319);
      if (v3 <= 0x3F)
      {
        sub_220BFE7B0(319, &qword_2812CE830, &type metadata for AppData);
        if (v4 <= 0x3F)
        {
          sub_220BFE7B0(319, &qword_2812D0870, &type metadata for DeviceData);
          if (v5 <= 0x3F)
          {
            sub_220BFE7B0(319, &qword_2812CE7E8, &type metadata for DebugData);
            if (v6 <= 0x3F)
            {
              sub_220BFE7B0(319, &qword_2812D03E8, &type metadata for OrientationData);
              if (v7 <= 0x3F)
              {
                sub_220BFE7B0(319, &qword_2812CFC28, &type metadata for TemperatureScaleData);
                if (v8 <= 0x3F)
                {
                  sub_220BFE7B0(319, &qword_2812CF648, &type metadata for NotificationSettingsData);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_220C2ECE4(uint64_t a1)
{
  if (!qword_2812D07C8[0])
  {
    type metadata accessor for SessionData(255);
    v1 = sub_220CA0EE4();
    if (!v2)
    {
      atomic_store(v1, qword_2812D07C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for WeatherSession.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherSession.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C2EEA4()
{
  result = qword_27CF7BC88;
  if (!qword_27CF7BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BC88);
  }

  return result;
}

unint64_t sub_220C2EEFC()
{
  result = qword_2812D0990;
  if (!qword_2812D0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0990);
  }

  return result;
}

unint64_t sub_220C2EF54()
{
  result = qword_2812D0998;
  if (!qword_2812D0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0998);
  }

  return result;
}

uint64_t ProviderData.providerName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProviderData.providerName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

WeatherAnalytics::ProviderData __swiftcall ProviderData.init(productType:providerName:)(WeatherAnalytics::ProductType productType, Swift::String providerName)
{
  *v2 = *productType;
  *(v2 + 8) = providerName;
  result.providerName = providerName;
  result.productType = productType;
  return result;
}

uint64_t sub_220C2F080(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xEC000000656D614ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C2F150(char a1)
{
  if (a1)
  {
    return 0x72656469766F7270;
  }

  else
  {
    return 0x54746375646F7270;
  }
}

uint64_t sub_220C2F1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C2F080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C2F1C8(uint64_t a1)
{
  v2 = sub_220C2F3BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C2F204(uint64_t a1)
{
  v2 = sub_220C2F3BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProviderData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC90, &qword_220CA4F70);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C2F3BC();
  sub_220CA1254();
  v16 = v10;
  v15 = 0;
  sub_220C2F410();
  sub_220CA1104();
  if (!v2)
  {
    v14 = 1;
    sub_220CA10C4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C2F3BC()
{
  result = qword_2812D0730;
  if (!qword_2812D0730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0730);
  }

  return result;
}

unint64_t sub_220C2F410()
{
  result = qword_2812D0830;
  if (!qword_2812D0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0830);
  }

  return result;
}

uint64_t ProviderData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC98, &qword_220CA4F78);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C2F3BC();
  sub_220CA1234();
  if (!v2)
  {
    v18 = 0;
    sub_220C2F618();
    sub_220CA1034();
    v11 = v19;
    v17 = 1;
    v13 = sub_220CA0FF4();
    v15 = v14;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C2F618()
{
  result = qword_27CF7BCA0;
  if (!qword_27CF7BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCA0);
  }

  return result;
}

unint64_t sub_220C2F670()
{
  result = qword_27CF7BCA8;
  if (!qword_27CF7BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCA8);
  }

  return result;
}

unint64_t sub_220C2F6C8()
{
  result = qword_2812D0718;
  if (!qword_2812D0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0718);
  }

  return result;
}

uint64_t sub_220C2F74C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_220C2F78C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for ProviderData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C2F8BC()
{
  result = qword_27CF7BCB0;
  if (!qword_27CF7BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCB0);
  }

  return result;
}

unint64_t sub_220C2F914()
{
  result = qword_2812D0720;
  if (!qword_2812D0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0720);
  }

  return result;
}

unint64_t sub_220C2F96C()
{
  result = qword_2812D0728;
  if (!qword_2812D0728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0728);
  }

  return result;
}

WeatherAnalytics::CloudCover_optional __swiftcall CloudCover.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CloudCover.rawValue.getter()
{
  result = 0x64656C62616E65;
  switch(*v0)
  {
    case 1:
      v2 = 1953653104;
      goto LABEL_4;
    case 2:
      v2 = 1953722221;
LABEL_4:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
      break;
    case 3:
      result = 0x747361637265766FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C2FAA0()
{
  result = qword_27CF7BCB8;
  if (!qword_27CF7BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCB8);
  }

  return result;
}

unint64_t sub_220C2FB18@<X0>(unint64_t *a1@<X8>)
{
  result = CloudCover.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudCover(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C2FCCC()
{
  result = qword_27CF7BCC0;
  if (!qword_27CF7BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCC0);
  }

  return result;
}

WeatherAnalytics::DetailType_optional __swiftcall DetailType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DetailType.rawValue.getter()
{
  result = 0x696C617551726961;
  switch(*v0)
  {
    case 1:
      result = 0x6B694C736C656566;
      break;
    case 2:
      result = 0x79746964696D7568;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6572757373657270;
      break;
    case 6:
      result = 0x53657369726E7573;
      break;
    case 7:
      result = 0x74617265706D6574;
      break;
    case 8:
      result = 0x7865646E497675;
      break;
    case 9:
      result = 0x696C696269736976;
      break;
    case 0xA:
      result = 1684957559;
      break;
    case 0xB:
      result = 0x736168506E6F6F6DLL;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C2FF18()
{
  result = qword_27CF7BCC8;
  if (!qword_27CF7BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCC8);
  }

  return result;
}

unint64_t sub_220C2FF90@<X0>(unint64_t *a1@<X8>)
{
  result = DetailType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DetailType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DetailType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C301CC()
{
  result = qword_27CF7BCD0;
  if (!qword_27CF7BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCD0);
  }

  return result;
}

WeatherAnalytics::ViewType_optional __swiftcall ViewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ViewType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 1953720684;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 7364973;
      break;
    case 4:
      result = 0x6C6961746564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C30310()
{
  result = qword_27CF7BCD8;
  if (!qword_27CF7BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCD8);
  }

  return result;
}

uint64_t sub_220C30388@<X0>(uint64_t *a1@<X8>)
{
  result = ViewType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C3053C()
{
  result = qword_2812CE7F0;
  if (!qword_2812CE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE7F0);
  }

  return result;
}

uint64_t sub_220C30658()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7BCF8);
  __swift_project_value_buffer(v0, qword_27CF7BCF8);
  return sub_220CA0244();
}

uint64_t ReverseGeocodingFailedEvent.data.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD10, &qword_220CA5520);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ReverseGeocodingFailedEvent.data.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD10, &qword_220CA5520);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t ReverseGeocodingFailedEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReverseGeocodingFailedEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReverseGeocodingFailedEvent.timedData.setter()
{
  v2 = *(OUTLINED_FUNCTION_8_2() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t ReverseGeocodingFailedEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReverseGeocodingFailedEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReverseGeocodingFailedEvent.privateUserData.setter()
{
  v2 = *(OUTLINED_FUNCTION_8_2() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t ReverseGeocodingFailedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD10, &qword_220CA5520);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for ReverseGeocodingFailedEvent(0);
  v5 = *(v4 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  (*(v6 + 104))(a1 + v5, v2);
  v7 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v9 = *(v8 + 104);

  return v9(a1 + v7, v2);
}

uint64_t ReverseGeocodingFailedEvent.Model.data.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t ReverseGeocodingFailedEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for ReverseGeocodingFailedEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t ReverseGeocodingFailedEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ReverseGeocodingFailedEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t ReverseGeocodingFailedEvent.Model.init(data:timedData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *a3;
  v9 = a3[1];
  v10 = *(a3 + 4);
  v11 = *(a3 + 20);
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  v12 = type metadata accessor for ReverseGeocodingFailedEvent.Model(0);
  v13 = *(v12 + 20);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  result = (*(v14 + 32))(a4 + v13, a2);
  v16 = a4 + *(v12 + 24);
  *v16 = v8;
  *(v16 + 8) = v9;
  *(v16 + 16) = v10;
  *(v16 + 20) = v11;
  return result;
}

uint64_t sub_220C30D00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_220C30E20(char a1)
{
  if (!a1)
  {
    return 1635017060;
  }

  if (a1 == 1)
  {
    return 0x74614464656D6974;
  }

  return 0x5565746176697270;
}

uint64_t sub_220C30E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C30D00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C30EB0(uint64_t a1)
{
  v2 = sub_220C31134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C30EEC(uint64_t a1)
{
  v2 = sub_220C31134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReverseGeocodingFailedEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD18, &qword_220CA5528);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C31134();
  sub_220CA1254();
  v10 = v2[1];
  v11 = *(v2 + 16);
  v26 = *v2;
  v27 = v10;
  LOBYTE(v28) = v11;
  v30 = 0;
  v12 = sub_220C31188();

  OUTLINED_FUNCTION_3_3(v13, v14, v15, &type metadata for ReverseGeocodingFailedEventData);

  if (!v12)
  {
    v16 = type metadata accessor for ReverseGeocodingFailedEvent.Model(0);
    LOBYTE(v26) = 1;
    sub_220CA04D4();
    sub_220C315AC(&qword_2812D0D80, MEMORY[0x277CEAED8]);
    sub_220CA1104();
    v17 = (v2 + *(v16 + 24));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v17 + 4);
    LOBYTE(v17) = *(v17 + 20);
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = v17;
    v30 = 2;
    sub_220BFF788();

    OUTLINED_FUNCTION_3_3(v21, v22, v23, &type metadata for PrivateUserData);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C31134()
{
  result = qword_27CF7BD20;
  if (!qword_27CF7BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD20);
  }

  return result;
}

unint64_t sub_220C31188()
{
  result = qword_2812CEC18;
  if (!qword_2812CEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC18);
  }

  return result;
}

uint64_t ReverseGeocodingFailedEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v28 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD28, &qword_220CA5530);
  OUTLINED_FUNCTION_3();
  v29 = v10;
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for ReverseGeocodingFailedEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_220C31134();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v16 = v14;
  v17 = v28;
  v36 = 0;
  sub_220C31558();
  OUTLINED_FUNCTION_4_6();
  sub_220CA1034();
  v18 = v33;
  v19 = v34;
  *v16 = v32;
  *(v16 + 8) = v18;
  *(v16 + 16) = v19;
  LOBYTE(v32) = 1;
  sub_220C315AC(&qword_2812D0D78, MEMORY[0x277CEAEE0]);
  sub_220CA1034();
  (*(v17 + 32))(v16 + *(v11 + 20), v8, v4);
  v36 = 2;
  sub_220BFF730();
  OUTLINED_FUNCTION_4_6();
  sub_220CA1034();
  v20 = OUTLINED_FUNCTION_6_1();
  v21(v20, v30);
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v25 = v16 + *(v11 + 24);
  *v25 = v32;
  *(v25 + 8) = v22;
  *(v25 + 16) = v23;
  *(v25 + 20) = v24;
  sub_220C315F0(v16, v27);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_220C31654(v16);
}

unint64_t sub_220C31558()
{
  result = qword_2812CEC10;
  if (!qword_2812CEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC10);
  }

  return result;
}

uint64_t sub_220C315AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_220CA04D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220C315F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReverseGeocodingFailedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C31654(uint64_t a1)
{
  v2 = type metadata accessor for ReverseGeocodingFailedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C31718(uint64_t a1)
{
  sub_220C31824(319, &qword_2812D0E58, sub_220C31558, sub_220C31188, &type metadata for ReverseGeocodingFailedEventData);
  if (v1 <= 0x3F)
  {
    sub_220C05010(319);
    if (v2 <= 0x3F)
    {
      sub_220C31824(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C31824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_220CA0044();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220C318C8(uint64_t a1)
{
  result = sub_220CA04D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReverseGeocodingFailedEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C31A2C()
{
  result = qword_27CF7BD40;
  if (!qword_27CF7BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD40);
  }

  return result;
}

unint64_t sub_220C31A84()
{
  result = qword_27CF7BD48;
  if (!qword_27CF7BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD48);
  }

  return result;
}

unint64_t sub_220C31ADC()
{
  result = qword_27CF7BD50;
  if (!qword_27CF7BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD50);
  }

  return result;
}

uint64_t NetworkOperationEventData.iterationIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t NetworkOperationEventData.errorDescriptions.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t NetworkOperationEventData.bundleIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t NetworkOperationEventData.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t NetworkOperationEventData.init(startTime:duration:iterationIndex:wasRacingRequest:errorDescriptions:cellularRadioAccessTechnology:bundleIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *a7;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 25) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = v10;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

uint64_t sub_220C31D44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746172657469 && a2 == 0xEE007865646E496ELL;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000220CB4FF0 == a2;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000220CB5010 == a2;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001DLL && 0x8000000220CB5030 == a2;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x8000000220CB5050 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_220CA1154();

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

unint64_t sub_220C31F8C(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727564;
      break;
    case 2:
      result = 0x6F69746172657469;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C32084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C31D44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C320AC(uint64_t a1)
{
  v2 = sub_220C323D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C320E8(uint64_t a1)
{
  v2 = sub_220C323D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkOperationEventData.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD58, &qword_220CA5750);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = *(v1 + 8);
  v21 = *(v1 + 16);
  v22 = v8;
  LODWORD(v8) = *(v1 + 24);
  v19 = *(v1 + 25);
  v20 = v8;
  v18 = *(v1 + 32);
  v17 = *(v1 + 40);
  v9 = *(v1 + 56);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_220C323D8();
  sub_220CA1254();
  LOBYTE(v25) = 0;
  v14 = v23;
  sub_220CA1124();
  if (!v14)
  {
    v23 = v9;
    LOBYTE(v25) = 1;
    OUTLINED_FUNCTION_1_6();
    sub_220CA1124();
    LOBYTE(v25) = 2;
    OUTLINED_FUNCTION_1_6();
    sub_220CA10B4();
    LOBYTE(v25) = 3;
    OUTLINED_FUNCTION_1_6();
    sub_220CA1084();
    v25 = v18;
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD60, &qword_220CA5758);
    sub_220C32788(&qword_2812CE7A0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_1_6();
    sub_220CA1094();
    LOBYTE(v25) = v17;
    v24 = 5;
    sub_220C01050();
    OUTLINED_FUNCTION_1_6();
    sub_220CA1104();
    LOBYTE(v25) = 6;
    OUTLINED_FUNCTION_1_6();
    sub_220CA10C4();
  }

  return (*(v4 + 8))(v7, v13);
}

unint64_t sub_220C323D8()
{
  result = qword_2812CF498;
  if (!qword_2812CF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF498);
  }

  return result;
}

uint64_t NetworkOperationEventData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD68, &qword_220CA5760);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C323D8();
  sub_220CA1234();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v35[0]) = 0;
    OUTLINED_FUNCTION_0_9();
    v11 = sub_220CA1054();
    LOBYTE(v35[0]) = 1;
    OUTLINED_FUNCTION_0_9();
    v12 = sub_220CA1054();
    LOBYTE(v35[0]) = 2;
    OUTLINED_FUNCTION_0_9();
    v30 = sub_220CA0FE4();
    v42 = v13 & 1;
    LOBYTE(v35[0]) = 3;
    OUTLINED_FUNCTION_0_9();
    v29 = sub_220CA0FB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD60, &qword_220CA5758);
    LOBYTE(v31) = 4;
    sub_220C32788(&qword_27CF7BD70, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_220CA0FC4();
    v28 = a2;
    v14 = v35[0];
    LOBYTE(v31) = 5;
    sub_220C327F4();
    sub_220CA1034();
    v27 = LOBYTE(v35[0]);
    v43 = 6;
    v15 = sub_220CA0FF4();
    v16 = v10;
    v18 = v17;
    (*(v7 + 8))(v16, v5);
    *&v31 = v11;
    *(&v31 + 1) = v12;
    *&v32 = v30;
    v26 = v42;
    BYTE8(v32) = v42;
    v19 = v29;
    BYTE9(v32) = v29;
    *&v33 = v14;
    v20 = v27;
    BYTE8(v33) = v27;
    *&v34 = v15;
    *(&v34 + 1) = v18;
    v21 = v34;
    v22 = v28;
    v28[2] = v33;
    v22[3] = v21;
    v23 = v32;
    *v22 = v31;
    v22[1] = v23;
    sub_220C32848(&v31, v35);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v35[0] = v11;
    v35[1] = v12;
    v35[2] = v30;
    v36 = v26;
    v37 = v19;
    v38 = v14;
    v39 = v20;
    v40 = v15;
    v41 = v18;
    return sub_220C32880(v35);
  }
}

uint64_t sub_220C32788(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF7BD60, &qword_220CA5758);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220C327F4()
{
  result = qword_2812CF1A8[0];
  if (!qword_2812CF1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CF1A8);
  }

  return result;
}

unint64_t sub_220C328B4()
{
  result = qword_2812CF470;
  if (!qword_2812CF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF470);
  }

  return result;
}

unint64_t sub_220C3290C()
{
  result = qword_2812CF478;
  if (!qword_2812CF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF478);
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

uint64_t sub_220C329A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_220C329E4(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for NetworkOperationEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C32B24()
{
  result = qword_27CF7BD78;
  if (!qword_27CF7BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD78);
  }

  return result;
}

unint64_t sub_220C32B7C()
{
  result = qword_2812CF488;
  if (!qword_2812CF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF488);
  }

  return result;
}

unint64_t sub_220C32BD4()
{
  result = qword_2812CF490;
  if (!qword_2812CF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF490);
  }

  return result;
}

WeatherAnalytics::PrecipitationIntensity_optional __swiftcall PrecipitationIntensity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PrecipitationIntensity.rawValue.getter()
{
  result = 0x64656C62616E65;
  switch(*v0)
  {
    case 1:
      result = 0x746867696CLL;
      break;
    case 2:
      result = 0x6574617265646F6DLL;
      break;
    case 3:
      result = 0x7976616568;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C32D0C()
{
  result = qword_27CF7BD80;
  if (!qword_27CF7BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD80);
  }

  return result;
}

uint64_t sub_220C32D84@<X0>(uint64_t *a1@<X8>)
{
  result = PrecipitationIntensity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationIntensity(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C32F38()
{
  result = qword_27CF7BD88;
  if (!qword_27CF7BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD88);
  }

  return result;
}

uint64_t GeocodeTelemetry.__allocating_init(backend:clock:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  GeocodeTelemetry.init(backend:clock:)(a1, a2);
  return v4;
}

Swift::Void __swiftcall GeocodeTelemetry.geocodeTaskWillBegin(for:)(CLLocation a1)
{
  OUTLINED_FUNCTION_16_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  v5 = OUTLINED_FUNCTION_14_1(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = sub_220C9F7D4();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_4();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v37 = v1[2];
  sub_220CA0574();
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  sub_220C9FDD4();
  v35 = v10;
  v18 = *(v10 + 16);
  v18(v7, v17, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  swift_beginAccess();
  v19 = v3;
  sub_220C3331C(v7, v19);
  swift_endAccess();
  v36 = v14;
  v18(v14, v17, v8);
  v20 = v19;
  v21 = sub_220CA0A64();
  v22 = sub_220CA0D84();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38 = v24;
    *v23 = 141558531;
    OUTLINED_FUNCTION_10_1();
    *(v23 + 4) = v25;
    *(v23 + 12) = 2081;
    v26 = [v20 description];
    v27 = sub_220CA0C24();
    v29 = v28;

    v30 = sub_220BFC484(v27, v29, &v38);

    *(v23 + 14) = v30;
    *(v23 + 22) = 2048;
    v31 = v36;
    sub_220C9F794();
    v33 = v32;
    v34 = *(v35 + 8);
    v34(v31, v8);
    *(v23 + 24) = v33;
    _os_log_impl(&dword_220BF4000, v21, v22, "Monitoring reverse-geocoding task. Location=%{private,mask.hash}s, Start Time=%f", v23, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  else
  {

    v34 = *(v35 + 8);
    v34(v36, v8);
  }

  sub_220CA0584();
  v34(v17, v8);
  OUTLINED_FUNCTION_15_4();
}

void sub_220C3331C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_220C9F7D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v9) == 1)
  {
    sub_220C34D84(a1);
    sub_220C34E78(v8, a2);

    sub_220C34D84(v8);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_220C35008(v12, a2, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }
}

void GeocodeTelemetry.geocodeTaskCompleted(for:reverseGeocodeSource:)()
{
  OUTLINED_FUNCTION_16_1();
  v111 = v2;
  v4 = v3;
  sub_220C9FCC4();
  OUTLINED_FUNCTION_3();
  v114 = v6;
  v115 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_4();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v94 - v11;
  MEMORY[0x28223BE20](v13);
  v105 = &v94 - v14;
  v106 = type metadata accessor for GeocodeTaskCompletedEvent(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v113 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  v19 = OUTLINED_FUNCTION_14_1(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v94 - v20;
  v22 = sub_220C9F7D4();
  OUTLINED_FUNCTION_3();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_4();
  v112 = v26 - v27;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_3();
  v108 = v29;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_3();
  v104 = v31;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13_2();
  MEMORY[0x28223BE20](v33);
  v35 = &v94 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v94 - v37;
  v107 = v4;
  sub_220C33C4C(v4, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_220C34D84(v21);
    goto LABEL_15;
  }

  v95 = v9;
  v109 = v12;
  v39 = v115;
  v40 = v24;
  v41 = *(v24 + 32);
  v97 = v24 + 32;
  v96 = v41;
  v41(v38, v21, v22);
  v42 = v114;
  v43 = v38;
  v44 = v0[11];
  v103 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 8, v44);
  sub_220C9FDD4();
  v45 = v35;
  v46 = *(v40 + 16);
  v98 = v1;
  v102 = v43;
  v46(v1, v43, v22);
  v47 = v104;
  v110 = v45;
  v48 = v22;
  v46(v104, v45, v22);
  v49 = v105;
  v100 = *(v42 + 16);
  v101 = v42 + 16;
  v100(v105, v111, v39);
  v50 = (*(v42 + 88))(v49, v39);
  v51 = *MEMORY[0x277D7AB18];
  v99 = v40;
  if (v50 != v51)
  {
    v54 = v112;
    if (v50 != *MEMORY[0x277D7AB10])
    {
      if (v50 == *MEMORY[0x277D7AB20])
      {
        v52 = 2;
LABEL_10:
        v53 = v54;
        goto LABEL_11;
      }

      (*(v114 + 8))(v49, v115);
    }

    v52 = 1;
    goto LABEL_10;
  }

  v52 = 0;
  v53 = v112;
LABEL_11:
  v55 = v113;
  v56 = v96;
  v96(v113, v98, v48);
  v57 = v106;
  v58 = v47;
  v59 = v48;
  v56(v55 + *(v106 + 20), v58, v48);
  v61 = v107;
  v60 = v108;
  *(v55 + *(v57 + 24)) = v107;
  *(v55 + *(v57 + 28)) = v52;
  v62 = v102;
  v46(v60, v102, v59);
  v46(v53, v110, v59);
  v63 = v115;
  v100(v109, v111, v115);
  v64 = v61;
  v65 = v103;
  v66 = sub_220CA0A64();
  v67 = sub_220CA0D84();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v116[0] = v111;
    *v68 = 141559043;
    OUTLINED_FUNCTION_10_1();
    *(v68 + 4) = v69;
    *(v68 + 12) = 2081;
    v70 = [v64 description];
    v107 = v66;
    v71 = v70;
    v72 = sub_220CA0C24();
    v73 = v112;
    v74 = v72;
    v76 = v75;

    v77 = sub_220BFC484(v74, v76, v116);

    *(v68 + 14) = v77;
    *(v68 + 22) = 2048;
    sub_220C9F794();
    v79 = v78;
    v80 = *(v99 + 8);
    v81 = v60;
    v82 = v109;
    LODWORD(v106) = v67;
    v80(v81, v59);
    *(v68 + 24) = v79;
    *(v68 + 32) = 2048;
    v65 = v103;
    sub_220C9F794();
    v84 = v83;
    v80(v73, v59);
    *(v68 + 34) = v84;
    *(v68 + 42) = 2080;
    v100(v95, v82, v63);
    v85 = sub_220CA0C34();
    v87 = v86;
    (*(v114 + 8))(v82, v63);
    v88 = sub_220BFC484(v85, v87, v116);

    *(v68 + 44) = v88;
    v89 = v107;
    _os_log_impl(&dword_220BF4000, v107, v106, "Submitting reverse-geocoding task completed event. Location=%{private,mask.hash}s, Start Time=%f, End Time=%f, reverseGeocodeSource=%s", v68, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    v62 = v102;
    OUTLINED_FUNCTION_8();
  }

  else
  {

    (*(v114 + 8))(v109, v63);
    v80 = *(v99 + 8);
    v80(v112, v59);
    v80(v60, v59);
  }

  v90 = v65[6];
  v91 = v65[7];
  __swift_project_boxed_opaque_existential_1(v65 + 3, v90);
  v92 = v113;
  (*(v91 + 8))(v113, v90, v91);
  OUTLINED_FUNCTION_5_3();
  sub_220C34DEC(v92, v93);
  v80(v110, v59);
  v80(v62, v59);
LABEL_15:
  OUTLINED_FUNCTION_15_4();
}

uint64_t sub_220C33C4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_220CA0574();
  v9 = OBJC_IVAR____TtC16WeatherAnalytics16GeocodeTelemetry_geocodingTasks;
  swift_beginAccess();
  sub_220C34B5C(*(v3 + v9), a2, a1);
  swift_endAccess();
  v10 = sub_220C9F7D4();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  swift_beginAccess();
  sub_220C3331C(v8, a1);
  swift_endAccess();
  return sub_220CA0584();
}

void GeocodeTelemetry.geocodeTaskFailed(for:error:reverseGeocodeSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_1();
  a21 = v24;
  a22 = v25;
  v216 = v26;
  v209 = v27;
  v29 = v28;
  v202 = type metadata accessor for GeocodeTaskFailedEvent(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v203 = (v32 - v31);
  sub_220C9FCC4();
  OUTLINED_FUNCTION_3();
  v214 = v33;
  v215 = v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_4();
  v201 = v35 - v36;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_3();
  v204 = v38;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v41);
  v43 = &v184[-v42];
  v208 = type metadata accessor for GeocodeTaskCompletedEvent(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_11();
  v213 = v46 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  v48 = OUTLINED_FUNCTION_14_1(v47);
  MEMORY[0x28223BE20](v48);
  v50 = &v184[-v49];
  v51 = sub_220C9F7D4();
  OUTLINED_FUNCTION_3();
  v53 = v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3_4();
  v199 = v55 - v56;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_13_2();
  MEMORY[0x28223BE20](v63);
  v65 = &v184[-v64];
  MEMORY[0x28223BE20](v66);
  v68 = &v184[-v67];
  MEMORY[0x28223BE20](v69);
  v71 = &v184[-v70];
  v195 = v29;
  sub_220C33C4C(v29, v50);
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) != 1)
  {
    v72 = *(v53 + 32);
    v198 = v53 + 32;
    v197 = v72;
    v72(v71, v50, v51);
    v73 = v22[11];
    v205 = v22;
    __swift_project_boxed_opaque_existential_1(v22 + 8, v73);
    sub_220C9FDD4();
    v200 = v53;
    v74 = *(v53 + 16);
    v74(v65, v71, v51);
    v212 = v68;
    v206 = v74;
    v207 = v53 + 16;
    v74(v23, v68, v51);
    v75 = v215;
    v76 = *(v215 + 16);
    v77 = v214;
    v210 = v215 + 16;
    v211 = v76;
    v76(v43, v216, v214);
    v78 = *(v75 + 88);
    v191 = v75 + 88;
    v190 = v78;
    v79 = v78(v43, v77);
    v189 = *MEMORY[0x277D7AB18];
    v80 = v71;
    if (v79 == v189)
    {
      v81 = 0;
      v82 = v205;
      v83 = v212;
      goto LABEL_10;
    }

    v84 = v43;
    v82 = v205;
    v83 = v212;
    if (v79 != *MEMORY[0x277D7AB10])
    {
      if (v79 == *MEMORY[0x277D7AB20])
      {
        v81 = 2;
        goto LABEL_10;
      }

      (*(v215 + 8))(v84, v214);
    }

    v81 = 1;
LABEL_10:
    v85 = v213;
    v86 = v197;
    v197(v213, v65, v51);
    v87 = v51;
    v88 = v208;
    v86(v85 + *(v208 + 20), v23, v87);
    v89 = v195;
    *(v85 + *(v88 + 24)) = v195;
    v90 = *(v88 + 28);
    v91 = v87;
    *(v85 + v90) = v81;
    v92 = OBJC_IVAR____TtC16WeatherAnalytics16GeocodeTelemetry_logger;
    v93 = v192;
    v208 = v80;
    v94 = v80;
    v96 = v206;
    v95 = v207;
    v206(v192, v94, v87);
    v97 = v193;
    v96(v193, v83, v87);
    v98 = OUTLINED_FUNCTION_12_0(&a13);
    v99 = v214;
    v211(v98, v216, v214);
    v100 = v89;
    v101 = v82;
    v188 = v92;
    v102 = sub_220CA0A64();
    v103 = sub_220CA0D84();
    v104 = os_log_type_enabled(v102, v103);
    v187 = v100;
    if (v104)
    {
      v105 = swift_slowAlloc();
      v185 = v103;
      v106 = v99;
      v107 = v105;
      v186 = swift_slowAlloc();
      v217[0] = v186;
      *v107 = 141559043;
      OUTLINED_FUNCTION_10_1();
      *(v107 + 4) = v108;
      *(v107 + 12) = 2081;
      v109 = [v100 description];
      v110 = sub_220CA0C24();
      v112 = v111;

      v113 = sub_220BFC484(v110, v112, v217);

      *(v107 + 14) = v113;
      *(v107 + 22) = 2048;
      sub_220C9F794();
      v115 = v114;
      v116 = v95;
      v117 = *(v200 + 8);
      (v117)(v93, v91);
      *(v107 + 24) = v115;
      *(v107 + 32) = 2048;
      v118 = v205;
      sub_220C9F794();
      v120 = v119;
      OUTLINED_FUNCTION_9_2();
      *(v121 - 256) = v117;
      v117();
      *(v107 + 34) = v120;
      *(v107 + 42) = 2080;
      v122 = OUTLINED_FUNCTION_12_0(&a17);
      v211(v122, v116, v106);
      v123 = sub_220CA0C34();
      v125 = v124;
      v194 = *(v215 + 8);
      v194(v116, v106);
      sub_220BFC484(v123, v125, v217);
      OUTLINED_FUNCTION_17_0();
      *(v107 + 44) = v123;
      _os_log_impl(&dword_220BF4000, v102, v185, "Submitting reverse-geocoding task completed event. Location=%{private,mask.hash}s, Start Time=%f, End Time=%f, reverseGeocodeSource=%s", v107, 0x34u);
      OUTLINED_FUNCTION_12_0(&v215);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();

      v126 = v203;
      v127 = v211;
    }

    else
    {

      v194 = *(v215 + 8);
      v194(v95, v99);
      v128 = *(v200 + 8);
      (v128)(v97, v91);
      OUTLINED_FUNCTION_9_2();
      *(v129 - 256) = v128;
      v128();
      v126 = v203;
      v106 = v99;
      v127 = v211;
      v118 = v101;
    }

    v130 = v118[6];
    v131 = v118[7];
    v132 = __swift_project_boxed_opaque_existential_1(v118 + 3, v130);
    (*(v131 + 8))(v213, v130, v131);
    v217[0] = v209;
    v133 = v209;
    v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD90, &qword_220CA5AD8);
    v186 = sub_220CA0C34();
    v192 = v134;
    v135 = OUTLINED_FUNCTION_11_4(&a15);
    v132(v135);
    v136 = v196;
    (v132)(v196, v212, v91);
    v137 = v204;
    v127(v204, v216, v106);
    v138 = v187;
    v139 = sub_220CA0A64();
    v140 = sub_220CA0D84();

    v141 = os_log_type_enabled(v139, v140);
    v203 = v138;
    if (v141)
    {
      v142 = swift_slowAlloc();
      LODWORD(v187) = v140;
      v102 = v142;
      v188 = swift_slowAlloc();
      v217[0] = v188;
      *v102 = 141559555;
      OUTLINED_FUNCTION_10_1();
      *(v102 + 4) = v143;
      *(v102 + 12) = 2081;
      v144 = [v138 description];
      v145 = sub_220CA0C24();
      v147 = v146;

      v148 = sub_220BFC484(v145, v147, v217);

      *(v102 + 14) = v148;
      *(v102 + 22) = 2048;
      sub_220C9F794();
      v150 = v149;
      OUTLINED_FUNCTION_9_2();
      v152 = *(v151 - 256);
      v152();
      *(v102 + 24) = v150;
      *(v102 + 32) = 2048;
      sub_220C9F794();
      v154 = v153;
      (v152)(v136, v91);
      *(v102 + 34) = v154;
      *(v102 + 42) = 2160;
      OUTLINED_FUNCTION_10_1();
      *(v102 + 44) = v155;
      *(v102 + 52) = 2081;
      sub_220BFC484(v186, v192, v217);
      OUTLINED_FUNCTION_17_0();
      *(v102 + 54) = 2048;
      *(v102 + 62) = 2080;
      v156 = OUTLINED_FUNCTION_12_0(&a17);
      v157 = v204;
      v158 = v214;
      v211(v156, v204, v214);
      v159 = sub_220CA0C34();
      v161 = v160;
      v194(v157, v158);
      sub_220BFC484(v159, v161, v217);
      OUTLINED_FUNCTION_17_0();
      *(v102 + 64) = v159;
      _os_log_impl(&dword_220BF4000, v139, v187, "Submitting reverse-geocoding task failed event. Location=%{private,mask.hash}s, Start Time=%f, End Time=%f, Error Description=%{private,mask.hash}s reverseGeocodeSource=%s", v102, 0x48u);
      OUTLINED_FUNCTION_12_0(v217);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }

    else
    {

      v162 = v214;
      v194(v137, v214);
      OUTLINED_FUNCTION_9_2();
      v161 = *(v163 - 256);
      v161();
      (v161)(v102, v91);
      v158 = v162;
    }

    v164 = OUTLINED_FUNCTION_11_4(&a20);
    (v161)(v164);
    v165 = v199;
    (v161)(v199, v212, v91);
    v217[0] = v209;
    v166 = v209;
    v167 = sub_220CA0C34();
    v169 = v168;
    v170 = v201;
    v211(v201, v216, v158);
    v171 = v190(v170, v158);
    if (v171 == v189)
    {
      v172 = 0;
LABEL_23:
      v173 = v197;
      v197(v126, v102, v91);
      v174 = v202;
      v173(v126 + *(v202 + 20), v165, v91);
      v175 = v203;
      *(v126 + v174[6]) = v203;
      v176 = (v126 + v174[7]);
      *v176 = v167;
      v176[1] = v169;
      *(v126 + v174[8]) = v172;
      v177 = v205[6];
      v178 = v205[7];
      __swift_project_boxed_opaque_existential_1(v205 + 3, v177);
      v179 = *(v178 + 16);
      v180 = v175;
      v179(v126, v177, v178);
      sub_220C34DEC(v126, type metadata accessor for GeocodeTaskFailedEvent);
      OUTLINED_FUNCTION_5_3();
      sub_220C34DEC(v213, v181);
      OUTLINED_FUNCTION_9_2();
      v183 = *(v182 - 256);
      v183();
      (v183)(v208, v91);
      goto LABEL_24;
    }

    if (v171 != *MEMORY[0x277D7AB10])
    {
      if (v171 == *MEMORY[0x277D7AB20])
      {
        v172 = 2;
        goto LABEL_23;
      }

      v194(v170, v158);
    }

    v172 = 1;
    goto LABEL_23;
  }

  sub_220C34D84(v50);
LABEL_24:
  OUTLINED_FUNCTION_15_4();
}

uint64_t sub_220C34B5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_220C34FC4(a3), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = sub_220C9F7D4();
    (*(*(v9 - 8) + 16))(a2, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_220C9F7D4();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

char *sub_220C34C90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD98, &qword_220CA5B70);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_220C34D84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220C34DEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220C34E78@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v4 = sub_220C34FC4(a2);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDA0, &qword_220CA5B78);
    sub_220CA0F64();

    v7 = *(v13 + 56);
    v8 = sub_220C9F7D4();
    (*(*(v8 - 8) + 32))(a1, v7 + *(*(v8 - 8) + 72) * v6, v8);
    sub_220C352D8();
    sub_220C3531C();
    sub_220CA0F74();
    *v2 = v13;
    v9 = a1;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = sub_220C9F7D4();
    v9 = a1;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

unint64_t sub_220C34FC4(uint64_t a1)
{
  v2 = sub_220CA0EC4();

  return sub_220C35218(a1, v2);
}

id sub_220C35008(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_220C34FC4(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDA0, &qword_220CA5B78);
  if ((sub_220CA0F64() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_220C34FC4(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_220C352D8();
    result = sub_220CA11A4();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v4;
  if (v10)
  {
    v14 = v13[7];
    v15 = sub_220C9F7D4();
    v16 = *(v15 - 8);
    v17 = *(v16 + 40);
    v18 = v15;
    v19 = v14 + *(v16 + 72) * v9;

    return v17(v19, a1, v18);
  }

  else
  {
    sub_220C3516C(v9, a2, a1, v13);

    return a2;
  }
}

uint64_t sub_220C3516C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_220C9F7D4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_220C35218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_220C352D8();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_220CA0ED4();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_220C352D8()
{
  result = qword_2812D0F68;
  if (!qword_2812D0F68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812D0F68);
  }

  return result;
}

unint64_t sub_220C3531C()
{
  result = qword_2812D0F60;
  if (!qword_2812D0F60)
  {
    sub_220C352D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0F60);
  }

  return result;
}

uint64_t sub_220C35374(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v18 = OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionKind;
  v23 = sub_220CA0434();
  v25 = *(v23 - 8);
  (*(v25 + 16))(v9 + v18, a1, v23);
  *(v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager) = a2;

  *(v9 + 16) = sub_220CA0104();
  *(v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_client) = a3;
  sub_220BF92A0(a4, v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService);
  sub_220BF92A0(a5, v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_cellularRadioAccessTechnologyProvider);
  sub_220BF92A0(a6, v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_locationAccessDataProvider);
  sub_220BF92A0(a7, v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_appConfigurationManager);
  sub_220BF92A0(a8, v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_privacySampler);
  v20 = a3;
  sub_220C3682C();
  sub_220C35E5C();
  sub_220CA0094();
  sub_220C36A64();
  sub_220C36E18();
  sub_220C37778();
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_220C393B8(&qword_2812CF608, type metadata accessor for WidgetSessionCoordinator, &protocol conformance descriptor for WidgetSessionCoordinator);

  sub_220C9FC24();

  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  sub_220C393B8(&qword_2812CF600, type metadata accessor for WidgetSessionCoordinator, &protocol conformance descriptor for WidgetSessionCoordinator);

  sub_220C9FDA4();

  __swift_destroy_boxed_opaque_existential_1(a8);
  __swift_destroy_boxed_opaque_existential_1(a6);
  __swift_destroy_boxed_opaque_existential_1(a5);
  (*(v25 + 8))(a1, v23);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v9;
}