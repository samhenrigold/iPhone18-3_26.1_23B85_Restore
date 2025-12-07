void sub_238063138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238063F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 0x20u);
}

uint64_t sub_2380667E0()
{
  v1 = *v0;
  sub_23815568C();
  MEMORY[0x2383E9CD0](v1);
  return sub_2381556BC();
}

uint64_t sub_238066854(uint64_t a1)
{
  v2 = *v1;
  sub_23815568C();
  MEMORY[0x2383E9CD0](v2);
  return sub_2381556BC();
}

const char *sub_2380668AC()
{
  if (*v0)
  {
    return "PINPairingDDUI";
  }

  else
  {
    return "AskToAirDrop";
  }
}

uint64_t sub_2380668E4()
{
  sub_23815568C();
  MEMORY[0x2383E9CD0](0);
  return sub_2381556BC();
}

uint64_t sub_238066950(uint64_t a1)
{
  sub_23815568C();
  MEMORY[0x2383E9CD0](0);
  return sub_2381556BC();
}

uint64_t sub_2380669C0(uint64_t a1, id *a2)
{
  result = sub_238154CAC();
  *a2 = 0;
  return result;
}

uint64_t sub_238066A38(uint64_t a1, id *a2)
{
  v3 = sub_238154CBC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_238066AB8@<X0>(uint64_t *a1@<X8>)
{
  sub_238154CCC();
  v2 = sub_238154C8C();

  *a1 = v2;
  return result;
}

uint64_t sub_238066AFC()
{
  v0 = sub_238154CCC();
  v1 = MEMORY[0x2383E94A0](v0);

  return v1;
}

uint64_t sub_238066B38(uint64_t a1)
{
  sub_238154CCC();
  sub_238154C5C();
}

uint64_t sub_238066B8C(uint64_t a1)
{
  sub_238154CCC();
  sub_23815568C();
  sub_238154C5C();
  v1 = sub_2381556BC();

  return v1;
}

uint64_t sub_238066C00(void *a1, uint64_t *a2)
{
  v2 = sub_238154CCC();
  v4 = v3;
  if (v2 == sub_238154CCC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2381555CC();
  }

  return v7 & 1;
}

uint64_t sub_238066C88@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_238154C8C();

  *a2 = v3;
  return result;
}

uint64_t sub_238066CD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238154CCC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_238066CFC(uint64_t a1)
{
  v2 = sub_238067254(&qword_27DEEA190, asc_23815787C);
  v3 = sub_238067254(&qword_27DEEA198, aY3);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_238066DA4(uint64_t a1, int a2)
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

uint64_t sub_238066DC4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RapportFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RapportFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_238066F10(uint64_t a1, int a2)
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

uint64_t sub_238066F30(uint64_t result, int a2, int a3)
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

unint64_t sub_238066F70()
{
  result = qword_27DEEA160;
  if (!qword_27DEEA160)
  {
    result = swift_getWitnessTable(byte_23815763C, &type metadata for RapportFeatureFlags, v0, v1);
    atomic_store(result, &qword_27DEEA160);
  }

  return result;
}

void sub_238066FD8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SharingFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_238067198()
{
  result = qword_27DEEA170;
  if (!qword_27DEEA170)
  {
    result = swift_getWitnessTable(byte_238157734, &type metadata for SharingFeatureFlags, v0, v1);
    atomic_store(result, &qword_27DEEA170);
  }

  return result;
}

uint64_t sub_238067254(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2380672E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for _DDNodeViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[12];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[13];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[15];

  return v18(v19, a2, v17);
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

uint64_t sub_238067524(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for _DDNodeViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[12];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[15];

  return v18(v19, a2, a2, v17);
}

void sub_238067724(uint64_t a1)
{
  type metadata accessor for _DDNodeViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_238067930();
    if (v2 <= 0x3F)
    {
      sub_238067980(319);
      if (v3 <= 0x3F)
      {
        sub_238067A2C(319, &qword_27DEEA350, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2380714D0(319, &qword_27DEEA358, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2380714D0(319, &qword_27DEEA360, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_238067A2C(319, &qword_27DEEA368, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_2380714D0(319, &qword_27DEEA910, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
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

unint64_t sub_238067930()
{
  result = qword_27DEED730;
  if (!qword_27DEED730)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DEED730);
  }

  return result;
}

void sub_238067980(uint64_t a1)
{
  if (!qword_27DEEA340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA348, &qword_238157968);
    v1 = sub_23815473C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEA340);
    }
  }
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

void sub_238067A2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for _DDNodeView.Layout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _DDNodeView.Layout(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_238067BD8()
{
  result = qword_27DEEA370;
  if (!qword_27DEEA370)
  {
    result = swift_getWitnessTable(asc_2381579C0, &type metadata for _DDNodeView.Layout, v0, v1);
    atomic_store(result, &qword_27DEEA370);
  }

  return result;
}

uint64_t sub_238067C2C()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v2 = MEMORY[0x28223BE20](v1);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v35 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = type metadata accessor for _DDNodeDecoration(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = type metadata accessor for _DDNodeDecorationCombination(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238070308(v0, v21, type metadata accessor for _DDNodeDecorationCombination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = *v21;
      v24 = *(*v21 + 16);
      if (v24)
      {
        v25 = 0;
        v26 = v23 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v35 = v24 - 1;
        for (i = 0; ; ++i)
        {
          while (1)
          {
            if (i >= *(v23 + 16))
            {
              __break(1u);
LABEL_32:
              v34 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
              goto LABEL_34;
            }

            v28 = i + 1;
            sub_238070308(v26 + *(v13 + 72) * i, v16, type metadata accessor for _DDNodeDecoration);
            sub_238070308(v16, v6, type metadata accessor for _DDNodeDecoration.Kind);
            if ((swift_getEnumCaseMultiPayload() | 2) != 7)
            {
              break;
            }

            sub_238071150(v16, type metadata accessor for _DDNodeDecoration);
            ++i;
            if (v24 == v28)
            {
              goto LABEL_17;
            }
          }

          sub_238071150(v6, type metadata accessor for _DDNodeDecoration.Kind);
          sub_238070308(v16, v36, type metadata accessor for _DDNodeDecoration.Kind);
          sub_238071150(v16, type metadata accessor for _DDNodeDecoration);
          v29 = swift_getEnumCaseMultiPayload();
          if (v29 > 3)
          {
            if ((v29 - 5) >= 3)
            {
              v34 = type metadata accessor for _DDNodeDecoration.Kind;
LABEL_34:
              sub_238071150(v36, v34);

LABEL_30:
              v30 = 256;
              v25 = 1;
              return v30 | v25 & 1u;
            }
          }

          else
          {
            if (v29 >= 3)
            {
              goto LABEL_32;
            }

            sub_238071150(v36, type metadata accessor for _DDNodeDecoration.Kind);
          }

          v25 = 1;
          if (v35 == i)
          {
LABEL_17:

            goto LABEL_20;
          }
        }
      }
    }

LABEL_19:
    v25 = 0;
LABEL_20:
    v30 = 0;
    return v30 | v25 & 1u;
  }

  sub_238070370(v21, v18, type metadata accessor for _DDNodeDecoration);
  sub_238070308(v18, v11, type metadata accessor for _DDNodeDecoration.Kind);
  if ((swift_getEnumCaseMultiPayload() | 2) == 7)
  {
    sub_238071150(v18, type metadata accessor for _DDNodeDecoration);
    goto LABEL_19;
  }

  sub_238071150(v11, type metadata accessor for _DDNodeDecoration.Kind);
  sub_238070308(v18, v9, type metadata accessor for _DDNodeDecoration.Kind);
  sub_238071150(v18, type metadata accessor for _DDNodeDecoration);
  v32 = swift_getEnumCaseMultiPayload();
  if (v32 > 2)
  {
    if ((v32 - 5) >= 3)
    {
      if (v32 == 3)
      {
        v33 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
      }

      else
      {
        v33 = type metadata accessor for _DDNodeDecoration.Kind;
      }

      sub_238071150(v9, v33);
      goto LABEL_30;
    }
  }

  else
  {
    sub_238071150(v9, type metadata accessor for _DDNodeDecoration.Kind);
  }

  v30 = 0;
  v25 = 1;
  return v30 | v25 & 1u;
}

uint64_t sub_238068180(unsigned __int8 a1)
{
  v2 = sub_23815426C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_23815419C();
    }

    else
    {
      if (a1 == 3)
      {

        return sub_2381542BC();
      }

      sub_2381542BC();
    }

    sub_2381541FC();
    v8 = sub_23815425C();

    return v8;
  }

  if (a1)
  {
    v9 = v4;
    sub_23815428C();
    (*(v3 + 104))(v6, *MEMORY[0x277CE0A10], v9);
    v10 = sub_23815429C();

    (*(v3 + 8))(v6, v9);
    return v10;
  }

  else
  {

    return sub_2381542AC();
  }
}

uint64_t sub_238068360@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for _DDNodeView(0);
  sub_2380712E4(v1 + *(v10 + 48), v9, &qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_238153A2C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2381550EC();
    v13 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_238068568@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for _DDNodeView(0);
  sub_2380712E4(v1 + *(v10 + 52), v9, &qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_238153A0C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2381550EC();
    v13 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_238068770()
{
  v1 = sub_238153CFC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for _DDNodeView(0) + 56));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_2381550EC();
  v8 = sub_2381540CC();
  sub_23815290C();

  sub_238153CEC();
  swift_getAtKeyPath();
  v9 = sub_2380700D8(v6, 0);
  (*(v2 + 8))(v4, v1, v9);
  return *&v10[1];
}

uint64_t sub_2380688CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for _DDNodeView(0);
  sub_2380712E4(v1 + *(v10 + 60), v9, &qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2381537EC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2381550EC();
    v13 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_238068AD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2381548DC();
  v6 = v5;
  sub_238068CE0(v2, *&a1, __src);
  memcpy(__dst, __src, 0x28AuLL);
  memcpy(v13, __src, 0x28AuLL);
  sub_2380712E4(__dst, v9, &qword_27DEEA658, &qword_238157D30);
  sub_238071284(v13, &qword_27DEEA658, &qword_238157D30);
  memcpy(v14, __dst, sizeof(v14));
  type metadata accessor for _DDNodeView(0);
  sub_2381548DC();
  sub_2381538EC();
  *&v11[3] = *&v11[27];
  *&v11[11] = *&v11[35];
  *&v11[19] = *&v11[43];
  sub_2381545DC();
  v7 = sub_23815460C();

  *&v9[0] = v4;
  *(&v9[0] + 1) = v6;
  memcpy(&v9[1], v14, 0x28AuLL);
  *(&v9[41] + 10) = *v11;
  *(&v9[42] + 10) = *&v11[8];
  *(&v9[43] + 10) = *&v11[16];
  *(&v9[44] + 1) = *&v11[23];
  *&v9[45] = v7;
  *(&v9[45] + 1) = 0x4026000000000000;
  v9[46] = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA660, &qword_238157D38);
  sub_23807100C();
  sub_2381544AC();
  memcpy(__src, v9, sizeof(__src));
  return sub_238071284(__src, &qword_27DEEA660, &qword_238157D38);
}

uint64_t sub_238068CE0@<X0>(uint64_t a1@<X0>, double a2@<X1>, void *a3@<X8>)
{
  v73 = a2;
  v77 = a3;
  v4 = sub_23815468C();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v6 = MEMORY[0x28223BE20](v67);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - v8;
  v10 = sub_2381537EC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  sub_2380688CC(&v64 - v15);
  (*(v11 + 104))(v14, *MEMORY[0x277CDF3C0], v10);
  sub_2381537DC();
  v17 = *(v11 + 8);
  v17(v14, v10);
  v17(v16, v10);
  v18 = type metadata accessor for _DDNodeViewModel(0);
  if (*(a1 + *(v18 + 20) + 32) - 2 < 4 || *(a1 + *(v18 + 20) + 32))
  {
    v19 = sub_2381545EC();
  }

  else
  {
    v19 = sub_2381545FC();
  }

  v85 = v19;
  sub_2381545DC();
  v84 = sub_23815460C();

  sub_23815383C();
  v81 = v225;
  v79 = v227;
  v80 = v226;
  v78 = v229;
  v75 = v230;
  v76 = v228;
  v20 = sub_2381548DC();
  v82 = v21;
  v83 = v20;
  v22 = *(a1 + *(type metadata accessor for _DDNodeView(0) + 24));
  sub_2381548DC();
  sub_2381538EC();
  v23 = sub_238069A78();
  sub_238069BC8(v23, v217, 1.0);

  v213 = v217[6];
  v214 = v217[7];
  v215 = v217[8];
  v216 = v217[9];
  v209 = v217[2];
  v210 = v217[3];
  v211 = v217[4];
  v212 = v217[5];
  v207 = v217[0];
  v208 = v217[1];
  v69 = sub_238069E08();
  v24 = *(a1 + *(v18 + 24));
  if (*(v24 + 16))
  {
    v25 = *(type metadata accessor for _DDNodeDecoration(0) - 8);
    sub_238070308(v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v9, type metadata accessor for _DDNodeDecoration.Kind);
    swift_getEnumCaseMultiPayload();
    sub_238071150(v9, type metadata accessor for _DDNodeDecoration.Kind);
  }

  v74 = sub_23815492C();
  v68 = sub_238069E08();
  if (sub_238069E08())
  {
    v26 = [objc_opt_self() systemBlueColor];
    v27 = sub_23815465C();
    sub_238069FFC();
    v29 = v28;
    if (v30)
    {
      v29 = 0.0;
    }

    sub_238069BC8(v27, &v119, v29);

    v92 = v125;
    v93 = v126;
    v94 = v127;
    v95 = v128;
    v88 = v121;
    v89 = v122;
    v90 = v123;
    v91 = v124;
    v86 = v119;
    v87 = v120;
    v31 = sub_23815493C();
    sub_238069FFC();
    v65 = v32;
    v34 = v33 & 1;
    LOBYTE(v97) = v33 & 1;
    if (sub_238069E08())
    {
      v35 = 1.0;
    }

    else
    {
      v35 = 0.0;
    }

    if (*(v24 + 16))
    {
      v36 = *(type metadata accessor for _DDNodeDecoration(0) - 8);
      v37 = v24 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v38 = v31;
      v39 = v66;
      sub_238070308(v37, v66, type metadata accessor for _DDNodeDecoration.Kind);
      swift_getEnumCaseMultiPayload();
      v40 = v39;
      v31 = v38;
      sub_238071150(v40, type metadata accessor for _DDNodeDecoration.Kind);
    }

    v41 = sub_23815492C();
    if (sub_238069E08())
    {
      v42 = 1.0;
    }

    else
    {
      v42 = 0.0;
    }

    v158 = v92;
    v159 = v93;
    v160 = v94;
    v161 = v95;
    v154 = v88;
    v155 = v89;
    v156 = v90;
    v157 = v91;
    v152 = v86;
    v153 = v87;
    *&v162 = v31;
    *(&v162 + 1) = v65;
    LOBYTE(v163) = v34;
    *(&v163 + 1) = v35;
    *&v164 = v41;
    *(&v164 + 1) = v42;
    CGSizeMake();
    v204 = v162;
    v205 = v163;
    v206 = v164;
    v200 = v158;
    v201 = v159;
    v203 = v161;
    v202 = v160;
    v196 = v154;
    v197 = v155;
    v199 = v157;
    v198 = v156;
    v195 = v153;
    v194 = v152;
  }

  else
  {
    sub_2380711B0(&v194);
  }

  v44 = v70;
  v43 = v71;
  v45 = v72;
  (*(v71 + 104))(v70, *MEMORY[0x277CE0FE0], v72);
  v46 = sub_2381546CC();
  (*(v43 + 8))(v44, v45);
  if (v68)
  {
    v47 = 1.0;
  }

  else
  {
    v47 = 0.0;
  }

  v73 = v47;
  if (v69)
  {
    v48 = 1.0;
  }

  else
  {
    v48 = 0.0;
  }

  v49 = sub_2381540FC();
  sub_23815377C();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v192 = 1;
  v188 = 0;
  sub_23806A404(v22);
  sub_23806A404(v22);
  sub_2381548DC();
  sub_2381538EC();
  *&v193[7] = v231;
  *&v193[23] = v232;
  *&v193[39] = v233;
  v107 = v204;
  v108 = v205;
  v109 = v206;
  v103 = v200;
  v104 = v201;
  v106 = v203;
  v105 = v202;
  v99 = v196;
  v100 = v197;
  v102 = v199;
  v101 = v198;
  v97 = v194;
  v98 = v195;
  *&v110 = v81;
  *(&v110 + 1) = __PAIR64__(v79, v80);
  v59 = v75;
  v58 = v76;
  *&v111 = v76;
  *(&v111 + 1) = v78;
  *&v112 = v75;
  *(&v112 + 1) = v84;
  LOWORD(v113) = 256;
  *(&v113 + 2) = v223;
  WORD3(v113) = v224;
  *(&v113 + 1) = v85;
  LOWORD(v114) = 256;
  WORD3(v114) = v222;
  *(&v114 + 2) = v221;
  *(&v114 + 1) = v83;
  *v115 = v82;
  *&v115[8] = v218;
  *&v115[24] = v219;
  *&v115[40] = v220;
  v96[2] = v112;
  v96[3] = v113;
  v96[0] = v110;
  v96[1] = v111;
  v96[4] = v114;
  v96[5] = *v115;
  v96[6] = *&v115[16];
  v96[7] = *&v115[32];
  v116[6] = v213;
  v116[7] = v214;
  v116[8] = v215;
  v116[9] = v216;
  v116[2] = v209;
  v116[3] = v210;
  v116[4] = v211;
  v116[5] = v212;
  v116[0] = v207;
  v116[1] = v208;
  v60 = v48;
  *&v117 = v48;
  v61 = v74;
  *(&v117 + 1) = v74;
  *(&v96[16] + 8) = v215;
  *(&v96[17] + 8) = v216;
  *(&v96[18] + 8) = v117;
  *(&v96[14] + 8) = v213;
  *(&v96[10] + 8) = v209;
  *(&v96[12] + 8) = v211;
  *(&v96[13] + 8) = v212;
  *(&v96[15] + 8) = v214;
  *(&v96[8] + 8) = v207;
  *(&v96[9] + 8) = v208;
  *(&v96[11] + 8) = v210;
  v129 = v204;
  v130 = v205;
  v131 = v206;
  v125 = v200;
  v126 = v201;
  v128 = v203;
  v127 = v202;
  v121 = v196;
  v122 = v197;
  v124 = v199;
  v123 = v198;
  v120 = v195;
  v119 = v194;
  v96[30] = v204;
  v96[31] = v205;
  v96[26] = v200;
  v96[27] = v201;
  v96[28] = v202;
  v96[29] = v203;
  v62 = v73;
  v118 = v73;
  *&v96[8] = *(&v220 + 1);
  *(&v96[19] + 1) = v73;
  v96[22] = v196;
  v96[23] = v197;
  v96[24] = v198;
  v96[25] = v199;
  v96[20] = v194;
  v96[21] = v195;
  v132[0] = v46;
  v132[1] = 0;
  LOWORD(v133) = 1;
  *(&v133 + 2) = v190;
  WORD3(v133) = v191;
  BYTE8(v133) = v49;
  HIDWORD(v133) = *&v189[3];
  *(&v133 + 9) = *v189;
  *&v134 = v51;
  *(&v134 + 1) = v53;
  *&v135 = v55;
  *(&v135 + 1) = v57;
  LOBYTE(v136[0]) = 0;
  *&v136[3] = *(&v233 + 1);
  *(&v136[2] + 1) = *&v193[32];
  *(&v136[1] + 1) = *&v193[16];
  *(v136 + 1) = *v193;
  WORD4(v136[3]) = 256;
  *(&v96[39] + 10) = *(&v136[2] + 10);
  v96[38] = v136[1];
  v96[39] = v136[2];
  v96[36] = v135;
  v96[37] = v136[0];
  v96[34] = v133;
  v96[35] = v134;
  v96[32] = v206;
  v96[33] = v46;
  memcpy(v77, v96, 0x28AuLL);
  v137[0] = v46;
  v137[1] = 0;
  v138 = 1;
  v139 = v190;
  v140 = v191;
  v141 = v49;
  *v142 = *v189;
  *&v142[3] = *&v189[3];
  v143 = v51;
  v144 = v53;
  v145 = v55;
  v146 = v57;
  v147 = 0;
  v148 = *v193;
  v149 = *&v193[16];
  *v150 = *&v193[32];
  *&v150[15] = *&v193[47];
  v151 = 256;
  sub_2380712E4(&v110, &v152, &qword_27DEEA690, &qword_238157D50);
  sub_2380712E4(v116, &v152, &qword_27DEEA698, &qword_238157D58);
  sub_2380712E4(&v119, &v152, &qword_27DEEA6A0, &qword_238157D60);
  sub_2380712E4(v132, &v152, &qword_27DEEA6A8, &qword_238157D68);
  sub_238071284(v137, &qword_27DEEA6A8, &qword_238157D68);
  v162 = v107;
  v163 = v108;
  v164 = v109;
  v158 = v103;
  v159 = v104;
  v161 = v106;
  v160 = v105;
  v154 = v99;
  v155 = v100;
  v157 = v102;
  v156 = v101;
  v153 = v98;
  v152 = v97;
  sub_238071284(&v152, &qword_27DEEA6A0, &qword_238157D60);
  v165[6] = v213;
  v165[7] = v214;
  v165[8] = v215;
  v165[9] = v216;
  v165[2] = v209;
  v165[3] = v210;
  v165[4] = v211;
  v165[5] = v212;
  v165[0] = v207;
  v165[1] = v208;
  v166 = v60;
  v167 = v61;
  v168 = v62;
  sub_238071284(v165, &qword_27DEEA698, &qword_238157D58);
  v169 = v81;
  v170 = v80;
  v171 = v79;
  v172 = v58;
  v173 = v78;
  v174 = v59;
  v175 = v84;
  v176 = 256;
  v177 = v223;
  v178 = v224;
  v179 = v85;
  v180 = 256;
  v181 = v221;
  v182 = v222;
  v183 = v83;
  v184 = v82;
  v185 = v218;
  v186 = v219;
  v187 = v220;
  return sub_238071284(&v169, &qword_27DEEA690, &qword_238157D50);
}

uint64_t sub_238069A78()
{
  v0 = sub_238152F3C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238152F2C();
  v4 = sub_238152EEC();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    v6 = objc_opt_self();
    v7 = &selRef_secondarySystemFillColor;
  }

  else
  {
    sub_238152F0C();
    v8 = sub_238152EEC();
    v5(v3, v0);
    v6 = objc_opt_self();
    v7 = &selRef_systemFillColor;
    if (v8)
    {
      v7 = &selRef_systemGrayColor;
    }
  }

  v9 = [v6 *v7];
  return sub_23815465C();
}

double sub_238069BC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_238153A2C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v26[-v11];
  sub_238068360(&v26[-v11]);
  (*(v7 + 104))(v10, *MEMORY[0x277CDFA90], v6);
  v13 = sub_238153A1C();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  sub_23815383C();

  v15 = sub_2381548DC();
  v17 = v16;
  sub_2381549DC();
  v19 = v18;
  v21 = v20;
  type metadata accessor for _DDNodeView(0);
  if (v13)
  {
    v22 = 1.57079633;
  }

  else
  {
    v22 = -1.57079633;
  }

  sub_2381548DC();
  sub_2381538EC();
  *a2 = 0;
  *(a2 + 8) = a3;
  v23 = v27;
  *(a2 + 16) = *&v26[8];
  *(a2 + 32) = v23;
  *(a2 + 48) = v28;
  *(a2 + 56) = a1;
  *(a2 + 64) = 256;
  *(a2 + 72) = v15;
  *(a2 + 80) = v17;
  *(a2 + 88) = v22;
  *(a2 + 96) = v19;
  *(a2 + 104) = v21;
  result = *&v30;
  v25 = v31;
  *(a2 + 128) = v30;
  *(a2 + 144) = v25;
  *(a2 + 112) = v29;
  return result;
}

uint64_t sub_238069E08()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for _DDNodeDecoration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for _DDNodeViewModel(0);
  v9 = *(v0 + *(result + 24));
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  while (v11 < *(v9 + 16))
  {
    sub_238070308(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, type metadata accessor for _DDNodeDecoration);
    sub_238070308(v7, v3, type metadata accessor for _DDNodeDecoration.Kind);
    sub_238071150(v7, type metadata accessor for _DDNodeDecoration);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_238071150(v3, type metadata accessor for _DDNodeDecoration.Kind);
      return 1;
    }

    ++v11;
    result = sub_238071150(v3, type metadata accessor for _DDNodeDecoration.Kind);
    if (v10 == v11)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

void sub_238069FFC()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - v5;
  v7 = type metadata accessor for _DDNodeDecoration(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for _DDNodeDecorationCombination(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + *(type metadata accessor for _DDNodeViewModel(0) + 24));
  v18 = *(v17 + 16);
  if (v18 != 1)
  {
    if (!v18)
    {
      swift_storeEnumTagMultiPayload();
      return;
    }

    *v16 = v17;
    swift_storeEnumTagMultiPayload();
    v19 = *(*v16 + 16);
    if (!v19)
    {

      return;
    }

    v20 = *v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v21 = *(v8 + 72);

    v22 = 0;
    v23 = 0.0;
    while (1)
    {
      sub_238070308(v20, v11, type metadata accessor for _DDNodeDecoration);
      sub_238070308(v11, v4, type metadata accessor for _DDNodeDecoration.Kind);
      sub_238071150(v11, type metadata accessor for _DDNodeDecoration);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v24 = v4[1];
        v25 = *(v4 + 16);

        if ((v25 & 1) == 0)
        {
          if (__OFADD__(v22++, 1))
          {
            __break(1u);
            return;
          }

          v23 = v23 + v24;
        }
      }

      else
      {
        sub_238071150(v4, type metadata accessor for _DDNodeDecoration.Kind);
      }

      v20 += v21;
      if (!--v19)
      {

        return;
      }
    }
  }

  sub_238070308(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v16, type metadata accessor for _DDNodeDecoration);
  swift_storeEnumTagMultiPayload();
  sub_238070370(v16, v13, type metadata accessor for _DDNodeDecoration);
  sub_238070308(v13, v6, type metadata accessor for _DDNodeDecoration.Kind);
  sub_238071150(v13, type metadata accessor for _DDNodeDecoration);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
  }

  else
  {
    sub_238071150(v6, type metadata accessor for _DDNodeDecoration.Kind);
  }
}

double sub_23806A404(char a1)
{
  if (*(v1 + *(type metadata accessor for _DDNodeViewModel(0) + 20) + 32))
  {
    v3 = &unk_238157E90;
  }

  else
  {
    v3 = &unk_238157E68;
  }

  return v3[a1];
}

uint64_t sub_23806A458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a1;
  v86 = a3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5B0, &qword_238157C98);
  MEMORY[0x28223BE20](v83);
  v85 = &v61 - v6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5B8, &qword_238157CA0);
  MEMORY[0x28223BE20](v84);
  v62 = &v61 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5C0, &qword_238157CA8);
  MEMORY[0x28223BE20](v78);
  v81 = &v61 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5C8, &qword_238157CB0);
  MEMORY[0x28223BE20](v79);
  v61 = &v61 - v9;
  v10 = sub_238152F3C();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x28223BE20](v10);
  v72 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5D0, &qword_238157CB8);
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5D8, &qword_238157CC0);
  v16 = *(v15 - 8);
  v75 = v15;
  v76 = v16;
  MEMORY[0x28223BE20](v15);
  v71 = &v61 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5E0, &qword_238157CC8);
  MEMORY[0x28223BE20](v77);
  v70 = &v61 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5E8, &qword_238157CD0);
  v19 = MEMORY[0x28223BE20](v80);
  v87 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v82 = &v61 - v21;
  v88 = a1;
  v89 = a2;
  v67 = a2;
  v68 = sub_2380704A0();

  v22 = sub_23815438C();
  v24 = v23;
  v26 = v25;
  sub_23815461C();
  v66 = sub_23815431C();
  v65 = v27;
  v29 = v28;
  v64 = v30;

  sub_238070490(v22, v24, v26 & 1);

  v63 = sub_23806AD98();
  KeyPath = swift_getKeyPath();
  v32 = type metadata accessor for _DDNodeView(0);
  v33 = sub_238068180(*(v3 + *(v32 + 24)));
  v34 = swift_getKeyPath();
  v35 = v29 & 1;
  LOBYTE(v88) = v29 & 1;
  v92 = 0;
  v36 = swift_getKeyPath();
  v37 = &v14[*(v12 + 36)];
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5F0, &qword_238157CD8) + 28);
  v39 = *MEMORY[0x277CE0B30];
  v40 = sub_23815430C();
  v41 = v37 + v38;
  v42 = v72;
  (*(*(v40 - 8) + 104))(v41, v39, v40);
  *v37 = swift_getKeyPath();
  v43 = v65;
  *v14 = v66;
  *(v14 + 1) = v43;
  v14[16] = v35;
  *(v14 + 3) = v64;
  *(v14 + 4) = KeyPath;
  *(v14 + 5) = v63;
  v14[48] = 0;
  *(v14 + 7) = v34;
  *(v14 + 8) = v33;
  *(v14 + 9) = v36;
  v45 = v73;
  v44 = v74;
  v14[80] = 1;
  v88 = v69;
  v89 = v67;
  v46 = sub_238070A74();
  v47 = v71;
  v48 = v12;
  v49 = MEMORY[0x277D837D0];
  v50 = v68;
  sub_2381544FC();
  sub_238071284(v14, &qword_27DEEA5D0, &qword_238157CB8);
  v88 = v48;
  v89 = v49;
  v90 = v46;
  v91 = v50;
  v51 = v70;
  swift_getOpaqueTypeConformance2();
  v52 = v75;
  sub_2381544AC();
  (*(v76 + 8))(v47, v52);
  sub_238152F1C();
  LOBYTE(v52) = sub_238152EEC();
  v53 = *(v45 + 8);
  v53(v42, v44);
  if (v52)
  {
    sub_2380712E4(v51, v81, &qword_27DEEA5E0, &qword_238157CC8);
    swift_storeEnumTagMultiPayload();
    sub_238070D54();
    sub_238070DE0();
    sub_238153ECC();
  }

  else
  {
    v54 = v61;
    sub_2380712E4(v51, v61, &qword_27DEEA5E0, &qword_238157CC8);
    v55 = (v54 + *(v79 + 36));
    *v55 = sub_23806AF5C;
    v55[1] = 0;
    sub_2380712E4(v54, v81, &qword_27DEEA5C8, &qword_238157CB0);
    swift_storeEnumTagMultiPayload();
    sub_238070D54();
    sub_238070DE0();
    sub_238153ECC();
    sub_238071284(v54, &qword_27DEEA5C8, &qword_238157CB0);
  }

  sub_238071284(v51, &qword_27DEEA5E0, &qword_238157CC8);
  v56 = v82;
  sub_23807121C(v87, v82, &qword_27DEEA5E8, &qword_238157CD0);
  sub_238152F0C();
  v57 = sub_238152EEC();
  v53(v42, v44);
  if (v57)
  {
    v58 = v62;
    sub_2380712E4(v56, v62, &qword_27DEEA5E8, &qword_238157CD0);
    v59 = v85;
    *(v58 + *(v84 + 36)) = 256;
    sub_2380712E4(v58, v59, &qword_27DEEA5B8, &qword_238157CA0);
    swift_storeEnumTagMultiPayload();
    sub_238070EF4();
    sub_238070F80();
    sub_238153ECC();
    sub_238071284(v58, &qword_27DEEA5B8, &qword_238157CA0);
  }

  else
  {
    sub_2380712E4(v56, v85, &qword_27DEEA5E8, &qword_238157CD0);
    swift_storeEnumTagMultiPayload();
    sub_238070EF4();
    sub_238070F80();
    sub_238153ECC();
  }

  return sub_238071284(v56, &qword_27DEEA5E8, &qword_238157CD0);
}

uint64_t sub_23806AD98()
{
  v0 = sub_238153A0C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238152F3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238152F2C();
  v8 = sub_238152EEC();
  (*(v5 + 8))(v7, v4);
  sub_238068568(v3);
  v9 = sub_2381539FC();
  (*(v1 + 8))(v3, v0);
  if (v8)
  {
    v10 = sub_2380AFAC8();
    v11 = 1;
    if (v10 == 107)
    {
      v11 = 2;
    }

    v12 = 2;
    if (v10 == 107)
    {
      v12 = 3;
    }

    if (v9)
    {
      return v12;
    }

    else
    {
      return v11;
    }
  }

  else if (v9)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_23806AF84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153A0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for _DDNodeViewModel(0) + 40));
  if (v7 != 107)
  {
    v36 = sub_23807CB28(v7);
    v37 = v14;
    sub_2380704A0();
    v15 = sub_23815438C();
    v17 = v16;
    v19 = v18;
    v20 = *(v1 + *(type metadata accessor for _DDNodeView(0) + 24));
    v34 = v4;
    v35 = v3;
    v32 = v1;
    v33 = v6;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        sub_23815428C();
        goto LABEL_9;
      }

      if (v20 != 3)
      {
        sub_2381542BC();
        goto LABEL_9;
      }
    }

    sub_2381542AC();
LABEL_9:
    v21 = sub_23815435C();
    v23 = v22;
    v25 = v24;

    sub_238070490(v15, v17, v19 & 1);

    sub_23815463C();
    v8 = sub_23815431C();
    v9 = v26;
    v28 = v27;
    v11 = v29;

    sub_238070490(v21, v23, v25 & 1);

    v30 = v33;
    sub_238068568(v33);
    v31 = sub_2381539FC();
    (*(v34 + 8))(v30, v35);
    v13 = (v31 & 1) == 0;
    result = swift_getKeyPath();
    v10 = v28 & 1;
    goto LABEL_10;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = 0;
  v13 = 0;
LABEL_10:
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = result;
  *(a1 + 40) = v13;
  return result;
}

uint64_t sub_23806B1D8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4F0, &qword_238157BA0);
  MEMORY[0x28223BE20](v42);
  v44 = &v35 - v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4F8, &qword_238157BA8);
  MEMORY[0x28223BE20](v43);
  v36 = &v35 - v3;
  v4 = sub_238152F3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA500, &qword_238157BB0);
  MEMORY[0x28223BE20](v40);
  v41 = &v35 - v8;
  v39 = sub_2380AFAC8();
  LODWORD(v9) = sub_2380AFAC8();
  if (v9 == 107)
  {
    v9 = 1;
  }

  else
  {
    v9 = v9;
  }

  *&v51 = sub_23807CB28(v9);
  *(&v51 + 1) = v10;
  sub_2380704A0();
  v11 = sub_23815438C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_238152F1C();
  v18 = sub_238152EEC();
  v19 = *(v5 + 8);
  v19(v7, v4);
  if (v18 & 1) != 0 || (sub_238152F2C(), v20 = sub_238152EEC(), v19(v7, v4), (v20) || (sub_238152F0C(), v21 = sub_238152EEC(), v19(v7, v4), (v21))
  {
    *&v46 = v11;
    *(&v46 + 1) = v13;
    *&v47 = v15 & 1;
    *(&v47 + 1) = v17;
    LOWORD(v48) = 256;
  }

  else
  {
    v34 = sub_2381540FC();
    *&v46 = v11;
    *(&v46 + 1) = v13;
    *&v47 = v15 & 1;
    *(&v47 + 1) = v17;
    LOWORD(v48) = v34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA508, &qword_238157BB8);
  sub_2380704F4();
  sub_238153ECC();
  v38 = v52;
  v37 = v51;
  v22 = v53;
  v23 = BYTE1(v53);
  v24 = *(v1 + *(type metadata accessor for _DDNodeView(0) + 24));
  v25 = v41;
  if (v24 <= 1)
  {
    goto LABEL_11;
  }

  if (v24 == 2)
  {
    v26 = sub_23815428C();
  }

  else
  {
    if (v24 == 3)
    {
LABEL_11:
      v26 = sub_2381542AC();
      goto LABEL_14;
    }

    v26 = sub_2381542BC();
  }

LABEL_14:
  v27 = v26;
  KeyPath = swift_getKeyPath();
  v56 = v23;
  v29 = sub_2380AFDEC();
  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v57 = 0;
  v47 = v38;
  v46 = v37;
  LOBYTE(v48) = v22;
  BYTE1(v48) = v23;
  *(&v48 + 1) = KeyPath;
  *&v49 = v27;
  *(&v49 + 1) = v30;
  *v50 = v29;
  *&v50[8] = v31;
  *&v50[16] = 1;
  v50[24] = 0;
  *&v50[25] = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA528, &qword_238157C58);
  sub_2380705C4();
  sub_2381544AC();
  v53 = v48;
  v54 = v49;
  *v55 = *v50;
  *&v55[11] = *&v50[11];
  v51 = v46;
  v52 = v47;
  sub_238071284(&v51, &qword_27DEEA528, &qword_238157C58);
  if (v39 == 107)
  {
    v32 = v36;
    sub_2380712E4(v25, v36, &qword_27DEEA500, &qword_238157BB0);
    sub_2380712E4(v32, v44, &qword_27DEEA4F8, &qword_238157BA8);
    swift_storeEnumTagMultiPayload();
    sub_238070904();
    sub_23806F5D4(&qword_27DEEA5A0, &qword_27DEEA500, &qword_238157BB0, sub_2380705C4);
    sub_238153ECC();
    sub_238071284(v32, &qword_27DEEA4F8, &qword_238157BA8);
  }

  else
  {
    sub_2380712E4(v25, v44, &qword_27DEEA500, &qword_238157BB0);
    swift_storeEnumTagMultiPayload();
    sub_238070904();
    sub_23806F5D4(&qword_27DEEA5A0, &qword_27DEEA500, &qword_238157BB0, sub_2380705C4);
    sub_238153ECC();
  }

  return sub_238071284(v25, &qword_27DEEA500, &qword_238157BB0);
}

uint64_t sub_23806B830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v39 = a4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA438, &qword_238157A90);
  MEMORY[0x28223BE20](v38);
  v7 = &v33 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4A0, &qword_238157B20);
  MEMORY[0x28223BE20](v36);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA428, &qword_238157A88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA418, &qword_238157A80);
  v13 = MEMORY[0x28223BE20](v37);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = sub_238153A0C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238068568(v21);
  v22 = sub_2381539FC();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    *v12 = sub_238153D1C();
    *(v12 + 1) = 0x402A000000000000;
    v12[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4B0, &qword_238157B30);
    sub_23806BCE0(v33, v34, v35, &v12[*(v23 + 44)]);
    sub_2381548DC();
    sub_238153A8C();
    sub_23807121C(v12, v15, &qword_27DEEA428, &qword_238157A88);
    v24 = &v15[*(v37 + 36)];
    v25 = v45;
    *(v24 + 4) = v44;
    *(v24 + 5) = v25;
    *(v24 + 6) = v46;
    v26 = v41;
    *v24 = v40;
    *(v24 + 1) = v26;
    v27 = v43;
    *(v24 + 2) = v42;
    *(v24 + 3) = v27;
    sub_23807121C(v15, v17, &qword_27DEEA418, &qword_238157A80);
    sub_2380712E4(v17, v9, &qword_27DEEA418, &qword_238157A80);
    swift_storeEnumTagMultiPayload();
    sub_23806FBBC();
    sub_2380711D4(&qword_27DEEA430, &qword_27DEEA438, &qword_238157A90, MEMORY[0x277CE1198]);
    sub_238153ECC();
    v28 = v17;
    v29 = &qword_27DEEA418;
    v30 = &qword_238157A80;
  }

  else
  {
    *v7 = sub_238153DEC();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4A8, &qword_238157B28);
    sub_23806C20C(v5, v33, v34, v35, &v7[*(v31 + 44)]);
    sub_2380712E4(v7, v9, &qword_27DEEA438, &qword_238157A90);
    swift_storeEnumTagMultiPayload();
    sub_23806FBBC();
    sub_2380711D4(&qword_27DEEA430, &qword_27DEEA438, &qword_238157A90, MEMORY[0x277CE1198]);
    sub_238153ECC();
    v28 = v7;
    v29 = &qword_27DEEA438;
    v30 = &qword_238157A90;
  }

  return sub_238071284(v28, v29, v30);
}

uint64_t sub_23806BCE0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4B8, &qword_238157B38);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4C0, &qword_238157B40);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  sub_238068AD4(a2);
  *v13 = sub_238153DFC();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4C8, &qword_238157B48);
  sub_23806BF40(v29, v30, &v13[*(v20 + 44)]);
  v21 = sub_23815415C();
  sub_23815377C();
  v22 = &v13[*(v8 + 44)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  sub_2380712E4(v19, v17, &qword_27DEEA4C0, &qword_238157B40);
  sub_2380712E4(v13, v11, &qword_27DEEA4B8, &qword_238157B38);
  sub_2380712E4(v17, a5, &qword_27DEEA4C0, &qword_238157B40);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4D0, &qword_238157B50);
  sub_2380712E4(v11, a5 + *(v27 + 48), &qword_27DEEA4B8, &qword_238157B38);
  sub_238071284(v13, &qword_27DEEA4B8, &qword_238157B38);
  sub_238071284(v19, &qword_27DEEA4C0, &qword_238157B40);
  sub_238071284(v11, &qword_27DEEA4B8, &qword_238157B38);
  return sub_238071284(v17, &qword_27DEEA4C0, &qword_238157B40);
}

uint64_t sub_23806BF40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4D8, &qword_238157B58);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4E0, &qword_238157B60);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  sub_23806A458(a1, a2, &v32 - v16);
  KeyPath = swift_getKeyPath();
  v19 = &v17[*(v12 + 44)];
  *v19 = KeyPath;
  v19[8] = 0;
  v33 = v10;
  sub_23806B1D8(v10);
  sub_23806AF84(v38);
  v20 = v38[0];
  v21 = v38[2];
  v22 = v38[3];
  v34 = v38[4];
  v35 = v38[1];
  v23 = v39;
  v36 = v15;
  sub_2380712E4(v17, v15, &qword_27DEEA4E0, &qword_238157B60);
  sub_2380712E4(v10, v8, &qword_27DEEA4D8, &qword_238157B58);
  v24 = v15;
  v25 = v37;
  sub_2380712E4(v24, v37, &qword_27DEEA4E0, &qword_238157B60);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4E8, &qword_238157B98);
  sub_2380712E4(v8, v25 + *(v26 + 48), &qword_27DEEA4D8, &qword_238157B58);
  v27 = v25 + *(v26 + 64);
  v28 = v34;
  v29 = v35;
  *v27 = v20;
  *(v27 + 8) = v29;
  *(v27 + 16) = v21;
  *(v27 + 24) = v22;
  *(v27 + 32) = v28;
  *(v27 + 40) = v23;
  sub_2380703E0(v20, v29, v21, v22, v28);
  sub_238071284(v33, &qword_27DEEA4D8, &qword_238157B58);
  sub_238071284(v17, &qword_27DEEA4E0, &qword_238157B60);
  sub_238070440(v20, v29, v21, v22, v28, v30);
  sub_238071284(v8, &qword_27DEEA4D8, &qword_238157B58);
  return sub_238071284(v36, &qword_27DEEA4E0, &qword_238157B60);
}

uint64_t sub_23806C20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a3;
  v60 = a4;
  v67 = a5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6B0, &qword_238157D70);
  MEMORY[0x28223BE20](v66);
  v57 = (&v56 - v7);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6B8, &qword_238157D78);
  MEMORY[0x28223BE20](v58);
  v64 = &v56 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6C0, &qword_238157D80);
  MEMORY[0x28223BE20](v62);
  v10 = (&v56 - v9);
  v11 = sub_238152F3C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6C8, &qword_238157D88);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v65 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v56 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4C0, &qword_238157B40);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6D0, &qword_238157D90);
  v23 = v22 - 8;
  v24 = MEMORY[0x28223BE20](v22);
  v61 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v56 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v56 - v29;
  v31 = a2;
  v32 = a1;
  sub_238068AD4(v31);
  LOBYTE(a1) = sub_23815411C();
  type metadata accessor for _DDNodeView(0);
  sub_23815377C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_23807121C(v21, v28, &qword_27DEEA4C0, &qword_238157B40);
  v41 = &v28[*(v23 + 44)];
  *v41 = a1;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_23807121C(v28, v30, &qword_27DEEA6D0, &qword_238157D90);
  sub_238152F2C();
  LOBYTE(a1) = sub_238152EEC();
  (*(v12 + 8))(v14, v11);
  if (a1)
  {
    *v10 = sub_2381548CC();
    v10[1] = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6F8, &qword_238157DA8);
    sub_23806C8C0(v32, v59, v60, v10 + *(v43 + 44));
    sub_2380712E4(v10, v64, &qword_27DEEA6C0, &qword_238157D80);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEEA6E0, &qword_27DEEA6C0, &qword_238157D80, MEMORY[0x277CE11A8]);
    sub_2380711D4(&qword_27DEEA6E8, &qword_27DEEA6B0, &qword_238157D70, MEMORY[0x277CE1198]);
    v44 = v63;
    sub_238153ECC();
    v45 = v10;
    v46 = &qword_27DEEA6C0;
    v47 = &qword_238157D80;
  }

  else
  {
    v48 = sub_238153DEC();
    v49 = v57;
    *v57 = v48;
    *(v49 + 8) = 0;
    *(v49 + 16) = 1;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6D8, &qword_238157D98);
    sub_23806D3C4(v32, v59, v60, v49 + *(v50 + 44));
    sub_2380712E4(v49, v64, &qword_27DEEA6B0, &qword_238157D70);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEEA6E0, &qword_27DEEA6C0, &qword_238157D80, MEMORY[0x277CE11A8]);
    sub_2380711D4(&qword_27DEEA6E8, &qword_27DEEA6B0, &qword_238157D70, MEMORY[0x277CE1198]);
    v44 = v63;
    sub_238153ECC();
    v45 = v49;
    v46 = &qword_27DEEA6B0;
    v47 = &qword_238157D70;
  }

  sub_238071284(v45, v46, v47);
  v51 = v61;
  sub_2380712E4(v30, v61, &qword_27DEEA6D0, &qword_238157D90);
  v52 = v65;
  sub_2380712E4(v44, v65, &qword_27DEEA6C8, &qword_238157D88);
  v53 = v67;
  sub_2380712E4(v51, v67, &qword_27DEEA6D0, &qword_238157D90);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6F0, &qword_238157DA0);
  sub_2380712E4(v52, v53 + *(v54 + 48), &qword_27DEEA6C8, &qword_238157D88);
  sub_238071284(v44, &qword_27DEEA6C8, &qword_238157D88);
  sub_238071284(v30, &qword_27DEEA6D0, &qword_238157D90);
  sub_238071284(v52, &qword_27DEEA6C8, &qword_238157D88);
  return sub_238071284(v51, &qword_27DEEA6D0, &qword_238157D90);
}

uint64_t sub_23806C8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4D8, &qword_238157B58);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA700, &qword_238157DB0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA708, &qword_238157DB8);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  MEMORY[0x28223BE20](v18);
  v43 = &v43 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA710, &qword_238157DC0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = (&v43 - v26);
  *v27 = sub_2381548BC();
  v27[1] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA718, &qword_238157DC8);
  sub_23806CD68(a1, a2, a3, (v27 + *(v29 + 44)));
  sub_23806B1D8(v9);
  type metadata accessor for _DDNodeView(0);
  sub_2381548DC();
  sub_238153A8C();
  sub_23807121C(v9, v13, &qword_27DEEA4D8, &qword_238157B58);
  v30 = &v13[*(v11 + 44)];
  v31 = v51;
  *(v30 + 4) = v50;
  *(v30 + 5) = v31;
  *(v30 + 6) = v52;
  v32 = v47;
  *v30 = v46;
  *(v30 + 1) = v32;
  v33 = v49;
  *(v30 + 2) = v48;
  *(v30 + 3) = v33;
  sub_2381548DC();
  sub_238153A8C();
  sub_23807121C(v13, v20, &qword_27DEEA700, &qword_238157DB0);
  v34 = &v20[*(v15 + 44)];
  v35 = v58;
  *(v34 + 4) = v57;
  *(v34 + 5) = v35;
  *(v34 + 6) = v59;
  v36 = v54;
  *v34 = v53;
  *(v34 + 1) = v36;
  v37 = v56;
  *(v34 + 2) = v55;
  *(v34 + 3) = v37;
  v38 = v43;
  sub_23807121C(v20, v43, &qword_27DEEA708, &qword_238157DB8);
  sub_2380712E4(v27, v25, &qword_27DEEA710, &qword_238157DC0);
  v39 = v44;
  sub_2380712E4(v38, v44, &qword_27DEEA708, &qword_238157DB8);
  v40 = v45;
  sub_2380712E4(v25, v45, &qword_27DEEA710, &qword_238157DC0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA720, &qword_238157DD0);
  sub_2380712E4(v39, v40 + *(v41 + 48), &qword_27DEEA708, &qword_238157DB8);
  sub_238071284(v38, &qword_27DEEA708, &qword_238157DB8);
  sub_238071284(v27, &qword_27DEEA710, &qword_238157DC0);
  sub_238071284(v39, &qword_27DEEA708, &qword_238157DB8);
  return sub_238071284(v25, &qword_27DEEA710, &qword_238157DC0);
}

uint64_t sub_23806CD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v68 = a2;
  v69 = a3;
  v59 = a1;
  v73 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA728, &qword_238157DD8);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v57 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA730, &qword_238157DE0) - 8;
  MEMORY[0x28223BE20](v67);
  v66 = &v57 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA738, &qword_238157DE8) - 8;
  v8 = MEMORY[0x28223BE20](v71);
  v72 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v74 = &v57 - v12;
  sub_238153D8C();
  v13 = sub_23815436C();
  v15 = v14;
  v17 = v16;
  v58 = *(a1 + *(type metadata accessor for _DDNodeView(0) + 24));
  sub_238068180(v58);
  v18 = sub_23815435C();
  v20 = v19;
  v22 = v21;

  sub_238070490(v13, v15, v17 & 1);

  sub_23815461C();
  v23 = sub_23815431C();
  v63 = v24;
  v64 = v23;
  v26 = v25;
  v62 = v27;

  sub_238070490(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  sub_2381548DC();
  sub_238153A8C();
  v60 = v26 & 1;
  v95 = v26 & 1;
  v94 = 0;
  *&v93[55] = v99;
  *&v93[71] = v100;
  *&v93[87] = v101;
  *&v93[103] = v102;
  *&v93[7] = v96;
  *&v93[23] = v97;
  *&v93[39] = v98;
  v28 = v65;
  sub_23806A458(v68, v69, v65);
  sub_2381548DC();
  sub_238153A8C();
  v29 = v28;
  v30 = v66;
  sub_23807121C(v29, v66, &qword_27DEEA728, &qword_238157DD8);
  v31 = (v30 + *(v67 + 44));
  v32 = v108;
  v31[4] = v107;
  v31[5] = v32;
  v31[6] = v109;
  v33 = v104;
  *v31 = v103;
  v31[1] = v33;
  v34 = v106;
  v31[2] = v105;
  v31[3] = v34;
  sub_2381548DC();
  sub_238153A8C();
  v35 = v70;
  sub_23807121C(v30, v70, &qword_27DEEA730, &qword_238157DE0);
  v36 = (v35 + *(v71 + 44));
  v37 = v110[5];
  v36[4] = v110[4];
  v36[5] = v37;
  v36[6] = v110[6];
  v38 = v110[1];
  *v36 = v110[0];
  v36[1] = v38;
  v39 = v110[3];
  v36[2] = v110[2];
  v36[3] = v39;
  v40 = v35;
  v41 = v74;
  sub_23807121C(v40, v74, &qword_27DEEA738, &qword_238157DE8);
  v42 = v72;
  sub_2380712E4(v41, v72, &qword_27DEEA738, &qword_238157DE8);
  v43 = v63;
  v44 = v64;
  *&v75 = v64;
  *(&v75 + 1) = v63;
  v45 = v60;
  LOBYTE(v76) = v60;
  v47 = KeyPath;
  v46 = v62;
  *(&v76 + 1) = v62;
  *&v77 = KeyPath;
  *(&v77 + 1) = 2;
  LOBYTE(v78[0]) = 0;
  *(&v78[4] + 1) = *&v93[64];
  *(&v78[5] + 1) = *&v93[80];
  *(&v78[6] + 1) = *&v93[96];
  *(v78 + 1) = *v93;
  *(&v78[1] + 1) = *&v93[16];
  *(&v78[2] + 1) = *&v93[32];
  *(&v78[3] + 1) = *&v93[48];
  v78[7] = *&v93[111];
  v48 = v78[6];
  v49 = v73;
  v73[8] = v78[5];
  v49[9] = v48;
  v50 = v78[2];
  v49[4] = v78[1];
  v49[5] = v50;
  v51 = v78[4];
  v49[6] = v78[3];
  v49[7] = v51;
  v52 = v76;
  *v49 = v75;
  v49[1] = v52;
  v53 = v78[0];
  v49[2] = v77;
  v49[3] = v53;
  v49[10] = v78[7];
  v54 = v49;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA740, &qword_238157DF0);
  sub_2380712E4(v42, v54 + *(v55 + 48), &qword_27DEEA738, &qword_238157DE8);
  sub_2380712E4(&v75, v79, &qword_27DEEA748, &qword_238157DF8);
  sub_238071284(v74, &qword_27DEEA738, &qword_238157DE8);
  sub_238071284(v42, &qword_27DEEA738, &qword_238157DE8);
  v89 = *&v93[64];
  v90 = *&v93[80];
  *v91 = *&v93[96];
  v85 = *v93;
  v86 = *&v93[16];
  v87 = *&v93[32];
  v79[0] = v44;
  v79[1] = v43;
  v80 = v45;
  v81 = v46;
  v82 = v47;
  v83 = 2;
  v84 = 0;
  v88 = *&v93[48];
  *&v91[15] = *&v93[111];
  v92 = 0;
  return sub_238071284(v79, &qword_27DEEA748, &qword_238157DF8);
}

uint64_t sub_23806D3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4D8, &qword_238157B58);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v64 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA700, &qword_238157DB0) - 8;
  MEMORY[0x28223BE20](v68);
  v67 = &v64 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA708, &qword_238157DB8) - 8;
  v10 = MEMORY[0x28223BE20](v70);
  v74 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v69 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v72 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA728, &qword_238157DD8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA730, &qword_238157DE0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA738, &qword_238157DE8);
  v23 = v22 - 8;
  v24 = MEMORY[0x28223BE20](v22);
  v73 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v64 - v27;
  MEMORY[0x28223BE20](v26);
  v75 = &v64 - v29;
  sub_23806A458(a2, a3, v17);
  v64 = *(a1 + *(type metadata accessor for _DDNodeView(0) + 24));
  sub_2381548DC();
  sub_238153A8C();
  sub_23807121C(v17, v21, &qword_27DEEA728, &qword_238157DD8);
  v30 = &v21[*(v19 + 44)];
  v31 = *&v102[25];
  *(v30 + 4) = *&v102[23];
  *(v30 + 5) = v31;
  *(v30 + 6) = *&v102[27];
  v32 = *&v102[17];
  *v30 = *&v102[15];
  *(v30 + 1) = v32;
  v33 = *&v102[21];
  *(v30 + 2) = *&v102[19];
  *(v30 + 3) = v33;
  sub_2381548DC();
  sub_238153A8C();
  sub_23807121C(v21, v28, &qword_27DEEA730, &qword_238157DE0);
  v34 = &v28[*(v23 + 44)];
  v35 = *&v102[39];
  *(v34 + 4) = *&v102[37];
  *(v34 + 5) = v35;
  *(v34 + 6) = *&v102[41];
  v36 = *&v102[31];
  *v34 = *&v102[29];
  *(v34 + 1) = v36;
  v37 = *&v102[35];
  *(v34 + 2) = *&v102[33];
  *(v34 + 3) = v37;
  sub_23807121C(v28, v75, &qword_27DEEA738, &qword_238157DE8);
  v38 = v66;
  sub_23806B1D8(v66);
  sub_2381548DC();
  sub_238153A8C();
  v39 = v38;
  v40 = v67;
  sub_23807121C(v39, v67, &qword_27DEEA4D8, &qword_238157B58);
  v41 = (v40 + *(v68 + 44));
  v42 = *&v102[53];
  v41[4] = *&v102[51];
  v41[5] = v42;
  v41[6] = *&v102[55];
  v43 = *&v102[45];
  *v41 = *&v102[43];
  v41[1] = v43;
  v44 = *&v102[49];
  v41[2] = *&v102[47];
  v41[3] = v44;
  sub_2381548DC();
  sub_238153A8C();
  v45 = v40;
  v46 = v69;
  sub_23807121C(v45, v69, &qword_27DEEA700, &qword_238157DB0);
  v47 = (v46 + *(v70 + 44));
  v48 = *&v102[67];
  v47[4] = *&v102[65];
  v47[5] = v48;
  v47[6] = *&v102[69];
  v49 = *&v102[59];
  *v47 = *&v102[57];
  v47[1] = v49;
  v50 = *&v102[63];
  v47[2] = *&v102[61];
  v47[3] = v50;
  v51 = v72;
  sub_23807121C(v46, v72, &qword_27DEEA708, &qword_238157DB8);
  sub_23806AF84(v100);
  v69 = v100[1];
  v70 = v100[0];
  v67 = v100[3];
  v68 = v100[2];
  v66 = v100[4];
  v65 = v101;
  if (v64 <= 1)
  {
    if (v64)
    {
      v52 = v71;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v64 == 2)
  {
LABEL_5:
    v52 = v71;
    goto LABEL_7;
  }

  v52 = v71;
LABEL_7:
  sub_2381548DC();
  sub_238153A8C();
  *(v102 + 7) = *&v102[71];
  *(&v102[2] + 7) = *&v102[73];
  *(&v102[4] + 7) = *&v102[75];
  *(&v102[6] + 7) = *&v102[77];
  *(&v102[12] + 7) = v103;
  *(&v102[10] + 7) = *&v102[81];
  *(&v102[8] + 7) = *&v102[79];
  v95 = *&v102[4];
  v96 = *&v102[6];
  v93 = *v102;
  v94 = *&v102[2];
  *&v99[15] = *(&v103 + 1);
  v98 = *&v102[10];
  *v99 = *&v102[12];
  v97 = *&v102[8];
  sub_2381548DC();
  sub_238153A8C();
  v53 = v73;
  sub_2380712E4(v75, v73, &qword_27DEEA738, &qword_238157DE8);
  v54 = v74;
  sub_2380712E4(v51, v74, &qword_27DEEA708, &qword_238157DB8);
  sub_2380712E4(v53, v52, &qword_27DEEA738, &qword_238157DE8);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA750, &qword_238157E00);
  sub_2380712E4(v54, v52 + *(v55 + 48), &qword_27DEEA708, &qword_238157DB8);
  v56 = *(v55 + 64);
  *(&v83[6] + 9) = v97;
  *(&v83[7] + 9) = v98;
  *(&v83[8] + 9) = *v99;
  *(&v83[3] + 9) = v94;
  *(&v83[4] + 9) = v95;
  v58 = v69;
  v57 = v70;
  *&v83[0] = v70;
  *(&v83[0] + 1) = v69;
  v60 = v67;
  v59 = v68;
  *&v83[1] = v68;
  *(&v83[1] + 1) = v67;
  v61 = v66;
  *&v83[2] = v66;
  v62 = v65;
  BYTE8(v83[2]) = v65;
  *(&v83[9] + 1) = *&v99[15];
  *(&v83[5] + 9) = v96;
  *(&v83[2] + 9) = v93;
  v83[14] = v80;
  v83[15] = v81;
  v83[16] = v82;
  v83[10] = v76;
  v83[11] = v77;
  v83[12] = v78;
  v83[13] = v79;
  memcpy((v52 + v56), v83, 0x110uLL);
  sub_2380712E4(v83, v84, &qword_27DEEA758, &qword_238157E08);
  sub_238071284(v72, &qword_27DEEA708, &qword_238157DB8);
  sub_238071284(v75, &qword_27DEEA738, &qword_238157DE8);
  v84[0] = v57;
  v84[1] = v58;
  v84[2] = v59;
  v84[3] = v60;
  v84[4] = v61;
  v85 = v62;
  v90 = v97;
  v91 = v98;
  *v92 = *v99;
  *&v92[15] = *&v99[15];
  v86 = v93;
  v87 = v94;
  v88 = v95;
  v89 = v96;
  *&v92[87] = v80;
  *&v92[103] = v81;
  *&v92[119] = v82;
  *&v92[23] = v76;
  *&v92[39] = v77;
  *&v92[55] = v78;
  *&v92[71] = v79;
  sub_238071284(v84, &qword_27DEEA758, &qword_238157E08);
  sub_238071284(v74, &qword_27DEEA708, &qword_238157DB8);
  return sub_238071284(v73, &qword_27DEEA738, &qword_238157DE8);
}

uint64_t sub_23806DD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v50 = a2;
  v3 = sub_238153A7C();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA488, &qword_238157B08);
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA490, &unk_238157B10);
  MEMORY[0x28223BE20](v48);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3F8, &qword_238157A70);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = *(v4 + 28);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_238153DDC();
  (*(*(v17 - 8) + 104))(&v6[v15], v16, v17);
  __asm { FMOV            V0.2D, #8.0 }

  *v6 = _Q0;
  v23 = (v2 + *(type metadata accessor for _DDNodeView(0) + 40));
  v24 = *v23;
  v25 = *(v23 + 1);
  v52 = *v23;
  v53 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815470C();
  if (v51 == 1)
  {
    v26 = [objc_opt_self() secondarySystemFillColor];
    v27 = sub_23815465C();
  }

  else
  {
    v27 = sub_2381545EC();
  }

  v28 = v27;
  sub_238070370(v6, v9, MEMORY[0x277CDFC08]);
  *&v9[*(v7 + 52)] = v28;
  *&v9[*(v7 + 56)] = 256;
  LOBYTE(v28) = sub_2381540FC();
  sub_23815377C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_23807121C(v9, v11, &qword_27DEEA488, &qword_238157B08);
  v37 = &v11[*(v48 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_2381548DC();
  v40 = v39;
  v41 = &v14[*(v12 + 36)];
  sub_23807121C(v11, v41, &qword_27DEEA490, &unk_238157B10);
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA448, &qword_238157A98) + 36));
  *v42 = v38;
  v42[1] = v40;
  sub_2380712E4(v49, v14, &qword_27DEEA408, &qword_238157A78);
  v43 = sub_23815496C();
  v52 = v24;
  v53 = v25;
  sub_23815470C();
  v44 = v51;
  v45 = v50;
  sub_23807121C(v14, v50, &qword_27DEEA3F8, &qword_238157A70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3E8, &qword_238157A68);
  v47 = v45 + *(result + 36);
  *v47 = v43;
  *(v47 + 8) = v44;
  return result;
}

uint64_t sub_23806E12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v94 = a2;
  v95 = a3;
  v93 = a1;
  v100 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA408, &qword_238157A78);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v71 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3E8, &qword_238157A68);
  MEMORY[0x28223BE20](v99);
  v73 = &v71 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA458, &qword_238157AA8);
  MEMORY[0x28223BE20](v90);
  v92 = &v71 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3B0, &qword_238157A50);
  MEMORY[0x28223BE20](v91);
  v74 = &v71 - v10;
  v79 = sub_238152F3C();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_238153A6C();
  v77 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _DDNodeView(0);
  v75 = *(v15 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x28223BE20](v15);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3B8, &qword_238157A58);
  v76 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v18 = &v71 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA460, &unk_238157AB0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v101 = &v71 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3A0, &qword_238157A48);
  v20 = MEMORY[0x28223BE20](v86);
  v81 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v83 = &v71 - v22;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA390, &qword_238157A40);
  v23 = MEMORY[0x28223BE20](v96);
  v88 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v82 = &v71 - v26;
  MEMORY[0x28223BE20](v25);
  v87 = &v71 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA378, &qword_238157A38);
  MEMORY[0x28223BE20](v98);
  v97 = &v71 - v28;
  v29 = type metadata accessor for _DDNodeDecorationCombination(0);
  MEMORY[0x28223BE20](v29);
  v31 = (&v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v5 + *(type metadata accessor for _DDNodeViewModel(0) + 24));
  v33 = *(v32 + 16);
  if (v33 == 1)
  {
    v34 = *(type metadata accessor for _DDNodeDecoration(0) - 8);
    sub_238070308(v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v31, type metadata accessor for _DDNodeDecoration);
  }

  else if (v33)
  {
    *v31 = v32;
    swift_storeEnumTagMultiPayload();

    goto LABEL_7;
  }

  swift_storeEnumTagMultiPayload();
LABEL_7:
  v35 = sub_238067C2C();
  sub_238071150(v31, type metadata accessor for _DDNodeDecorationCombination);
  if (*(v5 + *(v15 + 24)) == 2 && (v35 > 0xFFu) | (v35 ^ 1) & 1 && *(v5 + *(v15 + 28)) != 1)
  {
    v66 = v72;
    sub_23806B830(v93, v94, v95, v72);
    v67 = v73;
    sub_23806DD54(v66, v73);
    sub_238071284(v66, &qword_27DEEA408, &qword_238157A78);
    v68 = sub_23806F5A4();
    v69 = sub_23806F994();
    v62 = v97;
    sub_238134E18(v67, v96, v99, v68, v69);
    v64 = &qword_27DEEA3E8;
    v65 = &qword_238157A68;
    v63 = v67;
  }

  else
  {
    sub_238070308(v5, &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDNodeView);
    v36 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v37 = swift_allocObject();
    v38 = sub_238070370(&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for _DDNodeView);
    MEMORY[0x28223BE20](v38);
    v39 = v93;
    v40 = v94;
    *(&v71 - 4) = v5;
    *(&v71 - 3) = v39;
    v41 = v95;
    *(&v71 - 2) = v40;
    *(&v71 - 1) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA478, &qword_238157AD0);
    sub_238070150(&qword_27DEEA480, &qword_27DEEA478, &qword_238157AD0, sub_23806FB04);
    sub_23815474C();
    sub_238153A5C();
    v42 = sub_2380711D4(&qword_27DEEA3C0, &qword_27DEEA3B8, &qword_238157A58, MEMORY[0x277CDF028]);
    v43 = sub_23806F94C(&qword_27DEEA3C8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v44 = v101;
    v45 = v80;
    v46 = v89;
    sub_2381543DC();
    v47 = v14;
    v48 = v45;
    (*(v77 + 8))(v47, v46);
    (*(v76 + 8))(v18, v45);
    sub_238152F2C();
    LOBYTE(v45) = sub_238152EEC();
    (*(v78 + 8))(v12, v79);
    if (v45)
    {
      v49 = v74;
      v50 = &v74[*(v91 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3D8, &qword_238157A60);
      sub_238153A9C();
      *v50 = swift_getKeyPath();
      v51 = v84;
      v52 = v85;
      (*(v84 + 16))(v49, v101, v85);
      sub_2380712E4(v49, v92, &qword_27DEEA3B0, &qword_238157A50);
      swift_storeEnumTagMultiPayload();
      sub_23806F7D4();
      v102 = v48;
      v103 = v46;
      v104 = v42;
      v105 = v43;
      swift_getOpaqueTypeConformance2();
      v53 = v81;
      v44 = v101;
      v54 = v51;
      sub_238153ECC();
      sub_238071284(v49, &qword_27DEEA3B0, &qword_238157A50);
    }

    else
    {
      v54 = v84;
      v52 = v85;
      (*(v84 + 16))(v92, v44, v85);
      swift_storeEnumTagMultiPayload();
      sub_23806F7D4();
      v102 = v48;
      v103 = v46;
      v104 = v42;
      v105 = v43;
      swift_getOpaqueTypeConformance2();
      v53 = v81;
      sub_238153ECC();
    }

    (*(v54 + 8))(v44, v52);
    sub_23806F688();
    v55 = v83;
    sub_2381507A4();
    sub_238071284(v53, &qword_27DEEA3A0, &qword_238157A48);
    v56 = v82;
    sub_2381544AC();
    sub_238071284(v55, &qword_27DEEA3A0, &qword_238157A48);
    v57 = sub_23806F5A4();
    v58 = v87;
    v59 = v96;
    sub_2381507A4();
    sub_238071284(v56, &qword_27DEEA390, &qword_238157A40);
    v60 = v88;
    sub_2381507A4();
    v61 = sub_23806F994();
    v62 = v97;
    sub_238134D20(v60, v59, v99, v57, v61);
    sub_238071284(v60, &qword_27DEEA390, &qword_238157A40);
    v63 = v58;
    v64 = &qword_27DEEA390;
    v65 = &qword_238157A40;
  }

  sub_238071284(v63, v64, v65);
  sub_238070150(&qword_27DEEA380, &qword_27DEEA378, &qword_238157A38, sub_23806F5A4);
  sub_2381507A4();
  return sub_238071284(v62, &qword_27DEEA378, &qword_238157A38);
}

double sub_23806EE84(uint64_t a1)
{
  v2 = type metadata accessor for _DDNodeView(0);
  if (*(a1 + v2[6]) == 2 && *(a1 + v2[7]) != 1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
    sub_23815470C();
    sub_23815471C();
  }

  else
  {
    (*(a1 + v2[5]))(MEMORY[0x277D84F90]);
  }

  return result;
}

uint64_t sub_23806EF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3E8, &qword_238157A68);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA760, &unk_238157E10);
  MEMORY[0x28223BE20](v12);
  v14 = v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA408, &qword_238157A78);
  MEMORY[0x28223BE20](v15);
  v17 = v23 - v16;
  v18 = type metadata accessor for _DDNodeView(0);
  if (*(a1 + *(v18 + 24)) == 2 && *(a1 + *(v18 + 28)) != 1)
  {
    sub_23806B830(a2, a3, a4, v17);
    sub_23806DD54(v17, v11);
    sub_238071284(v17, &qword_27DEEA408, &qword_238157A78);
    sub_2380712E4(v11, v14, &qword_27DEEA3E8, &qword_238157A68);
    swift_storeEnumTagMultiPayload();
    sub_23806FB04();
    sub_23806F994();
    sub_238153ECC();
    v19 = v11;
    v20 = &qword_27DEEA3E8;
    v21 = &qword_238157A68;
  }

  else
  {
    sub_23806B830(a2, a3, a4, v17);
    sub_2380712E4(v17, v14, &qword_27DEEA408, &qword_238157A78);
    swift_storeEnumTagMultiPayload();
    sub_23806FB04();
    sub_23806F994();
    sub_238153ECC();
    v19 = v17;
    v20 = &qword_27DEEA408;
    v21 = &qword_238157A78;
  }

  return sub_238071284(v19, v20, v21);
}

uint64_t sub_23806F210@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA378, &qword_238157A38);
  v1 = MEMORY[0x28223BE20](v26);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v25 = &v24 - v3;
  v4 = sub_2381537EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238153A2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238068770();
  sub_238068360(v11);
  sub_2380688CC(v7);
  v13 = sub_2380B0104(v11, v7, v12);
  v15 = v14;
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  if (v13)
  {

    v18 = v15;
    v19 = v17;
    v20 = v13;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v20 = sub_23815466C();
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  v21 = v24;
  sub_23806E12C(v20, v18, v19, v24);
  sub_23806F564(v13, v15, v17);

  sub_238070150(&qword_27DEEA380, &qword_27DEEA378, &qword_238157A38, sub_23806F5A4);
  v22 = v25;
  sub_2381507A4();
  sub_238071284(v21, &qword_27DEEA378, &qword_238157A38);
  sub_2381507A4();
  return sub_238071284(v22, &qword_27DEEA378, &qword_238157A38);
}

uint64_t sub_23806F564(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23806F5D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = sub_23806F94C(&qword_27DEEAC80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23806F688()
{
  result = qword_27DEEA398;
  if (!qword_27DEEA398)
  {
    v5[12] = v0;
    v5[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA3A0, &qword_238157A48);
    v4 = sub_23806F7D4();
    v5[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA3B8, &qword_238157A58);
    v5[3] = sub_238153A6C();
    v5[4] = sub_2380711D4(&qword_27DEEA3C0, &qword_27DEEA3B8, &qword_238157A58, MEMORY[0x277CDF028]);
    v5[5] = sub_23806F94C(&qword_27DEEA3C8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v5[0] = v4;
    v5[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v5);
    atomic_store(result, &qword_27DEEA398);
  }

  return result;
}

unint64_t sub_23806F7D4()
{
  result = qword_27DEEA3A8;
  if (!qword_27DEEA3A8)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA3B0, &qword_238157A50);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA3B8, &qword_238157A58);
    v4[3] = sub_238153A6C();
    v4[4] = sub_2380711D4(&qword_27DEEA3C0, &qword_27DEEA3B8, &qword_238157A58, MEMORY[0x277CDF028]);
    v4[5] = sub_23806F94C(&qword_27DEEA3C8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_2380711D4(&qword_27DEEA3D0, &qword_27DEEA3D8, &qword_238157A60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA3A8);
  }

  return result;
}

uint64_t sub_23806F94C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23806F994()
{
  result = qword_27DEEA3E0;
  if (!qword_27DEEA3E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA3E8, &qword_238157A68);
    v4[0] = sub_23806FA4C();
    v4[1] = sub_2380711D4(&unk_27DEEAB50, &qword_27DEEA450, &qword_238157AA0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA3E0);
  }

  return result;
}

unint64_t sub_23806FA4C()
{
  result = qword_27DEEA3F0;
  if (!qword_27DEEA3F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA3F8, &qword_238157A70);
    v4[0] = sub_23806FB04();
    v4[1] = sub_2380711D4(&qword_27DEEA440, &qword_27DEEA448, &qword_238157A98, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA3F0);
  }

  return result;
}

unint64_t sub_23806FB04()
{
  result = qword_27DEEA400;
  if (!qword_27DEEA400)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA408, &qword_238157A78);
    v4[0] = sub_23806FBBC();
    v4[1] = sub_2380711D4(&qword_27DEEA430, &qword_27DEEA438, &qword_238157A90, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEA400);
  }

  return result;
}

unint64_t sub_23806FBBC()
{
  result = qword_27DEEA410;
  if (!qword_27DEEA410)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA418, &qword_238157A80);
    v4[0] = sub_2380711D4(&qword_27DEEA420, &qword_27DEEA428, &qword_238157A88, MEMORY[0x277CE1138]);
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA410);
  }

  return result;
}

uint64_t sub_23806FC94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23806FCCC()
{
  v1 = type metadata accessor for _DDNodeView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = sub_2381527EC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for _DDNodeViewModel(0);
  v7 = v0 + v3 + v6[5];
  sub_238070070(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));

  v8 = v6[7];
  v9 = sub_23815278C();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3 + v8, v9);
  v10(v0 + v3 + v6[8], v9);
  v11 = v6[9];
  v12 = sub_238152BAC();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);

  MEMORY[0x2383EA980](v0 + v3 + v1[8]);

  v13 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_238153A2C();
    (*(*(v14 - 8) + 8))(v4 + v13, v14);
  }

  else
  {
  }

  v15 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_238153A0C();
    (*(*(v16 - 8) + 8))(v4 + v15, v16);
  }

  else
  {
  }

  sub_2380700D8(*(v4 + v1[14]), *(v4 + v1[14] + 8));
  v17 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_2381537EC();
    (*(*(v18 - 8) + 8))(v4 + v17, v18);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v21, v2 | 7, v19);
}

void sub_238070070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 5)
  {

LABEL_4:

    return;
  }

  if (!a5)
  {

    goto LABEL_4;
  }
}

double sub_2380700D8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double sub_2380700E4()
{
  v1 = *(type metadata accessor for _DDNodeView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23806EE84(v2);
}

uint64_t sub_238070150(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = sub_23806F994();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2380701F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_238070308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238070370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2380703E0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_238070430(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_238070430(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_238070440(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a4)
  {
    sub_238070490(result, a2, a3 & 1);
  }

  return result;
}

void sub_238070490(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2380704A0()
{
  result = qword_27DEEA8A0;
  if (!qword_27DEEA8A0)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27DEEA8A0);
  }

  return result;
}

unint64_t sub_2380704F4()
{
  result = qword_27DEEA510;
  if (!qword_27DEEA510)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA508, &qword_238157BB8);
    v4 = sub_2380711D4(&qword_27DEEA518, &qword_27DEEA520, &qword_238157BC0, MEMORY[0x277CE0728]);
    v5[0] = MEMORY[0x277CE0BC8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27DEEA510);
  }

  return result;
}

unint64_t sub_2380705C4()
{
  result = qword_27DEEA530;
  if (!qword_27DEEA530)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA528, &qword_238157C58);
    v4[0] = sub_238070650();
    v4[1] = MEMORY[0x277CDFC48];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA530);
  }

  return result;
}

unint64_t sub_238070650()
{
  result = qword_27DEEA538;
  if (!qword_27DEEA538)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA540, &qword_238157C60);
    v4[0] = sub_238070708();
    v4[1] = sub_2380711D4(&qword_27DEEA588, &qword_27DEEA590, &qword_238157C90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA538);
  }

  return result;
}

unint64_t sub_238070708()
{
  result = qword_27DEEA548;
  if (!qword_27DEEA548)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA550, &qword_238157C68);
    v4[0] = sub_2380707C0();
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA548);
  }

  return result;
}

unint64_t sub_2380707C0()
{
  result = qword_27DEEA558;
  if (!qword_27DEEA558)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA560, &qword_238157C70);
    v4[0] = sub_238070878();
    v4[1] = sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA558);
  }

  return result;
}

unint64_t sub_238070878()
{
  result = qword_27DEEA568;
  if (!qword_27DEEA568)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA570, &qword_238157C78);
    v4[0] = sub_2380704F4();
    v4[1] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEA568);
  }

  return result;
}

unint64_t sub_238070904()
{
  result = qword_27DEEA598;
  if (!qword_27DEEA598)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA4F8, &qword_238157BA8);
    v4[0] = sub_23806F5D4(&qword_27DEEA5A0, &qword_27DEEA500, &qword_238157BB0, sub_2380705C4);
    v4[1] = sub_2380709BC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA598);
  }

  return result;
}

unint64_t sub_2380709BC()
{
  result = qword_27DEEA5A8;
  if (!qword_27DEEA5A8)
  {
    result = swift_getWitnessTable(MEMORY[0x277CDDA48], MEMORY[0x277CDDA60], v0, v1);
    atomic_store(result, &qword_27DEEA5A8);
  }

  return result;
}

unint64_t sub_238070A74()
{
  result = qword_27DEEA5F8;
  if (!qword_27DEEA5F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA5D0, &qword_238157CB8);
    v4[0] = sub_238070B2C();
    v4[1] = sub_2380711D4(&qword_27DEEA630, &qword_27DEEA5F0, &qword_238157CD8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA5F8);
  }

  return result;
}

unint64_t sub_238070B2C()
{
  result = qword_27DEEA600;
  if (!qword_27DEEA600)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA608, &qword_238157D10);
    v4[0] = sub_238070BE4();
    v4[1] = sub_2380711D4(&unk_27DEEAB30, &unk_27DEED150, &qword_238158400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA600);
  }

  return result;
}

unint64_t sub_238070BE4()
{
  result = qword_27DEEA610;
  if (!qword_27DEEA610)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA618, &qword_238157D18);
    v4[0] = sub_238070C9C();
    v4[1] = sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA610);
  }

  return result;
}

unint64_t sub_238070C9C()
{
  result = qword_27DEEA620;
  if (!qword_27DEEA620)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA628, &unk_238157D20);
    v4 = sub_2380711D4(&qword_27DEEA588, &qword_27DEEA590, &qword_238157C90, MEMORY[0x277CE0868]);
    v5[0] = MEMORY[0x277CE0BC8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27DEEA620);
  }

  return result;
}

unint64_t sub_238070D54()
{
  result = qword_27DEEA638;
  if (!qword_27DEEA638)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA5C8, &qword_238157CB0);
    v4[0] = sub_238070DE0();
    v4[1] = MEMORY[0x277CE03F0];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA638);
  }

  return result;
}

unint64_t sub_238070DE0()
{
  result = qword_27DEEA640;
  if (!qword_27DEEA640)
  {
    v7[10] = v0;
    v7[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA5E0, &qword_238157CC8);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA5D0, &qword_238157CB8);
    v5 = sub_238070A74();
    v6 = sub_2380704A0();
    v7[2] = v4;
    v7[3] = MEMORY[0x277D837D0];
    v7[4] = v5;
    v7[5] = v6;
    v7[0] = swift_getOpaqueTypeConformance2();
    v7[1] = sub_23806F94C(&qword_27DEEAC80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v7);
    atomic_store(result, &qword_27DEEA640);
  }

  return result;
}

unint64_t sub_238070EF4()
{
  result = qword_27DEEA648;
  if (!qword_27DEEA648)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA5B8, &qword_238157CA0);
    v4[0] = sub_238070F80();
    v4[1] = MEMORY[0x277CDFC48];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA648);
  }

  return result;
}

unint64_t sub_238070F80()
{
  result = qword_27DEEA650;
  if (!qword_27DEEA650)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA5E8, &qword_238157CD0);
    v4[0] = sub_238070D54();
    v4[1] = sub_238070DE0();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEA650);
  }

  return result;
}

unint64_t sub_23807100C()
{
  result = qword_27DEEA668;
  if (!qword_27DEEA668)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA660, &qword_238157D38);
    v4[0] = sub_238071098();
    v4[1] = MEMORY[0x277CDF760];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA668);
  }

  return result;
}

unint64_t sub_238071098()
{
  result = qword_27DEEA670;
  if (!qword_27DEEA670)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA678, &qword_238157D40);
    v4[0] = sub_2380711D4(&qword_27DEEA680, &qword_27DEEA688, &qword_238157D48, MEMORY[0x277CE11A8]);
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA670);
  }

  return result;
}

uint64_t sub_238071150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_2380711B0(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2380711D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23807121C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_238071284(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2380712E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_23807139C(uint64_t a1)
{
  sub_238071410();
  if (v1 <= 0x3F)
  {
    sub_238071458();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_238071410()
{
  if (!qword_27DEEA778)
  {
    v0 = type metadata accessor for _DDNodeDecoration(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEA778);
    }
  }
}

void sub_238071458()
{
  if (!qword_27DEEA780)
  {
    sub_2380714D0(0, &qword_27DEEA788, type metadata accessor for _DDNodeDecoration, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEA780);
    }
  }
}

void sub_2380714D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_238071578()
{
  v1 = sub_238153F1C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v46 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA848, &qword_2381580D0);
  v5 = MEMORY[0x28223BE20](v4);
  v54 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v43[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA850, &qword_2381580D8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v45 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v52 = &v43[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v53 = &v43[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v43[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v43[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v43[-v21];
  v51 = v0;
  sub_23814A2B0(&v43[-v21]);
  v23 = v2[13];
  v49 = *MEMORY[0x277CE0560];
  v48 = v23;
  v23(v20);
  v47 = v2[7];
  v47(v20, 0, 1, v1);
  v50 = v4;
  v24 = *(v4 + 48);
  sub_2380712E4(v22, v8, &qword_27DEEA850, &qword_2381580D8);
  sub_2380712E4(v20, &v8[v24], &qword_27DEEA850, &qword_2381580D8);
  v57 = v2;
  v25 = v2[6];
  if (v25(v8, 1, v1) == 1)
  {
    v55 = v25;
    sub_238071284(v20, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v22, &qword_27DEEA850, &qword_2381580D8);
    if (v55(&v8[v24], 1, v1) == 1)
    {
      sub_238071284(v8, &qword_27DEEA850, &qword_2381580D8);
      goto LABEL_8;
    }

LABEL_6:
    v27 = v8;
LABEL_14:
    sub_238071284(v27, &qword_27DEEA848, &qword_2381580D0);
    goto LABEL_15;
  }

  v26 = v56;
  sub_2380712E4(v8, v56, &qword_27DEEA850, &qword_2381580D8);
  if (v25(&v8[v24], 1, v1) == 1)
  {
    sub_238071284(v20, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v22, &qword_27DEEA850, &qword_2381580D8);
    (v57[1])(v26, v1);
    goto LABEL_6;
  }

  v55 = v25;
  v28 = &v8[v24];
  v29 = v46;
  (v57[4])(v46, v28, v1);
  sub_23807C874(&qword_27DEEA858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v44 = sub_238154C7C();
  v30 = v57[1];
  v30(v29, v1);
  sub_238071284(v20, &qword_27DEEA850, &qword_2381580D8);
  sub_238071284(v22, &qword_27DEEA850, &qword_2381580D8);
  v30(v56, v1);
  sub_238071284(v8, &qword_27DEEA850, &qword_2381580D8);
  if ((v44 & 1) == 0)
  {
LABEL_15:
    v36 = 0;
    return v36 & 1;
  }

LABEL_8:
  type metadata accessor for _DDDevicePickerEducationView(0);
  v31 = v53;
  sub_23814A2B0(v53);
  v32 = v52;
  v48(v52, v49, v1);
  v47(v32, 0, 1, v1);
  v33 = *(v50 + 48);
  v34 = v54;
  sub_2380712E4(v31, v54, &qword_27DEEA850, &qword_2381580D8);
  sub_2380712E4(v32, &v34[v33], &qword_27DEEA850, &qword_2381580D8);
  v35 = v55;
  if (v55(v34, 1, v1) != 1)
  {
    v37 = v45;
    sub_2380712E4(v34, v45, &qword_27DEEA850, &qword_2381580D8);
    if (v35(&v34[v33], 1, v1) != 1)
    {
      v39 = v32;
      v40 = v57;
      v41 = v46;
      (v57[4])(v46, &v34[v33], v1);
      sub_23807C874(&qword_27DEEA858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v36 = sub_238154C7C();
      v42 = v40[1];
      v42(v41, v1);
      sub_238071284(v39, &qword_27DEEA850, &qword_2381580D8);
      sub_238071284(v31, &qword_27DEEA850, &qword_2381580D8);
      v42(v37, v1);
      sub_238071284(v34, &qword_27DEEA850, &qword_2381580D8);
      return v36 & 1;
    }

    sub_238071284(v32, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v31, &qword_27DEEA850, &qword_2381580D8);
    (v57[1])(v37, v1);
    goto LABEL_13;
  }

  sub_238071284(v32, &qword_27DEEA850, &qword_2381580D8);
  sub_238071284(v31, &qword_27DEEA850, &qword_2381580D8);
  if (v35(&v34[v33], 1, v1) != 1)
  {
LABEL_13:
    v27 = v34;
    goto LABEL_14;
  }

  sub_238071284(v34, &qword_27DEEA850, &qword_2381580D8);
  v36 = 1;
  return v36 & 1;
}

uint64_t sub_238071D48()
{
  if (sub_238071578())
  {
    return 0;
  }

  sub_23807A3F8(0, &qword_27DEEA840, 0x277CBEBD0);
  v0 = MEMORY[0x2383E9740]();
  v1 = sub_23815338C();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = MEMORY[0x2383E9740]();
  v3 = sub_23815335C();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x2383E9740]();
  v5 = sub_23815336C();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _DDDevicePickerEducationView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v7;
}

uint64_t sub_238071E54()
{
  type metadata accessor for _DDDevicePickerEducationView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v19 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    sub_2380704A0();
    v7 = sub_23815438C();
    v9 = v8;
    v11 = v10;
    sub_23815421C();
    v12 = sub_2381542FC();
    v14 = v13;
    v16 = v15;
    sub_238070490(v7, v9, v11 & 1);

    sub_23815461C();
    v17 = sub_23815431C();
  }

  else
  {
    if ((sub_238071D48() & 1) == 0)
    {
      return 0;
    }

    sub_23807CB28(58);
    sub_2380704A0();
    v0 = sub_23815438C();
    v2 = v1;
    v4 = v3;
    sub_23815421C();
    v12 = sub_2381542FC();
    v14 = v5;
    v16 = v6;
    sub_238070490(v0, v2, v4 & 1);

    sub_238153F0C();
    v17 = sub_23815432C();
  }

  sub_238070490(v12, v14, v16 & 1);

  return v17;
}

uint64_t sub_23807211C()
{
  v1 = type metadata accessor for _DDDevicePickerEducationView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v3)
  {
    return 62;
  }

  if ((sub_238071D48() & 1) == 0)
  {
    return 60;
  }

  if (*(v0 + *(v1 + 48)))
  {
    return 59;
  }

  return 61;
}

double sub_2380721E4(uint64_t a1)
{
  type metadata accessor for _DDDevicePickerEducationView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v2 != 1)
  {
    return sub_238103568();
  }

  sub_238103664();
  return result;
}

void sub_238072284(uint64_t a2@<X8>)
{
  type metadata accessor for _DDDevicePickerEducationView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v27)
  {
    v4 = 0;
  }

  else
  {
    v4 = 56;
  }

  sub_23807CB28(v4);
  sub_2380704A0();
  v5 = sub_23815438C();
  v24 = v6;
  v25 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = sub_2381545BC();
  v13 = swift_getKeyPath();
  v14 = v8 & 1;
  v15 = sub_2381540FC();
  sub_23815377C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v25;
  *(a2 + 8) = v24;
  *(a2 + 16) = v14;
  *(a2 + 24) = v10;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v13;
  *(a2 + 56) = v12;
  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  *(a2 + 80) = v19;
  *(a2 + 88) = v21;
  *(a2 + 96) = v23;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = v26;
}

void sub_238072444(uint64_t a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = sub_2381537EC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  type metadata accessor for _DDDevicePickerEducationView(0);
  sub_23814A088(v9);
  (*(v4 + 104))(v7, *MEMORY[0x277CDF3C0], v3);
  v10 = sub_2381537DC();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
  if (v10)
  {
    v12 = &v31;
    if (qword_27DEEA0E0 != -1)
    {
      swift_once();
    }

    v13 = qword_27DEF3270;
    v14 = "NFC-interaction-light";
    v15 = &v30;
  }

  else
  {
    v12 = v33;
    if (qword_27DEEA0E0 != -1)
    {
      swift_once();
    }

    v13 = qword_27DEF3270;
    v14 = "DeviceDiscoveryUI.Coordinator";
    v2 = 0xD000000000000015;
    v15 = &v32;
  }

  v16 = v14 | 0x8000000000000000;
  v17 = v13;
  sub_2381548DC();
  sub_2381538EC();
  v18 = v34;
  *v12 = *&v33[49];
  *(v12 + 1) = v18;
  *(v12 + 2) = v35;
  sub_2381549DC();
  v20 = v19;
  v22 = v21;
  v23 = sub_23815414C();
  sub_23815377C();
  *a1 = v2;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v24 = *(v15 + 1);
  *(a1 + 65) = *v15;
  *(a1 + 48) = sub_2380B5B4C;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 81) = v24;
  *(a1 + 97) = *(v15 + 2);
  *(a1 + 112) = *(v15 + 47);
  *(a1 + 120) = 0x400921FB54442D18;
  *(a1 + 128) = v20;
  *(a1 + 136) = v22;
  *(a1 + 144) = v23;
  *(a1 + 152) = v25;
  *(a1 + 160) = v26;
  *(a1 + 168) = v27;
  *(a1 + 176) = v28;
  *(a1 + 184) = 0;
}

uint64_t sub_238072724@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for _DDDevicePickerEducationView(0);
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB60, &qword_238158408);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = sub_238071E54();
  v57 = v13;
  v58 = v12;
  v53 = v14;
  v15 = v13 & 1;
  if (v14)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  v59 = v11;
  v60 = v16;
  if (v14)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  if (!v14)
  {
    v15 = 0;
  }

  v55 = v15;
  v56 = v17;
  if (v14)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  v61 = v18;
  sub_23807BD3C(v11, v12, v13, v14);
  v19 = sub_23807211C();
  v62 = sub_23807CB28(v19);
  v63 = v20;
  sub_2380704A0();
  v21 = sub_23815438C();
  v23 = v22;
  v25 = v24;
  LODWORD(v62) = sub_238153F0C();
  v26 = sub_23815432C();
  v48 = v27;
  v49 = v26;
  v50 = v28;
  v51 = v29;
  sub_238070490(v21, v23, v25 & 1);

  sub_23807AC84(a1, &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerEducationView);
  v30 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v31 = swift_allocObject();
  v32 = sub_23807ACEC(&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for _DDDevicePickerEducationView);
  MEMORY[0x28223BE20](v32);
  *(&v47 - 2) = a1;
  *(&v47 - 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAF0, &qword_2381583E0);
  sub_23807B700();
  sub_23815474C();
  v33 = &v10[*(v5 + 36)];
  v47 = v10;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB68, &qword_238158410) + 28);
  v35 = *MEMORY[0x277CDF438];
  v36 = sub_2381537FC();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  v37 = v8;
  sub_2380712E4(v10, v8, &qword_27DEEAB60, &qword_238158408);
  v38 = v60;
  v40 = v54;
  v39 = v55;
  v41 = v56;
  *v54 = v60;
  v40[1] = v41;
  v42 = v53;
  v40[2] = v39;
  v40[3] = v42;
  *(v40 + 16) = v61;
  v43 = v48;
  v44 = v49;
  v40[5] = v49;
  v40[6] = v43;
  LODWORD(v52) = v50 & 1;
  *(v40 + 56) = v50 & 1;
  v40[8] = v51;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAC40, &qword_2381584F8);
  sub_2380712E4(v37, v40 + *(v45 + 64), &qword_27DEEAB60, &qword_238158408);
  sub_23807BD3C(v38, v41, v39, v42);
  LOBYTE(v38) = v52;
  sub_238070430(v44, v43, v52);

  sub_23807BE0C(v59, v58, v57, v42);
  sub_238071284(v47, &qword_27DEEAB60, &qword_238158408);
  sub_238071284(v37, &qword_27DEEAB60, &qword_238158408);
  sub_238070490(v44, v43, v38);

  return sub_23807BE0C(v60, v41, v39, v42);
}

uint64_t sub_238072BB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_238153A0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAB8, &qword_238158370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26[-v9];
  sub_2381533AC();
  v11 = MEMORY[0x2383E79D0]();
  sub_23815337C();

  v12 = MEMORY[0x2383E79D0]();
  sub_23815337C();

  *v10 = sub_238153D1C();
  *(v10 + 1) = 0x4024000000000000;
  v10[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB88, &qword_238158490);
  sub_238072FF4(v2, &v10[*(v13 + 44)]);
  type metadata accessor for _DDDevicePickerEducationView(0);
  sub_23814A060(v7);
  LOBYTE(v12) = sub_2381539FC();
  (*(v5 + 8))(v7, v4);
  if (v12)
  {
    v14 = sub_23815489C();
  }

  else
  {
    v14 = sub_2381548FC();
  }

  v16 = v14;
  v17 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v39 & 1) != 0 || (sub_238071D48() & 1) == 0)
  {
    sub_23807BA08(&v63);
  }

  else
  {
    sub_238072444(&v27);
    v47 = v35;
    v48 = v36;
    v49[0] = v37[0];
    *(v49 + 9) = *(v37 + 9);
    v43 = v31;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v42 = v30;
    CGSizeMake();
    v71 = v47;
    v72 = v48;
    v73[0] = v49[0];
    *(v73 + 9) = *(v49 + 9);
    v67 = v43;
    v68 = v44;
    v69 = v45;
    v70 = v46;
    v63 = v39;
    v64 = v40;
    v65 = v41;
    v66 = v42;
  }

  v60 = v71;
  v61 = v72;
  v62[0] = v73[0];
  *(v62 + 9) = *(v73 + 9);
  v56 = v67;
  v57 = v68;
  v58 = v69;
  v59 = v70;
  v52 = v63;
  v53 = v64;
  v54 = v65;
  v55 = v66;
  v35 = v71;
  v36 = v72;
  v37[0] = v62[0];
  v37[1] = v62[1];
  v31 = v67;
  v32 = v68;
  v33 = v69;
  v34 = v70;
  v27 = v63;
  v28 = v64;
  v29 = v65;
  v30 = v66;
  *&v38 = v16;
  *(&v38 + 1) = v17;
  sub_23807BA2C(v10, a1);
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA978, &qword_2381581E0) + 36));
  v19 = v37[1];
  v18[10] = v37[0];
  v18[11] = v19;
  v18[12] = v38;
  v20 = v34;
  v18[6] = v33;
  v18[7] = v20;
  v21 = v36;
  v18[8] = v35;
  v18[9] = v21;
  v22 = v30;
  v18[2] = v29;
  v18[3] = v22;
  v23 = v32;
  v18[4] = v31;
  v18[5] = v23;
  v24 = v28;
  *v18 = v27;
  v18[1] = v24;
  v47 = v60;
  v48 = v61;
  v49[0] = v62[0];
  v49[1] = v62[1];
  v43 = v56;
  v44 = v57;
  v45 = v58;
  v46 = v59;
  v39 = v52;
  v40 = v53;
  v41 = v54;
  v42 = v55;
  v50 = v16;
  v51 = v17;
  sub_2380712E4(&v27, v26, &qword_27DEEAAC8, &qword_238158378);
  return sub_238071284(&v39, &qword_27DEEAAC8, &qword_238158378);
}

uint64_t sub_238072FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB90, &qword_238158498);
  MEMORY[0x28223BE20](v84);
  v82 = (&v76 - v6);
  v7 = type metadata accessor for _DDDevicePickerEducationView(0);
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v79 = v8;
  v77 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE0, &unk_2381583D0);
  MEMORY[0x28223BE20](v85);
  v80 = &v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB98, &qword_2381584A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v87 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v76 - v13;
  v14 = sub_23815426C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_238153DFC();
  LOBYTE(v120) = 1;
  sub_238073AC8(a1, &v99);
  v128 = *&v100[16];
  v129 = *&v100[32];
  v130 = *&v100[48];
  v131 = v100[64];
  v126 = v99;
  v127 = *v100;
  v133 = v100[64];
  v132[2] = *&v100[16];
  v132[3] = *&v100[32];
  v132[4] = *&v100[48];
  v132[0] = v99;
  v132[1] = *v100;
  sub_2380712E4(&v126, v93, &qword_27DEEABA0, &qword_2381584A8);
  sub_238071284(v132, &qword_27DEEABA0, &qword_2381584A8);
  *&v114[39] = v128;
  *&v114[55] = v129;
  *&v114[71] = v130;
  v114[87] = v131;
  *&v114[7] = v126;
  *&v114[23] = v127;
  v89 = v120;
  sub_23815417C();
  (*(v15 + 104))(v17, *MEMORY[0x277CE0A10], v14);
  *(&v88 + 1) = sub_23815429C();

  (*(v15 + 8))(v17, v14);
  *&v88 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_238157F10;
  v19 = sub_23815412C();
  *(v18 + 32) = v19;
  v20 = sub_23815410C();
  *(v18 + 33) = v20;
  v21 = sub_23815411C();
  *(v18 + 34) = v21;
  v22 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != v19)
  {
    v22 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v20)
  {
    v22 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v21)
  {
    v22 = sub_23815413C();
  }

  v83 = v22;
  sub_23815377C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v116 = 0;
  v81 = sub_238153F0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v99 & 1) != 0 || (sub_238071D48() & 1) == 0)
  {
    v45 = v77;
    sub_23807AC84(a1, v77, type metadata accessor for _DDDevicePickerEducationView);
    v46 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v47 = swift_allocObject();
    v48 = sub_23807ACEC(v45, v47 + v46, type metadata accessor for _DDDevicePickerEducationView);
    MEMORY[0x28223BE20](v48);
    *(&v76 - 2) = a1;
    *(&v76 - 1) = 0x4010000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAF0, &qword_2381583E0);
    sub_23807B700();
    v49 = v80;
    sub_23815474C();
    v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB60, &qword_238158408) + 36));
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB68, &qword_238158410) + 28);
    v52 = *MEMORY[0x277CDF438];
    v53 = sub_2381537FC();
    (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
    *v50 = swift_getKeyPath();
    LOBYTE(v52) = sub_23815414C();
    sub_23815377C();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB70, &qword_238158448) + 36);
    *v62 = v52;
    *(v62 + 8) = v55;
    *(v62 + 16) = v57;
    *(v62 + 24) = v59;
    *(v62 + 32) = v61;
    *(v62 + 40) = 0;
    *(v49 + *(v85 + 36)) = 0x3FF0000000000000;
    sub_2380712E4(v49, v82, &qword_27DEEAAE0, &unk_2381583D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEABA8, &qword_2381584B0);
    sub_23807BA9C();
    sub_23807B7E4(&qword_27DEEABF0, &qword_27DEEABA8, &qword_2381584B0, sub_23807BC64);
    v44 = v86;
    sub_238153ECC();
    sub_238071284(v49, &qword_27DEEAAE0, &unk_2381583D0);
  }

  else
  {
    sub_2381548DC();
    sub_2381538EC();
    v31 = v120;
    v32 = v122;
    v33 = v124;
    v34 = v125;
    LOBYTE(v99) = 1;
    LOBYTE(v93[0]) = v121;
    v92 = v123;
    v35 = sub_23815414C();
    sub_23815377C();
    v36 = v99;
    v37 = v93[0];
    v38 = v92;
    v91 = 0;
    v39 = v82;
    *v82 = 0;
    *(v39 + 8) = v36;
    v39[2] = v31;
    *(v39 + 24) = v37;
    v39[4] = v32;
    *(v39 + 40) = v38;
    v39[6] = v33;
    v39[7] = v34;
    *(v39 + 64) = v35;
    v39[9] = v40;
    v39[10] = v41;
    v39[11] = v42;
    v39[12] = v43;
    *(v39 + 104) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEABA8, &qword_2381584B0);
    sub_23807BA9C();
    sub_23807B7E4(&qword_27DEEABF0, &qword_27DEEABA8, &qword_2381584B0, sub_23807BC64);
    v44 = v86;
    sub_238153ECC();
  }

  v63 = v87;
  sub_2380712E4(v44, v87, &qword_27DEEAB98, &qword_2381584A0);
  v93[0] = v90;
  v93[1] = 0;
  LOBYTE(v94[0]) = v89;
  *(&v94[2] + 1) = *&v114[32];
  *(&v94[3] + 1) = *&v114[48];
  *(&v94[4] + 1) = *&v114[64];
  *(&v94[5] + 1) = *&v114[80];
  *(v94 + 1) = *v114;
  *(&v94[1] + 1) = *&v114[16];
  HIDWORD(v94[5]) = *&v115[3];
  *(&v94[5] + 9) = *v115;
  v95 = v88;
  v64 = v83;
  LOBYTE(v96) = v83;
  DWORD1(v96) = *&v117[3];
  *(&v96 + 1) = *v117;
  *(&v96 + 1) = v24;
  *&v97 = v26;
  *(&v97 + 1) = v28;
  *&v98 = v30;
  BYTE8(v98) = 0;
  *(&v98 + 9) = v118;
  BYTE11(v98) = v119;
  v65 = v81;
  HIDWORD(v98) = v81;
  v66 = v94[0];
  *a2 = v90;
  *(a2 + 16) = v66;
  v67 = v94[1];
  v68 = v94[2];
  v69 = v94[4];
  *(a2 + 64) = v94[3];
  *(a2 + 80) = v69;
  *(a2 + 32) = v67;
  *(a2 + 48) = v68;
  v70 = v94[5];
  v71 = v95;
  v72 = v98;
  *(a2 + 144) = v97;
  *(a2 + 160) = v72;
  v73 = v96;
  *(a2 + 112) = v71;
  *(a2 + 128) = v73;
  *(a2 + 96) = v70;
  *(a2 + 176) = 0;
  *(a2 + 184) = 1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAC08, &qword_2381584D0);
  sub_2380712E4(v63, a2 + *(v74 + 64), &qword_27DEEAB98, &qword_2381584A0);
  sub_2380712E4(v93, &v99, &qword_27DEEAC10, &qword_2381584D8);
  sub_238071284(v44, &qword_27DEEAB98, &qword_2381584A0);
  sub_238071284(v63, &qword_27DEEAB98, &qword_2381584A0);
  *&v100[33] = *&v114[32];
  *&v100[49] = *&v114[48];
  *&v100[65] = *&v114[64];
  *&v100[1] = *v114;
  v99 = v90;
  v100[0] = v89;
  v101 = *&v114[80];
  *&v100[17] = *&v114[16];
  *&v102[3] = *&v115[3];
  *v102 = *v115;
  v103 = v88;
  v104 = v64;
  *&v105[3] = *&v117[3];
  *v105 = *v117;
  v106 = v24;
  v107 = v26;
  v108 = v28;
  v109 = v30;
  v110 = 0;
  v111 = v118;
  v112 = v119;
  v113 = v65;
  return sub_238071284(&v99, &qword_27DEEAC10, &qword_2381584D8);
}

uint64_t sub_238073AC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for _DDDevicePickerEducationView(0);
  *&v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238071E54();
  v10 = v9;
  v43 = v6;
  v42 = v7;
  v41 = v8;
  if (v9)
  {
    v11 = v8 & 1;
    v12 = v6;
    v13 = v7;
    sub_238070430(v6, v7, v8 & 1);
    v14 = v10;

    v40 = 256;
    v10 = v12;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v11 = 0;
    v40 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v50 & 1) != 0 || (sub_238071D48() & 1) == 0)
  {
    v26 = sub_23807211C();
    *&v50 = sub_23807CB28(v26);
    *(&v50 + 1) = v27;
    sub_2380704A0();
    v46 = sub_23815438C();
    *&v47 = v28;
    *(&v47 + 1) = v29 & 1;
    v48 = v30;
    v49 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAC20, &qword_2381584E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238157F20;
    *&v44 = sub_23807CB28(63);
    v38 = v16;
    sub_23807AC84(a1, &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerEducationView);
    v17 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v18 = swift_allocObject();
    sub_23807ACEC(v5, v18 + v17, type metadata accessor for _DDDevicePickerEducationView);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_23807BEDC;
    *(v19 + 24) = v18;
    *(inited + 32) = v44;
    *(inited + 40) = v38;
    *(inited + 48) = sub_23807BEF4;
    *(inited + 56) = v19;
    v20 = sub_2380EE15C(inited);
    swift_setDeallocating();
    sub_238071284(inited + 32, &qword_27DEEAC28, &qword_2381584E8);
    v21 = sub_23807211C();
    v22 = sub_23807CB28(v21);
    v24 = v23;
    v25 = sub_23815417C();
    sub_238079320(v22, v24, v20, v25, &v54);
    v46 = v54;
    v47 = v55;
    v48 = v56;
    v49 = 1;
  }

  sub_23807BCE8();
  sub_238153ECC();
  v45 = v51;
  v44 = v50;
  v31 = v52;
  v32 = v53;
  v33 = v40;
  sub_23807BD3C(v10, v13, v11, v14);
  v34 = *(&v44 + 1);
  v38 = v44;
  v35 = v45;
  sub_23807BD80(v44, *(&v44 + 1), v45, *(&v45 + 1), v31, v32);
  sub_23807BE0C(v43, v42, v41, v14);
  LOBYTE(v50) = v32;
  v36 = v39;
  *v39 = v10;
  v36[1] = v13;
  v36[2] = v11;
  v36[3] = v14;
  *(v36 + 16) = v33;
  *(v36 + 7) = v45;
  *(v36 + 5) = v44;
  v36[9] = v31;
  *(v36 + 80) = v32;
  sub_23807BE50(v38, v34, v35, *(&v35 + 1), v31, v32);
  return sub_23807BE0C(v10, v13, v11, v14);
}

uint64_t sub_238073F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v67 = a2;
  v3 = type metadata accessor for _DDDevicePickerEducationView(0);
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE0, &unk_2381583D0);
  v5 = MEMORY[0x28223BE20](v65);
  v72 = &v61[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v61[-v7];
  v9 = sub_23815426C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v61[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = sub_238153DFC();
  LOBYTE(v77) = 1;
  v85 = sub_23807CB28(57);
  v86 = v13;
  sub_2380704A0();
  v14 = sub_23815438C();
  v69 = v15;
  v70 = v14;
  v71 = v16;
  v68 = v17 & 1;
  LOBYTE(v85) = v17 & 1;
  v75 = v77;
  sub_23815417C();
  (*(v10 + 104))(v12, *MEMORY[0x277CE0A10], v9);
  v66 = sub_23815429C();

  (*(v10 + 8))(v12, v9);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_238157F10;
  v19 = sub_23815412C();
  *(v18 + 32) = v19;
  v20 = sub_23815410C();
  *(v18 + 33) = v20;
  v21 = sub_23815411C();
  *(v18 + 34) = v21;
  v22 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != v19)
  {
    v22 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v20)
  {
    v22 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v21)
  {
    v22 = sub_23815413C();
  }

  v62 = v22;
  sub_23815377C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v111 = 0;
  v73 = sub_238153F0C();
  v31 = v64;
  sub_23807AC84(v64, &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for _DDDevicePickerEducationView);
  v32 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v33 = swift_allocObject();
  v34 = sub_23807ACEC(&v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v33 + v32, type metadata accessor for _DDDevicePickerEducationView);
  MEMORY[0x28223BE20](v34);
  *&v61[-16] = v31;
  *&v61[-8] = 0x4010000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAF0, &qword_2381583E0);
  sub_23807B700();
  sub_23815474C();
  v35 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB60, &qword_238158408) + 36)];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB68, &qword_238158410) + 28);
  v37 = *MEMORY[0x277CDF438];
  v38 = sub_2381537FC();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = swift_getKeyPath();
  LOBYTE(v37) = sub_23815414C();
  sub_23815377C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB70, &qword_238158448) + 36)];
  *v47 = v37;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  *&v8[*(v65 + 9)] = 0x3FF0000000000000;
  v48 = v72;
  sub_2380712E4(v8, v72, &qword_27DEEAAE0, &unk_2381583D0);
  v77 = v76;
  LOBYTE(v78) = v75;
  *(&v78 + 1) = v116[0];
  DWORD1(v78) = *(v116 + 3);
  v50 = v69;
  v49 = v70;
  *(&v78 + 1) = v70;
  *&v79 = v69;
  v51 = v68;
  BYTE8(v79) = v68;
  *(&v79 + 9) = *v115;
  HIDWORD(v79) = *&v115[3];
  v65 = v8;
  v52 = v71;
  *&v80 = v71;
  WORD4(v80) = 256;
  HIWORD(v80) = v110;
  *(&v80 + 10) = v109;
  v53 = v66;
  *&v81 = KeyPath;
  *(&v81 + 1) = v66;
  LOBYTE(v82) = v22;
  DWORD1(v82) = *&v112[3];
  *(&v82 + 1) = *v112;
  *(&v82 + 1) = v24;
  *&v83 = v26;
  *(&v83 + 1) = v28;
  *&v84 = v30;
  BYTE8(v84) = 0;
  BYTE11(v84) = v114;
  *(&v84 + 9) = v113;
  HIDWORD(v84) = v73;
  v54 = v82;
  v55 = v67;
  *(v67 + 64) = v81;
  *(v55 + 80) = v54;
  v56 = v80;
  *(v55 + 32) = v79;
  *(v55 + 48) = v56;
  v57 = v78;
  *v55 = v77;
  *(v55 + 16) = v57;
  v58 = v84;
  *(v55 + 96) = v83;
  *(v55 + 112) = v58;
  *(v55 + 128) = 0;
  *(v55 + 136) = 1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB78, &qword_238158450);
  sub_2380712E4(v48, v55 + *(v59 + 64), &qword_27DEEAAE0, &unk_2381583D0);
  sub_2380712E4(&v77, &v85, &qword_27DEEAB80, &qword_238158458);
  sub_238071284(v65, &qword_27DEEAAE0, &unk_2381583D0);
  sub_238071284(v48, &qword_27DEEAAE0, &unk_2381583D0);
  v85 = v76;
  v86 = 0;
  v87 = v75;
  *v88 = v116[0];
  *&v88[3] = *(v116 + 3);
  v89 = v49;
  v90 = v50;
  v91 = v51;
  *v92 = *v115;
  *&v92[3] = *&v115[3];
  v93 = v52;
  v94 = 256;
  v96 = v110;
  v95 = v109;
  v97 = KeyPath;
  v98 = v53;
  v99 = v62;
  *&v100[3] = *&v112[3];
  *v100 = *v112;
  v101 = v24;
  v102 = v26;
  v103 = v28;
  v104 = v30;
  v105 = 0;
  v107 = v114;
  v106 = v113;
  v108 = v73;
  return sub_238071284(&v85, &qword_27DEEAB80, &qword_238158458);
}

uint64_t sub_2380746E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v154 = a1;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA938, &qword_2381581A0);
  MEMORY[0x28223BE20](v151);
  v153 = &v125 - v3;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA940, &qword_2381581A8);
  MEMORY[0x28223BE20](v152);
  v127 = &v125 - v4;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA948, &qword_2381581B0);
  MEMORY[0x28223BE20](v147);
  v148 = &v125 - v5;
  v6 = sub_238153FDC();
  MEMORY[0x28223BE20](v6 - 8);
  v125 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA950, &qword_2381581B8);
  MEMORY[0x28223BE20](v156);
  v126 = &v125 - v8;
  v163 = type metadata accessor for _DDDevicePickerEducationView(0);
  v158 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v159 = v9;
  v160 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA958, &qword_2381581C0);
  v142 = *(v10 - 8);
  v143 = v10;
  MEMORY[0x28223BE20](v10);
  v161 = &v125 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA960, &qword_2381581C8);
  v145 = *(v12 - 8);
  v146 = v12;
  MEMORY[0x28223BE20](v12);
  v155 = &v125 - v13;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA968, &qword_2381581D0);
  v14 = MEMORY[0x28223BE20](v149);
  v144 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v150 = &v125 - v16;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA970, &qword_2381581D8);
  MEMORY[0x28223BE20](v137);
  v136 = (&v125 - v17);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA978, &qword_2381581E0);
  MEMORY[0x28223BE20](v157);
  v141 = &v125 - v18;
  v19 = sub_23815426C();
  v138 = *(v19 - 8);
  v139 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA980, &qword_2381581E8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v125 - v26;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA988, &qword_2381581F0);
  MEMORY[0x28223BE20](v140);
  v29 = &v125 - v28;
  v30 = sub_238153A0C();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_238071578();
  v162 = v1;
  if (v34 & 1) == 0 && (sub_238071D48() & 1) == 0 || (sub_23814A060(v33), v35 = sub_2381539FC(), (*(v31 + 8))(v33, v30), (v35) && ((swift_getKeyPath(), swift_getKeyPath(), sub_238152A8C(), , , (v167) || (sub_238071578()))
  {
    sub_2381533AC();
    v36 = MEMORY[0x2383E79D0]();
    v37 = sub_23815337C();

    if ((v37 & 1) == 0)
    {
      sub_238071578();
    }

    *v29 = sub_238153D1C();
    *(v29 + 1) = 0;
    v29[16] = 1;
    v38 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA990, &qword_2381581F8) + 44)];
    *v27 = sub_238153DFC();
    *(v27 + 1) = 0;
    v27[16] = 1;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA998, &qword_238158200);
    sub_238072724(v2, &v27[*(v39 + 44)]);
    sub_2380712E4(v27, v25, &qword_27DEEA980, &qword_2381581E8);
    sub_2380712E4(v25, v38, &qword_27DEEA980, &qword_2381581E8);
    v40 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA9A0, &qword_238158208) + 48);
    *v40 = 0;
    *(v40 + 8) = 1;
    sub_238071284(v27, &qword_27DEEA980, &qword_2381581E8);
    sub_238071284(v25, &qword_27DEEA980, &qword_2381581E8);
    sub_23815417C();
    v42 = v138;
    v41 = v139;
    (*(v138 + 104))(v21, *MEMORY[0x277CE0A10], v139);
    v43 = sub_23815429C();

    (*(v42 + 8))(v21, v41);
    KeyPath = swift_getKeyPath();
    v45 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA9A8, &qword_238158240) + 36)];
    *v45 = KeyPath;
    v45[1] = v43;
    LOBYTE(KeyPath) = sub_2381540FC();
    sub_23815377C();
    v46 = &v29[*(v140 + 36)];
    *v46 = KeyPath;
    *(v46 + 1) = v47;
    *(v46 + 2) = v48;
    *(v46 + 3) = v49;
    *(v46 + 4) = v50;
    v46[40] = 0;
    sub_23807B7E4(&qword_27DEEA9B0, &qword_27DEEA988, &qword_2381581F0, sub_23807AB00);
  }

  else
  {
    sub_238072BB0(v141);
    sub_23807B604();
  }

  v51 = sub_2381547BC();
  *(&v168 + 1) = &type metadata for SharingFeatureFlags;
  *&v169 = sub_23807ABE4();
  LOBYTE(v167) = 1;
  v52 = sub_23815283C();
  __swift_destroy_boxed_opaque_existential_1(&v167);
  if (v52)
  {
    v53 = v162;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    if (v167 == 1)
    {
      sub_2381533AC();
      v54 = MEMORY[0x2383E79D0]();
      sub_23815337C();

      v55 = sub_238153D1C();
      v56 = v136;
      *v136 = v55;
      v56[1] = 0;
      *(v56 + 16) = 1;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAD0, &qword_238158380);
      sub_238073F4C(v53, v56 + *(v57 + 44));
      sub_2380711D4(&qword_27DEEAAD8, &qword_27DEEA970, &qword_2381581D8, MEMORY[0x277CE1138]);
    }

    else
    {
      sub_238072BB0(v141);
      sub_23807B604();
    }

    v58 = sub_2381547BC();

    v51 = v58;
  }

  else
  {
    v53 = v162;
  }

  sub_238071578();
  sub_2381548DC();
  sub_238153A8C();
  *&v175[51] = v176;
  *&v175[43] = *&v175[99];
  *&v175[35] = *&v175[91];
  *&v175[27] = *&v175[83];
  *&v175[11] = *&v175[67];
  *&v175[3] = *&v175[59];
  *&v175[19] = *&v175[75];
  *(&v166[4] + 10) = *&v175[32];
  *(&v166[5] + 10) = *&v175[40];
  *(&v166[6] + 10) = *&v175[48];
  *(v166 + 10) = *v175;
  *(&v166[1] + 10) = *&v175[8];
  *(&v166[2] + 10) = *&v175[16];
  v141 = v51;
  *&v166[0] = v51;
  WORD4(v166[0]) = 0;
  *(&v166[7] + 1) = *(&v176 + 1);
  *(&v166[3] + 10) = *&v175[24];
  *&v167 = sub_23807CB28(96);
  *(&v167 + 1) = v59;
  sub_2380704A0();
  v60 = sub_23815438C();
  v139 = v61;
  v140 = v60;
  LODWORD(v136) = v62;
  v138 = v63;
  v64 = v53 + *(v163 + 44);
  v65 = *v64;
  v66 = *(v64 + 8);
  v164[0] = v65;
  v165 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815472C();
  v132 = *(&v167 + 1);
  v133 = v168;
  v67 = v160;
  sub_23807AC84(v53, v160, type metadata accessor for _DDDevicePickerEducationView);
  v68 = (*(v158 + 80) + 16) & ~*(v158 + 80);
  v69 = *(v158 + 80);
  v158 = swift_allocObject();
  sub_23807ACEC(v67, v158 + v68, type metadata accessor for _DDDevicePickerEducationView);
  sub_23807AC84(v53, v67, type metadata accessor for _DDDevicePickerEducationView);
  v137 = v69;
  v157 = swift_allocObject();
  sub_23807ACEC(v67, v157 + v68, type metadata accessor for _DDDevicePickerEducationView);
  v135 = type metadata accessor for _DDDevicePickerEducationView;
  sub_23807AC84(v53, v67, type metadata accessor for _DDDevicePickerEducationView);
  v70 = swift_allocObject();
  sub_23807ACEC(v67, v70 + v68, type metadata accessor for _DDDevicePickerEducationView);
  *&v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA08, &qword_238158268);
  *(&v128 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA10, &qword_238158270);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA18, &qword_238158278);
  *&v130 = sub_23807AE8C();
  *(&v130 + 1) = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
  v131 = sub_23807AFD0();
  v134 = sub_23807B04C();
  v71 = v136;
  v73 = v139;
  v72 = v140;
  sub_23815450C();

  sub_238070490(v72, v73, v71 & 1);

  v171 = v166[4];
  v172 = v166[5];
  v173 = v166[6];
  v174 = v166[7];
  v167 = v166[0];
  v168 = v166[1];
  v169 = v166[2];
  v170 = v166[3];
  sub_238071284(&v167, &qword_27DEEAA08, &qword_238158268);

  v74 = v162;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v164[0] = v166[0];
  v75 = v160;
  v76 = v135;
  sub_23807AC84(v74, v160, v135);
  v77 = swift_allocObject();
  sub_23807ACEC(v75, v77 + v68, v76);
  v166[0] = v128;
  *&v166[1] = v129;
  *(&v166[1] + 1) = &type metadata for _DDPinEntryAlertView;
  v166[2] = v130;
  *&v166[3] = v131;
  *(&v166[3] + 1) = v134;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = v155;
  v80 = v143;
  v81 = v161;
  sub_23815455C();

  (*(v142 + 8))(v81, v80);
  v82 = sub_2381533AC();
  v83 = MEMORY[0x2383E79D0]();
  v84 = sub_23815337C();

  if (v84)
  {
    sub_238153FCC();
    v85 = *(v156 + 36);
    v163 = v82;
    v86 = v126;
    v87 = &v126[v85];
    sub_23815401C();
    v88 = [objc_opt_self() quaternarySystemFillColor];
    v89 = sub_23815465C();
    v90 = v80;
    v91 = swift_getKeyPath();
    v92 = &v87[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAA0, &qword_238158320) + 36)];
    *v92 = v91;
    v92[1] = v89;
    v93 = sub_2381548DC();
    v95 = v94;
    v96 = &v87[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA70, &qword_2381582D8) + 36)];
    *v96 = v93;
    v96[1] = v95;
    v97 = v145;
    v98 = v79;
    v99 = v146;
    (*(v145 + 16))(v86, v98, v146);
    sub_2380712E4(v86, v148, &qword_27DEEA950, &qword_2381581B8);
    swift_storeEnumTagMultiPayload();
    sub_23807B128();
    *&v166[0] = v90;
    *(&v166[0] + 1) = MEMORY[0x277D839B0];
    *&v166[1] = OpaqueTypeConformance2;
    *(&v166[1] + 1) = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    v100 = v144;
    v101 = v99;
    v79 = v155;
    sub_238153ECC();
    sub_238071284(v86, &qword_27DEEA950, &qword_2381581B8);
  }

  else
  {
    v97 = v145;
    v101 = v146;
    (*(v145 + 16))(v148, v79, v146);
    swift_storeEnumTagMultiPayload();
    sub_23807B128();
    *&v166[0] = v80;
    *(&v166[0] + 1) = MEMORY[0x277D839B0];
    *&v166[1] = OpaqueTypeConformance2;
    *(&v166[1] + 1) = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    v100 = v144;
    sub_238153ECC();
  }

  v102 = v150;
  (*(v97 + 8))(v79, v101);
  v103 = sub_23807B30C(v100, v102);
  v104 = MEMORY[0x2383E79D0](v103);
  v105 = sub_23815337C();

  if (v105)
  {
    sub_2380712E4(v102, v153, &qword_27DEEA968, &qword_2381581D0);
    swift_storeEnumTagMultiPayload();
    sub_23807B384();
    sub_23807B43C();
    sub_238153ECC();
  }

  else
  {
    v106 = v127;
    v107 = &v127[*(v152 + 36)];
    v108 = *(sub_238153A7C() + 20);
    v109 = *MEMORY[0x277CE0118];
    v110 = sub_238153DDC();
    (*(*(v110 - 8) + 104))(&v107[v108], v109, v110);
    __asm { FMOV            V0.2D, #8.0 }

    *v107 = _Q0;
    v116 = [objc_opt_self() quaternarySystemFillColor];
    v117 = sub_23815465C();
    v118 = swift_getKeyPath();
    v119 = &v107[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA78, &qword_238158310) + 36)];
    *v119 = v118;
    v119[1] = v117;
    v120 = sub_2381548DC();
    v122 = v121;
    v123 = &v107[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA80, &qword_238158318) + 36)];
    *v123 = v120;
    v123[1] = v122;
    sub_2380712E4(v102, v106, &qword_27DEEA968, &qword_2381581D0);
    sub_2380712E4(v106, v153, &qword_27DEEA940, &qword_2381581A8);
    swift_storeEnumTagMultiPayload();
    sub_23807B384();
    sub_23807B43C();
    sub_238153ECC();

    sub_238071284(v106, &qword_27DEEA940, &qword_2381581A8);
  }

  return sub_238071284(v102, &qword_27DEEA968, &qword_2381581D0);
}

uint64_t sub_238075BF8(uint64_t a1)
{
  v2 = type metadata accessor for _DDDevicePickerEducationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23807AC84(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerEducationView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23807ACEC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for _DDDevicePickerEducationView);
  return sub_23815474C();
}

double sub_238075D40@<D0>(uint64_t a1@<X8>)
{
  v3 = (*(v1 + *(type metadata accessor for _DDDevicePickerEducationView(0) + 36) + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_serviceIdentifier);
  v4 = *v3;
  v5 = v3[1];
  if (v4 == sub_238154CCC() && v5 == v6)
  {

    goto LABEL_8;
  }

  v8 = sub_2381555CC();

  if (v8)
  {
LABEL_8:
    *&v12 = sub_23807CB28(98);
    *(&v12 + 1) = v10;
    sub_2380704A0();
    sub_23815438C();
    goto LABEL_9;
  }

  *&v12 = sub_23807CB28(97);
  *(&v12 + 1) = v9;
  sub_2380704A0();
  sub_23815438C();
LABEL_9:
  sub_238153ECC();
  result = *&v12;
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_238075E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _DDDevicePickerEducationView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_23807AC84(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerEducationView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23807ACEC(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for _DDDevicePickerEducationView);
  v8 = sub_2381537AC();
  v31 = v9;
  v32 = v8;
  v33 = v10;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_2381546FC();
  v30 = v37;
  v28 = v36;
  v29 = v38;
  LOBYTE(v34) = 0;
  sub_2381546FC();
  v11 = v36;
  v27 = v37;
  LOBYTE(v34) = 0;
  sub_2381546FC();
  v12 = v36;
  v13 = v37;
  if (qword_27DEEA100 != -1)
  {
    swift_once();
  }

  v14 = qword_27DEF3290;
  type metadata accessor for _DDPinPairingManager(0);
  sub_23807C874(&qword_27DEEA930, type metadata accessor for _DDPinPairingManager, byte_23815D4F0);
  v15 = v14;
  v16 = sub_2381539BC();
  v18 = v17;
  if (qword_27DEEA030 != -1)
  {
    swift_once();
  }

  v19 = qword_27DEF3190;
  type metadata accessor for DDDeviceAccessController(0);
  sub_23807C874(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController, byte_238159338);
  v20 = v19;
  result = sub_2381539BC();
  *a1 = 6;
  v22 = v32 & 1;
  v23 = v31 & 1;
  v24 = v30;
  *(a1 + 8) = v28;
  *(a1 + 16) = v24;
  *(a1 + 24) = v29;
  *(a1 + 32) = v11;
  *(a1 + 33) = v36;
  *(a1 + 36) = *(&v36 + 3);
  *(a1 + 40) = v27;
  *(a1 + 48) = v12;
  *(a1 + 49) = v34;
  *(a1 + 52) = *(&v34 + 3);
  *(a1 + 56) = v13;
  *(a1 + 64) = v22;
  *(a1 + 68) = *&v40[3];
  *(a1 + 65) = *v40;
  *(a1 + 72) = v33;
  *(a1 + 80) = v23;
  *(a1 + 84) = *&v39[3];
  *(a1 + 81) = *v39;
  *(a1 + 88) = v16;
  *(a1 + 96) = v18;
  *(a1 + 104) = result;
  *(a1 + 112) = v25;
  *(a1 + 120) = sub_23807BF20;
  *(a1 + 128) = v7;
  return result;
}

uint64_t sub_2380761E0(uint64_t a1, char *a2, uint64_t a3)
{
  type metadata accessor for _DDDevicePickerEducationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  return sub_23815471C();
}

uint64_t sub_238076254@<X0>(uint64_t a1@<X8>)
{
  sub_23807CB28(0);
  sub_2380704A0();
  result = sub_23815438C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2380762B4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v63 = MEMORY[0x277D84F90];
    sub_2380FDAB8(0, v4, 0);
    v62 = v63;
    v7 = (a1 + 64);
    do
    {
      v9 = *(v7 - 4);
      v8 = *(v7 - 3);
      if (*v7)
      {
        v11 = *(v7 - 2);
        v10 = *(v7 - 1);
        sub_23807C8D8(*(v7 - 4), *(v7 - 3), v11, v10, 1);

        v12 = sub_23815431C();
        v14 = v13;
        v16 = v15;
        v5 = v17;
        sub_23807C928(v9, v8, v11, v10, 1);

        v9 = v12;
        v8 = v14;
      }

      else
      {

        v16 = 0;
      }

      v19 = *(v63 + 16);
      v18 = *(v63 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2380FDAB8((v18 > 1), v19 + 1, 1);
      }

      *(v63 + 16) = v19 + 1;
      v20 = v63 + 32 * v19;
      *(v20 + 32) = v9;
      *(v20 + 40) = v8;
      *(v20 + 48) = v16 & 1;
      *(v20 + 56) = v5;
      v7 += 40;
      --v4;
      v5 = MEMORY[0x277D84F90];
    }

    while (v4);
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

  sub_238153D8C();
  v21 = sub_23815436C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *(v62 + 16);
  sub_238070430(v21, v22, v24 & 1);

  v58 = v28;
  v56 = v21;
  v55 = v23;
  v54 = v25;
  if (v28)
  {
    v29 = 0;
    v30 = v62 + 56;
    result = v27;
    while (v29 < *(v62 + 16))
    {
      ++v29;
      v32 = *(v30 - 8);
      v34 = *(v30 - 24);
      v33 = *(v30 - 16);
      sub_238070430(v34, v33, v32);

      v60 = sub_23815433C();
      v61 = v35;
      v59 = v36;
      v38 = v37;
      sub_238070490(v21, v23, v25 & 1);

      v39 = v34;
      v40 = v59;
      v41 = v32;
      v42 = v60;
      sub_238070490(v39, v33, v41);

      v30 += 32;
      result = v61;
      v43 = v38;
      v25 = v38;
      v23 = v59;
      v21 = v60;
      if (v58 == v29)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v42 = v21;
    v40 = v23;
    v43 = v25;
LABEL_17:

    sub_238070490(v56, v55, v54 & 1);

    v44 = v43;
    v45 = sub_23815435C();
    v47 = v46;
    v48 = v42;
    v50 = v49;
    v51 = v40;
    v53 = v52;
    sub_238070490(v48, v51, v44 & 1);

    *a4 = v45;
    *(a4 + 8) = v47;
    *(a4 + 16) = v50 & 1;
    *(a4 + 24) = v53;
  }

  return result;
}

uint64_t sub_238076624@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v6 = v1[4];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_2381545BC();
  sub_238079764(v3, v4, v5);
  sub_23807C530();
  sub_23815448C();

  v7 = sub_2381548DC();
  v9 = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAC60, &qword_2381585A0);
  v11 = (a1 + *(result + 36));
  *v11 = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v11[5] = v9;
  return result;
}

unint64_t sub_2380768FC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_overlay + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  [*(v0 + OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_layoutManager) characterIndexForPoint:*(v0 + OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textContainer) inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:?];
  result = sub_238154DBC();
  v3 = 0;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = result >> 14;
  while (v6)
  {
    v9 = v3;
LABEL_11:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1] >> 14;
    if (v8 >= v13 >> 14 && v8 < v14)
    {
      v16 = *(v1 + 56);
      *(swift_allocObject() + 16) = *(v16 + 16 * v11);

      return sub_23807C9CC;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      return 0;
    }

    v6 = *(v1 + 64 + 8 * v9);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238076B74@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = objc_allocWithZone(type metadata accessor for LinkTapOverlay.Coordinator(0, a1));

  v9 = sub_23807A178(v4, v5, v6, v7);

  *a2 = v9;
  return result;
}

uint64_t sub_238076C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23807A2C0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_238076CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23807A2C0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_238076D18(uint64_t a1)
{
  sub_23807A2C0();
  sub_238153E9C();
  __break(1u);
}

void sub_238076DE8()
{
  v2 = v0;
  v3 = &off_278A48000;
  [v0 setAccessibilityElements_];
  v4 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_tappables);
  if (!v4)
  {
    v7 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text + 8);
    if (v7)
    {
      v8 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text);
      v108 = MEMORY[0x277D84F90];
LABEL_48:

      goto LABEL_49;
    }

LABEL_59:

    return;
  }

  v1 = *(v4 + 16);
  v94 = v2;
  if (v1)
  {
    v5 = sub_238078268(v1, 0);
    v3 = sub_238078F58(&aBlock, (v5 + 32), v1, v4);
    v6 = aBlock;
    v2 = v102;
    swift_bridgeObjectRetain_n();
    sub_23807A314(v6);
    if (v3 != v1)
    {
      goto LABEL_67;
    }

    v2 = v94;
    v3 = &off_278A48000;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  aBlock = v5;
  sub_2380784B0(&aBlock);

  v7 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text + 8);
  if (!v7)
  {
    goto LABEL_59;
  }

  v8 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text);
  v108 = MEMORY[0x277D84F90];
  if (!aBlock)
  {
    goto LABEL_48;
  }

  v9 = aBlock[2];
  if (!v9)
  {

LABEL_49:
    v19 = MEMORY[0x277D84F90];
    v5 = 15;
LABEL_50:

    v82 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v82 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v82 >= v5 >> 14)
    {
      v83 = 7;
      if (((v7 >> 60) & ((v8 & 0x800000000000000) == 0)) != 0)
      {
        v83 = 11;
      }

      v84 = sub_238077B34(v5, v83 | (v82 << 16));
      v5 = v84;
      if (!v84)
      {
        goto LABEL_58;
      }

      v85 = *MEMORY[0x277D765A8];
      v86 = v84;
      [v86 setAccessibilityTraits_];
      v1 = v86;
      MEMORY[0x2383E94F0]();
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_57:
        sub_238154F1C();

        v19 = v108;
LABEL_58:
        sub_238077938(v19);

        v87 = sub_238154ECC();

        [v2 *(v3 + 2528)];

        return;
      }

LABEL_68:
      sub_238154EFC();
      goto LABEL_57;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v89 = v8;
  v95 = OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer;
  v11 = aBlock[4];
  v10 = aBlock[5];
  v93 = (v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text);
  v13 = aBlock[6];
  v12 = aBlock[7];
  v14 = aBlock;
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  v1 = v93;
  v97 = v15;
  v98 = v11;
  v2 = (v11 >> 14);
  v92 = *MEMORY[0x277D765A8];
  v91 = *MEMORY[0x277D76548];
  v90 = v7;

  v16 = 0;
  v88 = v14;
  v17 = v14 + 11;
  v18 = v9 - 1;
  v19 = MEMORY[0x277D84F90];
  v3 = 15;
  while (1)
  {
    v96 = v18;
    v23 = v1[1];
    if (v23)
    {
      v24 = v16 == v2;
    }

    else
    {
      v24 = 1;
    }

    v99 = v10;
    if (v24)
    {
      v5 = v10;

      v25 = 0;
      goto LABEL_32;
    }

    v26 = *v1;
    v27 = objc_allocWithZone(MEMORY[0x277D750A0]);

    v28 = [v27 initWithAccessibilityContainer_];
    v29 = sub_238154E8C();
    MEMORY[0x2383E9380](v29);

    v30 = sub_238154C8C();

    [v28 setAccessibilityLabel_];

    v31 = *(v94 + v95);
    if (!v31)
    {
      break;
    }

    v32 = [v31 layoutManager];
    if (v32)
    {
      v33 = v32;
      aBlock = v3;
      v101 = v98;
      v106 = v26;
      v107 = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA890, &qword_2381580F8);
      v30 = sub_2380711D4(&qword_27DEEA898, &qword_27DEEA890, &qword_2381580F8, MEMORY[0x277D83D30]);
      sub_2380704A0();
      v34 = sub_23815525C();
      v3 = [v33 glyphRangeForCharacterRange:v34 actualCharacterRange:{v35, 0}];
      v37 = v36;

      v38 = *(v94 + v95);
      if (!v38)
      {
        goto LABEL_71;
      }

      v39 = [v38 layoutManager];
      v1 = v93;
      if (v39)
      {
        v40 = *(v94 + v95);
        if (!v40)
        {
          goto LABEL_73;
        }

        v41 = v39;
        v42 = v40;

        [v41 boundingRectForGlyphRange:v3 inTextContainer:{v37, v42}];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
      }

      else
      {

        v44 = 0.0;
        v46 = 0.0;
        v48 = 0.0;
        v50 = 0.0;
      }

      [v28 setAccessibilityFrameInContainerSpace_];
    }

    else
    {

      v1 = v93;
    }

    v5 = v99;
    [v28 setIsAccessibilityElement_];
    v51 = v28;
    [v51 setAccessibilityTraits_];
    v25 = v51;
    MEMORY[0x2383E94F0]();
    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_238154EFC();
    }

    sub_238154F1C();

    v19 = v108;
LABEL_32:
    v16 = (v5 >> 14);
    if (v5 >> 14 < v2)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v52 = v1[1];
    if (!v52 || v2 == v16)
    {

      v20 = v96;
      if (!v96)
      {

        v2 = v94;
        v3 = 0x278A48000;
        v8 = v89;
        v7 = v90;
        goto LABEL_50;
      }
    }

    else
    {
      v53 = *v1;
      v54 = objc_allocWithZone(MEMORY[0x277D750A0]);

      v2 = v94;
      v55 = [v54 initWithAccessibilityContainer_];
      v56 = sub_238154E8C();
      v30 = MEMORY[0x2383E9380](v56);

      v57 = sub_238154C8C();

      [v55 setAccessibilityLabel_];

      v58 = *(v94 + v95);
      if (!v58)
      {
        goto LABEL_70;
      }

      v59 = [v58 layoutManager];
      if (v59)
      {
        v60 = v59;
        aBlock = v98;
        v101 = v99;
        v106 = v53;
        v107 = v52;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA890, &qword_2381580F8);
        sub_2380711D4(&qword_27DEEA898, &qword_27DEEA890, &qword_2381580F8, MEMORY[0x277D83D30]);
        sub_2380704A0();
        v61 = sub_23815525C();
        v63 = [v60 glyphRangeForCharacterRange:v61 actualCharacterRange:{v62, 0}];
        v30 = v64;

        v65 = *(v94 + v95);
        if (!v65)
        {
          goto LABEL_72;
        }

        v66 = [v65 layoutManager];
        if (v66)
        {
          v67 = *(v94 + v95);
          if (!v67)
          {
            goto LABEL_74;
          }

          v68 = v66;
          v69 = v67;

          [v68 boundingRectForGlyphRange:v63 inTextContainer:{v30, v69}];
          v71 = v70;
          v73 = v72;
          v75 = v74;
          v77 = v76;
        }

        else
        {

          v71 = 0.0;
          v73 = 0.0;
          v75 = 0.0;
          v77 = 0.0;
        }

        [v55 setAccessibilityFrameInContainerSpace_];
      }

      else
      {
      }

      v1 = v93;
      [v55 setIsAccessibilityElement_];
      [v55 setAccessibilityTraits_];
      v78 = swift_allocObject();
      v78[2] = v98;
      v78[3] = v99;
      v78[4] = sub_23807A354;
      v78[5] = v97;
      v104 = sub_23807A3B4;
      v105 = v78;
      aBlock = MEMORY[0x277D85DD0];
      v101 = 1107296256;
      v102 = sub_2380778F8;
      v103 = &block_descriptor;
      v79 = _Block_copy(&aBlock);
      v80 = v55;

      [v80 setAccessibilityActivateBlock_];
      _Block_release(v79);

      v81 = v80;
      MEMORY[0x2383E94F0]();
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_238154EFC();
      }

      sub_238154F1C();

      v19 = v108;

      v20 = v96;
      if (!v96)
      {

        v3 = 0x278A48000;
        v8 = v89;
        v7 = v90;
        v5 = v99;
        goto LABEL_50;
      }
    }

    v21 = *(v17 - 3);
    v10 = *(v17 - 2);
    v5 = *(v17 - 1);
    v22 = *v17;
    v97 = swift_allocObject();
    v98 = v21;
    v2 = (v21 >> 14);
    *(v97 + 16) = v5;
    *(v97 + 24) = v22;
    v17 += 4;
    v18 = v20 - 1;
    v3 = v99;
    if (v2 < v16)
    {
      goto LABEL_65;
    }
  }

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

  __break(1u);
}

uint64_t sub_2380778F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

char *sub_238077938(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2381554FC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2380FDAD8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x2383E9A70](i, a1);
        sub_23807A3F8(0, &qword_27DEEA8A8, 0x277D750A0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2380FDAD8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_23807A440(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_23807A3F8(0, &qword_27DEEA8A8, 0x277D750A0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2380FDAD8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_23807A440(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_238077B34(unint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text + 8);
  if (!v3 || (a2 ^ a1) < 0x4000)
  {
    return 0;
  }

  v7 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text);
  v8 = objc_allocWithZone(MEMORY[0x277D750A0]);

  v6 = [v8 initWithAccessibilityContainer_];
  v9 = sub_238154E8C();
  MEMORY[0x2383E9380](v9);

  v10 = sub_238154C8C();

  [v6 setAccessibilityLabel_];

  v11 = OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer;
  result = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer);
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = [result layoutManager];
  if (!v13)
  {

LABEL_13:
    [v6 setIsAccessibilityElement_];
    return v6;
  }

  v14 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA890, &qword_2381580F8);
  sub_2380711D4(&qword_27DEEA898, &qword_27DEEA890, &qword_2381580F8, MEMORY[0x277D83D30]);
  sub_2380704A0();
  v15 = sub_23815525C();
  v17 = [v14 glyphRangeForCharacterRange:v15 actualCharacterRange:{v16, 0, v7, v3, a1, a2}];
  v19 = v18;

  result = *(v2 + v11);
  if (!result)
  {
    goto LABEL_16;
  }

  result = [result layoutManager];
  if (!result)
  {

    v24 = 0.0;
    v26 = 0.0;
    v28 = 0.0;
    v30 = 0.0;
    goto LABEL_12;
  }

  v20 = *(v2 + v11);
  if (v20)
  {
    v21 = result;
    v22 = v20;

    [v21 boundingRectForGlyphRange:v17 inTextContainer:{v19, v22}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

LABEL_12:
    [v6 setAccessibilityFrameInContainerSpace_];
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_238077E90(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer] = 0;
  *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_tappables] = 0;
  v4 = &v2[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text];
  v5 = type metadata accessor for LinkTapOverlayView(0, a2);
  *v4 = 0;
  *(v4 + 1) = 0;
  v8.receiver = v2;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_238077F64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_238078028(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238078070(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2380780D0()
{
  result = qword_27DEEA838;
  if (!qword_27DEEA838)
  {
    result = swift_getWitnessTable(byte_238157FA8, &type metadata for LinkTapOverlay, v0, v1);
    atomic_store(result, &qword_27DEEA838);
  }

  return result;
}

uint64_t type metadata accessor for _DDDevicePickerEducationView(uint64_t a1)
{
  result = qword_27DEEA8F0;
  if (!qword_27DEEA8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238078170(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_2380781F4(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_238152A9C();
}

void *sub_238078268(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA8C0, &qword_238158110);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_2380782EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA8C8, &qword_238158118);
  v4 = *(type metadata accessor for _DDNodeDecoration(0) - 8);
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

uint64_t sub_2380783E8(uint64_t a1)
{
  v2 = sub_2381537FC();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x2383E8130](v4);
}

uint64_t sub_2380784B0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23807930C(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_23815558C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 5;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[3];
          if (v13 >> 14 >= *(v12 - 1) >> 14)
          {
            break;
          }

          v14 = v12[4];
          v15 = *(v12 + 5);
          v16 = *(v12 + 1);
          *(v12 + 3) = *(v12 - 1);
          *(v12 + 5) = v16;
          *(v12 - 1) = v13;
          *v12 = v14;
          *(v12 + 1) = v15;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA8B0, &unk_238158100);
      v7 = sub_238154F0C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_238078618(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_238078618(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v95 = *v95;
    if (!v95)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_238078E40(v9);
      v9 = result;
    }

    v87 = v9 + 16;
    v88 = *(v9 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = &v9[16 * v88];
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_238078BA8((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v95);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_112;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_113;
        }

        *v89 = v90;
        *(v89 + 1) = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_114;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 32 * v8);
      v12 = 32 * v10;
      v13 = (*a3 + 32 * v10);
      v15 = *v13;
      v14 = v13 + 8;
      v16 = v11 >> 14;
      v17 = v15 >> 14;
      v18 = v10 + 2;
      while (v6 != v18)
      {
        v19 = *v14;
        v14 += 4;
        v20 = (v16 < v17) ^ (v19 >> 14 >= v11 >> 14);
        ++v18;
        v11 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v18 - 1;
          if (v16 >= v17)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v16 >= v17)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 0;
        v22 = 32 * v8;
        v23 = v10;
        do
        {
          if (v23 != v8 + v21 - 1)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v29 + v12);
            v25 = v29 + v22;
            v26 = *v24;
            v27 = v24[1];
            v28 = *(v25 - 16);
            *v24 = *(v25 - 32);
            v24[1] = v28;
            *(v25 - 32) = v26;
            *(v25 - 16) = v27;
          }

          ++v23;
          --v21;
          v22 -= 32;
          v12 += 32;
        }

        while (v23 < v8 + v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_238078E54(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v41 = *(v9 + 2);
    v40 = *(v9 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_238078E54((v40 > 1), v41 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v42;
    v43 = &v9[16 * v41];
    *(v43 + 4) = v10;
    *(v43 + 5) = v8;
    v44 = *v95;
    if (!*v95)
    {
      goto LABEL_125;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v9 + 4);
          v47 = *(v9 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_57:
          if (v49)
          {
            goto LABEL_103;
          }

          v62 = &v9[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_106;
          }

          v68 = &v9[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_110;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v72 = &v9[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_71:
        if (v67)
        {
          goto LABEL_105;
        }

        v75 = &v9[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_108;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_78:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v84 = *&v9[16 * v83 + 32];
        v85 = *&v9[16 * v45 + 40];
        sub_238078BA8((*a3 + 32 * v84), (*a3 + 32 * *&v9[16 * v45 + 32]), (*a3 + 32 * v85), v44);
        if (v4)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_238078E40(v9);
        }

        if (v83 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v86 = &v9[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_238078DB4(v45);
        v42 = *(v9 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v9[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_101;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_102;
      }

      v57 = &v9[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_104;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_107;
      }

      if (v61 >= v53)
      {
        v79 = &v9[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_111;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 32 * v8 - 32;
  v32 = v10 - v8;
LABEL_30:
  v33 = *(v30 + 32 * v8);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (v33 >> 14 >= *v35 >> 14)
    {
LABEL_29:
      ++v8;
      v31 += 32;
      --v32;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 40);
    v37 = *(v35 + 48);
    v38 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v38;
    *v35 = v33;
    *(v35 + 8) = v36;
    *(v35 + 16) = v37;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_238078BA8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 >> 14 < *v4 >> 14)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = v5 + 32;
      v21 = *(v19 - 4);
      v19 -= 32;
      if (v21 >> 14 < *v18 >> 14)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

uint64_t sub_238078DB4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_238078E40(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_238078E54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA8B8, &qword_23815AF40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_238078F58(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2380790B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for _DDNodeDecoration(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_23807AC84(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for _DDNodeDecoration);
      v24 = v23;
      v25 = v31;
      sub_23807ACEC(v24, v31, type metadata accessor for _DDNodeDecoration);
      sub_23807ACEC(v25, a2, type metadata accessor for _DDNodeDecoration);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_238079320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v53 = a5;
  v54 = a4;
  v56 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEAC30, &qword_2381584F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  v55 = sub_2380EE278(MEMORY[0x277D84F90]);
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v57 = a2;

  v58 = a3;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = (v15 << 10) | (16 * v17);
    v19 = *(v58 + 56);
    v20 = (*(v58 + 48) + v18);
    v22 = *v20;
    v21 = v20[1];
    v23 = swift_allocObject();
    v59 = *(v19 + v18);
    *(v23 + 16) = v59;
    v62 = v56;
    v63 = v57;
    v60 = v22;
    v61 = v21;
    v24 = sub_2381527FC();
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    sub_2380704A0();

    v25 = sub_23815532C();
    v27 = v26;
    LOBYTE(v19) = v28;
    sub_238071284(v9, &unk_27DEEAC30, &qword_2381584F0);
    if (v19)
    {
    }

    else
    {
      v29 = swift_allocObject();
      *(v29 + 16) = sub_23807C9CC;
      *(v29 + 24) = v23;
      *&v59 = v29;

      v30 = v55;
      LODWORD(v52) = swift_isUniquelyReferenced_nonNull_native();
      v62 = v30;
      v32 = sub_2380E6C58(v25, v27);
      v33 = *(v30 + 16);
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_22;
      }

      if (*(v30 + 24) >= v35)
      {
        if ((v52 & 1) == 0)
        {
          LODWORD(v55) = v31;
          v52 = v32;
          sub_2380E9458();
          v32 = v52;
          LOBYTE(v31) = v55;
        }
      }

      else
      {
        LODWORD(v55) = v31;
        sub_2380C4C20(v35, v52);
        v36 = sub_2380E6C58(v25, v27);
        v37 = v31 & 1;
        LOBYTE(v31) = v55;
        if ((v55 & 1) != v37)
        {
          goto LABEL_24;
        }

        v32 = v36;
      }

      v55 = v62;
      if (v31)
      {
        v38 = (*(v62 + 56) + 16 * v32);
        v39 = v59;
        *v38 = sub_23807C9D4;
        v38[1] = v39;
      }

      else
      {
        *(v62 + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v40 = (*(v55 + 48) + 16 * v32);
        *v40 = v25;
        v40[1] = v27;
        v41 = (*(v55 + 56) + 16 * v32);
        v42 = v59;
        *v41 = sub_23807C9D4;
        v41[1] = v42;

        v43 = *(v55 + 16);
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_23;
        }

        *(v55 + 16) = v45;
      }
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      v46 = v58;

      v47 = v57;

      v49 = v53;
      v50 = v55;
      *v53 = v56;
      v49[1] = v47;
      v49[2] = v46;
      v49[3] = v50;
      v49[4] = v54;
      return result;
    }

    v13 = *(v10 + 8 * v15);
    ++v16;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA890, &qword_2381580F8);
  result = sub_2381555FC();
  __break(1u);
  return result;
}

char *sub_238079764(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = sub_238078268(*(a3 + 16), 0);
    v46 = sub_238078F58(&v49, v5 + 2, v4, a3);
    v6 = v49;

    sub_23807A314(v6);
    if (v46 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v49 = v5;
  sub_2380784B0(&v49);

  v7 = v49[2];
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = v49 + 7;
    v10 = 15;
    do
    {
      v12 = *(v9 - 3);
      v11 = *(v9 - 2);
      v14 = *(v9 - 1);
      v13 = *v9;
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v13;

      if (v10 >> 14 < v12 >> 14)
      {
        v16 = sub_238154E8C();
        v17 = MEMORY[0x2383E9380](v16);
        v19 = v18;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2380BB31C(0, *(v8 + 2) + 1, 1, v8);
        }

        v21 = *(v8 + 2);
        v20 = *(v8 + 3);
        if (v21 >= v20 >> 1)
        {
          v8 = sub_2380BB31C((v20 > 1), v21 + 1, 1, v8);
        }

        *(v8 + 2) = v21 + 1;
        v22 = &v8[40 * v21];
        *(v22 + 4) = v17;
        *(v22 + 5) = v19;
        *(v22 + 6) = 0;
        *(v22 + 7) = 0;
        v22[64] = 0;
      }

      v23 = a2;
      v24 = sub_238154E8C();
      v25 = MEMORY[0x2383E9380](v24);
      v27 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2380BB31C(0, *(v8 + 2) + 1, 1, v8);
      }

      v29 = *(v8 + 2);
      v28 = *(v8 + 3);
      if (v29 >= v28 >> 1)
      {
        v8 = sub_2380BB31C((v28 > 1), v29 + 1, 1, v8);
      }

      *(v8 + 2) = v29 + 1;
      v30 = &v8[40 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;
      *(v30 + 6) = sub_23807C9CC;
      *(v30 + 7) = v15;
      v30[64] = 1;

      v9 += 4;
      v10 = v11;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = 15;
    v23 = a2;
  }

  v31 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v31 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v11 >> 14 >= 4 * v31)
  {
  }

  else
  {
    v32 = sub_238154E8C();
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39 = MEMORY[0x2383E9380](v32, v34, v36, v38);
    v41 = v40;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2380BB31C(0, *(v8 + 2) + 1, 1, v8);
    }

    v43 = *(v8 + 2);
    v42 = *(v8 + 3);
    if (v43 >= v42 >> 1)
    {
      v8 = sub_2380BB31C((v42 > 1), v43 + 1, 1, v8);
    }

    *(v8 + 2) = v43 + 1;
    v44 = &v8[40 * v43];
    *(v44 + 4) = v39;
    *(v44 + 5) = v41;
    *(v44 + 6) = 0;
    *(v44 + 7) = 0;
    v44[64] = 0;
  }

  return v8;
}

char *sub_238079B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LinkTapOverlayView(0, a2);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA880, &qword_2381580F0);
  sub_238153FEC();
  v8 = *&v14[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textContainer];

  v9 = *&v7[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer];
  *&v7[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer] = v8;

  *&v7[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_tappables] = a4;

  v10 = &v7[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text];
  *v10 = a2;
  *(v10 + 1) = a3;

  [v7 setUserInteractionEnabled_];
  sub_238153FEC();
  v11 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v14 action:sel_didTapLabel_];

  v12 = v11;
  sub_238153FEC();
  [v12 setDelegate_];

  [v7 addGestureRecognizer_];
  return v7;
}

id sub_238079CF0(uint64_t a1)
{
  sub_23815416C();
  v1 = sub_23815418C();

  if (v1)
  {
    v2 = MEMORY[0x277D769A8];
  }

  else
  {
    sub_2381541BC();
    v3 = sub_23815418C();

    if (v3)
    {
      v2 = MEMORY[0x277D76A08];
    }

    else
    {
      sub_23815423C();
      v4 = sub_23815418C();

      if (v4)
      {
        v2 = MEMORY[0x277D76A20];
      }

      else
      {
        sub_23815424C();
        v5 = sub_23815418C();

        if (v5)
        {
          v2 = MEMORY[0x277D76A28];
        }

        else
        {
          sub_2381542CC();
          v6 = sub_23815418C();

          if (v6)
          {
            v2 = MEMORY[0x277D76988];
          }

          else
          {
            sub_23815417C();
            v7 = sub_23815418C();

            if (v7)
            {
              v2 = MEMORY[0x277D769D0];
            }

            else
            {
              sub_23815427C();
              v8 = sub_23815418C();

              if (v8)
              {
                v2 = MEMORY[0x277D76920];
              }

              else
              {
                sub_23815428C();
                v9 = sub_23815418C();

                if (v9)
                {
                  v2 = MEMORY[0x277D76938];
                }

                else
                {
                  sub_2381542AC();
                  v10 = sub_23815418C();

                  if (v10)
                  {
                    v2 = MEMORY[0x277D76940];
                  }

                  else
                  {
                    sub_2381542BC();
                    v11 = sub_23815418C();

                    if (v11)
                    {
                      v2 = MEMORY[0x277D76968];
                    }

                    else
                    {
                      sub_23815419C();
                      sub_23815418C();

                      v2 = MEMORY[0x277D76918];
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

  v12 = [objc_opt_self() preferredFontForTextStyle_];

  return v12;
}

void sub_238079F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA860, &unk_2381580E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238157F20;
  v6 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v7 = v6;
  v8 = sub_238079CF0(a4);
  *(inited + 64) = sub_23807A3F8(0, &qword_27DEEA868, 0x277D74300);
  *(inited + 40) = v8;
  sub_2380EE3A0(inited);
  swift_setDeallocating();
  sub_238071284(inited + 32, &unk_27DEEA870, &qword_23815C110);
  v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v10 = sub_238154C8C();
  type metadata accessor for Key(0);
  sub_23807C874(&qword_27DEEA190, type metadata accessor for Key, asc_23815787C);
  v11 = sub_238154C0C();

  v12 = [v9 initWithString:v10 attributes:v11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA880, &qword_2381580F0);
  sub_238153FEC();
  v13 = [objc_allocWithZone(MEMORY[0x277D742D8]) initWithAttributedString_];
  v14 = *&v19[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textStorage];
  *&v19[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textStorage] = v13;

  sub_238153FEC();
  v15 = *&v19[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textStorage];
  v16 = v15;

  if (v15)
  {
    sub_238153FEC();
    v17 = *&v18[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_layoutManager];

    [v16 addLayoutManager_];
  }

  else
  {
    __break(1u);
  }
}

id sub_23807A178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_layoutManager;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D74238]) init];
  v10 = OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textContainer;
  v11 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
  *&v4[v10] = v11;
  *&v4[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textStorage] = 0;
  v12 = &v4[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_overlay];
  *v12 = a1;
  *(v12 + 1) = a2;
  *(v12 + 2) = a3;
  *(v12 + 3) = a4;

  [v11 setLineFragmentPadding_];
  [*&v4[v10] setLineBreakMode_];
  [*&v4[v10] setMaximumNumberOfLines_];
  [*&v4[v9] addTextContainer_];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for LinkTapOverlay.Coordinator(0, v13);
  return objc_msgSendSuper2(&v15, sel_init);
}

unint64_t sub_23807A2C0()
{
  result = qword_27DEEA888;
  if (!qword_27DEEA888)
  {
    result = swift_getWitnessTable(byte_238157FF8, &type metadata for LinkTapOverlay, v0, v1);
    atomic_store(result, &qword_27DEEA888);
  }

  return result;
}

uint64_t sub_23807A31C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7, v1);
}

uint64_t sub_23807A37C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7, v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23807A3F8(uint64_t a1, unint64_t *a2, void *a3)
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

_OWORD *sub_23807A440(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_23807A454(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_23807A478(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8D0, &unk_238158120);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_23807A608(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8D0, &unk_238158120);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_23807A780(uint64_t a1)
{
  sub_23807A8AC(319);
  if (v1 <= 0x3F)
  {
    sub_23807A910(319, &qword_27DEEA360, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_23807A910(319, &qword_27DEEA910, MEMORY[0x277CDF3E0]);
      if (v3 <= 0x3F)
      {
        sub_23807A964(319);
        if (v4 <= 0x3F)
        {
          sub_23807A9F8(319);
          if (v5 <= 0x3F)
          {
            sub_23807AA8C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23807A8AC(uint64_t a1)
{
  if (!qword_27DEEA900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA850, &qword_2381580D8);
    v1 = sub_23815380C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEA900);
    }
  }
}

void sub_23807A910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23815380C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23807A964(uint64_t a1)
{
  if (!qword_27DEEA918)
  {
    type metadata accessor for _DDAskToAirDropManager(255);
    sub_23807C874(&qword_27DEEA920, type metadata accessor for _DDAskToAirDropManager, byte_23815D738);
    v1 = sub_2381539EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEA918);
    }
  }
}

void sub_23807A9F8(uint64_t a1)
{
  if (!qword_27DEEA928)
  {
    type metadata accessor for _DDPinPairingManager(255);
    sub_23807C874(&qword_27DEEA930, type metadata accessor for _DDPinPairingManager, byte_23815D4F0);
    v1 = sub_2381539EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEA928);
    }
  }
}

void sub_23807AA8C()
{
  if (!qword_27DEEA350)
  {
    v0 = sub_23815473C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEA350);
    }
  }
}

unint64_t sub_23807AB00()
{
  result = qword_27DEEA9B8;
  if (!qword_27DEEA9B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA9A8, &qword_238158240);
    v4[0] = sub_2380711D4(&qword_27DEEA9C0, &qword_27DEEA9C8, &qword_238158248, MEMORY[0x277CE1138]);
    v4[1] = sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEA9B8);
  }

  return result;
}

unint64_t sub_23807ABE4()
{
  result = qword_27DEEA9E0;
  if (!qword_27DEEA9E0)
  {
    result = swift_getWitnessTable(byte_2381578C0, &type metadata for SharingFeatureFlags, v0, v1);
    atomic_store(result, &qword_27DEEA9E0);
  }

  return result;
}

double __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_23807AC84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23807ACEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23807AD54()
{
  v1 = *(type metadata accessor for _DDDevicePickerEducationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_238075BF8(v2);
}

unint64_t sub_23807AE8C()
{
  result = qword_27DEEAA20;
  if (!qword_27DEEAA20)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA08, &qword_238158268);
    v4[0] = sub_23807AF18();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAA20);
  }

  return result;
}

unint64_t sub_23807AF18()
{
  result = qword_27DEEAA28;
  if (!qword_27DEEAA28)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA30, &qword_238158280);
    v4 = sub_2380711D4(&qword_27DEEAA38, &qword_27DEEAA40, &qword_238158288, MEMORY[0x277CDF4F0]);
    v5[0] = MEMORY[0x277CE11C0];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27DEEAA28);
  }

  return result;
}

unint64_t sub_23807AFD0()
{
  result = qword_27DEEAA50;
  if (!qword_27DEEAA50)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA18, &qword_238158278);
    v4[0] = MEMORY[0x277CE0BC8];
    v4[1] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEAA50);
  }

  return result;
}

unint64_t sub_23807B04C()
{
  result = qword_27DEEAA58;
  if (!qword_27DEEAA58)
  {
    result = swift_getWitnessTable(byte_23815B9D8, &type metadata for _DDPinEntryAlertView, v0, v1);
    atomic_store(result, &qword_27DEEAA58);
  }

  return result;
}

uint64_t sub_23807B0A8(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for _DDDevicePickerEducationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2380761E0(a1, a2, v6);
}

unint64_t sub_23807B128()
{
  result = qword_27DEEAA60;
  if (!qword_27DEEAA60)
  {
    v6[18] = v0;
    v6[19] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA950, &qword_2381581B8);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA958, &qword_2381581C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA08, &qword_238158268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA18, &qword_238158278);
    v6[6] = sub_23807AE8C();
    v6[7] = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
    v6[8] = sub_23807AFD0();
    v6[9] = sub_23807B04C();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v6[2] = v4;
    v6[3] = MEMORY[0x277D839B0];
    v6[4] = OpaqueTypeConformance2;
    v6[5] = MEMORY[0x277D839C8];
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_2380711D4(&qword_27DEEAA68, &qword_27DEEAA70, &qword_2381582D8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v6);
    atomic_store(result, &qword_27DEEAA60);
  }

  return result;
}

uint64_t sub_23807B30C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA968, &qword_2381581D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23807B384()
{
  result = qword_27DEEAA88;
  if (!qword_27DEEAA88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA940, &qword_2381581A8);
    v4[0] = sub_23807B43C();
    v4[1] = sub_2380711D4(&qword_27DEEAA98, &qword_27DEEAA80, &qword_238158318, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAA88);
  }

  return result;
}

unint64_t sub_23807B43C()
{
  result = qword_27DEEAA90;
  if (!qword_27DEEAA90)
  {
    v7[20] = v0;
    v7[21] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA968, &qword_2381581D0);
    v4 = sub_23807B128();
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA958, &qword_2381581C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA08, &qword_238158268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA18, &qword_238158278);
    v7[6] = sub_23807AE8C();
    v7[7] = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
    v7[8] = sub_23807AFD0();
    v7[9] = sub_23807B04C();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v7[2] = v5;
    v7[3] = MEMORY[0x277D839B0];
    v7[4] = OpaqueTypeConformance2;
    v7[5] = MEMORY[0x277D839C8];
    v7[0] = v4;
    v7[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v7);
    atomic_store(result, &qword_27DEEAA90);
  }

  return result;
}

unint64_t sub_23807B604()
{
  result = qword_27DEEAAA8;
  if (!qword_27DEEAAA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA978, &qword_2381581E0);
    v4[0] = sub_2380711D4(&qword_27DEEAAB0, &qword_27DEEAAB8, &qword_238158370, MEMORY[0x277CE1138]);
    v4[1] = sub_2380711D4(&qword_27DEEAAC0, &qword_27DEEAAC8, &qword_238158378, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAAA8);
  }

  return result;
}

unint64_t sub_23807B700()
{
  result = qword_27DEEAAF8;
  if (!qword_27DEEAAF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAAF0, &qword_2381583E0);
    v4[0] = sub_23807B7E4(&qword_27DEEAB00, &qword_27DEEAB08, &qword_2381583E8, sub_23807B868);
    v4[1] = sub_2380711D4(&unk_27DEEAB50, &qword_27DEEA450, &qword_238157AA0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAAF8);
  }

  return result;
}

uint64_t sub_23807B7E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23807B868()
{
  result = qword_27DEEAB10;
  if (!qword_27DEEAB10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAB18, &unk_2381583F0);
    v4[0] = sub_23807B920();
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAB10);
  }

  return result;
}

unint64_t sub_23807B920()
{
  result = qword_27DEEAB20;
  if (!qword_27DEEAB20)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAB28, &unk_238159E20);
    v4 = sub_2380711D4(&unk_27DEEAB30, &unk_27DEED150, &qword_238158400, MEMORY[0x277CE0868]);
    v5[0] = MEMORY[0x277CE0BC8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27DEEAB20);
  }

  return result;
}

double sub_23807BA08(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_23807BA2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAB8, &qword_238158370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23807BA9C()
{
  result = qword_27DEEABB0;
  if (!qword_27DEEABB0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAAE0, &unk_2381583D0);
    v4[0] = sub_23807B7E4(&qword_27DEEABB8, &qword_27DEEAB70, &qword_238158448, sub_23807BB80);
    v4[1] = sub_2380711D4(&qword_27DEEABE0, &qword_27DEEABE8, &qword_2381584C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEABB0);
  }

  return result;
}

unint64_t sub_23807BB80()
{
  result = qword_27DEEABC0;
  if (!qword_27DEEABC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAB60, &qword_238158408);
    v4[0] = sub_2380711D4(&qword_27DEEABC8, &qword_27DEEABD0, &qword_2381584B8, MEMORY[0x277CDF028]);
    v4[1] = sub_2380711D4(&qword_27DEEABD8, &qword_27DEEAB68, &qword_238158410, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEABC0);
  }

  return result;
}

unint64_t sub_23807BC64()
{
  result = qword_27DEEABF8;
  if (!qword_27DEEABF8)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAC00, &qword_2381584C8);
    v4[0] = MEMORY[0x277CE1170];
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEABF8);
  }

  return result;
}

unint64_t sub_23807BCE8()
{
  result = qword_27DEEAC18;
  if (!qword_27DEEAC18)
  {
    result = swift_getWitnessTable(aI_1, &type metadata for TappableText, v0, v1);
    atomic_store(result, &qword_27DEEAC18);
  }

  return result;
}

uint64_t sub_23807BD3C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_238070430(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23807BD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_238070430(a1, a2, a3 & 1);
  }
}

uint64_t sub_23807BE0C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_238070490(result, a2, a3 & 1);
  }

  return result;
}

void sub_23807BE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_238070490(a1, a2, a3 & 1);
  }
}

uint64_t sub_23807BF20(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _DDDevicePickerEducationView(0);
  sub_238103770(a1, a2);
  return 0;
}

uint64_t objectdestroy_39Tm()
{
  v1 = type metadata accessor for _DDDevicePickerEducationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_238153F1C();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  v8 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_238153F1C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_238153A0C();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_2381537EC();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7, v15);
}

double sub_23807C370()
{
  v1 = *(type metadata accessor for _DDDevicePickerEducationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2380721E4(v2);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23807C3E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23807C42C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23807C488()
{
  result = qword_27DEEAC48;
  if (!qword_27DEEAC48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAC50, &qword_238158548);
    v4[0] = sub_23807B384();
    v4[1] = sub_23807B43C();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEAC48);
  }

  return result;
}

unint64_t sub_23807C530()
{
  result = qword_27DEEAC58;
  if (!qword_27DEEAC58)
  {
    result = swift_getWitnessTable(a1, &type metadata for TappableColoredText, v0, v1);
    atomic_store(result, &qword_27DEEAC58);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23807C5A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23807C5EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
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

uint64_t sub_23807C664(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23807C6AC(uint64_t result, int a2, int a3)
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

unint64_t sub_23807C700()
{
  result = qword_27DEEAC68;
  if (!qword_27DEEAC68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAC60, &qword_2381585A0);
    v4[0] = sub_23807C7B8();
    v4[1] = sub_2380711D4(&qword_27DEEAC88, &unk_27DEEAC90, &qword_238158680, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAC68);
  }

  return result;
}

unint64_t sub_23807C7B8()
{
  result = qword_27DEEAC70;
  if (!qword_27DEEAC70)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAC78, &qword_238158678);
    v4[0] = sub_23807C530();
    v4[1] = sub_23807C874(&qword_27DEEAC80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAC70);
  }

  return result;
}

uint64_t sub_23807C874(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23807C8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

double sub_23807C928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DDUIString(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x96)
  {
    goto LABEL_17;
  }

  if (a2 + 106 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 106) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 106;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 106;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 106;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x6B;
  v8 = v6 - 107;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}