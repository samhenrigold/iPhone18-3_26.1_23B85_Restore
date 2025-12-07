uint64_t sub_220C712D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF98, &qword_220CAE0D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_220C71340(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_220C71544(v8, v7);
  v10 = *(sub_220C9F7D4() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_220C71640(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_220C7142C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFD8, &qword_220CAE118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_220C71544(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFE0, &unk_220CAE120);
  v4 = *(sub_220C9F7D4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220C71640(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_220C9F7D4(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_220C9F7D4();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_220C71714(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220C71834()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_2812D0138);
  __swift_project_value_buffer(v0, qword_2812D0138);
  return sub_220CA0244();
}

uint64_t LocationViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t LocationViewEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t LocationViewEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.timedData.setter()
{
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationViewEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.orientationData.setter()
{
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationViewEvent.viewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.viewData.setter()
{
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationViewEvent.locationListPositionData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.locationListPositionData.setter()
{
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationViewEvent.temperatureScaleData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.temperatureScaleData.setter()
{
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationViewEvent.locationConditionData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.locationConditionData.setter()
{
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationViewEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.locationData.setter()
{
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationViewEvent.locationViewLoadErrorData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFE8, &qword_220CAE150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.locationViewLoadErrorData.setter()
{
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFE8, &qword_220CAE150);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationViewEvent.locationViewLoadPerfLogData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF0, &unk_220CAE158);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.locationViewLoadPerfLogData.setter()
{
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF0, &unk_220CAE158);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationViewEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.privateUserData.setter()
{
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationViewEvent.aqiData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF8, &qword_220CAE168);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.aqiData.setter()
{
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF8, &qword_220CAE168);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationViewEvent.aqiAvailabilityData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D000, &qword_220CAE170);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.aqiAvailabilityData.setter()
{
  OUTLINED_FUNCTION_16_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D000, &qword_220CAE170);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t LocationViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for LocationViewEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v5 = OUTLINED_FUNCTION_19_3();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0();
  v7 = OUTLINED_FUNCTION_19_3();
  v8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v9 = OUTLINED_FUNCTION_19_3();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
  OUTLINED_FUNCTION_0_0();
  v11 = OUTLINED_FUNCTION_19_3();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_0_0();
  v13 = OUTLINED_FUNCTION_19_3();
  v14(v13);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_0_0();
  (*(v17 + 104))(a1 + v15, v16);
  v18 = v4[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0();
  (*(v19 + 104))(a1 + v18, v2);
  v20 = v4[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFE8, &qword_220CAE150);
  OUTLINED_FUNCTION_0_0();
  (*(v21 + 104))(a1 + v20, v16);
  v22 = v4[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF0, &unk_220CAE158);
  OUTLINED_FUNCTION_0_0();
  (*(v23 + 104))(a1 + v22, v16);
  v24 = v4[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  (*(v25 + 104))(a1 + v24, v2);
  v26 = v4[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF8, &qword_220CAE168);
  OUTLINED_FUNCTION_0_0();
  (*(v27 + 104))(a1 + v26, v16);
  v28 = v4[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D000, &qword_220CAE170);
  OUTLINED_FUNCTION_0_0();
  v30 = *(v29 + 104);

  return v30(a1 + v28, v16);
}

uint64_t LocationViewEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t LocationViewEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for LocationViewEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t LocationViewEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for LocationViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t LocationViewEvent.Model.viewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for LocationViewEvent.Model(v2) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t LocationViewEvent.Model.locationListPositionData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for LocationViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t LocationViewEvent.Model.temperatureScaleData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for LocationViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 36));
  return result;
}

__n128 LocationViewEvent.Model.locationConditionData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for LocationViewEvent.Model(v2) + 40));
  *v0 = result;
  return result;
}

__n128 LocationViewEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for LocationViewEvent.Model(v2) + 44));
  *v0 = result;
  return result;
}

uint64_t LocationViewEvent.Model.locationViewLoadErrorData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = v1 + *(type metadata accessor for LocationViewEvent.Model(v2) + 48);
  v4 = *(v3 + 24);
  v5 = *(v3 + 28);
  *v0 = *v3;
  *(v0 + 8) = *(v3 + 8);
  *(v0 + 28) = v5;
  *(v0 + 24) = v4;
}

__n128 LocationViewEvent.Model.locationViewLoadPerfLogData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = v1 + *(type metadata accessor for LocationViewEvent.Model(v2) + 52);
  v4 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v4;
  result = *(v3 + 32);
  *(v0 + 32) = result;
  *(v0 + 48) = *(v3 + 48);
  return result;
}

uint64_t LocationViewEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for LocationViewEvent.Model(v2) + 56));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t LocationViewEvent.Model.aqiData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = v1 + *(type metadata accessor for LocationViewEvent.Model(v2) + 60);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *v0 = *v3;
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
}

uint64_t LocationViewEvent.Model.aqiAvailabilityData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for LocationViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 64));
  return result;
}

__n128 LocationViewEvent.Model.init(eventData:timedData:orientationData:viewData:locationListPositionData:temperatureScaleData:locationConditionData:locationData:locationViewLoadErrorData:locationViewLoadPerfLogData:privateUserData:aqiData:aqiAvailabilityData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t *a4@<X3>, int *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t *a12, __n128 *a13, char *a14)
{
  v17 = *a3;
  v19 = *a4;
  v18 = a4[1];
  v20 = *(a4 + 8);
  v21 = *a5;
  v37 = *a6;
  v38 = a7[1];
  v39 = *a7;
  v22 = *a8;
  v23 = a8[1];
  v42 = *a10;
  v43 = *(a10 + 6);
  v40 = *(a10 + 14);
  v41 = *(a10 + 2);
  v47 = *a12;
  v46 = a12[1];
  v44 = *(a12 + 20);
  v45 = *(a12 + 4);
  v50 = *a13;
  v49 = a13[1].n128_u64[0];
  v48 = a13[1].n128_u8[8];
  v51 = *a14;
  sub_220CA0494();
  OUTLINED_FUNCTION_0_0();
  (*(v24 + 32))(a9, a1);
  v25 = type metadata accessor for LocationViewEvent.Model(0);
  v26 = v25[5];
  sub_220CA04D4();
  OUTLINED_FUNCTION_0_0();
  (*(v27 + 32))(a9 + v26, a2);
  *(a9 + v25[6]) = v17;
  v28 = a9 + v25[7];
  *v28 = v19;
  *(v28 + 8) = v18;
  *(v28 + 16) = v20;
  *(a9 + v25[8]) = v21;
  *(a9 + v25[9]) = v37;
  v29 = (a9 + v25[10]);
  *v29 = v39;
  v29[1] = v38;
  v30 = (a9 + v25[11]);
  *v30 = v22;
  v30[1] = v23;
  v31 = a9 + v25[12];
  *v31 = v42;
  *(v31 + 16) = v41;
  *(v31 + 28) = v40;
  *(v31 + 24) = v43;
  v32 = a9 + v25[13];
  *(v32 + 48) = *(a11 + 48);
  v33 = *(a11 + 32);
  *(v32 + 16) = *(a11 + 16);
  *(v32 + 32) = v33;
  *v32 = *a11;
  v34 = a9 + v25[14];
  *v34 = v47;
  *(v34 + 8) = v46;
  *(v34 + 16) = v45;
  *(v34 + 20) = v44;
  v35 = (a9 + v25[15]);
  result = v50;
  *v35 = v50;
  v35[1].n128_u64[0] = v49;
  v35[1].n128_u8[8] = v48;
  *(a9 + v25[16]) = v51;
  return result;
}

uint64_t sub_220C73078(uint64_t a1, uint64_t a2)
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
        v8 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x8000000220CB4CB0 == a2;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000220CB4B90 == a2;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x8000000220CB4CD0 == a2;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x8000000220CB5DC0 == a2;
                  if (v13 || (sub_220CA1154() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001BLL && 0x8000000220CB5DE0 == a2;
                    if (v14 || (sub_220CA1154() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x5565746176697270 && a2 == 0xEF61746144726573;
                      if (v15 || (sub_220CA1154() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x61746144697161 && a2 == 0xE700000000000000;
                        if (v16 || (sub_220CA1154() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000013 && 0x8000000220CB5E00 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_220CA1154();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

uint64_t sub_220C73478(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x4464656D6974;
      goto LABEL_8;
    case 2:
      v3 = 0x746E6569726FLL;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 3:
      result = 0x6174614477656976;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0x5565746176697270;
      break;
    case 11:
      result = 0x61746144697161;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C73624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C73078(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C7364C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C73470();
  *a1 = result;
  return result;
}

uint64_t sub_220C73674(uint64_t a1)
{
  v2 = sub_220C73BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C736B0(uint64_t a1)
{
  v2 = sub_220C73BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D008, &qword_220CAE178);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C73BD0();
  sub_220CA1254();
  LOBYTE(v34) = 0;
  sub_220CA0494();
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v11, v12, MEMORY[0x277CEAEB8]);
  OUTLINED_FUNCTION_1_1();
  sub_220CA1104();
  if (!v2)
  {
    v13 = type metadata accessor for LocationViewEvent.Model(0);
    LOBYTE(v34) = 1;
    sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    sub_220C04F84(v14, v15, MEMORY[0x277CEAED8]);
    OUTLINED_FUNCTION_1_1();
    sub_220CA1104();
    LOWORD(v34) = *(v3 + v13[6]);
    LOBYTE(v39) = 2;
    sub_220BFE5BC();
    OUTLINED_FUNCTION_4_14();
    sub_220CA1104();
    v16 = (v3 + v13[7]);
    v17 = *v16;
    v18 = v16[1];
    LOWORD(v16) = *(v16 + 8);
    *&v34 = v17;
    *(&v34 + 1) = v18;
    LOWORD(v35) = v16;
    LOBYTE(v39) = 3;
    sub_220C04820();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_7_11();
    sub_220CA1104();

    LODWORD(v34) = *(v3 + v13[8]);
    LOBYTE(v39) = 4;
    sub_220C05418();
    OUTLINED_FUNCTION_4_14();
    sub_220CA1104();
    LOBYTE(v34) = *(v3 + v13[9]);
    LOBYTE(v39) = 5;
    sub_220BFF604();
    OUTLINED_FUNCTION_4_14();
    sub_220CA1104();
    v34 = *(v3 + v13[10]);
    LOBYTE(v39) = 6;
    sub_220C054C0();
    OUTLINED_FUNCTION_4_14();
    sub_220CA1094();
    v34 = *(v3 + v13[11]);
    LOBYTE(v39) = 7;
    sub_220C05568();
    OUTLINED_FUNCTION_4_14();
    sub_220CA1104();
    v20 = (v3 + v13[12]);
    v21 = *(v20 + 6);
    v22 = *(v20 + 14);
    v39 = *v20;
    v40 = *(v20 + 1);
    v42 = v22;
    v41 = v21;
    v38 = 8;
    sub_220C05610();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_7_11();
    sub_220CA1094();

    v23 = (v3 + v13[13]);
    v24 = v23[1];
    v34 = *v23;
    v35 = v24;
    v36 = v23[2];
    v37 = *(v23 + 24);
    v33 = 9;
    sub_220C056B8();
    OUTLINED_FUNCTION_1_1();
    sub_220CA1094();
    v25 = (v3 + v13[14]);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v25 + 4);
    LOBYTE(v25) = *(v25 + 20);
    *&v34 = v26;
    *(&v34 + 1) = v27;
    LODWORD(v35) = v28;
    BYTE4(v35) = v25;
    v33 = 10;
    sub_220BFF788();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_7_11();
    sub_220CA1104();

    v29 = (v3 + v13[15]);
    v30 = *(v29 + 2);
    v31 = *(v29 + 24);
    v34 = *v29;
    *&v35 = v30;
    BYTE8(v35) = v31;
    v33 = 11;
    sub_220C05760();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_7_11();
    sub_220CA1094();

    LOBYTE(v34) = *(v3 + v13[16]);
    v33 = 12;
    sub_220C05808();
    OUTLINED_FUNCTION_1_1();
    sub_220CA1094();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C73BD0()
{
  result = qword_27CF7D010;
  if (!qword_27CF7D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D010);
  }

  return result;
}

uint64_t LocationViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v55 = v5;
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v8 = v7 - v6;
  v9 = sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v57 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v14 = v13 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D018, &qword_220CAE180);
  OUTLINED_FUNCTION_3();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v60 = type metadata accessor for LocationViewEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11();
  v58 = a1;
  v59 = v22 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C73BD0();
  v52 = v19;
  sub_220CA1234();
  v54 = v9;
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v50 = v16;
  LOBYTE(v64) = 0;
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v23, v24, MEMORY[0x277CEAEC0]);
  sub_220CA1034();
  v25 = v9;
  v26 = v59;
  (*(v57 + 32))(v59, v14, v25);
  LOBYTE(v64) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v27, v28, MEMORY[0x277CEAEE0]);
  v29 = v56;
  sub_220CA1034();
  v30 = v60;
  (*(v55 + 32))(v26 + v60[5], v8, v29);
  LOBYTE(v61) = 2;
  sub_220BFE564();
  OUTLINED_FUNCTION_2_16();
  sub_220CA1034();
  *(v26 + v30[6]) = v64;
  LOBYTE(v61) = 3;
  sub_220C0449C();
  OUTLINED_FUNCTION_2_16();
  sub_220CA1034();
  v31 = *(&v64 + 1);
  v32 = v65;
  v33 = v26 + v30[7];
  *v33 = v64;
  *(v33 + 8) = v31;
  *(v33 + 16) = v32;
  LOBYTE(v61) = 4;
  sub_220C053C4();
  OUTLINED_FUNCTION_2_16();
  sub_220CA1034();
  *(v26 + v30[8]) = v64;
  LOBYTE(v61) = 5;
  sub_220BFF5AC();
  OUTLINED_FUNCTION_2_16();
  sub_220CA1034();
  *(v26 + v30[9]) = v64;
  LOBYTE(v61) = 6;
  sub_220C0546C();
  OUTLINED_FUNCTION_2_16();
  sub_220CA0FC4();
  *(v26 + v30[10]) = v64;
  LOBYTE(v61) = 7;
  sub_220C05514();
  OUTLINED_FUNCTION_2_16();
  sub_220CA1034();
  *(v26 + v30[11]) = v64;
  LOBYTE(v61) = 8;
  sub_220C055BC();
  OUTLINED_FUNCTION_2_16();
  sub_220CA0FC4();
  v34 = v65;
  v35 = DWORD2(v65);
  v36 = WORD6(v65);
  v37 = v26 + v30[12];
  *v37 = v64;
  *(v37 + 16) = v34;
  *(v37 + 28) = v36;
  *(v37 + 24) = v35;
  v69 = 9;
  sub_220C05664();
  sub_220CA0FC4();
  v38 = v59 + v60[13];
  v39 = v65;
  *v38 = v64;
  *(v38 + 16) = v39;
  *(v38 + 32) = v66;
  *(v38 + 48) = v67;
  v68 = 10;
  sub_220BFF730();
  OUTLINED_FUNCTION_10_8();
  sub_220CA1034();
  v40 = *(&v61 + 1);
  v41 = v62;
  v42 = BYTE4(v62);
  v43 = v59 + v60[14];
  *v43 = v61;
  *(v43 + 8) = v40;
  *(v43 + 16) = v41;
  *(v43 + 20) = v42;
  v68 = 11;
  sub_220C0570C();
  OUTLINED_FUNCTION_10_8();
  sub_220CA0FC4();
  v44 = v62;
  v45 = v63;
  v46 = v59 + v60[15];
  *v46 = v61;
  *(v46 + 16) = v44;
  *(v46 + 24) = v45;
  v68 = 12;
  sub_220C057B4();
  OUTLINED_FUNCTION_10_8();
  sub_220CA0FC4();
  (*(v50 + 8))(v52, v53);
  v47 = v59;
  *(v59 + v60[16]) = v61;
  sub_220C74438(v47, v51);
  __swift_destroy_boxed_opaque_existential_1(v58);
  return sub_220C7449C(v47);
}

uint64_t sub_220C74438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C7449C(uint64_t a1)
{
  v2 = type metadata accessor for LocationViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C74588(uint64_t a1)
{
  sub_220CA0494();
  if (v1 <= 0x3F)
  {
    sub_220CA04D4();
    if (v2 <= 0x3F)
    {
      sub_220BFE7B0(319, &qword_27CF7D030, &type metadata for LocationConditionData);
      if (v3 <= 0x3F)
      {
        sub_220BFE7B0(319, &qword_27CF7D038, &type metadata for LocationViewLoadErrorData);
        if (v4 <= 0x3F)
        {
          sub_220BFE7B0(319, &qword_27CF7D040, &type metadata for LocationViewLoadPerfLogData);
          if (v5 <= 0x3F)
          {
            sub_220BFE7B0(319, &qword_27CF7D048, &type metadata for AQIData);
            if (v6 <= 0x3F)
            {
              sub_220BFE7B0(319, &qword_27CF7D050, &type metadata for AQIAvailabilityData);
              if (v7 <= 0x3F)
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

uint64_t getEnumTagSinglePayload for LocationViewEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocationViewEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C74878()
{
  result = qword_27CF7D058;
  if (!qword_27CF7D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D058);
  }

  return result;
}

unint64_t sub_220C748D0()
{
  result = qword_27CF7D060;
  if (!qword_27CF7D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D060);
  }

  return result;
}

unint64_t sub_220C74928()
{
  result = qword_27CF7D068;
  if (!qword_27CF7D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D068);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_1()
{
}

WeatherAnalytics::ComponentType_optional __swiftcall ComponentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA1194();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ComponentType.rawValue.getter()
{
  result = 0x6C41657265766573;
  switch(*v0)
  {
    case 1:
      result = 0x6F46796C72756F68;
      break;
    case 2:
      result = 0x726F46796C696164;
      break;
    case 3:
      v2 = 0x617551726961;
      goto LABEL_17;
    case 4:
      result = 0x6B694C736C656566;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6572757373657270;
      break;
    case 8:
      result = 0x79746964696D7568;
      break;
    case 9:
      result = 0x7865646E497675;
      break;
    case 0xA:
      v2 = 0x696269736976;
LABEL_17:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x696C000000000000;
      break;
    case 0xB:
      result = 7364973;
      break;
    case 0xC:
      result = 0x53657369726E7573;
      break;
    case 0xD:
      result = 1684957559;
      break;
    case 0xE:
      result = 1852796781;
      break;
    case 0xF:
      result = 0x7365676172657661;
      break;
    case 0x10:
      result = 0x697472417377656ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C74BE8()
{
  result = qword_27CF7D070;
  if (!qword_27CF7D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D070);
  }

  return result;
}

uint64_t sub_220C74C60@<X0>(uint64_t *a1@<X8>)
{
  result = ComponentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ComponentType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C74E14()
{
  result = qword_2812D06B8;
  if (!qword_2812D06B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D06B8);
  }

  return result;
}

WeatherAnalytics::WidgetType_optional __swiftcall WidgetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WidgetType.rawValue.getter()
{
  v1 = 0x695764656E6E6970;
  if (*v0 != 1)
  {
    v1 = 0x6B63617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_220C74F34()
{
  result = qword_27CF7D078;
  if (!qword_27CF7D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D078);
  }

  return result;
}

uint64_t sub_220C74FAC@<X0>(uint64_t *a1@<X8>)
{
  result = WidgetType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C75160()
{
  result = qword_27CF7D080;
  if (!qword_27CF7D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D080);
  }

  return result;
}

WeatherAnalytics::LinkType_optional __swiftcall LinkType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LinkType.rawValue.getter()
{
  v1 = 1936744813;
  if (*v0 != 1)
  {
    v1 = 0x72656469766F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_220C75274()
{
  result = qword_27CF7D088;
  if (!qword_27CF7D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D088);
  }

  return result;
}

uint64_t sub_220C752EC@<X0>(uint64_t *a1@<X8>)
{
  result = LinkType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LinkType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C754A0()
{
  result = qword_27CF7D090;
  if (!qword_27CF7D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D090);
  }

  return result;
}

uint64_t FirstLaunchEventData.eventID.setter()
{
  OUTLINED_FUNCTION_4_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t FirstLaunchEventData.languageCode.setter()
{
  OUTLINED_FUNCTION_4_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t FirstLaunchEventData.countryCode.setter()
{
  OUTLINED_FUNCTION_4_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t FirstLaunchEventData.osVersion.setter()
{
  OUTLINED_FUNCTION_4_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t FirstLaunchEventData.osBuild.setter()
{
  OUTLINED_FUNCTION_4_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

__n128 FirstLaunchEventData.init(eventID:date:isFirstLaunchOfMonth:isDnu:utcOffset:languageCode:countryCode:osVersion:osBuild:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 25) = a5;
  *(a9 + 28) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10;
  *(a9 + 64) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  return result;
}

uint64_t sub_220C75868(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000220CB5780 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x756E447369 && a2 == 0xE500000000000000;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657366664F637475 && a2 == 0xE900000000000074;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x646C697542736FLL && a2 == 0xE700000000000000)
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

unint64_t sub_220C75B40(char a1)
{
  result = 0x4449746E657665;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x756E447369;
      break;
    case 4:
      result = 0x657366664F637475;
      break;
    case 5:
      result = 0x65676175676E616CLL;
      break;
    case 6:
      result = 0x437972746E756F63;
      break;
    case 7:
      result = 0x6F6973726556736FLL;
      break;
    case 8:
      result = 0x646C697542736FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C75C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C75868(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C75C7C(uint64_t a1)
{
  v2 = sub_220C75F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C75CB8(uint64_t a1)
{
  v2 = sub_220C75F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FirstLaunchEventData.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D098, &qword_220CAE7E0);
  OUTLINED_FUNCTION_4_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v20 = *(v1 + 16);
  v9 = *(v1 + 24);
  v18 = *(v1 + 25);
  v19 = v9;
  v17 = *(v1 + 28);
  v10 = *(v1 + 32);
  v16[7] = *(v1 + 40);
  v16[8] = v10;
  v11 = *(v1 + 56);
  v16[5] = *(v1 + 48);
  v16[6] = v11;
  v12 = *(v1 + 72);
  v16[3] = *(v1 + 64);
  v16[4] = v12;
  v13 = *(v1 + 88);
  v16[1] = *(v1 + 80);
  v16[2] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C75F78();
  sub_220CA1254();
  v30 = 0;
  v14 = v21;
  sub_220CA10C4();
  if (!v14)
  {
    v29 = 1;
    OUTLINED_FUNCTION_7_12();
    sub_220CA1124();
    v28 = 2;
    OUTLINED_FUNCTION_7_12();
    sub_220CA10D4();
    v27 = 3;
    OUTLINED_FUNCTION_7_12();
    sub_220CA10D4();
    v26 = 4;
    OUTLINED_FUNCTION_7_12();
    sub_220CA1114();
    v25 = 5;
    OUTLINED_FUNCTION_5_10();
    sub_220CA10C4();
    v24 = 6;
    OUTLINED_FUNCTION_5_10();
    sub_220CA10C4();
    v23 = 7;
    OUTLINED_FUNCTION_5_10();
    sub_220CA10C4();
    v22 = 8;
    OUTLINED_FUNCTION_5_10();
    sub_220CA1074();
  }

  return (*(v5 + 8))(v8, v2);
}

unint64_t sub_220C75F78()
{
  result = qword_2812CFC90;
  if (!qword_2812CFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC90);
  }

  return result;
}

uint64_t FirstLaunchEventData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D0A0, &qword_220CAE7E8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C75F78();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v6 = sub_220CA0FF4();
  v8 = v7;
  OUTLINED_FUNCTION_0_20(1);
  v29 = sub_220CA1054();
  OUTLINED_FUNCTION_0_20(2);
  v44 = sub_220CA1004();
  OUTLINED_FUNCTION_0_20(3);
  v28 = sub_220CA1004();
  OUTLINED_FUNCTION_0_20(4);
  v26 = sub_220CA1044();
  v25 = v6;
  OUTLINED_FUNCTION_0_20(5);
  v9 = sub_220CA0FF4();
  v27 = v10;
  v24 = v9;
  OUTLINED_FUNCTION_0_20(6);
  v23 = sub_220CA0FF4();
  v30 = v11;
  OUTLINED_FUNCTION_0_20(7);
  sub_220CA0FF4();
  v45 = 8;
  v12 = sub_220CA0FA4();
  v22 = v13;
  v14 = v12;
  v44 &= 1u;
  LOBYTE(v6) = v44;
  v15 = OUTLINED_FUNCTION_1_21();
  v16(v15);
  __src[0] = v25;
  __src[1] = v8;
  __src[2] = v29;
  LOBYTE(__src[3]) = v6;
  BYTE1(__src[3]) = v28 & 1;
  HIDWORD(__src[3]) = v26;
  __src[4] = v24;
  __src[5] = v27;
  __src[6] = v23;
  __src[7] = v30;
  OUTLINED_FUNCTION_6_10();
  __src[8] = v18;
  __src[9] = v17;
  __src[10] = v14;
  __src[11] = v22;
  memcpy(a2, __src, 0x60uLL);
  sub_220C194BC(__src, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v25;
  v32[1] = v8;
  v32[2] = v29;
  v33 = v44;
  v34 = v28 & 1;
  v35 = v26;
  v36 = v24;
  v37 = v27;
  v38 = v23;
  v39 = v30;
  OUTLINED_FUNCTION_6_10();
  v40 = v20;
  v41 = v19;
  v42 = v14;
  v43 = v22;
  return sub_220C19888(v32);
}

_BYTE *storeEnumTagSinglePayload for FirstLaunchEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C76558()
{
  result = qword_27CF7D0A8;
  if (!qword_27CF7D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D0A8);
  }

  return result;
}

unint64_t sub_220C765B0()
{
  result = qword_2812CFC80;
  if (!qword_2812CFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC80);
  }

  return result;
}

unint64_t sub_220C76608()
{
  result = qword_2812CFC88;
  if (!qword_2812CFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC88);
  }

  return result;
}

uint64_t sub_220C7665C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220C766BC(a1);
  }

  return result;
}

uint64_t sub_220C766BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_220C9FB04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[10];
  v9 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v8);
  result = (*(v9 + 8))(2, v8, v9);
  if (result)
  {
    v11 = v1[15];
    v12 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v11);
    (*(v12 + 8))(v23, v11, v12);
    v13 = v23[0];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_220C9FC34();
    v14 = sub_220C9FAE4();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = v1[10];
    v18 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v17);
    result = (*(v18 + 16))(v17, v18);
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = result;
    }

    if (v20 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v20 <= 0x7FFFFFFF)
    {
      __swift_project_boxed_opaque_existential_1(v2 + 17, v2[20]);
      v21 = v2[22];
      v23[0] = v14;
      v23[1] = v16;
      v24 = v20;
      v25 = 0;
      HIBYTE(v22) = v13;
      sub_220C94250(a1, v21, v23, &v22 + 7);
    }

    __break(1u);
  }

  return result;
}

void *sub_220C768D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return v0;
}

uint64_t sub_220C76918()
{
  sub_220C768D0();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

WeatherAnalytics::ProductType_optional __swiftcall ProductType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ProductType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x696C617551726961;
      break;
    case 2:
      result = 0x57746E6572727563;
      break;
    case 3:
    case 4:
      result = 0x7473616365726F66;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x79726F74736968;
      break;
    case 7:
      result = 0x6557657265766573;
      break;
    case 8:
      result = 0x4372656874616577;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C76AE0()
{
  result = qword_27CF7D0B0;
  if (!qword_27CF7D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D0B0);
  }

  return result;
}

unint64_t sub_220C76B58@<X0>(unint64_t *a1@<X8>)
{
  result = ProductType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ProductType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C76D0C()
{
  result = qword_2812D0828;
  if (!qword_2812D0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0828);
  }

  return result;
}

uint64_t DeviceData.deviceModel.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceData.deviceModel.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceData.osVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DeviceData.osVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DeviceData.osBundleVersion.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t DeviceData.osBundleVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_220C76F70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000220CB5E60 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556)
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

uint64_t sub_220C77134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C76F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C7715C(uint64_t a1)
{
  v2 = sub_220BFFF30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C77198(uint64_t a1)
{
  v2 = sub_220BFFF30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D0C0, &qword_220CAEBC8);
  OUTLINED_FUNCTION_4_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220BFFF30();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v31[0]) = 0;
  v11 = OUTLINED_FUNCTION_3_16(v31);
  v13 = v12;
  LOBYTE(v27) = 1;
  sub_220C77480();
  OUTLINED_FUNCTION_1_22(&type metadata for DevicePlatform);
  v38 = LOBYTE(v31[0]);
  LOBYTE(v27) = 2;
  sub_220C774D4();
  OUTLINED_FUNCTION_1_22(&type metadata for OsInstallVariant);
  v25 = LOBYTE(v31[0]);
  LOBYTE(v31[0]) = 3;
  v24 = OUTLINED_FUNCTION_3_16(v31);
  v26 = v14;
  v39 = 4;
  v15 = OUTLINED_FUNCTION_3_16(&v39);
  v16 = v10;
  v18 = v17;
  (*(v7 + 8))(v16, v3);
  *&v27 = v11;
  *(&v27 + 1) = v13;
  LOBYTE(v28) = v38;
  v19 = v25;
  BYTE1(v28) = v25;
  v20 = v26;
  *(&v28 + 1) = v24;
  *&v29 = v26;
  *(&v29 + 1) = v15;
  v30 = v18;
  *(a2 + 48) = v18;
  v21 = v28;
  *a2 = v27;
  *(a2 + 16) = v21;
  *(a2 + 32) = v29;
  sub_220C77528(&v27, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[0] = v11;
  v31[1] = v13;
  v32 = v38;
  v33 = v19;
  v34 = v24;
  v35 = v20;
  v36 = v15;
  v37 = v18;
  return sub_220C77560(v31);
}

unint64_t sub_220C77480()
{
  result = qword_2812D05B0[0];
  if (!qword_2812D05B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812D05B0);
  }

  return result;
}

unint64_t sub_220C774D4()
{
  result = qword_2812D01E0;
  if (!qword_2812D01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01E0);
  }

  return result;
}

uint64_t sub_220C775A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_220C775E8(uint64_t result, int a2, int a3)
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

unint64_t sub_220C77638()
{
  result = qword_27CF7D0C8;
  if (!qword_27CF7D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D0C8);
  }

  return result;
}

WeatherAnalytics::OtherConditionsFeedback_optional __swiftcall OtherConditionsFeedback.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OtherConditionsFeedback.rawValue.getter()
{
  result = 0x73776F626E696172;
  switch(*v0)
  {
    case 1:
      result = 0x6E696E746867696CLL;
      break;
    case 2:
      result = 6778726;
      break;
    case 3:
      result = 1818845544;
      break;
    case 4:
      result = 0x656B6F6D73;
      break;
    case 5:
      result = 1702519144;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C77790()
{
  result = qword_27CF7D0D0;
  if (!qword_27CF7D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D0D0);
  }

  return result;
}

uint64_t sub_220C77808@<X0>(uint64_t *a1@<X8>)
{
  result = OtherConditionsFeedback.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OtherConditionsFeedback(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C779BC()
{
  result = qword_27CF7D0D8;
  if (!qword_27CF7D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D0D8);
  }

  return result;
}

uint64_t sub_220C77A14()
{
  v0 = sub_220C9FE04();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9FE14();
  v4 = sub_220C77D4C();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t LocationPrivacySamplerType.canRecordLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_220C9FE04();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v11 = v10 - v9;
  sub_220C9FE14();
  v12 = (*(a3 + 8))(v11, a2, a3);
  (*(v7 + 8))(v11, v5);
  return v12 & 1;
}

uint64_t dispatch thunk of LocationPrivacySamplerType.canRecordLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

unint64_t sub_220C77C18()
{
  if (*(v0 + 101))
  {
    if (qword_2812D0F08 != -1)
    {
      swift_once();
    }

    sub_220C77FF0();
    sub_220C9F994();
    v1 = 0;
    switch(v5)
    {
      case 1:
        goto LABEL_11;
      case 2:
        v1 = 1048576000;
        goto LABEL_11;
      case 3:
        v1 = 1056964608;
        goto LABEL_11;
      case 4:
        v1 = 1061158912;
        goto LABEL_11;
      case 5:
        v1 = 1065353216;
LABEL_11:
        v3 = 0;
        v2 = v1;
        break;
      default:
        v1 = 0;
        v2 = 0x100000000;
        v3 = 1;
        break;
    }

    *(v0 + 96) = v2;
    *(v0 + 100) = BYTE4(v2);
  }

  else
  {
    v1 = *(v0 + 96);
    v3 = *(v0 + 100) & 1;
  }

  return v1 | (v3 << 32);
}

uint64_t sub_220C77D4C()
{
  v1 = sub_220C9FCB4();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v7 = v6 - v5;
  v8 = sub_220C9FB84();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v14 = v13 - v12;
  if (sub_220C9FDF4())
  {
    v15 = 0;
  }

  else
  {
    if ((sub_220C77C18() & 0x100000000) != 0)
    {
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_220C9FD94();
      sub_220C9FB74();
      (*(v10 + 8))(v14, v8);
      sub_220C9FC74();
      (*(v3 + 8))(v7, v1);
    }

    sub_220C9FDE4();
    sub_220CA0D74();
    MEMORY[0x223D94FE0](45, 0xE100000000000000);
    sub_220CA0D74();
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v15 = sub_220C9FBE4();
  }

  return v15 & 1;
}

unint64_t sub_220C77FF0()
{
  result = qword_2812CF808[0];
  if (!qword_2812CF808[0])
  {
    type metadata accessor for LocationPrivacySampler();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CF808);
  }

  return result;
}

uint64_t NonAppCellularRadioAccessTechnologyProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  NonAppCellularRadioAccessTechnologyProvider.init()();
  return v0;
}

uint64_t NonAppCellularRadioAccessTechnologyProvider.init()()
{
  v12 = sub_220CA0DD4();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v6 = v5 - v4;
  v7 = sub_220CA0DC4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11();
  v8 = sub_220CA0B94();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_11();
  sub_220BFA50C();
  sub_220CA0B64();
  sub_220C782A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CCD0, &qword_220CACAE0);
  sub_220C78300();
  sub_220CA0F14();
  (*(v2 + 104))(v6, *MEMORY[0x277D85260], v12);
  *(v0 + 24) = sub_220CA0E04();
  sub_220CA0B14();
  swift_allocObject();
  *(v0 + 16) = sub_220CA0B04();
  v9 = *(v0 + 24);

  v10 = v9;
  sub_220CA0AE4();

  return v0;
}

unint64_t sub_220C782A8()
{
  result = qword_2812D0F58;
  if (!qword_2812D0F58)
  {
    sub_220CA0DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0F58);
  }

  return result;
}

unint64_t sub_220C78300()
{
  result = qword_2812D0F80;
  if (!qword_2812D0F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF7CCD0, &qword_220CACAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0F80);
  }

  return result;
}

uint64_t NonAppCellularRadioAccessTechnologyProvider.deinit()
{

  sub_220CA0AF4();

  return v0;
}

uint64_t NonAppCellularRadioAccessTechnologyProvider.__deallocating_deinit()
{
  NonAppCellularRadioAccessTechnologyProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t NonAppCellularRadioAccessTechnologyProvider.cellularRadioAccessTechnology.getter@<X0>(char *a1@<X8>)
{
  v30 = a1;
  v1 = sub_220CA0AA4();
  OUTLINED_FUNCTION_3();
  v29 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D0E0, &qword_220CAEFB8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_220CA0B34();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v16 = v15 - v14;
  v17 = sub_220CA0AC4();
  OUTLINED_FUNCTION_3();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11();
  v23 = v22 - v21;
  sub_220CA0AD4();
  v24 = sub_220CA0B24();
  (*(v12 + 8))(v16, v10);
  sub_220C78718(v24, v9);

  if (__swift_getEnumTagSinglePayload(v9, 1, v17) == 1)
  {
    result = sub_220C787C0(v9);
    *v30 = 0;
    return result;
  }

  (*(v19 + 32))(v23, v9, v17);
  sub_220CA0AB4();
  (*(v19 + 8))(v23, v17);
  v26 = v29;
  result = (*(v29 + 88))(v6, v1);
  if (result == *MEMORY[0x277CD8CB0])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x277CD8CA8])
  {
    v27 = 1;
LABEL_9:
    *v30 = v27;
    return result;
  }

  if (result == *MEMORY[0x277CD8CB8])
  {
    v27 = 2;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x277CD8CA0] || result == *MEMORY[0x277CD8CC0])
  {
LABEL_4:
    *v30 = 0;
    return result;
  }

  *v30 = 0;
  return (*(v26 + 8))(v6, v1);
}

uint64_t sub_220C78718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_220CA0AC4();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_220C787C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D0E0, &qword_220CAEFB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

WeatherAnalytics::PrecipitationNotificationType_optional __swiftcall PrecipitationNotificationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PrecipitationNotificationType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 1701736302;
      break;
    case 2:
      v2 = 0x697472617473;
      goto LABEL_6;
    case 3:
      v2 = 0x6970706F7473;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C789AC()
{
  result = qword_27CF7D0E8;
  if (!qword_27CF7D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D0E8);
  }

  return result;
}

uint64_t sub_220C78A24@<X0>(uint64_t *a1@<X8>)
{
  result = PrecipitationNotificationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationNotificationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C78BD8()
{
  result = qword_27CF7D0F0;
  if (!qword_27CF7D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D0F0);
  }

  return result;
}

uint64_t sub_220C78C3C(uint64_t a1)
{
  v2 = type metadata accessor for VisibleLocationFinishedLoadingEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = *(a1 + *(v5 + 36));
  sub_220C79750(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisibleLocationFinishedLoadingEvent);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_220C797B0(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for VisibleLocationFinishedLoadingEvent);
  *(v8 + v7 + v4) = v6;
  sub_220CA0444();
}

uint64_t sub_220C78D78(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_220C9F804();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v6 + 8))(v8, v5);
  sub_220C9FF74();

  type metadata accessor for WeatherDataLoadEvent(0);
  v9 = type metadata accessor for VisibleLocationFinishedLoadingEvent(0);
  sub_220BFD0FC(&qword_2812D0B18, type metadata accessor for WeatherDataLoadEvent, &protocol conformance descriptor for WeatherDataLoadEvent);
  sub_220C9FF94();
  v11[14] = *(a2 + *(v9 + 32));
  v11[15] = a3;
  sub_220C7991C();
  sub_220C9FFC4();
  sub_220C9FFA4();
  return sub_220C9FF84();
}

void sub_220C78F64()
{
  OUTLINED_FUNCTION_13_4();
  v35 = v1;
  sub_220CA0B54();
  OUTLINED_FUNCTION_3();
  v38 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  sub_220CA0B94();
  OUTLINED_FUNCTION_3();
  v36 = v5;
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v8 = v7 - v6;
  v9 = type metadata accessor for VisibleLocationFailedLoadingEvent(0);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  __swift_project_boxed_opaque_existential_1(v0 + 1, v0[4]);
  v15 = OUTLINED_FUNCTION_11_8();
  if (v16(v15))
  {
    v34 = v0[6];
    v17 = *v0;
    sub_220C79750(v35, &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisibleLocationFailedLoadingEvent);
    v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    sub_220C797B0(&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for VisibleLocationFailedLoadingEvent);
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_5_8(COERCE_DOUBLE(1107296256));
    v40[2] = v20;
    v40[3] = &block_descriptor_1;
    v21 = _Block_copy(v40);

    sub_220CA0B64();
    v39 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6_11();
    sub_220BFD0FC(v22, v23, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF30, &qword_220CA6BB0);
    v24 = sub_220BF8A20(&qword_2812D1748, &qword_27CF7BF30, &qword_220CA6BB0);
    OUTLINED_FUNCTION_11_0(v24);
    OUTLINED_FUNCTION_15_0();
    _Block_release(v21);
    v25 = OUTLINED_FUNCTION_18_1();
    v26(v25);
    (*(v36 + 8))(v8, v37);

    OUTLINED_FUNCTION_10_5();
  }

  else
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10(&qword_2812D1768);
    }

    v27 = sub_220CA0A84();
    __swift_project_value_buffer(v27, qword_2812D1770);
    v38 = sub_220CA0A64();
    v28 = sub_220CA0D84();
    if (os_log_type_enabled(v38, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      OUTLINED_FUNCTION_20_0(&dword_220BF4000, v30, v31, "Skipping logging of visible location failed loading event; session is not part of sample.");
      MEMORY[0x223D95B30](v29, -1, -1);
    }

    OUTLINED_FUNCTION_10_5();
  }
}

uint64_t sub_220C79304(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VisibleLocationFailedLoadingEvent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_220C79750(a2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisibleLocationFailedLoadingEvent);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_220C797B0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for VisibleLocationFailedLoadingEvent);
  sub_220CA0444();
}

uint64_t sub_220C79428(uint64_t a1, uint64_t a2)
{
  v3 = sub_220C9F804();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v4 + 8))(v6, v3);
  sub_220C9FF74();

  type metadata accessor for WeatherDataLoadFailedEvent(0);
  v7 = type metadata accessor for VisibleLocationFailedLoadingEvent(0);
  sub_220BFD0FC(&qword_2812D0A50, type metadata accessor for WeatherDataLoadFailedEvent, &protocol conformance descriptor for WeatherDataLoadFailedEvent);
  sub_220C9FF94();
  v8 = (a2 + *(v7 + 28));
  v9 = v8[1];
  v11[0] = *v8;
  v11[1] = v9;
  sub_220C796FC();

  sub_220C9FFC4();

  sub_220C9FFA4();
  return sub_220C9FF84();
}

uint64_t sub_220C79628()
{
  v1 = *(type metadata accessor for VisibleLocationFailedLoadingEvent(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_220C79304(v2, v3);
}

uint64_t sub_220C7968C(uint64_t a1)
{
  v3 = *(type metadata accessor for VisibleLocationFailedLoadingEvent(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_220C79428(a1, v4);
}

unint64_t sub_220C796FC()
{
  result = qword_2812D0888;
  if (!qword_2812D0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0888);
  }

  return result;
}

uint64_t sub_220C79750(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220C797B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220C79810()
{
  v1 = type metadata accessor for VisibleLocationFinishedLoadingEvent(0);
  OUTLINED_FUNCTION_14(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_220C78C3C(v3);
}

uint64_t sub_220C79894(uint64_t a1)
{
  v3 = type metadata accessor for VisibleLocationFinishedLoadingEvent(0);
  OUTLINED_FUNCTION_14(v3);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_220C78D78(a1, v6, v7);
}

unint64_t sub_220C7991C()
{
  result = qword_2812D08B8;
  if (!qword_2812D08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D08B8);
  }

  return result;
}

WeatherAnalytics::Condition_optional __swiftcall Condition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA1194();

  v5 = 0;
  v6 = 25;
  switch(v3)
  {
    case 0:
      goto LABEL_39;
    case 1:
      v5 = 1;
      goto LABEL_39;
    case 2:
      v5 = 2;
      goto LABEL_39;
    case 3:
      v5 = 3;
      goto LABEL_39;
    case 4:
      v5 = 4;
      goto LABEL_39;
    case 5:
      v5 = 5;
      goto LABEL_39;
    case 6:
      v5 = 6;
      goto LABEL_39;
    case 7:
      v5 = 7;
      goto LABEL_39;
    case 8:
      v5 = 8;
      goto LABEL_39;
    case 9:
      v5 = 9;
      goto LABEL_39;
    case 10:
      v5 = 10;
      goto LABEL_39;
    case 11:
      v5 = 11;
      goto LABEL_39;
    case 12:
      v5 = 12;
      goto LABEL_39;
    case 13:
      v5 = 13;
      goto LABEL_39;
    case 14:
      v5 = 14;
      goto LABEL_39;
    case 15:
      v5 = 15;
      goto LABEL_39;
    case 16:
      v5 = 16;
      goto LABEL_39;
    case 17:
      v5 = 17;
      goto LABEL_39;
    case 18:
      v5 = 18;
      goto LABEL_39;
    case 19:
      v5 = 19;
      goto LABEL_39;
    case 20:
      v5 = 20;
      goto LABEL_39;
    case 21:
      v5 = 21;
      goto LABEL_39;
    case 22:
      v5 = 22;
      goto LABEL_39;
    case 23:
      v5 = 23;
      goto LABEL_39;
    case 24:
      v5 = 24;
LABEL_39:
      v6 = v5;
      break;
    case 25:
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    default:
      v6 = 43;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t Condition.rawValue.getter()
{
  result = 0x6F64616E726F74;
  switch(*v0)
  {
    case 1:
      return 0x6C616369706F7274;
    case 2:
      return 0x6E61636972727568;
    case 3:
      return 0xD000000000000012;
    case 4:
      return 0x737265646E756874;
    case 5:
      return 0xD000000000000010;
    case 6:
    case 7:
      return 0xD000000000000011;
    case 8:
    case 0xA:
      return 0x676E697A65657266;
    case 9:
      return 0x656C7A7A697264;
    case 0xB:
      return 0x737265776F6873;
    case 0xC:
      return 1852399986;
    case 0xD:
      return 0x7365697272756C66;
    case 0xE:
      return 0x776F6853776F6E73;
    case 0xF:
      return 0x53676E69776F6C62;
    case 0x10:
      return 2003791475;
    case 0x11:
      return 1818845544;
    case 0x12:
      return 0x7465656C73;
    case 0x13:
      return 1953723748;
    case 0x14:
      return 6778726;
    case 0x15:
      return 1702519144;
    case 0x16:
      return 0x656B6F6D73;
    case 0x17:
      return 0x797A65657262;
    case 0x18:
      v4 = 1684957559;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
    case 0x19:
      return 0x646967697266;
    case 0x1A:
      return 0x7964756F6C63;
    case 0x1B:
      v2 = 1953722221;
      return v2 | 0x6C43796C00000000;
    case 0x1C:
      v2 = 1953653104;
      return v2 | 0x6C43796C00000000;
    case 0x1D:
      return 0x7261656C63;
    case 0x1E:
      v4 = 1852732787;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
    case 0x1F:
      return 0x6C43796C74736F6DLL;
    case 0x20:
      return 0x7553796C74736F6DLL;
    case 0x21:
      v3 = 0x52646578696DLL;
      goto LABEL_44;
    case 0x22:
      return 7630696;
    case 0x23:
      return 0xD000000000000015;
    case 0x24:
      return 0xD000000000000016;
    case 0x25:
      return 0xD000000000000010;
    case 0x26:
      v3 = 0x527976616568;
LABEL_44:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6961000000000000;
      break;
    case 0x27:
      result = 0xD000000000000014;
      break;
    case 0x28:
      result = 0x6F6E537976616568;
      break;
    case 0x29:
      result = 0x6472617A7A696C62;
      break;
    case 0x2A:
      result = 0x6C69617641746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C79FA4()
{
  result = qword_27CF7D0F8;
  if (!qword_27CF7D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D0F8);
  }

  return result;
}

uint64_t sub_220C7A01C@<X0>(uint64_t *a1@<X8>)
{
  result = Condition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Condition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD6)
  {
    if (a2 + 42 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 42) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 43;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v5 = v6 - 43;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Condition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD5)
  {
    v6 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
          *result = a2 + 42;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C7A258()
{
  result = qword_27CF7D100;
  if (!qword_27CF7D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D100);
  }

  return result;
}

uint64_t IncorrectPrecipitationNotificationData.currentPrecipitationForecastData.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t IncorrectPrecipitationNotificationData.previousPrecipitationForecastData.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

_BYTE *IncorrectPrecipitationNotificationData.init(notificationType:correctNotificationType:currentPrecipitationForecastData:previousPrecipitationForecastData:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, int *a3@<X2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 1);
  v8 = *(a3 + 2);
  v9 = *a4;
  v10 = *(a4 + 1);
  v11 = *(a4 + 2);
  *a5 = *result;
  *(a5 + 1) = v5;
  *(a5 + 8) = v6;
  *(a5 + 16) = v7;
  *(a5 + 24) = v8;
  *(a5 + 32) = v9;
  *(a5 + 40) = v10;
  *(a5 + 48) = v11;
  return result;
}

uint64_t sub_220C7A428(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000220CB56E0 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x8000000220CB6030 == a2;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000020 && 0x8000000220CB5700 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000021 && 0x8000000220CB5730 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_220CA1154();

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

unint64_t sub_220C7A584(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C7A608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C7A428(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C7A630(uint64_t a1)
{
  v2 = sub_220C7A8A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C7A66C(uint64_t a1)
{
  v2 = sub_220C7A8A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IncorrectPrecipitationNotificationData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D108, &qword_220CAF3B0);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = *v1;
  v39 = v1[1];
  v35 = *(v1 + 2);
  v11 = *(v1 + 2);
  v33 = *(v1 + 3);
  v34 = v11;
  v30 = *(v1 + 8);
  v12 = *(v1 + 6);
  v31 = *(v1 + 5);
  v32 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C7A8A8();
  sub_220CA1254();
  LOBYTE(v36) = v10;
  v40 = 0;
  v13 = sub_220C506AC();
  v16 = OUTLINED_FUNCTION_0_21(v13, v14, v15, &type metadata for PrecipitationNotificationType);
  if (!v2)
  {
    v19 = v33;
    v20 = v34;
    v21 = v35;
    LOBYTE(v36) = v39;
    v40 = 1;
    OUTLINED_FUNCTION_0_21(v16, v17, v18, &type metadata for PrecipitationNotificationType);
    v36 = v21;
    v37 = v20;
    v38 = v19;
    v40 = 2;
    sub_220C50700();

    OUTLINED_FUNCTION_0_21(v22, v23, v24, &type metadata for PrecipitationForecastData);

    v36 = v30;
    v37 = v31;
    v38 = v32;
    v40 = 3;

    OUTLINED_FUNCTION_0_21(v25, v26, v27, &type metadata for PrecipitationForecastData);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C7A8A8()
{
  result = qword_27CF7D110;
  if (!qword_27CF7D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D110);
  }

  return result;
}

uint64_t IncorrectPrecipitationNotificationData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D118, &qword_220CAF3B8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C7A8A8();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_220C50998();
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_5_11(v7, v8, v9, v10);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_5_11(v11, v12, v13, v14);
  v44 = v35;
  LOBYTE(v31) = 2;
  sub_220C509EC();
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_5_11(v15, v16, v17, v18);
  v29 = v35;
  v30 = v35;
  v28 = v36;
  v45 = 3;
  OUTLINED_FUNCTION_5_11(&type metadata for PrecipitationForecastData, &v45, v5, &type metadata for PrecipitationForecastData);
  v19 = OUTLINED_FUNCTION_0_3();
  v20(v19);
  v27 = v41;
  v21 = v43;
  v26 = v42;
  v22 = *(&v36 + 1);
  v23 = v35;
  LOBYTE(v31) = v35;
  BYTE1(v31) = v35;
  DWORD2(v31) = v35;
  v32 = v36;
  LODWORD(v33) = v41;
  *(&v33 + 1) = v42;
  v34 = v43;
  *(a2 + 48) = v43;
  v24 = v32;
  *a2 = v31;
  *(a2 + 16) = v24;
  *(a2 + 32) = v33;
  sub_220C48540(&v31, &v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v35) = v23;
  BYTE1(v35) = v30;
  LODWORD(v36) = v29;
  *(&v36 + 1) = v28;
  v37 = v22;
  v38 = v27;
  v39 = v26;
  v40 = v21;
  return sub_220C489E4(&v35);
}

_BYTE *storeEnumTagSinglePayload for IncorrectPrecipitationNotificationData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C7ACCC()
{
  result = qword_27CF7D120;
  if (!qword_27CF7D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D120);
  }

  return result;
}

unint64_t sub_220C7AD24()
{
  result = qword_27CF7D128;
  if (!qword_27CF7D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D128);
  }

  return result;
}

unint64_t sub_220C7AD7C()
{
  result = qword_27CF7D130;
  if (!qword_27CF7D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D130);
  }

  return result;
}

uint64_t sub_220C7ADDC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0424();
  result = sub_220CA0614();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D150, &qword_220CAF6B0);
  result = sub_220CA0614();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0234();
  result = sub_220CA0614();
  if (result)
  {
    sub_220CA0294();
    return sub_220CA0284();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220C7AEE0()
{
  sub_220CA0424();
  v0 = [objc_opt_self() mainBundle];
  return sub_220CA0404();
}

void *sub_220C7AF2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_220CA0434();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v7, *MEMORY[0x277CEAE68], v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0114();
  result = sub_220CA0614();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0424();
  result = sub_220CA0614();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D178, &qword_220CB04B0);
  result = sub_220CA0624();
  if (!v18[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D188, &qword_220CAF6E8);
  result = sub_220CA0624();
  if (!v17[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D190, &qword_220CAF6F0);
  result = sub_220CA0624();
  if (!v16[3])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D198, &unk_220CB2BC0);
  result = sub_220CA0624();
  if (!v15[3])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D170, &unk_220CAF6D0);
  result = sub_220CA0624();
  if (v14[3])
  {
    v12 = type metadata accessor for WidgetSessionCoordinator(0);
    swift_allocObject();
    result = sub_220C35374(v7, v10, v11, v18, v17, v16, v15, v14);
    a2[3] = v12;
    a2[4] = &protocol witness table for WidgetSessionCoordinator;
    *a2 = result;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_220C7B238@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9FE44();
  result = sub_220CA0614();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D180, &qword_220CAF6E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220CA4A60;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D158, &qword_220CAF6B8);
  result = sub_220CA0624();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_220BF9210(&v10, v6 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220CA0604();
  if (v9)
  {
    sub_220BF9210(&v8, v6 + 72);
    v7 = type metadata accessor for WidgetAnalyticsCoordinator();
    swift_allocObject();
    result = sub_220C8F138(v5, v6);
    a2[3] = v7;
    a2[4] = &off_28346D4B0;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220C7B4A4()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D200);
  __swift_project_value_buffer(v0, qword_27CF7D200);
  return sub_220CA0244();
}

uint64_t ReportWeatherDNUEvent.eventData.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1, v0);
}

uint64_t ReportWeatherDNUEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t ReportWeatherDNUEvent.privateUserData.getter()
{
  type metadata accessor for ReportWeatherDNUEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v0 = OUTLINED_FUNCTION_6_0();

  return v1(v0);
}

uint64_t ReportWeatherDNUEvent.privateUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportWeatherDNUEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t ReportWeatherDNUEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  v4 = *(type metadata accessor for ReportWeatherDNUEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 104);

  return v6(a1 + v4, v2);
}

uint64_t ReportWeatherDNUEvent.Model.eventData.getter()
{
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1, v0);
}

uint64_t ReportWeatherDNUEvent.Model.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReportWeatherDNUEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 20) = v3;
}

uint64_t ReportWeatherDNUEvent.Model.init(eventData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 4);
  v8 = *(a2 + 20);
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  (*(v9 + 32))(a3, a1);
  result = type metadata accessor for ReportWeatherDNUEvent.Model(0);
  v11 = a3 + *(result + 20);
  *v11 = v5;
  *(v11 + 8) = v6;
  *(v11 + 16) = v7;
  *(v11 + 20) = v8;
  return result;
}

uint64_t sub_220C7B9B0(uint64_t a1)
{
  v2 = sub_220C7BC00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C7B9EC(uint64_t a1)
{
  v2 = sub_220C7BC00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReportWeatherDNUEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D218, &qword_220CAF730);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C7BC00();
  sub_220CA1254();
  LOBYTE(v17) = 0;
  sub_220CA0494();
  sub_220C04FCC(&qword_2812D0D90, MEMORY[0x277CEAEB8]);
  sub_220CA1104();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for ReportWeatherDNUEvent.Model(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v11 + 4);
    LOBYTE(v11) = *(v11 + 20);
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v11;
    v16[7] = 1;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C7BC00()
{
  result = qword_27CF7D220;
  if (!qword_27CF7D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D220);
  }

  return result;
}

uint64_t ReportWeatherDNUEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v28 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D228, &qword_220CAF738);
  OUTLINED_FUNCTION_3();
  v29 = v8;
  v30 = v9;
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for ReportWeatherDNUEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C7BC00();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v10;
  v14 = v28;
  LOBYTE(v32) = 0;
  sub_220C04FCC(&qword_2812D0D88, MEMORY[0x277CEAEC0]);
  v15 = v31;
  sub_220CA1034();
  v16 = *(v14 + 32);
  v25 = v13;
  v16(v13, v7, v15);
  v36 = 1;
  sub_220BFF730();
  sub_220CA1034();
  v17 = OUTLINED_FUNCTION_1_12();
  v18(v17);
  v19 = v33;
  v20 = v34;
  v21 = v35;
  v22 = v25;
  v23 = &v25[*(v26 + 20)];
  *v23 = v32;
  *(v23 + 1) = v19;
  *(v23 + 4) = v20;
  v23[20] = v21;
  sub_220C7BF70(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C7BFD4(v22);
}

uint64_t sub_220C7BF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportWeatherDNUEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C7BFD4(uint64_t a1)
{
  v2 = type metadata accessor for ReportWeatherDNUEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherDNUEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C7C1A0()
{
  result = qword_27CF7D250;
  if (!qword_27CF7D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D250);
  }

  return result;
}

unint64_t sub_220C7C1F8()
{
  result = qword_27CF7D258;
  if (!qword_27CF7D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D258);
  }

  return result;
}

unint64_t sub_220C7C250()
{
  result = qword_27CF7D260;
  if (!qword_27CF7D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D260);
  }

  return result;
}

uint64_t sub_220C7C31C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000220CB60B0 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220CB60D0 == a2)
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

uint64_t sub_220C7C3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C7C31C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C7C418(uint64_t a1)
{
  v2 = sub_220C0050C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C7C454(uint64_t a1)
{
  v2 = sub_220C0050C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OrientationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D270, &qword_220CAF948);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9 - 4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C0050C();
  sub_220CA1234();
  if (!v2)
  {
    v16[0] = 0;
    sub_220C7C638();
    OUTLINED_FUNCTION_1_23(&type metadata for DeviceOrientation, v16);
    v11 = v16[1];
    v15[0] = 1;
    sub_220C7C68C();
    OUTLINED_FUNCTION_1_23(&type metadata for InterfaceOrientation, v15);
    (*(v7 + 8))(v10, v5);
    v12 = v15[1];
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C7C638()
{
  result = qword_2812D0190;
  if (!qword_2812D0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0190);
  }

  return result;
}

unint64_t sub_220C7C68C()
{
  result = qword_2812CFC58;
  if (!qword_2812CFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrientationData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 65284 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65284 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65285;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OrientationData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
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
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C7C854()
{
  result = qword_27CF7D278;
  if (!qword_27CF7D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D278);
  }

  return result;
}

uint64_t SessionData.languageCode.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SessionData.languageCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SessionData.countryCode.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SessionData.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SessionData.productType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SessionData.productType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SessionData.userSegmentationTreatmentIDs.getter()
{
  type metadata accessor for SessionData(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
  sub_220CA02D4();
  return v1;
}

uint64_t SessionData.userSegmentationTreatmentIDs.setter(uint64_t a1)
{
  type metadata accessor for SessionData(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
  return sub_220CA02E4();
}

uint64_t (*SessionData.userSegmentationTreatmentIDs.modify(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for SessionData(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
  v2[4] = sub_220CA02C4();
  return sub_220C7CC74;
}

uint64_t SessionData.userSegmentationSegmentSetIDs.getter()
{
  type metadata accessor for SessionData(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
  sub_220CA02D4();
  return v1;
}

uint64_t SessionData.userSegmentationSegmentSetIDs.setter(uint64_t a1)
{
  type metadata accessor for SessionData(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
  return sub_220CA02E4();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t (*SessionData.userSegmentationSegmentSetIDs.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for SessionData(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
  v2[4] = sub_220CA02C4();
  return sub_220C7D930;
}

void sub_220C7CE0C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_220C7CE58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657366664F637475 && a2 == 0xE900000000000074;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74654D7472617473 && a2 == 0xEB00000000646F68;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEE00737365636341;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001DLL && 0x8000000220CB5030 == a2;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001CLL && 0x8000000220CB60F0 == a2;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD00000000000001DLL && 0x8000000220CB6110 == a2)
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

uint64_t sub_220C7D140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C7CE58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C7D168(uint64_t a1)
{
  v2 = sub_220C00E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C7D1A4(uint64_t a1)
{
  v2 = sub_220C00E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220C7D1E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF7BE20, &qword_220CA5D28);
    result = OUTLINED_FUNCTION_9_9(v3);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SessionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
  OUTLINED_FUNCTION_3();
  v45 = v4;
  v46 = v3;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  v37 = &v35 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
  OUTLINED_FUNCTION_3();
  v43 = v8;
  v44 = v7;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D288, &qword_220CAFB58);
  OUTLINED_FUNCTION_3();
  v36 = v12;
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = type metadata accessor for SessionData(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[40] = 6;
  *(v19 + 32) = 1029;
  v20 = *(v17 + 52);
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE18, &qword_220CA5D20);
  v47 = v20;
  sub_220CA02B4();
  v21 = *(v17 + 56);
  v49 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE20, &qword_220CA5D28);
  v42 = v21;
  sub_220CA02B4();
  v23 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_220C00E0C();
  v39 = v15;
  v24 = v40;
  sub_220CA1234();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v43 + 8))(&v19[v47], v44);
    return (*(v45 + 8))(&v19[v42], v46);
  }

  else
  {
    v40 = v22;
    v26 = v36;
    v25 = v37;
    LOBYTE(v49) = 0;
    v27 = v38;
    *v19 = sub_220CA1044();
    *(v19 + 1) = OUTLINED_FUNCTION_5_13(1);
    *(v19 + 2) = v28;
    *(v19 + 3) = OUTLINED_FUNCTION_5_13(2);
    *(v19 + 4) = v29;
    v48 = 3;
    sub_220C7D7F0();
    OUTLINED_FUNCTION_1_24(&type metadata for StartMethod);
    v19[40] = v49;
    *(v19 + 6) = OUTLINED_FUNCTION_5_13(4);
    *(v19 + 7) = v30;
    v48 = 5;
    sub_220C7D844();
    OUTLINED_FUNCTION_1_24(&type metadata for LocationAccessData);
    v19[64] = v49;
    v48 = 6;
    sub_220C327F4();
    OUTLINED_FUNCTION_1_24(&type metadata for CellularRadioAccessTechnology);
    v19[65] = v49;
    LOBYTE(v49) = 7;
    OUTLINED_FUNCTION_3_17();
    sub_220C012C4(v31);
    sub_220CA0F94();
    (*(v43 + 40))(&v19[v47], v11, v44);
    LOBYTE(v49) = 8;
    OUTLINED_FUNCTION_3_17();
    sub_220C7D1E0(v32);
    v33 = v39;
    sub_220CA0F94();
    (*(v26 + 8))(v33, v27);
    (*(v45 + 40))(&v19[v42], v25, v46);
    sub_220C39354(v19, v35);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_220C39400(v19);
  }
}

unint64_t sub_220C7D7F0()
{
  result = qword_2812D0768[0];
  if (!qword_2812D0768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812D0768);
  }

  return result;
}

unint64_t sub_220C7D844()
{
  result = qword_2812CFE78;
  if (!qword_2812CFE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFE78);
  }

  return result;
}

unint64_t sub_220C7D8DC()
{
  result = qword_27CF7D290;
  if (!qword_27CF7D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D290);
  }

  return result;
}

WeatherAnalytics::DetailViewOriginationData __swiftcall DetailViewOriginationData.init(origin:componentData:)(WeatherAnalytics::DetailViewOrigin origin, WeatherAnalytics::ComponentData_optional componentData)
{
  v3 = *componentData.value.type;
  *v2 = *origin;
  v2[1] = v3;
  result.origin = origin;
  return result;
}

uint64_t sub_220C7D9C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xED00006174614474)
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

uint64_t sub_220C7DA8C(char a1)
{
  if (a1)
  {
    return 0x6E656E6F706D6F63;
  }

  else
  {
    return 0x6E696769726FLL;
  }
}

uint64_t sub_220C7DAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C7D9C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C7DAFC(uint64_t a1)
{
  v2 = sub_220C7DD04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C7DB38(uint64_t a1)
{
  v2 = sub_220C7DD04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DetailViewOriginationData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D298, &qword_220CAFD50);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C7DD04();
  sub_220CA1254();
  v17 = v10;
  v16 = 0;
  sub_220C7DD58();
  sub_220CA1104();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_220C222D8();
    sub_220CA1094();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C7DD04()
{
  result = qword_27CF7D2A0;
  if (!qword_27CF7D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D2A0);
  }

  return result;
}

unint64_t sub_220C7DD58()
{
  result = qword_27CF7D2A8;
  if (!qword_27CF7D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D2A8);
  }

  return result;
}

uint64_t DetailViewOriginationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D2B0, &qword_220CAFD58);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C7DD04();
  sub_220CA1234();
  if (!v2)
  {
    v17 = 0;
    sub_220C7DF5C();
    OUTLINED_FUNCTION_1_25();
    sub_220CA1034();
    v11 = v18;
    v15 = 1;
    sub_220C22978();
    OUTLINED_FUNCTION_1_25();
    sub_220CA0FC4();
    (*(v7 + 8))(v10, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C7DF5C()
{
  result = qword_27CF7D2B8;
  if (!qword_27CF7D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D2B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailViewOriginationData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailViewOriginationData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

_BYTE *storeEnumTagSinglePayload for DetailViewOriginationData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C7E230()
{
  result = qword_27CF7D2C0;
  if (!qword_27CF7D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D2C0);
  }

  return result;
}

unint64_t sub_220C7E288()
{
  result = qword_27CF7D2C8;
  if (!qword_27CF7D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D2C8);
  }

  return result;
}

unint64_t sub_220C7E2E0()
{
  result = qword_27CF7D2D0;
  if (!qword_27CF7D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D2D0);
  }

  return result;
}

uint64_t sub_220C7E3FC()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D308);
  __swift_project_value_buffer(v0, qword_27CF7D308);
  return sub_220CA0244();
}

uint64_t MapViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t MapViewEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t MapViewEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for MapViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t MapViewEvent.timedData.setter()
{
  OUTLINED_FUNCTION_13_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t MapViewEvent.viewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for MapViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t MapViewEvent.viewData.setter()
{
  OUTLINED_FUNCTION_13_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t MapViewEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for MapViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t MapViewEvent.privateUserData.setter()
{
  OUTLINED_FUNCTION_13_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t MapViewEvent.mapEmbedStateData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for MapViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D320, &qword_220CAFF60);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t MapViewEvent.mapEmbedStateData.setter()
{
  OUTLINED_FUNCTION_13_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D320, &qword_220CAFF60);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t MapViewEvent.originationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for MapViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D328, &qword_220CAFF68);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t MapViewEvent.originationData.setter()
{
  OUTLINED_FUNCTION_13_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D328, &qword_220CAFF68);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t MapViewEvent.overlayData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for MapViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C898, &qword_220CAFF70);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t MapViewEvent.overlayData.setter()
{
  OUTLINED_FUNCTION_13_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C898, &qword_220CAFF70);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t MapViewEvent.zoomData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for MapViewEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D330, &qword_220CAFF78);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t MapViewEvent.zoomData.setter()
{
  OUTLINED_FUNCTION_13_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D330, &qword_220CAFF78);
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_14_0();

  return v1(v0);
}

uint64_t MapViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 104))(a1, v2);
  v4 = type metadata accessor for MapViewEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0();
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0();
  v9 = OUTLINED_FUNCTION_16_0();
  v10(v9);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D320, &qword_220CAFF60);
  OUTLINED_FUNCTION_0_0();
  (*(v13 + 104))(a1 + v11, v12);
  v14 = v4[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D328, &qword_220CAFF68);
  OUTLINED_FUNCTION_0_0();
  (*(v15 + 104))(a1 + v14, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C898, &qword_220CAFF70);
  OUTLINED_FUNCTION_0_0();
  v16 = OUTLINED_FUNCTION_16_0();
  v17(v16);
  v18 = v4[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D330, &qword_220CAFF78);
  OUTLINED_FUNCTION_0_0();
  v20 = *(v19 + 104);

  return v20(a1 + v18, v2);
}

uint64_t MapViewEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  sub_220CA0494();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t MapViewEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for MapViewEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t MapViewEvent.Model.viewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for MapViewEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t MapViewEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for MapViewEvent.Model(v2) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t MapViewEvent.Model.mapEmbedStateData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for MapViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t MapViewEvent.Model.originationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for MapViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t MapViewEvent.Model.overlayData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for MapViewEvent.Model(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

float MapViewEvent.Model.zoomData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for MapViewEvent.Model(v2) + 44));
  *v0 = result;
  return result;
}

uint64_t MapViewEvent.Model.init(eventData:timedData:viewData:privateUserData:mapEmbedStateData:originationData:overlayData:zoomData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, int *a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 8);
  v15 = *a4;
  v16 = a4[1];
  v17 = *(a4 + 4);
  v26 = *(a4 + 20);
  v27 = *a5;
  v28 = *a6;
  v29 = *a7;
  v18 = *a8;
  sub_220CA0494();
  OUTLINED_FUNCTION_0_0();
  (*(v19 + 32))(a9, a1);
  v20 = type metadata accessor for MapViewEvent.Model(0);
  v21 = v20[5];
  sub_220CA04D4();
  OUTLINED_FUNCTION_0_0();
  result = (*(v22 + 32))(a9 + v21, a2);
  v24 = a9 + v20[6];
  *v24 = v12;
  *(v24 + 8) = v13;
  *(v24 + 16) = v14;
  v25 = a9 + v20[7];
  *v25 = v15;
  *(v25 + 8) = v16;
  *(v25 + 16) = v17;
  *(v25 + 20) = v26;
  *(a9 + v20[8]) = v27;
  *(a9 + v20[9]) = v28;
  *(a9 + v20[10]) = v29;
  *(a9 + v20[11]) = v18;
  return result;
}

uint64_t sub_220C7F348(uint64_t a1, uint64_t a2)
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
      v7 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x5565746176697270 && a2 == 0xEF61746144726573;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000220CB6130 == a2;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x74616E696769726FLL && a2 == 0xEF617461446E6F69;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4479616C7265766FLL && a2 == 0xEB00000000617461;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x617461446D6F6F7ALL && a2 == 0xE800000000000000)
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

uint64_t sub_220C7F5EC(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x4464656D6974;
      goto LABEL_8;
    case 2:
      result = 0x6174614477656976;
      break;
    case 3:
      result = 0x5565746176697270;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      v3 = 0x6E696769726FLL;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 6:
      result = 0x4479616C7265766FLL;
      break;
    case 7:
      result = 0x617461446D6F6F7ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C7F6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C7F348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C7F720(uint64_t a1)
{
  v2 = sub_220C7FB04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C7F75C(uint64_t a1)
{
  v2 = sub_220C7FB04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D338, &qword_220CAFF80);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C7FB04();
  sub_220CA1254();
  LOBYTE(v27) = 0;
  sub_220CA0494();
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v11, v12, MEMORY[0x277CEAEB8]);
  OUTLINED_FUNCTION_1_1();
  sub_220CA1104();
  if (!v2)
  {
    v13 = type metadata accessor for MapViewEvent.Model(0);
    LOBYTE(v27) = 1;
    sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    sub_220C04F84(v14, v15, MEMORY[0x277CEAED8]);
    OUTLINED_FUNCTION_1_1();
    sub_220CA1104();
    v16 = (v3 + v13[6]);
    v17 = *v16;
    v18 = v16[1];
    LOWORD(v16) = *(v16 + 8);
    v27 = v17;
    v28 = v18;
    LOWORD(v29) = v16;
    v31 = 2;
    v19 = sub_220C04820();

    OUTLINED_FUNCTION_10_9();
    OUTLINED_FUNCTION_1_1();
    sub_220CA1104();
    if (v19 || (, v20 = (v3 + v13[7]), v21 = *v20, v22 = v20[1], v23 = *(v20 + 4), LOBYTE(v20) = *(v20 + 20), v27 = v21, v28 = v22, v29 = v23, v30 = v20, v31 = 3, v24 = sub_220BFF788(), , OUTLINED_FUNCTION_10_9(), OUTLINED_FUNCTION_1_1(), sub_220CA1104(), v24))
    {
    }

    else
    {

      LOBYTE(v27) = *(v3 + v13[8]);
      v31 = 4;
      sub_220C6A724();
      OUTLINED_FUNCTION_2_19();
      sub_220CA1094();
      LOBYTE(v27) = *(v3 + v13[9]);
      v31 = 5;
      sub_220C1B168();
      OUTLINED_FUNCTION_2_19();
      sub_220CA1094();
      LOBYTE(v27) = *(v3 + v13[10]);
      v31 = 6;
      sub_220C27A48();
      OUTLINED_FUNCTION_2_19();
      sub_220CA1104();
      LODWORD(v27) = *(v3 + v13[11]);
      v31 = 7;
      sub_220C438C0();
      OUTLINED_FUNCTION_2_19();
      sub_220CA1104();
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C7FB04()
{
  result = qword_27CF7D340;
  if (!qword_27CF7D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D340);
  }

  return result;
}

uint64_t MapViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v42 = v4;
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v7 = v6 - v5;
  sub_220CA0494();
  OUTLINED_FUNCTION_3();
  v44 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v12 = v11 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D348, &qword_220CAFF88);
  OUTLINED_FUNCTION_3();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v46 = type metadata accessor for MapViewEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v21 = v20 - v19;
  v22 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_220C7FB04();
  v41 = v17;
  v23 = v45;
  sub_220CA1234();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v45 = v14;
  LOBYTE(v48) = 0;
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v24, v25, MEMORY[0x277CEAEC0]);
  sub_220CA1034();
  (*(v44 + 32))(v21, v12);
  LOBYTE(v48) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v26, v27, MEMORY[0x277CEAEE0]);
  v28 = v43;
  sub_220CA1034();
  v29 = v46;
  (*(v42 + 32))(v21 + *(v46 + 20), v7, v28);
  v52 = 2;
  sub_220C0449C();
  OUTLINED_FUNCTION_10_9();
  sub_220CA1034();
  v30 = v49;
  v31 = v50;
  v32 = v21 + v29[6];
  *v32 = v48;
  *(v32 + 8) = v30;
  *(v32 + 16) = v31;
  v52 = 3;
  sub_220BFF730();
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_16_6();
  sub_220CA1034();
  v33 = v45;
  v34 = v49;
  v35 = v50;
  v36 = v51;
  v37 = v21 + v29[7];
  *v37 = v48;
  *(v37 + 8) = v34;
  *(v37 + 16) = v35;
  *(v37 + 20) = v36;
  v52 = 4;
  sub_220C6A6CC();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_16_6();
  sub_220CA0FC4();
  *(v21 + v29[8]) = v48;
  v52 = 5;
  sub_220C1B110();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_16_6();
  sub_220CA0FC4();
  *(v21 + v29[9]) = v48;
  v52 = 6;
  sub_220C279F0();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_16_6();
  sub_220CA1034();
  *(v21 + v29[10]) = v48;
  v52 = 7;
  sub_220C43868();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_16_6();
  sub_220CA1034();
  (*(v33 + 8))(v41, v40);
  *(v21 + v29[11]) = v48;
  sub_220C80198(v21, v39);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_220C801FC(v21);
}

uint64_t sub_220C80198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C801FC(uint64_t a1)
{
  v2 = type metadata accessor for MapViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C802C0(uint64_t a1)
{
  sub_220C04EB8(319);
  if (v1 <= 0x3F)
  {
    sub_220C05010(319);
    if (v2 <= 0x3F)
    {
      sub_220C80524(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_220C80524(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
        if (v4 <= 0x3F)
        {
          sub_220C80524(319, &qword_27CF7D360, sub_220C6A6CC, sub_220C6A724, &type metadata for MapEmbedStateData);
          if (v5 <= 0x3F)
          {
            sub_220C80524(319, &qword_27CF7D368, sub_220C1B110, sub_220C1B168, &type metadata for MapOriginationData);
            if (v6 <= 0x3F)
            {
              sub_220C80524(319, &qword_27CF7C8E8, sub_220C279F0, sub_220C27A48, &type metadata for MapOverlayData);
              if (v7 <= 0x3F)
              {
                sub_220C80524(319, &qword_27CF7D370, sub_220C43868, sub_220C438C0, &type metadata for ZoomData);
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

void sub_220C80524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

void sub_220C805C8(uint64_t a1)
{
  sub_220CA0494();
  if (v1 <= 0x3F)
  {
    sub_220CA04D4();
    if (v2 <= 0x3F)
    {
      sub_220BFE7B0(319, &qword_27CF7D388, &type metadata for MapEmbedStateData);
      if (v3 <= 0x3F)
      {
        sub_220BFE7B0(319, &qword_27CF7D390, &type metadata for MapOriginationData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MapViewEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C807AC()
{
  result = qword_27CF7D398;
  if (!qword_27CF7D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D398);
  }

  return result;
}

unint64_t sub_220C80804()
{
  result = qword_27CF7D3A0;
  if (!qword_27CF7D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D3A0);
  }

  return result;
}

unint64_t sub_220C8085C()
{
  result = qword_27CF7D3A8;
  if (!qword_27CF7D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D3A8);
  }

  return result;
}

WeatherAnalytics::LocationData __swiftcall LocationData.init(latitudeDouble:longitudeDouble:)(Swift::Double latitudeDouble, Swift::Double longitudeDouble)
{
  *v2 = latitudeDouble;
  v2[1] = longitudeDouble;
  result.longitudeDouble = longitudeDouble;
  result.latitudeDouble = latitudeDouble;
  return result;
}

uint64_t sub_220C80920(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xEE00656C62756F44;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xEF656C62756F4465)
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

uint64_t sub_220C809F8(char a1)
{
  if (a1)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_220C80A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C80920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C80A78(uint64_t a1)
{
  v2 = sub_220C80C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C80AB4(uint64_t a1)
{
  v2 = sub_220C80C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3B0, &qword_220CB01F0);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C80C50();
  sub_220CA1254();
  v10[15] = 0;
  sub_220CA10E4();
  if (!v1)
  {
    v10[14] = 1;
    sub_220CA10E4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C80C50()
{
  result = qword_2812D0758;
  if (!qword_2812D0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0758);
  }

  return result;
}

uint64_t LocationData.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3B8, &qword_220CB01F8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C80C50();
  sub_220CA1234();
  if (!v2)
  {
    v18 = 0;
    sub_220CA1014();
    v12 = v11;
    v17 = 1;
    sub_220CA1014();
    v14 = v13;
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    *(a2 + 1) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for LocationData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C80F58()
{
  result = qword_27CF7D3C0;
  if (!qword_27CF7D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D3C0);
  }

  return result;
}

unint64_t sub_220C80FB0()
{
  result = qword_2812D0748;
  if (!qword_2812D0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0748);
  }

  return result;
}

unint64_t sub_220C81008()
{
  result = qword_2812D0750;
  if (!qword_2812D0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0750);
  }

  return result;
}

uint64_t sub_220C8105C()
{
  v0 = sub_220CA0304();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220CA01E4();
  *v3 = 11;
  (*(v1 + 104))(v3, *MEMORY[0x277CEAE08], v0);
  return sub_220CA01D4();
}

uint64_t sub_220C81140(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D178, &qword_220CB04B0);
  result = sub_220CA0624();
  if (!v28[3])
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3F8, &qword_220CB2B40);
  result = sub_220CA0624();
  if (!v27[3])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D188, &qword_220CAF6E8);
  result = sub_220CA0624();
  if (!v26[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D400, qword_220CB04E8);
  result = sub_220CA0624();
  if (!v25)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0114();
  result = sub_220CA05F4();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = sub_220CA0104();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3C8, &qword_220CB0480);
  result = sub_220CA0624();
  if (v23)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for NetworkTelemetryTracker();
    v21[3] = v10;
    v21[4] = &off_28346D710;
    v21[0] = v9;
    type metadata accessor for WidgetNetworkTelemetryManager();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v21, v10);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v20[3] = v10;
    v20[4] = &off_28346D710;
    v20[0] = v17;
    *(v11 + 184) = 0;
    sub_220BF92A0(v28, v11 + 16);
    sub_220BF92A0(v27, v11 + 56);
    sub_220BF92A0(v26, v11 + 96);
    sub_220BF92A0(v20, v11 + 136);
    *(v11 + 176) = v3;
    __swift_project_boxed_opaque_existential_1(v22, v23);

    v19[1] = sub_220CA09E4();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D408, &qword_220CB0500);
    sub_220BF9A3C(&qword_2812D0F90, &qword_27CF7D408, &qword_220CB0500, MEMORY[0x277CBCD90]);
    v18 = sub_220CA0A94();

    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v20);

    *(v11 + 184) = v18;

    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_220C81630(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0424();
  result = sub_220CA0614();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D150, &qword_220CAF6B0);
  result = sub_220CA0614();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0234();
  result = sub_220CA0614();
  if (result)
  {
    sub_220CA0294();
    return sub_220CA0284();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220C81774@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_3_0();
  sub_220CA0464();
  OUTLINED_FUNCTION_4_17();
  result = sub_220CA05F4();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3F8, &qword_220CB2B40);
    result = sub_220CA0624();
    if (v13)
    {
      v10 = a2(0);
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      result = sub_220BF9210(&v12, v11 + 24);
      a4[3] = v10;
      a4[4] = a3;
      *a4 = v11;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220C81878(uint64_t a1)
{
  sub_220BF92A0(a1, v3);
  v1 = swift_allocObject();
  sub_220BF9210(v3, v1 + 16);
  sub_220CA0184();
  swift_allocObject();
  return sub_220CA0174();
}

uint64_t sub_220C818FC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3F0, &qword_220CB04B8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220CA4A60;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA01E4();
  result = sub_220CA05F4();
  if (result)
  {
    v4 = MEMORY[0x277CEADD0];
    *(v2 + 32) = result;
    *(v2 + 40) = v4;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220CA0294();
    result = sub_220CA05F4();
    if (result)
    {
      v5 = MEMORY[0x277CEADF0];
      *(v2 + 48) = result;
      *(v2 + 56) = v5;
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220C81A04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_220CA0434();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v7, *MEMORY[0x277CEAE78], v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0114();
  result = sub_220CA05F4();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220CA0424();
  result = sub_220CA0614();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D178, &qword_220CB04B0);
  result = sub_220CA0624();
  if (!v18[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D188, &qword_220CAF6E8);
  result = sub_220CA0624();
  if (!v17[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D190, &qword_220CAF6F0);
  result = sub_220CA0624();
  if (!v16[3])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D198, &unk_220CB2BC0);
  result = sub_220CA0624();
  if (!v15[3])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D170, &unk_220CAF6D0);
  result = sub_220CA0624();
  if (v14[3])
  {
    v12 = type metadata accessor for WidgetSessionCoordinator(0);
    swift_allocObject();
    result = sub_220C35374(v7, v10, v11, v18, v17, v16, v15, v14);
    a2[3] = v12;
    a2[4] = &protocol witness table for WidgetSessionCoordinator;
    *a2 = result;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

WeatherAnalytics::WidgetFamily_optional __swiftcall WidgetFamily.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WidgetFamily.rawValue.getter()
{
  result = 0x6D536D6574737973;
  switch(*v0)
  {
    case 1:
      result = 0x654D6D6574737973;
      break;
    case 2:
      result = 0x614C6D6574737973;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
    case 7:
      result = 0x726F737365636361;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C81ED0()
{
  result = qword_27CF7D450;
  if (!qword_27CF7D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D450);
  }

  return result;
}

unint64_t sub_220C81F48@<X0>(unint64_t *a1@<X8>)
{
  result = WidgetFamily.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetFamily(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C820FC()
{
  result = qword_27CF7D458;
  if (!qword_27CF7D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D458);
  }

  return result;
}

WeatherAnalytics::StartMethod __swiftcall StartMethod.init(referringApplication:)(Swift::String referringApplication)
{
  v2 = v1;
  if (OUTLINED_FUNCTION_0_24(referringApplication._countAndFlagsBits, 0x7370616D2E65))
  {

    v4 = 2;
  }

  else
  {
    v5 = sub_220CA0C94();
    if (v5)
    {

      v4 = 1;
    }

    else
    {
      v6 = OUTLINED_FUNCTION_0_24(v5, 0x697269732E65);
      if (v6)
      {

        v4 = 3;
      }

      else
      {
        v7 = OUTLINED_FUNCTION_0_24(v6, 0x7377656E2E65);

        if (v7)
        {
          v4 = 5;
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  *v2 = v4;
  return result;
}

WeatherAnalytics::ProviderDataOrigination_optional __swiftcall ProviderDataOrigination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_220C822D4()
{
  result = qword_27CF7D460;
  if (!qword_27CF7D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D460);
  }

  return result;
}

uint64_t sub_220C8234C@<X0>(uint64_t *a1@<X8>)
{
  result = ProviderDataOrigination.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ProviderDataOrigination(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C82504()
{
  result = qword_2812CF748;
  if (!qword_2812CF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF748);
  }

  return result;
}

uint64_t sub_220C82620()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D498);
  __swift_project_value_buffer(v0, qword_27CF7D498);
  return sub_220CA0244();
}

uint64_t WidgetRefreshEvent.data.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4B0, &qword_220CB0810);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t WidgetRefreshEvent.data.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4B0, &qword_220CB0810);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t WidgetRefreshEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetRefreshEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetRefreshEvent.timedData.setter()
{
  v2 = *(OUTLINED_FUNCTION_8_13() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t WidgetRefreshEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetRefreshEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetRefreshEvent.privateUserData.setter()
{
  v2 = *(OUTLINED_FUNCTION_8_13() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t WidgetRefreshEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4B0, &qword_220CB0810);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  refreshed = type metadata accessor for WidgetRefreshEvent(0);
  v5 = *(refreshed + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  (*(v6 + 104))(a1 + v5, v2);
  v7 = *(refreshed + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v9 = *(v8 + 104);

  return v9(a1 + v7, v2);
}

uint64_t WidgetRefreshEvent.Model.data.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t WidgetRefreshEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for WidgetRefreshEvent.Model(v0);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_2();

  return v2(v1);
}

uint64_t WidgetRefreshEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for WidgetRefreshEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t WidgetRefreshEvent.Model.init(data:timedData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
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
  refreshed = type metadata accessor for WidgetRefreshEvent.Model(0);
  v13 = *(refreshed + 20);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  result = (*(v14 + 32))(a4 + v13, a2);
  v16 = a4 + *(refreshed + 24);
  *v16 = v8;
  *(v16 + 8) = v9;
  *(v16 + 16) = v10;
  *(v16 + 20) = v11;
  return result;
}

uint64_t sub_220C82CC8(uint64_t a1)
{
  v2 = sub_220C82F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C82D04(uint64_t a1)
{
  v2 = sub_220C82F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetRefreshEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4B8, &qword_220CB0818);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C82F4C();
  sub_220CA1254();
  v10 = v2[1];
  v11 = *(v2 + 16);
  v26 = *v2;
  v27 = v10;
  LOBYTE(v28) = v11;
  v30 = 0;
  v12 = sub_220C82FA0();

  OUTLINED_FUNCTION_3_3(v13, v14, v15, &type metadata for WidgetRefreshEventData);

  if (!v12)
  {
    refreshed = type metadata accessor for WidgetRefreshEvent.Model(0);
    LOBYTE(v26) = 1;
    sub_220CA04D4();
    sub_220C315AC(&qword_2812D0D80, MEMORY[0x277CEAED8]);
    sub_220CA1104();
    v17 = (v2 + *(refreshed + 24));
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

unint64_t sub_220C82F4C()
{
  result = qword_27CF7D4C0;
  if (!qword_27CF7D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D4C0);
  }

  return result;
}

unint64_t sub_220C82FA0()
{
  result = qword_27CF7D4C8;
  if (!qword_27CF7D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D4C8);
  }

  return result;
}

uint64_t WidgetRefreshEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v28 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4D0, &qword_220CB0820);
  OUTLINED_FUNCTION_3();
  v29 = v10;
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  refreshed = type metadata accessor for WidgetRefreshEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_220C82F4C();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v16 = v14;
  v17 = v28;
  v36 = 0;
  sub_220C83370();
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
  (*(v17 + 32))(v16 + *(refreshed + 20), v8, v4);
  v36 = 2;
  sub_220BFF730();
  OUTLINED_FUNCTION_4_6();
  sub_220CA1034();
  v20 = OUTLINED_FUNCTION_6_1();
  v21(v20, v30);
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v25 = v16 + *(refreshed + 24);
  *v25 = v32;
  *(v25 + 8) = v22;
  *(v25 + 16) = v23;
  *(v25 + 20) = v24;
  sub_220C833C4(v16, v27);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_220C83428(v16);
}

unint64_t sub_220C83370()
{
  result = qword_27CF7D4D8;
  if (!qword_27CF7D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D4D8);
  }

  return result;
}

uint64_t sub_220C833C4(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for WidgetRefreshEvent.Model(0);
  (*(*(refreshed - 8) + 16))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_220C83428(uint64_t a1)
{
  refreshed = type metadata accessor for WidgetRefreshEvent.Model(0);
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

void sub_220C834EC(uint64_t a1)
{
  sub_220C835F8(319, &qword_27CF7D4F0, sub_220C83370, sub_220C82FA0, &type metadata for WidgetRefreshEventData);
  if (v1 <= 0x3F)
  {
    sub_220C05010(319);
    if (v2 <= 0x3F)
    {
      sub_220C835F8(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C835F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_220C8369C(uint64_t a1)
{
  result = sub_220CA04D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetRefreshEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C83800()
{
  result = qword_27CF7D508;
  if (!qword_27CF7D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D508);
  }

  return result;
}

unint64_t sub_220C83858()
{
  result = qword_27CF7D510;
  if (!qword_27CF7D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D510);
  }

  return result;
}

unint64_t sub_220C838B0()
{
  result = qword_27CF7D518;
  if (!qword_27CF7D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D518);
  }

  return result;
}

WeatherAnalytics::WidgetData __swiftcall WidgetData.init(name:family:)(WeatherAnalytics::WidgetData name, WeatherAnalytics::WidgetFamily family)
{
  v3 = *family;
  *v2 = name.name;
  *(v2 + 16) = v3;
  name.family = family;
  return name;
}

uint64_t WidgetData.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WidgetData.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220C839DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C696D6166 && a2 == 0xE600000000000000)
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

uint64_t sub_220C83AA0(char a1)
{
  if (a1)
  {
    return 0x796C696D6166;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_220C83AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C839DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C83AFC(uint64_t a1)
{
  v2 = sub_220C83CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C83B38(uint64_t a1)
{
  v2 = sub_220C83CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D520, &qword_220CB0A30);
  OUTLINED_FUNCTION_3();
  v11 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C83CFC();
  sub_220CA1254();
  v15 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_220C83D50();
    sub_220CA1104();
  }

  return (*(v11 + 8))(v8, v4);
}

unint64_t sub_220C83CFC()
{
  result = qword_27CF7D528;
  if (!qword_27CF7D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D528);
  }

  return result;
}

unint64_t sub_220C83D50()
{
  result = qword_27CF7D530;
  if (!qword_27CF7D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D530);
  }

  return result;
}

uint64_t WidgetData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D538, &qword_220CB0A38);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C83CFC();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_220CA0FF4();
  v8 = v7;
  sub_220C83F74();
  sub_220CA1034();
  v9 = OUTLINED_FUNCTION_0_3();
  v10(v9);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C83F74()
{
  result = qword_27CF7D540;
  if (!qword_27CF7D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D540);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C840F0()
{
  result = qword_27CF7D548;
  if (!qword_27CF7D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D548);
  }

  return result;
}

unint64_t sub_220C84148()
{
  result = qword_27CF7D550;
  if (!qword_27CF7D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D550);
  }

  return result;
}

unint64_t sub_220C841A0()
{
  result = qword_27CF7D558;
  if (!qword_27CF7D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D558);
  }

  return result;
}

uint64_t sub_220C84240(uint64_t a1)
{
  v2 = sub_220C843F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C8427C(uint64_t a1)
{
  v2 = sub_220C843F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DetailViewData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D560, &qword_220CB0C40);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C843F8();
  sub_220CA1254();
  v12 = v9;
  sub_220C8444C();
  sub_220CA1104();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C843F8()
{
  result = qword_27CF7D568;
  if (!qword_27CF7D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D568);
  }

  return result;
}

unint64_t sub_220C8444C()
{
  result = qword_27CF7D570;
  if (!qword_27CF7D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D570);
  }

  return result;
}

uint64_t DetailViewData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D578, &qword_220CB0C48);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C843F8();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C84600();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C84600()
{
  result = qword_27CF7D580;
  if (!qword_27CF7D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D580);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetailViewData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DetailViewData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C84818()
{
  result = qword_27CF7D588;
  if (!qword_27CF7D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D588);
  }

  return result;
}

unint64_t sub_220C84870()
{
  result = qword_27CF7D590;
  if (!qword_27CF7D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D590);
  }

  return result;
}

unint64_t sub_220C848C8()
{
  result = qword_27CF7D598;
  if (!qword_27CF7D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D598);
  }

  return result;
}

uint64_t sub_220C849E4()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D5B8);
  __swift_project_value_buffer(v0, qword_27CF7D5B8);
  return sub_220CA0244();
}

uint64_t NetworkOperationFailedEvent.networkOperationFailedEventData.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5D0, &unk_220CB0E50);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t NetworkOperationFailedEvent.networkOperationFailedEventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5D0, &unk_220CB0E50);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t NetworkOperationFailedEvent.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NetworkOperationFailedEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NetworkOperationFailedEvent(uint64_t a1)
{
  result = qword_2812CF2F8;
  if (!qword_2812CF2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NetworkOperationFailedEvent.privateUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NetworkOperationFailedEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t NetworkOperationFailedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5D0, &unk_220CB0E50);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  v4 = *(type metadata accessor for NetworkOperationFailedEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 104);

  return v6(a1 + v4, v2);
}

uint64_t NetworkOperationFailedEvent.Model.networkOperationFailedEventData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

uint64_t NetworkOperationFailedEvent.Model.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 60);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
}

__n128 NetworkOperationFailedEvent.Model.init(networkOperationFailedEventData:privateUserData:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u64[0];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u64[1] = v4;
  a3[2].n128_u64[0] = v5;
  a3[2].n128_u64[1] = v6;
  a3[3].n128_u64[0] = v7;
  a3[3].n128_u32[2] = v8;
  a3[3].n128_u8[12] = v9;
  return result;
}

uint64_t sub_220C84E60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001FLL && 0x8000000220CB61D0 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
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

uint64_t sub_220C84F38(char a1)
{
  if (a1)
  {
    return 0x5565746176697270;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_220C84F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C84E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C84FB0(uint64_t a1)
{
  v2 = sub_220C85234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C84FEC(uint64_t a1)
{
  v2 = sub_220C85234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkOperationFailedEvent.Model.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5D8, &qword_220CB0E60);
  OUTLINED_FUNCTION_3();
  v22 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v29 = *(v1 + 16);
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[6];
  v18 = v1[5];
  v19 = v12;
  v20 = v10;
  LODWORD(v10) = *(v1 + 14);
  v16 = *(v1 + 60);
  v17 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C85234();

  sub_220CA1254();
  v23 = v9;
  v24 = v8;
  LOBYTE(v25) = v29;
  v27 = v20;
  v28 = v11;
  v30 = 0;
  sub_220C85288();
  v13 = v21;
  sub_220CA1104();

  if (!v13)
  {
    v23 = v18;
    v24 = v19;
    v25 = v17;
    v26 = v16;
    v30 = 1;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v22 + 8))(v7, v3);
}

unint64_t sub_220C85234()
{
  result = qword_27CF7D5E0;
  if (!qword_27CF7D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D5E0);
  }

  return result;
}

unint64_t sub_220C85288()
{
  result = qword_2812CEC48;
  if (!qword_2812CEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC48);
  }

  return result;
}

uint64_t NetworkOperationFailedEvent.Model.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5E8, &qword_220CB0E68);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C85234();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  sub_220C85558();
  OUTLINED_FUNCTION_3_18(&type metadata for NetworkOperationFailedEventData, &v21);
  v6 = v24;
  v37 = v26;
  v7 = v28;
  v19 = v27;
  v20 = v25;
  v39 = 1;
  sub_220BFF730();
  OUTLINED_FUNCTION_3_18(&type metadata for PrivateUserData, &v39);
  v8 = OUTLINED_FUNCTION_0_3();
  v9(v8);
  v18 = v33;
  v17 = v34;
  v16 = v35;
  v10 = v36;
  v38 = v36;
  *&v21 = v6;
  *(&v21 + 1) = v20;
  v11 = v37;
  LOBYTE(v22) = v37;
  *(&v22 + 1) = v19;
  *v23 = v7;
  *&v23[8] = v33;
  *&v23[16] = v34;
  *&v23[24] = v35;
  v23[28] = v36;
  v12 = v21;
  v13 = v22;
  v14 = *v23;
  *(a2 + 45) = *&v23[13];
  a2[1] = v13;
  a2[2] = v14;
  *a2 = v12;
  sub_220C855AC(&v21, &v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v24 = v6;
  v25 = v20;
  v26 = v11;
  v27 = v19;
  v28 = v7;
  v29 = v18;
  v30 = v17;
  v31 = v16;
  v32 = v10;
  return sub_220C855E4(&v24);
}

unint64_t sub_220C85558()
{
  result = qword_2812CEC40;
  if (!qword_2812CEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC40);
  }

  return result;
}

void sub_220C8567C(uint64_t a1)
{
  sub_220C85770(319, &qword_2812D0E60, sub_220C85558, sub_220C85288, &type metadata for NetworkOperationFailedEventData);
  if (v1 <= 0x3F)
  {
    sub_220C85770(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788, &type metadata for PrivateUserData);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220C85770(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_220C85808(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 61))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_220C85848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}