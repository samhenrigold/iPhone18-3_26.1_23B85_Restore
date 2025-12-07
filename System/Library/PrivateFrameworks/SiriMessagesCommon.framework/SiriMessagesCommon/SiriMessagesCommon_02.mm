uint64_t PhotoSharingInfo.shouldShowPhotoPicker.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t PhotoSharingInfo.shouldShowPhotoPicker.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_12_1(v2 + 17, a2);
  *(v2 + 17) = a1;
  return result;
}

double PhotoSharingInfo.selectedPhotoAssets.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();

  return result;
}

uint64_t PhotoSharingInfo.selectedPhotoAssets.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_1(v2 + 24, a2);
  *(v2 + 24) = a1;
}

double PhotoSharingInfo.selectedPhotoUrls.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();

  return result;
}

uint64_t PhotoSharingInfo.selectedPhotoUrls.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_1(v2 + 32, a2);
  *(v2 + 32) = a1;
}

double PhotoSharingInfo.searchedPhotoAssets.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();

  return result;
}

uint64_t PhotoSharingInfo.searchedPhotoAssets.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_1(v2 + 40, a2);
  *(v2 + 40) = a1;
}

uint64_t PhotoSharingInfo.photoSearchQuery.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();

  return OUTLINED_FUNCTION_8_6();
}

uint64_t PhotoSharingInfo.photoSearchQuery.setter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_12_1(v1 + 48, v3);
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t PhotoSharingInfo.init(isShareThis:shouldShowPhotoPicker:selectedPhotoAssets:searchedPhotoAssets:selectedPhotoUrls:photoSearchQuery:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 16) = a1;
  *(v7 + 17) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a5;
  *(v7 + 40) = a4;
  swift_beginAccess();
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  return v7;
}

uint64_t type metadata accessor for MessageDraftSnippetModel(uint64_t a1)
{
  result = qword_280219178;
  if (!qword_280219178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_267B60A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_267B60AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_267B60AF4()
{
  result = qword_2802190C8;
  if (!qword_2802190C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802190C8);
  }

  return result;
}

unint64_t sub_267B60B48()
{
  result = qword_2802190E8;
  if (!qword_2802190E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802190E8);
  }

  return result;
}

unint64_t sub_267B60B9C()
{
  result = qword_2802190F0;
  if (!qword_2802190F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802190F0);
  }

  return result;
}

uint64_t sub_267B60C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageDraftSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B60C78(uint64_t a1)
{
  v2 = type metadata accessor for MessageDraftSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267B60CD4()
{
  result = qword_280219110;
  if (!qword_280219110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219110);
  }

  return result;
}

unint64_t sub_267B60D28()
{
  result = qword_280219118;
  if (!qword_280219118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219118);
  }

  return result;
}

unint64_t sub_267B60D7C()
{
  result = qword_280219128;
  if (!qword_280219128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219128);
  }

  return result;
}

unint64_t sub_267B60DD0()
{
  result = qword_280219140;
  if (!qword_280219140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219140);
  }

  return result;
}

unint64_t sub_267B60E24(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802189B8, &qword_267B7FB58);
    result = OUTLINED_FUNCTION_43(v3);
    atomic_store(result, v1);
  }

  return result;
}

void PhotoSharingInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_13_1();
  v25 = v23;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219150, &qword_267B82098);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  *(v25 + 48) = 0;
  *(v25 + 56) = 0;
  v34 = v27;
  OUTLINED_FUNCTION_41(v27, v27[3]);
  sub_267B6126C();
  sub_267B7E25C();
  if (v24)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v35) = 0;
    *(v25 + 16) = sub_267B7E06C() & 1;
    OUTLINED_FUNCTION_30(1);
    *(v25 + 17) = sub_267B7E06C() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    OUTLINED_FUNCTION_14_2(&qword_2802189C0);
    OUTLINED_FUNCTION_19();
    sub_267B7E08C();
    *(v25 + 24) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AC0, &qword_267B820A0);
    sub_267B61620(&qword_280218AD8);
    sub_267B7E08C();
    *(v25 + 32) = v35;
    OUTLINED_FUNCTION_19();
    sub_267B7E08C();
    *(v25 + 40) = v35;
    OUTLINED_FUNCTION_30(5);
    v29 = sub_267B7E01C();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_22();
    v33(v32);
    swift_beginAccess();
    *(v25 + 48) = v29;
    *(v25 + 56) = v31;
  }

  __swift_destroy_boxed_opaque_existential_0(v34);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B6126C()
{
  result = qword_280219158;
  if (!qword_280219158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219158);
  }

  return result;
}

uint64_t PhotoSharingInfo.deinit()
{

  return v0;
}

uint64_t PhotoSharingInfo.__deallocating_deinit()
{
  PhotoSharingInfo.deinit();
  v0 = OUTLINED_FUNCTION_7_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t PhotoSharingInfo.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219160, &qword_267B820A8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_41(a1, a1[3]);
  sub_267B6126C();
  OUTLINED_FUNCTION_40();
  sub_267B7E27C();
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_6();
  sub_267B7E10C();
  if (v1)
  {
    v4 = OUTLINED_FUNCTION_1_0();
    return v5(v4);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    OUTLINED_FUNCTION_13_2(&qword_2802189E8);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AC0, &qword_267B820A0);
    sub_267B61620(&qword_280218AC8);
    OUTLINED_FUNCTION_3_1();
    sub_267B7E12C();
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();

    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
    v6 = OUTLINED_FUNCTION_1_0();
    v7(v6);
  }
}

unint64_t sub_267B61620(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218AC0, &qword_267B820A0);
    sub_267B61754(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_267B61754(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_267B61798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = PhotoSharingInfo.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_267B61834(uint64_t a1)
{
  sub_267B7DACC();
  if (v1 <= 0x3F)
  {
    sub_267B61A1C(319);
    if (v2 <= 0x3F)
    {
      sub_267B61BE4(319, &qword_280218770, MEMORY[0x277D837D0], MEMORY[0x277D637C8]);
      if (v3 <= 0x3F)
      {
        sub_267B61AC0(319);
        if (v4 <= 0x3F)
        {
          sub_267B61BE4(319, &qword_280218650, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_267B61BE4(319, &qword_280219190, &type metadata for AutoSendInfo, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_267B61BE4(319, &qword_280219198, &type metadata for CorrectionInfo, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_267B43358(319);
                if (v8 <= 0x3F)
                {
                  sub_267B61BE4(319, &qword_280218780, &type metadata for SnippetLabels, MEMORY[0x277D637C8]);
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

void sub_267B61A1C(uint64_t a1)
{
  if (!qword_280218750)
  {
    v2 = sub_267B61A7C();
    v4 = type metadata accessor for ModelCodable(a1, v2, &protocol witness table for INIntent, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_280218750);
    }
  }
}

unint64_t sub_267B61A7C()
{
  result = qword_280218758;
  if (!qword_280218758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280218758);
  }

  return result;
}

void sub_267B61AC0(uint64_t a1)
{
  if (!qword_280219188)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280219058, &qword_267B81C60);
    v3 = sub_267B61B8C(&qword_280219070);
    v4 = sub_267B61B8C(&qword_280219050);
    v5 = type metadata accessor for Redacted(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280219188);
    }
  }
}

unint64_t sub_267B61B8C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280219058, &qword_267B81C60);
    result = OUTLINED_FUNCTION_43(v3);
    atomic_store(result, v1);
  }

  return result;
}

void sub_267B61BE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_267B61C48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_267B61C9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_267B61D14(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_267B61D54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotoSharingInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CorrectionInfo.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AutoSendInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MessageDraftSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MessageDraftSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B621C0()
{
  result = qword_2802191A0;
  if (!qword_2802191A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191A0);
  }

  return result;
}

unint64_t sub_267B62218()
{
  result = qword_2802191A8;
  if (!qword_2802191A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191A8);
  }

  return result;
}

unint64_t sub_267B62270()
{
  result = qword_2802191B0;
  if (!qword_2802191B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191B0);
  }

  return result;
}

unint64_t sub_267B622C8()
{
  result = qword_2802191B8;
  if (!qword_2802191B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191B8);
  }

  return result;
}

unint64_t sub_267B62320()
{
  result = qword_2802191C0;
  if (!qword_2802191C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191C0);
  }

  return result;
}

unint64_t sub_267B62378()
{
  result = qword_2802191C8;
  if (!qword_2802191C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191C8);
  }

  return result;
}

unint64_t sub_267B623D0()
{
  result = qword_2802191D0;
  if (!qword_2802191D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191D0);
  }

  return result;
}

unint64_t sub_267B62428()
{
  result = qword_2802191D8;
  if (!qword_2802191D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191D8);
  }

  return result;
}

unint64_t sub_267B62480()
{
  result = qword_2802191E0;
  if (!qword_2802191E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191E0);
  }

  return result;
}

unint64_t sub_267B624D8()
{
  result = qword_2802191E8;
  if (!qword_2802191E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191E8);
  }

  return result;
}

unint64_t sub_267B62530()
{
  result = qword_2802191F0;
  if (!qword_2802191F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191F0);
  }

  return result;
}

unint64_t sub_267B62588()
{
  result = qword_2802191F8;
  if (!qword_2802191F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_13_2(uint64_t a1)
{

  return sub_267B60E24(a1);
}

unint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{

  return sub_267B60E24(a1);
}

void OUTLINED_FUNCTION_16_0()
{

  JUMPOUT(0x26D601760);
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1)
{

  return sub_267B7E08C();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return type metadata accessor for MessageDraftSnippetModel(0);
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1)
{

  return sub_267B7E04C();
}

void OUTLINED_FUNCTION_42()
{
  *v0 = 0;
  v0[1] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 1;
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1)
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_44()
{

  JUMPOUT(0x26D601760);
}

uint64_t sub_267B62890(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_267B7D98C();
  OUTLINED_FUNCTION_1_3(v6);
  sub_267B7D97C();
  a3(0);
  OUTLINED_FUNCTION_8_7();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);
}

uint64_t sub_267B62950@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_267B7D98C();
  swift_allocObject();
  sub_267B7D97C();
  sub_267B451E0();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
  }

  return result;
}

double sub_267B62A18@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_267B7D98C();
  swift_allocObject();
  sub_267B7D97C();
  sub_267B4EB18();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    *a3 = v8;
    a3[1] = v9;
    result = *&v10;
    a3[2] = v10;
    a3[3] = v11;
  }

  return result;
}

uint64_t sub_267B62AD8()
{
  v2 = OUTLINED_FUNCTION_0_13();
  v3 = OUTLINED_FUNCTION_1_3(v2);
  sub_267B7D97C();
  v4 = v1();
  OUTLINED_FUNCTION_3_8(v4, v5, v6, v7, v4);
  OUTLINED_FUNCTION_5_8();

  if (!v3)
  {
    *v0 = v9;
    *(v0 + 16) = v10;
    *(v0 + 24) = v11;
  }

  return result;
}

double sub_267B62B60@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_267B7D98C();
  swift_allocObject();
  sub_267B7D97C();
  sub_267B644E4();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    *a3 = v8;
    *(a3 + 16) = v9;
    result = *&v10;
    *(a3 + 32) = v10;
    *(a3 + 48) = v11;
  }

  return result;
}

double sub_267B62C2C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_267B7D98C();
  swift_allocObject();
  sub_267B7D97C();
  sub_267B6443C();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    result = *&v8;
    *a3 = v8;
    *(a3 + 16) = v9;
  }

  return result;
}

uint64_t sub_267B62CEC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_267B7D98C();
  swift_allocObject();
  sub_267B7D97C();
  sub_267B4518C();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    *a3 = v8;
    *(a3 + 8) = v9;
  }

  return result;
}

uint64_t sub_267B62DAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_267B7D98C();
  swift_allocObject();
  sub_267B7D97C();
  sub_267B642EC();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
  }

  return result;
}

uint64_t sub_267B62E6C()
{
  v2 = OUTLINED_FUNCTION_0_13();
  v3 = OUTLINED_FUNCTION_1_3(v2);
  sub_267B7D97C();
  v4 = v1();
  OUTLINED_FUNCTION_3_8(v4, v5, v6, v7, v4);
  OUTLINED_FUNCTION_5_8();

  if (!v3)
  {
    *v0 = v9;
    v0[1] = v10;
    v0[2] = v11;
  }

  return result;
}

uint64_t sub_267B62EF4()
{
  v2 = OUTLINED_FUNCTION_0_13();
  v3 = OUTLINED_FUNCTION_1_3(v2);
  sub_267B7D97C();
  v4 = v1();
  OUTLINED_FUNCTION_3_8(v4, v5, v6, v7, v4);
  OUTLINED_FUNCTION_5_8();

  if (!v3)
  {
    *v0 = v9;
    *(v0 + 8) = v10;
  }

  return result;
}

void *sub_267B62F7C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_267B7D98C();
  swift_allocObject();
  sub_267B7D97C();
  sub_267B6419C();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    return memcpy(a3, __src, 0x78uLL);
  }

  return result;
}

uint64_t sub_267B630B0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_267B7DD7C();
}

uint64_t sub_267B63194(uint64_t (*a1)(void))
{
  v2 = sub_267B7D9BC();
  OUTLINED_FUNCTION_1_3(v2);
  sub_267B7D9AC();
  a1(0);
  OUTLINED_FUNCTION_8_7();
  sub_267B7D99C();
  OUTLINED_FUNCTION_2_12();
  return OUTLINED_FUNCTION_1_16();
}

uint64_t sub_267B63224(uint64_t a1, char a2, uint64_t a3)
{
  sub_267B7D9BC();
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B44FB0();
  v3 = sub_267B7D99C();

  return v3;
}

uint64_t sub_267B632BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = sub_267B7D9BC();
  OUTLINED_FUNCTION_1_3(v6);
  sub_267B7D9AC();
  v7 = a5();
  OUTLINED_FUNCTION_7_6(v7, v8, v9, v10, v11, v12, v13, v14, a1);
  OUTLINED_FUNCTION_2_12();
  return OUTLINED_FUNCTION_1_16();
}

uint64_t sub_267B63328(uint64_t a1, uint64_t a2, char a3)
{
  sub_267B7D9BC();
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B64298();
  v3 = sub_267B7D99C();

  return v3;
}

uint64_t sub_267B633BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_267B7D9BC();
  OUTLINED_FUNCTION_1_3(v4);
  sub_267B7D9AC();
  v5 = a3();
  OUTLINED_FUNCTION_7_6(v5, v6, v7, v8, v9, v10, v11, v12, a1);
  OUTLINED_FUNCTION_2_12();
  return OUTLINED_FUNCTION_1_16();
}

uint64_t sub_267B63428()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_267B7D9BC();
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B64148();
  v1 = sub_267B7D99C();

  return v1;
}

uint64_t sub_267B634C4(uint64_t a1, char a2)
{
  sub_267B7D9BC();
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B44F08();
  v2 = sub_267B7D99C();

  return v2;
}

uint64_t sub_267B63558()
{
  sub_267B7D9BC();
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B64490();
  v0 = sub_267B7D99C();

  return v0;
}

uint64_t sub_267B635FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, double a5)
{
  v6 = sub_267B7D9BC();
  OUTLINED_FUNCTION_1_3(v6);
  sub_267B7D9AC();
  a3();
  sub_267B7D99C();
  OUTLINED_FUNCTION_2_12();
  return OUTLINED_FUNCTION_1_16();
}

uint64_t sub_267B63678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267B7D9BC();
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B643E8();
  v3 = sub_267B7D99C();

  return v3;
}

uint64_t CustomCanvasModel<>.serializedData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_267B7D9BC();
  OUTLINED_FUNCTION_1_3(v4);
  sub_267B7D9AC();
  sub_267B7D99C();
  OUTLINED_FUNCTION_2_12();
  return OUTLINED_FUNCTION_1_16();
}

unint64_t sub_267B64148()
{
  result = qword_280219218;
  if (!qword_280219218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219218);
  }

  return result;
}

unint64_t sub_267B6419C()
{
  result = qword_280219228;
  if (!qword_280219228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219228);
  }

  return result;
}

unint64_t sub_267B641F0()
{
  result = qword_280219238;
  if (!qword_280219238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219238);
  }

  return result;
}

unint64_t sub_267B64244()
{
  result = qword_280219248;
  if (!qword_280219248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219248);
  }

  return result;
}

unint64_t sub_267B64298()
{
  result = qword_280219250;
  if (!qword_280219250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219250);
  }

  return result;
}

unint64_t sub_267B642EC()
{
  result = qword_280219260;
  if (!qword_280219260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219260);
  }

  return result;
}

unint64_t sub_267B64340()
{
  result = qword_280219270;
  if (!qword_280219270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219270);
  }

  return result;
}

unint64_t sub_267B64394()
{
  result = qword_280219280;
  if (!qword_280219280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219280);
  }

  return result;
}

unint64_t sub_267B643E8()
{
  result = qword_280219288;
  if (!qword_280219288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219288);
  }

  return result;
}

unint64_t sub_267B6443C()
{
  result = qword_280219298;
  if (!qword_280219298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219298);
  }

  return result;
}

unint64_t sub_267B64490()
{
  result = qword_2802192B8;
  if (!qword_2802192B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802192B8);
  }

  return result;
}

unint64_t sub_267B644E4()
{
  result = qword_2802192C8;
  if (!qword_2802192C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802192C8);
  }

  return result;
}

unint64_t sub_267B64538()
{
  result = qword_2802192D0;
  if (!qword_2802192D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802192D0);
  }

  return result;
}

unint64_t sub_267B6458C()
{
  result = qword_2802192E0;
  if (!qword_2802192E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802192E0);
  }

  return result;
}

unint64_t sub_267B645E0()
{
  result = qword_2802192F8;
  if (!qword_2802192F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802192F8);
  }

  return result;
}

unint64_t sub_267B64634()
{
  result = qword_280219308;
  if (!qword_280219308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219308);
  }

  return result;
}

uint64_t sub_267B64688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_12()
{
}

uint64_t OUTLINED_FUNCTION_3_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_267B7D96C();
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return sub_267B3A524(v1, v0);
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_267B7D99C();
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return sub_267B64688(v2, v1, v0);
}

void __swiftcall PayloadTextInput.init(payload:placeholderText:shouldUpdateWithASRText:shouldValidate:)(SiriMessagesCommon::PayloadTextInput *__return_ptr retstr, Swift::String payload, Swift::String placeholderText, Swift::Bool shouldUpdateWithASRText, Swift::Bool shouldValidate)
{
  object = placeholderText._object;
  countAndFlagsBits = placeholderText._countAndFlagsBits;
  v9 = payload._object;
  v10 = payload._countAndFlagsBits;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_280218F18;
  retstr->sendLabelText._countAndFlagsBits = qword_280218F10;
  retstr->sendLabelText._object = v12;
  retstr->payload._countAndFlagsBits = v10;
  retstr->payload._object = v9;
  retstr->placeholderText._countAndFlagsBits = countAndFlagsBits;
  retstr->placeholderText._object = object;
  retstr->shouldUpdateWithASRText = shouldUpdateWithASRText;
  retstr->shouldValidate = shouldValidate;
}

uint64_t PayloadTextInput.payload.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PayloadTextInput.payload.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PayloadTextInput.placeholderText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PayloadTextInput.placeholderText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PayloadTextInput.sendLabelText.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PayloadTextInput.sendLabelText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_267B64A28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6F686563616C70 && a2 == 0xEF74786554726564;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x8000000267B87670 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6156646C756F6873 && a2 == 0xEE0065746164696CLL;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6562614C646E6573 && a2 == 0xED0000747865546CLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_267B7E16C();

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

unint64_t sub_267B64BE8(char a1)
{
  result = 0x64616F6C796170;
  switch(a1)
  {
    case 1:
      result = 0x6C6F686563616C70;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0x6156646C756F6873;
      break;
    case 4:
      result = 0x6562614C646E6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B64CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B64A28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B64CDC(uint64_t a1)
{
  v2 = sub_267B64F38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B64D18(uint64_t a1)
{
  v2 = sub_267B64F38();

  return MEMORY[0x2821FE720](a1, v2);
}

void PayloadTextInput.encode(to:)()
{
  OUTLINED_FUNCTION_13_1();
  v18 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219328, &qword_267B82900);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v10 = *(v0 + 16);
  v16 = *(v0 + 24);
  v17 = v10;
  LODWORD(v10) = *(v0 + 32);
  v14 = *(v0 + 33);
  v15 = v10;
  v11 = *(v0 + 40);
  v13[0] = *(v0 + 48);
  v13[1] = v11;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_267B64F38();
  sub_267B7E27C();
  v12 = v18;
  sub_267B7E0FC();
  if (!v12)
  {
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B64F38()
{
  result = qword_280219330;
  if (!qword_280219330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219330);
  }

  return result;
}

void PayloadTextInput.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_1();
  v26 = v25;
  v52 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219338, &qword_267B82908);
  OUTLINED_FUNCTION_8();
  v30 = v29;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  v33 = &v48 - v32;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_267B64F38();

  sub_267B7E25C();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    LOBYTE(v57) = 0;
    *&v51 = sub_267B7E05C();
    *(&v51 + 1) = v34;
    OUTLINED_FUNCTION_2_13(1);
    v35 = sub_267B7E05C();
    v37 = v36;
    v50 = v35;
    OUTLINED_FUNCTION_2_13(2);
    v64 = sub_267B7E06C();
    OUTLINED_FUNCTION_2_13(3);
    v49 = sub_267B7E06C();
    v38 = sub_267B7E05C();
    v64 &= 1u;
    v39 = v49 & 1;
    v40 = v38;
    v41 = v33;
    v43 = v42;
    (*(v30 + 8))(v41, v28);

    v44 = v51;
    v53 = v51;
    v45 = v50;
    *&v54 = v50;
    *(&v54 + 1) = v37;
    LOBYTE(v55) = v64;
    BYTE1(v55) = v39;
    *(&v55 + 1) = v40;
    v56 = v43;
    v46 = v52;
    *(v52 + 48) = v43;
    v47 = v54;
    *v46 = v53;
    v46[1] = v47;
    v46[2] = v55;
    sub_267B65294(&v53, &v57);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v57 = v44;
    v58 = v45;
    v59 = v37;
    v60 = v64;
    v61 = v39;
    v62 = v40;
    v63 = v43;
    sub_267B652CC(&v57);
  }

  OUTLINED_FUNCTION_14();
}

uint64_t sub_267B65334(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7961506873756C66 && a2 == 0xEC00000064616F6CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B7E16C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B653E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B65334(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B6540C(uint64_t a1)
{
  v2 = sub_267B656A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B65448(uint64_t a1)
{
  v2 = sub_267B656A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B65488(uint64_t a1)
{
  v2 = sub_267B656FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B654C4(uint64_t a1)
{
  v2 = sub_267B656FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void PayloadTextInputAction.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_1();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219340, &qword_267B82910);
  OUTLINED_FUNCTION_8();
  v27 = v26;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219348, &qword_267B82918);
  OUTLINED_FUNCTION_8();
  v33 = v32;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_267B656A8();
  sub_267B7E27C();
  sub_267B656FC();
  sub_267B7E0BC();
  (*(v27 + 8))(v30, v25);
  (*(v33 + 8))(v36, v31);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B656A8()
{
  result = qword_280219350;
  if (!qword_280219350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219350);
  }

  return result;
}

unint64_t sub_267B656FC()
{
  result = qword_280219358;
  if (!qword_280219358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219358);
  }

  return result;
}

uint64_t PayloadTextInputAction.hashValue.getter()
{
  sub_267B7E21C();
  MEMORY[0x26D601BE0](0);
  return sub_267B7E23C();
}

void PayloadTextInputAction.init(from:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219360, &qword_267B82920);
  OUTLINED_FUNCTION_8();
  v34 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219368, &unk_267B82928);
  OUTLINED_FUNCTION_8();
  v35 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_267B656A8();
  sub_267B7E25C();
  if (v0)
  {
    goto LABEL_9;
  }

  v32 = v7;
  v33 = v2;
  sub_267B7E09C();
  v13 = sub_267B45CC4();
  v16 = v12;
  if (v14 == v15 >> 1)
  {
    v34 = v13;
LABEL_8:
    v26 = v8;
    v27 = sub_267B7DFBC();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580);
    *v29 = &type metadata for PayloadTextInputAction;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v35 + 8))(v16, v26);
    v2 = v33;
LABEL_9:
    v30 = v2;
    goto LABEL_10;
  }

  if (v14 < (v15 >> 1))
  {
    v17 = sub_267B45CBC();
    v19 = v18;
    v21 = v20;
    swift_unknownObjectRelease();
    v22 = v19 == v21 >> 1;
    v23 = v33;
    v24 = v34;
    if (v22)
    {
      sub_267B656FC();
      v25 = v32;
      sub_267B7DFFC();
      swift_unknownObjectRelease();
      (*(v24 + 8))(v25, v3);
      (*(v35 + 8))(v16, v8);
      v30 = v23;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_0(v30);
      OUTLINED_FUNCTION_14();
      return;
    }

    v34 = v17;
    goto LABEL_8;
  }

  __break(1u);
}

unint64_t sub_267B65B9C()
{
  result = qword_280219370;
  if (!qword_280219370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219370);
  }

  return result;
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

uint64_t sub_267B65C0C(uint64_t a1, int a2)
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

uint64_t sub_267B65C4C(uint64_t result, int a2, int a3)
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

_BYTE *sub_267B65CB8(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PayloadTextInput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B65E54()
{
  result = qword_280219378;
  if (!qword_280219378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219378);
  }

  return result;
}

unint64_t sub_267B65EAC()
{
  result = qword_280219380;
  if (!qword_280219380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219380);
  }

  return result;
}

unint64_t sub_267B65F04()
{
  result = qword_280219388;
  if (!qword_280219388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219388);
  }

  return result;
}

unint64_t sub_267B65F5C()
{
  result = qword_280219390;
  if (!qword_280219390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219390);
  }

  return result;
}

unint64_t sub_267B65FB4()
{
  result = qword_280219398;
  if (!qword_280219398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219398);
  }

  return result;
}

unint64_t sub_267B6600C()
{
  result = qword_2802193A0;
  if (!qword_2802193A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193A0);
  }

  return result;
}

unint64_t sub_267B66064()
{
  result = qword_2802193A8;
  if (!qword_2802193A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193A8);
  }

  return result;
}

unint64_t sub_267B660BC()
{
  result = qword_2802193B0;
  if (!qword_2802193B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193B0);
  }

  return result;
}

uint64_t ConfirmationButtonSnippetModel.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfirmationButtonSnippetModel.primaryButtonLabel.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ConfirmationButtonSnippetModel.secondaryButtonLabel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall ConfirmationButtonSnippetModel.init(title:primaryButton:primaryButtonLabel:secondaryButton:secondaryButtonLabel:)(SiriMessagesCommon::ConfirmationButtonSnippetModel *__return_ptr retstr, Swift::String_optional title, SiriMessagesCommon::DirectButton primaryButton, Swift::String primaryButtonLabel, SiriMessagesCommon::DirectButton secondaryButton, Swift::String secondaryButtonLabel)
{
  v6 = *secondaryButton;
  retstr->primaryButton = *primaryButton;
  retstr->primaryButtonLabel = primaryButtonLabel;
  retstr->secondaryButton = v6;
  retstr->secondaryButtonLabel = secondaryButtonLabel;
  retstr->title = title;
}

uint64_t ConfirmationButtonSnippetModel.description.getter()
{
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD00000000000002ELL, 0x8000000267B876D0);
  v0 = DirectButton.rawValue.getter();
  MEMORY[0x26D601760](v0);

  MEMORY[0x26D601760](0xD000000000000013, 0x8000000267B87700);
  v1 = DirectButton.rawValue.getter();
  MEMORY[0x26D601760](v1);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_267B662E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x427972616D697270 && a2 == 0xED00006E6F747475;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000267B87720 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F7474754279;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x8000000267B87740 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_267B7E16C();

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

unint64_t sub_267B664A0(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x427972616D697270;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x7261646E6F636573;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B66564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B662E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B6658C(uint64_t a1)
{
  v2 = sub_267B66824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B665C8(uint64_t a1)
{
  v2 = sub_267B66824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationButtonSnippetModel.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802193B8, &qword_267B82DE0);
  OUTLINED_FUNCTION_3_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v18 = *(v1 + 16);
  v9 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v9;
  v15 = *(v1 + 40);
  v10 = *(v1 + 56);
  v14[1] = *(v1 + 48);
  v14[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B66824();
  sub_267B7E27C();
  v26 = 0;
  v11 = v19;
  sub_267B7E0CC();
  if (!v11)
  {
    v12 = v15;
    v25 = v18;
    v24 = 1;
    sub_267B66878();
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();
    v23 = 2;
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
    v22 = v12;
    v21 = 3;
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();
    v20 = 4;
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
  }

  return (*(v5 + 8))(v8, v2);
}

unint64_t sub_267B66824()
{
  result = qword_2802193C0;
  if (!qword_2802193C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193C0);
  }

  return result;
}

unint64_t sub_267B66878()
{
  result = qword_2802193C8;
  if (!qword_2802193C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193C8);
  }

  return result;
}

uint64_t ConfirmationButtonSnippetModel.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802193D0, &qword_267B82DE8);
  OUTLINED_FUNCTION_3_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B66824();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_2_14();
  v6 = sub_267B7E01C();
  v19 = v7;
  sub_267B66B74();
  OUTLINED_FUNCTION_1_17(&type metadata for DirectButton);
  v31 = 0;
  LOBYTE(v24[0]) = 2;
  OUTLINED_FUNCTION_2_14();
  v17 = sub_267B7E05C();
  v18 = v8;
  OUTLINED_FUNCTION_1_17(&type metadata for DirectButton);
  v32 = 4;
  OUTLINED_FUNCTION_2_14();
  v9 = sub_267B7E05C();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_0_14();
  v13(v12);
  *&v20 = v6;
  *(&v20 + 1) = v19;
  LOBYTE(v21) = 0;
  *(&v21 + 1) = v17;
  *&v22 = v18;
  BYTE8(v22) = 2;
  *&v23 = v9;
  *(&v23 + 1) = v11;
  v14 = v21;
  *a2 = v20;
  a2[1] = v14;
  v15 = v23;
  a2[2] = v22;
  a2[3] = v15;
  sub_267B66BC8(&v20, v24);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v24[0] = v6;
  v24[1] = v19;
  v25 = 0;
  v26 = v17;
  v27 = v18;
  v28 = 2;
  v29 = v9;
  v30 = v11;
  return sub_267B66C00(v24);
}

unint64_t sub_267B66B74()
{
  result = qword_2802193D8;
  if (!qword_2802193D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193D8);
  }

  return result;
}

unint64_t sub_267B66C34()
{
  result = qword_2802193E0;
  if (!qword_2802193E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193E0);
  }

  return result;
}

unint64_t sub_267B66C8C()
{
  result = qword_2802193E8;
  if (!qword_2802193E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193E8);
  }

  return result;
}

uint64_t sub_267B66D14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_267B66D54(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for ConfirmationButtonSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B66E94()
{
  result = qword_2802193F0;
  if (!qword_2802193F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193F0);
  }

  return result;
}

unint64_t sub_267B66EEC()
{
  result = qword_2802193F8;
  if (!qword_2802193F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193F8);
  }

  return result;
}

unint64_t sub_267B66F44()
{
  result = qword_280219400;
  if (!qword_280219400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219400);
  }

  return result;
}

uint64_t ConfirmationSnippetModel.MessageType.description.getter()
{
  type metadata accessor for ConfirmationSnippetModel.MessageType(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_0();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_2_15();
  sub_267B69218(v0, v4, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_267B67BD8(v4, type metadata accessor for ConfirmationSnippetModel.MessageType);
  if (!EnumCaseMultiPayload)
  {
    return 0x656D686361747461;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return 0x6F69647561;
  }

  return 1954047348;
}

uint64_t sub_267B670C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B7E16C();

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

uint64_t sub_267B67188(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_267B671A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F69647561 && a2 == 0xE500000000000000;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1954047348 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_267B7E16C();

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

uint64_t sub_267B672B4(char a1)
{
  if (!a1)
  {
    return 0x656D686361747461;
  }

  if (a1 == 1)
  {
    return 0x6F69647561;
  }

  return 1954047348;
}

uint64_t sub_267B6730C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B670C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B67334(uint64_t a1)
{
  v2 = sub_267B67C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B67370(uint64_t a1)
{
  v2 = sub_267B67C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B673AC(uint64_t a1)
{
  v2 = sub_267B67B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B673E8(uint64_t a1)
{
  v2 = sub_267B67B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B6742C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B671A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B67454(uint64_t a1)
{
  v2 = sub_267B67ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B67490(uint64_t a1)
{
  v2 = sub_267B67ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B674CC(uint64_t a1)
{
  v2 = sub_267B67B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B67508(uint64_t a1)
{
  v2 = sub_267B67B30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSnippetModel.MessageType.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219408, &qword_267B83020);
  OUTLINED_FUNCTION_8();
  v58 = v3;
  v59 = v2;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_0();
  v56 = v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219410, &qword_267B83028);
  OUTLINED_FUNCTION_8();
  v55 = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v9 = v54 - v8;
  v54[1] = type metadata accessor for AudioMessagePlayer(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219418, &qword_267B83030);
  OUTLINED_FUNCTION_8();
  v54[2] = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  type metadata accessor for ConfirmationSnippetModel.MessageType(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_0();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219420, &qword_267B83038);
  OUTLINED_FUNCTION_8();
  v63 = v21;
  v64 = v20;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B67ADC();
  sub_267B7E27C();
  OUTLINED_FUNCTION_2_15();
  sub_267B69218(v61, v19, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v43 = *v19;
      v44 = *(v19 + 8);
      v45 = *(v19 + 16);
      LOBYTE(v65) = 2;
      sub_267B67B30();
      v46 = v56;
      v47 = v64;
      sub_267B7E0BC();
      v65 = v43;
      v66 = v44;
      LOBYTE(v67) = v45;
      sub_267B64298();
      v48 = v59;
      sub_267B7E12C();
      (*(v58 + 8))(v46, v48);
      v49 = OUTLINED_FUNCTION_11_2();
      v50(v49, v47);
    }

    sub_267B69064(v19, v13, type metadata accessor for AudioMessagePlayer);
    LOBYTE(v65) = 1;
    sub_267B67B84();
    v25 = v64;
    sub_267B7E0BC();
    OUTLINED_FUNCTION_7_7();
    sub_267B690C0(v26, v27, &protocol conformance descriptor for AudioMessagePlayer);
    v28 = v57;
    sub_267B7E12C();
    (*(v55 + 8))(v9, v28);
    sub_267B67BD8(v13, type metadata accessor for AudioMessagePlayer);
    v29 = OUTLINED_FUNCTION_11_2();
    v31 = v25;
  }

  else
  {
    v32 = *v19;
    v33 = *(v19 + 8);
    v34 = *(v19 + 16);
    v61 = *(v19 + 24);
    v35 = *(v19 + 32);
    LOBYTE(v65) = 0;
    sub_267B67C30();
    v36 = v64;
    sub_267B7E0BC();
    v65 = v32;
    v66 = v33;
    v67 = v34;
    v68 = 0;
    sub_267B45338();
    v37 = v62;
    sub_267B7E12C();
    if (v37)
    {

      v38 = OUTLINED_FUNCTION_12_2();
      v39(v38, v60);
      v40 = OUTLINED_FUNCTION_11_2();
      v41(v40, v36);
      return sub_267B67C84(v32, v33, v34);
    }

    LOBYTE(v65) = 1;
    v62 = v35;
    v51 = v60;
    OUTLINED_FUNCTION_16_1();
    sub_267B7E0CC();
    sub_267B67C84(v32, v33, v34);

    v52 = OUTLINED_FUNCTION_12_2();
    v53(v52, v51);
    v29 = OUTLINED_FUNCTION_11_2();
    v31 = v36;
  }

  return v30(v29, v31);
}

unint64_t sub_267B67ADC()
{
  result = qword_280219428;
  if (!qword_280219428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219428);
  }

  return result;
}

unint64_t sub_267B67B30()
{
  result = qword_280219430;
  if (!qword_280219430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219430);
  }

  return result;
}

unint64_t sub_267B67B84()
{
  result = qword_280219438;
  if (!qword_280219438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219438);
  }

  return result;
}

uint64_t sub_267B67BD8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_267B67C30()
{
  result = qword_280219440;
  if (!qword_280219440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219440);
  }

  return result;
}

uint64_t sub_267B67C84(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 2uLL:

      goto LABEL_6;
    case 3uLL:
LABEL_6:

      break;
    default:

      break;
  }

  return result;
}

uint64_t ConfirmationSnippetModel.MessageType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219448, &qword_267B83040);
  OUTLINED_FUNCTION_8();
  v93 = v4;
  v94 = v3;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_0();
  v96 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219450, &qword_267B83048);
  OUTLINED_FUNCTION_8();
  v90 = v7;
  v91 = v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  v95 = v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219458, &qword_267B83050);
  OUTLINED_FUNCTION_8();
  v89 = v11;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  v99 = v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219460, &unk_267B83058);
  OUTLINED_FUNCTION_8();
  v98 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  v17 = &v83 - v16;
  v18 = type metadata accessor for ConfirmationSnippetModel.MessageType(0);
  OUTLINED_FUNCTION_3_3();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v83 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v83 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v83 - v29;
  v31 = a1[3];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_267B67ADC();
  v32 = v102;
  sub_267B7E25C();
  if (v32)
  {
    goto LABEL_11;
  }

  v85 = v28;
  v86 = v22;
  v87 = v30;
  v88 = v25;
  v33 = v99;
  v34 = v100;
  v102 = v18;
  sub_267B7E09C();
  result = sub_267B45CC4();
  if (v37 == v38 >> 1)
  {
LABEL_10:
    v50 = v102;
    v51 = sub_267B7DFBC();
    swift_allocError();
    v53 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580);
    *v53 = v50;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    v54 = OUTLINED_FUNCTION_13_3();
    v55(v54, v34);
LABEL_11:
    v56 = v101;
    return __swift_destroy_boxed_opaque_existential_0(v56);
  }

  v84 = 0;
  if (v37 < (v38 >> 1))
  {
    v39 = *(v36 + v37);
    sub_267B45CBC();
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v88;
    if (v41 == v43 >> 1)
    {
      v45 = v100;
      if (v39)
      {
        if (v39 == 1)
        {
          LOBYTE(v103) = 1;
          sub_267B67B84();
          OUTLINED_FUNCTION_6_6(&type metadata for ConfirmationSnippetModel.MessageType.AudioCodingKeys, &v103);
          v46 = v97;
          type metadata accessor for AudioMessagePlayer(0);
          OUTLINED_FUNCTION_7_7();
          sub_267B690C0(v47, v48, &protocol conformance descriptor for AudioMessagePlayer);
          OUTLINED_FUNCTION_16_1();
          sub_267B7E08C();
          v49 = v44;
          swift_unknownObjectRelease();
          v59 = OUTLINED_FUNCTION_18_1();
          v60(v59);
          v61 = OUTLINED_FUNCTION_13_3();
          v62(v61, v45);
        }

        else
        {
          LOBYTE(v103) = 2;
          sub_267B67B30();
          OUTLINED_FUNCTION_6_6(&type metadata for ConfirmationSnippetModel.MessageType.TextCodingKeys, &v103);
          v46 = v97;
          sub_267B642EC();
          v58 = v94;
          OUTLINED_FUNCTION_16_1();
          sub_267B7E08C();
          swift_unknownObjectRelease();
          v70 = OUTLINED_FUNCTION_12_2();
          v71(v70, v58);
          v72 = OUTLINED_FUNCTION_14_3();
          v73(v72);
          v74 = v104;
          v75 = v105;
          v49 = v86;
          *v86 = v103;
          *(v49 + 8) = v74;
          *(v49 + 16) = v75;
        }

        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_15();
        v63 = v87;
        sub_267B69064(v49, v87, v64);
        v65 = v101;
      }

      else
      {
        LOBYTE(v103) = 0;
        sub_267B67C30();
        OUTLINED_FUNCTION_6_6(&type metadata for ConfirmationSnippetModel.MessageType.AttachmentCodingKeys, &v103);
        v106 = 0;
        sub_267B452E0();
        v57 = v92;
        OUTLINED_FUNCTION_16_1();
        sub_267B7E08C();
        v66 = v98;
        v68 = v103;
        v67 = v104;
        v96 = v105;
        v106 = 1;
        v95 = sub_267B7E01C();
        v69 = (v89 + 8);
        v84 = 0;
        v77 = v76;
        swift_unknownObjectRelease();
        (*v69)(v33, v57);
        (*(v66 + 8))(v17, v100);
        v78 = v85;
        *v85 = v68;
        v78[1] = v67;
        v79 = v95;
        v78[2] = v96;
        v78[3] = v79;
        v78[4] = v77;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_15();
        v80 = v78;
        v63 = v87;
        sub_267B69064(v80, v87, v81);
        v65 = v101;
        v46 = v97;
      }

      OUTLINED_FUNCTION_0_15();
      sub_267B69064(v63, v46, v82);
      v56 = v65;
      return __swift_destroy_boxed_opaque_existential_0(v56);
    }

    v34 = v100;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

double ConfirmationSnippetModel.init(recipientName:messageType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_280218FC8;
  *a4 = qword_280218FC0;
  a4[1] = v8;
  a4[2] = a1;
  a4[3] = a2;
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_0_15();
  sub_267B69064(a3, a4 + v9, v10);

  return result;
}

uint64_t ConfirmationSnippetModel.toLabelText.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.recipientName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.messageType.getter@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_15();
  return sub_267B69218(v2 + v4, a2, v5);
}

uint64_t ConfirmationSnippetModel.messageType.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1();

  return sub_267B69160(a1, v1 + v3);
}

uint64_t ConfirmationSnippetModel.description.getter()
{
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD000000000000029, 0x8000000267B87760);
  MEMORY[0x26D601760](*(v0 + 16), *(v0 + 24));
  MEMORY[0x26D601760](0xD000000000000010, 0x8000000267B87790);
  OUTLINED_FUNCTION_15_1();
  v1 = ConfirmationSnippetModel.MessageType.description.getter();
  MEMORY[0x26D601760](v1);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_267B688F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546C6562614C6F74 && a2 == 0xEB00000000747865;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65697069636572 && a2 == 0xED0000656D614E74;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079)
    {

      return 2;
    }

    else
    {
      v8 = sub_267B7E16C();

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

uint64_t sub_267B68A18(char a1)
{
  if (!a1)
  {
    return 0x546C6562614C6F74;
  }

  if (a1 == 1)
  {
    return 0x6E65697069636572;
  }

  return 0x546567617373656DLL;
}

uint64_t sub_267B68A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B688F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B68ABC(uint64_t a1)
{
  v2 = sub_267B691C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B68AF8(uint64_t a1)
{
  v2 = sub_267B691C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219468, &qword_267B83068);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B691C4();
  sub_267B7E27C();
  v12[15] = 0;
  sub_267B7E0FC();
  if (!v1)
  {
    v12[14] = 1;
    sub_267B7E0FC();
    type metadata accessor for ConfirmationSnippetModel(0);
    v12[13] = 2;
    type metadata accessor for ConfirmationSnippetModel.MessageType(0);
    OUTLINED_FUNCTION_8_8();
    sub_267B690C0(v9, v10, &protocol conformance descriptor for ConfirmationSnippetModel.MessageType);
    sub_267B7E12C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t ConfirmationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmationSnippetModel.MessageType(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v24 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219480, &qword_267B83070);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  type metadata accessor for ConfirmationSnippetModel(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = (v10 - v9);
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B691C4();

  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_20_0();
    v14 = v13;

    *v11 = v12;
    v11[1] = v14;
    v11[2] = OUTLINED_FUNCTION_20_0();
    v11[3] = v15;
    OUTLINED_FUNCTION_8_8();
    sub_267B690C0(v16, v17, &protocol conformance descriptor for ConfirmationSnippetModel.MessageType);
    sub_267B7E08C();
    v18 = OUTLINED_FUNCTION_4_9();
    v19(v18);
    OUTLINED_FUNCTION_0_15();
    sub_267B69064(v24, v11 + v20, v21);
    sub_267B69218(v11, a2, type metadata accessor for ConfirmationSnippetModel);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_267B67BD8(v11, type metadata accessor for ConfirmationSnippetModel);
  }
}

uint64_t sub_267B69064(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_3();
  v4 = OUTLINED_FUNCTION_8_6();
  v5(v4);
  return a2;
}

uint64_t sub_267B690C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267B69128(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B69160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSnippetModel.MessageType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_267B691C4()
{
  result = qword_280219470;
  if (!qword_280219470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219470);
  }

  return result;
}

uint64_t sub_267B69218(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_3();
  v4 = OUTLINED_FUNCTION_8_6();
  v5(v4);
  return a2;
}

uint64_t sub_267B6932C(uint64_t a1)
{
  result = type metadata accessor for ConfirmationSnippetModel.MessageType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_267B693B0(uint64_t a1)
{
  sub_267B6942C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AudioMessagePlayer(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_267B6942C(uint64_t a1)
{
  if (!qword_2802194C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280219058, &qword_267B81C60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2802194C0);
    }
  }
}

_BYTE *sub_267B694B0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ConfirmationSnippetModel.MessageType.AttachmentCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_267B69678(_BYTE *result, int a2, int a3)
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

unint64_t sub_267B69728()
{
  result = qword_2802194C8;
  if (!qword_2802194C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194C8);
  }

  return result;
}

unint64_t sub_267B69780()
{
  result = qword_2802194D0;
  if (!qword_2802194D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194D0);
  }

  return result;
}

unint64_t sub_267B697D8()
{
  result = qword_2802194D8;
  if (!qword_2802194D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194D8);
  }

  return result;
}

unint64_t sub_267B69830()
{
  result = qword_2802194E0;
  if (!qword_2802194E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194E0);
  }

  return result;
}

unint64_t sub_267B69888()
{
  result = qword_2802194E8;
  if (!qword_2802194E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194E8);
  }

  return result;
}

unint64_t sub_267B698E0()
{
  result = qword_2802194F0;
  if (!qword_2802194F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194F0);
  }

  return result;
}

unint64_t sub_267B69938()
{
  result = qword_2802194F8;
  if (!qword_2802194F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194F8);
  }

  return result;
}

unint64_t sub_267B69990()
{
  result = qword_280219500;
  if (!qword_280219500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219500);
  }

  return result;
}

unint64_t sub_267B699E8()
{
  result = qword_280219508;
  if (!qword_280219508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219508);
  }

  return result;
}

unint64_t sub_267B69A40()
{
  result = qword_280219510;
  if (!qword_280219510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219510);
  }

  return result;
}

unint64_t sub_267B69A98()
{
  result = qword_280219518;
  if (!qword_280219518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219518);
  }

  return result;
}

unint64_t sub_267B69AF0()
{
  result = qword_280219520;
  if (!qword_280219520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219520);
  }

  return result;
}

unint64_t sub_267B69B48()
{
  result = qword_280219528;
  if (!qword_280219528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219528);
  }

  return result;
}

unint64_t sub_267B69BA0()
{
  result = qword_280219530;
  if (!qword_280219530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219530);
  }

  return result;
}

unint64_t sub_267B69BF8()
{
  result = qword_280219538;
  if (!qword_280219538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219538);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return sub_267B7E05C();
}

double AudioMessagePlayer.init(audioMessageURL:isDraft:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AudioMessagePlayer(0);
  v7 = v6[6];
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v8 = (a3 + v7);
  swift_beginAccess();
  v9 = qword_280218F18;
  *v8 = qword_280218F10;
  v8[1] = v9;
  v10 = (a3 + v6[7]);
  v11 = qword_280218F68;
  *v10 = qword_280218F60;
  v10[1] = v11;
  sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3();
  (*(v12 + 32))(a3, a1);
  *(a3 + v6[5]) = a2 & 1;

  return result;
}

uint64_t type metadata accessor for AudioMessagePlayer(uint64_t a1)
{
  result = qword_280219558;
  if (!qword_280219558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudioMessagePlayer.audioMessageURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t AudioMessagePlayer.audioMessageURL.setter()
{
  OUTLINED_FUNCTION_4_10();
  sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t AudioMessagePlayer.isDraft.setter(char a1)
{
  result = type metadata accessor for AudioMessagePlayer(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

void (*AudioMessagePlayer.isDraft.modify())()
{
  v0 = OUTLINED_FUNCTION_4_10();
  type metadata accessor for AudioMessagePlayer(v0);
  return nullsub_1;
}

uint64_t AudioMessagePlayer.sendLabelText.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioMessagePlayer(0) + 24));

  return v1;
}

uint64_t AudioMessagePlayer.sendLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioMessagePlayer(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*AudioMessagePlayer.sendLabelText.modify())()
{
  v0 = OUTLINED_FUNCTION_4_10();
  type metadata accessor for AudioMessagePlayer(v0);
  return nullsub_1;
}

uint64_t AudioMessagePlayer.audioMessageLabelText.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioMessagePlayer(0) + 28));

  return v1;
}

uint64_t AudioMessagePlayer.audioMessageLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioMessagePlayer(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*AudioMessagePlayer.audioMessageLabelText.modify())()
{
  v0 = OUTLINED_FUNCTION_4_10();
  type metadata accessor for AudioMessagePlayer(v0);
  return nullsub_1;
}

uint64_t sub_267B6A1AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73654D6F69647561 && a2 == 0xEF4C525565676173;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74666172447369 && a2 == 0xE700000000000000;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6562614C646E6573 && a2 == 0xED0000747865546CLL;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x8000000267B877B0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_267B7E16C();

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

unint64_t sub_267B6A31C(char a1)
{
  result = 0x73654D6F69647561;
  switch(a1)
  {
    case 1:
      result = 0x74666172447369;
      break;
    case 2:
      result = 0x6562614C646E6573;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B6A3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B6A1AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B6A3EC(uint64_t a1)
{
  v2 = sub_267B6A650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6A428(uint64_t a1)
{
  v2 = sub_267B6A650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioMessagePlayer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219540, &qword_267B83760);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6A650();
  sub_267B7E27C();
  v10[15] = 0;
  sub_267B7DA6C();
  sub_267B4D460(&qword_280218990, MEMORY[0x277CC9268]);
  OUTLINED_FUNCTION_6_7();
  sub_267B7E12C();
  if (!v1)
  {
    type metadata accessor for AudioMessagePlayer(0);
    v10[14] = 1;
    OUTLINED_FUNCTION_6_7();
    sub_267B7E10C();
    v10[13] = 2;
    OUTLINED_FUNCTION_6_7();
    sub_267B7E0FC();
    v10[12] = 3;
    OUTLINED_FUNCTION_6_7();
    sub_267B7E0FC();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_267B6A650()
{
  result = qword_280219548;
  if (!qword_280219548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219548);
  }

  return result;
}

uint64_t AudioMessagePlayer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v33 = sub_267B7DA6C();
  OUTLINED_FUNCTION_8();
  v29 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219550, &qword_267B83768);
  OUTLINED_FUNCTION_8();
  v31 = v9;
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v28 = type metadata accessor for AudioMessagePlayer(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v10);
  v30 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6A650();

  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v34 = 0;
    sub_267B4D460(&qword_2802189A0, MEMORY[0x277CC9280]);
    v12 = v33;
    sub_267B7E08C();
    (*(v29 + 32))(v30, v7, v12);
    v34 = 1;
    v30[v28[5]] = sub_267B7E06C() & 1;
    v13 = OUTLINED_FUNCTION_5_9(2);
    v15 = v14;

    v16 = &v30[v28[6]];
    *v16 = v13;
    v16[1] = v15;
    v26[1] = v15;
    v17 = OUTLINED_FUNCTION_5_9(3);
    v26[0] = v18;
    v19 = v17;
    v20 = v30;
    v21 = &v30[v28[7]];
    v22 = OUTLINED_FUNCTION_3_10();
    v23(v22);

    v24 = v26[0];
    *v21 = v19;
    *(v21 + 1) = v24;
    sub_267B6AA98(v20, v27);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_267B6AAFC(v20);
  }
}

uint64_t sub_267B6AA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioMessagePlayer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B6AAFC(uint64_t a1)
{
  v2 = type metadata accessor for AudioMessagePlayer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B6ABB0(uint64_t a1)
{
  result = sub_267B7DA6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioMessagePlayer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B6AD10()
{
  result = qword_280219568;
  if (!qword_280219568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219568);
  }

  return result;
}

unint64_t sub_267B6AD68()
{
  result = qword_280219570;
  if (!qword_280219570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219570);
  }

  return result;
}

unint64_t sub_267B6ADC0()
{
  result = qword_280219578;
  if (!qword_280219578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219578);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_9@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_267B7E05C();
}

uint64_t sub_267B6AE6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *&v16 = 0x692D6E6F69746361;
  *(&v16 + 1) = 0xE900000000000064;
  sub_267B7DF4C();
  sub_267B47B8C(a1, &v16, v15);
  sub_267B480F8(v15);
  if (v17)
  {
    if (swift_dynamicCast())
    {
      v6 = v13;
      v5 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    sub_267B6BF60(&v16, &qword_280219580, &qword_267B83940);
  }

  v6 = 0;
  v5 = 0;
LABEL_6:
  v15[0] = &type metadata for TapbackPromptSnippetAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802195C8, &unk_267B83990);
  v7 = sub_267B7DD7C();
  if (!v5)
  {

    goto LABEL_14;
  }

  if (v6 == v7 && v5 == v8)
  {

    goto LABEL_16;
  }

  v10 = sub_267B7E16C();

  if ((v10 & 1) == 0)
  {
LABEL_14:

    goto LABEL_21;
  }

LABEL_16:
  sub_267B7DF4C();
  sub_267B47B8C(a1, &v16, v15);

  sub_267B480F8(v15);
  if (!v17)
  {
    result = sub_267B6BF60(&v16, &qword_280219580, &qword_267B83940);
    goto LABEL_21;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_21:
    v12 = 6;
    goto LABEL_22;
  }

  sub_267B7D98C();
  swift_allocObject();
  sub_267B7D97C();
  sub_267B6C280();
  sub_267B7D96C();
  sub_267B3A524(0x642D6E6F69746361, 0xEB00000000617461);

  if (v2)
  {
    return result;
  }

  v12 = v15[0];
LABEL_22:
  *a2 = v12;
  return result;
}

uint64_t sub_267B6B10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v19 = 0x692D6E6F69746361;
  *(&v19 + 1) = 0xE900000000000064;
  sub_267B7DF4C();
  sub_267B47B8C(a1, &v19, &v16);
  sub_267B480F8(&v16);
  if (v20)
  {
    if (swift_dynamicCast())
    {
      v6 = v14;
      v5 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    sub_267B6BF60(&v19, &qword_280219580, &qword_267B83940);
  }

  v6 = 0;
  v5 = 0;
LABEL_6:
  *&v16 = &type metadata for UpdateSnippetAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802195B8, &qword_267B83988);
  v7 = sub_267B7DD7C();
  if (!v5)
  {

    goto LABEL_14;
  }

  if (v6 == v7 && v5 == v8)
  {

    goto LABEL_16;
  }

  v10 = sub_267B7E16C();

  if ((v10 & 1) == 0)
  {
LABEL_14:

    goto LABEL_21;
  }

LABEL_16:
  sub_267B7DF4C();
  sub_267B47B8C(a1, &v19, &v16);

  sub_267B480F8(&v16);
  if (!v20)
  {
    result = sub_267B6BF60(&v19, &qword_280219580, &qword_267B83940);
    goto LABEL_21;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_21:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  sub_267B7D98C();
  swift_allocObject();
  sub_267B7D97C();
  sub_267B6C22C();
  sub_267B7D96C();
  sub_267B3A524(0x642D6E6F69746361, 0xEB00000000617461);

  if (!v2)
  {
    v12 = v17;
    v13 = v18;
    *a2 = v16;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
  }

  return result;
}

uint64_t sub_267B6B3C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *&v16 = 0x692D6E6F69746361;
  *(&v16 + 1) = 0xE900000000000064;
  sub_267B7DF4C();
  sub_267B47B8C(a1, &v16, v15);
  sub_267B480F8(v15);
  if (v17)
  {
    if (swift_dynamicCast())
    {
      v6 = v13;
      v5 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    sub_267B6BF60(&v16, &qword_280219580, &qword_267B83940);
  }

  v6 = 0;
  v5 = 0;
LABEL_6:
  v15[0] = &type metadata for AutoSendableButtonAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802195A8, &qword_267B83980);
  v7 = sub_267B7DD7C();
  if (!v5)
  {

    goto LABEL_14;
  }

  if (v6 == v7 && v5 == v8)
  {

    goto LABEL_16;
  }

  v10 = sub_267B7E16C();

  if ((v10 & 1) == 0)
  {
LABEL_14:

    goto LABEL_21;
  }

LABEL_16:
  sub_267B7DF4C();
  sub_267B47B8C(a1, &v16, v15);

  sub_267B480F8(v15);
  if (!v17)
  {
    result = sub_267B6BF60(&v16, &qword_280219580, &qword_267B83940);
    goto LABEL_21;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_21:
    v12 = 2;
    goto LABEL_22;
  }

  sub_267B7D98C();
  swift_allocObject();
  sub_267B7D97C();
  sub_267B6C1D8();
  sub_267B7D96C();
  sub_267B3A524(0x642D6E6F69746361, 0xEB00000000617461);

  if (v2)
  {
    return result;
  }

  v12 = v15[0];
LABEL_22:
  *a2 = v12;
  return result;
}

uint64_t sub_267B6B664@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *&v16 = 0x692D6E6F69746361;
  *(&v16 + 1) = 0xE900000000000064;
  sub_267B7DF4C();
  sub_267B47B8C(a1, &v16, v15);
  sub_267B480F8(v15);
  if (v17)
  {
    if (swift_dynamicCast())
    {
      v6 = v13;
      v5 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    sub_267B6BF60(&v16, &qword_280219580, &qword_267B83940);
  }

  v6 = 0;
  v5 = 0;
LABEL_6:
  v15[0] = &type metadata for PayloadTextInputAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219598, &qword_267B83978);
  v7 = sub_267B7DD7C();
  if (!v5)
  {

    goto LABEL_14;
  }

  if (v6 == v7 && v5 == v8)
  {

    goto LABEL_16;
  }

  v10 = sub_267B7E16C();

  if ((v10 & 1) == 0)
  {
LABEL_14:

    goto LABEL_21;
  }

LABEL_16:
  sub_267B7DF4C();
  sub_267B47B8C(a1, &v16, v15);

  sub_267B480F8(v15);
  if (!v17)
  {
    result = sub_267B6BF60(&v16, &qword_280219580, &qword_267B83940);
    goto LABEL_21;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_21:
    v12 = 1;
    goto LABEL_22;
  }

  sub_267B7D98C();
  swift_allocObject();
  sub_267B7D97C();
  sub_267B6C184();
  sub_267B7D96C();
  sub_267B3A524(0x642D6E6F69746361, 0xEB00000000617461);

  if (v2)
  {
    return result;
  }

  v12 = 0;
LABEL_22:
  *a2 = v12;
  return result;
}

uint64_t CustomCanvasAction<>.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = *(a2 - 8);
  v27 = a4;
  MEMORY[0x28223BE20](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_16();
  *&v31 = v11 & 0xFFFFFFFFFFFFLL | 0x692D000000000000;
  *(&v31 + 1) = 0xE900000000000064;
  sub_267B7DF4C();
  sub_267B47B8C(a1, &v31, v30);
  sub_267B480F8(v30);
  if (v32)
  {
    if (swift_dynamicCast())
    {
      v12 = v28;
      v13 = v29;
      goto LABEL_6;
    }
  }

  else
  {
    sub_267B6BF60(&v31, &qword_280219580, &qword_267B83940);
  }

  v12 = 0;
  v13 = 0;
LABEL_6:
  v14 = (*(a3 + 16))(a2, a3);
  if (!v13)
  {

    goto LABEL_14;
  }

  if (v12 == v14 && v13 == v15)
  {

    goto LABEL_16;
  }

  v17 = sub_267B7E16C();

  if ((v17 & 1) == 0)
  {
LABEL_14:

    goto LABEL_21;
  }

LABEL_16:
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_18();
  v28 = v18;
  v29 = v19;
  sub_267B7DF4C();
  sub_267B47B8C(a1, &v31, v30);

  sub_267B480F8(v30);
  if (!v32)
  {
    sub_267B6BF60(&v31, &qword_280219580, &qword_267B83940);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v24 = 1;
    return __swift_storeEnumTagSinglePayload(a5, v24, 1, a2);
  }

  v20 = v28;
  v21 = v29;
  sub_267B7D98C();
  swift_allocObject();
  sub_267B7D97C();
  v22 = v33;
  sub_267B7D96C();
  sub_267B3A524(v20, v21);

  if (v22)
  {
    return result;
  }

  (*(v26 + 32))(a5, v10, a2);
  v24 = 0;
  return __swift_storeEnumTagSinglePayload(a5, v24, 1, a2);
}

uint64_t CustomCanvasAction<>.toSharedState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219588, &qword_267B83948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267B83930;
  OUTLINED_FUNCTION_0_16();
  v8 = MEMORY[0x277D837D0];
  sub_267B7DF4C();
  v9 = (*(a2 + 16))(a1, a2);
  *(inited + 96) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_18();
  sub_267B7DF4C();
  sub_267B7D9BC();
  swift_allocObject();
  sub_267B7D9AC();
  v11 = sub_267B7D99C();
  if (v4)
  {

    sub_267B480F8(inited + 104);
    sub_267B6BF60(inited + 32, &qword_280219590, &qword_267B83950);
    *(inited + 16) = 0;
    swift_setDeallocating();
    return sub_267B6C0E8();
  }

  else
  {
    v14 = v11;
    v15 = v12;

    *(inited + 168) = MEMORY[0x277CC9318];
    *(inited + 144) = v14;
    *(inited + 152) = v15;
    return sub_267B7DD2C();
  }
}

uint64_t sub_267B6BF60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *CustomCanvasAction<>.serializedData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  CustomCanvasAction<>.toSharedState()(a1, a2, a3, a4);
  if (!v5)
  {
    v6 = objc_opt_self();
    v7 = sub_267B7DD0C();

    v11[0] = 0;
    v8 = [v6 dataWithPropertyList:v7 format:200 options:0 error:v11];

    v9 = v11[0];
    if (v8)
    {
      v4 = sub_267B7DA9C();
    }

    else
    {
      v4 = v9;
      sub_267B7D9CC();

      swift_willThrow();
    }
  }

  return v4;
}

uint64_t sub_267B6C0E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219590, &qword_267B83950);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_267B6C184()
{
  result = qword_2802195A0;
  if (!qword_2802195A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195A0);
  }

  return result;
}

unint64_t sub_267B6C1D8()
{
  result = qword_2802195B0;
  if (!qword_2802195B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195B0);
  }

  return result;
}

unint64_t sub_267B6C22C()
{
  result = qword_2802195C0;
  if (!qword_2802195C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195C0);
  }

  return result;
}

unint64_t sub_267B6C280()
{
  result = qword_2802195D0;
  if (!qword_2802195D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195D0);
  }

  return result;
}

uint64_t AppSash.init(appBundleIdentifier:launchAppWithIntent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t AppSash.appBundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppSash.appBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *AppSash.launchAppWithIntent.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *sub_267B6C3BC@<X0>(void *a1@<X8>)
{
  result = AppSash.launchAppWithIntent.getter();
  *a1 = result;
  return result;
}

void sub_267B6C400(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AppSash.launchAppWithIntent.setter(v1);
}

void (*AppSash.launchAppWithIntent.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F880;
}

uint64_t sub_267B6C47C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000267B873E0 == a2;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000267B870C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B7E16C();

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

uint64_t sub_267B6C588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B6C47C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B6C5B0(uint64_t a1)
{
  v2 = sub_267B6C7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6C5EC(uint64_t a1)
{
  v2 = sub_267B6C7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSash.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802195D8, &unk_267B839A0);
  OUTLINED_FUNCTION_8();
  v13 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6C7EC();
  sub_267B7E27C();
  v16 = 0;
  sub_267B7E0FC();
  if (!v2)
  {
    v14 = v12;
    v15 = 1;
    v9 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D98, &qword_267B860E0);
    sub_267B532EC(&qword_280218DA0, &protocol conformance descriptor for ModelCodable<A>);
    sub_267B7E12C();
  }

  return (*(v13 + 8))(v8, v4);
}

unint64_t sub_267B6C7EC()
{
  result = qword_2802195E0;
  if (!qword_2802195E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195E0);
  }

  return result;
}

uint64_t AppSash.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802195E8, &qword_267B839B0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6C7EC();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v6 = sub_267B7E05C();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D98, &qword_267B860E0);
  sub_267B532EC(&qword_280218DB0, &protocol conformance descriptor for ModelCodable<A>);
  sub_267B7E08C();
  v9 = OUTLINED_FUNCTION_4();
  v10(v9);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v13;
  v11 = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_267B6CA88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_267B6CAC8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for AppSash.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B6CBF8()
{
  result = qword_2802195F0;
  if (!qword_2802195F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195F0);
  }

  return result;
}

unint64_t sub_267B6CC50()
{
  result = qword_2802195F8;
  if (!qword_2802195F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195F8);
  }

  return result;
}

unint64_t sub_267B6CCA8()
{
  result = qword_280219600;
  if (!qword_280219600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219600);
  }

  return result;
}

SiriMessagesCommon::ReadingCarPlayButton __swiftcall ReadingCarPlayButton.init(speechDuration:readingInProgressLabelText:)(Swift::Double speechDuration, Swift::String readingInProgressLabelText)
{
  object = readingInProgressLabelText._object;
  countAndFlagsBits = readingInProgressLabelText._countAndFlagsBits;
  v6 = v2;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    readingInProgressLabelText._countAndFlagsBits = swift_once();
  }

  *v6 = speechDuration;
  *(v6 + 8) = countAndFlagsBits;
  *(v6 + 16) = object;
  result.readingInProgressLabelText = readingInProgressLabelText;
  result.speechDuration = speechDuration;
  return result;
}

uint64_t ReadingCarPlayButton.readingInProgressLabelText.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ReadingCarPlayButton.readingInProgressLabelText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_267B6CE1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7544686365657073 && a2 == 0xEE006E6F69746172;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000267B877D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B7E16C();

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

uint64_t sub_267B6CEF4(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x7544686365657073;
  }
}

uint64_t sub_267B6CF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B6CE1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B6CF6C(uint64_t a1)
{
  v2 = sub_267B6D158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6CFA8(uint64_t a1)
{
  v2 = sub_267B6D158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReadingCarPlayButton.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219608, &qword_267B83B80);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6D158();
  sub_267B7E27C();
  v13 = 0;
  sub_267B7E11C();
  if (!v2)
  {
    v12 = 1;
    sub_267B7E0FC();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_267B6D158()
{
  result = qword_280219610;
  if (!qword_280219610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219610);
  }

  return result;
}

uint64_t ReadingCarPlayButton.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219618, &qword_267B83B88);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6D158();

  sub_267B7E25C();
  if (!v2)
  {
    v19 = 0;
    OUTLINED_FUNCTION_2();
    sub_267B7E07C();
    v11 = v10;
    v19 = 1;
    OUTLINED_FUNCTION_2();
    v13 = sub_267B7E05C();
    v15 = v14;
    (*(v6 + 8))(v9, v4);

    v16 = v18;
    *v18 = v11;
    v16[1] = v13;
    v16[2] = v15;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_267B6D3E4(uint64_t a1, int a2)
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

uint64_t sub_267B6D424(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ReadingCarPlayButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B6D554()
{
  result = qword_280219620;
  if (!qword_280219620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219620);
  }

  return result;
}

unint64_t sub_267B6D5AC()
{
  result = qword_280219628;
  if (!qword_280219628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219628);
  }

  return result;
}

unint64_t sub_267B6D604()
{
  result = qword_280219630;
  if (!qword_280219630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219630);
  }

  return result;
}

uint64_t VideoAttachment.init(urls:isDraft:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for SecurityScopedURL();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

double VideoAttachment.urls.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_267B6D730(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;

  VideoAttachment.urls.setter(v2);
}

uint64_t VideoAttachment.urls.setter(uint64_t a1)
{
  v3 = *v1;
  sub_267B465DC();
  swift_beginAccess();
  *(v3 + 16) = a1;
}

void (*VideoAttachment.urls.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_267B46784(v2);
  return sub_267B41AA0;
}

uint64_t sub_267B6D880(uint64_t a1)
{
  v2 = sub_267B6DAAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6D8BC(uint64_t a1)
{
  v2 = sub_267B6DAAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAttachment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219638, &qword_267B83D60);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v10 = *v1;
  v12[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6DAAC();

  sub_267B7E27C();
  v15 = v10;
  v14 = 0;
  type metadata accessor for SecurityScopedURL();
  sub_267B6DCF4(&qword_280218C58, &protocol conformance descriptor for SecurityScopedURL);
  sub_267B7E12C();

  if (!v2)
  {
    v13 = 1;
    sub_267B7E10C();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_267B6DAAC()
{
  result = qword_280219640;
  if (!qword_280219640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219640);
  }

  return result;
}

uint64_t VideoAttachment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219648, &qword_267B83D68);
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6DAAC();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  type metadata accessor for SecurityScopedURL();
  v14[15] = 0;
  sub_267B6DCF4(&qword_280218C68, &protocol conformance descriptor for SecurityScopedURL);
  sub_267B7E08C();
  v11 = v15;
  v14[14] = 1;
  v12 = sub_267B7E06C();
  (*(v7 + 8))(v10, v5);
  *a2 = v11;
  *(a2 + 8) = v12 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_267B6DCF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SecurityScopedURL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267B6DD40(uint64_t a1)
{
  *(a1 + 16) = sub_267B4518C();
  result = sub_267B44F08();
  *(a1 + 24) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoAttachment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B6DE90()
{
  result = qword_280219650;
  if (!qword_280219650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219650);
  }

  return result;
}

unint64_t sub_267B6DEE8()
{
  result = qword_280219658;
  if (!qword_280219658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219658);
  }

  return result;
}

unint64_t sub_267B6DF40()
{
  result = qword_280219660;
  if (!qword_280219660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219660);
  }

  return result;
}

id SAIntentGroupProtobufMessage.init(response:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [a1 backingStore];
  if (result)
  {
    v4 = sub_267B3A4A0(result);
    if (v5 >> 60 == 15)
    {
      v6 = 0;
    }

    else
    {
      v7 = v4;
      v8 = v5;
      v6 = sub_267B7DA7C();
      sub_267B3A510(v7, v8);
    }

    [v2 setData_];

    sub_267B6E16C(a1);
    if (v9)
    {
      v10 = sub_267B7DD4C();
    }

    else
    {
      v10 = 0;
    }

    [v2 setTypeName_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SAIntentGroupLaunchAppWithIntent.init(intent:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267B3A6E0();
  v3 = v2;
  v4 = a1;
  v5 = SAIntentGroupProtobufMessage.init(intent:)(v4);
  [v3 setHandledIntent_];

  INIntent.launchBundleIdentifier.getter();
  if (v6)
  {
    v7 = sub_267B7DD4C();
  }

  else
  {
    v7 = 0;
  }

  [v3 setAppId_];

  return v3;
}

uint64_t sub_267B6E16C(void *a1)
{
  v1 = [a1 _payloadResponseTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267B7DD5C();

  return v3;
}

uint64_t static TextBalloon.ServiceType.serviceFor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_267B7DD5C();
  if (a2)
  {
    if (v7 == a1 && v8 == a2)
    {
LABEL_16:

      goto LABEL_17;
    }

    OUTLINED_FUNCTION_1_19(v7);
    result = OUTLINED_FUNCTION_9_4();
    if (v3)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v11 = sub_267B7DD5C();
  if (!a2)
  {

    goto LABEL_19;
  }

  if (v11 == a1 && v12 == a2)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1_19(v11);
  result = OUTLINED_FUNCTION_9_4();
  if ((v3 & 1) == 0)
  {
LABEL_19:
    v15 = sub_267B7DD5C();
    if (a2)
    {
      if (v15 == a1 && v16 == a2)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_1_19(v15);
      result = OUTLINED_FUNCTION_9_4();
      if (v3)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    v18 = sub_267B7DD5C();
    if (a2)
    {
      if (v18 == a1 && v19 == a2)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_1_19(v18);
      result = OUTLINED_FUNCTION_9_4();
      if (v3)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    v21 = sub_267B7DD5C();
    if (!a2)
    {

LABEL_46:
      v14 = 2;
      goto LABEL_44;
    }

    if (v21 != a1 || v22 != a2)
    {
      v24 = OUTLINED_FUNCTION_1_19(v21);

      if ((v24 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_43:
      v14 = 1;
      goto LABEL_44;
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_17:
  v14 = 0;
LABEL_44:
  *a3 = v14;
  return result;
}

uint64_t sub_267B6E378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373654D69 && a2 == 0xE800000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7564659 && a2 == 0xE300000000000000;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_267B7E16C();

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

uint64_t sub_267B6E484(char a1)
{
  if (!a1)
  {
    return 0x6567617373654D69;
  }

  if (a1 == 1)
  {
    return 7564659;
  }

  return 0x726568746FLL;
}

uint64_t sub_267B6E4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B6E378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B6E500(uint64_t a1)
{
  v2 = sub_267B6E9CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6E53C(uint64_t a1)
{
  v2 = sub_267B6E9CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B6E578(uint64_t a1)
{
  v2 = sub_267B6EAC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6E5B4(uint64_t a1)
{
  v2 = sub_267B6EAC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B6E5F0(uint64_t a1)
{
  v2 = sub_267B6EA20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6E62C(uint64_t a1)
{
  v2 = sub_267B6EA20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B6E668(uint64_t a1)
{
  v2 = sub_267B6EA74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6E6A4(uint64_t a1)
{
  v2 = sub_267B6EA74();

  return MEMORY[0x2821FE720](a1, v2);
}

void TextBalloon.ServiceType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_1();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219670, &qword_267B83F50);
  OUTLINED_FUNCTION_8();
  v58 = v30;
  v59 = v29;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  v57 = &v51 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219678, &qword_267B83F58);
  OUTLINED_FUNCTION_8();
  v55 = v34;
  v56 = v33;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  v54 = &v51 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219680, &qword_267B83F60);
  OUTLINED_FUNCTION_8();
  v52 = v38;
  v53 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  v41 = &v51 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219688, &qword_267B83F68);
  OUTLINED_FUNCTION_8();
  v44 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v45);
  v47 = &v51 - v46;
  v48 = *v24;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_267B6E9CC();
  sub_267B7E27C();
  if (v48)
  {
    if (v48 == 1)
    {
      a13 = 1;
      sub_267B6EA74();
      v41 = v54;
      OUTLINED_FUNCTION_3_11(&type metadata for TextBalloon.ServiceType.SmsCodingKeys, &a13);
      v50 = v55;
      v49 = v56;
    }

    else
    {
      a14 = 2;
      sub_267B6EA20();
      v41 = v57;
      OUTLINED_FUNCTION_3_11(&type metadata for TextBalloon.ServiceType.OtherCodingKeys, &a14);
      v50 = v58;
      v49 = v59;
    }
  }

  else
  {
    a12 = 0;
    sub_267B6EAC8();
    OUTLINED_FUNCTION_3_11(&type metadata for TextBalloon.ServiceType.IMessageCodingKeys, &a12);
    v50 = v52;
    v49 = v53;
  }

  (*(v50 + 8))(v41, v49);
  (*(v44 + 8))(v47, v42);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B6E9CC()
{
  result = qword_280219690;
  if (!qword_280219690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219690);
  }

  return result;
}

unint64_t sub_267B6EA20()
{
  result = qword_280219698;
  if (!qword_280219698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219698);
  }

  return result;
}

unint64_t sub_267B6EA74()
{
  result = qword_2802196A0;
  if (!qword_2802196A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802196A0);
  }

  return result;
}

unint64_t sub_267B6EAC8()
{
  result = qword_2802196A8;
  if (!qword_2802196A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802196A8);
  }

  return result;
}

uint64_t TextBalloon.ServiceType.hashValue.getter()
{
  v1 = *v0;
  sub_267B7E21C();
  MEMORY[0x26D601BE0](v1);
  return sub_267B7E23C();
}

void TextBalloon.ServiceType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_1();
  a23 = v25;
  a24 = v26;
  v86 = v24;
  v28 = v27;
  v81 = v29;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802196B0, &qword_267B83F70);
  OUTLINED_FUNCTION_8();
  v82 = v30;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  v84 = &v73 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802196B8, &qword_267B83F78);
  OUTLINED_FUNCTION_8();
  v79 = v34;
  v80 = v33;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  v37 = &v73 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802196C0, &qword_267B83F80);
  OUTLINED_FUNCTION_8();
  v78 = v39;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v40);
  v42 = &v73 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802196C8, &unk_267B83F88);
  OUTLINED_FUNCTION_8();
  v83 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v45);
  v47 = &v73 - v46;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_267B6E9CC();
  v48 = v86;
  sub_267B7E25C();
  if (v48)
  {
    goto LABEL_10;
  }

  v75 = v38;
  v76 = v42;
  v77 = v37;
  v50 = v84;
  v49 = v85;
  v86 = v28;
  sub_267B7E09C();
  sub_267B45CC4();
  if (v52 == v53 >> 1)
  {
    goto LABEL_9;
  }

  v74 = 0;
  if (v52 < (v53 >> 1))
  {
    LODWORD(v54) = *(v51 + v52);
    sub_267B45CBC();
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    v59 = v56 == v58 >> 1;
    v60 = v82;
    if (v59)
    {
      if (v54)
      {
        if (v54 == 1)
        {
          a13 = 1;
          sub_267B6EA74();
          v61 = v77;
          OUTLINED_FUNCTION_6_8(&type metadata for TextBalloon.ServiceType.SmsCodingKeys, &a13);
          v62 = v81;
          v63 = v43;
          v64 = v83;
          swift_unknownObjectRelease();
          (*(v79 + 8))(v61, v80);
          (*(v64 + 8))(v47, v63);
        }

        else
        {
          LODWORD(v80) = v54;
          a14 = 2;
          sub_267B6EA20();
          v69 = v74;
          sub_267B7DFFC();
          v62 = v81;
          v54 = v43;
          v70 = v83;
          if (v69)
          {
            (*(v83 + 8))(v47, v54);
            swift_unknownObjectRelease();
            v28 = v86;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v60 + 8))(v50, v49);
          (*(v70 + 8))(v47, v54);
          LOBYTE(v54) = v80;
        }
      }

      else
      {
        a12 = 0;
        sub_267B6EAC8();
        v68 = v76;
        OUTLINED_FUNCTION_6_8(&type metadata for TextBalloon.ServiceType.IMessageCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v78 + 8))(v68, v75);
        v71 = OUTLINED_FUNCTION_5_10();
        v72(v71);
        v62 = v81;
      }

      *v62 = v54;
      __swift_destroy_boxed_opaque_existential_0(v86);
      goto LABEL_11;
    }

LABEL_9:
    v65 = sub_267B7DFBC();
    swift_allocError();
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580);
    *v67 = &type metadata for TextBalloon.ServiceType;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x277D84160], v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v83 + 8))(v47, v43);
    v28 = v86;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v28);
LABEL_11:
    OUTLINED_FUNCTION_14();
    return;
  }

  __break(1u);
}

SiriMessagesCommon::TextBalloon __swiftcall TextBalloon.init(payload:serviceType:)(SiriMessagesCommon::TextBalloon payload, SiriMessagesCommon::TextBalloon::ServiceType serviceType)
{
  v3 = *serviceType;
  *v2 = payload.payload;
  *(v2 + 16) = v3;
  payload.serviceType = serviceType;
  return payload;
}

uint64_t TextBalloon.payload.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TextBalloon.payload.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_267B6F240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5465636976726573 && a2 == 0xEB00000000657079)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B7E16C();

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

uint64_t sub_267B6F30C(char a1)
{
  if (a1)
  {
    return 0x5465636976726573;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

uint64_t sub_267B6F354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B6F240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B6F37C(uint64_t a1)
{
  v2 = sub_267B6F754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6F3B8(uint64_t a1)
{
  v2 = sub_267B6F754();

  return MEMORY[0x2821FE720](a1, v2);
}

void TextBalloon.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_1();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802196D0, &qword_267B83F98);
  OUTLINED_FUNCTION_8();
  v33 = v28;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  v31 = &v32 - v30;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_267B6F754();
  sub_267B7E27C();
  sub_267B7E0FC();
  if (!v24)
  {
    sub_267B6F7A8();
    sub_267B7E12C();
  }

  (*(v33 + 8))(v31, v27);
  OUTLINED_FUNCTION_14();
}

void TextBalloon.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_1();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802196E8, &qword_267B83FA0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_267B6F754();
  sub_267B7E25C();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    v30 = sub_267B7E05C();
    v32 = v31;
    sub_267B6F7FC();
    sub_267B7E08C();
    v33 = OUTLINED_FUNCTION_4();
    v34(v33);
    *v28 = v30;
    *(v28 + 8) = v32;
    *(v28 + 16) = a13;

    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B6F754()
{
  result = qword_2802196D8;
  if (!qword_2802196D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802196D8);
  }

  return result;
}

unint64_t sub_267B6F7A8()
{
  result = qword_2802196E0;
  if (!qword_2802196E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802196E0);
  }

  return result;
}

unint64_t sub_267B6F7FC()
{
  result = qword_2802196F0;
  if (!qword_2802196F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802196F0);
  }

  return result;
}

unint64_t sub_267B6F854()
{
  result = qword_2802196F8;
  if (!qword_2802196F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802196F8);
  }

  return result;
}

uint64_t sub_267B6F8A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_267B6F8E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextBalloon.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_267B6FA24(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B6FB34()
{
  result = qword_280219700;
  if (!qword_280219700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219700);
  }

  return result;
}

unint64_t sub_267B6FB8C()
{
  result = qword_280219708;
  if (!qword_280219708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219708);
  }

  return result;
}

unint64_t sub_267B6FBE4()
{
  result = qword_280219710;
  if (!qword_280219710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219710);
  }

  return result;
}

unint64_t sub_267B6FC3C()
{
  result = qword_280219718;
  if (!qword_280219718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219718);
  }

  return result;
}

unint64_t sub_267B6FC94()
{
  result = qword_280219720;
  if (!qword_280219720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219720);
  }

  return result;
}

unint64_t sub_267B6FCEC()
{
  result = qword_280219728;
  if (!qword_280219728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219728);
  }

  return result;
}

unint64_t sub_267B6FD44()
{
  result = qword_280219730;
  if (!qword_280219730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219730);
  }

  return result;
}

unint64_t sub_267B6FD9C()
{
  result = qword_280219738;
  if (!qword_280219738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219738);
  }

  return result;
}

unint64_t sub_267B6FDF4()
{
  result = qword_280219740;
  if (!qword_280219740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219740);
  }

  return result;
}

unint64_t sub_267B6FE4C()
{
  result = qword_280219748;
  if (!qword_280219748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219748);
  }

  return result;
}

unint64_t sub_267B6FEA4()
{
  result = qword_280219750;
  if (!qword_280219750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219750);
  }

  return result;
}

unint64_t sub_267B6FEFC()
{
  result = qword_280219758;
  if (!qword_280219758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219758);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2)
{

  return sub_267B7E0BC();
}

uint64_t AppDisambiguationSnippetModel.title.getter()
{
  v1 = *v0;

  return v1;
}

SiriMessagesCommon::AppDisambiguationSnippetModel __swiftcall AppDisambiguationSnippetModel.init(title:appBundleIdentifiers:)(Swift::String title, Swift::OpaquePointer appBundleIdentifiers)
{
  *v2 = title;
  *(v2 + 16) = appBundleIdentifiers;
  result.title = title;
  result.appBundleIdentifiers = appBundleIdentifiers;
  return result;
}

uint64_t AppDisambiguationSnippetModel.description.getter()
{
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD00000000000003ALL, 0x8000000267B877F0);
  v0 = sub_267B7E14C();
  MEMORY[0x26D601760](v0);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_267B7007C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000267B876B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B7E16C();

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

uint64_t sub_267B70148(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_267B70188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B7007C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B701B0(uint64_t a1)
{
  v2 = sub_267B703E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B701EC(uint64_t a1)
{
  v2 = sub_267B703E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppDisambiguationSnippetModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219760, &unk_267B84570);
  OUTLINED_FUNCTION_8();
  v12 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B703E8();
  sub_267B7E27C();
  v15 = 0;
  sub_267B7E0FC();
  if (!v2)
  {
    v13 = v11;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    sub_267B4A554(&qword_2802189E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_267B7E12C();
  }

  return (*(v12 + 8))(v8, v4);
}

unint64_t sub_267B703E8()
{
  result = qword_280219768;
  if (!qword_280219768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219768);
  }

  return result;
}

uint64_t AppDisambiguationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219770, &qword_267B84580);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B703E8();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v6 = sub_267B7E05C();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
  sub_267B4A554(&qword_2802189C0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_267B7E08C();
  v9 = OUTLINED_FUNCTION_4();
  v10(v9);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_267B70664()
{
  result = qword_280219778;
  if (!qword_280219778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219778);
  }

  return result;
}

unint64_t sub_267B706BC()
{
  result = qword_280219780;
  if (!qword_280219780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219780);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppDisambiguationSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B70834()
{
  result = qword_280219788;
  if (!qword_280219788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219788);
  }

  return result;
}

unint64_t sub_267B7088C()
{
  result = qword_280219790;
  if (!qword_280219790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219790);
  }

  return result;
}

unint64_t sub_267B708E4()
{
  result = qword_280219798;
  if (!qword_280219798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219798);
  }

  return result;
}

SiriMessagesCommon::ReadingCompactCarPlayButton __swiftcall ReadingCompactCarPlayButton.init(speechDuration:)(Swift::Double speechDuration)
{
  v3 = v1;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280218F78;
  *(v3 + 8) = qword_280218F70;
  *(v3 + 16) = v4;
  *v3 = speechDuration;

  result.speechDuration = v7;
  result.readingInProgressLabelText._object = v6;
  result.readingInProgressLabelText._countAndFlagsBits = v5;
  return result;
}

uint64_t ReadingCompactCarPlayButton.readingInProgressLabelText.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ReadingCompactCarPlayButton.readingInProgressLabelText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_267B70A74(uint64_t a1)
{
  v2 = sub_267B70C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B70AB0(uint64_t a1)
{
  v2 = sub_267B70C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReadingCompactCarPlayButton.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197A0, &qword_267B847B0);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B70C60();
  sub_267B7E27C();
  v13 = 0;
  sub_267B7E11C();
  if (!v2)
  {
    v12 = 1;
    sub_267B7E0FC();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_267B70C60()
{
  result = qword_2802197A8;
  if (!qword_2802197A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802197A8);
  }

  return result;
}

uint64_t ReadingCompactCarPlayButton.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197B0, &qword_267B847B8);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B70C60();

  sub_267B7E25C();
  if (!v2)
  {
    v19 = 0;
    OUTLINED_FUNCTION_2();
    sub_267B7E07C();
    v11 = v10;
    v19 = 1;
    OUTLINED_FUNCTION_2();
    v13 = sub_267B7E05C();
    v15 = v14;
    (*(v6 + 8))(v9, v4);

    v16 = v18;
    *v18 = v11;
    v16[1] = v13;
    v16[2] = v15;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

_BYTE *storeEnumTagSinglePayload for ReadingCompactCarPlayButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B70FDC()
{
  result = qword_2802197B8;
  if (!qword_2802197B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802197B8);
  }

  return result;
}

unint64_t sub_267B71034()
{
  result = qword_2802197C0;
  if (!qword_2802197C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802197C0);
  }

  return result;
}

unint64_t sub_267B7108C()
{
  result = qword_2802197C8;
  if (!qword_2802197C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802197C8);
  }

  return result;
}

uint64_t static ButtonSnippetModel.Action.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v35 = sub_267B7DA6C();
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  type metadata accessor for ButtonSnippetModel.Action(0);
  OUTLINED_FUNCTION_3_3();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197D0, &qword_267B84990);
  OUTLINED_FUNCTION_12();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v20 = (&v34 + *(v17 + 56) - v18);
  sub_267B72B24(a1, &v34 - v18, type metadata accessor for ButtonSnippetModel.Action);
  sub_267B72B24(a2, v20, type metadata accessor for ButtonSnippetModel.Action);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_267B72B24(v19, v15, v27);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = v35;
      (*(v5 + 32))(v9, v20, v35);
      v28 = sub_267B7DA1C();
      v30 = *(v5 + 8);
      v30(v9, v29);
      v30(v15, v29);
      OUTLINED_FUNCTION_1_20();
      sub_267B72B84(v19, v31);
      return v28 & 1;
    }

    (*(v5 + 8))(v15, v35);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_0_17();
  sub_267B72B24(v19, v13, v21);
  v23 = *v13;
  v22 = v13[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_267B7140C(v19);
    goto LABEL_13;
  }

  if (v23 == *v20 && v22 == v20[1])
  {

    goto LABEL_16;
  }

  v25 = sub_267B7E16C();

  if (v25)
  {
LABEL_16:
    OUTLINED_FUNCTION_1_20();
    sub_267B72B84(v19, v32);
    v28 = 1;
    return v28 & 1;
  }

  OUTLINED_FUNCTION_1_20();
  sub_267B72B84(v19, v26);
LABEL_13:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_267B7140C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197D0, &qword_267B84990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B71474(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6E694C6E65706FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704168636E75616CLL && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B7E16C();

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

uint64_t sub_267B71544(char a1)
{
  if (a1)
  {
    return 0x704168636E75616CLL;
  }

  else
  {
    return 0x6B6E694C6E65706FLL;
  }
}

uint64_t sub_267B71588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B71474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B715B0(uint64_t a1)
{
  v2 = sub_267B71B34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B715EC(uint64_t a1)
{
  v2 = sub_267B71B34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B71628(uint64_t a1)
{
  v2 = sub_267B71B88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B71664(uint64_t a1)
{
  v2 = sub_267B71B88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B716A0(uint64_t a1)
{
  v2 = sub_267B71BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B716DC(uint64_t a1)
{
  v2 = sub_267B71BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ButtonSnippetModel.Action.encode(to:)(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197D8, &qword_267B84998);
  OUTLINED_FUNCTION_8();
  v37 = v2;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v33 = v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197E0, &qword_267B849A0);
  OUTLINED_FUNCTION_8();
  v38 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_0();
  v34 = v7;
  sub_267B7DA6C();
  OUTLINED_FUNCTION_8();
  v35 = v9;
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  type metadata accessor for ButtonSnippetModel.Action(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197E8, &qword_267B849A8);
  OUTLINED_FUNCTION_8();
  v19 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B71B34();
  sub_267B7E27C();
  OUTLINED_FUNCTION_0_17();
  sub_267B72B24(v41, v16, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = 1;
    sub_267B71B88();
    v24 = v33;
    sub_267B7E0BC();
    v25 = v39;
    sub_267B7E0FC();

    (*(v37 + 8))(v24, v25);
  }

  else
  {
    v28 = v35;
    v27 = v36;
    (*(v35 + 32))(v12, v16, v36);
    v42 = 0;
    sub_267B71BDC();
    v29 = v34;
    sub_267B7E0BC();
    OUTLINED_FUNCTION_6_9();
    sub_267B72A68(v30, v31, MEMORY[0x277CC9268]);
    v32 = v40;
    sub_267B7E12C();
    (*(v38 + 8))(v29, v32);
    (*(v28 + 8))(v12, v27);
  }

  return (*(v19 + 8))(v22, v17);
}

unint64_t sub_267B71B34()
{
  result = qword_2802197F0;
  if (!qword_2802197F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802197F0);
  }

  return result;
}

unint64_t sub_267B71B88()
{
  result = qword_2802197F8;
  if (!qword_2802197F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802197F8);
  }

  return result;
}

unint64_t sub_267B71BDC()
{
  result = qword_280219800;
  if (!qword_280219800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219800);
  }

  return result;
}

void ButtonSnippetModel.Action.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219808, &qword_267B849B0);
  OUTLINED_FUNCTION_8();
  v70 = v3;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_0();
  v72 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219810, &qword_267B849B8);
  OUTLINED_FUNCTION_8();
  v68 = v7;
  v69 = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  v71 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219818, &unk_267B849C0);
  OUTLINED_FUNCTION_8();
  v73 = v11;
  v74 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = type metadata accessor for ButtonSnippetModel.Action(0);
  OUTLINED_FUNCTION_3_3();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v62 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B71B34();
  v25 = v75;
  sub_267B7E25C();
  if (v25)
  {
    goto LABEL_8;
  }

  v63 = v24;
  v64 = v19;
  v62 = v22;
  v65 = v15;
  v75 = a1;
  v26 = v74;
  v27 = sub_267B7E09C();
  sub_267B45154(v27, 0);
  if (v29 == v30 >> 1)
  {
LABEL_7:
    v39 = v65;
    v40 = sub_267B7DFBC();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580);
    *v42 = v39;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = OUTLINED_FUNCTION_8_9();
    v44(v43, v26);
    a1 = v75;
LABEL_8:
    v45 = a1;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v45);
    return;
  }

  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    sub_267B45CBC();
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    v36 = v64;
    if (v33 == v35 >> 1)
    {
      v37 = v31;
      v38 = v26;
      if (v37)
      {
        v77 = 1;
        sub_267B71B88();
        OUTLINED_FUNCTION_13_4(&type metadata for ButtonSnippetModel.Action.LaunchAppCodingKeys, &v77);
        v50 = sub_267B7E05C();
        v52 = v51;
        swift_unknownObjectRelease();
        v53 = OUTLINED_FUNCTION_11_3();
        v54(v53);
        v55 = OUTLINED_FUNCTION_8_9();
        v56(v55, v26);
        *v36 = v50;
        v36[1] = v52;
        swift_storeEnumTagMultiPayload();
        v57 = v36;
        v58 = v66;
        v59 = v63;
      }

      else
      {
        v76 = 0;
        sub_267B71BDC();
        OUTLINED_FUNCTION_13_4(&type metadata for ButtonSnippetModel.Action.OpenLinkCodingKeys, &v76);
        v59 = v63;
        sub_267B7DA6C();
        OUTLINED_FUNCTION_6_9();
        sub_267B72A68(v46, v47, MEMORY[0x277CC9280]);
        v48 = v62;
        sub_267B7E08C();
        v49 = v73;
        swift_unknownObjectRelease();
        v60 = OUTLINED_FUNCTION_12_3();
        v61(v60);
        (*(v49 + 8))(v14, v38);
        swift_storeEnumTagMultiPayload();
        v57 = v48;
        v58 = v66;
      }

      sub_267B72A04(v57, v59);
      sub_267B72A04(v59, v58);
      v45 = v75;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t ButtonSnippetModel.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for ButtonSnippetModel(0) + 20));

  return v1;
}

uint64_t ButtonSnippetModel.init(action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_267B72A04(a1, a4);
  result = type metadata accessor for ButtonSnippetModel(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

unint64_t ButtonSnippetModel.description.getter()
{
  type metadata accessor for ButtonSnippetModel.Action(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_0();
  v4 = v3 - v2;
  sub_267B7DF8C();

  OUTLINED_FUNCTION_0_17();
  sub_267B72B24(v0, v4, v5);
  v6 = sub_267B7DD7C();
  MEMORY[0x26D601760](v6);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_267B723E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B7E16C();

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

uint64_t sub_267B724A8(char a1)
{
  if (a1)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_267B724E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B723E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B72508(uint64_t a1)
{
  v2 = sub_267B72AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B72544(uint64_t a1)
{
  v2 = sub_267B72AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ButtonSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219820, &qword_267B849D0);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B72AD0();
  sub_267B7E27C();
  v12[15] = 0;
  type metadata accessor for ButtonSnippetModel.Action(0);
  OUTLINED_FUNCTION_5_11();
  sub_267B72A68(v9, v10, &protocol conformance descriptor for ButtonSnippetModel.Action);
  sub_267B7E12C();
  if (!v1)
  {
    type metadata accessor for ButtonSnippetModel(0);
    v12[14] = 1;
    sub_267B7E0FC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t ButtonSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ButtonSnippetModel.Action(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v24 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219838, &qword_267B849D8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for ButtonSnippetModel(0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B72AD0();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v8;
  OUTLINED_FUNCTION_5_11();
  sub_267B72A68(v13, v14, &protocol conformance descriptor for ButtonSnippetModel.Action);
  sub_267B7E08C();
  sub_267B72A04(v24, v12);
  v15 = sub_267B7E05C();
  v17 = v16;
  v18 = OUTLINED_FUNCTION_9_5();
  v19(v18);
  v20 = (v12 + *(v22 + 20));
  *v20 = v15;
  v20[1] = v17;
  sub_267B72B24(v12, a2, type metadata accessor for ButtonSnippetModel);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_267B72B84(v12, type metadata accessor for ButtonSnippetModel);
}

uint64_t sub_267B72A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonSnippetModel.Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B72A68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267B72AD0()
{
  result = qword_280219828;
  if (!qword_280219828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219828);
  }

  return result;
}

uint64_t sub_267B72B24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267B72B84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267B72C94(uint64_t a1)
{
  result = type metadata accessor for ButtonSnippetModel.Action(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_267B72D08(uint64_t a1)
{
  result = sub_267B7DA6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_267B72D80(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_267B72E6C(_BYTE *result, int a2, int a3)
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

unint64_t sub_267B72F1C()
{
  result = qword_280219878;
  if (!qword_280219878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219878);
  }

  return result;
}

unint64_t sub_267B72F74()
{
  result = qword_280219880;
  if (!qword_280219880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219880);
  }

  return result;
}

unint64_t sub_267B72FCC()
{
  result = qword_280219888;
  if (!qword_280219888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219888);
  }

  return result;
}

unint64_t sub_267B73024()
{
  result = qword_280219890;
  if (!qword_280219890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219890);
  }

  return result;
}

unint64_t sub_267B7307C()
{
  result = qword_280219898;
  if (!qword_280219898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219898);
  }

  return result;
}

unint64_t sub_267B730D4()
{
  result = qword_2802198A0;
  if (!qword_2802198A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198A0);
  }

  return result;
}

unint64_t sub_267B7312C()
{
  result = qword_2802198A8;
  if (!qword_2802198A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198A8);
  }

  return result;
}

unint64_t sub_267B73184()
{
  result = qword_2802198B0;
  if (!qword_2802198B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198B0);
  }

  return result;
}

unint64_t sub_267B731DC()
{
  result = qword_2802198B8;
  if (!qword_2802198B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198B8);
  }

  return result;
}

unint64_t sub_267B73234()
{
  result = qword_2802198C0;
  if (!qword_2802198C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198C0);
  }

  return result;
}

unint64_t sub_267B7328C()
{
  result = qword_2802198C8;
  if (!qword_2802198C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198C8);
  }

  return result;
}

unint64_t sub_267B732E4()
{
  result = qword_2802198D0;
  if (!qword_2802198D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_4(uint64_t a1, uint64_t a2)
{

  return sub_267B7DFFC();
}

id UpdateMessageDraftSnippet.intent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void sub_267B733EC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  UpdateMessageDraftSnippet.intent.setter(v1);
}

void (*UpdateMessageDraftSnippet.intent.modify(void **a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = v1;
  v3 = v2;
  return sub_267B41468;
}

uint64_t UpdateMessageDraftSnippet.contactName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t UpdateMessageDraftSnippet.contactName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t UpdateMessageDraftSnippet.payload.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t UpdateMessageDraftSnippet.payload.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

double UpdateMessageDraftSnippet.autoSendInfo.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_267B60A64(v2, v3, v4, v5, v6);
}

__n128 UpdateMessageDraftSnippet.autoSendInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_267B60AAC(v1[6], v1[7], v1[8]);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 4) = v5;
  v1[10] = v3;
  return result;
}

double UpdateMessageDraftSnippet.correctionInfo.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 88);

  return result;
}

uint64_t UpdateMessageDraftSnippet.correctionInfo.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 88) = v2;
  return result;
}

uint64_t UpdateMessageDraftSnippet.errorMessage.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t UpdateMessageDraftSnippet.errorMessage.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t UpdateMessageDraftSnippet.photoSharingInfo.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

__n128 UpdateMessageDraftSnippet.init(intent:contactName:isAuthenticated:payload:autoSendInfo:correctionInfo:shouldUpdateWithASRText:photoSharingInfo:errorMessage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, __n128 a12)
{
  v14 = *(a7 + 32);
  v15 = *a8;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v16 = OUTLINED_FUNCTION_11_4();
  sub_267B60AAC(v16, v17, v18);
  v19 = *(a7 + 16);
  *(a9 + 48) = *a7;
  *(a9 + 64) = v19;
  *(a9 + 80) = v14;

  *(a9 + 88) = v15;
  *(a9 + 96) = a10;
  *(a9 + 120) = a11;
  result = a12;
  *(a9 + 104) = a12;
  return result;
}

uint64_t UpdateMessageDraftSnippet.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = 7104878;
  v4 = *(v0 + 40);
  v13 = *(v0 + 56);
  v14 = *(v0 + 88);
  v15 = *(v0 + 120);

  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  if (v2)
  {
    v5 = v1;
  }

  else
  {
    v5 = 7104878;
  }

  v6 = 0xE300000000000000;
  if (!v2)
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x26D601760](v5, v2);

  OUTLINED_FUNCTION_4_11();
  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_5_12();

  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_5_12();

  sub_267B7DF8C();

  v7 = 7104878;
  if (*(&v13 + 1) != 1)
  {
    v7 = AutoSendInfo.description.getter();
    v6 = v8;
  }

  MEMORY[0x26D601760](v7, v6);

  MEMORY[0x26D601760](44, 0xE100000000000000);

  MEMORY[0x26D601760](0x6E65536F74756120, 0xEF203A6F666E4964);

  OUTLINED_FUNCTION_6_10();
  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v9 = 0xE300000000000000;
  if (v14)
  {
    CorrectionInfo.description.getter();
  }

  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_5_12();

  OUTLINED_FUNCTION_6_10();
  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_5_12();

  OUTLINED_FUNCTION_6_10();
  sub_267B7DF8C();

  OUTLINED_FUNCTION_5_12();

  OUTLINED_FUNCTION_4_11();

  MEMORY[0x26D601760](0x654D726F72726520, 0xEF203A6567617373);

  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v16 = v10;
  if (v15)
  {
    v3 = PhotoSharingInfo.description.getter();
    v9 = v11;
  }

  MEMORY[0x26D601760](v3, v9);

  MEMORY[0x26D601760](41, 0xE100000000000000);

  MEMORY[0x26D601760](0xD000000000000013, v16);

  return v4;
}

uint64_t sub_267B73D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65687475417369 && a2 == 0xEF64657461636974;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646E65536F747561 && a2 == 0xEC0000006F666E49;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6974636572726F63 && a2 == 0xEE006F666E496E6FLL;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x8000000267B87670 == a2;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173;
                if (v12 || (sub_267B7E16C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000010 && 0x8000000267B86E10 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_267B7E16C();

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

unint64_t sub_267B74048(char a1)
{
  result = 0x746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0x4E746361746E6F63;
      break;
    case 2:
      result = 0x6E65687475417369;
      break;
    case 3:
      result = 0x64616F6C796170;
      break;
    case 4:
      result = 0x646E65536F747561;
      break;
    case 5:
      result = 0x6974636572726F63;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x73654D726F727265;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}