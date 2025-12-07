void sub_231D6155C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_231D612A4(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74F40, &qword_231E1D1B8);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_231D612A4(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
    sub_231E12160();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = v14[7];
    v16 = v15 + *(*(type metadata accessor for AvailabilityManager.Result(0) - 8) + 72) * v10;

    sub_231D61B8C(a1, v16);
  }

  else
  {
    sub_231D616B0(v10, a2, a1, v14);
  }
}

uint64_t sub_231D616B0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for AvailabilityManager.Result(0);
  result = sub_231D61944(a3, v7 + *(*(v8 - 8) + 72) * a1);
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

uint64_t sub_231D61744(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x23837D730](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_231E116E0();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t type metadata accessor for AvailabilityManager.Result(uint64_t a1)
{
  result = qword_2814CE0F0;
  if (!qword_2814CE0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_231D61808()
{
  result = qword_2814CBDD0;
  if (!qword_2814CBDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD74460, &qword_231E1C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBDD0);
  }

  return result;
}

uint64_t sub_231D61884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailabilityManager.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231D618E8(uint64_t a1)
{
  v2 = type metadata accessor for AvailabilityManager.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231D61944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailabilityManager.Result(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231D619AC()
{
  result = qword_27DD74F30;
  if (!qword_27DD74F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74F30);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_231D61A38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_231D61A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_231D61B18(uint64_t a1)
{
  result = sub_231E0F950();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231D61B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailabilityManager.Result(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_8_15(void *result)
{
  v2 = result[1];
  *(v1 - 64) = *result;
  *(v1 - 56) = v2;
  return result;
}

unint64_t OUTLINED_FUNCTION_10_13(uint64_t a1, unint64_t a2)
{
  *(v3 - 128) = v2;

  return sub_231CB5000(a1, a2, (v3 - 88));
}

uint64_t sub_231D61C58@<X0>(char *a3@<X8>)
{
  v4 = sub_231E0F710();
  OUTLINED_FUNCTION_24();
  v29 = v5;
  MEMORY[0x28223BE20](v6);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745C0, &qword_231E17240);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = sub_231E0F780();
  OUTLINED_FUNCTION_24();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - v21;
  sub_231E0F760();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_231CFF408(v13);
  }

  else
  {
    v26 = v4;
    v27 = a3;
    v23 = *(v16 + 32);
    v23(v20, v13, v14);
    if (sub_231E0F700())
    {

      v23(v22, v20, v14);
      a3 = v27;
      goto LABEL_8;
    }

    (*(v16 + 8))(v20, v14);
    v4 = v26;
    a3 = v27;
  }

  if ((sub_231E11780() & 1) == 0)
  {

    v24 = 1;
    return __swift_storeEnumTagSinglePayload(a3, v24, 1, v14);
  }

  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  (*(v29 + 104))(v28, *MEMORY[0x277CC91D8], v4);
  sub_231E0F770();
  v23 = *(v16 + 32);
LABEL_8:
  v23(a3, v22, v14);
  v24 = 0;
  return __swift_storeEnumTagSinglePayload(a3, v24, 1, v14);
}

uint64_t type metadata accessor for UrgencyFeedbackHistoryEntry(uint64_t a1)
{
  result = qword_27DD830C0;
  if (!qword_27DD830C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231D61FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for UrgencyFeedbackHistoryEntry(0);
  v9 = *(v8 + 20);
  v10 = sub_231E0F950();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

uint64_t sub_231D6204C(uint64_t *a1, int a2)
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

uint64_t sub_231D6208C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for UrgencyFeedbackDistanceLabelPairing(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UrgencyFeedbackDistanceLabelPairing(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_231D62168(uint64_t a1)
{
  result = sub_231E0F950();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231D621EC()
{
  v1 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  v7 = v6 - v5;
  v8 = *(*v0 + 16);
  v9 = sub_231DC4AB8();
  (*(v3 + 16))(v7, v9, v1);
  v10 = sub_231E10E10();
  v11 = sub_231E11AF0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_231CAE000, v10, v11, "Active Smart Replies requests changed: %ld", v12, 0xCu);
    OUTLINED_FUNCTION_30();
  }

  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_231D62340(void *a1, uint64_t a2, const void *a3, void *a4)
{
  v8 = swift_allocObject();
  sub_231D623A8(a1, a2, a3, a4);
  return v8;
}

void *sub_231D623A8(void *a1, uint64_t a2, const void *a3, void *a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74F48, &qword_231E1D290);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = MEMORY[0x277D84F98];
  v4[2] = v10;
  type metadata accessor for SpotlightWriter();
  sub_231CE10BC(a3, v18);
  v4[3] = sub_231CD2CF8(a3);
  type metadata accessor for SpotlightReader();
  sub_231CE10BC(a3, v18);
  v4[4] = sub_231DF7564();
  v4[5] = [objc_allocWithZone(sub_231E11330()) init];
  sub_231CE8434(a1, (v4 + 6));
  v4[11] = a2;
  v4[13] = a4;
  type metadata accessor for PowerBudget();
  type metadata accessor for PowerTracker(0);
  swift_unknownObjectRetain();
  v11 = a4;
  sub_231CE6C64(1, 1);
  v12 = sub_231D12D68();
  v13 = sub_231D12E00();
  v14 = sub_231D12EB0();
  *&v15 = sub_231D12F48();
  sub_231E0B5FC(v12, 0, v13, 0, v14, 0, v15, 0, v18, 2);
  sub_231E0B650(v18, v19);
  v16 = sub_231E0B688();
  swift_unknownObjectRelease();
  sub_231CE140C(a3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v5[12] = v16;
  return v5;
}

void sub_231D62578()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_95_5();
  sub_231E10340();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_24();
  v18 = v2;
  v19 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_1();
  v5 = v4 - v3;
  sub_231E10100();
  if (!v6)
  {
    sub_231E10000();
  }

  sub_231E10000();
  sub_231E11980();
  v7 = OUTLINED_FUNCTION_64_4();
  v8(v7);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_56_8(v9);
  v11(v10);

  v12 = OUTLINED_FUNCTION_70_5();
  sub_231D64EBC(v12, v13, v14, v15, v16, 0xD00000000000001BLL, v17);

  (*(v18 + 8))(v5, v19);
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D62748()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_4(v1, v2);
  v3 = sub_231E10340();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v0[6] = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_55();
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D627F0()
{
  OUTLINED_FUNCTION_47_0();
  v2 = *(v0 + 24);
  sub_231D120C0();
  v3 = OUTLINED_FUNCTION_68_6();
  v4(v3);
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_58_7(v5);
  v7(v6);

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_231D62914;

  return sub_231D6DB48(&unk_231E1D4A0, v2, 0, 0, v1);
}

uint64_t sub_231D62914()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_231D62A2C()
{
  OUTLINED_FUNCTION_29();
  v0 = sub_231E10340();
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_44_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_38(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_24_8(v2);

  return sub_231D62748();
}

uint64_t sub_231D62AE4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_4(v1, v2);
  v3 = sub_231E10DB0();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_55();
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D62B84()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_105_5();
  sub_231DC4F38(v1, v2);
  v3 = OUTLINED_FUNCTION_23_0();
  v4(v3);
  v5 = swift_task_alloc();
  OUTLINED_FUNCTION_117_4(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = swift_task_alloc();
  *(v0 + 64) = v15;
  *v15 = v0;
  v15[1] = sub_231D62C70;
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_46_6();

  return sub_231DC55B4(v16, v17, v18, v19, v20, v21);
}

void sub_231D62C70()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    (*(v3[5] + 8))(v3[6], v3[4]);

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D62DA0()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_231D62DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D62E0C()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_105_5();
  v1 = [objc_allocWithZone(v0) init];
  [v1 nextToken];

  v2 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_77_3(v2, v3, v4, v5, v6, v7, v8, v9, v25);
  OUTLINED_FUNCTION_89_4(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_88_5(v20);
  *v21 = v22;
  v21[1] = sub_231D62F10;
  OUTLINED_FUNCTION_65_5();

  return MEMORY[0x282200830](v23);
}

void sub_231D62F10()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D63034()
{
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_32(v1);

  return sub_231D631B4();
}

uint64_t sub_231D630D4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_14_0();

  return v3();
}

uint64_t sub_231D631B4()
{
  OUTLINED_FUNCTION_18();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_231E10DB0();
  v1[36] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[37] = v5;
  v1[38] = OUTLINED_FUNCTION_69();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v6 = sub_231E10E30();
  v1[42] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[43] = v7;
  v1[44] = OUTLINED_FUNCTION_69();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

id sub_231D63320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_56_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_59_1();
  a20 = v22;
  v26 = sub_231E10000();
  v28 = v27;
  v22[52] = v26;
  v22[53] = v27;
  v29 = sub_231E102F0();
  v22[54] = v30;
  if (v30)
  {
    v23 = v29;
    result = [objc_opt_self() sharedPreferencesController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v32 = result;
    v33 = [result BOOLForKey_];

    v34 = v22[42];
    v35 = v22[43];
    if (v33)
    {
      v36 = v22[51];
      v37 = sub_231DC4AB8();
      v22[55] = v37;
      v38 = *(v35 + 16);
      v22[56] = v38;
      v22[57] = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v38(v36, v37, v34);

      v39 = sub_231E10E10();
      v40 = sub_231E11AF0();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v22[51];
      v44 = v22[42];
      v43 = v22[43];
      if (v41)
      {
        v94 = v22[42];
        v45 = swift_slowAlloc();
        a11 = OUTLINED_FUNCTION_68();
        *v45 = 136446722;
        *(v45 + 4) = sub_231CB5000(v26, v28, &a11);
        *(v45 + 12) = 2082;
        v46 = OUTLINED_FUNCTION_83();
        *(v45 + 14) = sub_231CB5000(v46, v47, v48);
        *(v45 + 22) = 1024;
        *(v45 + 24) = qos_class_self();
        _os_log_impl(&dword_231CAE000, v39, v40, "Processing mail with unique id: %{public}s; domain id: %{public}s; QoS: %u", v45, 0x1Cu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        v49 = *(v43 + 8);
        v50 = v49(v42, v94);
      }

      else
      {

        v49 = *(v43 + 8);
        v50 = v49(v42, v44);
      }

      v22[58] = v49;
      v76 = v22[41];
      v77 = v22[36];
      v78 = v22[37];
      v79 = v22[35];
      v80 = v22[33];
      v81 = sub_231DC4F38(v50, v51);
      v22[59] = v81;
      v82 = *(v78 + 16);
      v22[60] = v82;
      v22[61] = (v78 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v82(v76, v81, v77);
      v83 = swift_task_alloc();
      v22[62] = v83;
      v83[2] = v80;
      v83[3] = v79;
      v83[4] = v26;
      v83[5] = v28;
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      v22[63] = v84;
      *v84 = v85;
      v84[1] = sub_231D637AC;
      OUTLINED_FUNCTION_35();

      return sub_231DC55B4(v86, v87, v88, v89, v90, v91);
    }

    v56 = v22[46];

    v57 = sub_231DC4AB8();
    (*(v35 + 16))(v56, v57, v34);
    v54 = sub_231E10E10();
    v58 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_69_5(v58))
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_231DC4AB8();
    v52 = OUTLINED_FUNCTION_112_4();
    v53(v52);
    v54 = sub_231E10E10();
    v55 = sub_231E11AE0();
    if (OUTLINED_FUNCTION_69_5(v55))
    {
LABEL_9:
      v59 = OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_104_4(v59);
      OUTLINED_FUNCTION_43_10();
      _os_log_impl(v60, v61, v62, v63, v23, 2u);
      OUTLINED_FUNCTION_30();
    }
  }

  v64 = OUTLINED_FUNCTION_25();
  v65(v64);
  OUTLINED_FUNCTION_13_13();
  v93 = v67;
  v95 = v66;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, v93, v95, a11, a12, a13, a14);
}

void sub_231D637AC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    v7 = v3[41];
    v8 = v3[36];
    v9 = v3[37];
    v10 = *(v9 + 8);
    v3[64] = v10;
    v3[65] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v8);

    v11 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231D638F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  if (*(v14 + 624))
  {
    v16 = *(v14 + 448);
    v17 = *(v14 + 376);

    v18 = OUTLINED_FUNCTION_40();
    v16(v18);

    v19 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_53_7();

    v20 = OUTLINED_FUNCTION_85();
    v21 = *(v14 + 464);
    if (v20)
    {
      v22 = *(v14 + 416);
      OUTLINED_FUNCTION_62_3();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_42_8(4.8751e-34, v23, v24, v25, v26);
      OUTLINED_FUNCTION_57_6();

      *(v15 + 4) = v22;
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v27, v28, "Mail not eligible for Smart Replies (already processed); id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    else
    {
      v17 = *(v14 + 336);

      a10 = OUTLINED_FUNCTION_66_5();
    }

    v21(a10, v17);
    OUTLINED_FUNCTION_13_13();
    v53 = v44;
    v54 = v43;

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_35();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, a11, a12, a13, a14);
  }

  else
  {
    v30 = *(v14 + 280);
    v31 = *(v14 + 264);
    (*(v14 + 480))(*(v14 + 320), *(v14 + 472), *(v14 + 288));
    v32 = swift_task_alloc();
    *(v14 + 528) = v32;
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v14 + 536) = v33;
    *v33 = v34;
    v33[1] = sub_231D63B50;
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_35();

    return sub_231DC55B4(v35, v36, v37, v38, v39, v40);
  }
}

void sub_231D63B50()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    (*(v3 + 512))(*(v3 + 320), *(v3 + 288));

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D63C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  if (*(v14 + 625) == 1)
  {
    sub_231D68564();
    *(v14 + 544) = v16;
    if (v16)
    {
      v17 = v16;
      if (sub_231CC8398())
      {
        *(v14 + 256) = sub_231D689F4();
        v18 = OUTLINED_FUNCTION_85_3();
        v19(v18);
        v20 = swift_task_alloc();
        *(v14 + 584) = v20;
        OUTLINED_FUNCTION_107_5(v20);
        v21 = swift_task_alloc();
        *(v14 + 592) = v21;
        *v21 = v14;
        OUTLINED_FUNCTION_34_10(v21);
        OUTLINED_FUNCTION_16_10();
        OUTLINED_FUNCTION_46_6();
      }

      else
      {
        v48 = *(v14 + 480);
        v49 = *(v14 + 472);
        v50 = *(v14 + 312);
        v51 = *(v14 + 288);
        v72 = *(v14 + 280);
        v52 = *(v14 + 272);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FB8, &qword_231E1D3F8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_231E1C2A0;
        sub_231E11330();
        *(inited + 32) = sub_231E112D0();
        *(inited + 40) = v54;
        *(inited + 72) = MEMORY[0x277D839B0];
        *(inited + 48) = 1;
        *(inited + 80) = sub_231E11300();
        *(inited + 88) = v55;
        *(inited + 120) = MEMORY[0x277D83B88];
        *(inited + 96) = v52;
        *(inited + 128) = sub_231E112F0();
        *(inited + 136) = v56;
        v57 = getpid();
        v58 = MEMORY[0x277D849A8];
        *(inited + 168) = MEMORY[0x277D849A8];
        *(inited + 144) = v57;
        *(inited + 176) = sub_231E112E0();
        *(inited + 184) = v59;
        v60 = getpid();
        *(inited + 216) = v58;
        *(inited + 192) = v60;
        v61 = sub_231E11530();
        *(v14 + 552) = v61;
        v48(v50, v49, v51);
        v62 = swift_task_alloc();
        *(v14 + 560) = v62;
        v62[2] = v72;
        v62[3] = v17;
        v62[4] = v61;
        v63 = swift_task_alloc();
        *(v14 + 568) = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FF8, &qword_231E1D500);
        OUTLINED_FUNCTION_73_4();
        *v63 = v64;
        v63[1] = sub_231D64138;
      }

      OUTLINED_FUNCTION_35();

      return sub_231DC55B4(v65, v66, v67, v68, v69, v70);
    }

    v37 = *(v14 + 448);

    v38 = OUTLINED_FUNCTION_40();
    v37(v38);
    v39 = sub_231E10E10();
    v40 = sub_231E11AE0();
    if (OUTLINED_FUNCTION_79_3(v40))
    {
      *OUTLINED_FUNCTION_16_1() = 0;
      OUTLINED_FUNCTION_25_0(&dword_231CAE000, v41, v42, "Could not build input context history for mail content");
      OUTLINED_FUNCTION_30();
    }

    v43 = *(v14 + 464);

    v44 = OUTLINED_FUNCTION_25();
    v43(v44);
    v45 = swift_task_alloc();
    *(v14 + 600) = v45;
    *v45 = v14;
    OUTLINED_FUNCTION_75_3(v45);
  }

  else
  {
    v22 = *(v14 + 448);
    v23 = *(v14 + 384);

    v24 = OUTLINED_FUNCTION_40();
    v22(v24);

    v25 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_53_7();

    v26 = OUTLINED_FUNCTION_85();
    v27 = *(v14 + 464);
    if (v26)
    {
      v28 = *(v14 + 416);
      OUTLINED_FUNCTION_62_3();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_42_8(4.8751e-34, v29, v30, v31, v32);
      OUTLINED_FUNCTION_57_6();

      *(v15 + 4) = v28;
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v33, v34, "Mail not eligible for Smart Replies; id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    else
    {
      v23 = *(v14 + 336);

      a10 = OUTLINED_FUNCTION_66_5();
    }

    v27(a10, v23);
    v36 = swift_task_alloc();
    *(v14 + 608) = v36;
    *v36 = v14;
    OUTLINED_FUNCTION_75_3(v36);
  }

  OUTLINED_FUNCTION_35();

  return sub_231CD6674();
}

uint64_t sub_231D64138()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *v4 = *v1;
  v3[72] = v0;

  (v2[64])(v3[39], v3[36]);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D642E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29();
  v15 = v14[30];

  v14[32] = v15;
  v16 = OUTLINED_FUNCTION_85_3();
  v17(v16);
  v18 = swift_task_alloc();
  v14[73] = v18;
  OUTLINED_FUNCTION_107_5(v18);
  v19 = swift_task_alloc();
  v14[74] = v19;
  *v19 = v14;
  OUTLINED_FUNCTION_34_10(v19);
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_46_6();

  return sub_231DC55B4(v20, v21, v22, v23, v24, v25);
}

void sub_231D643B0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    (*(v3 + 512))(*(v3 + 304), *(v3 + 288));

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D644EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v17 = *(v15 + 424);
  (*(v15 + 448))(*(v15 + 400), *(v15 + 440), *(v15 + 336));

  v18 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_53_7();

  v19 = OUTLINED_FUNCTION_85();
  v20 = *(v15 + 544);
  if (v19)
  {
    v21 = *(v15 + 416);
    OUTLINED_FUNCTION_62_3();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_109_4();
    OUTLINED_FUNCTION_42_8(4.8751e-34, v22, v23, v24, v25);
    OUTLINED_FUNCTION_57_6();

    *(v16 + 4) = v21;
    OUTLINED_FUNCTION_20_2(&dword_231CAE000, v26, v27, "Generated mail Smart Replies; id: %{public}s");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    (*(v17 + 8))(a10, v14);
  }

  else
  {

    v28 = OUTLINED_FUNCTION_25();
    v29(v28);
  }

  OUTLINED_FUNCTION_13_13();
  v41 = v31;
  v42 = v30;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, a11, a12, a13, a14);
}

uint64_t sub_231D64690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_87_5();
  v16 = *v15;
  OUTLINED_FUNCTION_4();
  *v17 = v16;

  OUTLINED_FUNCTION_223();
  v29 = *(v14 + 328);
  OUTLINED_FUNCTION_223();
  v30 = *(v18 + 320);
  OUTLINED_FUNCTION_223();
  v31 = *(v19 + 312);
  OUTLINED_FUNCTION_223();

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_35();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, a12, a13, a14);
}

uint64_t sub_231D648C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_87_5();
  v16 = *v15;
  OUTLINED_FUNCTION_4();
  *v17 = v16;

  OUTLINED_FUNCTION_223();
  v29 = *(v14 + 328);
  OUTLINED_FUNCTION_223();
  v30 = *(v18 + 320);
  OUTLINED_FUNCTION_223();
  v31 = *(v19 + 312);
  OUTLINED_FUNCTION_223();

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_35();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, a12, a13, a14);
}

uint64_t sub_231D64AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_56_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_59_1();
  a20 = v22;
  v26 = *(v22 + 576);
  (*(v22 + 448))(*(v22 + 352), *(v22 + 440), *(v22 + 336));

  v27 = v26;
  v28 = sub_231E10E10();
  v29 = sub_231E11AD0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v22 + 576);
    v31 = *(v22 + 416);
    v32 = *(v22 + 424);
    v33 = *(v22 + 344);
    v44 = *(v22 + 336);
    v45 = *(v22 + 352);
    v34 = OUTLINED_FUNCTION_98_0();
    swift_slowAlloc();
    v35 = OUTLINED_FUNCTION_28();
    a11 = v35;
    *v34 = 138412546;
    v36 = v30;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v23 = v37;
    *(v34 + 12) = 2082;
    v38 = sub_231CB5000(v31, v32, &a11);

    *(v34 + 14) = v38;
    _os_log_impl(&dword_231CAE000, v28, v29, "Failed to generate mail Smart Replies: %@; id: %{public}s", v34, 0x16u);
    sub_231CE1118(v23, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_14();
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v33 + 8))(v45, v44);
  }

  else
  {

    v39 = OUTLINED_FUNCTION_25();
    v40(v39);
  }

  v41 = swift_task_alloc();
  *(v22 + 616) = v41;
  *v41 = v22;
  OUTLINED_FUNCTION_75_3(v41);
  OUTLINED_FUNCTION_35();

  return sub_231CD6674();
}

uint64_t sub_231D64D08()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D64DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v15 = *(v14 + 576);

  OUTLINED_FUNCTION_13_13();
  v27 = v17;
  v28 = v16;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t sub_231D64EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a6;
  v13[1] = a7;

  MEMORY[0x23837CC20](46, 0xE100000000000000);
  MEMORY[0x23837CC20](a1, a2);
  v10 = *(v7 + 16);
  os_unfair_lock_lock(v10 + 6);
  sub_231D6CCD8(v13, &v10[4]);
  os_unfair_lock_unlock(v10 + 6);
  v11 = v13[0];

  return v11;
}

void sub_231D64FA4()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_95_5();
  sub_231E106A0();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_24();
  v18 = v2;
  v19 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_1();
  v5 = v4 - v3;
  sub_231E10520();
  if (!v6)
  {
    sub_231E10690();
  }

  sub_231E10690();
  sub_231E11980();
  v7 = OUTLINED_FUNCTION_64_4();
  v8(v7);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_56_8(v9);
  v11(v10);

  v12 = OUTLINED_FUNCTION_70_5();
  sub_231D64EBC(v12, v13, v14, v15, v16, 0xD00000000000001FLL, v17);

  (*(v18 + 8))(v5, v19);
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D65174()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_4(v1, v2);
  v3 = sub_231E106A0();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v0[6] = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_55();
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D6521C()
{
  OUTLINED_FUNCTION_47_0();
  v2 = *(v0 + 24);
  sub_231D120C0();
  v3 = OUTLINED_FUNCTION_68_6();
  v4(v3);
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_58_7(v5);
  v7(v6);

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_231D6D4F0;

  return sub_231D6DB48(&unk_231E1D390, v2, 0, 0, v1);
}

uint64_t sub_231D65340()
{
  OUTLINED_FUNCTION_29();
  v0 = sub_231E106A0();
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_44_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_38(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_24_8(v2);

  return sub_231D65174();
}

uint64_t sub_231D653F8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_4(v1, v2);
  v3 = sub_231E10DB0();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_55();
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D65498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_105_5();
  sub_231DC4F38(v15, v16);
  v17 = OUTLINED_FUNCTION_23_0();
  v18(v17);
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_117_4(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = swift_task_alloc();
  *(v14 + 64) = v29;
  *v29 = v14;
  v29[1] = sub_231D65584;
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_46_6();

  return sub_231DC55B4(v30, v31, v32, v33, v34, v35);
}

void sub_231D65584()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    (*(v3[5] + 8))(v3[6], v3[4]);

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D656B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D656C8()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_105_5();
  v1 = [objc_allocWithZone(v0) init];
  [v1 nextToken];

  v2 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_77_3(v2, v3, v4, v5, v6, v7, v8, v9, v25);
  OUTLINED_FUNCTION_89_4(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_88_5(v20);
  *v21 = v22;
  v21[1] = sub_231D657CC;
  OUTLINED_FUNCTION_65_5();

  return MEMORY[0x282200830](v23);
}

void sub_231D657CC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D658EC()
{
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_32(v1);

  return sub_231D6598C();
}

uint64_t sub_231D6598C()
{
  OUTLINED_FUNCTION_18();
  v1[128] = v0;
  v1[127] = v2;
  v1[126] = v3;
  v4 = sub_231E10DB0();
  v1[129] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[130] = v5;
  v1[131] = OUTLINED_FUNCTION_69();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v6 = sub_231E10E30();
  v1[136] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[137] = v7;
  v1[138] = OUTLINED_FUNCTION_69();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

id sub_231D65B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v86 = v14;
  v16 = sub_231E10690();
  v18 = v17;
  v14[147] = v16;
  v14[148] = v17;
  v19 = sub_231E10660();
  v14[149] = v20;
  if (!v20)
  {
    OUTLINED_FUNCTION_82_2();

    sub_231DC4AB8();
    v56 = OUTLINED_FUNCTION_112_4();
    v57(v56);
    v58 = sub_231E10E10();
    v59 = sub_231E11AE0();
    if (!OUTLINED_FUNCTION_69_5(v59))
    {
      goto LABEL_14;
    }

LABEL_13:
    v63 = OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_104_4(v63);
    OUTLINED_FUNCTION_43_10();
    _os_log_impl(v64, v65, v66, v67, v15, 2u);
    OUTLINED_FUNCTION_30();
LABEL_14:

    v68 = OUTLINED_FUNCTION_25();
    v69(v68);
    OUTLINED_FUNCTION_3_23();
    OUTLINED_FUNCTION_100_5();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_107_1();

    __asm { BRAA            X1, X16 }
  }

  v21 = v19;
  v22 = v20;
  result = [objc_opt_self() sharedPreferencesController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v24 = result;
  v15 = [result BOOLForKey_];

  v25 = v14[137];
  v26 = v14[136];
  if (!v15)
  {
    v60 = v14[140];

    v61 = sub_231DC4AB8();
    (*(v25 + 16))(v60, v61, v26);
    v58 = sub_231E10E10();
    v62 = sub_231E11AF0();
    if (!OUTLINED_FUNCTION_69_5(v62))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v81 = v21;
  v27 = v14[146];
  v28 = sub_231DC4AB8();
  v14[150] = v28;
  v29 = *(v25 + 16);
  v14[151] = v29;
  v14[152] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v82 = v29;
  v29(v27, v28, v26);

  v30 = sub_231E10E10();
  v31 = sub_231E11AF0();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v14[137];
  v83 = v14[136];
  v84 = v14[146];
  if (v32)
  {
    v34 = swift_slowAlloc();
    v85 = OUTLINED_FUNCTION_68();
    *v34 = 136446723;
    *(v34 + 4) = sub_231CB5000(v16, v18, &v85);
    *(v34 + 12) = 2085;
    *(v34 + 14) = sub_231CB5000(v81, v22, &v85);
    *(v34 + 22) = 1024;
    *(v34 + 24) = qos_class_self();
    _os_log_impl(&dword_231CAE000, v30, v31, "Processing message with unique id: %{public}s; domain id: %{sensitive}s; QoS: %u", v34, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_14();
  }

  v35 = *(v33 + 8);
  v35(v84, v83);
  v14[153] = v35;
  v14[118] = &unk_2846F07A0;
  v14[119] = sub_231CC7270();
  *(v14 + 920) = 1;
  v36 = sub_231E0FA80();
  v37 = __swift_destroy_boxed_opaque_existential_0(v14 + 115);
  if (v36)
  {
    v39 = v14[135];
    v40 = v14[130];
    v41 = v14[129];
    v42 = v14[128];
    v43 = v14[126];
    v44 = sub_231DC4F38(v37, v38);
    v14[154] = v44;
    v45 = *(v40 + 16);
    v14[155] = v45;
    v14[156] = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v39, v44, v41);
    v46 = swift_task_alloc();
    v14[157] = v46;
    v46[2] = v43;
    v46[3] = v42;
    v46[4] = v16;
    v46[5] = v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v14[158] = v47;
    *v47 = v48;
    v47[1] = sub_231D66120;
    OUTLINED_FUNCTION_107_1();

    return sub_231DC55B4(v49, v50, v51, v52, v53, v54);
  }

  else
  {
    v72 = v14[141];
    v73 = v14[136];

    v82(v72, v28, v73);
    v74 = sub_231E10E10();
    v75 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_79_3(v75))
    {
      *OUTLINED_FUNCTION_16_1() = 0;
      OUTLINED_FUNCTION_25_0(&dword_231CAE000, v76, v77, "Precomputation of Smart Replies is not enabled");
      OUTLINED_FUNCTION_30();
    }

    OUTLINED_FUNCTION_82_2();

    v78 = OUTLINED_FUNCTION_25();
    (v35)(v78);
    v79 = swift_task_alloc();
    v14[184] = v79;
    *v79 = v14;
    OUTLINED_FUNCTION_48_7(v79);
    OUTLINED_FUNCTION_107_1();

    return sub_231CD6BE0();
  }
}

void sub_231D66120()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    v7 = v3[135];
    v8 = v3[130];
    v9 = v3[129];
    v10 = *(v8 + 8);
    v3[159] = v10;
    v3[160] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v9);

    v11 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231D66268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  if (*(v16 + 1488))
  {
    OUTLINED_FUNCTION_93_5();
    v19 = *(v16 + 1136);

    v20 = OUTLINED_FUNCTION_40();
    v17(v20);

    v21 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_53_7();

    v22 = OUTLINED_FUNCTION_85();
    v23 = *(v16 + 1224);
    if (v22)
    {
      v24 = *(v16 + 1176);
      v64 = *(v16 + 1136);
      OUTLINED_FUNCTION_63_5();
      a13 = OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_53_0(4.8751e-34, a13, v25, v26, v27, v28, v29, v30, v31);
      OUTLINED_FUNCTION_57_6();

      *(v18 + 4) = v24;
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v32, v33, "Message not eligible for Smart Replies (already processed); id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();

      v34 = v64;
    }

    else
    {
      OUTLINED_FUNCTION_82_2();

      v34 = OUTLINED_FUNCTION_66_5();
    }

    v23(v34, v19);
    OUTLINED_FUNCTION_3_23();
    v61 = v50;
    v62 = v49;
    OUTLINED_FUNCTION_100_5();
    v63 = v52;
    v65 = v51;

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_37();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v65, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_49_8();
    v35 = *(v16 + 1024);
    v36 = *(v16 + 1008);
    v37(*(v16 + 1072));
    v38 = swift_task_alloc();
    *(v16 + 1288) = v38;
    *(v38 + 16) = v36;
    *(v38 + 24) = v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v16 + 1296) = v39;
    *v39 = v40;
    v39[1] = sub_231D664E0;
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_37();

    return sub_231DC55B4(v41, v42, v43, v44, v45, v46);
  }
}

void sub_231D664E0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    (*(v3 + 1272))(*(v3 + 1072), *(v3 + 1032));

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D66610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  if (*(v14 + 1489) == 1)
  {
    OUTLINED_FUNCTION_49_8();
    v46 = *(v14 + 1176);
    v17 = *(v14 + 1024);
    v18 = *(v14 + 1008);
    v19(*(v14 + 1064));
    v20 = swift_task_alloc();
    *(v14 + 1304) = v20;
    *(v20 + 16) = v18;
    *(v20 + 24) = v46;
    *(v20 + 40) = v17;
    v21 = swift_task_alloc();
    *(v14 + 1312) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FB0, &qword_231E1D3F0);
    OUTLINED_FUNCTION_73_4();
    *v21 = v22;
    v21[1] = sub_231D66878;
    OUTLINED_FUNCTION_35();

    return sub_231DC55B4(v23, v24, v25, v26, v27, v28);
  }

  else
  {
    OUTLINED_FUNCTION_93_5();
    v31 = *(v14 + 1144);

    v32 = OUTLINED_FUNCTION_40();
    v15(v32);

    v33 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_53_7();

    v34 = OUTLINED_FUNCTION_85();
    v35 = *(v14 + 1224);
    if (v34)
    {
      v36 = *(v14 + 1176);
      v47 = *(v14 + 1144);
      OUTLINED_FUNCTION_63_5();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_42_8(4.8751e-34, v37, v38, v39, v40);
      OUTLINED_FUNCTION_57_6();

      *(v16 + 4) = v36;
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v41, v42, "Message not eligible for Smart Replies; id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();

      v43 = v47;
    }

    else
    {
      OUTLINED_FUNCTION_82_2();

      v43 = OUTLINED_FUNCTION_66_5();
    }

    v35(v43, v31);
    v44 = swift_task_alloc();
    *(v14 + 1464) = v44;
    *v44 = v14;
    OUTLINED_FUNCTION_48_7(v44);
    OUTLINED_FUNCTION_35();

    return sub_231CD6BE0();
  }
}

void sub_231D66878()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    (*(v3 + 1272))(*(v3 + 1064), *(v3 + 1032));

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D669A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 1008);
  v16 = *(v14 + 992);
  *(v14 + 1320) = v16;
  *(v14 + 1328) = sub_231DF4938(v16, v15);
  OUTLINED_FUNCTION_25();
  sub_231D69930();
  *(v14 + 1336) = v17;
  if (v17)
  {
    v18 = v17;
    if (sub_231CC8398())
    {
      v19 = sub_231D689F4();
      v20 = *(v14 + 1240);
      v21 = *(v14 + 1232);
      v22 = *(v14 + 1048);
      v23 = *(v14 + 1032);
      v24 = *(v14 + 1024);
      v25 = *(v14 + 1008);
      *(v14 + 1000) = v19;
      v20(v22, v21, v23);
      v26 = swift_task_alloc();
      *(v14 + 1440) = v26;
      v26[2] = v14 + 1000;
      v26[3] = v24;
      v26[4] = v25;
      v27 = swift_task_alloc();
      *(v14 + 1448) = v27;
      *v27 = v14;
      OUTLINED_FUNCTION_10_14(v27);
      OUTLINED_FUNCTION_8_16();
    }

    else
    {
      v46 = *(v14 + 1240);
      v47 = *(v14 + 1232);
      v48 = *(v14 + 1032);
      v67 = *(v14 + 1024);
      v49 = *(v14 + 1016);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FB8, &qword_231E1D3F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_231E1C2A0;
      sub_231E11330();
      *(inited + 32) = sub_231E112D0();
      *(inited + 40) = v51;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = 1;
      *(inited + 80) = sub_231E11300();
      *(inited + 88) = v52;
      *(inited + 120) = MEMORY[0x277D83B88];
      *(inited + 96) = v49;
      *(inited + 128) = sub_231E112F0();
      *(inited + 136) = v53;
      v54 = getpid();
      v55 = MEMORY[0x277D849A8];
      *(inited + 168) = MEMORY[0x277D849A8];
      *(inited + 144) = v54;
      *(inited + 176) = sub_231E112E0();
      *(inited + 184) = v56;
      v57 = getpid();
      *(inited + 216) = v55;
      *(inited + 192) = v57;
      v58 = sub_231E11530();
      *(v14 + 1344) = v58;
      v59 = sub_231CC7218(9);
      *(v14 + 1490) = v59 & 1;
      v60 = *MEMORY[0x277D6F2B8];
      *(v14 + 1352) = *MEMORY[0x277D6F2B8];
      v61 = *MEMORY[0x277D6F2C0];
      *(v14 + 1360) = *MEMORY[0x277D6F2C0];
      if ((v59 & 1) == 0)
      {
        v60 = v61;
      }

      v62 = v60;
      v63 = OUTLINED_FUNCTION_57_6();
      v46(v63, v47, v48);
      v64 = swift_task_alloc();
      *(v14 + 1368) = v64;
      v64[2] = v67;
      v64[3] = v18;
      v64[4] = inited;
      v64[5] = v58;
      v65 = swift_task_alloc();
      *(v14 + 1376) = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FC0, &unk_231E1D410);
      OUTLINED_FUNCTION_73_4();
      *v65 = v66;
      v65[1] = sub_231D66DF0;
      v29 = "Message.SmartResponseGeneration";
      v32 = &unk_231E1D408;
      v28 = v14 + 960;
      v30 = 31;
      v31 = 2;
      v33 = v64;
    }

    return sub_231DC55B4(v28, v29, v30, v31, v32, v33);
  }

  else
  {
    v34 = *(v14 + 1208);
    v35 = *(v14 + 1200);
    v36 = *(v14 + 1152);
    v37 = *(v14 + 1088);

    v34(v36, v35, v37);
    v38 = sub_231E10E10();
    v39 = sub_231E11AE0();
    if (OUTLINED_FUNCTION_79_3(v39))
    {
      *OUTLINED_FUNCTION_16_1() = 0;
      OUTLINED_FUNCTION_25_0(&dword_231CAE000, v40, v41, "Could not build input context history for messages content");
      OUTLINED_FUNCTION_30();
    }

    v42 = *(v14 + 1224);

    v43 = OUTLINED_FUNCTION_25();
    v42(v43);
    v44 = swift_task_alloc();
    *(v14 + 1456) = v44;
    *v44 = v14;
    OUTLINED_FUNCTION_48_7(v44);

    return sub_231CD6BE0();
  }
}

uint64_t sub_231D66DF0()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1384) = v0;

  (*(v2 + 1272))(*(v2 + 1056), *(v2 + 1032));
  if (v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D66F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29();
  v16 = v14[120];
  v14[174] = v16;

  v17 = [v16 actionsResponse];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 responses];

    sub_231D6BD2C();
    v20 = sub_231E11870();
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v14[175] = v20;
  v21 = sub_231CBA138(v20);
  v14[176] = v21;
  if (v21)
  {
    if (v21 < 1)
    {
      __break(1u);
    }

    else
    {
      v22 = 0;
      while (1)
      {
        v14[177] = v22;
        v23 = v14[175];
        v24 = (v23 & 0xC000000000000001) != 0 ? MEMORY[0x23837D2A0]() : *(v23 + 8 * v22 + 32);
        v20 = v24;
        v14[178] = v24;
        if ([v24 requiresFollowUp])
        {
          break;
        }

        v22 = OUTLINED_FUNCTION_101_5();
        if (v25)
        {
          goto LABEL_13;
        }
      }

      v38 = swift_task_alloc();
      OUTLINED_FUNCTION_115_4(v38);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FC8, &qword_231E1D440);
      OUTLINED_FUNCTION_36_8(v39);
      v21 = OUTLINED_FUNCTION_32_7();
    }

    return MEMORY[0x282200920](v21);
  }

  else
  {
LABEL_13:
    OUTLINED_FUNCTION_55_5();
    v26 = [v20 repliesResponse];

    OUTLINED_FUNCTION_49_8();
    v27 = OUTLINED_FUNCTION_81_5();
    v28(v27);
    v29 = swift_task_alloc();
    v14[180] = v29;
    OUTLINED_FUNCTION_107_5(v29);
    v30 = swift_task_alloc();
    v14[181] = v30;
    *v30 = v14;
    OUTLINED_FUNCTION_10_14(v30);
    OUTLINED_FUNCTION_8_16();

    return sub_231DC55B4(v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_231D671C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29();
  v16 = *(v14 + 1432);

  while (1)
  {
    v17 = OUTLINED_FUNCTION_101_5();
    if (v18)
    {
      break;
    }

    *(v14 + 1416) = v17;
    v19 = *(v14 + 1400);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x23837D2A0]();
    }

    else
    {
      v20 = *(v19 + 8 * v17 + 32);
    }

    v16 = v20;
    *(v14 + 1424) = v20;
    if ([v20 requiresFollowUp])
    {
      v33 = swift_task_alloc();
      OUTLINED_FUNCTION_115_4(v33);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FC8, &qword_231E1D440);
      OUTLINED_FUNCTION_36_8(v34);
      v35 = OUTLINED_FUNCTION_32_7();

      return MEMORY[0x282200920](v35);
    }
  }

  OUTLINED_FUNCTION_55_5();
  v21 = [v16 repliesResponse];

  OUTLINED_FUNCTION_49_8();
  v22 = OUTLINED_FUNCTION_81_5();
  v23(v22);
  v24 = swift_task_alloc();
  *(v14 + 1440) = v24;
  OUTLINED_FUNCTION_107_5(v24);
  v25 = swift_task_alloc();
  *(v14 + 1448) = v25;
  *v25 = v14;
  OUTLINED_FUNCTION_10_14(v25);
  OUTLINED_FUNCTION_8_16();

  return sub_231DC55B4(v26, v27, v28, v29, v30, v31);
}

void sub_231D67350()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_97_3();
  }

  else
  {
    (*(v3 + 1272))(*(v3 + 1048), *(v3 + 1032));

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_97_3();

    MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_231D674A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  (*(v17 + 1208))(*(v17 + 1160), *(v17 + 1200), *(v17 + 1088));

  v19 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_53_7();

  v20 = OUTLINED_FUNCTION_85();
  v21 = *(v17 + 1336);
  v22 = *(v17 + 1224);
  if (v20)
  {
    v51 = *(v17 + 1224);
    v23 = *(v17 + 1176);
    v49 = *(v17 + 1160);
    OUTLINED_FUNCTION_63_5();
    a13 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_53_0(4.8751e-34, a13, v24, v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_57_6();

    *(v18 + 4) = v23;
    OUTLINED_FUNCTION_20_2(&dword_231CAE000, v31, v32, "Generated Smart Replies for messages; id: %{public}s");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    v51(v49, v16);
  }

  else
  {
    OUTLINED_FUNCTION_82_2();

    v33 = OUTLINED_FUNCTION_25();
    v22(v33);
  }

  OUTLINED_FUNCTION_3_23();
  v47 = v35;
  v48 = v34;
  OUTLINED_FUNCTION_100_5();
  v50 = v37;
  v52 = v36;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, v50, v52, a13, a14, a15, a16);
}

uint64_t sub_231D67674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_87_5();
  v18 = *v17;
  OUTLINED_FUNCTION_4();
  *v19 = v18;

  OUTLINED_FUNCTION_223();
  v33 = *(v16 + 1104);
  OUTLINED_FUNCTION_223();
  v34 = *(v20 + 1080);
  OUTLINED_FUNCTION_223();
  v35 = *(v21 + 1072);
  OUTLINED_FUNCTION_223();
  v36 = *(v22 + 1064);
  OUTLINED_FUNCTION_223();
  v37 = *(v23 + 1056);
  OUTLINED_FUNCTION_223();

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_37();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, v36, v37, a14, a15, a16);
}

uint64_t sub_231D678DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_87_5();
  v18 = *v17;
  OUTLINED_FUNCTION_4();
  *v19 = v18;

  OUTLINED_FUNCTION_223();
  v33 = *(v16 + 1104);
  OUTLINED_FUNCTION_223();
  v34 = *(v20 + 1080);
  OUTLINED_FUNCTION_223();
  v35 = *(v21 + 1072);
  OUTLINED_FUNCTION_223();
  v36 = *(v22 + 1064);
  OUTLINED_FUNCTION_223();
  v37 = *(v23 + 1056);
  OUTLINED_FUNCTION_223();

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_37();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, v36, v37, a14, a15, a16);
}

uint64_t sub_231D67B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_87_5();
  v18 = *v17;
  OUTLINED_FUNCTION_4();
  *v19 = v18;

  OUTLINED_FUNCTION_223();
  v33 = *(v16 + 1104);
  OUTLINED_FUNCTION_223();
  v34 = *(v20 + 1080);
  OUTLINED_FUNCTION_223();
  v35 = *(v21 + 1072);
  OUTLINED_FUNCTION_223();
  v36 = *(v22 + 1064);
  OUTLINED_FUNCTION_223();
  v37 = *(v23 + 1056);
  OUTLINED_FUNCTION_223();

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_37();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, v36, v37, a14, a15, a16);
}

uint64_t sub_231D67DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_51_0();
  a22 = v24;
  v27 = *(v24 + 1384);
  v28 = (v24 + 1360);
  v29 = *(v24 + 1208);
  v30 = *(v24 + 1200);
  v31 = *(v24 + 1104);
  v32 = *(v24 + 1088);
  if (*(v24 + 1490))
  {
    v28 = (v24 + 1352);
  }

  (v29)(v31, v30, v32);

  v33 = v27;
  v34 = sub_231E10E10();
  sub_231E11AD0();

  if (OUTLINED_FUNCTION_85())
  {
    v35 = *(v24 + 1384);
    v36 = *(v24 + 1184);
    v37 = *(v24 + 1176);
    v53 = *(v24 + 1104);
    v54 = *(v24 + 1224);
    v52 = *(v24 + 1088);
    v38 = OUTLINED_FUNCTION_98_0();
    swift_slowAlloc();
    v39 = OUTLINED_FUNCTION_28();
    a13 = v39;
    *v38 = 138412546;
    v40 = v35;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v41;
    *v29 = v41;
    *(v38 + 12) = 2082;
    v42 = sub_231CB5000(v37, v36, &a13);

    *(v38 + 14) = v42;
    OUTLINED_FUNCTION_43_10();
    _os_log_impl(v43, v44, v45, v46, v38, 0x16u);
    sub_231CE1118(v29, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_14();
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v54(v53, v52);
  }

  else
  {
    v47 = *(v24 + 1224);

    v48 = OUTLINED_FUNCTION_25();
    v47(v48);
  }

  v49 = swift_task_alloc();
  *(v24 + 1480) = v49;
  *v49 = v24;
  OUTLINED_FUNCTION_48_7(v49);
  OUTLINED_FUNCTION_37();

  return sub_231CD6BE0();
}

uint64_t sub_231D67FFC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D680E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v17 = *(v16 + 1384);

  OUTLINED_FUNCTION_3_23();
  v31 = v19;
  v32 = v18;
  OUTLINED_FUNCTION_100_5();
  v33 = v21;
  v34 = v20;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, v33, v34, a14, a15, a16);
}

uint64_t sub_231D681C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D681E4()
{
  OUTLINED_FUNCTION_18();
  if (sub_231E10180())
  {
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_231D682BC;
    v2 = OUTLINED_FUNCTION_27_1(*(v0 + 40));

    return sub_231DF8000(v2, v3);
  }

  else
  {
    **(v0 + 16) = 0;
    OUTLINED_FUNCTION_14_0();

    return v5();
  }
}

uint64_t sub_231D682BC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D683B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D683D0()
{
  OUTLINED_FUNCTION_29();
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_86_5(v1);

  return sub_231D14FBC(v3, v4);
}

uint64_t sub_231D68468()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_231D68564()
{
  OUTLINED_FUNCTION_118();
  sub_231E10400();
  OUTLINED_FUNCTION_24();
  v35 = v1;
  v36 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_4_1();
  v4 = v3 - v2;
  sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v33 = v6;
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v9 = v8 - v7;
  v10 = sub_231E10210();
  OUTLINED_FUNCTION_24();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v16 = v15 - v14;
  sub_231D6C800();
  v18 = v17;
  v20 = v19;

  v37 = v20;
  if (sub_231E101C0())
  {
    sub_231D6B094();
  }

  if (sub_231E101D0())
  {
    sub_231D6B094();
  }

  v21 = sub_231E10100();
  v23 = v22;
  objc_allocWithZone(MEMORY[0x277D6F370]);
  v24 = sub_231D6B778(v21, v23, v37, v18, MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], 0);
  if (v24)
  {
    v25 = v24;
    v26 = [objc_allocWithZone(MEMORY[0x277D6F460]) init];
    sub_231E10220();
    sub_231E10200();
    (*(v12 + 8))(v16, v10);
    v27 = sub_231E115F0();

    [v26 setText_];

    sub_231E101B0();
    v28 = sub_231E0F8C0();
    (*(v33 + 8))(v9, v34);
    [v26 setTimestamp_];

    sub_231E10000();
    v29 = sub_231E115F0();

    [v26 setEntryIdentifier_];

    sub_231E100E0();
    sub_231E103F0();
    (*(v35 + 8))(v4, v36);
    v30 = sub_231E115F0();

    [v26 setSenderIdentifier_];

    OUTLINED_FUNCTION_94_5();
    v31 = sub_231E11A50();

    [v26 setPrimaryRecipientIdentifiers_];

    OUTLINED_FUNCTION_94_5();
    v32 = sub_231E11A50();

    [v26 setSecondaryRecipientIdentifiers_];

    [v25 addEntry_];
    [objc_allocWithZone(MEMORY[0x277D6F228]) initWithTIInputContextHistory_];
  }

  else
  {
  }

  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_113();
}

id sub_231D689F4()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6F238]);
  result = sub_231D6B70C(&unk_2846F6638);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231D68A34()
{
  OUTLINED_FUNCTION_18();
  v0[4] = v1;
  v0[5] = v2;
  OUTLINED_FUNCTION_92_4(v3, v4);
  v5 = sub_231E11320();
  v0[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[7] = v6;
  v0[8] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D68AD8()
{
  OUTLINED_FUNCTION_29();
  (*(v0[7] + 104))(v0[8], *MEMORY[0x277D4B198], v0[6]);
  OUTLINED_FUNCTION_10_3(MEMORY[0x277D4B1A0]);
  v5 = v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_231D68BA8;
  v3 = OUTLINED_FUNCTION_27_1(v0[4]);

  return v5(v3);
}

uint64_t sub_231D68BA8()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *v8 = *v1;
  v7[10] = v0;

  v9 = v6[8];
  v10 = v6[7];
  v11 = v6[6];
  if (!v0)
  {
    v7[11] = v3;
    v7[12] = v5;
  }

  (*(v10 + 8))(v9, v11);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231D68D24()
{
  OUTLINED_FUNCTION_18();
  **(v0 + 16) = vextq_s8(*(v0 + 88), *(v0 + 88), 8uLL);

  OUTLINED_FUNCTION_14_0();

  return v1();
}

uint64_t sub_231D68D8C()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_231D68DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D68E00()
{
  OUTLINED_FUNCTION_29();
  v1 = **(v0 + 24);
  *(v0 + 40) = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_88_5(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_110_4(v4);

  return sub_231CE01C0();
}

uint64_t sub_231D68EA8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  OUTLINED_FUNCTION_14_0();

  return v5();
}

uint64_t sub_231D68FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D68FBC()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_231E105E0();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    **(v0 + 16) = 0;
    OUTLINED_FUNCTION_14_0();

    return v6();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_231D690A0;
    v3 = OUTLINED_FUNCTION_27_1(*(v0 + 40));

    return sub_231DF843C(v3, v4);
  }
}

uint64_t sub_231D690A0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D6918C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D691A4()
{
  OUTLINED_FUNCTION_29();
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_86_5(v1);

  return sub_231CC1D30(v3, v4);
}

uint64_t sub_231D6923C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D69328()
{
  OUTLINED_FUNCTION_18();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = sub_231E10E30();
  v0[7] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[8] = v7;
  v0[9] = OUTLINED_FUNCTION_55();
  v8 = sub_231E0F950();
  v0[10] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[11] = v9;
  v0[12] = OUTLINED_FUNCTION_69();
  v0[13] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231D6942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_47_0();
  v12 = sub_231E10520();
  *(v11 + 112) = v12;
  *(v11 + 120) = v13;
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = *(v11 + 96);
    v17 = *(v11 + 80);
    v18 = *(v11 + 88);
    sub_231E0F940();
    sub_231E0F8B0();
    v19 = *(v18 + 8);
    *(v11 + 128) = v19;
    *(v11 + 136) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v16, v17);
    v20 = sub_231DE8A04(0);
    v22 = v21;
    *(v11 + 144) = v21;
    v23 = sub_231D119A4();
    v24 = swift_task_alloc();
    *(v11 + 152) = v24;
    *v24 = v11;
    v24[1] = sub_231D695EC;
    v25 = OUTLINED_FUNCTION_27_1(*(v11 + 104));

    return sub_231DE9D80(v25, v14, v15, v20, v22, v26, v27, v23, a9, a10, a11);
  }

  else
  {
    **(v11 + 16) = MEMORY[0x277D84F90];

    OUTLINED_FUNCTION_14_0();

    return v29();
  }
}

uint64_t sub_231D695EC(uint64_t a1)
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v9 + 160) = v8;

  v10 = OUTLINED_FUNCTION_25();
  v5(v10);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_97_3();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231D69750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_56_0();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_59_1();
  a20 = v22;
  v26 = *(v22 + 64);
  v25 = *(v22 + 72);
  v27 = *(v22 + 56);
  v28 = sub_231DC4AB8();
  (*(v26 + 16))(v25, v28, v27);

  v29 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_53_7();

  v30 = OUTLINED_FUNCTION_85();
  v31 = *(v22 + 160);
  v32 = *(v22 + 120);
  if (v30)
  {
    v33 = *(v22 + 112);
    v34 = *(v22 + 64);
    a10 = *(v22 + 72);
    v35 = *(v22 + 56);
    v36 = OUTLINED_FUNCTION_98_0();
    v37 = swift_slowAlloc();
    a11 = v37;
    *v36 = 134218243;
    *(v36 + 4) = *(v31 + 16);

    *(v36 + 12) = 2085;
    v38 = sub_231CB5000(v33, v32, &a11);

    *(v36 + 14) = v38;
    OUTLINED_FUNCTION_43_10();
    _os_log_impl(v39, v40, v41, v42, v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v34 + 8))(a10, v35);
  }

  else
  {

    v43 = OUTLINED_FUNCTION_25();
    v44(v43);
  }

  **(v22 + 16) = *(v22 + 160);

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_35();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

void sub_231D69930()
{
  OUTLINED_FUNCTION_118();
  v1 = v0;
  OUTLINED_FUNCTION_95_5();
  v55 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  v7 = v6 - v5;
  v58 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v65 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  v57 = v11 - v10;
  v67 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v62 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v66 = v15 - v14;
  v16 = sub_231E106A0();
  OUTLINED_FUNCTION_24();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_1();
  v22 = v21 - v20;
  sub_231D6C800();
  v68 = v23;
  v25 = v24;
  v27 = v26;
  v28 = sub_231E10520();
  v30 = v29;
  objc_allocWithZone(MEMORY[0x277D6F370]);
  v59 = sub_231D6B778(v28, v30, v27, v68, v25, MEMORY[0x277D84FA0], 0);
  if (v59)
  {
    v31 = v3;
    v32 = *(v1 + 16);
    if (v32)
    {
      v34 = *(v18 + 16);
      v33 = v18 + 16;
      v35 = v1 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
      v63 = (v62 + 8);
      v64 = v34;
      v56 = v22;
      v54 = (v31 + 16);
      v60 = *(v33 + 56);
      v61 = (v33 - 8);
      do
      {
        v64(v22, v35, v16);
        sub_231E104F0();
        v36 = sub_231E103F0();
        v38 = v37;
        (*v63)(v66, v67);
        if (v38)
        {
          v39 = v16;
          v40 = sub_231E10640();
          v42 = v41;
          sub_231E105C0();
          v43 = v7;
          v44 = sub_231E0F8C0();
          (*(v65 + 8))(v57, v58);
          v45 = sub_231E10690();
          v46 = v40;
          v16 = v39;
          sub_231D6C72C(v46, v42, v44, v36, v38, v45, v47, v59);

          v7 = v43;
          v22 = v56;
        }

        else
        {
          v48 = sub_231DC4AB8();
          (*v54)(v7, v48, v55);
          v49 = sub_231E10E10();
          v50 = sub_231E11AC0();
          if (OUTLINED_FUNCTION_79_3(v50))
          {
            v51 = OUTLINED_FUNCTION_16_1();
            *v51 = 0;
            _os_log_impl(&dword_231CAE000, v49, v50, "Could not retrieve sender identifiers for a recent message - there will be skipped messages in the conversation history ", v51, 2u);
            OUTLINED_FUNCTION_30();
          }

          v52 = OUTLINED_FUNCTION_83();
          v53(v52);
        }

        (*v61)(v22, v16);
        v35 += v60;
        --v32;
      }

      while (v32);
    }

    [objc_allocWithZone(MEMORY[0x277D6F228]) initWithTIInputContextHistory_];
  }

  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D69DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D69DCC()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FD8, &qword_231E1D448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231E138E0;
  *(inited + 32) = v1;
  v3 = v1;
  sub_231D6BD70(inited);
  v0[12] = v4;
  OUTLINED_FUNCTION_10_3(MEMORY[0x277D4B1B0]);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_231D69EE4;
  OUTLINED_FUNCTION_27_1(v0[9]);
  OUTLINED_FUNCTION_97_3();

  return v14(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_231D69EE4(uint64_t a1)
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_21();
  v8 = v7;
  OUTLINED_FUNCTION_7_0();
  *v9 = v8;
  v10 = *v2;
  OUTLINED_FUNCTION_4();
  *v11 = v10;
  v8[14] = v1;

  if (!v1)
  {

    v8[15] = v4;
    v8[16] = v6;
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_97_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231D6A010()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_231D6A06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D6A084()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_10_3(MEMORY[0x277D4B1A8]);
  v7 = v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_88_5(v2);
  *v3 = v4;
  v3[1] = sub_231D6A148;
  v5 = OUTLINED_FUNCTION_27_1(*(v0 + 32));

  return v7(v5);
}

uint64_t sub_231D6A148(uint64_t a1)
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_21();
  v8 = v7;
  OUTLINED_FUNCTION_7_0();
  *v9 = v8;
  v10 = *v2;
  OUTLINED_FUNCTION_4();
  *v11 = v10;

  if (v1)
  {
    OUTLINED_FUNCTION_97_3();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    *(v8 + 56) = v4;
    *(v8 + 64) = v6;
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_97_3();

    return MEMORY[0x2822009F8](v21, v22, v23);
  }
}

uint64_t sub_231D6A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D6A2A8()
{
  OUTLINED_FUNCTION_29();
  v1 = **(v0 + 16);
  *(v0 + 40) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_88_5(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_110_4(v4);

    return sub_231CE0700();
  }

  else
  {
    OUTLINED_FUNCTION_14_0();

    return v7();
  }
}

uint64_t sub_231D6A388()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D6A46C()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_14_0();

  return v1();
}

void sub_231D6A4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_118();
  v75 = v23;
  v76 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v77 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v39 = OUTLINED_FUNCTION_47(v38);
  MEMORY[0x28223BE20](v39);
  v41 = &v71 - v40;
  v79 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v71 - v49;
  v51 = *v36;
  v78 = v34;
  v52 = sub_231D6AA3C(v34, v32, v51);
  if (!v54)
  {
LABEL_15:
    v66 = sub_231E119F0();
    (*(*(v66 - 8) + 16))(v41, v76, v66);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v66);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v68 = v78;
    v67[4] = v78;
    v67[5] = v32;
    v67[6] = a21;
    v67[7] = a22;
    v67[8] = a23;

    v69 = sub_231D6AE00(0, 0, v41, &unk_231E1D470, v67);
    sub_231CE1118(v41, &qword_27DD75180, &qword_231E13690);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = *v36;
    sub_231D6C1DC(v30, v28, v69, v68, v32, isUniquelyReferenced_nonNull_native);
    *v36 = v80;
    sub_231D621EC();

    goto LABEL_18;
  }

  v55 = v53;
  v74 = v54;
  if (v53)
  {
    if (v28)
    {
      v56 = v52 == v30 && v53 == v28;
      if (v56 || (sub_231E12100() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_12;
  }

  if (v28)
  {
LABEL_12:
    v73 = v55;
    v61 = sub_231DC4AB8();
    (*(v43 + 16))(v47, v61, v79);

    v62 = sub_231E10E10();
    v63 = sub_231E11AF0();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_98_0();
      v72 = v30;
      v65 = v64;
      v71 = OUTLINED_FUNCTION_68();
      v80 = v71;
      *v65 = 136315394;
      *(v65 + 4) = sub_231CB5000(v75, v26, &v80);
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_231CB5000(v78, v32, &v80);
      _os_log_impl(&dword_231CAE000, v62, v63, "Cancelling existing %s smart replies precomputation task with key: %s", v65, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      v30 = v72;
      OUTLINED_FUNCTION_30();
    }

    (*(v43 + 8))(v47, v79);
    sub_231E11A00();

    goto LABEL_15;
  }

LABEL_9:
  v57 = sub_231DC4AB8();
  (*(v43 + 16))(v50, v57, v79);

  v58 = sub_231E10E10();
  v59 = sub_231E11AF0();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_98_0();
    v80 = OUTLINED_FUNCTION_68();
    *v60 = 136315394;
    *(v60 + 4) = sub_231CB5000(v75, v26, &v80);
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_231CB5000(v78, v32, &v80);
    _os_log_impl(&dword_231CAE000, v58, v59, "Ignoring identical request for %s with key: %s", v60, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v43 + 8))(v50, v79);
  v69 = 0;
LABEL_18:
  *v77 = v69;
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D6AA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_231CE0CA4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 24 * v4);

  return v6;
}

uint64_t sub_231D6AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D6AAD0()
{
  OUTLINED_FUNCTION_47_0();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_231E11D70();

  MEMORY[0x23837CC20](v3, v2);
  sub_231E116A0();

  v0[7] = os_transaction_create();

  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_231D6AC40;

  return v6();
}

uint64_t sub_231D6AC40()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D6AD24()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0[6] + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  os_unfair_lock_lock(v3 + 6);
  sub_231D6CE6C();
  os_unfair_lock_unlock(v3 + 6);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231D6AE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_231CE6758(a3, v24 - v10);
  v12 = sub_231E119F0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_231CE1118(v11, &qword_27DD75180, &qword_231E13690);
  }

  else
  {
    sub_231E119E0();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_231E11920();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_231E116A0() + 32;
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

void sub_231D6B094()
{
  OUTLINED_FUNCTION_118();
  v50 = v1;
  OUTLINED_FUNCTION_95_5();
  v52 = sub_231E0F660();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v49 = v5 - v6;
  v8 = MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_91_5(v8, v9, v10, v11, v12, v13, v14, v15, v44);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_1();
  v25 = v24 - v23;
  v56[2] = MEMORY[0x277D84FA0];
  v26 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
  v27 = *(v0 + 16);
  if (v27)
  {
    v29 = *(v21 + 16);
    v28 = v21 + 16;
    v30 = v0 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v51 = (v3 + 8);
    v54 = *(v28 + 56);
    v55 = v29;
    v44 = v3 + 32;
    v45 = v26;
    v46 = (v3 + 16);
    v53 = (v28 - 8);
    v47 = v28;
    v48 = v19;
    do
    {
      v55(v25, v30, v19);
      v31 = sub_231E103F0();
      if (v32)
      {
        v33 = v31;
        v34 = v32;

        sub_231D42148(v56, v33, v34);

        sub_231E0F650();
        sub_231E103E0();
        if (v35)
        {
          v36 = sub_231E115F0();

          v37 = [v45 personNameComponentsFromString_];

          if (v37)
          {
            sub_231E0F640();

            (*v51)(v18, v52);
            OUTLINED_FUNCTION_94_5();
            v38();
          }
        }

        v39 = v52;
        (*v46)(v49, v18, v52);
        v40 = v50;
        swift_isUniquelyReferenced_nonNull_native();
        v56[0] = *v40;
        v41 = OUTLINED_FUNCTION_83();
        sub_231D6C068(v41, v42, v34, v43);

        *v40 = v56[0];
        (*v51)(v18, v39);
        v19 = v48;
      }

      (*v53)(v25, v19);
      v30 += v54;
      --v27;
    }

    while (v27);
  }

  else
  {
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D6B3F0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_231D6B448()
{
  sub_231D6B3F0();

  return swift_deallocClassInstance();
}

uint64_t sub_231D6B4A0(uint64_t a1, int a2)
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

uint64_t sub_231D6B4E0(uint64_t result, int a2, int a3)
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

uint64_t sub_231D6B540()
{
  OUTLINED_FUNCTION_29();
  v0 = sub_231E106A0();
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_44_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_38(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_24_8(v2);

  return sub_231D653F8();
}

uint64_t sub_231D6B5F8()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_32(v1);
  OUTLINED_FUNCTION_94_5();

  return sub_231D656B4(v3, v4, v5);
}

uint64_t sub_231D6B680()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_108_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_13(v1);

  return sub_231D658EC();
}

id sub_231D6B70C(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_231E11850();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithResponseTexts_];

  return v3;
}

id sub_231D6B778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v13 = sub_231E115F0();

    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if (a3)
    {
LABEL_3:
      sub_231E0F660();
      v14 = sub_231E11520();

      if (a4)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v14 = 0;
  if (a4)
  {
LABEL_4:
    v15 = sub_231E11A50();

    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v15 = 0;
  if (a5)
  {
LABEL_5:
    v16 = sub_231E11A50();

    if (a6)
    {
      goto LABEL_6;
    }

LABEL_12:
    v17 = 0;
    if (a7)
    {
      goto LABEL_7;
    }

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

LABEL_11:
  v16 = 0;
  if (!a6)
  {
    goto LABEL_12;
  }

LABEL_6:
  v17 = sub_231E11A50();

  if (!a7)
  {
    goto LABEL_13;
  }

LABEL_7:
  v18 = sub_231E11520();

LABEL_14:
  v19 = [v7 initWithThreadIdentifier:v13 participantsIDtoNamesMap:v14 firstPersonIDs:v15 primaryRecipients:v16 secondaryRecipients:v17 infoDict:v18];

  return v19;
}

uint64_t sub_231D6B930(uint64_t a1)
{
  v2 = sub_231D6D468(&qword_27DD75018, &unk_231E1D640);
  v3 = sub_231D6D468(&qword_27DD75020, &unk_231E1D5E0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_231D6B9C8(uint64_t a1)
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_17(v2);
  OUTLINED_FUNCTION_106_5();
  OUTLINED_FUNCTION_97_3();

  return sub_231D68FA0(v4, v5, v6, v7, v8);
}

uint64_t sub_231D6BA58()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_116_5();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_29_0(v2);

  return sub_231D6918C(v4, v5, v0);
}

uint64_t sub_231D6BAE8(uint64_t a1)
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_17(v2);
  OUTLINED_FUNCTION_106_5();
  OUTLINED_FUNCTION_97_3();

  return sub_231D69328();
}

uint64_t sub_231D6BB78(uint64_t a1)
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_17(v2);
  OUTLINED_FUNCTION_106_5();
  OUTLINED_FUNCTION_97_3();

  return sub_231D69DB0(v4, v5, v6, v7, v8);
}

uint64_t sub_231D6BC08()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_108_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return sub_231D6A290(v3, v4, v5, v6);
}

uint64_t sub_231D6BC94()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6_17(v3);

  return sub_231D6A06C(v5, v6, v7, v1);
}

unint64_t sub_231D6BD2C()
{
  result = qword_27DD74FD0;
  if (!qword_27DD74FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD74FD0);
  }

  return result;
}

void sub_231D6BD70(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FE0, &qword_231E1D450), v2 = sub_231E11D50(), v3 = v2, (v24 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v22 = v1;
    v23 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v23 + 8 * v4++);
      sub_231E11620();
      sub_231E12220();
      v25 = v6;
      sub_231E116E0();
      v7 = sub_231E12250();

      v8 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        v13 = sub_231E11620();
        v15 = v14;
        if (v13 == sub_231E11620() && v15 == v16)
        {

          goto LABEL_17;
        }

        v18 = sub_231E12100();

        if (v18)
        {

          goto LABEL_17;
        }

        v7 = v9 + 1;
      }

      *(v5 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v25;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v21;
LABEL_17:
      v1 = v22;
      if (v4 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_231D6BF74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_231CE0CA4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FF0, &unk_231E1D478);
  sub_231E11EA0();

  v7 = *(*(v9 + 56) + 24 * v6);
  sub_231E11EB0();
  *v3 = v9;
  return v7;
}

void sub_231D6C068(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_231CE0CA4(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FE8, &unk_231E1D458);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_231CE0CA4(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_231E12160();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = sub_231E0F660();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v12;

    v20(v22, a1, v21);
  }

  else
  {
    sub_231D6C348(v12, a2, a3, a1, v16);
  }
}

void sub_231D6C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_231CE0CA4(a4, a5);
  if (__OFADD__(v13[2], (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FF0, &unk_231E1D478);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_231CE0CA4(a4, a5);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    sub_231E12160();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v7;
  if (v17)
  {
    v21 = (v20[7] + 24 * v16);
    *v21 = a1;
    v21[1] = a2;
    v21[2] = a3;
  }

  else
  {
    sub_231D6C3F8(v16, a4, a5, a1, a2, a3, v20);
  }
}

uint64_t sub_231D6C348(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_231E0F660();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_231D6C3F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_231D6C44C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_231E12220();
  sub_231E116E0();
  v6 = sub_231E12250();
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
    if (v10 || (sub_231E12100() & 1) != 0)
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
    sub_231D42658();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_231D6C574(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_231D6C574(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_231E11CF0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_231E12220();

        sub_231E116E0();
        v10 = sub_231E12250();

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

void sub_231D6C72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_231E115F0();

  v11 = sub_231E115F0();

  v12 = sub_231E115F0();

  [a8 addTextEntry:v10 timestamp:a3 senderIdentifier:v11 entryIdentifier:v12];
}

void sub_231D6C800()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  OUTLINED_FUNCTION_95_5();
  v3 = sub_231E0F660();
  OUTLINED_FUNCTION_24();
  v64 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v62 = v6 - v7;
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_91_5(v9, v10, v11, v12, v13, v14, v15, v16, v59[0]);
  MEMORY[0x28223BE20](v17);
  v63 = v59 - v18;
  sub_231E10400();
  OUTLINED_FUNCTION_24();
  v66 = v20;
  v67 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v61 = (v21 - v22);
  MEMORY[0x28223BE20](v23);
  v25 = v59 - v24;
  v26 = v2(0);
  OUTLINED_FUNCTION_24();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v31 = v59 - v30;
  (*(v28 + 16))(v59 - v30, v0, v26);
  OUTLINED_FUNCTION_102_3();
  v32 = sub_231E10A50();
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v68 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
  v65 = v3;
  v71 = sub_231E11530();
  OUTLINED_FUNCTION_102_3();
  sub_231E10A60();
  sub_231D6B094();
  v35 = v34;

  v70[2] = v35;
  v69 = v33;
  v36 = *(v33 + 16);
  if (v36)
  {
    v37 = (v69 + 40);
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;

      sub_231D6C44C(v38, v39);

      v37 += 2;
      --v36;
    }

    while (v36);
  }

  OUTLINED_FUNCTION_102_3();
  sub_231E10A40();
  v40 = sub_231E103F0();
  v42 = v41;
  v43 = v67;
  v44 = *(v66 + 8);
  v44(v25, v67);
  if (v42)
  {

    v66 = v40;
    v60 = v42;
    sub_231D42148(v70, v40, v42);

    v45 = v63;
    sub_231E0F650();
    v46 = v61;
    OUTLINED_FUNCTION_102_3();
    sub_231E10A40();
    (*(v28 + 8))(v31, v26);
    sub_231E103E0();
    v48 = v47;
    v44(v46, v43);
    v50 = v64;
    v49 = v65;
    v51 = v68;
    if (v48)
    {
      v52 = sub_231E115F0();

      v53 = [v51 personNameComponentsFromString_];

      if (v53)
      {
        sub_231E0F640();

        (*(v50 + 8))(v45, v49);
        v54 = OUTLINED_FUNCTION_83();
        v55(v54);
      }
    }

    v56 = v62;
    (*(v50 + 16))(v62, v45, v49);
    v57 = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70[0] = v57;
    sub_231D6C068(v56, v66, v60, isUniquelyReferenced_nonNull_native);

    v71 = v70[0];
    (*(v50 + 8))(v45, v49);
  }

  else
  {
    (*(v28 + 8))(v31, v26);
    v51 = v68;
  }

  sub_231D3FF4C(v69);

  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D6CD28()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_32(v1);
  OUTLINED_FUNCTION_97_3();

  return sub_231D6AAB4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_231D6CDD0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_116_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v1[1] = sub_231CC6BF8;
  v3 = OUTLINED_FUNCTION_23_9();

  return v4(v3);
}

uint64_t sub_231D6CE6C()
{
  v1 = sub_231D6BF74(*(v0 + 16), *(v0 + 24));
  sub_231D6CEB0(v1, v2, v3);
  return sub_231D621EC();
}

uint64_t sub_231D6CEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_24();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + v8, v5 | 7);
}

uint64_t sub_231D6CFB4()
{
  OUTLINED_FUNCTION_29();
  v0 = sub_231E10340();
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_44_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_38(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_24_8(v2);

  return sub_231D62AE4();
}

uint64_t sub_231D6D06C()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_32(v1);
  OUTLINED_FUNCTION_94_5();

  return sub_231D62DF8(v3, v4, v5);
}

uint64_t sub_231D6D0F4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_108_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_13(v1);

  return sub_231D63034();
}

uint64_t sub_231D6D1A8(uint64_t a1)
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_17(v2);
  OUTLINED_FUNCTION_106_5();
  OUTLINED_FUNCTION_97_3();

  return sub_231D681C8(v4, v5, v6, v7, v8);
}

uint64_t sub_231D6D238()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_116_5();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_29_0(v2);

  return sub_231D683B8(v4, v5, v0);
}

uint64_t sub_231D6D2C8()
{
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);

  return sub_231D68A34();
}

uint64_t sub_231D6D360()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_108_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return sub_231D68DE8(v3, v4, v5, v6);
}

uint64_t sub_231D6D468(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TCTextCompositionAssistantResponseType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_8(uint64_t a1)
{

  return MEMORY[0x282200918](v2 + 16, 0, a1, &unk_231E1D438, v1, v2 + 976);
}

unint64_t OUTLINED_FUNCTION_42_8(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_231CB5000(v6, v5, va);
}

uint64_t OUTLINED_FUNCTION_55_5()
{
}

uint64_t OUTLINED_FUNCTION_58_7(uint64_t a1)
{
  *(v1 + 64) = a1;
  *(a1 + 16) = v2;
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_62_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_63_5()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_69_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_76_3()
{

  return sub_231E119F0();
}

uint64_t OUTLINED_FUNCTION_77_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(v10 + 32) = a1;
  *(a1 + 16) = a9;
  *(a1 + 32) = v9;

  return swift_task_alloc();
}

BOOL OUTLINED_FUNCTION_79_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_81_5()
{
  result = *(v1 + 1048);
  *(v1 + 1000) = v0;
  return result;
}

__n128 OUTLINED_FUNCTION_89_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v11 + 40) = a1;
  result = a10;
  *(a1 + 16) = a10.n128_u64[0];
  *(a1 + 24) = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_92_4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return 0;
}

void *OUTLINED_FUNCTION_107_5(void *result)
{
  result[2] = v2;
  result[3] = v1;
  result[4] = v3;
  return result;
}

void *OUTLINED_FUNCTION_115_4(void *result)
{
  *(v3 + 1432) = result;
  result[2] = v4;
  result[3] = v1;
  result[4] = v2;
  return result;
}

__n128 OUTLINED_FUNCTION_117_4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v10 + 56) = a1;
  result = a10;
  a1[1] = a10;
  return result;
}

uint64_t sub_231D6DA98(uint64_t a1)
{
  v1 = sub_231E10580();
  v3 = v2;
  v4 = sub_231CC7C18();
  if (v3)
  {
    if (v1 == *v4 && v3 == v4[1])
    {

      v7 = 0;
    }

    else
    {
      v6 = sub_231E12100();

      v7 = v6 ^ 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_231D6DB14()
{

  OUTLINED_FUNCTION_27();

  return swift_deallocClassInstance();
}

uint64_t sub_231D6DB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 16) = a5;
  v6 = OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D6DB78()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  type metadata accessor for TaskReference();
  OUTLINED_FUNCTION_27();
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = 0;
  OUTLINED_FUNCTION_27();
  v5 = swift_allocObject();
  *(v0 + 64) = v5;
  *(v5 + 16) = 0;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = *(v0 + 24);
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v7;
  *(v6 + 48) = v3;
  *(v6 + 56) = v2;
  *(v6 + 64) = v1;
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_231D6DCC4;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_231D6DCC4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D6DDC4()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_231D6DE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v46 = a6;
  v47 = a7;
  v42 = a4;
  v43 = a5;
  v44 = a3;
  v45 = a2;
  v40 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75028, &unk_231E1D738);
  OUTLINED_FUNCTION_24();
  v12 = v11;
  v48 = *(v13 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v37 - v18;
  v38 = &v37 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75030, &qword_231E1D748);
  OUTLINED_FUNCTION_27();
  v20 = swift_allocObject();
  *(v20 + 20) = 0;
  *(v20 + 16) = 0;
  v21 = v20;
  v41 = sub_231E119F0();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v41);
  OUTLINED_FUNCTION_27();
  v22 = swift_allocObject();
  swift_weakInit();
  v39 = *(v12 + 16);
  v39(v16, a1, v10);
  v23 = *(v12 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v43;
  *(v24 + 4) = v42;
  *(v24 + 5) = v25;
  *(v24 + 6) = v22;
  *(v24 + 7) = v21;
  v26 = *(v12 + 32);
  v27 = v10;
  v26(&v24[(v23 + 64) & ~v23], v16, v10);

  v28 = v38;
  v29 = sub_231CEB77C(0, 0, v38, &unk_231E1D758, v24);
  *(v45 + 16) = v29;

  sub_231E11990();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v41);
  OUTLINED_FUNCTION_27();
  v30 = swift_allocObject();
  swift_weakInit();
  v39(v16, v40, v10);
  v31 = (v23 + 72) & ~v23;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = a8;
  v33 = v46;
  *(v32 + 40) = v30;
  *(v32 + 48) = v33;
  v34 = v47;
  *(v32 + 56) = v47;
  *(v32 + 64) = v21;
  v26((v32 + v31), v16, v27);
  sub_231D6ECF0(v33, v34);
  v35 = sub_231CEB77C(0, 0, v28, &unk_231E1D768, v32);
  *(v44 + 16) = v35;
}

_BYTE *sub_231D6E1B4(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75028, &unk_231E1D738);
    result = sub_231E11940();
    *v1 = 1;
  }

  return result;
}

uint64_t sub_231D6E208()
{
  OUTLINED_FUNCTION_18();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_231D6E2F4;

  return v7();
}

uint64_t sub_231D6E2F4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D6E3D8()
{
  OUTLINED_FUNCTION_50_0();
  sub_231E11A30();
  OUTLINED_FUNCTION_10_15();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 16))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
      sub_231E11A00();
    }
  }

  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock((v4 + 20));
  sub_231D6ED2C((v4 + 16));
  os_unfair_lock_unlock((v4 + 20));

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231D6E518()
{
  OUTLINED_FUNCTION_50_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75028, &unk_231E1D738);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_9_13();

  return sub_231D6E208();
}

uint64_t sub_231D6E604()
{
  OUTLINED_FUNCTION_18();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[6] = v5;
  v0[5] = v6;
  v7 = sub_231E10E30();
  v0[11] = v7;
  v0[12] = *(v7 - 8);
  v0[13] = swift_task_alloc();
  v8 = sub_231E11E70();
  v0[14] = v8;
  v0[15] = *(v8 - 8);
  v0[16] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D6E720(uint64_t a1)
{
  sub_231E12280();
  sub_231E12190();
  v2 = swift_task_alloc();
  *(v1 + 136) = v2;
  *v2 = v1;
  v2[1] = sub_231D6E7F8;
  v3 = OUTLINED_FUNCTION_25();

  return sub_231CB4540(v3, v4, 0, 0, 1);
}

uint64_t sub_231D6E7F8()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *(v4 + 144) = v0;

  v5 = OUTLINED_FUNCTION_25();
  v6(v5);
  if (v0)
  {
    v7 = sub_231D6EB88;
  }

  else
  {
    v7 = sub_231D6E958;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_231D6E958()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[18];
  sub_231E11A30();
  if (v1)
  {

    OUTLINED_FUNCTION_19();
  }

  else
  {
    OUTLINED_FUNCTION_10_15();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
        sub_231E11A00();
      }
    }

    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v8 = sub_231CB4EEC();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_231E10E10();
    v10 = sub_231E11AD0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_231CAE000, v9, v10, "Task timed out", v11, 2u);
      MEMORY[0x23837E1D0](v11, -1, -1);
    }

    v12 = v0[7];

    v13 = OUTLINED_FUNCTION_25();
    v15 = v14(v13);
    if (v12)
    {
      (v0[7])(v15);
    }

    v17 = v0[9];
    v16 = v0[10];
    *(swift_task_alloc() + 16) = v16;
    os_unfair_lock_lock((v17 + 20));
    sub_231D6ED00((v17 + 16));
    os_unfair_lock_unlock((v17 + 20));

    OUTLINED_FUNCTION_19();
  }

  return v2();
}

uint64_t sub_231D6EB88()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_231D6EBF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75028, &unk_231E1D738);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231CBFF60;
  OUTLINED_FUNCTION_9_13();

  return sub_231D6E604();
}

uint64_t sub_231D6ECF0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_15()
{

  return swift_beginAccess();
}

uint64_t sub_231D6ED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v6 = sub_231E0F950();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  v5[11] = swift_task_alloc();
  v7 = sub_231E10370();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D6EEC8, 0, 0);
}

uint64_t sub_231D6EEC8(uint64_t a1)
{
  if (sub_231D6DA98(a1))
  {
    v2 = sub_231D56880(0, v1[6]);
    if (v2)
    {
      v3 = 13;
      v4 = 42;
      goto LABEL_21;
    }
  }

  else
  {
    v6 = v1[11];
    v5 = v1[12];
    sub_231E104E0();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v5);
    v8 = v1[15];
    v9 = v1[12];
    v10 = v1[13];
    v11 = v1[11];
    if (EnumTagSinglePayload == 1)
    {
      v12 = *MEMORY[0x277D422D8];
      v13 = *(v10 + 104);
      v13(v8, v12, v1[12]);
      if (__swift_getEnumTagSinglePayload(v11, 1, v9) != 1)
      {
        sub_231D6F4D8(v1[11]);
      }
    }

    else
    {
      (*(v10 + 32))(v8, v1[11], v1[12]);
      v12 = *MEMORY[0x277D422D8];
      v13 = *(v10 + 104);
    }

    v15 = v1[14];
    v14 = v1[15];
    v16 = v1[12];
    v17 = v1[13];
    v13(v15, v12, v16);
    sub_231D6F540();
    sub_231E117E0();
    sub_231E117E0();
    v18 = *(v17 + 8);
    v18(v15, v16);
    v18(v14, v16);
    if (v1[2] != v1[3])
    {
      v3 = 13;
      v4 = 33;
      goto LABEL_21;
    }

    if (sub_231D56880(0, v1[6]) || (v19 = v1[5], v20 = v19[3], v21 = v19[4], __swift_project_boxed_opaque_existential_0(v19, v20), v2 = (*(v21 + 8))(v20, v21), (v2 & 1) == 0))
    {
      sub_231D70008();

      v22 = sub_231D70048();

      if ((v22 & 1) == 0)
      {
        v3 = 13;
        v4 = 58;
        goto LABEL_21;
      }
    }
  }

  v23 = v1[4];
  v4 = 0;
  v3 = 255;
  if ((sub_231D6DA98(v2) & 1) == 0 || !v23)
  {
LABEL_21:

    v32 = v1[1];

    return v32(v4, 0, v3);
  }

  v24 = v1[4];

  v25 = sub_231E10580();
  v1[16] = v26;
  if (!v26)
  {

    v4 = 0;
    v3 = 255;
    goto LABEL_21;
  }

  v27 = v25;
  v28 = v26;
  sub_231DB0818(v25);
  v33 = (*(*v24 + 136) + **(*v24 + 136));
  v29 = swift_task_alloc();
  v1[17] = v29;
  *v29 = v1;
  v29[1] = sub_231D6F2B0;
  v30 = v1[10];

  return v33(v27, v28, v30, 0);
}

uint64_t sub_231D6F2B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 72);
  v7 = *(*v3 + 64);
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  *(v4 + 160) = a3;

  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](sub_231D6F430, 0, 0);
}

uint64_t sub_231D6F430()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_231D6F4D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231D6F540()
{
  result = qword_2814CB020;
  if (!qword_2814CB020)
  {
    sub_231E10370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CB020);
  }

  return result;
}

unint64_t sub_231D6F598(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_231D6F5AC()
{
  result = qword_27DD75038;
  if (!qword_27DD75038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75038);
  }

  return result;
}

unint64_t sub_231D6F600@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231D6F598(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SmartRepliesStatus(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SmartRepliesStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_231D6F790(uint64_t a1, uint64_t a2)
{
  v17 = sub_231CE11D8();
  v16 = MEMORY[0x277D837D0];
  v2 = sub_231E11C40();
  OUTLINED_FUNCTION_0_27(v2, v3, v4, v5, v16, v17, v17, v17, 0, 0xE000000000000000, 0x3B2B3B534D53, 0xE600000000000000, v2, v3);

  OUTLINED_FUNCTION_0_27(v6, v7, v8, v9);

  v14 = OUTLINED_FUNCTION_0_27(v10, v11, v12, v13);

  return v14;
}

uint64_t sub_231D6F8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75040, &qword_231E1D838);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v17[0] = a1;
  v17[1] = a2;
  sub_231E0FBB0();
  sub_231D6FA2C();
  sub_231D6FA80();
  v8 = sub_231E11570();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  v15 = MEMORY[0x23837CBB0](v8, v10, v12, v14);

  return v15;
}

unint64_t sub_231D6FA2C()
{
  result = qword_2814CAFE0;
  if (!qword_2814CAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CAFE0);
  }

  return result;
}

unint64_t sub_231D6FA80()
{
  result = qword_2814CBC38;
  if (!qword_2814CBC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD75040, &qword_231E1D838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBC38);
  }

  return result;
}

void sub_231D6FAE4(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = objc_autoreleasePoolPush();
  sub_231D6FB3C(v2, a1 & 1, a2);

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_231D6FB3C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v45 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = v44 - v11;
  sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v46 = v14;
  v47 = v13;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v44 - v18;
  v20 = [a1 attributeSet];
  sub_231CC33AC(v20, &selRef_transcribedTextContent);
  if ((a2 & 1) != 0 && !v21)
  {
    sub_231CC33AC(v20, &selRef_contentSnippet);
  }

  sub_231CC33AC(v20, &selRef_uniqueIdentifier);
  if (!v22)
  {

    sub_231CB4EEC();
    OUTLINED_FUNCTION_0_28();
    v30(v19);
    v31 = sub_231E10E10();
    v32 = sub_231E11AE0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      OUTLINED_FUNCTION_2_23(&dword_231CAE000, v34, v35, "No unique identifier while creating audio transcript entity");
      MEMORY[0x23837E1D0](v33, -1, -1);
    }

    v10[1](v19, v12);
    goto LABEL_13;
  }

  v23 = [v20 contentCreationDate];
  if (!v23)
  {

    sub_231CB4EEC();
    OUTLINED_FUNCTION_0_28();
    v36(v17);
    v37 = sub_231E10E10();
    v38 = sub_231E11AE0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      OUTLINED_FUNCTION_2_23(&dword_231CAE000, v40, v41, "No date while creating audio transcript entity");
      MEMORY[0x23837E1D0](v39, -1, -1);
    }

    v10[1](v17, v12);
LABEL_13:
    v29 = 1;
    v28 = v48;
    goto LABEL_14;
  }

  v24 = v23;
  sub_231E0F910();

  v25 = sub_231CC33AC(v20, &selRef_domainIdentifier);
  v46 = v26;
  v47 = v25;
  v44[1] = sub_231CC33AC(v20, &selRef_bundleID);
  v27 = v45;
  (*(v6 + 16))(v10, v12, v45);
  [v20 protectionClass];
  v28 = v48;
  sub_231E10AC0();

  (*(v6 + 8))(v12, v27);
  v29 = 0;
LABEL_14:
  v42 = sub_231E10AE0();
  return __swift_storeEnumTagSinglePayload(v28, v29, 1, v42);
}

id sub_231D6FF64()
{
  type metadata accessor for FocusModeState();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(PSUModeConfigurationService) init];
  *(v0 + 16) = result;
  qword_2814CE648 = v0;
  return result;
}

uint64_t sub_231D6FFB8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(PSUModeConfigurationService) init];
  return v0;
}

uint64_t *sub_231D70008()
{
  if (qword_2814CD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_29(&qword_2814CD6F0);
  }

  return &qword_2814CE648;
}

id sub_231D70048()
{
  v37 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = [BiomeLibrary() UserFocus];
  swift_unknownObjectRelease();
  v16 = [v15 ComputedMode];
  swift_unknownObjectRelease();
  v17 = sub_231E115F0();
  v18 = sub_231E0F950();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
  v19 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v20 = sub_231D7076C(v13, v11, 1, 1, 0);
  v21 = [v16 publisherWithUseCase:v17 options:v20];

  v42 = sub_231D70594;
  v43 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_231D2F010;
  v41 = &block_descriptor_7;
  v22 = _Block_copy(&aBlock);
  v42 = sub_231D708C0;
  v43 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_231D70A18;
  v41 = &block_descriptor_3_0;
  v23 = _Block_copy(&aBlock);

  v24 = [v21 sinkWithCompletion:v22 receiveInput:v23];
  _Block_release(v23);
  _Block_release(v22);

  swift_beginAccess();
  if (*(v14 + 24))
  {
    v25 = *(v36 + 16);

    v26 = sub_231E115F0();

    v27 = [v25 doesModeHaveIntelligentBreakthroughEnabled_];

    v28 = sub_231DC4DC0();
    v29 = v37;
    (*(v1 + 16))(v7, v28, v37);
    v30 = sub_231E10E10();
    v31 = sub_231E11AC0();
    if (!os_log_type_enabled(v30, v31))
    {
      v5 = v7;
      goto LABEL_9;
    }

    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = v27;
    _os_log_impl(&dword_231CAE000, v30, v31, "Is in mode with intelligent breakthrough enabled: %{BOOL}d", v32, 8u);
    v5 = v7;
  }

  else
  {
    v33 = sub_231DC4DC0();
    v29 = v37;
    (*(v1 + 16))(v5, v33, v37);
    v30 = sub_231E10E10();
    v34 = sub_231E11AC0();
    if (!os_log_type_enabled(v30, v34))
    {
      v27 = 0;
      goto LABEL_9;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_231CAE000, v30, v34, "Not in a mode", v32, 2u);
    v27 = 0;
  }

  MEMORY[0x23837E1D0](v32, -1, -1);
LABEL_9:

  (*(v1 + 8))(v5, v29);

  return v27;
}

id sub_231D70594(void *a1)
{
  v2 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v9 = result;
    v10 = sub_231DC4DC0();
    (*(v4 + 16))(v7, v10, v2);
    v11 = v9;
    v12 = sub_231E10E10();
    v13 = sub_231E11AD0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v11;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_231CAE000, v12, v13, "Could not scan computed mode stream: %@", v14, 0xCu);
      sub_231CC340C(v15);
      MEMORY[0x23837E1D0](v15, -1, -1);
      MEMORY[0x23837E1D0](v14, -1, -1);
    }

    else
    {
      v16 = v12;
      v12 = v11;
    }

    return (*(v4 + 8))(v7, v2);
  }

  return result;
}

id sub_231D7076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_231E0F950();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_231E0F8C0();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_231E0F8C0();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_231D708C0(void *a1)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 starting];

    if (v5)
    {
      v6 = [a1 eventBody];
      if (v6)
      {
        v7 = sub_231D709A0(v6);
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      swift_beginAccess();
      *(v1 + 16) = v7;
      *(v1 + 24) = v9;
    }
  }
}

uint64_t sub_231D709A0(void *a1)
{
  v2 = [a1 mode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231D70A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = sub_231E0F950();
  v4[5] = v5;
  OUTLINED_FUNCTION_6(v5);
  v4[6] = v6;
  v4[7] = swift_task_alloc();
  v7 = sub_231E107F0();
  v4[8] = v7;
  OUTLINED_FUNCTION_6(v7);
  v4[9] = v8;
  v4[10] = swift_task_alloc();
  v9 = sub_231E10210();
  v4[11] = v9;
  OUTLINED_FUNCTION_6(v9);
  v4[12] = v10;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D70B80, 0, 0);
}

uint64_t sub_231D70B80()
{
  if (sub_231D56880(1, v0[3]))
  {
    v1 = 13;
    v2 = 39;
LABEL_24:

    v30 = v0[1];

    return v30(v2, 0, v1);
  }

  if ((sub_231CE2244() & 1) == 0)
  {
    v3 = sub_231E10130();
    if (v3 != 2 && (v3 & 1) != 0)
    {
      v1 = 13;
      v2 = 14;
      goto LABEL_24;
    }
  }

  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  sub_231E10220();
  sub_231E10200();
  (*(v5 + 8))(v4, v6);
  v7 = sub_231E100A0();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v0[9];
    v11 = *(v9 + 16);
    v10 = v9 + 16;
    v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v38 = *(v10 + 56);
    v39 = v11;
    v13 = MEMORY[0x277D84F90];
    do
    {
      v14 = v0[10];
      v15 = v0[8];
      v39(v14, v12, v15);
      v16 = sub_231E107A0();
      v18 = v17;
      (*(v10 - 8))(v14, v15);
      if (v18)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_231CE0B9C(0, *(v13 + 2) + 1, 1, v13);
        }

        v20 = *(v13 + 2);
        v19 = *(v13 + 3);
        if (v20 >= v19 >> 1)
        {
          v13 = sub_231CE0B9C((v19 > 1), v20 + 1, 1, v13);
        }

        *(v13 + 2) = v20 + 1;
        v21 = &v13[16 * v20];
        *(v21 + 4) = v16;
        *(v21 + 5) = v18;
      }

      v12 += v38;
      --v8;
    }

    while (v8);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v22 = sub_231DC3C70(v13);

  v23 = sub_231D7116C();
  v24 = sub_231E116F0();

  v26 = v24 + v22;
  if (__OFADD__(v24, v22))
  {
    __break(1u);
    goto LABEL_33;
  }

  v27 = __OFADD__(v26, v23);
  v2 = v26 + v23;
  if (v27)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v28 = sub_231CC8B18();
  if (v29)
  {
    v28 = sub_231D11754();
  }

  if (v2 < v28)
  {
    v1 = 0;
    goto LABEL_24;
  }

  v31 = sub_231E10140();
  if (!v32)
  {
    v31 = sub_231DE8A04(1);
  }

  v33 = v31;
  v34 = v32;
  v0[14] = v32;
  v35 = v0[2];
  sub_231DB0818(v31);
  v40 = (*(*v35 + 136) + **(*v35 + 136));
  v36 = swift_task_alloc();
  v0[15] = v36;
  *v36 = v0;
  v36[1] = sub_231D70F90;
  v37 = v0[7];

  return v40(v33, v34, v37, 0);
}

uint64_t sub_231D70F90(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(*v3 + 56);
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 40);
  v9 = *v3;

  (*(v7 + 8))(v6, v8);

  v10 = *(v9 + 8);

  return v10(a1, a2, a3);
}

uint64_t sub_231D7116C()
{
  v80 = sub_231E10470();
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_231E10010();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v79 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v78 = &v72 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v72 - v19;
  sub_231E10080();
  v21 = sub_231E10290();
  v22 = 0;
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
  {
    sub_231D71A98(v20, v18);
    OUTLINED_FUNCTION_1_0();
    v23 = OUTLINED_FUNCTION_2_24();
    v25 = v24(v23);
    if (v25 == *MEMORY[0x277D42288])
    {
      v75 = v20;
      v26 = OUTLINED_FUNCTION_2_24();
      result = v27(v26);
      v29 = 0;
      v30 = *v18;
      v31 = *(*v18 + 16);
      v80 = v7 + 16;
      v76 = (v7 + 32);
      v32 = (v7 + 8);
      v77 = MEMORY[0x277D84F90];
      while (v31 != v29)
      {
        if (v29 >= *(v30 + 16))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        v33 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v34 = *(v7 + 72);
        (*(v7 + 16))(v14, v30 + v33 + v34 * v29, v5);
        if (sub_231E0FFC0())
        {
          result = (*v32)(v14, v5);
          ++v29;
        }

        else
        {
          v74 = *v76;
          v74(v78, v14, v5);
          v35 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v81 = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_231D41D7C(0, *(v35 + 16) + 1, 1);
            v35 = v81;
          }

          v38 = *(v35 + 16);
          v37 = *(v35 + 24);
          v39 = v38 + 1;
          if (v38 >= v37 >> 1)
          {
            v77 = v38 + 1;
            v73 = v38;
            sub_231D41D7C((v37 > 1), v38 + 1, 1);
            v39 = v77;
            v38 = v73;
            v35 = v81;
          }

          ++v29;
          *(v35 + 16) = v39;
          v77 = v35;
          result = (v74)(v35 + v33 + v38 * v34, v78, v5);
        }
      }

      v57 = *(v77 + 16);
      if (v57)
      {
        v81 = MEMORY[0x277D84F90];
        v58 = v77;
        sub_231D1C82C(0, v57, 0);
        v59 = v81;
        v60 = v58 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v78 = *(v7 + 72);
        v61 = *(v7 + 16);
        do
        {
          v61(v79, v60, v5);
          sub_231E0FFB0();
          if (v62)
          {
            v63 = sub_231E116F0();
          }

          else
          {
            v63 = 0;
          }

          (*v32)(v79, v5);
          v81 = v59;
          v65 = *(v59 + 16);
          v64 = *(v59 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_231D1C82C((v64 > 1), v65 + 1, 1);
            v59 = v81;
          }

          *(v59 + 16) = v65 + 1;
          *(v59 + 8 * v65 + 32) = v63;
          v60 += v78;
          --v57;
        }

        while (v57);
      }

      else
      {

        v59 = MEMORY[0x277D84F90];
      }

      v68 = *(v59 + 16);
      if (v68)
      {
        v22 = 0;
        v69 = 32;
        while (1)
        {
          v70 = *(v59 + v69);
          v71 = __OFADD__(v22, v70);
          v22 += v70;
          if (v71)
          {
            goto LABEL_42;
          }

          v69 += 8;
          if (!--v68)
          {

            goto LABEL_37;
          }
        }
      }

      v22 = 0;
LABEL_37:
      v20 = v75;
    }

    else if (v25 == *MEMORY[0x277D42290])
    {
      v40 = OUTLINED_FUNCTION_2_24();
      v41(v40);
      v42 = *v18;
      v43 = *(*v18 + 16);
      if (v43)
      {
        v75 = v20;
        v81 = MEMORY[0x277D84F90];
        sub_231CC686C(0, v43, 0);
        v44 = v81;
        v45 = (v1 + 16);
        v46 = *(v1 + 16);
        v47 = *(v1 + 80);
        v76 = v42;
        v48 = v42 + ((v47 + 32) & ~v47);
        v77 = *(v45 + 7);
        v78 = v46;
        v79 = v45;
        v49 = (v45 - 8);
        do
        {
          v50 = v80;
          (v78)(v4, v48, v80);
          v51 = sub_231E10450();
          v53 = v52;
          (*v49)(v4, v50);
          v81 = v44;
          v55 = *(v44 + 16);
          v54 = *(v44 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_231CC686C((v54 > 1), v55 + 1, 1);
            v44 = v81;
          }

          *(v44 + 16) = v55 + 1;
          v56 = v44 + 16 * v55;
          *(v56 + 32) = v51;
          *(v56 + 40) = v53;
          v48 += v77;
          --v43;
        }

        while (v43);

        v20 = v75;
      }

      else
      {

        v44 = MEMORY[0x277D84F90];
      }

      v22 = sub_231DC3C70(v44);
    }

    else
    {
      v66 = OUTLINED_FUNCTION_2_24();
      v67(v66);
      v22 = 0;
    }
  }

  sub_231D71A30(v20);
  return v22;
}

uint64_t sub_231D7185C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_231D71900;

  return sub_231D70A1C(v7, a3, a4);
}

uint64_t sub_231D71900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_231D71A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231D71A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231D71B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_231D71B78(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_231D71B78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 2)
  {
    __break(1u);
  }

  else
  {
    v9 = *v5;
    v5[2] = result;
    v5[3] = a2;
    sub_231CE6758(a3, v5 + _MergedGlobals_3);
    v10 = (v5 + qword_2814CDF60);
    *v10 = a4;
    v10[1] = a5;
    v11 = *(v9 + 96);
    v12 = *(v9 + 104);
    v15 = *(v9 + 88);
    v16 = *(v9 + 80);

    v22[0] = sub_231E118A0();
    v22[1] = 0;
    v17[0] = vdupq_lane_s64(v16, 0);
    v17[1] = v15;
    v19 = *(&v16 + 1);
    v18 = v12;
    v20 = v11;
    v21 = v12;
    v13 = type metadata accessor for AsyncConcurrentWorkQueue.GuardedData(0, v17);
    v14 = sub_231D71CB0(v22, v13);

    sub_231CE1118(a3, &qword_27DD75180, &qword_231E13690);
    *(v5 + qword_2814CDF68) = v14;
    return v5;
  }

  return result;
}

uint64_t sub_231D71CB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, a2);
  v7 = sub_231D72BF0(v6, a2);
  (*(v4 + 8))(a1, a2);
  return v7;
}

uint64_t sub_231D71DB0(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(v2 + qword_2814CDF68);
  v11[16] = a2;
  v12 = v2;
  v13 = a1;
  v6 = *(v4 + 80);
  v7 = *(v3 + 96);
  v8 = *(v3 + 104);
  v14[1] = *(v4 + 88);
  v14[0] = vdupq_lane_s64(v6, 0);
  v16 = *(&v6 + 1);
  v15 = v8;
  v17 = v7;
  v18 = v8;
  v9 = type metadata accessor for AsyncConcurrentWorkQueue.GuardedData(0, v14);
  sub_231D72D34(sub_231D72058, v11, v5, v9, MEMORY[0x277D839B0]);
  return LOBYTE(v14[0]);
}

uint64_t sub_231D71EB0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(*a3 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - v12;
  result = sub_231E118D0();
  if ((a2 & 1) != 0 && result >= a3[3])
  {
    v15 = 0;
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    sub_231E11900();
    sub_231E118E0();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_231E115B0();
    result = sub_231D72088(a1);
    v15 = 1;
  }

  *a5 = v15;
  return result;
}

uint64_t sub_231D72088(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v38 = &v31 - v13;
  v14 = *v12;
  v40 = *v12;
  sub_231E11900();
  swift_getWitnessTable();
  result = sub_231E11A90();
  if ((result & 1) == 0 && *(a1 + 8) < v1[2])
  {
    v35 = v7;
    v36 = &v31;
    v39 = v14;
    MEMORY[0x28223BE20](result);
    v16 = v4[11];
    v17 = v4[12];
    *(&v31 - 6) = v5;
    *(&v31 - 5) = v16;
    v33 = v17;
    v34 = v16;
    v18 = v4[13];
    *(&v31 - 4) = v17;
    *(&v31 - 3) = v18;
    v32 = v18;
    *(&v31 - 2) = a1;

    sub_231E11A80();

    if ((v41 & 1) == 0)
    {
      v19 = v38;
      result = sub_231E118F0();
      v20 = *(a1 + 8);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        __break(1u);
      }

      else
      {
        *(a1 + 8) = v22;
        v23 = _MergedGlobals_3;
        v24 = v35;
        v25 = v37;
        (*(v35 + 16))(v37, v19, v5);
        v26 = (*(v24 + 80) + 72) & ~*(v24 + 80);
        v27 = swift_allocObject();
        *(v27 + 2) = 0;
        *(v27 + 3) = 0;
        v29 = v33;
        v28 = v34;
        *(v27 + 4) = v5;
        *(v27 + 5) = v28;
        v30 = v32;
        *(v27 + 6) = v29;
        *(v27 + 7) = v30;
        *(v27 + 8) = v2;
        (*(v24 + 32))(&v27[v26], v25, v5);

        sub_231D6AE00(0, 0, v2 + v23, &unk_231E1D990, v27);

        return (*(v24 + 8))(v19, v5);
      }
    }
  }

  return result;
}

uint64_t sub_231D72398()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(v0 + qword_2814CDF68);
  v7 = *(*v0 + 80);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10[1] = *(v2 + 88);
  v10[0] = vdupq_lane_s64(v7, 0);
  v12 = *(&v7 + 1);
  v11 = v9;
  v13 = v8;
  v14 = v9;
  v4 = type metadata accessor for AsyncConcurrentWorkQueue.GuardedData(0, v10);
  sub_231D72D34(sub_231D7249C, &v6, v3, v4, MEMORY[0x277D83B88]);
  return *&v10[0];
}

uint64_t sub_231D7249C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_231E118D0();
  *a2 = result;
  return result;
}

BOOL sub_231D724D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75048, &qword_231E1D9A0);
  if (swift_dynamicCast())
  {
    sub_231CB6D84(v11, v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_0(v13, v14);
    v9 = ((*(v8 + 8))(v7, v8) & 1) == 0 || *(a2 + 8) == 0;
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_231CE1118(v11, &qword_27DD75050, &qword_231E1D9A8);
    return 1;
  }

  return v9;
}

uint64_t sub_231D72640(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[12] = *a4;
  return MEMORY[0x2822009F8](sub_231D72688, 0, 0);
}

uint64_t sub_231D72688()
{
  OUTLINED_FUNCTION_18();
  v4 = (*(v0[10] + qword_2814CDF60) + **(v0[10] + qword_2814CDF60));
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_231D72784;
  v2 = v0[11];

  return v4(v2);
}

uint64_t sub_231D72784()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_231D72870, 0, 0);
}

uint64_t sub_231D72870()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v2 + qword_2814CDF68);
  v4 = *(v1 + 80);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  *(v0 + 32) = *(v1 + 88);
  *(v0 + 16) = vdupq_lane_s64(v4, 0);
  *(v0 + 48) = v6;
  *(v0 + 56) = *(&v4 + 1);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for AsyncConcurrentWorkQueue.GuardedData(0, v0 + 16);
  sub_231D72D34(sub_231D72F48, v2, v3, v7, MEMORY[0x277D84F78] + 8);
  OUTLINED_FUNCTION_19();

  return v8();
}

uint64_t sub_231D72944()
{
  sub_231CE1118(v0 + _MergedGlobals_3, &qword_27DD75180, &qword_231E13690);

  return v0;
}

uint64_t sub_231D729A4()
{
  sub_231D72944();

  return swift_deallocClassInstance();
}

void sub_231D72A00(uint64_t a1)
{
  sub_231D72AD4(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_231D72AD4(uint64_t a1)
{
  if (!qword_2814CBDC0)
  {
    sub_231E119F0();
    v1 = sub_231E11BF0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814CBDC0);
    }
  }
}

uint64_t sub_231D72B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_231D72B74(uint64_t *a1, int a2)
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

uint64_t sub_231D72BB4(uint64_t result, int a2, int a3)
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

uint64_t sub_231D72BF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  sub_231E11DE0();
  v4 = sub_231E11DD0();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_231D72CA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x277D841D0]) - 8) + 16))(a2);
}

void sub_231D72DC0(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_231D72E7C()
{
  OUTLINED_FUNCTION_29();
  v2 = (*(*(*(v0 + 32) - 8) + 80) + 72) & ~*(*(*(v0 + 32) - 8) + 80);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_231CBFF60;

  return sub_231D72640(v4, v5, v6, v3, v0 + v2);
}

uint64_t sub_231D72F48(uint64_t result)
{
  v1 = *(result + 8);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(result + 8) = v3;
    return sub_231D72088(result);
  }

  return result;
}

uint64_t sub_231D72FA0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_231E10E30();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v4 = sub_231E108B0();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D730BC, 0, 0);
}

uint64_t sub_231D730BC(uint64_t a1)
{
  v2 = sub_231E0FE70();
  v1[26] = v2;
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v2;
    v6 = v1[24];
    v22 = MEMORY[0x277D84F90];
    sub_231CC686C(0, v3, 0);
    v4 = v22;
    v7 = *(v6 + 16);
    v6 += 16;
    v8 = v5 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v20 = *(v6 + 56);
    v21 = v7;
    v9 = (v6 - 8);
    do
    {
      v10 = v1[25];
      v11 = v1[23];
      v21(v10, v8, v11);
      v12 = sub_231E10820();
      v14 = v13;
      (*v9)(v10, v11);
      v16 = *(v22 + 16);
      v15 = *(v22 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_231CC686C((v15 > 1), v16 + 1, 1);
      }

      *(v22 + 16) = v16 + 1;
      v17 = v22 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v8 += v20;
      --v3;
    }

    while (v3);
  }

  v1[27] = v4;
  type metadata accessor for SpotlightReader();
  sub_231D5EBAC(0, 0, 0, 0, v1 + 2);
  v1[28] = sub_231DF7564();
  v18 = swift_task_alloc();
  v1[29] = v18;
  *v18 = v1;
  v18[1] = sub_231D732AC;

  return sub_231E0011C();
}

uint64_t sub_231D732AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_231D734B8;
  }

  else
  {

    *(v4 + 248) = a1;
    v5 = sub_231D733E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_231D733E4()
{
  v1 = sub_231D7379C(v0[31]);
  v2 = v0[26];
  v3 = v0[18];
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = OUTLINED_FUNCTION_9_14();
  v7 = sub_231D755B4(v5, v6, v2);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_231D734B8()
{
  v1 = v0[30];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];

  v5 = sub_231CB4EEC();
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_231E10E10();
  v8 = sub_231E11AD0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[30];
    v10 = v0[27];
    v31 = v0[21];
    v32 = v0[20];
    v33 = v0[22];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v11 = 136315394;
    MEMORY[0x23837CD80](v10, MEMORY[0x277D837D0]);

    v13 = OUTLINED_FUNCTION_25();
    v16 = sub_231CB5000(v13, v14, v15);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v9;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_231CAE000, v7, v8, "[XPC] [Mail] Could not look up items with ids: %s: %@", v11, 0x16u);
    sub_231CE1118(v12, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v31 + 8))(v33, v32);
  }

  else
  {

    v19 = OUTLINED_FUNCTION_25();
    v20(v19);
  }

  v21 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75058, &qword_231E1DAB0);
  v22 = sub_231E11530();

  v23 = v0[26];
  v24 = v0[18];
  v25 = swift_task_alloc();
  *(v25 + 16) = v22;
  *(v25 + 24) = v24;
  v26 = OUTLINED_FUNCTION_9_14();
  v28 = sub_231D755B4(v26, v27, v23);

  v29 = v0[1];

  return v29(v28);
}

void *sub_231D7379C(uint64_t a1)
{
  v47 = sub_231E10340();
  v2 = MEMORY[0x28223BE20](v47);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v46 = &v37 - v4;
  v5 = 0;
  v6 = MEMORY[0x277D84F98];
  v48 = MEMORY[0x277D84F98];
  v7 = *(a1 + 16);
  v43 = v8;
  v44 = v7;
  v42 = v8 + 16;
  v45 = (v8 + 32);
  v38 = xmmword_231E138E0;
  v40 = a1;
  while (1)
  {
    if (v44 == v5)
    {

      return v6;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v9 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v10 = *(v43 + 72);
    v11 = v5;
    (*(v43 + 16))(v46, a1 + v9 + v10 * v5, v47);
    v12 = sub_231E10000();
    v14 = v13;
    v16 = sub_231CE0CA4(v12, v13);
    v17 = v6[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v20 = v15;
    if (v6[3] < v19)
    {
      sub_231D75B90(v19, 1);
      v6 = v48;
      v21 = sub_231CE0CA4(v12, v14);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      v16 = v21;
    }

    if (v20)
    {

      v23 = v6[7];
      v24 = *v45;
      (*v45)(v41, v46, v47);
      v25 = *(v23 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 8 * v16) = v25;
      v39 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_231D758D4(0, *(v25 + 2) + 1, 1, v25);
        *(v23 + 8 * v16) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_231D758D4((v27 > 1), v28 + 1, 1, v25);
        *(v23 + 8 * v16) = v25;
      }

      a1 = v40;
      v29 = v41;
      v30 = v11;
      *(v25 + 2) = v28 + 1;
      v39(&v25[v9 + v28 * v10], v29, v47);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74570, &qword_231E170F0);
      v31 = swift_allocObject();
      *(v31 + 16) = v38;
      (*v45)((v31 + v9), v46, v47);
      v6[(v16 >> 6) + 8] |= 1 << v16;
      v32 = (v6[6] + 16 * v16);
      *v32 = v12;
      v32[1] = v14;
      *(v6[7] + 8 * v16) = v31;
      v33 = v6[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_20;
      }

      v6[2] = v35;
      a1 = v40;
      v30 = v11;
    }

    v5 = v30 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_231E12160();
  __break(1u);
  return result;
}

uint64_t sub_231D73B10@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X1>)
{
  v251 = a2;
  v272 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  v7 = OUTLINED_FUNCTION_47(v6);
  MEMORY[0x28223BE20](v7);
  v258 = v237 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A78, &unk_231E1E3E0);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x28223BE20](v10);
  v269 = v237 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v13 = OUTLINED_FUNCTION_47(v12);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v237 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_0();
  v268 = v17;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_5();
  v267 = v19;
  v261 = sub_231E108B0();
  OUTLINED_FUNCTION_24();
  v271 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_6_12(v24);
  v264 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v262 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_139();
  v276 = v27;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_6_12(v30);
  v278 = sub_231E10340();
  OUTLINED_FUNCTION_24();
  v263 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_12(v237 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_231E10210();
  OUTLINED_FUNCTION_24();
  v273 = v35;
  v274 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_139();
  v266 = v36;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25_5();
  v275 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v40 = OUTLINED_FUNCTION_47(v39);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = v237 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = v237 - v44;
  sub_231E10400();
  OUTLINED_FUNCTION_24();
  v279 = v47;
  v280 = v46;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_139();
  v265 = v48;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_25_5();
  v270 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  v52 = OUTLINED_FUNCTION_47(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  v71 = MEMORY[0x28223BE20](v70);
  v73 = v237 - v72;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  v75 = MEMORY[0x28223BE20](v74);
  v77 = (v237 - v76);
  v78 = MEMORY[0x28223BE20](v75);
  v80 = v237 - v79;
  MEMORY[0x28223BE20](v78);
  v82 = v237 - v81;
  v282 = a1;
  v83 = sub_231E10840();
  v255 = v16;
  if (!v84)
  {
    goto LABEL_10;
  }

  v85 = v83;
  v86 = v84;
  v87 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v87 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (!v87)
  {

LABEL_10:
    v243 = 0;
    v277 = 0;
    goto LABEL_13;
  }

  v237[0] = v77;
  v88 = v73;
  v89 = a4;
  sub_231D42B88();
  v90 = sub_231CE00C4(v85, v86);
  v91 = [v90 textContent];

  v92 = sub_231E11620();
  v94 = v93;

  v95 = HIBYTE(v94) & 0xF;
  v243 = v92;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v95 = v92 & 0xFFFFFFFFFFFFLL;
  }

  if (v95)
  {
    v277 = v94;
  }

  else
  {

    v243 = 0;
    v277 = 0;
  }

  a4 = v89;
  v73 = v88;
  v77 = v237[0];
LABEL_13:
  v96 = sub_231E10850();
  v98 = v97;
  v281 = v82;
  if (v97)
  {
    v99 = v96;
    v100 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v100 = v96 & 0xFFFFFFFFFFFFLL;
    }

    if (!v100)
    {

      v99 = 0;
      v98 = 0;
    }
  }

  else
  {
    v99 = 0;
  }

  v101 = sub_231E10820();
  sub_231D75564(v101, v102, a4);
  v104 = v103;

  v105 = v281;
  if (v104)
  {
    sub_231CFC060(v104, v281);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v278);
  }

  sub_231E10890();
  v109 = v280;
  OUTLINED_FUNCTION_8_17(v43, 1, v280);
  if (v110)
  {
    sub_231D75E60(v105, v80);
    v111 = v278;
    OUTLINED_FUNCTION_8_17(v80, 1, v278);
    if (v110)
    {
      sub_231CE1118(v80, &qword_27DD74580, &qword_231E17110);
      v113 = 1;
    }

    else
    {
      sub_231E100E0();
      v109 = v280;
      (*(v263 + 8))(v80, v111);
      v113 = 0;
    }

    __swift_storeEnumTagSinglePayload(v45, v113, 1, v109);
    OUTLINED_FUNCTION_8_17(v43, 1, v109);
    v112 = v276;
    if (!v110)
    {
      sub_231CE1118(v43, &dword_27DD73FA0, &dword_231E13460);
    }
  }

  else
  {
    (*(v279 + 32))(v45, v43, v109);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v109);
    v112 = v276;
  }

  OUTLINED_FUNCTION_8_17(v45, 1, v109);
  if (v110)
  {

    sub_231CE1118(v45, &dword_27DD73FA0, &dword_231E13460);
    v114 = sub_231CB4EEC();
    v115 = v262;
    v116 = v264;
    (*(v262 + 16))(v112, v114, v264);
    v117 = v271;
    v118 = v260;
    OUTLINED_FUNCTION_10_16();
    v119();
    v120 = sub_231E10E10();
    v121 = sub_231E11AD0();
    if (OUTLINED_FUNCTION_20_11(v121))
    {
      swift_slowAlloc();
      v122 = OUTLINED_FUNCTION_13_8();
      v283 = v122;
      *v112 = 136315138;
      v123 = sub_231E10820();
      OUTLINED_FUNCTION_14_10();
      v124(v118, v125);
      v126 = sub_231CB5000(v123, v98, &v283);

      *(v112 + 4) = v126;
      OUTLINED_FUNCTION_11_14(&dword_231CAE000, v127, v128, "[XPC] [Mail] Missing sender handle for id: %s");
      __swift_destroy_boxed_opaque_existential_0(v122);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v115 + 8))(v276, v116);
      v129 = v281;
    }

    else
    {

      (*(v117 + 8))(v118, v98);
      (*(v115 + 8))(v112, v116);
      v129 = v105;
    }

    sub_231CE1118(v129, &qword_27DD74580, &qword_231E17110);
    v137 = 1;
    v138 = v272;
    v136 = v278;
    return __swift_storeEnumTagSinglePayload(v138, v137, 1, v136);
  }

  v130 = v270;
  (*(v279 + 32))(v270, v45, v109);
  v131 = sub_231E108A0();
  if (v132)
  {
    v133 = v131;
    v134 = v132;
    v135 = v271;
    v136 = v278;
  }

  else
  {
    sub_231D75E60(v105, v77);
    v136 = v278;
    OUTLINED_FUNCTION_8_17(v77, 1, v278);
    v135 = v271;
    if (v110)
    {
      sub_231CE1118(v77, &qword_27DD74580, &qword_231E17110);

      sub_231CB4EEC();
      OUTLINED_FUNCTION_15_14();
      v139 = v241;
      v140(v241);
      v141 = v240;
      OUTLINED_FUNCTION_10_16();
      v142();
      v143 = sub_231E10E10();
      v144 = sub_231E11AD0();
      if (OUTLINED_FUNCTION_20_11(v144))
      {
        swift_slowAlloc();
        v145 = OUTLINED_FUNCTION_13_8();
        v283 = v145;
        *v141 = 136315138;
        v282 = sub_231E10820();
        OUTLINED_FUNCTION_14_10();
        v146(v141, v147);
        v148 = sub_231CB5000(v282, v98, &v283);

        *(v141 + 4) = v148;
        OUTLINED_FUNCTION_11_14(&dword_231CAE000, v149, v150, "[XPC] [Mail] Missing subject for id: %s");
        __swift_destroy_boxed_opaque_existential_0(v145);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        v77[1](v241, v264);
LABEL_114:
        (*(v279 + 8))(v270, v280);
LABEL_118:
        sub_231CE1118(v105, &qword_27DD74580, &qword_231E17110);
        v137 = 1;
        v138 = v272;
        return __swift_storeEnumTagSinglePayload(v138, v137, 1, v136);
      }

LABEL_117:
      (*(v135 + 8))(v141, v98);
      v77[1](v139, v264);
      (*(v279 + 8))(v130, v280);
      goto LABEL_118;
    }

    v133 = sub_231E102D0();
    v134 = v151;
    (*(v263 + 8))(v77, v136);
  }

  v77 = v259;
  v278 = v134;
  v276 = v133;
  if (!v98)
  {
    if (v277)
    {

      v99 = v243;
      v98 = v152;
      goto LABEL_44;
    }

    v98 = v239;
    sub_231D75E60(v105, v239);
    OUTLINED_FUNCTION_0_30(v98);
    if (!v110)
    {
      v154 = v263;
      (*(v263 + 32))(v237[1], v98, v136);
      sub_231E10220();
      v234 = OUTLINED_FUNCTION_1_23();
      v235(v234);
      goto LABEL_45;
    }

    sub_231CE1118(v98, &qword_27DD74580, &qword_231E17110);
    sub_231CB4EEC();
    OUTLINED_FUNCTION_15_14();
    v139 = v238;
    v224(v238);
    v141 = v237[2];
    OUTLINED_FUNCTION_10_16();
    v225();
    v226 = sub_231E10E10();
    v227 = sub_231E11AD0();
    if (OUTLINED_FUNCTION_20_11(v227))
    {
      swift_slowAlloc();
      v282 = OUTLINED_FUNCTION_13_8();
      v283 = v282;
      *v141 = 136315138;
      v228 = sub_231E10820();
      OUTLINED_FUNCTION_14_10();
      v229(v141, v230);
      v231 = sub_231CB5000(v228, v98, &v283);

      *(v141 + 4) = v231;
      OUTLINED_FUNCTION_11_14(&dword_231CAE000, v232, v233, "[XPC] [Mail] Missing plain text body for id: %s");
      __swift_destroy_boxed_opaque_existential_0(v282);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      v77[1](v238, v264);
      goto LABEL_114;
    }

    goto LABEL_117;
  }

LABEL_44:
  v153 = v275;
  *v275 = v99;
  v153[1] = v98;
  (*(v273 + 104))();
  v154 = v263;
LABEL_45:
  v271 = sub_231E10820();
  v264 = v155;
  sub_231D75E60(v105, v73);
  OUTLINED_FUNCTION_0_30(v73);
  v156 = v255;
  v157 = v254;
  v158 = v252;
  if (v110)
  {
    sub_231CE1118(v73, &qword_27DD74580, &qword_231E17110);
    v263 = 0;
    v262 = 0;
  }

  else
  {
    v263 = sub_231E102F0();
    v262 = v159;
    OUTLINED_FUNCTION_7_19();
    v160 = OUTLINED_FUNCTION_25();
    v161(v160);
  }

  v162 = v244;
  v261 = sub_231DE8A04(1);
  v260 = v163;
  sub_231D75E60(v105, v162);
  OUTLINED_FUNCTION_0_30(v162);
  v164 = v245;
  if (v110)
  {
    sub_231CE1118(v162, &qword_27DD74580, &qword_231E17110);
    v244 = 0;
    v243 = 0xE000000000000000;
  }

  else
  {
    v244 = sub_231E10160();
    v243 = v165;
    v166 = OUTLINED_FUNCTION_1_23();
    v167(v166);
  }

  sub_231D75E60(v105, v164);
  OUTLINED_FUNCTION_0_30(v164);
  if (v110)
  {
    sub_231CE1118(v164, &qword_27DD74580, &qword_231E17110);
    v241 = 0;
  }

  else
  {
    v241 = sub_231E100F0();
    OUTLINED_FUNCTION_7_19();
    v168 = OUTLINED_FUNCTION_25();
    v169(v168);
  }

  (*(v279 + 16))(v265, v130, v280);
  v170 = v282;
  v171 = sub_231E10830();
  if (v171)
  {
    v172 = v171;
    v173 = v256;
  }

  else
  {
    v174 = v242;
    sub_231D75E60(v105, v242);
    OUTLINED_FUNCTION_0_30(v174);
    v173 = v256;
    if (v110)
    {
      sub_231CE1118(v174, &qword_27DD74580, &qword_231E17110);
      v172 = MEMORY[0x277D84F90];
    }

    else
    {
      v170 = v174;
      v172 = sub_231E10150();
      v175 = OUTLINED_FUNCTION_1_23();
      v176(v175);
    }
  }

  v256 = sub_231CC6C88(v251, v172);

  OUTLINED_FUNCTION_23_10(v105, &v276);
  OUTLINED_FUNCTION_0_30(v170);
  if (v110)
  {
    sub_231CE1118(v170, &qword_27DD74580, &qword_231E17110);
    v251 = 0;
    v245 = 0xF000000000000000;
  }

  else
  {
    v251 = sub_231E100C0();
    v245 = v177;
    v178 = OUTLINED_FUNCTION_1_23();
    v179(v178);
  }

  v180 = v250;
  v181 = v246;
  (*(v273 + 16))(v266, v275, v274);
  sub_231D75E60(v105, v181);
  OUTLINED_FUNCTION_0_30(v181);
  if (v110)
  {
    sub_231CE1118(v181, &qword_27DD74580, &qword_231E17110);
    LODWORD(v250) = 1;
  }

  else
  {
    LODWORD(v250) = sub_231E10170();
    v182 = OUTLINED_FUNCTION_1_23();
    v183(v182);
  }

  OUTLINED_FUNCTION_21_8(&v278);
  OUTLINED_FUNCTION_0_30(v181);
  if (v110)
  {
    sub_231CE1118(v181, &qword_27DD74580, &qword_231E17110);
    v247 = MEMORY[0x277D84F90];
  }

  else
  {
    v247 = sub_231E101A0();
    v184 = OUTLINED_FUNCTION_1_23();
    v185(v184);
  }

  OUTLINED_FUNCTION_21_8(&v279);
  OUTLINED_FUNCTION_0_30(v181);
  if (v110)
  {
    sub_231CE1118(v181, &qword_27DD74580, &qword_231E17110);
    v248 = MEMORY[0x277D84F90];
  }

  else
  {
    v248 = sub_231E100A0();
    v186 = OUTLINED_FUNCTION_1_23();
    v187(v186);
  }

  OUTLINED_FUNCTION_21_8(&v280);
  OUTLINED_FUNCTION_0_30(v181);
  if (v110)
  {
    sub_231CE1118(v181, &qword_27DD74580, &qword_231E17110);
    v249 = 0;
    v246 = 0;
  }

  else
  {
    v249 = sub_231E10100();
    v246 = v188;
    v189 = OUTLINED_FUNCTION_1_23();
    v190(v189);
  }

  sub_231D75E60(v105, v180);
  OUTLINED_FUNCTION_0_30(v180);
  if (v110)
  {
    sub_231CE1118(v180, &qword_27DD74580, &qword_231E17110);
    sub_231E0F950();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v191, v192, v193, v194);
  }

  else
  {
    sub_231E102E0();
    OUTLINED_FUNCTION_7_19();
    v195 = OUTLINED_FUNCTION_25();
    v196(v195);
  }

  v197 = v282;
  sub_231E10860();
  v198 = sub_231E0F950();
  OUTLINED_FUNCTION_8_17(v156, 1, v198);
  if (v110)
  {
    OUTLINED_FUNCTION_23_10(v105, &v271);
    OUTLINED_FUNCTION_0_30(v197);
    if (v110)
    {
      sub_231CE1118(v197, &qword_27DD74580, &qword_231E17110);
      OUTLINED_FUNCTION_105();
      __swift_storeEnumTagSinglePayload(v199, v200, v201, v198);
    }

    else
    {
      sub_231E100D0();
      v202 = OUTLINED_FUNCTION_1_23();
      v203(v202);
    }

    OUTLINED_FUNCTION_8_17(v156, 1, v198);
    if (!v110)
    {
      sub_231CE1118(v156, &dword_27DD74AD0, &qword_231E16C40);
    }
  }

  else
  {
    v197 = v268;
    (*(*(v198 - 8) + 32))(v268, v156, v198);
    __swift_storeEnumTagSinglePayload(v197, 0, 1, v198);
  }

  OUTLINED_FUNCTION_23_10(v105, &v283);
  OUTLINED_FUNCTION_0_30(v197);
  if (v110)
  {
    sub_231CE1118(v197, &qword_27DD74580, &qword_231E17110);
    sub_231E10070();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v204, v205, v206, v207);
  }

  else
  {
    sub_231E10110();
    v208 = OUTLINED_FUNCTION_1_23();
    v209(v208);
  }

  v210 = v253;
  sub_231D75E60(v105, v77);
  OUTLINED_FUNCTION_0_30(v77);
  if (v110)
  {
    sub_231CE1118(v77, &qword_27DD74580, &qword_231E17110);
  }

  else
  {
    sub_231E10240();
    OUTLINED_FUNCTION_7_19();
    v211(v77, v136);
  }

  sub_231D75E60(v105, v158);
  OUTLINED_FUNCTION_0_30(v158);
  if (v110)
  {
    sub_231CE1118(v158, &qword_27DD74580, &qword_231E17110);
  }

  else
  {
    sub_231E10130();
    OUTLINED_FUNCTION_7_19();
    v212(v158, v136);
  }

  sub_231D75E60(v281, v210);
  OUTLINED_FUNCTION_0_30(v210);
  if (v110)
  {
    sub_231CE1118(v210, &qword_27DD74580, &qword_231E17110);
  }

  else
  {
    sub_231E10300();
    OUTLINED_FUNCTION_7_19();
    v213(v210, v136);
  }

  sub_231D75E60(v281, v157);
  OUTLINED_FUNCTION_0_30(v157);
  if (v110)
  {
    sub_231CE1118(v157, &qword_27DD74580, &qword_231E17110);
  }

  else
  {
    sub_231E102A0();
    OUTLINED_FUNCTION_7_19();
    v214(v157, v136);
  }

  v215 = v282;
  if (sub_231E10880() == 2)
  {
    OUTLINED_FUNCTION_23_10(v281, &v272);
    OUTLINED_FUNCTION_0_30(v215);
    if (v110)
    {
      sub_231CE1118(v215, &qword_27DD74580, &qword_231E17110);
    }

    else
    {
      sub_231E102B0();
      v216 = OUTLINED_FUNCTION_1_23();
      v217(v216);
    }
  }

  sub_231D75E60(v281, v173);
  OUTLINED_FUNCTION_0_30(v173);
  if (v110)
  {
    sub_231CE1118(v173, &qword_27DD74580, &qword_231E17110);
  }

  else
  {
    sub_231E10250();
    OUTLINED_FUNCTION_7_19();
    v218(v173, v136);
  }

  v219 = v257;
  sub_231D75E60(v281, v257);
  OUTLINED_FUNCTION_0_30(v219);
  if (v110)
  {
    sub_231CE1118(v219, &qword_27DD74580, &qword_231E17110);
  }

  else
  {
    sub_231E10330();
    (*(v154 + 8))(v219, v136);
  }

  sub_231E10290();
  OUTLINED_FUNCTION_105();
  __swift_storeEnumTagSinglePayload(v220, v221, v222, v223);
  v138 = v272;
  sub_231E10310();

  (*(v273 + 8))(v275, v274);
  (*(v279 + 8))(v270, v280);
  sub_231CE1118(v281, &qword_27DD74580, &qword_231E17110);
  v137 = 0;
  return __swift_storeEnumTagSinglePayload(v138, v137, 1, v136);
}

void sub_231D75564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_231CE0CA4(a1, a2);
    if (v3)
    {
    }
  }
}

char *sub_231D755B4(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_231E10340();
  v10 = MEMORY[0x28223BE20](v9);
  v31 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = v13;
  v30 = &v25 - v12;
  v14 = 0;
  v15 = *(a3 + 16);
  v32 = (v13 + 32);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v14)
    {
      return v33;
    }

    v16 = *(sub_231E108B0() - 8);
    a1(a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_231CE1118(v8, &qword_27DD74580, &qword_231E17110);
      ++v14;
    }

    else
    {
      v17 = *v32;
      (*v32)(v30, v8, v9);
      v28 = v17;
      v17(v31, v30, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_231D758D4(0, *(v33 + 2) + 1, 1, v33);
      }

      v19 = *(v33 + 2);
      v18 = *(v33 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v26 = *(v33 + 2);
        v27 = v19 + 1;
        v22 = sub_231D758D4((v18 > 1), v19 + 1, 1, v33);
        v19 = v26;
        v20 = v27;
        v33 = v22;
      }

      ++v14;
      v21 = v33;
      *(v33 + 2) = v20;
      v28(&v21[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19], v31, v9);
    }
  }

  v23 = v33;

  return v23;
}

void *sub_231D758D4(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_231D759C0(v8, v7);
  v10 = *(sub_231E10340() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_231D75ABC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_231D759C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74570, &qword_231E170F0);
  v4 = *(sub_231E10340() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
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

uint64_t sub_231D75ABC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_231E10340(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_231E10340();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231D75B90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75060, &qword_231E1D9B8);
  v34 = v4;
  result = sub_231E11EF0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_231CFD55C(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_231E12220();
    sub_231E116E0();
    result = sub_231E12250();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_231D75E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_21_8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return sub_231D75E60(v1, v3);
}

uint64_t sub_231D75F38(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_431();
  switch(v3)
  {
    case 1:
      return result;
    case 2:
    case 3:
      result = 0x6F54207974706D45;
      break;
    default:
      result = OUTLINED_FUNCTION_284_0();
      break;
  }

  return result;
}

uint64_t sub_231D75FAC(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_431();
  switch(v3)
  {
    case 1:
      return result;
    case 2:
    case 3:
      result = 0x6F54207974706D45;
      break;
    default:
      result = OUTLINED_FUNCTION_284_0();
      break;
  }

  return result;
}

uint64_t sub_231D7603C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231E1D9C0;
  v1 = sub_231E10B40();
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 7104878;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  v5 = sub_231E10BA0();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7104878;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  *(v0 + 48) = v7;
  *(v0 + 56) = v8;
  v9 = sub_231E10BD0();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 7104878;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  *(v0 + 64) = v11;
  *(v0 + 72) = v12;
  v13 = OUTLINED_FUNCTION_140_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_134_1();
  sub_231DA21B0(v15, v16, v17, v18);
  sub_231E11580();
  OUTLINED_FUNCTION_3_12();

  return OUTLINED_FUNCTION_140_0();
}

uint64_t type metadata accessor for MailThreadSummarizationResponse(uint64_t a1)
{
  result = qword_2814CDEE0;
  if (!qword_2814CDEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231D76188()
{
  v1 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  v7 = v6 - v5;
  v8 = *(*v0 + 16);
  sub_231CB4EEC();
  OUTLINED_FUNCTION_471();
  v9(v7);
  v10 = sub_231E10E10();
  v11 = sub_231E11AF0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_9_1();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_231CAE000, v10, v11, "Active summarization requests changed: %ld", v12, 0xCu);
    OUTLINED_FUNCTION_30();
  }

  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_231D762D0()
{
  OUTLINED_FUNCTION_300_0();
  v2 = OUTLINED_FUNCTION_407();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_15_2(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 0xD000000000000014 && 0x8000000231E366F0 == v0;
    if (v6 || (OUTLINED_FUNCTION_15_2(0xD000000000000014, 0x8000000231E366F0) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x79727465527369 && v0 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_15_2(0x79727465527369, 0xE700000000000000);

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

uint64_t sub_231D763AC(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_407();
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x79727465527369;
}

uint64_t sub_231D76410@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231D762D0();
  *a1 = result;
  return result;
}

uint64_t sub_231D76444()
{
  sub_231D7691C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D7647C()
{
  sub_231D7691C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D764B4()
{
  sub_231D769C4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D764EC()
{
  sub_231D769C4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D76524()
{
  sub_231D76A18();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D7655C()
{
  sub_231D76A18();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D76594()
{
  sub_231D76970();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D765CC()
{
  sub_231D76970();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D76604(void *a1, int a2)
{
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75068, &qword_231E1D9E0);
  OUTLINED_FUNCTION_24();
  v27 = v4;
  v28 = v3;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v5);
  v26 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75070, &qword_231E1D9E8);
  OUTLINED_FUNCTION_24();
  v24 = v8;
  v25 = v7;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75078, &qword_231E1D9F0);
  OUTLINED_FUNCTION_24();
  v23 = v13;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75080, &qword_231E1D9F8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v17);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231D7691C();
  sub_231E12270();
  if (v29)
  {
    if (v29 == 1)
    {
      v31 = 1;
      sub_231D769C4();
      OUTLINED_FUNCTION_420(&type metadata for SummarizationManager.Option.DisableSummarizationCodingKeys, &v31);
      (*(v24 + 8))(v11, v25);
    }

    else
    {
      v32 = 2;
      sub_231D76970();
      v18 = v26;
      OUTLINED_FUNCTION_420(&type metadata for SummarizationManager.Option.IsRetryCodingKeys, &v32);
      (*(v27 + 8))(v18, v28);
    }
  }

  else
  {
    v30 = 0;
    sub_231D76A18();
    OUTLINED_FUNCTION_420(&type metadata for SummarizationManager.Option.DisableUrgencyCodingKeys, &v30);
    (*(v23 + 8))(v16, v12);
  }

  v19 = OUTLINED_FUNCTION_294_0();
  return v20(v19);
}

unint64_t sub_231D7691C()
{
  result = qword_27DD83550;
  if (!qword_27DD83550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD83550);
  }

  return result;
}

unint64_t sub_231D76970()
{
  result = qword_27DD83558;
  if (!qword_27DD83558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD83558);
  }

  return result;
}

unint64_t sub_231D769C4()
{
  result = qword_27DD83560;
  if (!qword_27DD83560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD83560);
  }

  return result;
}

unint64_t sub_231D76A18()
{
  result = qword_27DD83568[0];
  if (!qword_27DD83568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD83568);
  }

  return result;
}

uint64_t sub_231D76A6C(void *a1)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75088, &qword_231E1DA00);
  OUTLINED_FUNCTION_24();
  v63 = v2;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v3);
  v61 = &v55 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75090, &qword_231E1DA08);
  OUTLINED_FUNCTION_24();
  v60 = v5;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75098, &qword_231E1DA10);
  OUTLINED_FUNCTION_24();
  v59 = v10;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750A0, &unk_231E1DA18);
  OUTLINED_FUNCTION_24();
  v64 = v15;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v19);
  sub_231D7691C();
  v20 = v66;
  sub_231E12260();
  if (v20)
  {
    goto LABEL_12;
  }

  v55 = v9;
  v56 = v13;
  v57 = v8;
  v58 = 0;
  v21 = v65;
  v66 = a1;
  v22 = v18;
  v23 = sub_231E11FE0();
  result = sub_231CCF16C(v23, 0);
  v19 = v14;
  if (v26 == v27 >> 1)
  {
    goto LABEL_10;
  }

  if (v26 < (v27 >> 1))
  {
    v28 = v14;
    v29 = *(v25 + v26);
    v30 = sub_231CCF304(v26 + 1, v27 >> 1, result, v25, v26, v27);
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    v35 = v62;
    v36 = v63;
    if (v32 == v34 >> 1)
    {
      v19 = v29;
      if (v29)
      {
        v59 = v30;
        v37 = v58;
        if (v29 == 1)
        {
          v68 = 1;
          sub_231D769C4();
          v38 = v57;
          OUTLINED_FUNCTION_355();
          sub_231E11F30();
          if (!v37)
          {
            swift_unknownObjectRelease();
            (*(v60 + 8))(v38, v35);
            v39 = OUTLINED_FUNCTION_80();
            v40(v39);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_0(v66);
            return v19;
          }
        }

        else
        {
          LODWORD(v62) = v29;
          v69 = 2;
          sub_231D76970();
          v19 = v61;
          OUTLINED_FUNCTION_355();
          sub_231E11F30();
          if (!v37)
          {
            swift_unknownObjectRelease();
            (*(v36 + 8))(v19, v21);
            v53 = OUTLINED_FUNCTION_80();
            v54(v53);
            v19 = v62;
            goto LABEL_21;
          }
        }

        v49 = OUTLINED_FUNCTION_80();
        v50(v49);
      }

      else
      {
        v67 = 0;
        sub_231D76A18();
        v45 = v56;
        OUTLINED_FUNCTION_355();
        v46 = v58;
        sub_231E11F30();
        if (!v46)
        {
          swift_unknownObjectRelease();
          (*(v59 + 8))(v45, v55);
          OUTLINED_FUNCTION_457();
          v51 = OUTLINED_FUNCTION_80();
          v52(v51);
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_457();
        v47 = OUTLINED_FUNCTION_80();
        v48(v47);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v19 = v28;
LABEL_10:
    sub_231E11DC0();
    OUTLINED_FUNCTION_22_7();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E8, &qword_231E13D10);
    *v42 = &type metadata for SummarizationManager.Option;
    sub_231E11F40();
    sub_231E11DB0();
    OUTLINED_FUNCTION_56_6();
    (*(v43 + 104))(v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_457();
    v44(v22, v19);
LABEL_11:
    a1 = v66;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_231D77008@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231D76A6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_231D77050(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, char a14, uint64_t a15, void *a16, void *a17)
{
  v23 = swift_allocObject();
  sub_231D77128(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  return v23;
}

uint64_t sub_231D77128(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, char a14, uint64_t a15, void *a16, void *a17)
{
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750A8, &unk_231E1DA28);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D84F98];
  *(v26 + 32) = 0;
  *(v26 + 16) = v27;
  *(v26 + 24) = 0;
  *(v18 + 24) = a8;
  *(v18 + 32) = v26;
  *(v18 + 16) = a9;
  sub_231DA0900(a4, v18 + 40);
  type metadata accessor for UrgencyManager();
  sub_231DA0900(a5, v44);
  sub_231DA0900(a6, v43);
  sub_231DA0900(a1, v42);

  v28 = a11;
  *(v18 + 80) = sub_231CE8318(v44, v43, v42, v28);
  sub_231DA0900(a1, v18 + 88);
  sub_231DA0900(a2, v18 + 128);
  *(v18 + 168) = a3;
  sub_231DA0900(a7, v18 + 176);
  type metadata accessor for PowerBudget();
  v29 = OUTLINED_FUNCTION_65_4();
  type metadata accessor for PowerTracker(v29);
  v30 = v28;
  swift_unknownObjectRetain();
  sub_231CE6C64(2, 0);
  sub_231E0B66C(v43);
  *(v18 + 216) = sub_231E0B688();
  v31 = v30;
  sub_231CE6C64(3, 0);
  sub_231E0B66C(v44);
  *(v18 + 224) = sub_231E0B688();
  sub_231DA0900(a10, v18 + 232);
  *(v18 + 272) = v31;
  sub_231DA0900(a13, v18 + 280);
  *(v18 + 320) = a14;
  *(v18 + 328) = a15;
  sub_231DA0900(a16, v18 + 336);
  sub_231DA0900(a17, v18 + 376);
  v32 = *(v18 + 32);
  v33 = v31;

  os_unfair_lock_lock(v32 + 8);
  sub_231DA0960();
  os_unfair_lock_unlock(v32 + 8);

  v34 = [objc_opt_self() sharedInstance];
  [v34 prewarm];

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a17);
  __swift_destroy_boxed_opaque_existential_0(a16);
  __swift_destroy_boxed_opaque_existential_0(a13);
  __swift_destroy_boxed_opaque_existential_0(a10);
  __swift_destroy_boxed_opaque_existential_0(a7);
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

void sub_231D77494()
{
  OUTLINED_FUNCTION_118();
  v32 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_95_5();
  v6 = sub_231E10A30();
  OUTLINED_FUNCTION_24();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_241_0();
  v12 = v10 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_450();
  sub_231E119F0();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_63_6();
  sub_231E10A20();
  sub_231CC8990(v1);
  OUTLINED_FUNCTION_28_2(v1);
  if (v16)
  {
    sub_231D1221C();
    OUTLINED_FUNCTION_28_2(v1);
    if (!v16)
    {
      sub_231CC154C(v1, &qword_27DD75180, &qword_231E13690);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_382();
    v18(v17);
  }

  OUTLINED_FUNCTION_463();
  OUTLINED_FUNCTION_340();
  v20(v19);
  OUTLINED_FUNCTION_142_2();
  v22 = v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  *(v23 + 24) = v0;
  (*(v8 + 32))(v23 + v0, v12, v6);
  *(v23 + v22) = v32;

  OUTLINED_FUNCTION_81();
  sub_231D7B818(v24, v25, v26, v27, v2, v28, v29);

  v30 = OUTLINED_FUNCTION_294_0();
  v31(v30);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D77734()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_103_3(v1, v2, v3, v4);
  v5 = sub_231E10A30();
  v0[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[7] = v6;
  v0[8] = *(v7 + 64);
  v0[9] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D777DC()
{
  OUTLINED_FUNCTION_274_0();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_89_5();
  sub_231D12014();
  v3 = OUTLINED_FUNCTION_50_6();
  v4(v3);
  OUTLINED_FUNCTION_49_9();
  v5 = OUTLINED_FUNCTION_435();
  v6 = OUTLINED_FUNCTION_38_9(v5);
  v7(v6);
  *(v0 + v2) = v1;
  OUTLINED_FUNCTION_220_0();
  swift_retain_n();

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_290_0(v8);
  *v9 = v10;
  v9[1] = sub_231DA48C8;
  OUTLINED_FUNCTION_64_5(v9, &unk_231E1E5A8);
  OUTLINED_FUNCTION_273_0();

  return sub_231D6DB48(v11, v12, v13, v14, v15);
}

uint64_t sub_231D778EC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_102_4(v1, v2, v3, v4);
  v5 = sub_231E0F950();
  v0[9] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[10] = v6;
  v7 = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_434(v7);
  v0[12] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[13] = v9;
  v0[14] = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231D779D0()
{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_277_0();
  OUTLINED_FUNCTION_65_6(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_325(v2);
  OUTLINED_FUNCTION_62_4();

  return sub_231DDB61C();
}

void sub_231D77A84()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D77B9C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_61_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_381(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_48_8(v2);

  return sub_231D77D08();
}

uint64_t sub_231D77C28()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_433(v3);
  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D77D08()
{
  OUTLINED_FUNCTION_18();
  v1[231] = v0;
  v1[230] = v2;
  v1[229] = v3;
  v1[228] = v4;
  v5 = sub_231E0F5E0();
  v1[232] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[233] = v6;
  v1[234] = OUTLINED_FUNCTION_55();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v7);
  v1[235] = OUTLINED_FUNCTION_55();
  v8 = type metadata accessor for SummarizerResult(0);
  v1[236] = v8;
  OUTLINED_FUNCTION_47(v8);
  v1[237] = OUTLINED_FUNCTION_69();
  v1[238] = swift_task_alloc();
  v1[239] = swift_task_alloc();
  v9 = sub_231E107F0();
  v1[240] = v9;
  OUTLINED_FUNCTION_6(v9);
  v1[241] = v10;
  v1[242] = OUTLINED_FUNCTION_55();
  v11 = sub_231E10A30();
  v1[243] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[244] = v12;
  v1[245] = OUTLINED_FUNCTION_69();
  v1[246] = swift_task_alloc();
  v13 = type metadata accessor for EntityKind(0);
  v1[247] = v13;
  OUTLINED_FUNCTION_47(v13);
  v1[248] = OUTLINED_FUNCTION_55();
  v14 = sub_231E10E30();
  v1[249] = v14;
  OUTLINED_FUNCTION_6(v14);
  v1[250] = v15;
  v1[251] = OUTLINED_FUNCTION_69();
  v1[252] = swift_task_alloc();
  v1[253] = swift_task_alloc();
  v1[254] = swift_task_alloc();
  v1[255] = swift_task_alloc();
  v1[256] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_231D78564()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_87_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  OUTLINED_FUNCTION_223();
  if (v0)
  {
  }

  else
  {

    v5 = OUTLINED_FUNCTION_143_2();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_231D7869C()
{
  OUTLINED_FUNCTION_207_0();
  v67 = v2;
  if (*(v2 + 1785))
  {

    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_85_4();

    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_406();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_125_1(v4, v2 + 1384);
  sub_231E10A00();
  *(v2 + 2152) = v7;
  if (v7)
  {
    OUTLINED_FUNCTION_81_0();
    v8 = swift_endAccess();
    OUTLINED_FUNCTION_125_1(v8, v2 + 1288);
    v9 = sub_231E10910();
    *(v2 + 2160) = v10;
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = swift_endAccess();
      OUTLINED_FUNCTION_125_1(v13, v2 + 1432);
      v14 = sub_231E109B0();
      *(v2 + 2168) = v15;
      if (v15)
      {
        v16 = v14;
        v17 = v15;
        v18 = swift_endAccess();
        OUTLINED_FUNCTION_125_1(v18, v2 + 1360);
        v19 = sub_231E108E0();
        v3 = v19;
        swift_endAccess();
        if (v19 != 2 && (v19 & 1) != 0)
        {
          v20 = *(v2 + 1848);
          v21 = swift_task_alloc();
          *(v2 + 2176) = v21;
          v21[2] = v1;
          v21[3] = v0;
          v21[4] = v11;
          v21[5] = v12;
          v21[6] = v16;
          v21[7] = v17;
          v21[8] = v20;
          v22 = swift_task_alloc();
          *(v2 + 2184) = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75100, &qword_231E1E520);
          OUTLINED_FUNCTION_136_1();
          *v22 = v23;
          v22[1] = sub_231D78C44;
LABEL_30:
          OUTLINED_FUNCTION_406();

          return sub_231DDB61C();
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    swift_endAccess();
  }

  v24 = v2 + 1785;
  OUTLINED_FUNCTION_257();
  v25(*(v2 + 2040));

  v26 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v27 = OUTLINED_FUNCTION_91_0();
  v28 = *(v2 + 2128);
  if (v27)
  {
    v65 = *(v2 + 2128);
    OUTLINED_FUNCTION_9_1();
    v66 = OUTLINED_FUNCTION_17_1();
    *v24 = 136446210;
    v29 = sub_231DDB1E8();
    sub_231CB5000(v29, v30, &v66);
    OUTLINED_FUNCTION_87_0();
    *(v2 + 1789) = v3;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    OUTLINED_FUNCTION_2_6();
    v24 = v2 + 1785;
    OUTLINED_FUNCTION_30();

    v36 = OUTLINED_FUNCTION_9_4();
    v37 = v65(v36);
  }

  else
  {

    v38 = OUTLINED_FUNCTION_9_4();
    v37 = v28(v38);
  }

  *(v2 + 2192) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_125_1(v37, v2 + 1744);
  sub_231E10920();
  swift_endAccess();
  v39 = OUTLINED_FUNCTION_505();
  if (!v26)
  {
    v40 = v2 + 1720;
    v54 = 3;
LABEL_27:
    v55 = *(v24 + 47);
    v56 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
    OUTLINED_FUNCTION_4_12(v55 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult, v40);
    *(v55 + v56) = v54;
    if (sub_231E11A20())
    {
      v57 = OUTLINED_FUNCTION_118_5();
      OUTLINED_FUNCTION_182_0(v57);
      v58 = swift_task_alloc();
      *(v2 + 2224) = v58;
      *v58 = v2;
      OUTLINED_FUNCTION_60_6(v58);
      OUTLINED_FUNCTION_13_0();
    }

    else
    {
      v59 = *(v2 + 2064);
      v60 = swift_task_alloc();
      *(v2 + 2232) = v60;
      v61 = *(v24 + 47);
      *(v60 + 16) = v59;
      *(v60 + 24) = v61;
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      *(v2 + 2240) = v62;
      *v62 = v63;
      OUTLINED_FUNCTION_59_7(v62);
      OUTLINED_FUNCTION_57_7();
    }

    goto LABEL_30;
  }

  v40 = v2 + 1336;
  OUTLINED_FUNCTION_125_1(v39, v2 + 1312);
  v41 = sub_231E108E0();
  swift_endAccess();
  if (v41 == 2 || (v41 & 1) == 0)
  {
    v54 = 4;
    goto LABEL_27;
  }

  sub_231D12170();
  OUTLINED_FUNCTION_299_0();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_465(v42);
  OUTLINED_FUNCTION_220_0();
  swift_retain_n();

  v43 = swift_task_alloc();
  v44 = OUTLINED_FUNCTION_445(v43);
  *v44 = v45;
  v46 = OUTLINED_FUNCTION_209_0(v44);
  OUTLINED_FUNCTION_84_4(v46, &unk_231E1E660);
  OUTLINED_FUNCTION_406();

  return sub_231D6DB48(v47, v48, v49, v50, v51);
}

uint64_t sub_231D78C44()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_4();
  *v3 = v1;
  *v3 = *v2;

  OUTLINED_FUNCTION_90_1();
  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_137_0();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_231D78D9C()
{
  OUTLINED_FUNCTION_47_0();
  v1[274] = v1[227];
  OUTLINED_FUNCTION_125_1(v3, (v1 + 218));
  sub_231E10920();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_505();
  if (v0)
  {
    v5 = (v1 + 167);
    OUTLINED_FUNCTION_125_1(v4, (v1 + 164));
    v6 = sub_231E108E0();
    swift_endAccess();
    if (v6 != 2 && (v6 & 1) != 0)
    {
      v7 = v1[229];
      sub_231D12170();
      OUTLINED_FUNCTION_299_0();
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_465(v8);
      OUTLINED_FUNCTION_220_0();
      swift_retain_n();

      v9 = swift_task_alloc();
      v10 = OUTLINED_FUNCTION_445(v9);
      *v10 = v11;
      v12 = OUTLINED_FUNCTION_209_0(v10);
      v13 = OUTLINED_FUNCTION_84_4(v12, &unk_231E1E660);

      return sub_231D6DB48(v13, v2, v14, v7, v15);
    }

    v17 = 4;
  }

  else
  {
    v5 = (v1 + 215);
    v17 = 3;
  }

  v18 = v1[229];
  v19 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
  OUTLINED_FUNCTION_4_12(v18 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult, v5);
  *(v18 + v19) = v17;
  if (sub_231E11A20())
  {
    v20 = OUTLINED_FUNCTION_118_5();
    OUTLINED_FUNCTION_182_0(v20);
    v21 = swift_task_alloc();
    v1[278] = v21;
    *v21 = v1;
    OUTLINED_FUNCTION_60_6(v21);
    OUTLINED_FUNCTION_13_0();
  }

  else
  {
    v22 = v1[258];
    v23 = swift_task_alloc();
    v1[279] = v23;
    v24 = *(v1 + 229);
    *(v23 + 16) = v22;
    *(v23 + 24) = v24;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v1[280] = v25;
    *v25 = v26;
    OUTLINED_FUNCTION_59_7(v25);
    OUTLINED_FUNCTION_57_7();
  }

  return sub_231DDB61C();
}

uint64_t sub_231D7900C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D79128()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  if (sub_231E11A20())
  {
    v1 = OUTLINED_FUNCTION_118_5();
    OUTLINED_FUNCTION_182_0(v1);
    v2 = swift_task_alloc();
    *(v0 + 2224) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_60_6(v2);
    OUTLINED_FUNCTION_13_0();
  }

  else
  {
    v3 = *(v0 + 2064);
    v4 = swift_task_alloc();
    *(v0 + 2232) = v4;
    v5 = *(v0 + 1832);
    *(v4 + 16) = v3;
    *(v4 + 24) = v5;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v0 + 2240) = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_59_7(v6);
    OUTLINED_FUNCTION_57_7();
  }

  OUTLINED_FUNCTION_106();

  return sub_231DDB61C();
}