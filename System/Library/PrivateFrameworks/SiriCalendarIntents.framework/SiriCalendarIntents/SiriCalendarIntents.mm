void sub_26654B680(uint64_t a2@<X8>)
{
  sub_26654B6B4();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_26654B6C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_26654B6FC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_26654B738()
{
  OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_26654B76C()
{

  OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654B7A0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654B7D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26654B86C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654B8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266668D98();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26654B92C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_266668D98();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26654B9D4()
{
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_32_0();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = ((v5 + 32) & ~v5);
  v8 = *(v7 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_1(v9);
  v11 = *(v10 + 80);
  v13 = (v6 + v8 + v11) & ~v11;
  v14 = (*(v12 + 64) + v11 + v13) & ~v11;
  (*(v4 + 8))(v6 + v0, v2);
  v15 = v0 + v13;
  v16 = type metadata accessor for Snippet(0);
  if (!OUTLINED_FUNCTION_17_1(v0 + v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 4u:
      case 0xDu:
        goto LABEL_49;
      case 1u:
      case 2u:
      case 6u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:

        type metadata accessor for Snippet.Event(0);
        OUTLINED_FUNCTION_26_1();
        OUTLINED_FUNCTION_0_5();
        (*(v18 + 8))(v15 + v13);
        OUTLINED_FUNCTION_7_4(*(((v5 + 32) & ~v5) + 0x28));

        OUTLINED_FUNCTION_7_4(*(((v5 + 32) & ~v5) + 0x2C));

        v19 = OUTLINED_FUNCTION_28_1();
        if (!OUTLINED_FUNCTION_12_2(v19))
        {
          v20 = *(v1 + 28);
          type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
          if (!swift_getEnumCaseMultiPayload())
          {
            sub_266668D38();
            OUTLINED_FUNCTION_0_5();
            (*(v21 + 8))(v13 + v20);
          }
        }

        v13 = *(((v5 + 32) & ~v5) + 0x38);
        v22 = sub_26666B278();
        if (!OUTLINED_FUNCTION_8_3(v22))
        {
          OUTLINED_FUNCTION_3_5();
          v23 = OUTLINED_FUNCTION_21_1();
          v24(v23);
        }

        break;
      case 3u:

        type metadata accessor for Snippet.Event(0);
        OUTLINED_FUNCTION_26_1();
        OUTLINED_FUNCTION_0_5();
        (*(v55 + 8))(v15 + v13);
        OUTLINED_FUNCTION_7_4(*(((v5 + 32) & ~v5) + 0x28));

        OUTLINED_FUNCTION_7_4(*(((v5 + 32) & ~v5) + 0x2C));

        v56 = OUTLINED_FUNCTION_28_1();
        if (!OUTLINED_FUNCTION_12_2(v56))
        {
          v57 = *(v1 + 28);
          type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
          if (!swift_getEnumCaseMultiPayload())
          {
            sub_266668D38();
            OUTLINED_FUNCTION_0_5();
            (*(v58 + 8))(v13 + v57);
          }
        }

        v13 = *(((v5 + 32) & ~v5) + 0x38);
        v59 = sub_26666B278();
        if (!OUTLINED_FUNCTION_8_3(v59))
        {
          OUTLINED_FUNCTION_3_5();
          v60 = OUTLINED_FUNCTION_21_1();
          v61(v60);
        }

        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D320, &qword_266673E10);

        v46 = *(v62 + 64);
        goto LABEL_42;
      case 5u:

        type metadata accessor for Snippet.Event(0);
        OUTLINED_FUNCTION_26_1();
        OUTLINED_FUNCTION_0_5();
        (*(v39 + 8))(v15 + v13);
        OUTLINED_FUNCTION_7_4(*(((v5 + 32) & ~v5) + 0x28));

        OUTLINED_FUNCTION_7_4(*(((v5 + 32) & ~v5) + 0x2C));

        v40 = OUTLINED_FUNCTION_28_1();
        if (!OUTLINED_FUNCTION_12_2(v40))
        {
          v41 = *(v1 + 28);
          type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
          if (!swift_getEnumCaseMultiPayload())
          {
            sub_266668D38();
            OUTLINED_FUNCTION_0_5();
            (*(v42 + 8))(v13 + v41);
          }
        }

        v13 = *(((v5 + 32) & ~v5) + 0x38);
        v43 = sub_26666B278();
        if (!OUTLINED_FUNCTION_8_3(v43))
        {
          OUTLINED_FUNCTION_3_5();
          v44 = OUTLINED_FUNCTION_21_1();
          v45(v44);
        }

        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D328, &unk_266677400) + 48);
LABEL_42:
        v15 += v46;
        v6 = type metadata accessor for Snippet.ComposeEventModel(0);
        if (OUTLINED_FUNCTION_18_1(v15))
        {
          break;
        }

        v32 = v6[7];
LABEL_44:
        v13 = sub_266668D38();
        if (!__swift_getEnumTagSinglePayload(v15 + v32, 1, v13))
        {
          OUTLINED_FUNCTION_4_5();
          (*(v63 + 8))(v15 + v32, v13);
        }

        v64 = v6[8];
        if (!__swift_getEnumTagSinglePayload(v15 + v64, 1, v13))
        {
          OUTLINED_FUNCTION_4_5();
          (*(v65 + 8))(v15 + v64, v13);
        }

        OUTLINED_FUNCTION_7_4(v6[12]);
LABEL_49:

        break;
      case 8u:

        v6 = type metadata accessor for Snippet.ComposeEventModel(0);
        v32 = v6[7];
        goto LABEL_44;
      default:
        break;
    }
  }

  v17 = v0 + v14;
  if (!OUTLINED_FUNCTION_17_1(v0 + v14))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 4u:
      case 0xDu:
        goto LABEL_62;
      case 1u:
      case 2u:
      case 6u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:

        type metadata accessor for Snippet.Event(0);
        OUTLINED_FUNCTION_25_1();
        OUTLINED_FUNCTION_0_5();
        (*(v25 + 8))(v6 + v17);
        OUTLINED_FUNCTION_7_4(v16[10]);

        OUTLINED_FUNCTION_7_4(v16[11]);

        v26 = OUTLINED_FUNCTION_27_1();
        if (!OUTLINED_FUNCTION_11_1(v26))
        {
          v27 = *(v13 + 28);
          type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
          if (!swift_getEnumCaseMultiPayload())
          {
            sub_266668D38();
            OUTLINED_FUNCTION_0_5();
            (*(v28 + 8))(v6 + v27);
          }
        }

        v29 = v16[14];
        v30 = sub_26666B278();
        if (!OUTLINED_FUNCTION_10_2(v30))
        {
          OUTLINED_FUNCTION_4_5();
          (*(v31 + 8))(v17 + v29, v16);
        }

        break;
      case 3u:

        type metadata accessor for Snippet.Event(0);
        OUTLINED_FUNCTION_25_1();
        OUTLINED_FUNCTION_0_5();
        (*(v66 + 8))(v6 + v17);
        OUTLINED_FUNCTION_7_4(v16[10]);

        OUTLINED_FUNCTION_7_4(v16[11]);

        v67 = OUTLINED_FUNCTION_27_1();
        if (!OUTLINED_FUNCTION_11_1(v67))
        {
          v68 = *(v13 + 28);
          type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
          if (!swift_getEnumCaseMultiPayload())
          {
            sub_266668D38();
            OUTLINED_FUNCTION_0_5();
            (*(v69 + 8))(v6 + v68);
          }
        }

        v70 = v16[14];
        v71 = sub_26666B278();
        if (!OUTLINED_FUNCTION_10_2(v71))
        {
          OUTLINED_FUNCTION_4_5();
          (*(v72 + 8))(v17 + v70, v16);
        }

        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D320, &qword_266673E10);

        v54 = *(v73 + 64);
        goto LABEL_56;
      case 5u:

        type metadata accessor for Snippet.Event(0);
        OUTLINED_FUNCTION_25_1();
        OUTLINED_FUNCTION_0_5();
        (*(v47 + 8))(v6 + v17);
        OUTLINED_FUNCTION_7_4(v16[10]);

        OUTLINED_FUNCTION_7_4(v16[11]);

        v48 = OUTLINED_FUNCTION_27_1();
        if (!OUTLINED_FUNCTION_11_1(v48))
        {
          v49 = *(v13 + 28);
          type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
          if (!swift_getEnumCaseMultiPayload())
          {
            sub_266668D38();
            OUTLINED_FUNCTION_0_5();
            (*(v50 + 8))(v6 + v49);
          }
        }

        v51 = v16[14];
        v52 = sub_26666B278();
        if (!OUTLINED_FUNCTION_10_2(v52))
        {
          OUTLINED_FUNCTION_4_5();
          (*(v53 + 8))(v17 + v51, v16);
        }

        v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D328, &unk_266677400) + 48);
LABEL_56:
        v74 = v17 + v54;
        v75 = type metadata accessor for Snippet.ComposeEventModel(0);
        if (__swift_getEnumTagSinglePayload(v74, 1, v75))
        {
          break;
        }

        v76 = *(v75 + 28);
        v77 = sub_266668D38();
        if (!OUTLINED_FUNCTION_18_1(v74 + v76))
        {
          OUTLINED_FUNCTION_3_5();
          (*(v78 + 8))(v74 + v76, v77);
        }

        v79 = *(v75 + 32);
        if (!OUTLINED_FUNCTION_18_1(v74 + v79))
        {
          OUTLINED_FUNCTION_3_5();
          (*(v80 + 8))(v74 + v79, v77);
        }

LABEL_61:

LABEL_62:

        break;
      case 8u:

        v33 = type metadata accessor for Snippet.ComposeEventModel(0);
        v34 = sub_266668D38();
        if (!OUTLINED_FUNCTION_8_3(v34))
        {
          OUTLINED_FUNCTION_3_5();
          v35 = OUTLINED_FUNCTION_21_1();
          v36(v35);
        }

        if (!OUTLINED_FUNCTION_18_1(v17 + *(v33 + 32)))
        {
          OUTLINED_FUNCTION_3_5();
          v37 = OUTLINED_FUNCTION_21_1();
          v38(v37);
        }

        goto LABEL_61;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0);
}

id sub_26654C590(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_26654C5C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654C664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266668D98();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26654C714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266668D98();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26654C810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26654C7E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26654C840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26654C8FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26654CA90()
{

  OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_26654CADC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654CB24()
{

  OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_26654CB98()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v3 = sub_266668D38();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v3))
  {
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654CCC8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654CD28()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654CF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266668D68();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26654CFB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_266668D68();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26654D094(uint64_t a1, uint64_t a2)
{
  v4 = sub_26666C0B8();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26654D0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26666C0B8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_26654D210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266668D98();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26654D2C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266668D98();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26654D36C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654D3C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654D420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_33_2();
  v6 = sub_266669DE8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_266668D38();
    v8 = v3 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(v3 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_26654D4EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_33_2();
  result = sub_266669DE8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_266668D38();
    v10 = v4 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26654D5CC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654D604()
{
  v1 = (type metadata accessor for DayEventsReadingFlow.Window(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  sub_266669DE8();
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(v0 + v2);

  v4 = v1[8];
  sub_266668D38();
  OUTLINED_FUNCTION_18_2();
  (*(v5 + 8))(v0 + v2 + v4);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654D720()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654D760()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654D7A8()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654D8CC(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 24);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    sub_266668998();
    OUTLINED_FUNCTION_60();
    if (*(v7 + 84) == a2)
    {
      v8 = a3[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFF8, &qword_266672D00);
      OUTLINED_FUNCTION_60();
      if (*(v9 + 84) == a2)
      {
        v8 = a3[12];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E000, &qword_266672D08);
        v8 = a3[14];
      }
    }

    v10 = OUTLINED_FUNCTION_54(v8);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

uint64_t sub_26654D9E8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_266668998();
    OUTLINED_FUNCTION_60();
    if (*(v7 + 84) == a3)
    {
      v8 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFF8, &qword_266672D00);
      OUTLINED_FUNCTION_60();
      if (*(v9 + 84) == a3)
      {
        v8 = a4[12];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E000, &qword_266672D08);
        v8 = a4[14];
      }
    }

    v10 = OUTLINED_FUNCTION_54(v8);

    return __swift_storeEnumTagSinglePayload(v10, v11, a2, v12);
  }

  return result;
}

uint64_t sub_26654DB00(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v3 = *a1;
    if (v3 >= 4)
    {
      return v3 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
    v6 = OUTLINED_FUNCTION_54(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

_BYTE *sub_26654DB7C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
    v6 = OUTLINED_FUNCTION_54(*(a4 + 28));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_26654DC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266669A88();
    v9 = a1 + *(a3 + 68);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26654DD24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_266669A88();
    v8 = v5 + *(a4 + 68);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26654DE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CalendarNLv3Intent(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26654DEB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CalendarNLv3Intent(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26654DF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26666B348();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26654E044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26666B348();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

char *sub_26654E13C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_26(a3, result);
  }

  return result;
}

uint64_t sub_26654E15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266668D98();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26654E1E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_266668D98();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26654E384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_266669BB8();
  v6 = OUTLINED_FUNCTION_11_15(v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v6);
  if (EnumTagSinglePayload >= 5)
  {
    return EnumTagSinglePayload - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26654E3D4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_266669BB8();
  v8 = OUTLINED_FUNCTION_11_15(v7);

  return __swift_storeEnumTagSinglePayload(a1, v6, a3, v8);
}

uint64_t sub_26654E4CC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_266668D38();
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_26654E54C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_266668D38();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26654E5F0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654E628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266668D38();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26654E6D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266668D38();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26654E820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266669A88();
    v9 = a1 + *(a3 + 64);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26654E8A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_266669A88();
    v8 = v5 + *(a4 + 64);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26654E970()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_26654E9A4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654E9F4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_26654EA30()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654EAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StringLocalizer(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26654EB4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StringLocalizer(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26654EBF4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_26654EC28()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654EC68()
{
  sub_266669E58();
  OUTLINED_FUNCTION_4_5();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654ED48()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654ED80()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654EDB8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26654EDF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266669E18();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26654EE40(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_266669E18();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_26654F330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_33_2();
  type metadata accessor for CalendarNLv3Intent(v6);
  OUTLINED_FUNCTION_60();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  sub_266668D98();
  OUTLINED_FUNCTION_60();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(v3 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_26654F41C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_33_2();
  type metadata accessor for CalendarNLv3Intent(v8);
  OUTLINED_FUNCTION_60();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    sub_266668D98();
    OUTLINED_FUNCTION_60();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 24) = (a2 - 1);
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_26654F554()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_26654F5B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26666B9F8();
  *a1 = result;
  return result;
}

uint64_t sub_26654F61C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26666BB08();
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26654F6A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26666BB08();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26654F794(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_26654F7CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_266627154(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26654FD08()
{
  OUTLINED_FUNCTION_56_2();
  v2 = sub_26666B208();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26654FD48()
{
  OUTLINED_FUNCTION_56_2();
  sub_26666B208();
  v0 = OUTLINED_FUNCTION_69_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_26654FE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26666A588();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26654FEAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_56_2();
  result = sub_26666A588();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_69_2();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_266550018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266668D98();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_26666B558();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2665500E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_266668D98();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_26666B558();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2665501B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26666A918();
  *a1 = result;
  return result;
}

uint64_t sub_266550238()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_266550288()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2665502CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266668D98();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_266550354(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_266668D98();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266550448()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OUTLINED_FUNCTION_4_42();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_266550478()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2665504D8(uint64_t a1)
{
  if (*(v1 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  }

  v2 = OUTLINED_FUNCTION_4_42();

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t sub_266550510()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_266550550()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD38, &qword_26667B6B0);
  OUTLINED_FUNCTION_27_17();
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD48, &qword_26667B6C0);
  OUTLINED_FUNCTION_3_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD40, &qword_26667B6B8);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_9_26();
  __swift_destroy_boxed_opaque_existential_1((v3 + 128));
  v6 = *(v1 + 72);
  v7 = sub_266669A88();
  OUTLINED_FUNCTION_18_2();
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v10 = OUTLINED_FUNCTION_26_12();
  v11(v10);
  OUTLINED_FUNCTION_17_15();
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));
  v12 = (v9)(v0 + *(v5 + 76), v7);
  OUTLINED_FUNCTION_10_23(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23);
  v20 = OUTLINED_FUNCTION_25_14();

  return MEMORY[0x2821FE8E8](v20);
}

uint64_t sub_266550774()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF70, &unk_266677650);
  OUTLINED_FUNCTION_27_17();
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF80, &qword_266677660);
  OUTLINED_FUNCTION_3_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF78, &qword_26667B710);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_9_26();
  __swift_destroy_boxed_opaque_existential_1((v3 + 128));
  v6 = *(v1 + 72);
  v7 = sub_266669A88();
  OUTLINED_FUNCTION_18_2();
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v10 = OUTLINED_FUNCTION_26_12();
  v11(v10);
  OUTLINED_FUNCTION_17_15();
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));
  v12 = (v9)(v0 + *(v5 + 76), v7);
  OUTLINED_FUNCTION_10_23(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23);
  v20 = OUTLINED_FUNCTION_25_14();

  return MEMORY[0x2821FE8E8](v20);
}

uint64_t sub_266550998()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2665509D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_7();
  v6 = sub_266668D38();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_266550A80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266668D38();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266550B50()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_266550BB8()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_266550C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 9)
    {
      return v8 - 8;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_266550D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 8;
  }

  return result;
}

uint64_t sub_266550DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266668D98();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_266550EA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266668D98();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266550FB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266550FD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_266551008()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_26655103C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_266551084()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2665511CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_266584B38(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_266551278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t variable initialization expression of ComposeEventAppIntent._startDate()
{
  OUTLINED_FUNCTION_3();
  sub_266668D38();
  v0 = OUTLINED_FUNCTION_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t variable initialization expression of Snippet.Event.recurrenceRule()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Snippet.Event.RecurrenceRule(v0);
  v1 = OUTLINED_FUNCTION_1();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t variable initialization expression of Snippet.Event.eventModel()
{
  OUTLINED_FUNCTION_3();
  sub_26666B278();
  v0 = OUTLINED_FUNCTION_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t default argument 3 of Snippet.Event.RecurrenceRule.init(frequency:interval:dayOfWeek:end:)()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(v0);

  return swift_storeEnumTagMultiPayload();
}

id default argument 0 of DirectInvocationCodable.serializeToBase64(context:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277D5C218]);

  return [v0 init];
}

uint64_t sub_266551444(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_266551480@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_1_23();
  *a1 = result;
  return result;
}

uint64_t sub_2665514A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2665514D8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2665514E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266551510(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_266551518@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266551548(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_266551558(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_266551584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2665515B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2665515B8(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_2665515DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266551444(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_266551658@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266551688(*a1, *v2);
  *a2 = result;
  return result;
}

void sub_266551704()
{
  OUTLINED_FUNCTION_2();
  nullsub_1();
  *v0 = v1;
}

void *sub_26655172C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2665517BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266551278(a1);
  *a2 = result;
  return result;
}

uint64_t sub_266551874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_266551A54(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_266551AF8(void *a1, void *a2)
{
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D000, &qword_26666DE70);
  OUTLINED_FUNCTION_3_0();
  v58 = v4;
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = v52 - v5;
  v6 = sub_26666BE18();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_1_0();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D008, &qword_26666DE78);
  OUTLINED_FUNCTION_3_0();
  v55 = v7;
  v9 = MEMORY[0x28223BE20](v8);
  v53 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v52 - v11;
  v13 = type metadata accessor for TaskParser(0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  sub_266669638();
  sub_266669E68();
  __swift_project_boxed_opaque_existential_1(v67, v67[3]);
  sub_266669648();
  v17 = (v16 + v13[5]);
  v17[3] = type metadata accessor for CalendarDateTimeResolver(0);
  v17[4] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  boxed_opaque_existential_1[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_1[4] = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v19 = swift_allocObject();
  *boxed_opaque_existential_1 = v19;
  sub_2665524C0(v80, v19 + 16);
  sub_266668D88();
  sub_26666B548();
  v20 = (v16 + v13[6]);
  v21 = type metadata accessor for CalendarContactResolver(0);
  v20[3] = v21;
  v20[4] = &off_287809148;
  *(__swift_allocate_boxed_opaque_existential_1(v20) + *(v21 + 20)) = 0;
  sub_26666B338();
  sub_26666C068();
  v22 = sub_26666C058();
  v23 = (v16 + v13[7]);
  v23[3] = &type metadata for CalendarReferenceResolver;
  v23[4] = &off_28780BAC8;
  *v23 = v22;
  __swift_destroy_boxed_opaque_existential_1(v67);
  if (qword_28156CD28 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_28156CD28);
  }

  v24 = qword_28156D828;
  v25 = swift_retain_n();
  v26 = sub_266552AD4(v25);
  v79[3] = v13;
  v79[4] = &off_287808308;
  v27 = __swift_allocate_boxed_opaque_existential_1(v79);
  sub_266552BE0(v16, v27);
  v79[5] = v26;
  v78[3] = v13;
  v78[4] = &off_287808308;
  v28 = __swift_allocate_boxed_opaque_existential_1(v78);
  sub_266552BE0(v16, v28);
  v77[3] = &type metadata for EventRecurrencePromptParser;
  v77[4] = &off_2878095D0;
  v29 = type metadata accessor for EventProvider();
  v76[4] = &off_287806290;
  v76[3] = v29;
  v76[0] = v24;
  v30 = v26;
  sub_266669E68();
  type metadata accessor for DeleteEventCATsSimple(0);
  sub_26666BE08();
  v31 = sub_26666BDD8();
  v32 = sub_2666699F8();
  OUTLINED_FUNCTION_7(v32);
  v33 = sub_2666699E8();
  v74[4] = MEMORY[0x277D5BD58];
  v74[3] = v32;
  v74[0] = v33;
  sub_266552C44(0, &qword_28007D010, 0x277CD3B98);
  sub_266552C44(0, &qword_28007D018, 0x277CD3BA0);
  v54 = v16;
  sub_2666694A8();
  v52[1] = sub_26666BE38();
  sub_26666BE28();
  sub_2666693C8();

  v34 = v60;
  OUTLINED_FUNCTION_2_0();
  sub_266669458();
  sub_26655358C(v76, v72);
  sub_26655358C(v74, &v73);
  v71 = a2;
  v72[5] = v31;
  sub_266552C84();
  OUTLINED_FUNCTION_6();

  v35 = a2;
  sub_266669418();
  OUTLINED_FUNCTION_2_0();
  sub_266669478();
  sub_26655358C(v77, v67);
  sub_26655358C(v75, &v68);
  sub_26655358C(v76, v69);
  sub_26655358C(v74, &v70);
  v69[5] = v31;
  sub_266552CD8();
  OUTLINED_FUNCTION_6();

  sub_266669398();
  OUTLINED_FUNCTION_2_0();
  sub_266669438();
  v63[3] = &unk_287806408;
  v63[4] = &off_2878064B0;
  OUTLINED_FUNCTION_4();
  v63[0] = swift_allocObject();
  sub_266552D2C(v78, v63[0] + 16);
  sub_26655358C(v75, &v64);
  sub_26655358C(v76, v65);
  sub_26655358C(v74, &v66);
  v65[5] = v31;
  OUTLINED_FUNCTION_5();
  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  *(v36 + 24) = &off_28780C300;
  sub_266552D90();
  v37 = v30;

  sub_2666693F8();

  OUTLINED_FUNCTION_2_0();
  sub_266669468();
  sub_26655358C(v74, &v62);
  v61[0] = v37;
  v61[1] = v31;
  sub_266552DE4();
  v38 = v37;
  sub_2666693B8();
  OUTLINED_FUNCTION_2_0();
  sub_266669448();

  sub_266552E38(v61);
  sub_266552E8C(v67);
  sub_266552EE0(&v71);
  __swift_destroy_boxed_opaque_existential_1(v75);
  sub_266552F34(v78);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v77);
  sub_266552F88(v63);
  sub_266552FDC(v79, v67);
  v39 = v55;
  (*(v55 + 16))(v53, v12, v34);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D040, &qword_26666DE80);
  OUTLINED_FUNCTION_7(v40);
  OUTLINED_FUNCTION_6();
  sub_2666694B8();
  sub_266553038();
  v41 = v57;
  sub_266669808();
  v42 = sub_2665EF53C(v56);
  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  v46 = objc_allocWithZone(MEMORY[0x277CD3B98]);
  v47 = sub_2665529CC(v44, v45, 0);
  sub_26666BE28();
  v48 = v59;
  v49 = sub_2666697F8();

  v67[0] = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D050, &qword_26666DE88);
  sub_26655369C(&qword_28007D058, &qword_28007D050, &qword_26666DE88, MEMORY[0x277D5B820]);
  v50 = sub_266669528();

  (*(v58 + 8))(v41, v48);
  (*(v39 + 8))(v12, v60);
  sub_2665530D4(v79);
  sub_266553128(v54);
  sub_266553184(v80);
  return v50;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26655251C(uint64_t a1)
{
  v2 = sub_26666BE18();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_1_0();
  type metadata accessor for EventDisambiguationStrategy();
  v3 = sub_2665698CC(1);
  sub_266669B78();
  sub_26655358C(a1, v12);
  OUTLINED_FUNCTION_5();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_266553228;
  *(v4 + 24) = 0;
  v13[2] = &unk_26666DE98;
  v13[3] = v4;
  v5 = sub_2666699F8();
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_6();

  v6 = sub_2666699E8();
  v13[9] = v5;
  v13[10] = MEMORY[0x277D5BD58];
  v13[6] = v6;
  type metadata accessor for CommonCATsSimple(0);
  sub_26666BE08();
  v13[11] = sub_26666BDD8();
  sub_266669E68();
  if (qword_28156CD28 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_28156CD28);
  }

  v7 = qword_28156D828;
  v13[20] = type metadata accessor for EventProvider();
  v13[21] = &off_287806290;
  v13[17] = v7;
  v8 = swift_allocObject();
  sub_26654B7D8(v12, v8 + 16);
  *(v8 + 56) = 2;
  v13[0] = &unk_26666DEA0;
  v13[1] = v8;
  v13[4] = &unk_26666DEB0;
  v13[5] = v3;
  sub_266553530(v13, v12);
  sub_26655358C(v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D060, &qword_26666DEB8);
  swift_allocObject();
  *&v12[0] = sub_266552824(v12, v11);
  sub_26655369C(&qword_28007D068, &qword_28007D060, &qword_26666DEB8, &unk_26666F918);

  v9 = sub_266669528();

  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_2665535F0(v13);
  return v9;
}

uint64_t sub_2665527C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a3(a1, a2);
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_266552824(void *__src, __int128 *a2)
{
  memcpy((v2 + 16), __src, 0xB0uLL);
  sub_26654B7D8(a2, v2 + 192);
  *(v2 + 232) = 0;
  *(v2 + 240) = 0;
  *(v2 + 248) = 4;
  return v2;
}

uint64_t sub_266552870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  return MEMORY[0x2822009F8](sub_266552890, 0, 0);
}

uint64_t sub_266552890()
{

  sub_266669B78();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D070, &unk_26666DEC0);
  OUTLINED_FUNCTION_7(v1);
  type metadata accessor for EventDisambiguationStrategy();
  sub_266553644();

  *(v0 + 16) = sub_266669238();
  sub_26655369C(&unk_28007D080, &qword_28007D070, &unk_26666DEC0, MEMORY[0x277D5B6B0]);
  v2 = sub_266669538();

  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_2665529CC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_26666C2F8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithTargetEventIdentifier:v5 deleteAllOccurrences:a3];

  return v6;
}

id sub_266552A3C(uint64_t a1, _BYTE *a2)
{
  v7[3] = type metadata accessor for EventProvider();
  v7[4] = &off_287806290;
  v7[0] = a1;
  a2[OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_promptedForEventRecurrence] = 0;
  sub_26655358C(v7, &a2[OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_eventProvider]);
  v6.receiver = a2;
  v6.super_class = _s13IntentHandlerCMa_2();
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4;
}

id sub_266552AD4(uint64_t a1)
{
  v11 = type metadata accessor for EventProvider();
  v12 = &off_287806290;
  v10[0] = a1;
  v2 = objc_allocWithZone(_s13IntentHandlerCMa_2());
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = sub_266552A3C(*v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t sub_266552BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskParser(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266552C44(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_266552C84()
{
  result = qword_28007D020;
  if (!qword_28007D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D020);
  }

  return result;
}

unint64_t sub_266552CD8()
{
  result = qword_28007D028;
  if (!qword_28007D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D028);
  }

  return result;
}

unint64_t sub_266552D90()
{
  result = qword_28007D030;
  if (!qword_28007D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D030);
  }

  return result;
}

unint64_t sub_266552DE4()
{
  result = qword_28007D038;
  if (!qword_28007D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D038);
  }

  return result;
}

unint64_t sub_266553038()
{
  result = qword_28007D048;
  if (!qword_28007D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D048);
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

uint64_t sub_266553128(uint64_t a1)
{
  v2 = type metadata accessor for TaskParser(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_26655322C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2665536F4;

  return sub_2665527C0(a1, a2, v6);
}

uint64_t sub_2665532F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665536F4;

  return sub_26657BA58();
}

uint64_t sub_26655338C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_266553434;

  return sub_266552870(a1, a2, v2);
}

uint64_t sub_266553434(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_26655358C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_266553644()
{
  result = qword_28007D078;
  if (!qword_28007D078)
  {
    type metadata accessor for EventDisambiguationStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D078);
  }

  return result;
}

uint64_t sub_26655369C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t get_enum_tag_for_layout_string_19SiriCalendarIntents0B4TaskO(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 4)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2665537B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2665537F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_266553840(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_266553878()
{
  sub_266553950(v0, v7);
  switch(v8)
  {
    case 3:
      sub_26654B7D8(v7, v9);
      v1 = v10;
      v4 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v3 = *(*(v4 + 8) + 8);
      goto LABEL_4;
    case 4:
      sub_266553988(v7);
      goto LABEL_6;
    case 5:
LABEL_6:
      v5 = 2;
      break;
    default:
      sub_26654B7D8(v7, v9);
      v1 = v10;
      v2 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v3 = *(v2 + 8);
LABEL_4:
      v5 = (*(v3 + 8))(v1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      break;
  }

  return v5;
}

uint64_t sub_2665539C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_266553A30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

void sub_266553B94(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_266553DD0()
{
  sub_2666698A8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266553E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_266669548();
}

uint64_t sub_266553EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266553434;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266553F58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266553FF0;

  return sub_266553DB0(a1);
}

uint64_t sub_266553FF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_266554160()
{
  OUTLINED_FUNCTION_11();
  sub_26656704C(*(v0 + 16));
  if (v1)
  {
    v2 = objc_opt_self();
    OUTLINED_FUNCTION_25();
    v3 = sub_26666C2F8();

    v4 = [v2 successWithResolvedString_];
  }

  else
  {
    sub_266552C44(0, &unk_28007D170, 0x277CD4218);
    v4 = [swift_getObjCClassFromMetadata() notRequired];
  }

  OUTLINED_FUNCTION_8();

  return v5(v4);
}

uint64_t sub_266554270(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2665582C4;

  return sub_26655414C(v6);
}

uint64_t sub_266554330()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_266668DF8();
  v1[5] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_19();
  v5 = sub_266668E08();
  v1[8] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_19();
  v7 = sub_266668DC8();
  v1[11] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v1[14] = OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v9 = sub_266668D38();
  v1[18] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_19();
  v11 = sub_266668EB8();
  v1[21] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[22] = v12;
  v1[23] = OUTLINED_FUNCTION_19();
  v13 = sub_266668B08();
  v1[24] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v1[25] = v14;
  v1[26] = OUTLINED_FUNCTION_19();
  v15 = sub_266668E68();
  v1[27] = v15;
  OUTLINED_FUNCTION_3_1(v15);
  v1[28] = v16;
  v1[29] = OUTLINED_FUNCTION_19();
  v17 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_26655461C()
{
  v1 = [*(v0 + 24) dateTimeRange];
  if (v1)
  {
    v2 = v1;
    sub_2665D1CD4();
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v3 = sub_26666C168();
    __swift_project_value_buffer(v3, qword_28156D7E8);
    v4 = sub_26666C148();
    v5 = sub_26666C5E8();
    if (os_log_type_enabled(v4, v5))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_12();
    }

    v58 = [objc_opt_self() successWithResolvedDateComponentsRange_];
  }

  else if (sub_2665667CC())
  {
    v11 = *(v0 + 32);
    v12 = *(v11 + OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_ordinalReference);
    switch(*(v11 + OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_ordinalReference))
    {
      case 1:
      case 2:
        goto LABEL_10;
      case 3:
        OUTLINED_FUNCTION_24();
LABEL_10:
        v13 = sub_26666CAC8();

        if (v13)
        {
          goto LABEL_17;
        }

        if (v12 == 1)
        {
LABEL_14:

          goto LABEL_17;
        }

        if (v12 != 2)
        {
          OUTLINED_FUNCTION_24();
        }

        v14 = sub_26666CAC8();

        if (v14)
        {
          goto LABEL_17;
        }

LABEL_25:
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v23 = sub_26666C168();
        __swift_project_value_buffer(v23, qword_28156D7E8);
        v24 = sub_26666C148();
        v25 = sub_26666C5F8();
        if (OUTLINED_FUNCTION_9(v25))
        {
          v26 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v26);
          OUTLINED_FUNCTION_4_0(&dword_266549000, v27, v28, "[FindEvents+IntentHandler] No dateTimeRange provided and no other slots filled, setting dateTimeRange to today");
          OUTLINED_FUNCTION_10();
        }

        v57 = *(v0 + 232);
        v53 = *(v0 + 224);
        v54 = *(v0 + 216);
        v47 = *(v0 + 208);
        v50 = *(v0 + 200);
        v51 = *(v0 + 192);
        v30 = *(v0 + 176);
        v29 = *(v0 + 184);
        v31 = *(v0 + 160);
        v40 = *(v0 + 168);
        v32 = *(v0 + 144);
        v59 = *(v0 + 152);
        v48 = *(v0 + 136);
        v49 = *(v0 + 128);
        v52 = *(v0 + 120);
        v56 = *(v0 + 112);
        v33 = *(v0 + 96);
        v41 = *(v0 + 104);
        v55 = *(v0 + 88);
        v34 = *(v0 + 72);
        v42 = *(v0 + 64);
        v43 = *(v0 + 80);
        v35 = *(v0 + 48);
        v44 = *(v0 + 40);
        v45 = *(v0 + 56);

        sub_266668E28();
        sub_266668EA8();
        sub_266668CF8();
        sub_266668DD8();
        v46 = *(v59 + 8);
        v46(v31, v32);
        (*(v30 + 8))(v29, v40);
        sub_266668CF8();
        (*(v33 + 104))(v41, *MEMORY[0x277CC9878], v55);
        (*(v34 + 104))(v43, *MEMORY[0x277CC9900], v42);
        (*(v35 + 104))(v45, *MEMORY[0x277CC98E8], v44);
        sub_266668E38();
        (*(v35 + 8))(v45, v44);
        (*(v34 + 8))(v43, v42);
        (*(v33 + 8))(v41, v55);
        v46(v31, v32);
        v36 = swift_task_alloc();
        *(v36 + 16) = v57;
        sub_266554E58(sub_266557D54, v36, v48);

        sub_266557D74(v56, &qword_28007D140, &qword_26666F140);
        v37 = objc_opt_self();
        sub_266552C44(0, &qword_28007D168, 0x277CD3B68);
        (*(v50 + 16))(v49, v47, v51);
        __swift_storeEnumTagSinglePayload(v49, 0, 1, v51);
        sub_266557DD4(v48, v52, &unk_28007DC90, &qword_266676EB0);
        sub_2665D1AA0();
        v39 = v38;
        v58 = [v37 successWithResolvedDateComponentsRange_];

        sub_266557D74(v48, &unk_28007DC90, &qword_266676EB0);
        (*(v50 + 8))(v47, v51);
        (*(v53 + 8))(v57, v54);
        break;
      case 4:
        goto LABEL_25;
      default:
        goto LABEL_14;
    }
  }

  else
  {
LABEL_17:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v15 = sub_26666C168();
    __swift_project_value_buffer(v15, qword_28156D7E8);
    v16 = sub_26666C148();
    v17 = sub_26666C5E8();
    if (OUTLINED_FUNCTION_9(v17))
    {
      v18 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v18);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v19, v20, "[FindEvents+IntentHandler] No dateTimeRange provided and other slots filled, returning notRequired");
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
    v58 = [swift_getObjCClassFromMetadata() notRequired];
  }

  OUTLINED_FUNCTION_8();

  return v21(v58);
}

uint64_t sub_266554D64(uint64_t a1)
{
  v1 = sub_266668EB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266668EA8();
  sub_266668DD8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_266554E58@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v18[1] = a2;
  v19 = a1;
  v7 = sub_266668D38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v18 - v12;
  sub_266557DD4(v5, v18 - v12, &qword_28007D140, &qword_26666F140);
  v14 = 1;
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
  {
    v15 = a3;
LABEL_5:
    v16 = sub_266668B08();
    return __swift_storeEnumTagSinglePayload(v15, v14, 1, v16);
  }

  (*(v8 + 32))(v10, v13, v7);
  v15 = a3;
  v19(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t sub_266555074(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2665582C4;

  return sub_266554330();
}

uint64_t sub_26655514C()
{
  v22 = v0;
  v1 = sub_2665670B0(*(v0 + 16));
  if (!v1)
  {
LABEL_14:
    if (qword_28156C150 == -1)
    {
LABEL_15:
      v12 = sub_26666C168();
      __swift_project_value_buffer(v12, qword_28156D7E8);
      v13 = sub_26666C148();
      v14 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_9(v14))
      {
        v15 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v15);
        OUTLINED_FUNCTION_4_0(&dword_266549000, v16, v17, "[FindEvents+IntentHandler] No participants found, returning notRequired");
        OUTLINED_FUNCTION_10();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
      OUTLINED_FUNCTION_23();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_26666E050;
      sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
      *(v11 + 32) = [swift_getObjCClassFromMetadata() notRequired];
      goto LABEL_18;
    }

LABEL_24:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
    goto LABEL_15;
  }

  v21 = MEMORY[0x277D84FA0];
  sub_266557B9C(v1);
  v3 = v2;

  if (!sub_2665C485C())
  {

    goto LABEL_14;
  }

  v4 = sub_2665C485C();
  if (v4)
  {
    v5 = v4;
    v19 = MEMORY[0x277D84F90];
    result = sub_26666C898();
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x266788B60](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v9 = *(v3 + 8 * v7 + 32);
      }

      v10 = v9;
      v21 = v9;
      sub_266555408(&v21, &v20);

      sub_26666C868();
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
      ++v7;
      if (v8 == v5)
      {

        v11 = v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:
  OUTLINED_FUNCTION_8();

  return v18(v11);
}

void sub_266555408(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_266668BE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D160, &qword_26666E0B0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v51 - v12;
  v14 = *a1;
  v15 = sub_2666394DC(v14);
  if (v15)
  {
    v16 = v15;
    if (sub_2665C485C())
    {
      sub_2666373CC();
      v18 = v17;
      v19 = *(v17 + 16);
      if (v19 < 2)
      {

        if (qword_28156C150 != -1)
        {
          swift_once();
        }

        v45 = sub_26666C168();
        __swift_project_value_buffer(v45, qword_28156D7E8);
        v46 = sub_26666C148();
        v47 = sub_26666C618();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_266549000, v46, v47, "[FindEvents+IntentHandler] Only one unique contact within Siri Matches, returning the first as success", v48, 2u);
          MEMORY[0x266789690](v48, -1, -1);
        }

        sub_2665C4864();
        if ((v16 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x266788B60](0, v16);
        }

        else
        {
          v49 = *(v16 + 32);
        }

        v50 = v49;

        v28 = [objc_opt_self() successWithResolvedPerson_];
      }

      else
      {

        if (qword_28156C150 != -1)
        {
          swift_once();
        }

        v20 = sub_26666C168();
        __swift_project_value_buffer(v20, qword_28156D7E8);
        v21 = sub_26666C148();
        v22 = sub_26666C618();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_266549000, v21, v22, "[FindEvents+IntentHandler] More than one contact in Siri Matches, disambiguating", v23, 2u);
          MEMORY[0x266789690](v23, -1, -1);
        }

        v51[1] = MEMORY[0x277D84F90];
        sub_26666C898();
        v24 = 32;
        do
        {
          v25 = *(v18 + v24);
          sub_26666C868();
          sub_26666C8A8();
          sub_26666C8B8();
          sub_26666C878();
          v24 += 24;
          --v19;
        }

        while (v19);

        v26 = objc_opt_self();
        sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
        v27 = sub_26666C488();

        v28 = [v26 disambiguationWithPeopleToDisambiguate_];
      }

      goto LABEL_37;
    }
  }

  v29 = [v14 nameComponents];
  if (v29)
  {
    v30 = v29;
    sub_266668BB8();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v31, 1, v4);
  sub_266557DD4(v13, v11, &qword_28007D160, &qword_26666E0B0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    sub_266557D74(v13, &qword_28007D160, &qword_26666E0B0);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    v32 = sub_266668BD8();
    v33 = v34;
    (*(v5 + 8))(v7, v4);
    sub_266557D74(v13, &qword_28007D160, &qword_26666E0B0);
  }

  v35 = sub_266555B04(v32, v33);

  if (v35)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v36 = sub_26666C168();
    __swift_project_value_buffer(v36, qword_28156D7E8);
    v37 = sub_26666C148();
    v38 = sub_26666C618();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_266549000, v37, v38, "[FindEvents+IntentHandler] No siri matches found and cannot use skeleton to search by, returning unsupported", v39, 2u);
      MEMORY[0x266789690](v39, -1, -1);
    }

    sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
    v40 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v41 = sub_26666C168();
    __swift_project_value_buffer(v41, qword_28156D7E8);
    v42 = sub_26666C148();
    v43 = sub_26666C618();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_266549000, v42, v43, "[FindEvents+IntentHandler] No siri matches found, using skeleton to search by", v44, 2u);
      MEMORY[0x266789690](v44, -1, -1);
    }

    v40 = [objc_opt_self() successWithResolvedPerson_];
  }

  v28 = v40;
LABEL_37:
  *a2 = v28;
}

BOOL sub_266555B04(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t sub_266555B4C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266555C0C;

  return sub_266555138(v6);
}

uint64_t sub_266555C0C()
{
  OUTLINED_FUNCTION_18();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;

  sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
  v7 = sub_26666C488();

  (v2)[2](v2, v7);

  _Block_release(v2);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_266555D9C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_266555DB0()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_locationProvider), *(*(v0 + 24) + OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_locationProvider + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_266555E74;

  return sub_266611228();
}

uint64_t sub_266555E74()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;

  OUTLINED_FUNCTION_8();

  return v4(v0);
}

uint64_t sub_266555F78(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26655603C;

  return sub_266555D9C(v6);
}

uint64_t sub_26655603C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_18();
  v3 = v2[4];
  v4 = v2[3];
  v5 = v2[2];
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_25();
  v9(v8);
  _Block_release(v3);

  v10 = *(v6 + 8);

  return v10();
}

uint64_t sub_26655619C()
{
  OUTLINED_FUNCTION_11();
  if ([*(v0 + 16) requestedEventAttribute])
  {
    v1 = [objc_opt_self() successWithResolvedEventAttribute_];
  }

  else
  {
    sub_266552C44(0, &unk_28007D150, 0x277CD3BE0);
    v1 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v2 = v1;
  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_26655628C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2665582C4;

  return sub_266556188(v6);
}

uint64_t sub_26655634C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_266556360()
{
  OUTLINED_FUNCTION_14();
  v0[4] = __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_eventProvider), *(v0[3] + OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_eventProvider + 24));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_26655640C;

  return sub_266556B14();
}

uint64_t sub_26655640C()
{
  OUTLINED_FUNCTION_14();
  *(*v0 + 48) = v1;

  v2 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_266556500()
{
  v1 = sub_2665568A4(*(v0 + 48), *(*(v0 + 24) + OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_intentAction) == 3, 1);

  if (qword_28156C150 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v2 = sub_26666C168();
    __swift_project_value_buffer(v2, qword_28156D7E8);

    v3 = sub_26666C148();
    v4 = sub_26666C5E8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_21();
      v6 = swift_slowAlloc();
      v25 = v6;
      *v5 = 136315138;
      sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
      OUTLINED_FUNCTION_28();
      v9 = sub_2665BFC90(v7, v8, &v25);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_266549000, v3, v4, "[FindEvents+IntentHandler] fetched EKEvents: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x266789690](v6, -1, -1);
      MEMORY[0x266789690](v5, -1, -1);
    }

    v25 = MEMORY[0x277D84F90];
    v10 = sub_2665C485C();
    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        sub_2665EBB74();
        v14 = v13;

        v15 = sub_26666C148();
        sub_26666C5E8();

        if (OUTLINED_FUNCTION_30())
        {
          OUTLINED_FUNCTION_21();
          v25 = OUTLINED_FUNCTION_13();
          *v10 = 136315138;
          sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
          OUTLINED_FUNCTION_28();
          sub_2665BFC90(v16, v17, &v25);
          OUTLINED_FUNCTION_29();
          *(v10 + 4) = 0x277CD3AD8uLL;
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
          OUTLINED_FUNCTION_7_0();
          OUTLINED_FUNCTION_12();
        }

        sub_266552C44(0, &unk_28156C0B0, 0x277CD3C18);
        sub_266566874(3, v14);
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_26();

        __asm { BRAA            X2, X16 }
      }

      sub_2665C4864();
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266788B60](i, v1);
      }

      else
      {
        v12 = *(v1 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
      sub_2665EB4F8();
      MEMORY[0x2667887C0]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
    }

    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }
}

id sub_2665568A4(uint64_t a1, char a2, char a3)
{
  result = sub_2665C485C();
  v6 = result;
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
      return MEMORY[0x277D84F90];
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x266788B60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      result = *(a1 + 8 * i + 32);
    }

    v8 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_266557688(result, a2 & 1);
    v10 = v9;
    if (v9 >> 62)
    {
      v11 = sub_26666C768();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2665569D4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_23();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = a1;
  v9 = a3;
  v10 = a1;
  v11 = OUTLINED_FUNCTION_25();

  return sub_26664FFEC(v11, v12);
}

uint64_t sub_266556A50(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2665582C4;

  return sub_26655634C(v6);
}

uint64_t sub_266556B14()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266556BB0()
{
  v58 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = v0[3];
  v2 = sub_26666C168();
  v0[7] = __swift_project_value_buffer(v2, qword_28156D7E8);
  v3 = v1;
  v4 = sub_26666C148();
  sub_26666C618();

  if (OUTLINED_FUNCTION_30())
  {
    v5 = v0[3];
    OUTLINED_FUNCTION_21();
    v57[0] = OUTLINED_FUNCTION_13();
    *v3 = 136315138;
    v6 = v5;
    v7 = [v6 description];
    v8 = sub_26666C308();
    v10 = v9;

    v11 = sub_2665BFC90(v8, v10, v57);

    *(v3 + 1) = v11;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_12();
  }

  v18 = v0[3];
  v17 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  OUTLINED_FUNCTION_23();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26666E050;
  *(v19 + 32) = v18;
  v0[2] = v19;
  if (*(v17 + OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_fallbackSearchQuery + 8))
  {
    v20 = v18;
    OUTLINED_FUNCTION_22();
    sub_2665668D4(v21, v22, v23, v24, v25, v26, v27, v28, 1);
    MEMORY[0x2667887C0]();
    v18 = *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26666C4B8();
    }

    sub_26666C4E8();
    v30 = v0[2];
    v29 = v0[3];
  }

  else
  {
    v30 = v19;
    v29 = v18;
  }

  v0[8] = v30;
  v31 = sub_2665670B0(v29);
  if (!v31)
  {
LABEL_17:

    v40 = sub_26666C148();
    v41 = sub_26666C618();

    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_21();
      v57[0] = OUTLINED_FUNCTION_13();
      *v18 = 136315138;
      v42 = sub_266552C44(0, &qword_28156C0D0, 0x277CD3C10);
      v43 = MEMORY[0x2667887F0](v30, v42);
      sub_2665BFC90(v43, v44, v57);
      OUTLINED_FUNCTION_29();
      *(v18 + 1) = &unk_26666E000;
      _os_log_impl(&dword_266549000, v40, v41, "[FindEvents+IntentHandler] Expanded intents: %s", v18, 0xCu);
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_26();

    __asm { BRAA            X2, X16 }
  }

  v18 = v31;
  if (!sub_2665C485C())
  {

    goto LABEL_17;
  }

  v32 = sub_26666C148();
  v33 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v33))
  {
    v34 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v34);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v35, v36, "[FindEvents+IntentHandler] Intent has search query, calculating alternative search query with participants");
    OUTLINED_FUNCTION_10();
  }

  v37 = v0[3];

  sub_26656704C(v37);
  if (v38)
  {
    sub_26666C358();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v48 = v0[5];
  v47 = v0[6];
  v49 = v0[4];
  v50 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v47, v39, 1, v50);
  v51 = v49 + OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_deviceState;
  v52 = swift_task_alloc();
  *(v52 + 16) = v51;
  sub_2665511FC(sub_266557CC8, v52, v18);
  v0[9] = v53;

  __swift_storeEnumTagSinglePayload(v48, 1, 1, v50);
  v54 = swift_task_alloc();
  v0[10] = v54;
  *v54 = v0;
  v54[1] = sub_26655705C;
  OUTLINED_FUNCTION_26();

  return sub_2665D8CB8();
}

uint64_t sub_26655705C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *v6 = *v2;

  v7 = *(v4 + 48);
  v8 = *(v4 + 40);
  if (v1)
  {

    OUTLINED_FUNCTION_27(v8);
    OUTLINED_FUNCTION_27(v7);
    v9 = sub_266557414;
  }

  else
  {

    *(v5 + 88) = a1;
    OUTLINED_FUNCTION_27(v8);
    OUTLINED_FUNCTION_27(v7);
    v9 = sub_266557218;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_266557218()
{
  v33 = v0;
  v2 = v0[11];
  v3 = sub_26655F6C8();
  v5 = v4;

  if (v5)
  {
    v6 = v0 + 2;
    OUTLINED_FUNCTION_22();
    v3 = sub_2665668D4(v7, v8, v9, v10, v11, v12, v13, v14, 1);

    MEMORY[0x2667887C0](v15);
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26666C4B8();
    }

    sub_26666C4E8();
  }

  else
  {
    v16 = sub_26666C148();
    v17 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_9(v17))
    {
      v18 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v18);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v19, v20, "[FindEvents+IntentHandler] titleTemplate failed to produce any text, not adding participant alternative");
      OUTLINED_FUNCTION_10();
    }

    v6 = v0 + 8;
  }

  v21 = *v6;

  v22 = sub_26666C148();
  sub_26666C618();

  if (OUTLINED_FUNCTION_30())
  {
    OUTLINED_FUNCTION_21();
    v32 = OUTLINED_FUNCTION_13();
    *v3 = 136315138;
    sub_266552C44(0, &qword_28156C0D0, 0x277CD3C10);
    OUTLINED_FUNCTION_28();
    sub_2665BFC90(v23, v24, &v32);
    OUTLINED_FUNCTION_29();
    *(v3 + 4) = v1;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_8();

  return v30(v21);
}

uint64_t sub_266557414(uint64_t a1)
{
  v21 = v1;
  v4 = sub_26666C148();
  v5 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_9(v5))
  {
    v6 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v6);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v7, v8, "[FindEvents+IntentHandler] titleTemplate failed to produce any text, not adding participant alternative");
    OUTLINED_FUNCTION_10();
  }

  v9 = *(v1 + 64);

  v10 = sub_26666C148();
  sub_26666C618();

  if (OUTLINED_FUNCTION_30())
  {
    OUTLINED_FUNCTION_21();
    v20 = OUTLINED_FUNCTION_13();
    *v2 = 136315138;
    sub_266552C44(0, &qword_28156C0D0, 0x277CD3C10);
    OUTLINED_FUNCTION_28();
    sub_2665BFC90(v11, v12, &v20);
    OUTLINED_FUNCTION_29();
    *(v2 + 4) = v3;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_8();

  return v18(v9);
}

id sub_2665575B0()
{
  v2.receiver = v0;
  v2.super_class = _s13IntentHandlerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_266557688(void *a1, int a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v54 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v54 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  v17 = [a1 searchQuery];
  if (v17)
  {
    v18 = v17;
    v60 = sub_26666C308();
    v20 = v19;
  }

  else
  {
    v60 = 0;
    v20 = 0;
  }

  v21 = [a1 dateTimeRange];
  v61 = a1;
  if (v21)
  {
    v22 = v21;
    v23 = [v21 startDate];

    if (v23)
    {
      sub_266668CE8();

      v24 = sub_266668D38();
      v25 = 0;
    }

    else
    {
      v24 = sub_266668D38();
      v25 = 1;
    }

    __swift_storeEnumTagSinglePayload(v14, v25, 1, v24);
    sub_266557CE4(v14, v16);
    a1 = v61;
  }

  else
  {
    v26 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v26);
  }

  v27 = [a1 dateTimeRange];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 endDate];

    if (v29)
    {
      sub_266668CE8();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v32 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v8, v30, 1, v32);
    sub_266557CE4(v8, v11);
    a1 = v61;
  }

  else
  {
    v31 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v31);
  }

  v33 = [a1 participants];
  if (v33)
  {
    v34 = v33;
    v55 = v20;
    v56 = v16;
    v57 = a2;
    v58 = v11;
    v59 = v2;
    sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    v35 = sub_26666C498();

    v36 = sub_2665C485C();
    v37 = 0;
    v38 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v36 == v37)
      {

        v11 = v58;
        LOBYTE(a2) = v57;
        v20 = v55;
        v16 = v56;
        a1 = v61;
        goto LABEL_32;
      }

      if ((v35 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x266788B60](v37, v35);
      }

      else
      {
        if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v39 = *(v35 + 8 * v37 + 32);
      }

      v40 = v39;
      v41 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v42 = sub_266580570();
      v44 = v43;

      ++v37;
      if (v44)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2665C6350();
          v38 = v47;
        }

        v45 = *(v38 + 16);
        if (v45 >= *(v38 + 24) >> 1)
        {
          sub_2665C6350();
          v38 = v48;
        }

        *(v38 + 16) = v45 + 1;
        v46 = v38 + 16 * v45;
        *(v46 + 32) = v42;
        *(v46 + 40) = v44;
        v37 = v41;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
    v38 = 0;
LABEL_32:
    v49 = [a1 location];
    v50 = v49;
    if (v49)
    {
      v51 = [v49 name];

      if (v51)
      {
        v52 = sub_26666C308();
        v50 = v53;
      }

      else
      {
        v52 = 0;
        v50 = 0;
      }
    }

    else
    {
      v52 = 0;
    }

    sub_26655B224(v60, v20, v16, v11, v38, v52, v50, 1, a2 & 1);

    sub_266557D74(v11, &qword_28007D140, &qword_26666F140);
    sub_266557D74(v16, &qword_28007D140, &qword_26666F140);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_266557B9C(uint64_t a1)
{
  v7[2] = MEMORY[0x277D84F90];
  v2 = sub_2665C485C();
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x266788B60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v5 = v4;
    v6 = sub_26660B73C(v7, v5);

    if (v6)
    {
      sub_26666C868();
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_266557CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266557D74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_266557DD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_25();
  v6(v5);
  return a2;
}

uint64_t sub_266557E38()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266557EC8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266557F58()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266557FE8()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2665580D0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266558160()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_266558234()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_7_0()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x266789690);
}

BOOL OUTLINED_FUNCTION_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_10()
{

  JUMPOUT(0x266789690);
}

void OUTLINED_FUNCTION_12()
{

  JUMPOUT(0x266789690);
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1)
{

  return sub_266557D74(a1, v1, v2);
}

void OUTLINED_FUNCTION_28()
{

  JUMPOUT(0x2667887F0);
}

uint64_t OUTLINED_FUNCTION_29()
{
}

BOOL OUTLINED_FUNCTION_30()
{

  return os_log_type_enabled(v0, v1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_266558590(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2665585D0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_26655862C()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2666695E8();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2665586E4()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266549000, v2, v3, "[UpdateEvent FlowStrategy] makeIntentExecutionBehavior", v4, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];

  v10 = *(v8 + 40);
  sub_26655A1C8();

  v11 = v10;
  v12 = v9;
  sub_2666695D8();
  sub_266669608();
  v13 = sub_2666695F8();
  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_8();

  return v14(v13);
}

uint64_t sub_266558870()
{
  v1 = sub_266669E58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_266669DF8();
  sub_26659AC88(v4, v40);
  (*(v2 + 8))(v4, v1);
  sub_26655A100(v40, v39);
  if (v39[40] == 255)
  {
    goto LABEL_6;
  }

  sub_26655A100(v39, &v35);
  if (v38 != 3)
  {
    if (v38 == 5)
    {
      v5 = vorrq_s8(v36, v37);
      if (!(*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v35))
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v24 = sub_26666C168();
        __swift_project_value_buffer(v24, qword_28156D7E8);
        v25 = sub_26666C148();
        v26 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_1(v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          OUTLINED_FUNCTION_8_0();
          _os_log_impl(v28, v29, v30, v31, v27, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        sub_2666697C8();
        goto LABEL_12;
      }
    }

    sub_266553988(&v35);
LABEL_6:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v6 = sub_26666C168();
    __swift_project_value_buffer(v6, qword_28156D7E8);
    sub_26655A100(v40, &v35);
    v7 = sub_26666C148();
    v8 = sub_26666C618();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315138;
      sub_26655A100(&v35, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
      v11 = sub_26666C318();
      v13 = v12;
      sub_266557D74(&v35, &unk_28007D200, &qword_26666FD20);
      v14 = sub_2665BFC90(v11, v13, &v34);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_266549000, v7, v8, "[UpdateEvent FlowStrategy] unsupported task, ignoring: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_266557D74(&v35, &unk_28007D200, &qword_26666FD20);
    }

    sub_2666697E8();
LABEL_12:
    sub_266557D74(v40, &unk_28007D200, &qword_26666FD20);
    return sub_266557D74(v39, &unk_28007D200, &qword_26666FD20);
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v15 = sub_26666C168();
  __swift_project_value_buffer(v15, qword_28156D7E8);
  v16 = sub_26666C148();
  v17 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_1(v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v19, v20, v21, v22, v18, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_2666697D8();
  sub_266557D74(v40, &unk_28007D200, &qword_26666FD20);
  sub_266553988(&v35);
  return sub_266557D74(v39, &unk_28007D200, &qword_26666FD20);
}

uint64_t sub_266558CC4()
{
  OUTLINED_FUNCTION_14();
  v1[32] = v2;
  v1[33] = v0;
  v1[31] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v1[34] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266558D58()
{
  v29 = v0;
  v1 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1(*(v0 + 264), *(*(v0 + 264) + 24));
  sub_26659AC88(v1, v0 + 16);
  sub_26655A100(v0 + 16, v0 + 64);
  v2 = *(v0 + 104);
  if (v2 == 3)
  {
    v3 = *(v0 + 272);
    sub_2665536F8((v0 + 64), v0 + 208);
    v4 = *(v0 + 240);
    __swift_project_boxed_opaque_existential_1((v0 + 208), *(v0 + 232));
    v5 = sub_266668D38();
    *(v0 + 280) = v5;
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    v27 = (*(*(v4 + 8) + 16) + **(*(v4 + 8) + 16));
    v6 = swift_task_alloc();
    *(v0 + 288) = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_6_1(v6);

    return v27(v7);
  }

  else
  {
    if (v2 == 255)
    {
      sub_266557D74(v0 + 64, &unk_28007D200, &qword_26666FD20);
    }

    else
    {
      sub_266553988(v0 + 64);
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v9 = sub_26666C168();
    __swift_project_value_buffer(v9, qword_28156D7E8);
    sub_26655A100(v0 + 16, v0 + 112);
    v10 = sub_26666C148();
    v11 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_7_1(v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136315138;
      sub_26655A100(v0 + 112, v0 + 160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
      v14 = sub_26666C318();
      v16 = v15;
      sub_266557D74(v0 + 112, &unk_28007D200, &qword_26666FD20);
      v17 = sub_2665BFC90(v14, v16, &v28);

      *(v12 + 4) = v17;
      OUTLINED_FUNCTION_8_0();
      _os_log_impl(v18, v19, v20, v21, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_266557D74(v0 + 112, &unk_28007D200, &qword_26666FD20);
    }

    v22 = *(v0 + 248);
    type metadata accessor for IntentConversionError(0);
    sub_26655A170();
    swift_allocError();
    v24 = v23;
    v25 = sub_266669E58();
    (*(*(v25 - 8) + 16))(v24, v22, v25);
    swift_willThrow();
    sub_266557D74(v0 + 16, &unk_28007D200, &qword_26666FD20);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_266559160()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 272);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *(v6 + 296) = v5;

  sub_266557D74(v2, &qword_28007D140, &qword_26666F140);

  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266559284()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[30];
  __swift_project_boxed_opaque_existential_1(v0 + 26, v0[29]);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v1);
  v7 = (*(*(v3 + 8) + 16) + **(*(v3 + 8) + 16));
  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_6_1(v4);

  return v7(v5);
}

uint64_t sub_2665593D4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 272);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *(v6 + 312) = v5;

  sub_266557D74(v2, &qword_28007D140, &qword_26666F140);

  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665594F8()
{
  v27 = v0;
  if (*(v0 + 256))
  {
    v1 = sub_26663660C(*(v0 + 296), 0);
  }

  else
  {
    v1 = *(v0 + 312);
  }

  v2 = v1;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v3 = *(v0 + 296);
  v4 = sub_26666C168();
  __swift_project_value_buffer(v4, qword_28156D7E8);
  v5 = v3;
  v6 = sub_26666C148();
  v7 = sub_26666C618();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 312);
  v10 = *(v0 + 296);
  if (v8)
  {
    v11 = swift_slowAlloc();
    v25 = v2;
    v26 = swift_slowAlloc();
    v12 = v26;
    *v11 = 136315138;
    v13 = v10;
    v14 = [v13 description];
    v15 = sub_26666C308();
    v17 = v16;

    v18 = sub_2665BFC90(v15, v17, &v26);

    *(v11 + 4) = v18;
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v19, v20, v21, v22, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v2 = v25;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

  sub_266557D74(v0 + 16, &unk_28007D200, &qword_26666FD20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 208));

  OUTLINED_FUNCTION_8();

  return v23(v2);
}

uint64_t sub_266559714()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665597B8;

  return sub_266558CC4();
}

uint64_t sub_2665597B8()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  OUTLINED_FUNCTION_8();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2665598A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26655A20C;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_26655996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26655A20C;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_266559A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26655A20C;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_266559B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26655A20C;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_266559BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_266559CAC;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_266559CAC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_266559D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_26655A20C;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_266559E6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266559F10;

  return sub_26655862C();
}

uint64_t sub_266559F10()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_5_1();
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  OUTLINED_FUNCTION_8();

  return v5(v2);
}

unint64_t sub_266559FFC()
{
  result = qword_28007D1E0;
  if (!qword_28007D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D1E0);
  }

  return result;
}

unint64_t sub_26655A054()
{
  result = qword_28007D1E8;
  if (!qword_28007D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D1E8);
  }

  return result;
}

unint64_t sub_26655A0AC()
{
  result = qword_28007D1F0;
  if (!qword_28007D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D1F0);
  }

  return result;
}

uint64_t sub_26655A100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26655A170()
{
  result = qword_28007D2A0;
  if (!qword_28007D2A0)
  {
    type metadata accessor for IntentConversionError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D2A0);
  }

  return result;
}

unint64_t sub_26655A1C8()
{
  result = qword_28007D210;
  if (!qword_28007D210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007D210);
  }

  return result;
}

void OUTLINED_FUNCTION_4_1()
{

  JUMPOUT(0x266789690);
}

BOOL OUTLINED_FUNCTION_7_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_26655A274@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_26666B208();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D220, &qword_26666E2A8);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D228, &qword_26666E2B0);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = (v44 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D230, &qword_26666E2B8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v44 - v13;
  v15 = sub_26666A588();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26666B1F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D238, &qword_26666E2C0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    v54 = v20;
    v55 = v17;
    (*(v17 + 32))(v20, v14, v15);
    v62 = v15;
    v63 = MEMORY[0x277D5E728];
    __swift_allocate_boxed_opaque_existential_1(v61);
    sub_2665C583C();
    v53 = sub_26666B1A8();
    v50 = v21;
    v22 = sub_26666B128();
    v51 = v23;
    v52 = v22;
    v49 = sub_26666B138();
    v48 = sub_26666B1C8();
    v47 = sub_26666B168();
    v46 = sub_26666B108();
    v44[2] = v24;
    v44[3] = sub_26666B148();
    v45 = sub_26666B1D8();
    sub_26666B1B8();
    sub_26666B198();
    sub_26666B178();
    sub_26666B188();
    sub_26666B118();
    sub_26666B158();
    sub_26666B1E8();
    return (*(v55 + 8))(v54, v15);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    sub_26655A84C(v14);
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v26 = sub_26666C168();
    __swift_project_value_buffer(v26, qword_28156D7E8);
    v27 = *(v5 + 16);
    v27(v8, v1, v3);
    v28 = v3;
    v29 = sub_26666C148();
    v30 = sub_26666C608();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v56 = v27;
      v33 = v32;
      v60 = v32;
      *v31 = 136315138;
      v55 = v28;
      sub_26666B1F8();
      __swift_project_boxed_opaque_existential_1(v61, v62);
      DynamicType = swift_getDynamicType();
      v35 = v63;
      __swift_destroy_boxed_opaque_existential_1(v61);
      v58 = DynamicType;
      v59 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D240, &qword_26666E2C8);
      v36 = sub_26666C318();
      v38 = v37;
      v39 = v8;
      v40 = v55;
      (*(v5 + 8))(v39, v55);
      v41 = sub_2665BFC90(v36, v38, &v60);

      *(v31 + 4) = v41;
      _os_log_impl(&dword_266549000, v29, v30, "Root node of intent was not a NonTerminalIntentNode, was: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v42 = v33;
      v43 = v56;
      MEMORY[0x266789690](v42, -1, -1);
      MEMORY[0x266789690](v31, -1, -1);

      return v43(v57, v2, v40);
    }

    else
    {

      (*(v5 + 8))(v8, v28);
      return (v27)(v57, v2, v28);
    }
  }
}

uint64_t sub_26655A84C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D230, &qword_26666E2B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_26655A8B4()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CC5A40]) initWithEKOptions_];
    if (!v3)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
    }

    v4 = *(v0 + 72);
    *(v0 + 72) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_26655A93C()
{
  type metadata accessor for EKRecurrenceFrequency(0);
  type metadata accessor for INRecurrenceFrequency(0);
  sub_26655C934();
  result = sub_26666C258();
  qword_280095650 = result;
  return result;
}

id sub_26655A994()
{
  v1 = sub_26655A8B4();
  v2 = [v1 defaultCalendarForNewEvents];

  if (v2)
  {
    return v2;
  }

  v4 = [*(v0 + 72) calendarsForEntityType_];
  sub_266552C44(0, &qword_28156C118, 0x277CC59B0);
  v5 = sub_26666C498();

  if (sub_2665C485C())
  {
    sub_2665C4864();
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x266788B60](0, v5);
    }

    else
    {
      v6 = *(v5 + 32);
    }

    v7 = v6;

    return v7;
  }

  else
  {

    v8 = [objc_opt_self() calendarForEntityType:0 eventStore:*(v0 + 72)];

    return v8;
  }
}

void sub_26655AAD0()
{
  sub_266552C44(0, &qword_28007D258, 0x277CF77C8);
  v0 = sub_26666C648();
  if (v0)
  {
    v1 = v0;
    [v0 defaultEventDuration];
  }
}

id sub_26655AB40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v4 = sub_26655A8B4();
    v5 = sub_26665140C(a1, a2, v4);

    if (v5)
    {
      v6 = [v5 calendar];

      if (v6)
      {
        return v6;
      }
    }
  }

  return sub_26655A994();
}

uint64_t sub_26655ABFC(char a1, char a2)
{
  v3 = sub_26655A8B4();
  v4 = [v3 calendarsForEntityType_];

  v5 = sub_266552C44(0, &qword_28156C118, 0x277CC59B0);
  v6 = sub_26666C498();

  v46 = v6;
  v7 = (a2 & 1) != 0 && sub_26655AFC8();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v8 = sub_26666C168();
  __swift_project_value_buffer(v8, qword_28156D7E8);
  v9 = sub_26666C148();
  v10 = sub_26666C5D8();
  if (OUTLINED_FUNCTION_7_2(v10))
  {
    v11 = OUTLINED_FUNCTION_21();
    v12 = OUTLINED_FUNCTION_13_0();
    v45[0] = v12;
    *v11 = 136315138;

    v14 = MEMORY[0x2667887F0](v13, v5);
    v16 = v15;

    v17 = sub_2665BFC90(v14, v16, v45);

    *(v11 + 4) = v17;
    OUTLINED_FUNCTION_16_0(&dword_266549000, v18, v19, "#EventService all calendars, before filtering: %s");
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v20 = [objc_opt_self() deselectedCalendarIdentifiers];
  v21 = sub_26666C498();

  v22 = sub_26666C148();
  v23 = sub_26666C5D8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_21();
    v25 = OUTLINED_FUNCTION_13_0();
    v45[0] = v25;
    *v24 = 136315138;
    v26 = MEMORY[0x2667887F0](v21, MEMORY[0x277D837D0]);
    v28 = sub_2665BFC90(v26, v27, v45);

    *(v24 + 4) = v28;
    OUTLINED_FUNCTION_16_0(&dword_266549000, v29, v30, "#EventService EKCalendarVisibilityManager.deselectedCalendarIdentifiers: %s");
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  swift_beginAccess();

  sub_26655CAA8(&v46, v21, a1 & 1, v7);
  v32 = v31;
  v33 = sub_2665C485C();
  if (v33 < v32)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_2666002D8(v32, v33);
    swift_endAccess();

    v34 = sub_26666C148();
    v35 = sub_26666C5D8();
    if (OUTLINED_FUNCTION_7_2(v35))
    {
      v36 = OUTLINED_FUNCTION_21();
      v37 = OUTLINED_FUNCTION_13_0();
      v45[0] = v37;
      *v36 = 136315138;

      v39 = MEMORY[0x2667887F0](v38, v5);
      v41 = v40;

      v42 = sub_2665BFC90(v39, v41, v45);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_266549000, v34, v35, "#EventService calendars after filtering: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    return v46;
  }

  return result;
}

BOOL sub_26655AFC8()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_266571F4C(0xD000000000000013);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);
  v3 = sub_26666C148();
  v4 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_1(v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_13_0();
    v14 = v6;
    *v5 = 67109378;
    *(v5 + 4) = v1 == 2;
    *(v5 + 8) = 2080;
    v7 = sub_2665BFC90(*&aLocked_0[8 * v1], 0xE600000000000000, &v14);

    *(v5 + 10) = v7;
    OUTLINED_FUNCTION_2_2();
    _os_log_impl(v8, v9, v10, v11, v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  return v1 == 2;
}

uint64_t sub_26655B128()
{
  v1 = v0;
  sub_26655ABFC(1, 0);
  if (sub_2665C485C())
  {
    v2 = sub_26655A8B4();
    v3 = sub_266668C88();
    v4 = sub_266668C88();
    OUTLINED_FUNCTION_10_0();
    v8 = sub_26655DD10(v5, v6, v7, v2);

    v9 = [*(v1 + 72) eventsMatchingPredicate_];
    sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
    v10 = sub_26666C498();

    return v10;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_26655B224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v94 = a7;
  v95 = a5;
  v91 = a6;
  v92 = a1;
  v93 = a2;
  v13 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v85 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v90 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v82 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v82 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v82 - v27;
  v29 = sub_26655ABFC(a8, a9);
  if (!sub_2665C485C())
  {

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v31 = sub_26666C168();
    __swift_project_value_buffer(v31, qword_28156D7E8);
    v32 = sub_26666C148();
    v33 = sub_26666C5F8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_20();
      *v34 = 0;
      _os_log_impl(&dword_266549000, v32, v33, "[EventService] No calendars to search", v34, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_1_2(a3);
  v84 = v26;
  if (v49)
  {
    OUTLINED_FUNCTION_1_2(a4);
    if (v49)
    {
      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    v89 = v30;
  }

  else
  {
    v89 = 0;
  }

  v35 = a4;
  v86 = a3;
  v88 = v9;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v36 = sub_26666C168();
  v87 = __swift_project_value_buffer(v36, qword_28156D7E8);
  v37 = sub_26666C148();
  v38 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_1(v38))
  {
    v39 = swift_slowAlloc();
    v83 = v15;
    *v39 = 67109120;
    v39[1] = v89;
    OUTLINED_FUNCTION_2_2();
    _os_log_impl(v40, v41, v42, v43, v44, 8u);
    v15 = v83;
    OUTLINED_FUNCTION_4_1();
  }

  v45 = v93;
  v46 = v90;
  if (v93 || v95 || v94)
  {
    if (!v95)
    {
      goto LABEL_21;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2(v35);
    if (!v49)
    {
LABEL_21:
      sub_26655E020(v35, v28);
      goto LABEL_28;
    }
  }

  v47 = v35;
  v35 = v84;
  sub_26655E020(v47, v84);
  OUTLINED_FUNCTION_1_2(v35);
  if (v49)
  {
    v48 = v85;
    sub_266668CF8();
    sub_266668C78();
    v45 = v93;
    (*(v15 + 8))(v48, v13);
    OUTLINED_FUNCTION_1_2(v35);
    if (!v49)
    {
      sub_266557D74(v35, &qword_28007D140, &qword_26666F140);
    }
  }

  else
  {
    (*(v15 + 32))(v28, v35, v13);
  }

  __swift_storeEnumTagSinglePayload(v28, 0, 1, v13);
LABEL_28:
  OUTLINED_FUNCTION_1_2(v28);
  if (v49)
  {
    sub_26655E020(v86, v23);
  }

  else
  {
    sub_26655E020(v86, v46);
    OUTLINED_FUNCTION_1_2(v46);
    if (v49)
    {
      sub_266668CF8();
      OUTLINED_FUNCTION_1_2(v46);
      if (!v49)
      {
        sub_266557D74(v46, &qword_28007D140, &qword_26666F140);
      }
    }

    else
    {
      (*(v15 + 32))(v23, v46, v13);
    }

    __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
  }

  v50 = sub_26655C280(v23, v28, v92, v45, v91, v94, v95, v29);

  if (!v50)
  {
    v61 = sub_26666C148();
    v62 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_7_1(v62))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v63, v64, v65, v66, v67, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    OUTLINED_FUNCTION_10_0();
    sub_266557D74(v68, v69, v70);
    OUTLINED_FUNCTION_10_0();
    sub_266557D74(v71, v72, v73);
    return MEMORY[0x277D84F90];
  }

  v51 = v23;
  v52 = sub_26655A8B4();
  v53 = [v52 eventsMatchingPredicate_];

  sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
  v54 = sub_26666C498();

  v55 = sub_26655B96C(v54);

  v56 = v50;
  v57 = sub_26666C148();
  v58 = sub_26666C618();

  if (os_log_type_enabled(v57, v58))
  {
    swift_slowAlloc();
    v59 = OUTLINED_FUNCTION_12_0();
    *v35 = 134218242;
    *(v35 + 4) = sub_2665C485C();

    *(v35 + 12) = 2112;
    *(v35 + 14) = v56;
    *v59 = v50;
    v60 = v56;
    _os_log_impl(&dword_266549000, v57, v58, "[EventService] Found %ld using predicate: %@", v35, 0x16u);
    sub_266557D74(v59, &unk_28007DCA0, &qword_26666E370);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_2();
  }

  else
  {
  }

  if (v89)
  {
    v74 = sub_26655C648(v55);

    sub_266557D74(v51, &qword_28007D140, &qword_26666F140);
    sub_266557D74(v28, &qword_28007D140, &qword_26666F140);
    return v74;
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    sub_266557D74(v75, v76, v77);

    OUTLINED_FUNCTION_10_0();
    sub_266557D74(v78, v79, v80);
  }

  return v55;
}

uint64_t sub_26655B96C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26666C768();
    if (v3)
    {
      v4 = v3;
      v1 = sub_2665C7084(v3, 0);

      sub_2665C4134();
      v6 = v5;

      if (v6 == v4)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v1 = MEMORY[0x277D84F90];
    goto LABEL_3;
  }

  v1 = a1 & 0xFFFFFFFFFFFFFF8;

LABEL_3:
  v7 = v1;
  sub_26655D008(&v7);
  return v7;
}

uint64_t sub_26655BA38(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26655BA58, 0, 0);
}

uint64_t sub_26655BA58()
{
  v1 = v0[3];
  v2 = sub_26655A8B4();
  v0[4] = v2;
  v3 = sub_26655A994();
  v0[5] = v3;
  v4 = *(v1 + 64);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_26655BB1C;

  return sub_2665817A8(v2, v3, v4);
}

uint64_t sub_26655BB1C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_26655BC50, 0, 0);
}

uint64_t sub_26655BC50()
{
  v1 = *(v0 + 56);
  v2 = sub_26655BCC8(v1, 0);

  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_26655BCC8(void *a1, uint64_t a2)
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_28156D7E8);
  v6 = a1;
  v7 = sub_26666C148();
  v8 = sub_26666C5E8();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_21();
    v9 = OUTLINED_FUNCTION_12_0();
    *v2 = 138412290;
    *(v2 + 4) = v6;
    *v9 = v6;
    v10 = v6;
    OUTLINED_FUNCTION_9_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_266557D74(v9, &unk_28007DCA0, &qword_26666E370);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_2();
  }

  v16 = sub_26655A8B4();
  v38[0] = 0;
  v17 = [v16 saveEvent:v6 span:a2 commit:1 error:v38];

  if (v17)
  {
    v18 = v38[0];
    v19 = sub_26666C148();
    v20 = sub_26666C5E8();
    if (OUTLINED_FUNCTION_7_1(v20))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v26 = v6;
  }

  else
  {
    v27 = v38[0];
    v28 = sub_266668BF8();

    swift_willThrow();
    v29 = v28;
    v30 = sub_26666C148();
    v31 = sub_26666C5F8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_21();
      v33 = OUTLINED_FUNCTION_13_0();
      v38[0] = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = sub_26666CB38();
      v36 = sub_2665BFC90(v34, v35, v38);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_266549000, v30, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }

    return 0;
  }

  return v6;
}

id sub_26655BFAC(void *a1, uint64_t a2)
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_28156D7E8);
  v6 = a1;
  v7 = sub_26666C148();
  v8 = sub_26666C5E8();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_21();
    v9 = OUTLINED_FUNCTION_12_0();
    *v2 = 138412290;
    *(v2 + 4) = v6;
    *v9 = v6;
    v10 = v6;
    OUTLINED_FUNCTION_9_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_266557D74(v9, &unk_28007DCA0, &qword_26666E370);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_2();
  }

  v16 = sub_26655A8B4();
  v37[0] = 0;
  v17 = [v16 removeEvent:v6 span:a2 error:v37];

  if (v17)
  {
    v18 = v37[0];
    v19 = sub_26666C148();
    v20 = sub_26666C5E8();
    if (OUTLINED_FUNCTION_7_1(v20))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_4_1();
    }
  }

  else
  {
    v26 = v37[0];
    v27 = sub_266668BF8();

    swift_willThrow();
    v28 = v27;
    v29 = sub_26666C148();
    v30 = sub_26666C5F8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_21();
      v32 = OUTLINED_FUNCTION_13_0();
      v37[0] = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = sub_26666CB38();
      v35 = sub_2665BFC90(v33, v34, v37);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_266549000, v29, v30, "%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }
  }

  return v17;
}

id sub_26655C280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a7;
  v47 = a8;
  v44 = a4;
  v45 = a6;
  v41[0] = a3;
  v41[1] = a5;
  v42 = sub_266668EB8();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v41 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v41 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v41 - v25;
  v27 = sub_266668D38();
  v43 = a2;
  OUTLINED_FUNCTION_3_2(a2);
  if (v28)
  {
    sub_26655E020(a1, v26);
  }

  else
  {
    sub_26655E020(a1, v24);
    OUTLINED_FUNCTION_3_2(v24);
    if (v28)
    {
      sub_266668CF8();
      OUTLINED_FUNCTION_3_2(v24);
      if (!v28)
      {
        sub_266557D74(v24, &qword_28007D140, &qword_26666F140);
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
      (*(v29 + 32))(v26, v24, v27);
    }

    __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
  }

  v30 = sub_26655A8B4();
  sub_266668EA8();
  v31 = sub_266668E88();
  (*(v11 + 8))(v14, v42);
  sub_26655E020(v26, v21);
  OUTLINED_FUNCTION_3_2(v21);
  if (v28)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_266668C88();
    OUTLINED_FUNCTION_8_1();
    (*(v33 + 8))(v21, v27);
  }

  sub_26655E020(v43, v18);
  OUTLINED_FUNCTION_3_2(v18);
  if (v28)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_266668C88();
    OUTLINED_FUNCTION_8_1();
    (*(v35 + 8))(v18, v27);
  }

  if (v44)
  {
    v36 = sub_26666C2F8();
  }

  else
  {
    v36 = 0;
  }

  if (v45)
  {
    v37 = sub_26666C2F8();
  }

  else
  {
    v37 = 0;
  }

  if (v46)
  {
    v38 = sub_26666C488();
  }

  else
  {
    v38 = 0;
  }

  v39 = sub_26655DC3C(v31, v32, v34, v36, v37, 0, v38, v47, 25, v30);

  sub_266557D74(v26, &qword_28007D140, &qword_26666F140);
  return v39;
}

uint64_t sub_26655C648(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_27:
    v2 = sub_26666C768();
    if (!v2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_23;
    }
  }

  sub_2665C4864();
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x266788B60](0, v1);
  }

  else
  {
    v3 = *(v1 + 32);
  }

  v4 = v3;
  if (sub_2665C485C() >= 2)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v5 = sub_26666C168();
    __swift_project_value_buffer(v5, qword_28156D7E8);
    v6 = sub_26666C148();
    v7 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v7))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_9_0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_4_2();
    }

    v13 = 0;
    do
    {
      v14 = v13;
      if (v2 == v13)
      {
        break;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x266788B60](v13, v1);
      }

      else
      {
        if (v13 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v15 = *(v1 + 8 * v13 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v17 = sub_266560A08(v4);

      v13 = v14 + 1;
    }

    while ((v17 & 1) != 0);
    v18 = sub_26666C148();
    v19 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v2 == v14;
      _os_log_impl(&dword_266549000, v18, v19, "[EventService] allPartOfSameSeries: %{BOOL}d", v20, 8u);
      OUTLINED_FUNCTION_4_2();
    }

    if (v2 == v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_26666E050;
      *(v1 + 32) = v4;
      return v1;
    }
  }

LABEL_23:

  return v1;
}

uint64_t sub_26655C8AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t sub_26655C8DC()
{
  sub_26655C8AC();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

unint64_t sub_26655C934()
{
  result = qword_28007D248;
  if (!qword_28007D248)
  {
    type metadata accessor for EKRecurrenceFrequency(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D248);
  }

  return result;
}

uint64_t sub_26655C98C(uint64_t a1)
{
  sub_266669E68();
  sub_26655C9E0(v4, v3);
  v1 = sub_26655DE9C(v3);
  result = sub_26655DFCC(v4);
  qword_28156D828 = v1;
  return result;
}

uint64_t sub_26655CA3C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
      result = sub_26666C4D8();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_26655CAA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = *a1;

  sub_26655CDEC(v9, a2, v6, v5);
  if (v4)
  {

    return;
  }

  if (v11)
  {
    sub_2665C485C();

    return;
  }

  v12 = v10;
  v35 = a1;
  v36 = v5;
  v37 = v6;
  v39 = a2;
  v13 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    goto LABEL_54;
  }

  while (1)
  {
    if (v9 >> 62)
    {
      v14 = sub_26666C768();
    }

    else
    {
      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13 == v14)
    {
      goto LABEL_45;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x266788B60](v13, v9);
      goto LABEL_13;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v15 = *(v9 + 8 * v13 + 32);
LABEL_13:
    v16 = v15;
    v17 = [v15 calendarIdentifier];
    v18 = sub_26666C308();
    v20 = v19;

    v38[0] = v18;
    v38[1] = v20;
    MEMORY[0x28223BE20](v21);
    v34[2] = v38;
    LOBYTE(v18) = sub_266591DC0(sub_26655E0E8, v34, v39);

    if ((v18 & 1) != 0 || (v37 & 1) == 0 && [v16 type] == 4)
    {
    }

    else
    {
      if (v36)
      {
      }

      else
      {
        v22 = [v16 type];

        if (v22 == 6)
        {
          goto LABEL_38;
        }
      }

      if (v12 != v13)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x266788B60](v12, v9);
          v24 = MEMORY[0x266788B60](v13, v9);
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v25 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12 >= v25)
          {
            goto LABEL_52;
          }

          if (v13 >= v25)
          {
            goto LABEL_53;
          }

          v26 = *(v9 + 32 + 8 * v13);
          v23 = *(v9 + 32 + 8 * v12);
          v24 = v26;
        }

        v27 = v24;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
        {
          v9 = sub_2665A1DCC();
          v28 = (v9 >> 62) & 1;
        }

        else
        {
          LODWORD(v28) = 0;
        }

        v29 = v9 & 0xFFFFFFFFFFFFFF8;
        v30 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20);
        *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20) = v27;

        if ((v9 & 0x8000000000000000) != 0 || v28)
        {
          v9 = sub_2665A1DCC();
          v29 = v9 & 0xFFFFFFFFFFFFFF8;
          if ((v13 & 0x8000000000000000) != 0)
          {
LABEL_44:
            __break(1u);
LABEL_45:

            return;
          }
        }

        else if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v13 >= *(v29 + 16))
        {
          goto LABEL_50;
        }

        v31 = v29 + 8 * v13;
        v32 = *(v31 + 32);
        *(v31 + 32) = v23;

        *v35 = v9;
      }

      v33 = __OFADD__(v12++, 1);
      if (v33)
      {
        goto LABEL_49;
      }
    }

LABEL_38:
    v33 = __OFADD__(v13++, 1);
    if (v33)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_26655CDEC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v16 = __PAIR64__(a3, a4);
  v17 = a2;
  v19 = sub_2665C485C();
  v5 = 0;
  while (1)
  {
    if (v19 == v5)
    {
LABEL_17:

      return;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v6 = MEMORY[0x266788B60](v5, a1);
LABEL_6:
    v7 = v6;
    v8 = [v6 calendarIdentifier];
    v9 = sub_26666C308();
    v11 = v10;

    v18[0] = v9;
    v18[1] = v11;
    MEMORY[0x28223BE20](v12);
    v15[2] = v18;
    LOBYTE(v9) = sub_266591DC0(sub_26655E108, v15, v17);

    if ((v9 & 1) != 0 || (v16 & 0x100000000) == 0 && [v7 type] == 4)
    {

      return;
    }

    if (v16)
    {
    }

    else
    {
      v13 = [v7 type];

      if (v13 == 6)
      {
        goto LABEL_17;
      }
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_19;
    }
  }

  if (v5 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(a1 + 8 * v5 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_26655CFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26666CAC8() & 1;
  }
}

uint64_t sub_26655D008(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26655E090(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_26655D084(v6);
  return sub_26666C878();
}

void sub_26655D084(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_26666CA98();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_26655CA3C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_26655D260(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_26655D164(0, v3, 1, a1);
  }
}

void sub_26655D164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
    while (2)
    {
      v19 = v4;
      v9 = *(v6 + 8 * v4);
      v10 = v8;
      v11 = v7;
      do
      {
        v12 = *v11;
        v13 = v9;
        v14 = v12;
        v15 = static EKEvent.< infix(_:_:)(v13, v14);

        if ((v15 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v16 = *v11;
        v9 = *(v11 + 8);
        *v11 = v9;
        *(v11 + 8) = v16;
        v11 -= 8;
      }

      while (!__CFADD__(v10++, 1));
      v4 = v19 + 1;
      v7 += 8;
      --v8;
      if (v19 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_26655D260(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v109 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v90 = v8 + 2;
      v91 = v8[2];
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v92 = v8;
        v8 += 2 * v91;
        v93 = *v8;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_26655D8C0((*a3 + 8 * *v8), (*a3 + 8 * *v94), (*a3 + 8 * v95), v109);
        if (v5)
        {
          break;
        }

        if (v95 < v93)
        {
          goto LABEL_117;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_118;
        }

        *v8 = v93;
        v8[1] = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_119;
        }

        v91 = *v90 - 1;
        memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        v8 = v92;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v8 = sub_26655DAFC(v8);
    goto LABEL_93;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v98 = v8;
    v109 = v5;
    v11 = *(*a3 + 8 * v10);
    v12 = (*a3 + 8 * v7);
    v13 = 8 * v7;
    v15 = *v12;
    v14 = v12 + 2;
    v8 = v15;
    v105 = v6;
    sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
    v16 = v11;
    v17 = v10;
    v18 = v15;
    v5 = static EKEvent.< infix(_:_:)(v16, v18);

    v19 = v105;
    v10 = v17;
    v100 = v9;
    v20 = v9 + 2;
    do
    {
      v21 = v20;
      v22 = v10 + 1;
      if (v22 >= v19)
      {
        v10 = v19;
        if (v5)
        {
          goto LABEL_8;
        }

LABEL_20:
        v5 = v109;
        v8 = v98;
        v9 = v100;
        goto LABEL_22;
      }

      v23 = *(v14 - 1);
      v24 = *v14;
      v25 = v22;
      v26 = v23;
      v8 = (static EKEvent.< infix(_:_:)(v24, v26) & 1);

      v10 = v25;
      ++v14;
      v20 = v21 + 1;
      v19 = v105;
    }

    while ((v5 & 1) == v8);
    if ((v5 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v9 = v100;
    if (v10 < v100)
    {
      goto LABEL_123;
    }

    if (v100 >= v10)
    {
      v5 = v109;
      v8 = v98;
    }

    else
    {
      v27 = v19 >= v21 ? v21 : v19;
      v28 = 8 * v27 - 8;
      v29 = v10;
      v30 = v100;
      v5 = v109;
      v8 = v98;
      do
      {
        if (v30 != --v29)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_130;
          }

          v32 = *(v31 + v13);
          *(v31 + v13) = *(v31 + v28);
          *(v31 + v28) = v32;
        }

        ++v30;
        v28 -= 8;
        v13 += 8;
      }

      while (v30 < v29);
    }

LABEL_22:
    v33 = a3[1];
    if (v10 < v33)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_122;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_121;
    }

    v109 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2665C627C();
      v8 = v88;
    }

    v47 = v8[2];
    v5 = v47 + 1;
    v107 = v10;
    if (v47 >= v8[3] >> 1)
    {
      sub_2665C627C();
      v8 = v89;
    }

    v8[2] = v5;
    v48 = v8 + 4;
    v49 = &v8[2 * v47 + 4];
    *v49 = v9;
    v49[1] = v107;
    v104 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v47)
    {
      while (1)
      {
        v50 = v5 - 1;
        v51 = &v48[2 * v5 - 2];
        v52 = &v8[2 * v5];
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v53 = v8[4];
          v54 = v8[5];
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_59:
          if (v56)
          {
            goto LABEL_108;
          }

          v68 = *v52;
          v67 = v52[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_111;
          }

          v72 = v51[1];
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_116;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v5 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v5 < 2)
        {
          goto LABEL_110;
        }

        v75 = *v52;
        v74 = v52[1];
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_74:
        if (v71)
        {
          goto LABEL_113;
        }

        v77 = *v51;
        v76 = v51[1];
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v78 < v70)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v50 - 1 >= v5)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v82 = &v48[2 * v50 - 2];
        v83 = *v82;
        v84 = &v48[2 * v50];
        v85 = v84[1];
        sub_26655D8C0((*a3 + 8 * *v82), (*a3 + 8 * *v84), (*a3 + 8 * v85), v104);
        v5 = v109;
        if (v109)
        {
          goto LABEL_101;
        }

        if (v85 < v83)
        {
          goto LABEL_103;
        }

        v86 = v8;
        v8 = v8[2];
        if (v50 > v8)
        {
          goto LABEL_104;
        }

        *v82 = v83;
        v82[1] = v85;
        if (v50 >= v8)
        {
          goto LABEL_105;
        }

        v109 = 0;
        v5 = v8 - 1;
        memmove(&v48[2 * v50], v84 + 2, 16 * (v8 - v50 - 1));
        v86[2] = v8 - 1;
        v87 = v8 > 2;
        v8 = v86;
        if (!v87)
        {
          goto LABEL_88;
        }
      }

      v57 = &v48[2 * v5];
      v58 = *(v57 - 8);
      v59 = *(v57 - 7);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_106;
      }

      v62 = *(v57 - 6);
      v61 = *(v57 - 5);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_107;
      }

      v64 = v52[1];
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_109;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_112;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = v51[1];
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_120;
        }

        if (v55 < v81)
        {
          v50 = v5 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v7 = v107;
    v6 = a3[1];
    v5 = v109;
    if (v107 >= v6)
    {
      goto LABEL_91;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_124;
  }

  if (v9 + a4 >= v33)
  {
    v34 = a3[1];
  }

  else
  {
    v34 = v9 + a4;
  }

  if (v34 < v9)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v10 == v34)
  {
    goto LABEL_39;
  }

  v99 = v8;
  v109 = v5;
  v35 = *a3;
  sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
  v36 = v35 + 8 * v10 - 8;
  v101 = v9;
  v37 = v9 - v10;
  v103 = v34;
LABEL_32:
  v106 = v10;
  v38 = *(v35 + 8 * v10);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    v44 = static EKEvent.< infix(_:_:)(v42, v43);

    if ((v44 & 1) == 0)
    {
LABEL_37:
      v10 = v106 + 1;
      v36 += 8;
      --v37;
      if (v106 + 1 == v103)
      {
        v10 = v103;
        v5 = v109;
        v8 = v99;
        v9 = v101;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v35)
    {
      break;
    }

    v45 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v45;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_26655D8C0(void **a1, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_2665C7428(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *v4;
      sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
      v15 = v13;
      v16 = v14;
      v17 = static EKEvent.< infix(_:_:)(v15, v16);

      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = v6;
      v19 = v7 == v6++;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      v5 = v12;
    }

    v18 = v4;
    v19 = v7 == v4++;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v18;
    goto LABEL_13;
  }

  sub_2665C7428(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v36 = v4;
LABEL_15:
  v20 = v6 - 1;
  v21 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v23 = v21;
    v24 = v7;
    v25 = *(v10 - 1);
    v26 = v20;
    v27 = *v20;
    sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
    v28 = v25;
    v29 = v27;
    v30 = static EKEvent.< infix(_:_:)(v28, v29);

    v5 = v23;
    v31 = v23 + 1;
    if (v30)
    {
      v19 = v31 == v6;
      v32 = v26;
      v6 = v26;
      v7 = v24;
      v4 = v36;
      if (!v19)
      {
        *v5 = *v32;
        v6 = v32;
      }

      goto LABEL_15;
    }

    if (v10 != v31)
    {
      *v23 = *(v10 - 1);
    }

    v21 = v23 - 1;
    --v10;
    v20 = v26;
    v7 = v24;
    v4 = v36;
  }

LABEL_28:
  v33 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v33])
  {
    memmove(v6, v4, 8 * v33);
  }

  return 1;
}

char *sub_26655DB10(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_26655DB3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D250, &qword_26666E378);
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

id sub_26655DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_266552C44(0, &qword_28156C118, 0x277CC59B0);
  v17 = sub_26666C488();
  v18 = [a10 predicateForAssistantEventSearchWithTimeZone:a1 startDate:a2 endDate:a3 title:a4 location:a5 notes:a6 participants:a7 calendars:v17 limit:a9];

  return v18;
}

id sub_26655DD10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_266552C44(0, &qword_28156C118, 0x277CC59B0);
  v7 = sub_26666C488();

  v8 = [a4 predicateForEventsWithStartDate:a1 endDate:a2 calendars:v7];

  return v8;
}

void *sub_26655DDAC(uint64_t a1, void *a2)
{
  v4 = sub_26666BE18();
  MEMORY[0x28223BE20](v4 - 8);
  v9 = &type metadata for ProtectedAppStatusProvider;
  v10 = &off_287806A40;
  v5 = swift_allocObject();
  *&v8 = v5;
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  a2[7] = 25;
  type metadata accessor for CommonCATsSimple(0);
  sub_26666BE08();
  a2[8] = sub_26666BDD8();
  a2[9] = 0;
  sub_26654B7D8(&v8, (a2 + 2));
  return a2;
}

void *sub_26655DE9C(uint64_t a1)
{
  v12[3] = &type metadata for ProtectedAppStatusProvider;
  v12[4] = &off_287806A40;
  v2 = swift_allocObject();
  v12[0] = v2;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  type metadata accessor for EventProvider();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, &type metadata for ProtectedAppStatusProvider);
  MEMORY[0x28223BE20](v5);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_26655DDAC(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

uint64_t sub_26655E020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_4_2()
{

  JUMPOUT(0x266789690);
}

BOOL OUTLINED_FUNCTION_7_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_16_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_26655E228@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_266668D98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  sub_26655358C(v3, v31);
  sub_26655358C(v3 + 40, v30);
  v11 = type metadata accessor for CorrectionsFlowProvider(0);
  (*(v7 + 16))(v10, v3 + *(v11 + 24), v6);
  sub_26655358C(v3 + *(v11 + 28), v29);
  __swift_mutable_project_boxed_opaque_existential_1(v31, v31[3]);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  __swift_mutable_project_boxed_opaque_existential_1(v30, v30[3]);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v29[3]);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  (*(v26 + 16))(v24 - v23);
  v27 = sub_26655E554(*v15, a1, v20, v10, v25);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  a2[3] = type metadata accessor for CalendarCorrectionsFlow(0);
  result = sub_26655EA44();
  a2[4] = result;
  *a2 = v27;
  return result;
}

uint64_t type metadata accessor for CorrectionsFlowProvider(uint64_t a1)
{
  result = qword_28007D268;
  if (!qword_28007D268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26655E554(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v41 = a2;
  v8 = type metadata accessor for EventProvider();
  v52[3] = v8;
  v52[4] = &off_287806290;
  v52[0] = a1;
  v9 = type metadata accessor for CalendarFlowCreator(0);
  v50 = v9;
  v51 = &off_28780A3E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  sub_26655EA9C(a3, boxed_opaque_existential_1, type metadata accessor for CalendarFlowCreator);
  v11 = type metadata accessor for CalendarDateTimeResolver(0);
  v47 = v11;
  v48 = &off_28780BA58;
  v12 = __swift_allocate_boxed_opaque_existential_1(v46);
  sub_26655EA9C(a5, v12, type metadata accessor for CalendarDateTimeResolver);
  type metadata accessor for CalendarCorrectionsFlow(0);
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v52, v8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = *v16;
  v45[3] = v8;
  v45[4] = &off_287806290;
  v45[0] = v26;
  v44[3] = v9;
  v44[4] = &off_28780A3E0;
  v27 = __swift_allocate_boxed_opaque_existential_1(v44);
  sub_26655EA9C(v20, v27, type metadata accessor for CalendarFlowCreator);
  v43[3] = v11;
  v43[4] = &off_28780BA58;
  v28 = __swift_allocate_boxed_opaque_existential_1(v43);
  sub_26655EA9C(v24, v28, type metadata accessor for CalendarDateTimeResolver);
  sub_26655358C(v45, v13 + 16);
  v29 = v41;
  *(v13 + 56) = v41;
  sub_26655358C(v44, v13 + 64);
  v30 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_locale;
  v31 = sub_266668D98();
  v32 = *(v31 - 8);
  v33 = v42;
  (*(v32 + 16))(v13 + v30, v42, v31);
  sub_26655358C(v43, v13 + OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_calendarDateTimeResolver);
  *(v13 + OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsTask) = v29;
  type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask(0);
  swift_storeEnumTagMultiPayload();
  *(v13 + OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_state) = 0;
  v34 = v13 + OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsExitValue;
  v35 = *(v32 + 8);
  v36 = v29;
  v35(v33, v31);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  strcpy(v34, "inital value");
  *(v34 + 13) = 0;
  *(v34 + 14) = -5120;
  v37 = *MEMORY[0x277D5BF08];
  v38 = sub_266669B08();
  (*(*(v38 - 8) + 104))(v34, v37, v38);
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v13;
}

unint64_t sub_26655EA44()
{
  result = qword_28007D260;
  if (!qword_28007D260)
  {
    type metadata accessor for CalendarCorrectionsFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D260);
  }

  return result;
}

uint64_t sub_26655EA9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26655EB2C(uint64_t a1)
{
  result = sub_26655EC10(319, qword_28156CBE0, &protocol descriptor for EventProviding);
  if (v2 <= 0x3F)
  {
    result = sub_26655EC10(319, &qword_28007D278, &protocol descriptor for CalendarFlowCreating);
    if (v3 <= 0x3F)
    {
      result = sub_266668D98();
      if (v4 <= 0x3F)
      {
        result = sub_26655EC10(319, qword_28156CF58, &protocol descriptor for CalendarDateTimeResolving);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26655EC10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26655EC7C()
{
  result = sub_26666AAB8();
  if (result)
  {
    sub_26666A6C8();
    OUTLINED_FUNCTION_2_3();
    if (v0)
    {
      sub_26666A5E8();
      OUTLINED_FUNCTION_6();

      sub_26666A668();
      OUTLINED_FUNCTION_0_3();
    }

    return 0;
  }

  return result;
}

BOOL sub_26655EF00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D290, &qword_26666E3F0);
  v1 = OUTLINED_FUNCTION_3_3(v0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - v2;
  if (!sub_26666AA98() && !sub_26666AA88() && !sub_26666AAC8())
  {
    sub_26666AAA8();
    if (v6)
    {

      return 0;
    }

    if (!sub_26666AAD8() && !sub_26666AAB8() && !sub_26655EFEC())
    {
      sub_26666AA68();
      v7 = sub_26666AA78();
      v4 = __swift_getEnumTagSinglePayload(v3, 1, v7) == 1;
      sub_26655F608(v3);
      return v4;
    }
  }

  return 0;
}

uint64_t sub_26655EFEC()
{
  sub_26666A218();
  sub_26666AFF8();
  sub_26666A7D8();

  if (!v2)
  {
    return 0;
  }

  v0 = sub_26666AFE8();

  return v0;
}

id sub_26655F060()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v1 = OUTLINED_FUNCTION_3_3(v0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  if (sub_26666AAB8())
  {
    sub_26655F1A4(v6);

    v7 = sub_266668B08();
    v8 = 0;
  }

  else
  {
    v7 = sub_266668B08();
    v8 = 1;
  }

  v9 = 1;
  __swift_storeEnumTagSinglePayload(v6, v8, 1, v7);
  if (sub_26666AA98())
  {
    sub_26655F1A4(v4);

    v9 = 0;
  }

  v10 = sub_266668B08();
  __swift_storeEnumTagSinglePayload(v4, v9, 1, v10);
  v11 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v12 = OUTLINED_FUNCTION_6();
  return sub_26655F4EC(v12, v4);
}

uint64_t sub_26655F1A4@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  v2 = OUTLINED_FUNCTION_3_3(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v24[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D288, &qword_26666E3E8);
  v6 = OUTLINED_FUNCTION_3_3(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v24[-v7];
  sub_266668E58();
  v9 = sub_266668E68();
  v10 = 1;
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  sub_266668EA8();
  v11 = sub_266668EB8();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
  if (sub_26666A6C8())
  {
    sub_26666A5E8();
    v12 = OUTLINED_FUNCTION_4_3();
    v27 = sub_26655F4CC(v12);
    v10 = v13;
  }

  else
  {
    v27 = 0;
  }

  if (sub_26666A6C8() && (v14 = sub_26666A5B8(), , v14))
  {
    sub_26666A908();
    v15 = OUTLINED_FUNCTION_4_3();
    v26 = sub_26655F4CC(v15);
    v25 = v16;
  }

  else
  {
    v26 = 0;
    v25 = 1;
  }

  v17 = sub_26666A6C8();
  v28 = v10;
  if (v17)
  {
    sub_26666A598();
    v18 = OUTLINED_FUNCTION_4_3();
    sub_26655F4CC(v18);
  }

  if (sub_26666A6D8())
  {
    v19 = sub_26666A608();

    if (v19)
    {
      sub_26655F4CC(v20);
    }
  }

  if (sub_26666A6D8())
  {
    v21 = sub_26666A618();

    if (v21)
    {
      sub_26655F4CC(v22);
    }
  }

  return sub_266668AF8();
}

uint64_t sub_26655F4CC(uint64_t a1)
{
  result = sub_26666A668();
  if (v2)
  {
    return 0;
  }

  return result;
}

id sub_26655F4EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_266668B08();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    v7 = sub_266668A18();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v6) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_266668A18();
    (*(*(v6 - 8) + 8))(a2, v6);
  }

  v9 = [v3 initWithStartDateComponents:v7 endDateComponents:v8];

  return v9;
}

uint64_t sub_26655F608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D290, &qword_26666E3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_3()
{
}

uint64_t OUTLINED_FUNCTION_2_3()
{
}

uint64_t OUTLINED_FUNCTION_4_3()
{
}

uint64_t sub_26655F6C8()
{
  v1 = [v0 dialog];
  sub_26655F7BC();
  v2 = sub_26666C498();

  if (sub_2665C485C())
  {
    sub_2665C4864();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x266788B60](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    v5 = [v4 fullPrint];

    v6 = sub_26666C308();
  }

  else
  {

    return 0;
  }

  return v6;
}

unint64_t sub_26655F7BC()
{
  result = qword_28007D298;
  if (!qword_28007D298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007D298);
  }

  return result;
}

uint64_t sub_26655F810()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2666695E8();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26655F8C8()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266549000, v2, v3, "[FindEvents FlowStrategy] makeIntentExecutionBehavior", v4, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];

  v10 = *(v8 + 40);
  sub_266560998();

  v11 = v10;
  v12 = v9;
  sub_2666695D8();
  sub_266669608();
  v13 = sub_2666695F8();
  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_8();

  return v14(v13);
}

uint64_t sub_26655FA54()
{
  v1 = sub_266669E58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_266669DF8();
  sub_26659AC88(v4, v40);
  (*(v2 + 8))(v4, v1);
  sub_26655A100(v40, v39);
  if (v39[40] == 255)
  {
    goto LABEL_6;
  }

  sub_26655A100(v39, &v35);
  if (v38 != 1)
  {
    if (v38 == 5)
    {
      v5 = vorrq_s8(v36, v37);
      if (!(*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v35))
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v24 = sub_26666C168();
        __swift_project_value_buffer(v24, qword_28156D7E8);
        v25 = sub_26666C148();
        v26 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_1(v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          OUTLINED_FUNCTION_8_0();
          _os_log_impl(v28, v29, v30, v31, v27, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        sub_2666697C8();
        goto LABEL_12;
      }
    }

    sub_266553988(&v35);
LABEL_6:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v6 = sub_26666C168();
    __swift_project_value_buffer(v6, qword_28156D7E8);
    sub_26655A100(v40, &v35);
    v7 = sub_26666C148();
    v8 = sub_26666C618();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315138;
      sub_26655A100(&v35, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
      v11 = sub_26666C318();
      v13 = v12;
      sub_266560930(&v35);
      v14 = sub_2665BFC90(v11, v13, &v34);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_266549000, v7, v8, "[FindEvents FlowStrategy] unsupported task, ignoring: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_266560930(&v35);
    }

    sub_2666697E8();
LABEL_12:
    sub_266560930(v40);
    return sub_266560930(v39);
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v15 = sub_26666C168();
  __swift_project_value_buffer(v15, qword_28156D7E8);
  v16 = sub_26666C148();
  v17 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_1(v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v19, v20, v21, v22, v18, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_2666697D8();
  sub_266560930(v40);
  sub_266553988(&v35);
  return sub_266560930(v39);
}

uint64_t sub_26655FE50(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = OUTLINED_FUNCTION_31();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26655FE7C()
{
  v29 = v2;
  v3 = *(v2 + 248);
  __swift_project_boxed_opaque_existential_1(*(v2 + 264), *(*(v2 + 264) + 24));
  sub_26659AC88(v3, v2 + 16);
  sub_26655A100(v2 + 16, v2 + 64);
  v4 = *(v2 + 104);
  v5 = (v2 + 64);
  if (v4 == 1)
  {
    sub_2665536F8(v5, v2 + 208);
    OUTLINED_FUNCTION_9_1();
    v27 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v2 + 272) = v7;
    *v7 = v2;
    v7[1] = sub_2665601E4;

    return v27(1, v0, v1);
  }

  else
  {
    if (v4 == 255)
    {
      sub_266560930(v5);
    }

    else
    {
      sub_266553988(v5);
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v9 = sub_26666C168();
    __swift_project_value_buffer(v9, qword_28156D7E8);
    sub_26655A100(v2 + 16, v2 + 112);
    v10 = sub_26666C148();
    v11 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_7_1(v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136315138;
      sub_26655A100(v2 + 112, v2 + 160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
      v14 = sub_26666C318();
      v16 = v15;
      sub_266560930(v2 + 112);
      v17 = sub_2665BFC90(v14, v16, &v28);

      *(v12 + 4) = v17;
      OUTLINED_FUNCTION_8_0();
      _os_log_impl(v18, v19, v20, v21, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_266560930(v2 + 112);
    }

    v22 = *(v2 + 248);
    type metadata accessor for IntentConversionError(0);
    sub_26655A170();
    swift_allocError();
    v24 = v23;
    v25 = sub_266669E58();
    (*(*(v25 - 8) + 16))(v24, v22, v25);
    swift_willThrow();
    sub_266560930(v2 + 16);
    v26 = *(v2 + 8);

    return v26();
  }
}

uint64_t sub_2665601E4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  *(v1 + 280) = v0;

  v2 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2665602D4(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v3 + 288) = v5;
  *v5 = v3;
  v5[1] = sub_2665603E4;

  return (v7)(0, v1, v2);
}

uint64_t sub_2665603E4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  *(v1 + 296) = v0;

  v2 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2665604D4()
{
  v26 = v0;
  if (*(v0 + 256))
  {
    v1 = sub_266566AA0(*(v0 + 280), 0);
  }

  else
  {
    v1 = *(v0 + 296);
  }

  v2 = v1;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v3 = sub_26666C168();
  __swift_project_value_buffer(v3, qword_28156D7E8);
  v4 = v2;
  v5 = sub_26666C148();
  v6 = sub_26666C618();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 280);
  if (v7)
  {
    v24 = *(v0 + 296);
    v23 = *(v0 + 280);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    v11 = v4;
    v12 = [v11 description];
    v13 = sub_26666C308();
    v15 = v14;

    v16 = sub_2665BFC90(v13, v15, &v25);

    *(v9 + 4) = v16;
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v17, v18, v19, v20, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

  sub_266560930(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 208));
  OUTLINED_FUNCTION_8();

  return v21(v4);
}

uint64_t sub_2665606E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2665597B8;

  return sub_26655FE50(a1, a2);
}

uint64_t sub_266560784()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266559F10;

  return sub_26655F810();
}

unint64_t sub_26656082C()
{
  result = qword_28156CE90;
  if (!qword_28156CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156CE90);
  }

  return result;
}

unint64_t sub_266560884()
{
  result = qword_28156CEA8;
  if (!qword_28156CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156CEA8);
  }

  return result;
}

unint64_t sub_2665608DC()
{
  result = qword_28156CEB0;
  if (!qword_28156CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156CEB0);
  }

  return result;
}

uint64_t sub_266560930(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266560998()
{
  result = qword_28156C0D0;
  if (!qword_28156C0D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156C0D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_1()
{
  v1 = v0[30];
  __swift_project_boxed_opaque_existential_1(v0 + 26, v0[29]);
  return v1 + 40;
}

id sub_266560A08(void *a1)
{
  v3 = [v1 masterEvent];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [a1 masterEvent];
  v6 = [v4 isEqual_];

  return v6;
}

id sub_266560A9C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10)
{
  v52 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = a7;
  v22 = [ObjCClassFromMetadata eventWithEventStore_];
  [v22 setCalendar_];
  v51 = a2;
  sub_26655E020(a2, v20);
  v23 = sub_266668D38();
  v24 = 0;
  if (__swift_getEnumTagSinglePayload(v20, 1, v23) != 1)
  {
    v24 = sub_266668C88();
    OUTLINED_FUNCTION_1_3();
    (*(v25 + 8))(v20, v23);
  }

  [v22 setStartDate_];

  sub_26655E020(v52, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v23) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_266668C88();
    OUTLINED_FUNCTION_1_3();
    (*(v27 + 8))(v10, v23);
  }

  [v22 setEndDate_];

  if (a5)
  {
    v28 = sub_26666C2F8();
  }

  else
  {
    v28 = 0;
  }

  [v22 setTitle_];

  [v22 setAllDay_];
  if (a6)
  {
    sub_266552C44(0, &unk_28007DC70, 0x277CC5A70);
    v29 = sub_26666C488();
  }

  else
  {
    v29 = 0;
  }

  sub_2665614B4(v29, 0x6565646E65747461, 0xE900000000000073, v22);
  swift_unknownObjectRelease();
  if (a9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_26666E050;
    *(v30 + 32) = a9;
    v31 = a9;
    sub_266561530(v30, v22);
  }

  if (a10)
  {
    v32 = a10;
    v33 = [v32 location];
    if (v33 && (v34 = v33, [v33 coordinate], v36 = v35, v34, v36 == 0.0) && (v37 = objc_msgSend(v32, sel_location)) != 0 && (v38 = v37, objc_msgSend(v37, sel_coordinate), v40 = v39, v38, v40 == 0.0))
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v41 = sub_26666C168();
      __swift_project_value_buffer(v41, qword_28156D7E8);
      v42 = sub_26666C148();
      v43 = sub_26666C618();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_266549000, v42, v43, "Setting texted based location due to 0,0 coordinates", v44, 2u);
        MEMORY[0x266789690](v44, -1, -1);
      }

      sub_2666111C8(v32);
      if (v45)
      {
        v46 = sub_26666C2F8();
      }

      else
      {
        v46 = 0;
      }

      v47 = &selRef_setLocation_;
    }

    else
    {
      sub_266552C44(0, &qword_28007D2C8, 0x277CC5AD0);
      v46 = sub_266653E0C(v32);
      v47 = &selRef_setStructuredLocation_;
    }

    [v22 *v47];

    a8 = v50;
  }

  else
  {
    v46 = v50;
  }

  sub_266557D74(v52, &qword_28007D140, &qword_26666F140);
  sub_266557D74(v51, &qword_28007D140, &qword_26666F140);
  return v22;
}

id sub_266560FA8()
{
  v1 = sub_266561444(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (sub_2665C485C() <= 0)
  {

    return 0;
  }

  sub_2665C4864();
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x266788B60](0, v2);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  v4 = v3;

  sub_266552C44(0, &qword_28007D2B8, 0x277CD3F28);
  return sub_2665760B4(v4);
}

id static EKEvent.< infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_266668D38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  result = [a1 startDate];
  if (result)
  {
    v12 = result;
    sub_266668CE8();

    result = [a2 startDate];
    if (result)
    {
      v13 = result;
      sub_266668CE8();

      LOBYTE(v13) = sub_266668CA8();
      v14 = *(v5 + 8);
      v14(v8, v4);
      v14(v10, v4);
      return (v13 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2665611CC()
{
  result = qword_28007D2A8;
  if (!qword_28007D2A8)
  {
    sub_266552C44(255, &qword_28156C098, 0x277CC5A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D2A8);
  }

  return result;
}

uint64_t sub_266561234()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = [v2 externalURI];
  if (v7)
  {
    v8 = v7;
    sub_266668C28();

    v9 = sub_266668C48();
    v10 = 0;
  }

  else
  {
    v9 = sub_266668C48();
    v10 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v10, 1, v9);
  sub_2665613D4(v0, v6);
  sub_266668C48();
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    sub_266557D74(v6, &qword_28007D2B0, &qword_26666E5F0);
    return 0;
  }

  else
  {
    v11 = sub_266668C08();
    OUTLINED_FUNCTION_1_3();
    (*(v12 + 8))(v6, v9);
  }

  return v11;
}

uint64_t sub_2665613D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266561444(void *a1)
{
  v1 = [a1 recurrenceRules];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_266552C44(0, &qword_28007D2C0, 0x277CC5AA8);
  v3 = sub_26666C498();

  return v3;
}

void sub_2665614B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26666C2F8();

  [a4 setValue:a1 forKey:v6];
}

void sub_266561530(uint64_t a1, void *a2)
{
  sub_266552C44(0, &qword_28007D2C0, 0x277CC5AA8);
  v3 = sub_26666C488();

  [a2 setRecurrenceRules_];
}

uint64_t _s19SiriCalendarIntents7SnippetO6PromptO9hashValueSivg_0(char a1)
{
  sub_26666CB88();
  MEMORY[0x266788EE0](a1 & 1);
  return sub_26666CBC8();
}

uint64_t sub_266561630(uint64_t a1)
{
  v2 = *v1;
  sub_26666CB88();
  MEMORY[0x266788EE0](v2);
  return sub_26666CBC8();
}

double sub_266561674@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_2665DA448(a1))
  {
    v5 = 2;
LABEL_5:
    *a2 = v5;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 33) = 0u;
    return result;
  }

  v6 = sub_266561758(a1);
  if (v6 == 2)
  {
    v5 = 3;
    goto LABEL_5;
  }

  *a2 = v6 & 1;
  sub_266561D28(v2, v8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_26659AC88(a1, a2 + 8);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_266557D74(v8, &qword_28007D2D0, &qword_26666E618);
    *(a2 + 40) = 0;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 48) = -1;
  }

  return result;
}

unint64_t sub_266561758(uint64_t a1)
{
  v2 = sub_266669E88();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_266669E48();
  v49 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26666B208();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_266669E58();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v43 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v45 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v19 = *(v12 + 16);
  v48 = a1;
  v20 = a1;
  v21 = v19;
  v19(&v43 - v17, v20, v11);
  v22 = (*(v12 + 88))(v18, v11);
  if (v22 == *MEMORY[0x277D5C128])
  {
    (*(v12 + 96))(v18, v11);
    (*(v8 + 32))(v10, v18, v7);
    v23 = sub_266561D98(v10);
    (*(v8 + 8))(v10, v7);
  }

  else if (v22 == *MEMORY[0x277D5C150])
  {
    (*(v12 + 96))(v18, v11);
    v24 = v49;
    (v49[4])(v6, v18, v4);
    sub_26656212C(v6);
    v23 = v25;
    (v24[1])(v6, v4);
  }

  else if (v22 == *MEMORY[0x277D5C160])
  {
    (*(v12 + 96))(v18, v11);
    v27 = v46;
    v26 = v47;
    v28 = v44;
    (*(v46 + 32))(v44, v18, v47);
    v23 = sub_266562508(v28);
    (*(v27 + 8))(v28, v26);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v29 = sub_26666C168();
    __swift_project_value_buffer(v29, qword_28156D7E8);
    v30 = v45;
    v21(v45, v48, v11);
    v31 = sub_26666C148();
    v32 = sub_26666C618();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v33 = 136315138;
      v21(v43, v30, v11);
      v34 = sub_26666C318();
      v35 = v30;
      v36 = v34;
      v38 = v37;
      v39 = *(v12 + 8);
      v39(v35, v11);
      v40 = sub_2665BFC90(v36, v38, &v50);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_266549000, v31, v32, "[ConfirmationResponse] parse failed. Unsupported parse type: %s", v33, 0xCu);
      v41 = v49;
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x266789690](v41, -1, -1);
      MEMORY[0x266789690](v33, -1, -1);
    }

    else
    {

      v39 = *(v12 + 8);
      v39(v30, v11);
    }

    v39(v18, v11);
    return 2;
  }

  return v23;
}

uint64_t sub_266561D28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2D0, &qword_26666E618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266561D98(uint64_t a1)
{
  v2 = type metadata accessor for CalendarNLv3Intent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26666B208();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v9 = sub_26666C168();
  __swift_project_value_buffer(v9, qword_28156D7E8);
  v24 = *(v6 + 16);
  v24(v8, a1, v5);
  v10 = sub_26666C148();
  v11 = sub_26666C618();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v2;
    v13 = v12;
    v21 = swift_slowAlloc();
    v22 = v4;
    v25 = v21;
    *v13 = 136315138;
    sub_266563A94(&qword_28007D2E0, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
    v14 = sub_26666CAA8();
    v15 = a1;
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = sub_2665BFC90(v14, v17, &v25);
    a1 = v15;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_266549000, v10, v11, "[ConfirmationResponse] parsing nlIntent %s", v13, 0xCu);
    v19 = v21;
    __swift_destroy_boxed_opaque_existential_1(v21);
    v4 = v22;
    MEMORY[0x266789690](v19, -1, -1);
    MEMORY[0x266789690](v13, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v24(v4, a1, v5);
  if (qword_28007CE38 != -1)
  {
    swift_once();
  }

  sub_266563A94(&qword_28007D2D8, type metadata accessor for CalendarNLv3Intent, &unk_266679EEC);
  sub_26666A528();
  sub_266563A38(v4);
  return 0x201000000020100uLL >> (8 * v26);
}

void sub_26656212C(uint64_t a1)
{
  v2 = sub_266669E48();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - v7;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v9 = sub_26666C168();
  __swift_project_value_buffer(v9, qword_28156D7E8);
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v11 = sub_26666C148();
  v12 = sub_26666C618();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v44 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v45 = a1;
    v46 = v15;
    v16 = v15;
    *v14 = 136315138;
    v17 = sub_266669E28();
    v43 = v10;
    v19 = v18;
    (*(v3 + 8))(v8, v2);
    v20 = sub_2665BFC90(v17, v19, &v46);
    v10 = v43;

    *(v14 + 4) = v20;
    _os_log_impl(&dword_266549000, v11, v12, "[ConfirmationResponse] parsing direct invocation with id: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v21 = v16;
    a1 = v45;
    MEMORY[0x266789690](v21, -1, -1);
    v22 = v14;
    v6 = v44;
    MEMORY[0x266789690](v22, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  v10(v6, a1, v2);
  sub_2665629D8(v6);
  if (v23 - 2 < 2)
  {
    v24 = sub_266669E28();
    v26 = v25;
    v27 = sub_266669628();
    v28 = [v27 identifier];

    v29 = sub_26666C308();
    v31 = v30;

    if (v24 == v29 && v26 == v31)
    {
    }

    else
    {
      v33 = sub_26666CAC8();

      if ((v33 & 1) == 0)
      {
        v34 = sub_266669E28();
        v36 = v35;
        v37 = sub_266669618();
        v38 = [v37 identifier];

        v39 = sub_26666C308();
        v41 = v40;

        if (v34 != v39 || v36 != v41)
        {
          sub_26666CAC8();
        }
      }
    }
  }
}

uint64_t sub_266562508(uint64_t a1)
{
  v45 = sub_266669EE8();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v41 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2F8, &unk_266677220);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v37 - v4;
  v5 = sub_266669F98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266669E88();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v15 = sub_26666C168();
  __swift_project_value_buffer(v15, qword_28156D7E8);
  v16 = *(v9 + 16);
  v42 = a1;
  v16(v14, a1, v8);
  v17 = sub_26666C148();
  v18 = sub_26666C618();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v6;
    v22 = v21;
    v46 = v21;
    *v20 = 136315138;
    v16(v12, v14, v8);
    v23 = sub_26666C318();
    v25 = v24;
    (*(v9 + 8))(v14, v8);
    v26 = sub_2665BFC90(v23, v25, &v46);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_266549000, v17, v18, "[ConfirmationResponse] parsing usoParse %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v27 = v22;
    v6 = v38;
    MEMORY[0x266789690](v27, -1, -1);
    v28 = v20;
    v5 = v39;
    MEMORY[0x266789690](v28, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v29 = v41;
  sub_266669E78();
  v30 = sub_266669ED8();
  (*(v43 + 8))(v29, v45);
  v31 = v44;
  sub_2665EC518(v30, v44);

  if (__swift_getEnumTagSinglePayload(v31, 1, v5) == 1)
  {
    sub_266557D74(v31, &qword_28007D2F8, &unk_266677220);
    return 2;
  }

  else
  {
    v33 = v40;
    (*(v6 + 32))(v40, v31, v5);
    if (sub_266669F38())
    {
      (*(v6 + 8))(v33, v5);
      return 0;
    }

    else
    {
      v34 = sub_266669F48();
      v35 = v33;
      v36 = v34;
      (*(v6 + 8))(v35, v5);
      if (v36)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }
}