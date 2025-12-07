uint64_t sub_1DCF4A4C0@<X0>(uint64_t *a1@<X8>)
{
  sub_1DCB90D40();
  if (v14)
  {
    if (swift_dynamicCast())
    {
      v3 = v10;
      v2 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DCB16D50(&v12, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  v3 = 0;
  v2 = 0xE000000000000000;
LABEL_6:
  sub_1DCB90D40();
  if (v14)
  {
    if (swift_dynamicCast())
    {
      v5 = v10;
      v4 = v11;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1DCB16D50(&v12, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  v5 = 0;
  v4 = 0xE000000000000000;
LABEL_11:
  sub_1DCB90D40();
  if (!v14)
  {
    sub_1DCB16D50(&v12, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v7 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_16;
  }

  v7 = v10;
  v6 = v11;
LABEL_16:
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1DD0DEC1C();

  v12 = 0x3A2264697575227BLL;
  v13 = 0xE900000000000022;
  MEMORY[0x1E12A6780](v3, v2);

  MEMORY[0x1E12A6780](0x65756C6176222C22, 0xEB00000000223A22);
  MEMORY[0x1E12A6780](v5, v4);

  MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD124F50);
  MEMORY[0x1E12A6780](v7, v6);

  result = MEMORY[0x1E12A6780](32034, 0xE200000000000000);
  v9 = v13;
  *a1 = v12;
  a1[1] = v9;
  return result;
}

void sub_1DCF4A748(void *a1)
{
  if (sub_1DCF4B428([a1 _codableDescription]))
  {
    sub_1DCB90D40();

    if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB80, &qword_1DD0E7AE8);
      if (swift_dynamicCast())
      {
        v1 = *(v13 + 16);
        if (v1)
        {
          v2 = MEMORY[0x1E69E7CC0];
          v3 = 32;
          do
          {
            v4 = *(v13 + v3);
            if (*(v4 + 16))
            {

              v5 = sub_1DCB21038(0xD000000000000015, 0x80000001DD124F10);
              if (v6)
              {
                sub_1DCB0DF6C(*(v4 + 56) + 32 * v5, v15);

                if (swift_dynamicCast())
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1DCB34108(0, *(v2 + 16) + 1, 1, v2);
                    v2 = v10;
                  }

                  v8 = *(v2 + 16);
                  v7 = *(v2 + 24);
                  if (v8 >= v7 >> 1)
                  {
                    v11 = OUTLINED_FUNCTION_21_0(v7);
                    sub_1DCB34108(v11, v8 + 1, 1, v2);
                    v2 = v12;
                  }

                  *(v2 + 16) = v8 + 1;
                  v9 = v2 + 16 * v8;
                  *(v9 + 32) = v13;
                  *(v9 + 40) = v14;
                }
              }

              else
              {
              }
            }

            v3 += 8;
            --v1;
          }

          while (v1);
        }

        else
        {
        }
      }
    }

    else
    {
      sub_1DCB16D50(v15, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }
  }

  OUTLINED_FUNCTION_84();
}

uint64_t sub_1DCF4A970()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCB60F10();
}

uint64_t sub_1DCF4AA34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF45F40();
}

uint64_t sub_1DCF4AAE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCF4AB90;

  return sub_1DCF4690C(a1, a2);
}

uint64_t sub_1DCF4AB90()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_32_1();
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2 & 1);
}

void sub_1DCF4AC84()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v12);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_136();
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v11;
  v15[4] = v9;
  v15[5] = v7;
  v16 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_36_4(v16);
  OUTLINED_FUNCTION_41_4();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v5;
  v17[5] = v3;
  v17[6] = &unk_1DD103670;
  v17[7] = v15;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4ADB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCB5C86C();
}

void sub_1DCF4AE78()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v10);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_92_2();
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = v1;
  v13[4] = v9;
  v14 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_36_4(v14);
  OUTLINED_FUNCTION_41_4();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v7;
  v15[5] = v5;
  v15[6] = &unk_1DD103640;
  v15[7] = v13;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4AF8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCF45F40();
}

void sub_1DCF4B044()
{
  OUTLINED_FUNCTION_20_10();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v9);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_72();
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v2;
  OUTLINED_FUNCTION_92_2();
  v13 = swift_allocObject();
  v13[2] = v0;
  v13[3] = v8;
  v13[4] = v6;
  v14 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_36_4(v14);
  OUTLINED_FUNCTION_41_4();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = sub_1DCF21B08;
  v15[5] = v12;
  v15[6] = &unk_1DD103628;
  v15[7] = v13;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4B184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1DCF4B234;

  return sub_1DCF4690C(a3, a4);
}

uint64_t sub_1DCF4B234()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF4B320()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 32);
  *(v2 + 8) = v1 & 1;
  return OUTLINED_FUNCTION_15_7();
}

id sub_1DCF4B3A8(uint64_t a1, void *a2)
{
  v4 = sub_1DD0DDE4C();

  v5 = [v2 initWithJSONDictionary:v4 forIntent:a2];

  return v5;
}

uint64_t sub_1DCF4B428(void *a1)
{
  v2 = [a1 dictionaryRepresentation];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDE6C();

  return v3;
}

void sub_1DCF4B4A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1DD0DDE4C();

  [a3 logEventWithType:a1 context:v5];
}

id sub_1DCF4B540(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  v5 = [a3 attributeByKeyPath_];

  return v5;
}

void sub_1DCF4B5A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setDelayedActionAceId_];
}

uint64_t sub_1DCF4B5FC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_71_7();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return sub_1DCF4B184(v6, v1, v2, v0);
}

uint64_t sub_1DCF4B694()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_121();

  return sub_1DCCBF118();
}

uint64_t sub_1DCF4B724()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_71_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCF4AF8C();
}

uint64_t sub_1DCF4B7BC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_121();

  return sub_1DCCBF31C();
}

uint64_t sub_1DCF4B84C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCF4ADB0();
}

uint64_t sub_1DCF4B8DC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_121();

  return sub_1DCCC0244();
}

unint64_t sub_1DCF4B978()
{
  result = qword_1EDE48E38;
  if (!qword_1EDE48E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE48E38);
  }

  return result;
}

uint64_t sub_1DCF4B9CC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_71_7();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_17(v3);

  return sub_1DCF4654C(v5, v1, v0);
}

uint64_t sub_1DCF4BA64()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_37_34();
  OUTLINED_FUNCTION_152();

  return sub_1DCF45A40(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF4BAF8()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_37_34();
  OUTLINED_FUNCTION_152();

  return sub_1DCF45D80(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF4BB8C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCF44F40(v3, v4, v5, v6, v7);
}

void sub_1DCF4BC1C()
{
  OUTLINED_FUNCTION_50();
  v36 = v1;
  v37 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v35 = v11;
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_0_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_16();
  v22 = v21 - v20;
  v39 = type metadata accessor for ResolveConfirmHandleExecutor();
  v40 = &off_1F58710E8;
  v38[0] = v8;
  type metadata accessor for ResolveConfirmHandleService();
  v23 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_16();
  v28 = (v27 - v26);
  (*(v29 + 16))(v27 - v26);
  v30 = *v28;
  (*(v17 + 16))(v22, v35, v6);
  (*(v13 + 16))(v0, v10, v4);
  v31 = OUTLINED_FUNCTION_48_5();
  sub_1DCF4BE70(v31, v32, v30, v23, v6, v4, v36, v37);
  v33 = OUTLINED_FUNCTION_19();
  v34(v33);
  (*(v17 + 8))(v35, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCF4BE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[3] = a5;
  v20[4] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  v19[3] = a6;
  v19[4] = a8;
  v16 = __swift_allocate_boxed_opaque_existential_1Tm(v19);
  (*(*(a6 - 8) + 32))(v16, a2, a6);
  v18[3] = type metadata accessor for ResolveConfirmHandleExecutor();
  v18[4] = &off_1F58710E8;
  v18[0] = a3;
  sub_1DCB17CA0(v20, a4 + 16);
  sub_1DCB17CA0(v19, a4 + 56);
  sub_1DCB17CA0(v18, a4 + 96);
  sub_1DCB83278();
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return a4;
}

unint64_t OUTLINED_FUNCTION_81_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1DCB10E9C(v10, v11, va);
}

uint64_t OUTLINED_FUNCTION_109_6()
{

  return type metadata accessor for CommandFailure();
}

uint64_t OUTLINED_FUNCTION_113_6()
{
}

void ReactiveFlowPlan.resolveInto<>(_:)(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  OUTLINED_FUNCTION_0_1();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v11;
  (*(v15 + 16))(v13, v4, a1);
  v19 = v14;
  v16 = type metadata accessor for ResolveIntoModifier(0, a1, a3, a4);
  OUTLINED_FUNCTION_1_114();
  WitnessTable = swift_getWitnessTable();
  sub_1DCDDC1D8(v13, &v19, a1, v16, WitnessTable, a2);
  sub_1DD0DCF8C();
}

void sub_1DCF4C1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for ResolveIntoPlan(0, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_34_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for _FlowPlanEvent(v8, v9, v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DDAEC();
  swift_getWitnessTable();
  v12 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DE97C();
  sub_1DD0DDB6C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DDA8C();
  swift_getWitnessTable();
  sub_1DD0DDA5C();
  swift_getWitnessTable();
  sub_1DD0DDA4C();
  swift_getWitnessTable();
  v39 = v12;
  v40 = sub_1DD0DDA6C();
  WitnessTable = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  sub_1DD0DDABC();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v17);
  swift_getWitnessTable();
  sub_1DD0DDA8C();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v20);
  swift_getWitnessTable();
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v23);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v32);
  (*(a3 + 48))(a1, a2, a3);
  v39 = *(a1 + *(v37 + 44));
  type metadata accessor for Resolvable(0, AssociatedTypeWitness, v33, v34);
  Resolvable.resolvedValuePublisher.getter(&v38);
}

uint64_t sub_1DCF4CD64@<X0>(uint64_t a1@<X0>, char *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1DD0DE97C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v27 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v27 - v15;
  (*(v8 + 16))(v12, a1, v7);
  if (__swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v12, v7);
    v19 = type metadata accessor for _FlowPlanEvent(0, AssociatedTypeWitness, v17, v18);
    v20 = a4;
    v21 = 1;
  }

  else
  {
    v22 = *(v13 + 32);
    v22(v16, v12, AssociatedTypeWitness);
    v22(a4, v16, AssociatedTypeWitness);
    v25 = type metadata accessor for _FlowPlanEvent(0, AssociatedTypeWitness, v23, v24);
    swift_storeEnumTagMultiPayload();
    v20 = a4;
    v21 = 0;
    v19 = v25;
  }

  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
}

uint64_t sub_1DCF4CF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a2;
  v61 = a6;
  v59 = type metadata accessor for ResolveIntoPlan(0, a3, a4, a5);
  v7 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v8);
  v56 = v50 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for _FlowPlanEvent(0, AssociatedTypeWitness, v11, v12);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v50 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](v16, v20);
  v23 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = v50 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = v50 - v29;
  v31 = *(v14 + 16);
  v57 = v14 + 16;
  v58 = v31;
  v31(v18, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v13;
    v55 = a1;
    (*(v19 + 32))(v30, v18, AssociatedTypeWitness);
    if (qword_1ECCA13A8 != -1)
    {
      swift_once();
    }

    v32 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v32, qword_1ECCD2748);
    v33 = *(v19 + 16);
    v54 = v30;
    v33(v27, v30, AssociatedTypeWitness);
    v34 = v56;
    (*(v7 + 16))(v56, v60, v59);
    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v51 = v35;
      v38 = v37;
      v52 = swift_slowAlloc();
      v63 = v52;
      *v38 = 136315394;
      v33(v23, v27, AssociatedTypeWitness);
      v39 = sub_1DD0DE02C();
      v50[1] = v36;
      v40 = v39;
      v42 = v41;
      (*(v19 + 8))(v27, AssociatedTypeWitness);
      v43 = sub_1DCB10E9C(v40, v42, &v63);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      v62 = *&v34[*(v59 + 44)];
      type metadata accessor for Resolvable(0, AssociatedTypeWitness, v44, v45);
      sub_1DD0DCF8C();
    }

    v46 = v59;
    (*(v7 + 8))(v34, v59);
    (*(v19 + 8))(v27, AssociatedTypeWitness);
    v63 = *(v60 + *(v46 + 44));
    type metadata accessor for Resolvable(0, AssociatedTypeWitness, v47, v48);
    sub_1DD0DCF8C();
  }

  (*(v14 + 8))(v18, v13);
  return v58(v61, a1, v13);
}

uint64_t sub_1DCF4D51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v38 = a1;
  v39 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v34 - v10;
  v14 = type metadata accessor for _FlowPlanEvent(0, AssociatedTypeWitness, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v34 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v21);
  v24 = &v34 - v23;
  v25 = *(v22 + 48);
  v34 = v15;
  v26 = *(v15 + 16);
  v26(&v34 - v23, v38, v14);
  v26(&v24[v25], v39, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  v26(v18, v24, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v37 + 8))(v18, AssociatedTypeWitness);
LABEL_5:
    v31 = 0;
    goto LABEL_6;
  }

  v27 = v37;
  v28 = *(v37 + 32);
  v28(v11, v18, AssociatedTypeWitness);
  v29 = &v24[v25];
  v30 = v35;
  v28(v35, v29, AssociatedTypeWitness);
  v31 = sub_1DD0DDF7C();
  v32 = *(v27 + 8);
  v32(v30, AssociatedTypeWitness);
  v32(v11, AssociatedTypeWitness);
  v20 = v34;
  TupleTypeMetadata2 = v14;
LABEL_6:
  (*(v20 + 8))(v24, TupleTypeMetadata2);
  return v31 & 1;
}

uint64_t sub_1DCF4D860@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  (*(*(a3 - 8) + 32))(a6, a1);
  result = type metadata accessor for ResolveIntoPlan(0, a3, a4, a5);
  *(a6 + *(result + 44)) = v10;
  return result;
}

unint64_t sub_1DCF4D900(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

void sub_1DCF4D954(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = a1[2];
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  (*(v11 + 16))(v9);
  v13 = v10;
  sub_1DCF4D860(v9, &v13, v5, a1[3], a1[4], a2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4DA58(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCF4DAF4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if ((*(v5 + 80) & 0x1000F8) != 0 || ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    *a1 = *a2;
  }

  else
  {
    (*(v5 + 16))(a1, a2);
    *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4DBEC(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

void sub_1DCF4DC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  sub_1DD0DCF8C();
}

void sub_1DCF4DCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4DD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1DCF4DDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCF4DE68(uint64_t result, unsigned int a2, uint64_t a3)
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

void sub_1DCF4DFA4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_1DCF4E170(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF4E1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for ResolveIntoPlan(0, v5, v6, v7) - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_1DCF4CF84(a1, v9, v5, v6, v7, a2);
}

uint64_t ResolveParameterResult.parameterName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ResolveParameterResult.__deallocating_deinit()
{
  ResolveParameterResult.deinit();

  return swift_deallocClassInstance();
}

uint64_t ResolveParameterFlowFrame.namespace.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1DCF4E33C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 160);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  type metadata accessor for ResolveParameterFlowFrame.State(0, v6, v7, *(v5 + 96));
  OUTLINED_FUNCTION_2();
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t sub_1DCF4E3F8(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 160);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  type metadata accessor for ResolveParameterFlowFrame.State(0, v6, v7, *(v5 + 96));
  OUTLINED_FUNCTION_2();
  (*(v8 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1DCF4E4BC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v54 = a4;
  v55 = a3;
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v48 - v8;
  OUTLINED_FUNCTION_104();
  v11 = *(v10 + 88);
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_0_1();
  v49 = v13;
  v50 = v12;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v48 - v16;
  OUTLINED_FUNCTION_0_1();
  v52 = v18;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  v51 = &v48 - v21;
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_104();
  v24 = type metadata accessor for ResolveParameterFlowFrame.State(0, v23, v11, *(v22 + 96));
  OUTLINED_FUNCTION_0_1();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_10_2();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_9_70();
  sub_1DCF4E33C(v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v26 + 8))(v5, v24);
  if (EnumCaseMultiPayload != 3)
  {
    v41 = *MEMORY[0x1E699F738];
    sub_1DD0DB34C();
    OUTLINED_FUNCTION_2();
    (*(v42 + 104))(v9, v41);
    OUTLINED_FUNCTION_8_71();
    v55(v9);
    return sub_1DCB0E9D8(v9, &unk_1ECCA9BE0, &qword_1DD0E9590);
  }

  (*(*v4 + 232))(v53);
  if (__swift_getEnumTagSinglePayload(v17, 1, v11) == 1)
  {
    (*(v49 + 8))(v17, v50);
    v36 = v55;
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v37 = qword_1EDE57E18;
    v38 = sub_1DD0DE6DC();
    sub_1DD0DD7EC("ResolveParameterFlowFrame subclass could not process input", 58, 2, &dword_1DCAFC000, v37, v38, MEMORY[0x1E69E7CC0]);
    v39 = *MEMORY[0x1E699F738];
    sub_1DD0DB34C();
    OUTLINED_FUNCTION_2();
    (*(v40 + 104))(v9, v39);
    OUTLINED_FUNCTION_8_71();
    v36(v9);
    return sub_1DCB0E9D8(v9, &unk_1ECCA9BE0, &qword_1DD0E9590);
  }

  v44 = v51;
  v45 = v52;
  (*(v52 + 32))(v51, v17, v11);
  (*(v45 + 16))(v31, v44, v11);
  swift_storeEnumTagMultiPayload();
  sub_1DCF4E3F8(v31);
  v46 = *MEMORY[0x1E699F740];
  sub_1DD0DB34C();
  OUTLINED_FUNCTION_2();
  (*(v47 + 104))(v9, v46);
  OUTLINED_FUNCTION_8_71();
  v55(v9);
  sub_1DCB0E9D8(v9, &unk_1ECCA9BE0, &qword_1DD0E9590);
  return (*(v45 + 8))(v44, v11);
}

uint64_t sub_1DCF4E980(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v5 = v3;
  v46 = a2;
  v47 = a3;
  v45 = a1;
  v6 = *v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = v6[11];
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - v14;
  type metadata accessor for ResolveParameterFlowFrame.State(0, v6[10], v9, v6[12]);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_10_2();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_9_70();
  sub_1DCF4E33C(v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_11_65();
      sub_1DCF4E33C(v20);
      OUTLINED_FUNCTION_5_95();
      sub_1DD0DF07C();
      v28 = OUTLINED_FUNCTION_5_95();
      v30 = v29;
      v29(v28);
      v31 = v48;
      v32 = v49;
      v45 = type metadata accessor for CommandFailure();
      swift_allocObject();
      v33 = CommandFailure.init(errorCode:reason:)(-1, v31, v32);
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
      }

      v42 = qword_1EDE57E18;
      v41 = sub_1DD0DE6EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1DD0E07C0;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1DCF4E33C(v20);
      OUTLINED_FUNCTION_5_95();
      sub_1DD0DF07C();
      v35 = OUTLINED_FUNCTION_5_95();
      v43 = v30;
      v30(v35);
      v36 = v48;
      v37 = v49;
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = sub_1DCB34060();
      *(v34 + 32) = v36;
      *(v34 + 40) = v37;
      sub_1DD0DD7EC("Resolve parameter flow frame in an unexpected state: %@", 55, 2, &dword_1DCAFC000, v42, v41, v34);

      sub_1DCC7AE30();
      v38 = OUTLINED_FUNCTION_10_70();
      *v39 = v33;
      *v20 = v38;
      OUTLINED_FUNCTION_5_95();
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    }

    OUTLINED_FUNCTION_5_95();
    swift_storeEnumTagMultiPayload();
    sub_1DCF4E3F8(v20);
    return ((*v5)[30])(v45, v46, v47);
  }

  else
  {
    (*(v11 + 32))(v15, v4, v9);
    sub_1DCCFA914();
    v26 = sub_1DD0DE93C();
    v27 = sub_1DD0DE70C();
    sub_1DD0DD7EC("Operation is complete.", 22, 2, &dword_1DCAFC000, v26, v27, MEMORY[0x1E69E7CC0]);

    ((*v5)[31])(v15, v45, v46, v47);
    return (*(v11 + 8))(v15, v9);
  }
}

uint64_t sub_1DCF4EE74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = type metadata accessor for ResolveParameterFlowFrame.State(0, *(*v1 + 80), v3, *(*v1 + 96));
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_10_2();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v28 - v14);
  sub_1DCF4E33C(&v28 - v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_11_65();
    sub_1DCF4E33C(v11);
    sub_1DD0DF07C();
    (*(v6 + 8))(v11, v4);
    v17 = v28;
    v18 = v29;
    type metadata accessor for CommandFailure();
    swift_allocObject();
    v19 = CommandFailure.init(errorCode:reason:)(-1, v17, v18);
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v20 = qword_1EDE57E18;
    v21 = sub_1DD0DE6EC();
    sub_1DD0DD7EC("Confirm flow frame exiting in an unexpected state", 49, 2, &dword_1DCAFC000, v20, v21, MEMORY[0x1E69E7CC0]);
    sub_1DCC7AE30();
    v22 = swift_allocError();
    *v23 = v19;
    *a1 = v22;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DF22C();
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload)
  {
    v24 = *v15;
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v25 = qword_1EDE57E18;
    v26 = sub_1DD0DE6EC();
    sub_1DD0DD7EC("Confirm flow frame exiting in an error state", 44, 2, &dword_1DCAFC000, v25, v26, MEMORY[0x1E69E7CC0]);
    *a1 = v24;
    goto LABEL_10;
  }

  (*(*(v3 - 8) + 32))(a1, v15, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCF4F1E8(uint64_t a1, void (*a2)(uint64_t *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v11 - v5);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v7 = CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000002ALL, 0x80000001DD125520);
  sub_1DCC7AE30();
  v8 = swift_allocError();
  *v9 = v7;
  *v6 = v8;
  swift_storeEnumTagMultiPayload();
  a2(v6);
  return sub_1DCB0E9D8(v6, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCF4F310(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v9 - v6;
  type metadata accessor for SiriKitFlowFrameInput(0);
  sub_1DD0DB32C();
  swift_storeEnumTagMultiPayload();
  a3(v7);
  return sub_1DCB0E9D8(v7, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

id *ResolveParameterFlowFrame.deinit()
{

  swift_unknownObjectRelease();

  v1 = *(*v0 + 20);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_104();
  type metadata accessor for ResolveParameterFlowFrame.State(0, v3, v4, *(v2 + 96));
  OUTLINED_FUNCTION_2();
  (*(v5 + 8))(v0 + v1);
  return v0;
}

uint64_t ResolveParameterFlowFrame.__deallocating_deinit()
{
  ResolveParameterFlowFrame.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCF4F548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF4F618(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF4F6DC(uint64_t *a1)
{
  result = type metadata accessor for ResolveParameterFlowFrame.State(319, a1[10], a1[11], a1[12]);
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

uint64_t sub_1DCF4F8E4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1DCF4F978(char *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 24) - 8) + 64);
  }

  if ((*(v4 + 80) & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    *__dst = *a2;
    sub_1DD0DCF8C();
  }

  v7 = a2[v5];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v5 <= 3)
    {
      v9 = v5;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a2;
        goto LABEL_19;
      case 2:
        v10 = *a2;
        goto LABEL_19;
      case 3:
        v10 = *a2 | (a2[2] << 16);
        goto LABEL_19;
      case 4:
        v10 = *a2;
LABEL_19:
        v11 = (v10 | (v8 << (8 * v5))) + 2;
        if (v5 >= 4)
        {
          v7 = v10 + 2;
        }

        else
        {
          v7 = v11;
        }

        break;
      default:
        break;
    }
  }

  if (v7 == 1)
  {
    v12 = *a2;
    v13 = *a2;
    *__dst = v12;
    __dst[v5] = 1;
    return __dst;
  }

  if (!v7)
  {
    (*(v4 + 16))(__dst);
    __dst[v5] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

void sub_1DCF4FB18(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        if (v2 >= 4)
        {
          v3 = v6 + 2;
        }

        else
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 == 1)
  {
  }

  else if (!v3)
  {
    (*(*(*(a2 + 24) - 8) + 8))();
  }
}

_BYTE *sub_1DCF4FC0C(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        if (v4 >= 4)
        {
          v5 = v8 + 2;
        }

        else
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    v10 = *a2;
    v11 = *a2;
    *__dst = v10;
    __dst[v4] = 1;
    return __dst;
  }

  if (!v5)
  {
    (*(*(*(a3 + 24) - 8) + 16))(__dst);
    __dst[v4] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v4 + 1);
}

id *sub_1DCF4FD6C(id *__dst, id *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = *(__dst + v7);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *__dst;
        goto LABEL_14;
      case 2:
        v12 = *__dst;
        goto LABEL_14;
      case 3:
        v12 = *__dst | (*(__dst + 2) << 16);
        goto LABEL_14;
      case 4:
        v12 = *__dst;
LABEL_14:
        v13 = (v12 | (v10 << v8)) + 2;
        v9 = v12 + 2;
        if (v7 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 == 1)
  {
  }

  else if (!v9)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = *(__src + v7);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *__src;
        goto LABEL_29;
      case 2:
        v17 = *__src;
        goto LABEL_29;
      case 3:
        v17 = *__src | (*(__src + 2) << 16);
        goto LABEL_29;
      case 4:
        v17 = *__src;
LABEL_29:
        v18 = (v17 | (v15 << v8)) + 2;
        v14 = v17 + 2;
        if (v7 < 4)
        {
          v14 = v18;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    v19 = *__src;
    v20 = v19;
    *__dst = v19;
    *(__dst + v7) = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 16))(__dst, __src, v5);
    *(__dst + v7) = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

_BYTE *sub_1DCF4FF98(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        if (v4 >= 4)
        {
          v5 = v8 + 2;
        }

        else
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    *__dst = *a2;
    __dst[v4] = 1;
    return __dst;
  }

  if (!v5)
  {
    (*(*(*(a3 + 24) - 8) + 32))(__dst);
    __dst[v4] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v4 + 1);
}

id *sub_1DCF500E4(id *__dst, id *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = *(__dst + v7);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *__dst;
        goto LABEL_14;
      case 2:
        v12 = *__dst;
        goto LABEL_14;
      case 3:
        v12 = *__dst | (*(__dst + 2) << 16);
        goto LABEL_14;
      case 4:
        v12 = *__dst;
LABEL_14:
        v13 = (v12 | (v10 << v8)) + 2;
        v9 = v12 + 2;
        if (v7 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 == 1)
  {
  }

  else if (!v9)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = *(__src + v7);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *__src;
        goto LABEL_29;
      case 2:
        v17 = *__src;
        goto LABEL_29;
      case 3:
        v17 = *__src | (*(__src + 2) << 16);
        goto LABEL_29;
      case 4:
        v17 = *__src;
LABEL_29:
        v18 = (v17 | (v15 << v8)) + 2;
        v14 = v17 + 2;
        if (v7 < 4)
        {
          v14 = v18;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    *__dst = *__src;
    *(__dst + v7) = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 32))(__dst, __src, v5);
    *(__dst + v7) = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

uint64_t sub_1DCF50308(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_24;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1DCF50454(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 <= 3)
  {
    v6 = (1u >> (8 * v5)) ^ 0xFD;
  }

  else
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if (v6 >= a3)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((~(-1 << v8) + a3 - v6) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v6 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v5] = -a2;
        }

        break;
    }
  }

  else
  {
    v10 = ~v6 + a2;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v5 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v7);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCF50638(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        LODWORD(v4) = v7 + 2;
        if (v3 >= 4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }

        break;
      default:
        return v4;
    }
  }

  return v4;
}

void sub_1DCF506DC(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

void sub_1DCF508C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v44 = v25;
  v45 = v24;
  v27 = v26;
  v40[1] = v26;
  v42 = v28;
  v43 = v29;
  v30 = v28;
  v32 = v31;
  v34 = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v35, v36);
  v46 = v40 - v37;
  (*(a24 + 176))(a23, a24);
  OUTLINED_FUNCTION_5_13();
  v38 = swift_allocObject();
  v38[2] = a23;
  v38[3] = a24;
  v38[4] = a21;
  v38[5] = a22;
  v38[6] = v34;
  v38[7] = v32;
  v38[8] = v30;
  v39 = v44;
  v38[9] = v43;
  v38[10] = v39;
  v38[11] = v27;
  v38[12] = v45;
  v40[2] = *(swift_getAssociatedConformanceWitness() + 40);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF50AE4(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v18);
  v19 = *a1;
  v20 = *(a1 + 72);
  if ((v20 & 1) == 0)
  {
    v25 = a3;
    v26 = *(a12 + 152);
    v36 = *a1;
    v27 = *(a1 + 3);
    v37 = *(a1 + 1);
    v38 = v27;
    v28 = *(a1 + 7);
    v39 = *(a1 + 5);
    v40 = v28;
    v41 = v20;
    sub_1DCBBF670(&v36, v35);
    v26(a11, a12);
    v29 = swift_allocObject();
    *(v29 + 16) = a11;
    *(v29 + 24) = a12;
    *(v29 + 32) = a2;
    *(v29 + 40) = v25;
    *(v29 + 48) = a4;
    *(v29 + 56) = a8;
    *(v29 + 64) = a6;
    *(v29 + 72) = a7;
    *(v29 + 80) = a9;
    *(v29 + 88) = v19;
    v30 = *(a1 + 3);
    *(v29 + 96) = *(a1 + 1);
    *(v29 + 112) = v30;
    v31 = *(a1 + 7);
    *(v29 + 128) = *(a1 + 5);
    *(v29 + 144) = v31;
    *(v29 + 160) = a10;
    *(v29 + 168) = a5;
    swift_getAssociatedConformanceWitness();
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDE57E18;
  v22 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DD0E07C0;
  v35[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1DCB34060();
  *(v23 + 32) = 0;
  *(v23 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC("Received an error from DialogTemplating: %@", 43, 2, &dword_1DCAFC000, v21, v22, v23);

  return a2(v19, 1);
}

uint64_t sub_1DCF50EF0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v21);
  if ((a2 & 1) == 0)
  {
    v29 = a4;
    v26 = a1;
    v27 = *(a14 + 192);

    v27(a13, a14);
    v28 = swift_allocObject();
    v28[2] = a13;
    v28[3] = a14;
    memcpy(v28 + 4, a10, 0x48uLL);
    v28[13] = a11;
    v28[14] = v26;
    v28[15] = a5;
    v28[16] = a6;
    v28[17] = a9;
    v28[18] = a12;
    v28[19] = a7;
    v28[20] = a8;
    v28[21] = a3;
    v28[22] = v29;
    swift_getAssociatedConformanceWitness();
    sub_1DCBBF670(a10, &v32);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDE57E18;
  v23 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DD0E07C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1DCB34060();
  *(v24 + 32) = 0;
  *(v24 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC("Received an error from AceViewProviding: %@", 43, 2, &dword_1DCAFC000, v22, v23, v24);

  return a3(a1, 1);
}

void sub_1DCF51270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v40 = a8;
  v33 = a4;
  v32 = a1;
  v41 = a12;
  v37 = a11;
  v38 = a10;
  v36 = a9;
  v19 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a2, sizeof(__dst));
  sub_1DCB17CA0(a3 + 64, v44);
  HIDWORD(v31) = *(*(a3 + 16) + 16);
  v39 = a2;
  v23 = a2[7];
  v24 = (*(a14 + 320))(a6, a13, a14);
  LOBYTE(v43[0]) = 53;
  v25 = *(a14 + 312);
  v35 = a6;
  v42 = a7;
  v34 = a5;
  v26 = v25(v43, a6, a7, a13, a14);
  v27 = v26;
  if (v26)
  {
    v28 = type metadata accessor for DefaultFlowActivity();
    v26 = sub_1DCCAE20C();
  }

  else
  {
    v28 = 0;
    v43[1] = 0;
    v43[2] = 0;
  }

  v43[0] = v27;
  v43[3] = v28;
  v43[4] = v26;
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(__dst, v44, HIDWORD(v31), v33, v23 != 1, v24 & 1, v32, MEMORY[0x1E69E7CC0], v43, v29, v30, v31, v22, v32, v33, v34, v35, v36, v37, v38, v39);
}

void sub_1DCF51654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  v23 = v22;
  v25 = v24;
  v37 = v27;
  v38 = v26;
  v39 = v28;
  v40 = v29;
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_7_7();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  (*(a21 + 176))(v23, a21);
  v36 = swift_allocObject();
  v36[2] = v23;
  v36[3] = a21;
  v36[4] = v37;
  v36[5] = v25;
  v36[6] = v21;
  v36[7] = v33;
  v36[8] = v38;
  v36[9] = v31;
  v36[10] = v40;
  v36[11] = v39;
  swift_getAssociatedConformanceWitness();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF51850(const void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v76 = a8;
  v78 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v70 = v58 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v71 = v58 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v68 = v58 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v67 = v58 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v69 = v58 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v74 = v58 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v73 = v58 - v42;
  MEMORY[0x1EEE9AC00](v41, v43);
  v75 = v58 - v44;
  v45 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v45, v46);
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(__src, a1, 0x49uLL);
  if (LOBYTE(__src[9]) != 1)
  {
    v58[1] = v21;
    v60 = v45;
    v72 = a7;
    v66 = a3;
    memcpy(v87, a1, sizeof(v87));
    sub_1DCB17CA0(a4 + 64, v86);
    v64 = a4;
    v59 = *(*(a4 + 16) + 16);
    v53 = *(a11 + 320);
    sub_1DCBBF670(__src, v80);
    v77 = a5;
    v53(a6, a10, a11);
    LOBYTE(v80[0]) = 5;
    v54 = *(a11 + 312);
    v65 = a6;
    v62 = a10;
    v63 = a11;
    v55 = v54(v80, a6, 0, a10, a11);
    v56 = v55;
    if (v55)
    {
      v57 = type metadata accessor for DefaultFlowActivity();
      v55 = sub_1DCCAE20C();
    }

    else
    {
      v57 = 0;
      v83 = 0;
      v82 = 0;
    }

    v61 = a9;
    v81 = v56;
    v84 = v57;
    v85 = v55;
    sub_1DCBBA39C(v86);
  }

  v47 = __src[0];
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v48 = qword_1EDE57E18;
  v49 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1DD0E07C0;
  *&v80[0] = 0;
  *(&v80[0] + 1) = 0xE000000000000000;
  v79 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v51 = v80[0];
  *(v50 + 56) = MEMORY[0x1E69E6158];
  *(v50 + 64) = sub_1DCB34060();
  *(v50 + 32) = v51;
  sub_1DD0DD7EC("Received an error from DialogTemplating: %@", 43, 2, &dword_1DCAFC000, v48, v49, v50);

  return v78(v47, 1);
}

uint64_t sub_1DCF52840(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13)
{
  if ((a2 & 1) == 0)
  {
    v17 = 5;
    v16 = 35;
    v14 = 3;
    v15 = 0;
    sub_1DCFA6EF4((a3 + 104), &v17, a4, a5, a6, a7, a8, &v16, 0, 1, 0, &v14, *a9, a9[1], a12, a13);
  }

  return a10(a1, 1, a3, a4, a5, a6, a7, a8);
}

void sub_1DCF528F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t, uint64_t, id, id, uint64_t, void, uint64_t (*)(), void *, uint64_t, uint64_t), uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v55 = v24;
  v58 = v25;
  v59 = v26;
  v60 = v27;
  v29 = v28;
  v31 = v30;
  v61 = v32;
  v57 = v33;
  v35 = v34;
  v52 = a21;
  v53 = a22;
  OUTLINED_FUNCTION_7_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v56 = v36;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = v51 - v39;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v41 = qword_1EDE57E18;
  v42 = sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1DD0E07C0;
  OUTLINED_FUNCTION_7_7();
  v44 = swift_getAssociatedTypeWitness();
  *(v43 + 64) = OUTLINED_FUNCTION_2_98(v44);
  *(v43 + 32) = v31;
  v45 = v31;
  sub_1DD0DD7EC("Starting unsupported slot value", 31, 2, &dword_1DCAFC000, v41, v42, v43);

  v46 = *(a24 + 176);
  v51[1] = v40;
  v46(a23, a24);
  OUTLINED_FUNCTION_5_13();
  v47 = swift_allocObject();
  v47[2] = a23;
  v47[3] = a24;
  v48 = v53;
  v47[4] = v52;
  v47[5] = v48;
  v47[6] = v35;
  v47[7] = v57;
  v47[8] = v45;
  v49 = v59;
  v47[9] = v61;
  v47[10] = v49;
  v47[11] = v29;
  v51[0] = v29;
  v47[12] = v55;
  v52 = *(swift_getAssociatedConformanceWitness() + 32);
  v50 = v45;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF52BDC(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v66 = a6;
  v19 = type metadata accessor for AceOutput(0);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v62 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v63 = v47 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v61 = v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v64 = v47 - v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v32);
  v36 = v47 - v35;
  v37 = *a1;
  if ((a1[9] & 1) == 0)
  {
    v39 = a1;
    v56 = a2;
    v57 = a3;
    v59 = v34;
    v60 = v33;
    v65 = a10;
    v40 = a8;
    v41 = v39[1];
    v54 = v39[7];
    v49 = v39;
    v53 = v39[8];
    v42 = a7;
    v43 = v37;
    (*(a12 + 200))(&v69, a5, v66, v42, v40, a9, a11, a12);
    HIDWORD(v48) = v69;
    v44 = *(a12 + 152);
    v58 = v36;
    v44(a11, a12);
    v45 = v66;
    LOBYTE(v68) = 62;
    LOBYTE(v67) = 29;
    v46 = [a9 unsupportedReason];
    v69 = 3;
    LOWORD(v70) = 0;
    v55 = a11;
    v51 = v41;
    v52 = v43;
    v47[1] = a5;
    v50 = a4;
    sub_1DCFA6EF4((v65 + 104), &v68, a5, a4, v45, v42, v40, &v67, v46, 0, a9, &v69, v43, v41, a11, a12);
  }

  return a2(*a1, 1);
}

uint64_t sub_1DCF53734(uint64_t a1, char a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = type metadata accessor for NLContextUpdate(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v23 - v11;
  if (a2)
  {
    v13 = a1;
    v14 = 1;
  }

  else
  {
    NLContextUpdate.init()(&v23 - v11);
    v12[136] = 1;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57E00);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DCAFC000, v16, v17, "SiriKit Metrics reset FlowTaskState from Client", v18, 2u);
      MEMORY[0x1E12A8390](v18, -1, -1);
    }

    v19 = a3[6];
    v20 = a3[7];
    __swift_project_boxed_opaque_existential_1(a3 + 3, v19);
    v24 = 0;
    v21 = NLContextUpdate.doConvertToAceContextUpdate(options:)(&v24);
    (*(v20 + 48))(v21, v19, v20);

    sub_1DCB42D14(v12, type metadata accessor for NLContextUpdate);
    v13 = 0;
    v14 = 0;
  }

  return a4(v13, v14);
}

void sub_1DCF53918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t, uint64_t, id, id, uint64_t, void, uint64_t (*)(), void *, uint64_t, uint64_t), uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v51 = v24;
  v58 = v25;
  v59 = v26;
  v60 = v27;
  v55 = v28;
  v30 = v29;
  v61 = v31;
  v57 = v32;
  v34 = v33;
  v53 = a21;
  OUTLINED_FUNCTION_7_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v56 = v35;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v50 - v38;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v40 = qword_1EDE57E18;
  v41 = sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1DD0E07C0;
  OUTLINED_FUNCTION_7_7();
  v43 = swift_getAssociatedTypeWitness();
  *(v42 + 64) = OUTLINED_FUNCTION_2_98(v43);
  *(v42 + 32) = v30;
  v44 = v30;
  sub_1DD0DD7EC("Starting unsupported slot value", 31, 2, &dword_1DCAFC000, v40, v41, v42);

  v45 = *(a24 + 176);
  v52 = v39;
  v45(a23, a24);
  OUTLINED_FUNCTION_5_13();
  v46 = swift_allocObject();
  v46[2] = a23;
  v46[3] = a24;
  v46[4] = v53;
  v46[5] = a22;
  v46[6] = v51;
  v46[7] = v34;
  v47 = v57;
  v46[8] = v44;
  v46[9] = v47;
  v48 = v59;
  v46[10] = v61;
  v46[11] = v48;
  v50 = v34;
  v46[12] = v55;
  v53 = *(swift_getAssociatedConformanceWitness() + 32);
  v49 = v44;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF53C08(const void *a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v35 - v21;
  v23 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  memcpy(__dst, a1, 0x49uLL);
  if (LOBYTE(__dst[9]) != 1)
  {
    v40 = a2;
    v41 = a7;
    v42 = a3;
    v39 = a10;
    v38 = a9;
    memcpy(v47, a1, sizeof(v47));
    sub_1DCBBF670(__dst, v46);
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    v26 = qword_1EDE57E18;
    v27 = sub_1DD0DE6DC();
    sub_1DD0DD7EC("Unsupported slot value dialog and snippet", 41, 2, &dword_1DCAFC000, v26, v27, MEMORY[0x1E69E7CC0]);
    memcpy(v46, a1, sizeof(v46));
    v28 = *(*(a4 + 16) + 16);
    v29 = (__dst[7] - 3) < 0xFFFFFFFFFFFFFFFELL;
    v30 = *(a12 + 320);
    v37 = a5;
    v31 = v30(a6, a11, a12);
    v36 = a6;
    v32 = v31;
    v33 = type metadata accessor for NLContextUpdate(0);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v33);
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(v46, a4 + 64, v28, MEMORY[0x1E69E7CC0], v29, v32 & 1, v22, MEMORY[0x1E69E7CC0], v44, v34, v35[0], v35[1], v36, v37, v38, v39, v40, v41, v42, v43, 0);
  }

  return a2(__dst[0], 1);
}

uint64_t sub_1DCF53FE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t *a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, char a15, SEL *a16)
{
  if ((a2 & 1) == 0)
  {
    v27 = a15;
    v26 = 29;
    v20 = [a9 *a16];
    v24 = 3;
    v25 = 0;
    sub_1DCFA6EF4((a3 + 104), &v27, a4, a5, a6, a7, a8, &v26, v20, 0, a9, &v24, *a10, a10[1], a13, a14);
  }

  return a11(a1, 1, a3, a4, a5, a6, a7, a8);
}

void sub_1DCF540CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v40 = v30;
  v41 = v29;
  v32 = v31;
  v34 = v33;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v35, v36);
  (*(a24 + 176))(a23, a24);
  v37 = swift_allocObject();
  *(v37 + 16) = a23;
  *(v37 + 24) = a24;
  *(v37 + 32) = a21;
  *(v37 + 40) = a22;
  *(v37 + 48) = v24;
  *(v37 + 56) = v34;
  *(v37 + 64) = v40;
  *(v37 + 72) = v43;
  *(v37 + 80) = v32;
  *(v37 + 88) = v42;
  *(v37 + 96) = v45;
  *(v37 + 104) = v41;
  *(v37 + 112) = v44;
  swift_getAssociatedConformanceWitness();
  v38 = v43;

  v39 = v45;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF542F0(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v18);
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    __src[0] = __dst[0];
    *&__src[1] = *(a1 + 8);
    *&__src[3] = *(a1 + 24);
    *&__src[5] = *(a1 + 40);
    *&__src[7] = *(a1 + 56);
    v20 = swift_allocObject();
    v20[2] = a13;
    v20[3] = a14;
    v20[4] = a2;
    v20[5] = a3;
    memcpy(v20 + 6, __src, 0x48uLL);
    v20[15] = a4;
    v20[16] = a5;
    v20[17] = a6;
    v20[18] = a7;
    v20[19] = a8;
    v20[20] = a9;
    v20[21] = a10;
    v20[22] = a11;
    if (a12)
    {
      sub_1DCB09910(__dst, v30, &unk_1ECCA3260, &unk_1DD0E5AD0);
      v21 = a7;
      v22 = a6;
      swift_unknownObjectRetain();
      sub_1DD0DCF8C();
    }

    sub_1DCB09910(__dst, v30, &unk_1ECCA3260, &unk_1DD0E5AD0);
    v23 = a7;
    v24 = a6;
    swift_unknownObjectRetain();
    sub_1DD0DCF8C();
  }

  return (a2)(__dst[0], 1);
}

uint64_t sub_1DCF54718(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v72 = a7;
  v76 = a4;
  v74 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v22);
  v75 = &v61 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v61 - v26;
  v28 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (&v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a2 & 1) == 0)
  {
    v66 = a3;
    v67 = v21;
    v68 = AssociatedTypeWitness;
    v62 = a9;
    v39 = v31;
    memcpy(__dst, a5, 0x48uLL);
    v40 = *(*(a6 + 16) + 16);
    v73 = a5;
    v41 = a5[7] != 1;
    v42 = *(a15 + 320);
    v65 = a8;
    v43 = v72;
    v44 = v42(a8, a14, a15);
    v45 = type metadata accessor for NLContextUpdate(0);
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v45);
    v78 = 0;
    memset(v77, 0, sizeof(v77));
    v63 = a6;
    v46 = v40;
    v47 = MEMORY[0x1E69E7CC0];
    static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(__dst, a6 + 64, v46, v74, v41, v44 & 1, v27, MEMORY[0x1E69E7CC0]);
    sub_1DCB0E9D8(v77, &unk_1ECCA3280, &unk_1DD0E23D0);
    sub_1DCB0E9D8(v27, &unk_1ECCA3270, &qword_1DD0E0F70);
    v64 = v39;
    v48 = *v39;
    v49 = *v39 & 0xC000000000000001;
    sub_1DCB35460(0, v49 == 0, *v39);
    if (v49)
    {
      v50 = a15;
      v51 = MEMORY[0x1E12A72C0](0, v48);
    }

    else
    {
      v50 = a15;
      v51 = *(v48 + 32);
    }

    v61 = v51;
    v70 = a13;
    v69 = a12;
    v74 = a11;
    v71 = a10;
    v52 = swift_allocObject();
    *(v52 + 16) = v47;
    v53 = v65;
    if (v62)
    {
      v54 = v62;
      MEMORY[0x1E12A6920]();
      sub_1DCBBF95C();
      sub_1DD0DE3AC();
    }

    (*(v50 + 192))(a14, v50);
    v55 = swift_allocObject();
    v55[2] = a14;
    v55[3] = v50;
    v56 = v61;
    v55[4] = v52;
    v55[5] = v56;
    v55[6] = v43;
    v55[7] = v53;
    v57 = v63;
    v55[8] = v69;
    v55[9] = v57;
    v58 = v71;
    v55[10] = v70;
    v55[11] = v58;
    v59 = v73;
    v55[12] = v74;
    memcpy(v55 + 13, v59, 0x48uLL);
    v60 = v76;
    v55[22] = v66;
    v55[23] = v60;
    v66 = *(swift_getAssociatedConformanceWitness() + 24);
    sub_1DD0DCF8C();
  }

  v32 = v74;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v33 = qword_1EDE57E18;
  v34 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1DD0E07C0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  *&v77[0] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v36 = __dst[0];
  v37 = __dst[1];
  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = sub_1DCB34060();
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  sub_1DD0DD7EC("Received an error from AceViewProviding: %@", 43, 2, &dword_1DCAFC000, v33, v34, v35);

  return a3(v32, 1);
}

void sub_1DCF54D8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v42 = a8;
  v40 = a7;
  v35 = a1;
  v34 = a14;
  v38 = a12;
  v43 = a11;
  v44 = a13;
  v41 = a10;
  v36 = a9;
  v19 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = a3;
  MEMORY[0x1E12A6920]();
  sub_1DCBBF95C();
  sub_1DD0DE3AC();
  v24 = *(a2 + 16);
  swift_endAccess();
  LOBYTE(v45) = 59;
  v25 = *(a15 + 312);

  v37 = a5;
  v39 = a6;
  v26 = v25(&v45, a5, a6, v34, a15);
  v27 = v26;
  if (v26)
  {
    v28 = type metadata accessor for DefaultFlowActivity();
    v26 = sub_1DCCAE20C();
  }

  else
  {
    v28 = 0;
    v46[1] = 0;
    v46[2] = 0;
  }

  v46[0] = v27;
  v46[3] = v28;
  v46[4] = v26;
  sub_1DCB09910(v35, &v22[v19[7]], &unk_1ECCA3270, &qword_1DD0E0F70);
  v29 = v19[9];
  v30 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(&v22[v29], 1, 1, v30);
  v31 = v19[8];
  v32 = *MEMORY[0x1E69D0678];
  v33 = sub_1DD0DD15C();
  (*(*(v33 - 8) + 104))(&v22[v31], v32, v33);
  *(v22 + 15) = 0;
  *(v22 + 104) = 0u;
  *(v22 + 88) = 0u;
  sub_1DCB6C5E8(v46, (v22 + 88));
  v22[v19[10]] = 0;
  *v22 = v24;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 0u;
  *(v22 + 56) = 0u;
  *(v22 + 9) = 0;
  v22[80] = 3;
  sub_1DCB82888();
}

void sub_1DCF5515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, void *a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = [a5 typeName];
  v18 = sub_1DD0DDFBC();
  v20 = v19;

  LOBYTE(v18) = sub_1DCF5650C(v18, v20);

  v21 = swift_allocObject();
  *(v21 + 16) = a12;
  *(v21 + 24) = a13;
  *(v21 + 32) = v18 & 1;
  *(v21 + 40) = v13;
  *(v21 + 48) = a1;
  *(v21 + 56) = a2;
  *(v21 + 64) = a5;
  *(v21 + 72) = a10;
  *(v21 + 80) = a11;
  *(v21 + 88) = a3;
  *(v21 + 96) = a4;
  *(v21 + 104) = a6;
  *(v21 + 112) = a9;
  v22 = a9;
  sub_1DD0DCF8C();
}

void sub_1DCF55300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v38 = a7;
  v39 = a8;
  v41 = a5;
  v42 = a6;
  v40 = a3;
  v15 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v19);
  v21 = &v29 - v20;
  if (sub_1DCF9FF44(v15))
  {
    sub_1DCEC9388();
  }

  v30 = a11;
  v31 = a12;
  v32 = a10;
  v35 = v21;
  v36 = a9;
  (*(a14 + 176))(a13, a14);
  v22 = swift_allocObject();
  v37 = v18;
  *(v22 + 16) = a13;
  *(v22 + 24) = a14;
  v23 = v39;
  *(v22 + 32) = v38;
  *(v22 + 40) = v23;
  v33 = a1;
  *(v22 + 48) = v40;
  *(v22 + 56) = a4;
  v24 = v41;
  *(v22 + 64) = v42;
  *(v22 + 72) = v24;
  *(v22 + 80) = a9;
  *(v22 + 88) = a10;
  *(v22 + 96) = a1;
  LODWORD(v38) = v15 & 1;
  *(v22 + 104) = v15 & 1;
  v25 = v30;
  v26 = v31;
  *(v22 + 112) = v31;
  *(v22 + 120) = v25;
  v34 = *(swift_getAssociatedConformanceWitness() + 64);
  v27 = v26;
  v28 = v25;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF555B8(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, void *a12, void *a13, uint64_t a14, uint64_t a15)
{
  v72 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v23);
  v27 = &v54 - v26;
  v28 = *a1;
  v29 = *(a1 + 72);
  if ((v29 & 1) == 0)
  {
    v71 = v27;
    v64 = a13;
    v62 = a12;
    v66 = a11;
    v67 = a10;
    v63 = a9;
    v60 = a1[8];
    v69 = a3;
    v36 = a1[7];
    v68 = a4;
    v37 = *(a4 + 16);
    v82 = *(a1 + 1);
    v83 = *(a1 + 3);
    v84 = *(a1 + 5);
    v81 = v28;
    v85 = v36;
    v86 = v60;
    v59 = v36;
    v38 = v28;
    v58 = v28;
    v39 = v36 != 1;
    v57 = a2;
    v70 = a8;
    v40 = *(a15 + 320);
    v74 = v38;
    v75 = *(a1 + 1);
    v76 = *(a1 + 3);
    v77 = *(a1 + 5);
    v78 = v36;
    v79 = v60;
    v80 = v29;
    v61 = v24;
    v65 = v25;
    sub_1DCBBF670(&v74, v73);
    v55 = a6;
    v41 = v40(a6, a14, a15);
    v42 = (*(*v37 + 96))(&v81, v39, v41 & 1);
    v56 = v42;
    (*(a15 + 152))(a14, a15);
    v43 = swift_allocObject();
    *(v43 + 16) = a14;
    *(v43 + 24) = a15;
    v44 = v69;
    *(v43 + 32) = v57;
    *(v43 + 40) = v44;
    v45 = v62;
    *(v43 + 48) = v62;
    *(v43 + 56) = a5;
    v46 = v70;
    *(v43 + 64) = a6;
    *(v43 + 72) = v46;
    v47 = v64;
    *(v43 + 80) = v63;
    *(v43 + 88) = v47;
    v48 = v58;
    *(v43 + 96) = v68;
    *(v43 + 104) = v48;
    v49 = *(a1 + 3);
    *(v43 + 112) = *(a1 + 1);
    *(v43 + 128) = v49;
    *(v43 + 144) = *(a1 + 5);
    v50 = v60;
    *(v43 + 160) = v59;
    *(v43 + 168) = v50;
    *(v43 + 176) = v42;
    *(v43 + 184) = v72;
    v60 = *(swift_getAssociatedConformanceWitness() + 40);
    v51 = v45;
    swift_unknownObjectRetain();
    v52 = v55;

    v53 = v47;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDE57E18;
  v31 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1DD0E07C0;
  v74 = 0;
  *&v75 = 0xE000000000000000;
  v81 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v33 = v74;
  v34 = v75;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1DCB34060();
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  sub_1DD0DD7EC("Received an error from DialogTemplating: %@", 43, 2, &dword_1DCAFC000, v30, v31, v32);

  return a2(v28, 1);
}

uint64_t sub_1DCF55B38(void *a1, char a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v54 = a8;
  v52 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v23);
  v27 = v42 - v26;
  if ((a2 & 1) == 0)
  {
    v47 = v24;
    v48 = v25;
    v49 = a3;
    v53 = a4;
    v51 = a14;
    v44 = a13;
    v43 = a12;
    v45 = a10;
    v46 = a9;
    v50 = swift_allocObject();
    *(v50 + 16) = MEMORY[0x1E69E7CC0];
    if (a5)
    {
      sub_1DCED6F5C(a1, 0);
      v34 = a5;
      MEMORY[0x1E12A6920]();
      sub_1DCBBF95C();
      sub_1DD0DE3AC();
    }

    else
    {
    }

    v35 = *(a16 + 192);
    v42[2] = v27;
    v35(a15, a16);
    v36 = swift_allocObject();
    v36[2] = a15;
    v36[3] = a16;
    v36[4] = a11;
    memcpy(v36 + 5, v43, 0x48uLL);
    v36[14] = v44;
    v36[15] = a1;
    v37 = v52;
    v36[16] = a6;
    v36[17] = v37;
    v42[1] = a6;
    v38 = v45;
    v39 = v46;
    v36[18] = v50;
    v36[19] = v38;
    v40 = v54;
    v36[20] = v51;
    v36[21] = v40;
    v41 = v49;
    v36[22] = v39;
    v36[23] = v41;
    v36[24] = v53;
    v49 = *(swift_getAssociatedConformanceWitness() + 32);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDE57E18;
  v29 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1DD0E07C0;
  v56 = 0;
  v57 = 0xE000000000000000;
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v31 = v56;
  v32 = v57;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1DCB34060();
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  sub_1DD0DD7EC("Received an error from AceViewProviding: %@", 43, 2, &dword_1DCAFC000, v28, v29, v30);

  return a3(a1, 1);
}

void sub_1DCF55F8C(uint64_t a1, uint64_t a2, const void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v46 = a5;
  v44 = a4;
  v50 = a2;
  v47 = a14;
  v42 = a13;
  v45 = a12;
  v41 = a11;
  v43 = a10;
  v49 = a9;
  v40 = type metadata accessor for AceOutput(0);
  v21 = MEMORY[0x1EEE9AC00](v40, v20);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = v39 - v25;
  memcpy(__dst, a3, 0x48uLL);
  (*(a16 + 320))(a7, a15, a16);
  v48 = a3;
  v27 = a1;
  sub_1DCECC6D0();
  v46 = v26;
  swift_beginAccess();

  sub_1DCBB920C(v28);
  swift_endAccess();
  LOBYTE(__dst[0]) = 56;
  v29 = *(a16 + 312);
  v44 = a7;
  v39[2] = a6;
  v30 = v29(__dst, a7, v49, a15, a16);
  swift_beginAccess();
  if (v30)
  {
    v31 = type metadata accessor for DefaultFlowActivity();
    v32 = sub_1DCCAE20C();
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v52 = 0;
    v53 = 0;
  }

  v39[1] = v30;
  v51 = v30;
  v54 = v31;
  v55 = v32;
  v33 = v40;
  sub_1DCB09910(v27, &v23[*(v40 + 28)], &unk_1ECCA3270, &qword_1DD0E0F70);
  v34 = *(v33 + 36);
  v35 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(&v23[v34], 1, 1, v35);
  v36 = *(v33 + 32);
  v37 = *MEMORY[0x1E69D0678];
  v38 = sub_1DD0DD15C();
  (*(*(v38 - 8) + 104))(&v23[v36], v37, v38);
  *(v23 + 15) = 0;
  *(v23 + 104) = 0u;
  *(v23 + 88) = 0u;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCF5645C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if ((a2 & 1) == 0)
  {
    v19 = a15;
    v18 = 29;
    v16 = 3;
    v17 = 0;
    sub_1DCFA6EF4((a3 + 104), &v19, a4, a5, a6, a7, a8, &v18, 0, 1, a9, &v16, *a10, a10[1], a13, a14);
  }

  return a11(a1, 1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1DCF5650C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!a2)
  {
    goto LABEL_6;
  }

  if (qword_1ECCA1248 != -1)
  {
    swift_once();
  }

  if (sub_1DCCE6C7C(a1, a2, qword_1ECCA2828))
  {
    v6 = 6;
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  v13 = v6;
  v15 = &type metadata for FeatureFlagDefinitions.Core;
  v16 = &off_1F585CB38;
  v14 = 0;
  v7 = v3[11];
  v8 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v7);
  v9 = 0;
  if (((*(v8 + 248))(&v13, v7, v8) & 1) == 0)
  {
    v10 = v3[11];
    v11 = v3[12];
    __swift_project_boxed_opaque_existential_1(v3 + 8, v10);
    v9 = (*(v11 + 8))(v10, v11) ^ 1;
  }

  sub_1DCC4B20C(&v13);
  return v9 & 1;
}

uint64_t objectdestroy_15Tm_0()
{

  swift_unknownObjectRelease();

  if (*(v0 + 144) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t ResponseBundle.dialogs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t type metadata accessor for ResponseBundle(uint64_t a1)
{
  result = qword_1ECCAAE78;
  if (!qword_1ECCAAE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ResponseBundle.init(dialogExecutionResult:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ResponseBundle(0);
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  v5 = *(v4 + 28);
  v6 = type metadata accessor for OutputGenerationManifest(0);
  __swift_storeEnumTagSinglePayload(a2 + v5, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v7 = swift_allocObject();
  *&result = 1;
  *(v7 + 16) = xmmword_1DD0E15D0;
  *(v7 + 32) = a1;
  *a2 = v7;
  return result;
}

uint64_t ResponseBundle.init(resultModel:conversationModel:dialogs:outputGenerationManifest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ResponseBundle(0);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 8) = 0u;
  v11 = *(v10 + 28);
  v12 = type metadata accessor for OutputGenerationManifest(0);
  __swift_storeEnumTagSinglePayload(a5 + v11, 1, 1, v12);
  *a5 = a3;
  sub_1DCF3A668(a1, a5 + 8, &qword_1ECCA1838, &unk_1DD0FC960);
  sub_1DCF3A668(a2, a5 + 48, &qword_1ECCA1838, &unk_1DD0FC960);
  return sub_1DCF3A668(a4, a5 + v11, &unk_1ECCA8A90, &qword_1DD0FE488);
}

uint64_t dispatch thunk of ResponseBundleProducer.responseBundle.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB193FC;

  return v9(a1, a2, a3);
}

uint64_t initializeBufferWithCopyOfBuffer for ResponseBundle(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    sub_1DD0DCF8C();
  }

  v7 = a2[4];

  if (v7)
  {
    v8 = a2[5];
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    (**(v7 - 8))(a1 + 8, a2 + 1, v7);
  }

  else
  {
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = a2[5];
  }

  v9 = a2[9];
  if (v9)
  {
    v10 = a2[10];
    *(a1 + 72) = v9;
    *(a1 + 80) = v10;
    (**(v9 - 8))(a1 + 48, a2 + 6);
  }

  else
  {
    v11 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v11;
    *(a1 + 80) = a2[10];
  }

  v12 = *(a3 + 28);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = type metadata accessor for OutputGenerationManifest(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    v17 = v14[1];
    *v13 = *v14;
    v13[1] = v17;
    sub_1DD0DCC3C();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
  memcpy(v13, v14, *(*(v16 - 8) + 64));
  return a1;
}

uint64_t destroy for ResponseBundle(void *a1, uint64_t a2)
{

  if (a1[4])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  }

  if (a1[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 6);
  }

  v4 = a1 + *(a2 + 28);
  v5 = type metadata accessor for OutputGenerationManifest(0);
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (!result)
  {

    sub_1DD0DCC3C();
  }

  return result;
}

uint64_t initializeWithCopy for ResponseBundle(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  v7 = a2[4];

  if (v7)
  {
    v8 = a2[5];
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    (**(v7 - 8))(a1 + 8, a2 + 1, v7);
  }

  else
  {
    v9 = *(a2 + 3);
    *v6 = *(a2 + 1);
    *(a1 + 24) = v9;
    *(a1 + 40) = a2[5];
  }

  v10 = a2[9];
  if (v10)
  {
    v11 = a2[10];
    *(a1 + 72) = v10;
    *(a1 + 80) = v11;
    (**(v10 - 8))(a1 + 48, a2 + 6);
  }

  else
  {
    v12 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v12;
    *(a1 + 80) = a2[10];
  }

  v13 = *(a3 + 28);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for OutputGenerationManifest(0);
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    v18 = v15[1];
    *v14 = *v15;
    v14[1] = v18;
    sub_1DD0DCC3C();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
  memcpy(v14, v15, *(*(v17 - 8) + 64));
  return a1;
}

uint64_t assignWithCopy for ResponseBundle(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = a2[4];
  if (*(a1 + 32))
  {
    v7 = (a1 + 8);
    if (v6)
    {
      __swift_assign_boxed_opaque_existential_1(v7, a2 + 1);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else if (v6)
  {
    *(a1 + 32) = v6;
    *(a1 + 40) = a2[5];
    (**(v6 - 8))(a1 + 8, a2 + 1);
    goto LABEL_8;
  }

  v8 = *(a2 + 1);
  v9 = *(a2 + 3);
  *(a1 + 40) = a2[5];
  *(a1 + 24) = v9;
  *(a1 + 8) = v8;
LABEL_8:
  v10 = a2[9];
  if (*(a1 + 72))
  {
    v11 = (a1 + 48);
    if (v10)
    {
      __swift_assign_boxed_opaque_existential_1(v11, a2 + 6);
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else if (v10)
  {
    *(a1 + 72) = v10;
    *(a1 + 80) = a2[10];
    (**(v10 - 8))(a1 + 48, a2 + 6);
    goto LABEL_15;
  }

  v12 = *(a2 + 3);
  v13 = *(a2 + 4);
  *(a1 + 80) = a2[10];
  *(a1 + 48) = v12;
  *(a1 + 64) = v13;
LABEL_15:
  v14 = *(a3 + 28);
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = type metadata accessor for OutputGenerationManifest(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v17);
  v19 = __swift_getEnumTagSinglePayload(v16, 1, v17);
  if (EnumTagSinglePayload)
  {
    if (!v19)
    {
      *v15 = *v16;
      v15[1] = v16[1];
      sub_1DD0DCC3C();
    }
  }

  else
  {
    if (!v19)
    {
      *v15 = *v16;
      v15[1] = v16[1];

      sub_1DD0DCC3C();
    }

    sub_1DCF598A8(v15, type metadata accessor for OutputGenerationManifest);
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
  memcpy(v15, v16, *(*(v20 - 8) + 64));
  return a1;
}

uint64_t sub_1DCF598A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t initializeWithTake for ResponseBundle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a3 + 28);
  v6 = (a2 + v5);
  v7 = (a1 + v5);
  *(a1 + 80) = *(a2 + 80);
  v8 = type metadata accessor for OutputGenerationManifest(0);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v8))
  {
    *v7 = *v6;
    sub_1DD0DCC3C();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
  memcpy(v7, v6, *(*(v9 - 8) + 64));
  return a1;
}

uint64_t assignWithTake for ResponseBundle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 + 8;
  *a1 = *a2;

  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  }

  v7 = *(v6 + 16);
  *(a1 + 8) = *v6;
  *(a1 + 24) = v7;
  *(a1 + 40) = *(v6 + 32);
  if (*(a1 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
  }

  v8 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v8;
  *(a1 + 80) = *(a2 + 80);
  v9 = *(a3 + 28);
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for OutputGenerationManifest(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v12);
  v14 = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (EnumTagSinglePayload)
  {
    if (!v14)
    {
      *v10 = *v11;
      sub_1DD0DCC3C();
    }
  }

  else
  {
    if (!v14)
    {
      v16 = v11[1];
      *v10 = *v11;
      v10[1] = v16;

      sub_1DD0DCC3C();
    }

    sub_1DCF598A8(v10, type metadata accessor for OutputGenerationManifest);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
  memcpy(v10, v11, *(*(v15 - 8) + 64));
  return a1;
}

void sub_1DCF5AC60(uint64_t a1)
{
  sub_1DCF5AD08(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1DCF5AD08(uint64_t a1)
{
  if (!qword_1ECCAAE88)
  {
    type metadata accessor for OutputGenerationManifest(255);
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCAAE88);
    }
  }
}

uint64_t ResponseChunk.__allocating_init(views:nlContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1DCBB6C68(a2, v4 + OBJC_IVAR____TtC11SiriKitFlow13ResponseChunk_nlContext);
  return v4;
}

uint64_t ResponseChunk.init(views:nlContext:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  sub_1DCBB6C68(a2, v2 + OBJC_IVAR____TtC11SiriKitFlow13ResponseChunk_nlContext);
  return v2;
}

double sub_1DCF5AE20@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    *&v19[0] = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    v7 = (v4 + 32);
    do
    {
      v8 = *v7;
      v7 += 2;
      v9 = v8;
      sub_1DD0DECDC();
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      --v5;
    }

    while (v5);
    v6 = *&v19[0];
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v10 = OBJC_IVAR____TtC11SiriKitFlow13ResponseChunk_nlContext;
  v11 = type metadata accessor for AceOutput(0);
  a1[3] = v11;
  a1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
  sub_1DCDB1604(v2 + v10, boxed_opaque_existential_1Tm + v11[7]);
  v13 = v11[9];
  v14 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1Tm + v13, 1, 1, v14);
  v15 = v11[8];
  v16 = *MEMORY[0x1E69D0678];
  v17 = sub_1DD0DD15C();
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1Tm + v15, v16, v17);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v19, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + v11[10]) = 0;
  *boxed_opaque_existential_1Tm = v6;
  result = 0.0;
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  return result;
}

uint64_t ResponseChunk.deinit()
{

  sub_1DCC34178(v0 + OBJC_IVAR____TtC11SiriKitFlow13ResponseChunk_nlContext);
  return v0;
}

uint64_t ResponseChunk.__deallocating_deinit()
{

  sub_1DCC34178(v0 + OBJC_IVAR____TtC11SiriKitFlow13ResponseChunk_nlContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResponseChunk(uint64_t a1)
{
  result = qword_1ECCAAE90;
  if (!qword_1ECCAAE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DCF5B0F8(uint64_t a1)
{
  sub_1DCC91108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ResponseChunkRenderer.__allocating_init(aceServiceInvoker:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DCAFF9E8(a1, v2 + 16);
  return v2;
}

void sub_1DCF5B260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD0DDDAC();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  sub_1DD0DDDFC();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v8 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v14 = *(a1 + 16);
  v15 = *(v14 + 16);
  if (v15)
  {
    *&aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    v16 = (v14 + 32);
    do
    {
      v17 = *v16;
      v16 += 2;
      v18 = v17;
      sub_1DD0DECDC();
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      --v15;
    }

    while (v15);
    v19 = *&aBlock[0];
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v26 = 0;
  memset(aBlock, 0, sizeof(aBlock));
  sub_1DCDB1604(a1 + OBJC_IVAR____TtC11SiriKitFlow13ResponseChunk_nlContext, v12 + v8[7]);
  v20 = v8[9];
  v21 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(v12 + v20, 1, 1, v21);
  v22 = v8[8];
  v23 = *MEMORY[0x1E69D0678];
  v24 = sub_1DD0DD15C();
  (*(*(v24 - 8) + 104))(v12 + v22, v23, v24);
  *(v12 + 120) = 0;
  *(v12 + 104) = 0u;
  *(v12 + 88) = 0u;
  sub_1DCB6C5E8(aBlock, v12 + 88);
  *(v12 + v8[10]) = 0;
  *v12 = v19;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0;
  *(v12 + 80) = 3;
  sub_1DCB82888();
}

uint64_t ResponseChunkRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1DCF5B7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v15 - v10;
  v16[3] = type metadata accessor for AceOutput(0);
  v16[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v16);
  sub_1DCB6FF74(a1, boxed_opaque_existential_1Tm);
  v13 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  sub_1DCB17CA0(v16, v15);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a4;
  sub_1DCAFF9E8(v15, (v14 + 5));
  v14[10] = a2;
  v14[11] = a3;
  sub_1DD0DCF8C();
}

unint64_t sub_1DCF5B960()
{
  result = qword_1EDE46320;
  if (!qword_1EDE46320)
  {
    sub_1DD0DDDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46320);
  }

  return result;
}

unint64_t sub_1DCF5B9B8()
{
  result = qword_1EDE46298;
  if (!qword_1EDE46298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA4E08, &qword_1DD103B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46298);
  }

  return result;
}

uint64_t ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:systemResponse:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF5BAC4()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB17CA0(*(v0 + 104), v0 + 16);
  OUTLINED_FUNCTION_7_65(0);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 160) = v1;
  *v1 = v2;
  v1[1] = sub_1DCF5BB78;

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5BB78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  sub_1DCF5C000(v2 + 56);
  sub_1DCF5C000(v2 + 16);
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:systemResponse:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[17] = a6;
  v7[18] = v6;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a2;
  v7[14] = a3;
  v7[12] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF5BC88()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  OUTLINED_FUNCTION_7_65(0);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 152) = v1;
  *v1 = v2;
  v1[1] = sub_1DCF5BD4C;

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5BD4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  sub_1DCF5C000(v2 + 56);
  sub_1DCF5C000(v2 + 16);
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCF5BE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DCB4AD3C;

  return ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:systemResponse:utterance:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1DCF5BF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:systemResponse:utterance:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCF5C000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1838, &unk_1DD0FC960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of IntelligenceFlowResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:systemResponse:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_11_13();
  v14 = (*(a9 + 8) + **(a9 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v9 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_1DCB4AD3C;
  v12 = OUTLINED_FUNCTION_8_6();

  return v14(v12);
}

uint64_t dispatch thunk of IntelligenceFlowResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:systemResponse:utterance:)()
{
  OUTLINED_FUNCTION_11_13();
  v6 = (*(v1 + 16) + **(v1 + 16));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1DCB4AE1C;
  v4 = OUTLINED_FUNCTION_8_6();

  return v6(v4);
}

uint64_t ResponseFactory.__allocating_init()()
{
  v0 = swift_allocObject();
  ResponseFactory.init()();
  return v0;
}

uint64_t sub_1DCF5C300()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)();
}

uint64_t ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)()
{
  return OUTLINED_FUNCTION_0_2();
}

{
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF5C39C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5C420()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)();
}

uint64_t ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)()
{
  return OUTLINED_FUNCTION_0_2();
}

{
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF5C4BC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5C540()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)();
}

uint64_t ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)()
{
  return OUTLINED_FUNCTION_0_2();
}

{
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF5C5DC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5C660()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)();
}

uint64_t ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)()
{
  return OUTLINED_FUNCTION_0_2();
}

{
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF5C6FC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_21_44();
  MEMORY[0x1E12A6780](0xD000000000000034);
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5C798()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5C834()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5C8B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5C954()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5C9D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5CA74()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5CAF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5CB94()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_21_44();
  MEMORY[0x1E12A6780](0xD000000000000034);
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5CC30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(resultModel:conversationModel:outputGenerationManifest:)();
}

uint64_t sub_1DCF5CCCC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5CD50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(resultModel:outputGenerationManifest:)();
}

uint64_t sub_1DCF5CDEC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_21_44();
  MEMORY[0x1E12A6780](0xD000000000000039);
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5CE84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(conversationModel:outputGenerationManifest:)();
}

uint64_t sub_1DCF5CF20()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_17_42();
  OUTLINED_FUNCTION_17_42();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5CFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeSuccessOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5D03C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5D0C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeSuccessOutput(resultModel:dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5D15C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_17_42();
  OUTLINED_FUNCTION_17_42();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5D1DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeSuccessOutput(conversationModel:dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5D278()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5D2FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeSuccessOutput(dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5D398()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_21_44();
  MEMORY[0x1E12A6780](0xD000000000000033);
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

void ResponseGenerating.makeResponseUpdateOutput(viewId:update:)()
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD00000000000003FLL, 0x80000001DD1256C0);
  MEMORY[0x1E12A6780](0xD000000000000028, 0x80000001DD125A40);
  OUTLINED_FUNCTION_8_72();
  sub_1DD0DEDFC();
  __break(1u);
}

void ResponseFactory.__allocating_init(dialogUsageProvider:)(void *a1)
{
  v2 = sub_1DD0DD39C();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  sub_1DCB17CA0(a1, v8);
  sub_1DD0DD3DC();
  type metadata accessor for IntentServicesAdapter(0);
  swift_allocObject();
  sub_1DCB578A0(v7);
  sub_1DD0DCF8C();
}

void *ResponseFactory.__allocating_init(intentServicesAdapter:)(void *a1)
{
  v14 = &type metadata for DialogUsageProvider;
  v15 = &protocol witness table for DialogUsageProvider;
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  (*(v10 + 16))(v8 - v7);
  v11 = sub_1DCF6185C(v13, v9, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

uint64_t sub_1DCF5D704(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  v15 = a3(a1, v13, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v15;
}

uint64_t sub_1DCF5D7FC()
{
  OUTLINED_FUNCTION_42();
  sub_1DCBBF7D0(*(v0 + 96), *(v0 + 104));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF5D858()
{
  OUTLINED_FUNCTION_42();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v7);
  v1[18] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF5D8E4()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[14];
  v1 = v0[15];
  OUTLINED_FUNCTION_73_13();
  sub_1DCB17CA0(v2, (v0 + 7));
  v0[19] = sub_1DCC6F2C8(v1);
  v3 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[20] = v4;
  *v4 = v5;
  v4[1] = sub_1DCF5D9BC;
  OUTLINED_FUNCTION_46_26();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5D9BC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  sub_1DCB0E9D8(v5, &unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB0E9D8(v8, v9, v10);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB0E9D8(v11, v12, v13);

  OUTLINED_FUNCTION_29();

  return v14();
}

uint64_t sub_1DCF5DB14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_51_28(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  *(v0 + 136) = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF5DB98()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[14];
  sub_1DCB17CA0(v0[13], (v0 + 2));
  OUTLINED_FUNCTION_48_22(0);
  v0[18] = sub_1DCC6F2C8(v1);
  v2 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[19] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_44_28(v3);
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5DC6C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  sub_1DCB0E9D8(v5, &unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB0E9D8(v8, v9, v10);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB0E9D8(v11, v12, v13);

  OUTLINED_FUNCTION_29();

  return v14();
}

uint64_t sub_1DCF5DDC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_51_28(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  *(v0 + 136) = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF5DE48()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 112);
  *&v2 = OUTLINED_FUNCTION_22_37();
  *(v0 + 16) = v2;
  sub_1DCB17CA0(v3, v0 + 56);
  *(v0 + 144) = sub_1DCC6F2C8(v1);
  sub_1DD0DD0AC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 152) = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_44_28(v8);
  OUTLINED_FUNCTION_49_22();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5DF28()
{
  OUTLINED_FUNCTION_42();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v1[16] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF5DFB0()
{
  OUTLINED_FUNCTION_39();
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  OUTLINED_FUNCTION_48_22(0);
  *(v0 + 136) = sub_1DCC6F2C8(v1);
  v2 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 144) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_45_23(v3);
  OUTLINED_FUNCTION_60_17();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5E080()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  sub_1DCB0E9D8(v5, &unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB0E9D8(v8, v9, v10);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB0E9D8(v11, v12, v13);

  OUTLINED_FUNCTION_29();

  return v14();
}

uint64_t sub_1DCF5E1D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_51_28(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  *(v0 + 136) = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF5E25C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[14];
  sub_1DCB17CA0(v0[13], (v0 + 2));
  sub_1DCB17CA0(v1, (v0 + 7));
  v2 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[18] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_44_28(v3);
  OUTLINED_FUNCTION_46_26();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5E318()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  sub_1DCB0E9D8(v5, &unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_66_12();
  OUTLINED_FUNCTION_65_16();

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCF5E444()
{
  OUTLINED_FUNCTION_42();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v1[16] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF5E4CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_73_13();
  sub_1DD0DD0AC();
  OUTLINED_FUNCTION_7_65(0);
  OUTLINED_FUNCTION_38_29(v1, v2, v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_45_23(v5);
  OUTLINED_FUNCTION_59_23();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5E580()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  sub_1DCB0E9D8(v5, &unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_66_12();
  OUTLINED_FUNCTION_65_16();

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCF5E6AC()
{
  OUTLINED_FUNCTION_42();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v1[16] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF5E734()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_20_33();
  sub_1DCB17CA0(v1, v0 + 56);
  v2 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_45_23(v3);
  OUTLINED_FUNCTION_49_22();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5E7EC()
{
  OUTLINED_FUNCTION_42();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v7);
  v1[18] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF5E878()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[14];
  sub_1DCB17CA0(v0[13], (v0 + 2));
  sub_1DCB17CA0(v1, (v0 + 7));
  v2 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[19] = v3;
  *v3 = v4;
  v3[1] = sub_1DCF5E938;
  OUTLINED_FUNCTION_46_26();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5E938()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  sub_1DCB0E9D8(v5, &unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_66_12();
  OUTLINED_FUNCTION_65_16();

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCF5EA64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_51_28(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  *(v0 + 136) = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF5EAE8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_73_13();
  sub_1DD0DD0AC();
  OUTLINED_FUNCTION_7_65(0);
  OUTLINED_FUNCTION_38_29(v1, v2, v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 144) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_70_14(v5);
  OUTLINED_FUNCTION_59_23();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5EB94()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_51_28(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  *(v0 + 136) = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF5EC18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_20_33();
  sub_1DCB17CA0(v1, v0 + 56);
  v2 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 144) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_70_14(v3);
  OUTLINED_FUNCTION_49_22();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5ECC8()
{
  OUTLINED_FUNCTION_42();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v1[16] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF5ED50()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_20_33();
  sub_1DD0DD0AC();
  OUTLINED_FUNCTION_48_22(0);
  OUTLINED_FUNCTION_38_29(v1, v2, v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v5;
  *v5 = v6;
  v5[1] = sub_1DCF63950;
  OUTLINED_FUNCTION_60_17();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5EE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCF5EE2C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[14];
  sub_1DCB17CA0(v0[13], (v0 + 2));
  sub_1DCB17CA0(v1, (v0 + 7));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[18] = v2;
  *v2 = v3;
  v2[1] = sub_1DCF5EED8;
  OUTLINED_FUNCTION_46_26();

  sub_1DCF605DC();
}

uint64_t sub_1DCF5EED8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_64_18(v2 + 56);
  OUTLINED_FUNCTION_64_18(v2 + 16);
  OUTLINED_FUNCTION_29();

  return v6();
}

void sub_1DCF5EFFC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_7_65(0);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_69_7(v1);
  OUTLINED_FUNCTION_59_23();

  sub_1DCF605DC();
}

uint64_t sub_1DCF5F090()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_64_18(v2 + 56);
  OUTLINED_FUNCTION_64_18(v2 + 16);
  OUTLINED_FUNCTION_29();

  return v6();
}

void sub_1DCF5F1B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_20_33();
  sub_1DCB17CA0(v1, v0 + 56);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_69_7(v2);
  OUTLINED_FUNCTION_49_22();

  sub_1DCF605DC();
}

uint64_t sub_1DCF5F250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCF5F268()
{
  OUTLINED_FUNCTION_39();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  OUTLINED_FUNCTION_7_65(0);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 128) = v1;
  *v1 = v2;
  v1[1] = sub_1DCF5F320;

  sub_1DCF605DC();
}

uint64_t sub_1DCF5F320()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_64_18(v2 + 56);
  OUTLINED_FUNCTION_64_18(v2 + 16);
  OUTLINED_FUNCTION_29();

  return v6();
}

double sub_1DCF5F420@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  v15 = [objc_allocWithZone(MEMORY[0x1E69C7BE8]) init];
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v9 + 8))(v14, v7);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB4D8E8(v16, v17, v18);

  sub_1DCB6B9B8(a1, a2, v15);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v19 = sub_1DD0DB29C();
  if (v39)
  {
  }

  else
  {
    sub_1DCF617E8(v19, v20, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DD0E15D0;
    *(v22 + 32) = v15;
    v23 = type metadata accessor for AceOutput(0);
    memset(v37, 0, sizeof(v37));
    v38 = 0;
    a4[3] = v23;
    a4[4] = &protocol witness table for AceOutput;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
    type metadata accessor for NLContextUpdate(0);
    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    sub_1DD0DD10C();
    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    v33 = *(v23 + 32);
    v34 = *MEMORY[0x1E69D0678];
    sub_1DD0DD15C();
    OUTLINED_FUNCTION_2();
    (*(v35 + 104))(boxed_opaque_existential_1Tm + v33, v34);
    boxed_opaque_existential_1Tm[15] = 0;
    *(boxed_opaque_existential_1Tm + 13) = 0u;
    *(boxed_opaque_existential_1Tm + 11) = 0u;
    sub_1DCB6C5E8(v37, (boxed_opaque_existential_1Tm + 11));
    *(boxed_opaque_existential_1Tm + *(v23 + 40)) = 0;
    *boxed_opaque_existential_1Tm = v22;
    result = 0.0;
    *(boxed_opaque_existential_1Tm + 1) = 0u;
    *(boxed_opaque_existential_1Tm + 3) = 0u;
    *(boxed_opaque_existential_1Tm + 5) = 0u;
    *(boxed_opaque_existential_1Tm + 7) = 0u;
    boxed_opaque_existential_1Tm[9] = 0;
    *(boxed_opaque_existential_1Tm + 80) = 3;
  }

  return result;
}

uint64_t sub_1DCF5F6B8()
{
  OUTLINED_FUNCTION_42();
  v2 = *v0;
  v1[18] = v3;
  v1[19] = v2;
  v1[16] = v4;
  v1[17] = v5;
  v1[14] = v6;
  v1[15] = v7;
  v1[12] = v8;
  v1[13] = v9;
  v1[11] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v11);
  v1[20] = OUTLINED_FUNCTION_38();
  v12 = MEMORY[0x1E69E7CC0];
  v1[9] = MEMORY[0x1E69E7CC0];
  v1[10] = v12;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v1[21] = v13;
  *v13 = v14;
  v13[1] = sub_1DCF5F7C4;

  return sub_1DCB6AA14();
}

uint64_t sub_1DCF5F7C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCF5F8A8()
{
  v19 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1DCB09910(*(v0 + 128), v1, &unk_1ECCAAEA0, &qword_1DD103C90);
  v4 = sub_1DD0DD0AC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = *(v0 + 160);
  if (EnumTagSinglePayload == 1)
  {
    sub_1DCB0E9D8(*(v0 + 160), &unk_1ECCAAEA0, &qword_1DD103C90);
    v7 = 0;
  }

  else
  {
    v7 = sub_1DD0073A8();
    (*(*(v4 - 8) + 8))(v6, v4);
  }

  sub_1DCBB92CC(MEMORY[0x1E69E7CC0]);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  v9 = *(v0 + 80);

  v10 = sub_1DD0DD8EC();
  v11 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v11))
  {
    v12 = OUTLINED_FUNCTION_151();
    *v12 = 134217984;
    *(v12 + 4) = sub_1DCB08B14(v9);

    OUTLINED_FUNCTION_71_16(&dword_1DCAFC000, v13, v14, "Created %ld tappable commands");
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v18[0] = v2;
  v18[1] = v3;

  if (v9 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
    v15 = sub_1DD0DEE0C();
  }

  else
  {
    sub_1DD0DF0CC();
    v15 = v9;
  }

  if (v7)
  {
    v17 = v7[4];
    v16 = v7[5];
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  sub_1DCF5FE68(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), v18, v15, v17, v16, *(v0 + 136), *(v0 + 144));
}

void sub_1DCF5FE68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a8;
  v11 = a7;
  v12 = a6;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  sub_1DD0DCC3C();
}

void sub_1DCF605DC()
{
  OUTLINED_FUNCTION_42();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v7);
  v1[13] = OUTLINED_FUNCTION_38();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEB0, &qword_1DD103F80);
  OUTLINED_FUNCTION_20_0(v8);
  v1[14] = OUTLINED_FUNCTION_38();
  sub_1DD0DCB5C();
}

uint64_t sub_1DCF609E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  sub_1DCB0E9D8(v2, &unk_1ECCAAEA0, &qword_1DD103C90);
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF60B0C()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_1DCF638F8((v0 + 2));
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t ResponseFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t sub_1DCF60BD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCB68330();
}

uint64_t sub_1DCF60C8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF5D858();
}

uint64_t sub_1DCF60D58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF5DB14();
}

uint64_t sub_1DCF60E1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF5DDC4();
}

uint64_t sub_1DCF60EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF5DF28();
}

uint64_t sub_1DCF60F94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF5E7EC();
}

uint64_t sub_1DCF61060()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF5EA64();
}

uint64_t sub_1DCF61124()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF5EB94();
}

uint64_t sub_1DCF611E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF5ECC8();
}

uint64_t sub_1DCF6129C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCF5E1D8();
}

uint64_t sub_1DCF61360()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF5E444();
}

uint64_t sub_1DCF61414()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF5E6AC();
}

uint64_t sub_1DCF614C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return sub_1DCF5EE10(a1, a2, a3, a4, a5);
}

uint64_t sub_1DCF61594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCF5EFD8(a1, a2, a3, a4);
}

uint64_t sub_1DCF61658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCF5F190(a1, a2, a3, a4);
}

uint64_t sub_1DCF6171C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCF5F250(a1, a2, a3);
}

void sub_1DCF617E8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1DD0DAEFC();
  sub_1DCB21A14(a1, a2);
  [a3 setStateData_];
}

void *sub_1DCF6185C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResponseFactory();
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  v13 = sub_1DCF6197C(a1, v11, v12, a4, a5);
  (*(v9 + 8))(a2, a4);
  return v13;
}

void *sub_1DCF6197C(__int128 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[10] = a4;
  a3[11] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3 + 7);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  sub_1DCAFF9E8(a1, (a3 + 2));
  return a3;
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_25_1();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_9(v11);
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_7_6(v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_25_1();
  v33 = v19 + *v19;
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_11_0(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_13_22(v21);
  OUTLINED_FUNCTION_96_0();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, a11, a12);
}

{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_7_6(v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_25_1();
  v33 = v19 + *v19;
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_11_0(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_13_22(v21);
  OUTLINED_FUNCTION_96_0();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, a11, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_8();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_11_0(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_31_2(v20);
  OUTLINED_FUNCTION_88_1();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_8();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_11_0(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_31_2(v20);
  OUTLINED_FUNCTION_88_1();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_8();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_11_0(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_31_2(v20);
  OUTLINED_FUNCTION_88_1();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_8();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_11_0(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_31_2(v20);
  OUTLINED_FUNCTION_88_1();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_25_1();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_9(v11);
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_25_1();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_9(v11);
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:conversationModel:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_8();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_11_0(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_31_2(v20);
  OUTLINED_FUNCTION_88_1();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_25_1();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_9(v11);
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_25_1();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_9(v11);
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ResponseGenerating.makeSuccessOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_7_6(v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_25_1();
  v33 = v19 + *v19;
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_11_0(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_13_22(v21);
  OUTLINED_FUNCTION_96_0();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, a11, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeSuccessOutput(resultModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_8();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_11_0(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_31_2(v20);
  OUTLINED_FUNCTION_88_1();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeSuccessOutput(conversationModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_8();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_11_0(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_31_2(v20);
  OUTLINED_FUNCTION_88_1();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeSuccessOutput(dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_25_1();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_9(v11);
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_66();
  v13 = v0 + 128;
  v14 = *(v0 + 128) + **(v0 + 128);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2_9(v2);
  OUTLINED_FUNCTION_48();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_66();
  v13 = v0 + 184;
  v14 = *(v0 + 184) + **(v0 + 184);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2_9(v2);
  OUTLINED_FUNCTION_48();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v22 = v9 + 136;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_47();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v22 = v9 + 192;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_47();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v22 = v9 + 144;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_47();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v22 = v9 + 200;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_47();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_29_2(v1);
  OUTLINED_FUNCTION_150();

  return v6(v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_29_2(v1);
  OUTLINED_FUNCTION_150();

  return v6(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:conversationModel:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v22 = v9 + 160;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_47();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_29_2(v1);
  OUTLINED_FUNCTION_150();

  return v6(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_29_2(v1);
  OUTLINED_FUNCTION_150();

  return v6(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t dispatch thunk of ResponseFactory.makeSuccessOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_66();
  v13 = v0 + 216;
  v14 = *(v0 + 216) + **(v0 + 216);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2_9(v2);
  OUTLINED_FUNCTION_48();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

uint64_t dispatch thunk of ResponseFactory.makeSuccessOutput(resultModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v22 = v9 + 224;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_47();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ResponseFactory.makeSuccessOutput(conversationModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v22 = v9 + 232;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_47();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ResponseFactory.makeSuccessOutput(dialog:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_29_2(v1);
  OUTLINED_FUNCTION_150();

  return v6(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCF6395C()
{
  OUTLINED_FUNCTION_42();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[27] = type metadata accessor for OutputGenerationManifest(0);
  v1[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88);
  v1[29] = swift_task_alloc();
  v1[30] = type metadata accessor for ResponseComponents(0);
  v1[31] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF63A50()
{
  v47 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 192);
  v4 = type metadata accessor for OutputElementContainer(0);
  sub_1DCB09910(v3 + *(v4 + 32), v2, &qword_1ECCA1820, &qword_1DD0E0F88);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 192);
    sub_1DCB0E9D8(*(v0 + 232), &qword_1ECCA1820, &qword_1DD0E0F88);
    sub_1DCB09910(v5 + *(v4 + 36), v0 + 72, &qword_1ECCA1830, &unk_1DD0E0F90);
    if (*(v0 + 80))
    {
      v6 = *(v0 + 88);
      *(v0 + 16) = *(v0 + 72);
      *(v0 + 32) = v6;
      *(v0 + 48) = *(v0 + 104);
      *(v0 + 64) = *(v0 + 120);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v7 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v7, qword_1EDE57E00);
      sub_1DCE56CB8(v0 + 16, v0 + 128);
      v8 = sub_1DD0DD8EC();
      v9 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v46[0] = v11;
        *v10 = 136315138;
        v12 = *(v0 + 128);
        v13 = *(v0 + 136);

        sub_1DCBB5C74(v0 + 128);
        v14 = sub_1DCB10E9C(v12, v13, v46);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1DCAFC000, v8, v9, "Generating a Response Framework Update Output command for viewId: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        sub_1DCBB5C74(v0 + 128);
      }

      v39 = *(v0 + 208);
      v40 = v39[5];
      v41 = v39[6];
      __swift_project_boxed_opaque_existential_1(v39 + 2, v40);
      v42 = *(v0 + 16);
      v43 = *(v0 + 24);
      v44 = *(v41 + 136);

      v44(v42, v43, v0 + 32, v40, v41);
      sub_1DCBB5C74(v0 + 16);
    }

    else
    {
      v38 = *(v0 + 184);
      sub_1DCB0E9D8(v0 + 72, &qword_1ECCA1830, &unk_1DD0E0F90);
      *v38 = 0u;
      *(v38 + 16) = 0u;
      *(v38 + 32) = 0;
    }

    OUTLINED_FUNCTION_43();

    return v45();
  }

  else
  {
    sub_1DCE56B8C(*(v0 + 232), *(v0 + 248));
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v15 = *(v0 + 224);
    v16 = *(v0 + 200);
    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    sub_1DCB68600(v16, v15);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6DC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 224);
    if (v20)
    {
      v22 = *(v0 + 216);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46[0] = v24;
      *v23 = 136315138;
      v25 = (v21 + *(v22 + 68));
      v26 = *v25;
      v27 = v25[1];

      OUTLINED_FUNCTION_9_71();
      v28 = sub_1DCB10E9C(v26, v27, v46);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "Generating a Response Framework Output command with viewId: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      OUTLINED_FUNCTION_9_71();
    }

    v29 = *(v0 + 208);
    v31 = v29[5];
    v30 = v29[6];
    __swift_project_boxed_opaque_existential_1(v29 + 2, v31);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 256) = v32;
    *v32 = v33;
    v32[1] = sub_1DCF63F44;
    v34 = *(v0 + 248);
    v35 = *(v0 + 200);
    v36 = *(v0 + 184);

    return sub_1DCF64138(v36, v34, v35, v31, v30);
  }
}

uint64_t sub_1DCF63F44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 264) = v0;

  if (v0)
  {
    v5 = sub_1DCF640B8;
  }

  else
  {
    v5 = sub_1DCF64048;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCF64048()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_10_72();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1DCF640B8()
{
  OUTLINED_FUNCTION_10_72();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCF64138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[73] = v5;
  v6[72] = a5;
  v6[71] = a4;
  v6[70] = a3;
  v6[69] = a2;
  v6[68] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF6416C, 0, 0);
}

void sub_1DCF6416C()
{
  v1 = *(v0 + 552);
  v2 = v1;
  v3 = *v1;
  *(v0 + 592) = *v1;
  sub_1DCB09910((v1 + 1), v0 + 16, &qword_1ECCA1838, &unk_1DD0FC960);
  sub_1DCB09910((v2 + 6), v0 + 56, &qword_1ECCA1838, &unk_1DD0FC960);
  *(v0 + 96) = v3;
  if (*(v0 + 40))
  {
    sub_1DCB09910(v0 + 16, v0 + 224, &qword_1ECCA1838, &unk_1DD0FC960);
    if (*(v0 + 80))
    {
      sub_1DCB09910(v0 + 56, v0 + 264, &qword_1ECCA1838, &unk_1DD0FC960);
      v4 = (v0 + 224);
      if (v3)
      {
        sub_1DCB18FF0(v4, v0 + 304);
        sub_1DCB18FF0((v0 + 264), v0 + 344);
        OUTLINED_FUNCTION_17_43();
        swift_task_alloc();
        OUTLINED_FUNCTION_45();
        *(v0 + 616) = v5;
        *v5 = v6;
        v5[1] = sub_1DCF64C34;
        OUTLINED_FUNCTION_47();

        __asm { BRAA            X7, X16 }
      }

      sub_1DCB18FF0(v4, v0 + 384);
      sub_1DCB18FF0((v0 + 264), v0 + 424);
      OUTLINED_FUNCTION_8();
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 624) = v19;
      *v19 = v20;
      OUTLINED_FUNCTION_4_103(v19);
      OUTLINED_FUNCTION_47();

      __asm { BRAA            X6, X16 }
    }

    v14 = (v0 + 224);
    if (v3)
    {
      sub_1DCB18FF0(v14, v0 + 464);
      OUTLINED_FUNCTION_17_43();
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 600) = v15;
      *v15 = v16;
      OUTLINED_FUNCTION_4_103(v15);
      OUTLINED_FUNCTION_47();

      __asm { BRAA            X6, X16 }
    }

    sub_1DCB18FF0(v14, v0 + 504);
    OUTLINED_FUNCTION_8();
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 608) = v31;
    *v31 = v32;
    OUTLINED_FUNCTION_3_109(v31);
    OUTLINED_FUNCTION_47();

    __asm { BRAA            X5, X16 }
  }

  if (*(v0 + 80))
  {
    sub_1DCB09910(v0 + 56, v0 + 104, &qword_1ECCA1838, &unk_1DD0FC960);
    v9 = (v0 + 104);
    if (v3)
    {
      sub_1DCB18FF0(v9, v0 + 144);
      OUTLINED_FUNCTION_17_43();
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 632) = v10;
      *v10 = v11;
      OUTLINED_FUNCTION_4_103(v10);
      OUTLINED_FUNCTION_47();

      __asm { BRAA            X6, X16 }
    }

    sub_1DCB18FF0(v9, v0 + 184);
    OUTLINED_FUNCTION_8();
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 640) = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_3_109(v27);
    OUTLINED_FUNCTION_47();

    __asm { BRAA            X5, X16 }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_17_43();
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 648) = v23;
    *v23 = v24;
    OUTLINED_FUNCTION_3_109(v23);
    OUTLINED_FUNCTION_47();

    __asm { BRAA            X5, X16 }
  }

  sub_1DCF65450();
  swift_allocError();
  swift_willThrow();
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCAAED8, &qword_1DD103FF8);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_47();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCF64980()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF64A64()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 464));

  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF64AE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF64BC4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));
  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF64C34()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF64D18()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 344));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));

  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF64D9C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF64E80()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 424));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));
  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF64EF8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF64FDC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF65058()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF6513C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF651AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF65290()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1DCF65324()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCF6395C();
}

uint64_t sub_1DCF653F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1DCF65450()
{
  result = qword_1ECCAAED0;
  if (!qword_1ECCAAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAAED0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseComponentError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCF65558()
{
  result = qword_1ECCAAEE0;
  if (!qword_1ECCAAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAAEE0);
  }

  return result;
}

void sub_1DCF65768()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_7_68(v0, v0, &off_1F58563F0);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1DCF65840()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF65944()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_69();
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_1DCF659A4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF65A00(uint64_t a1, char a2)
{
  *(v2 + 304) = a2;
  *(v2 + 264) = a1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF65A1C);
}

void sub_1DCF65A1C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 264);
  v2 = sub_1DD0DDE9C();
  sub_1DCB28B08(v1, v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v3 = *(v0 + 304);
  *(v0 + 160) = MEMORY[0x1E69E6370];
  *(v0 + 136) = v3;
  sub_1DCB20B30((v0 + 136), (v0 + 168));
  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC60044();
  *(v0 + 272) = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v4 = qword_1EDE57D40;
  v5 = type metadata accessor for CATTemplateExecutor();
  *(v0 + 120) = v5;
  *(v0 + 128) = &off_1F58563F0;
  *(v0 + 96) = v4;
  __swift_project_boxed_opaque_existential_1((v0 + 96), v5);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF65C2C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 288) = v0;

  if (!v0)
  {
    *(v4 + 296) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF65D54()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_69();
  v2 = *(v0 + 296);

  return v1(v2);
}

uint64_t sub_1DCF65DB4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCF65E24()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_7_68(v0, v0, &off_1F58563F0);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1DCF65EFC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF66000()
{
  OUTLINED_FUNCTION_42();
  v0[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v0[16] = swift_task_alloc();
  v2 = sub_1DD0DD23C();
  v0[17] = v2;
  v0[18] = *(v2 - 8);
  v0[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF660F4, 0, 0);
}

void sub_1DCF660F4()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1DD0DDE9C();
  sub_1DCB28B08(v3, v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1DCB16D50(*(v0 + 128), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 136);
    (*(v7 + 32))(v6, *(v0 + 128), v8);
    *(v0 + 56) = sub_1DD0DD21C();
    *(v0 + 80) = v4;
    *(v0 + 64) = v9;
    sub_1DCB20B30((v0 + 56), (v0 + 88));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    (*(v7 + 8))(v6, v8);
  }

  *(v0 + 160) = v5;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v10 = qword_1EDE57D40;
  v11 = type metadata accessor for CATTemplateExecutor();
  *(v0 + 40) = v11;
  *(v0 + 48) = &off_1F58563F0;
  *(v0 + 16) = v10;
  __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF66318()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 176) = v0;

  if (!v0)
  {
    *(v4 + 184) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF66440()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_69();
  v2 = *(v0 + 184);

  return v1(v2);
}

void sub_1DCF664CC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_7_68(v0, v0, &off_1F58563F0);
  OUTLINED_FUNCTION_27_0();
}

void sub_1DCF665BC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[25];
  v2 = sub_1DD0DDE9C();
  sub_1DCB28B08(v1, (v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[26] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v3 = qword_1EDE57D40;
  v4 = type metadata accessor for CATTemplateExecutor();
  v0[15] = v4;
  v0[16] = &off_1F58563F0;
  v0[12] = v3;
  __swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF66774()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 224) = v0;

  if (!v0)
  {
    *(v4 + 232) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF6689C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_69();
  v2 = *(v0 + 232);

  return v1(v2);
}

uint64_t sub_1DCF668FC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCF6696C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_7_68(v0, v0, &off_1F58563F0);
  OUTLINED_FUNCTION_27_0();
}

_BYTE *storeEnumTagSinglePayload for ResponsePatterns(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCF66B0C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v1 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v1, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v11 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v11, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  OUTLINED_FUNCTION_26_32();
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_28(v2);
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  OUTLINED_FUNCTION_31_27();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_21_45(v3);
  OUTLINED_FUNCTION_22_4();

  return sub_1DCC6FFB0(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCF66CD0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF66E08(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 144) = a2;
  *(v5 + 96) = a1;
  *(v5 + 104) = a3;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF66E24()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v2 = sub_1DD0DDE9C();
  *(v0 + 128) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v3;
  *v3 = v4;
  v3[1] = sub_1DCF66F38;
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 144);

  return sub_1DCC6FFB0(v6, v8, v7, v5, v2);
}

uint64_t sub_1DCF66F38()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

void static ResponseTemplates.continueInApp(appDisplayInfo:deviceState:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v9 = OUTLINED_FUNCTION_99(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v17);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v31 - v20;
  v22 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v21, v23, v24, v22);
  sub_1DCB17C3C(a1, v16, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  sub_1DCB17C3C(a2, v32, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_1DCD0506C(v16, v27 + v25);
  v28 = v27 + v26;
  v29 = v32[1];
  *v28 = v32[0];
  *(v28 + 16) = v29;
  *(v28 + 32) = v33;
  v30 = (v27 + ((v26 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v30 = a3;
  v30[1] = a4;
  sub_1DD0DCF8C();
}

void static ResponseTemplates.taskInProgress(appDisplayInfo:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v7 = OUTLINED_FUNCTION_99(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v15);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v26 - v18;
  v20 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v19, v21, v22, v20);
  sub_1DCB17C3C(a1, v14, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1DCD0506C(v14, v24 + v23);
  v25 = (v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = a2;
  v25[1] = a3;
  sub_1DD0DCF8C();
}

void sub_1DCF67450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v7);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - v10;
  v12 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v11, v13, v14, v12);
  sub_1DCB17C3C(a1, v18, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = v18[1];
  *(v15 + 32) = v18[0];
  *(v15 + 48) = v16;
  *(v15 + 64) = v19;
  *(v15 + 72) = a2;
  *(v15 + 80) = a3;
  sub_1DD0DCF8C();
}

uint64_t static ResponseTemplates.continueOnCompanion(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF67570()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v1;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v3 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v3, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v13 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v13, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  OUTLINED_FUNCTION_30_36();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[34] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_14_56(v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_150();

  return sub_1DCC6FFB0(v6, v7, v8, v9, v10);
}

uint64_t sub_1DCF6779C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t static ResponseTemplates.unsupportedSecuredRequestSetting(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF678E8()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v1;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v3 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v3, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v13 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v13, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  OUTLINED_FUNCTION_30_36();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[34] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_14_56(v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_150();

  return sub_1DCC6FFB0(v6, v7, v8, v9, v10);
}

uint64_t static ResponseTemplates.continueInApp(appDisplayInfo:deviceState:)()
{
  OUTLINED_FUNCTION_42();
  v0[47] = v1;
  v0[48] = v2;
  v0[46] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v4);
  v0[49] = OUTLINED_FUNCTION_38();
  v5 = sub_1DD0DD23C();
  v0[50] = v5;
  OUTLINED_FUNCTION_99(v5);
  v0[51] = v6;
  v0[52] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF67BEC()
{
  OUTLINED_FUNCTION_41();
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1DD0DDE9C();
  sub_1DCB17C3C(v3, v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1DCB185D0(*(v0 + 392), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v7 = *(v0 + 408);
    v6 = *(v0 + 416);
    v8 = *(v0 + 400);
    (*(v7 + 32))(v6, *(v0 + 392), v8);
    *(v0 + 240) = sub_1DD0DD22C() & 1;
    *(v0 + 264) = MEMORY[0x1E69E6370];
    sub_1DCB20B30((v0 + 240), (v0 + 272));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    v9 = sub_1DD0DD21C();
    *(v0 + 328) = v4;
    *(v0 + 304) = v9;
    *(v0 + 312) = v10;
    sub_1DCB20B30((v0 + 304), (v0 + 336));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_44_29();
    sub_1DCC60044();
    (*(v7 + 8))(v6, v8);
  }

  sub_1DCB17C3C(*(v0 + 384), v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 424) = v5;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 136, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 160))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v11 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v11, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v20 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v20, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  *(v0 + 432) = qword_1ECCAAEE8;

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 440) = v12;
  *v12 = v13;
  v12[1] = sub_1DCF67FC0;
  OUTLINED_FUNCTION_14();

  return sub_1DCC6FFB0(v14, v15, v16, v17, v18);
}

uint64_t sub_1DCF67FC0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 448) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF680F8()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF6816C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  OUTLINED_FUNCTION_29();

  return v1();
}

double sub_1DCF681E0()
{
  qword_1ECCD2740 = 0;
  result = 0.0;
  xmmword_1ECCD2720 = 0u;
  *algn_1ECCD2730 = 0u;
  return result;
}

uint64_t sub_1DCF681F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  result = sub_1DD0DDE9C();
  qword_1ECCAAEE8 = result;
  return result;
}

uint64_t sub_1DCF68290()
{
  OUTLINED_FUNCTION_42();
  v0[22] = v1;
  v0[23] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[24] = v3;
  *v3 = v4;
  v3[1] = sub_1DCF68320;

  return static ResponseTemplates.taskAborted()((v0 + 12));
}

uint64_t sub_1DCF68320()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF68418()
{
  v5 = v0;
  *(v0 + 168) = 0;
  memcpy((v0 + 16), (v0 + 96), 0x49uLL);
  v1 = *(v0 + 176);
  memcpy(v4, (v0 + 16), 0x49uLL);
  v1(v4);
  sub_1DCB185D0(v0 + 16, &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCF684C0()
{
  v6 = v0;
  v1 = *(v0 + 200);
  *(v0 + 208) = 1;
  *(v0 + 16) = v1;
  *(v0 + 88) = 1;
  v2 = *(v0 + 176);
  memcpy(__dst, (v0 + 16), 0x49uLL);
  v2(__dst);
  sub_1DCB185D0(v0 + 16, &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCF6856C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_35_31();

  return sub_1DCF68290();
}

uint64_t sub_1DCF6861C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v1 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v1, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v11 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v11, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  OUTLINED_FUNCTION_26_32();
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_28(v2);
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  OUTLINED_FUNCTION_31_27();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_21_45(v3);
  OUTLINED_FUNCTION_22_4();

  return sub_1DCC6FFB0(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCF687E0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF68918()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF68994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = swift_task_alloc();
  v5[24] = v6;
  *v6 = v5;
  v6[1] = sub_1DCF68A2C;

  return static ResponseTemplates.taskComplete()((v5 + 12));
}

uint64_t sub_1DCF68A2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF68B38()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v1 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v1, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v11 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v11, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  OUTLINED_FUNCTION_26_32();
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_28(v2);
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  OUTLINED_FUNCTION_31_27();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_21_45(v3);
  OUTLINED_FUNCTION_22_4();

  return sub_1DCC6FFB0(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCF68CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v7 = swift_task_alloc();
  v6[24] = v7;
  *v7 = v6;
  v7[1] = sub_1DCF68A2C;

  return static ResponseTemplates.taskInProgress(appDisplayInfo:)();
}

uint64_t static ResponseTemplates.taskInProgress(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_42();
  v0[20] = v1;
  v0[21] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v3);
  v0[22] = OUTLINED_FUNCTION_38();
  v4 = sub_1DD0DD23C();
  v0[23] = v4;
  OUTLINED_FUNCTION_99(v4);
  v0[24] = v5;
  v0[25] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF68E70()
{
  OUTLINED_FUNCTION_41();
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1DD0DDE9C();
  sub_1DCB17C3C(v3, v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1DCB185D0(*(v0 + 176), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 184);
    (*(v7 + 32))(v6, *(v0 + 176), v8);
    *(v0 + 96) = sub_1DD0DD21C();
    *(v0 + 120) = v4;
    *(v0 + 104) = v9;
    sub_1DCB20B30((v0 + 96), (v0 + 128));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_44_29();
    sub_1DCC60044();
    (*(v7 + 8))(v6, v8);
  }

  *(v0 + 208) = v5;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v10 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v10, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v19 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v19, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  *(v0 + 216) = qword_1ECCAAEE8;

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 224) = v11;
  *v11 = v12;
  v11[1] = sub_1DCF69144;
  OUTLINED_FUNCTION_14();

  return sub_1DCC6FFB0(v13, v14, v15, v16, v17);
}

uint64_t sub_1DCF69144()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF6927C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF692F0()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF69364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v8 = swift_task_alloc();
  v7[24] = v8;
  *v8 = v7;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.continueInApp(appDisplayInfo:deviceState:)();
}

uint64_t sub_1DCF6940C()
{
  OUTLINED_FUNCTION_41();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v3);
  OUTLINED_FUNCTION_41_28();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_1DCB4AE1C;
  v5 = OUTLINED_FUNCTION_39_30();

  return sub_1DCF69364(v5, v6, v7, v8, v9, v1, v2);
}

uint64_t sub_1DCF69534()
{
  OUTLINED_FUNCTION_41();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v3);
  OUTLINED_FUNCTION_41_28();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_1DCB4AE1C;
  v5 = OUTLINED_FUNCTION_39_30();

  return sub_1DCF68CFC(v5, v6, v7, v8, v1, v2);
}

uint64_t sub_1DCF69650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.continueOnCompanion(deviceState:)((v6 + 12), a4);
}

uint64_t sub_1DCF696F0()
{
  OUTLINED_FUNCTION_42();
  v0[22] = v1;
  v0[23] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[24] = v3;
  *v3 = v4;
  v3[1] = sub_1DCF68A2C;

  return static ResponseTemplates.appDisabledByScreenTime()((v0 + 12));
}

uint64_t sub_1DCF69780()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF69650(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCF69820()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v1 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v1, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v11 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v11, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  OUTLINED_FUNCTION_26_32();
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_28(v2);
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  OUTLINED_FUNCTION_31_27();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_21_45(v3);
  OUTLINED_FUNCTION_22_4();

  return sub_1DCC6FFB0(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCF69A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.authenticateOnCompanion(deviceState:)((v6 + 12), a4);
}

uint64_t static ResponseTemplates.authenticateOnCompanion(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF69AB8()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v1;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v3 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v3, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v13 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v13, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  OUTLINED_FUNCTION_30_36();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[34] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_14_56(v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_150();

  return sub_1DCC6FFB0(v6, v7, v8, v9, v10);
}

uint64_t sub_1DCF69D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.authorizeOnCompanion(deviceState:)((v6 + 12), a4);
}

uint64_t static ResponseTemplates.authorizeOnCompanion(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF69DB8()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v1;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v3 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v3, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v13 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v13, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  OUTLINED_FUNCTION_30_36();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[34] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_14_56(v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_150();

  return sub_1DCC6FFB0(v6, v7, v8, v9, v10);
}

uint64_t sub_1DCF69FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.unlockDeviceSegue(deviceState:)((v6 + 12), a4);
}

uint64_t sub_1DCF6A084()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF69FE4(v3, v4, v5, v6, v7, v8);
}

uint64_t static ResponseTemplates.unlockDeviceSegue(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF6A124()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v1;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v3 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v3, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v13 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v13, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  OUTLINED_FUNCTION_30_36();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[34] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_14_56(v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_150();

  return sub_1DCC6FFB0(v6, v7, v8, v9, v10);
}

uint64_t sub_1DCF6A350()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF6A488()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF6A504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = swift_task_alloc();
  v5[24] = v6;
  *v6 = v5;
  v6[1] = sub_1DCF68A2C;

  return static ResponseTemplates.unsupportedOperation()((v5 + 12));
}

uint64_t sub_1DCF6A5B0()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v1 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v1, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v11 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v11, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  OUTLINED_FUNCTION_26_32();
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_28(v2);
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  OUTLINED_FUNCTION_31_27();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_21_45(v3);
  OUTLINED_FUNCTION_22_4();

  return sub_1DCC6FFB0(v5, v6, v7, v8, v9);
}

void sub_1DCF6A794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - v8;
  v10 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v9, v11, v12, v10);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF6A868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = swift_task_alloc();
  v5[24] = v6;
  *v6 = v5;
  v6[1] = sub_1DCF68A2C;

  return static ResponseTemplates.unsupportedInRegion()((v5 + 12));
}

uint64_t sub_1DCF6A914()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v1 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v1, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v11 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v11, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  OUTLINED_FUNCTION_26_32();
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_28(v2);
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  OUTLINED_FUNCTION_31_27();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_21_45(v3);
  OUTLINED_FUNCTION_22_4();

  return sub_1DCC6FFB0(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCF6AAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.unsupportedOnDevice(deviceState:)((v6 + 12), a4);
}

uint64_t static ResponseTemplates.unsupportedOnDevice(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF6ABAC()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v1;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v3 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v3, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v8 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v8, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[33] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14_56(v4);

  return sub_1DCF66E08(v6, 76, v1, 0);
}

uint64_t sub_1DCF6ADEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF6AF00()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF6AF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.unsupportedSecuredRequestSetting(deviceState:)((v6 + 12), a4);
}

uint64_t sub_1DCF6B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.unsupportedWhileSharingPolicyIsRestricted(deviceState:)((v6 + 12), a4);
}

uint64_t static ResponseTemplates.unsupportedWhileSharingPolicyIsRestricted(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF6B0F0()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v1;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100(&qword_1ECCA1378);
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v3 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v3, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    v13 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v13, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110(&qword_1ECCA1380);
  }

  OUTLINED_FUNCTION_30_36();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[34] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_14_56(v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_150();

  return sub_1DCC6FFB0(v6, v7, v8, v9, v10);
}

uint64_t sub_1DCF6B31C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_35_31();

  return sub_1DCF68994(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF6B3B8()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF69A04(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCF6B444()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF69D04(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCF6B4D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_35_31();

  return sub_1DCF6A504(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF6B56C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_35_31();

  return sub_1DCF6A868(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF6B608()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF6AAF8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCF6B694()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF6AF7C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCF6B720()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF6B03C(v3, v4, v5, v6, v7, v8);
}

_BYTE *storeEnumTagSinglePayload for ResponseTemplates(_BYTE *result, int a2, int a3)
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

uint64_t ResponseType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6769626D61736964;
  }

  else
  {
    return 0x647261646E617473;
  }
}

SiriKitFlow::ResponseType_optional __swiftcall ResponseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1DCF6B924()
{
  result = qword_1ECCAAEF0;
  if (!qword_1ECCAAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAAEF0);
  }

  return result;
}

uint64_t sub_1DCF6B99C@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Result.tapError(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v13 = *(v12 + 24);
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_16();
  v20 = v19 - v18;
  v21 = *(v6 + 16);
  v21(v11, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v20, v11, v13);
    a1(v20);
    (*(v15 + 8))(v20, v13);
  }

  else
  {
    (*(v6 + 8))(v11, a2);
  }

  return (v21)(a3, v3, a2);
}

uint64_t Result.orElse(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  (*(v7 + 16))(v11 - v10, v13, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 8))(v12, a2);
    OUTLINED_FUNCTION_2_101();
    return (*(v14 + 16))(a3, a1);
  }

  else
  {
    OUTLINED_FUNCTION_2_101();
    return (*(v16 + 32))(a3, v12);
  }
}

uint64_t dispatch thunk of ResultSetFlowProvider.makeNarrowingPromptFlowIfNeeded()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_102(v0, v1);
  OUTLINED_FUNCTION_8();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_26(v3);

  return v6(v5);
}

uint64_t dispatch thunk of ResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_102(v0, v1);
  OUTLINED_FUNCTION_8();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_26(v3);

  return v6(v5);
}

uint64_t dispatch thunk of ResultSetFlowProvider.makeSingleItemFlow()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_102(v0, v1);
  OUTLINED_FUNCTION_8();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_26(v3);

  return v6(v5);
}

uint64_t dispatch thunk of ResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_102(v0, v1);
  OUTLINED_FUNCTION_8();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_26(v3);

  return v6(v5);
}

uint64_t dispatch thunk of ResultSetFlowProvider.makeWindowingConfiguration(promptType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_30_1(v9);
  *v10 = v11;
  v10[1] = sub_1DCB193FC;

  return v13(a1, a2, a3, a4);
}

void sub_1DCF6C2E4(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v3 = v2;
  v5 = *v2;
  v6 = v2[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  v9 = v8 >> 5;
  if (v8 >> 5 == 3)
  {
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 0x1F;
    v17 = OUTLINED_FUNCTION_68();

    sub_1DCBB12F4(v17, v18, v19);
  }

  else if (v9 == 4)
  {
    *a1 = v6;
    *(a1 + 8) = v7 & 1;
    *(a1 + 16) = 1;

    v16 = v6;
  }

  else
  {
    v11 = v9 == 5 && v6 == 1 && v7 == 0;
    if (v11 && v8 == 160)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2;
    }

    else
    {
      type metadata accessor for RouteConfirmIntentResponseFlow.RouteConfirmIntentError(0, *(v5 + 80), *(v5 + 88), a2);
      OUTLINED_FUNCTION_0_108();
      swift_getWitnessTable();
      v12 = swift_allocError();
      *v13 = v6;
      *(v13 + 8) = v7;
      *(v13 + 16) = v8 | 8;
      *a1 = v12;
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;
      v14 = OUTLINED_FUNCTION_68();

      sub_1DCF6EBE0(v14, v15, v8);
    }
  }
}

void RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v13 - v9;
  v11 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DD104478;
  v12[5] = 0;
  v12[6] = a4;
  v12[7] = a5;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF6C578(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AD3C;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)();
}

uint64_t RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAC3B0();
}

uint64_t ConfirmIntentResponseError.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCF6C744()
{
  result = qword_1ECCAAEF8[0];
  if (!qword_1ECCAAEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAAEF8);
  }

  return result;
}

void dispatch thunk of RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_125();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_88_1();

  __asm { BRAA            X6, X16 }
}

_BYTE *storeEnumTagSinglePayload for ConfirmIntentResponseError(_BYTE *result, int a2, int a3)
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