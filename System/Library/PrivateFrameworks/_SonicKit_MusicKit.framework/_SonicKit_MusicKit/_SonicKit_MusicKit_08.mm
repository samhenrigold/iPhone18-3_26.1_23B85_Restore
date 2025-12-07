uint64_t MusicContent.ContentType.StructureRole.hashValue.getter()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

void __swiftcall SmartPlayerItemInfo.init(isSpatialized:isSubscriptionAsset:isMissingEditList:loadedAssetDuration:currentSourceTime:safetyMargin:)(_SonicKit_MusicKit::SmartPlayerItemInfo *__return_ptr retstr, Swift::Bool isSpatialized, Swift::Bool isSubscriptionAsset, Swift::Bool isMissingEditList, Swift::Double_optional loadedAssetDuration, Swift::Double_optional currentSourceTime, Swift::Double_optional safetyMargin)
{
  retstr->isSpatialized = isSpatialized;
  retstr->isSubscriptionAsset = isSubscriptionAsset;
  retstr->isMissingEditList = isMissingEditList;
  *(&retstr->loadedAssetDuration.value + 5) = *&loadedAssetDuration.is_nil;
  BYTE4(retstr->currentSourceTime.value) = currentSourceTime.is_nil;
  *(&retstr->safetyMargin.value + 3) = *&safetyMargin.is_nil;
  retstr[1].isMissingEditList = v7 & 1;
  *(&retstr[1].loadedAssetDuration.value + 7) = v8;
  BYTE6(retstr[1].currentSourceTime.value) = v9 & 1;
}

uint64_t SmartPlayerItemInfo.description.getter(double a1)
{
  v2 = 7104878;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[32];
  v7 = v1[48];
  if (v1[16])
  {
    v8 = 0xE300000000000000;
    v9 = 7104878;
  }

  else
  {
    OUTLINED_FUNCTION_25_5();
    sub_2753B7198();
    v9 = v24;
    v8 = v25;
  }

  v23 = v9;
  if (v6)
  {
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    OUTLINED_FUNCTION_25_5();
    sub_2753B7198();
    v11 = v24;
    v10 = v25;
  }

  v22 = v11;
  v12 = 0xE300000000000000;
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_5();
    sub_2753B7198();
    v2 = v24;
    v12 = v25;
  }

  v21 = v2;
  if (v5)
  {
    v13 = 0xE300000000000000;
  }

  else
  {
    v13 = 0xE200000000000000;
  }

  if (v5)
  {
    v14 = 7562617;
  }

  else
  {
    v14 = 28526;
  }

  if (v4)
  {
    v15 = 0xE300000000000000;
  }

  else
  {
    v15 = 0xE200000000000000;
  }

  if (v4)
  {
    v16 = 7562617;
  }

  else
  {
    v16 = 28526;
  }

  v17 = v3 == 0;
  if (v3)
  {
    v18 = 0xE300000000000000;
  }

  else
  {
    v18 = 0xE200000000000000;
  }

  if (v17)
  {
    v19 = 28526;
  }

  else
  {
    v19 = 7562617;
  }

  OUTLINED_FUNCTION_25_5();
  sub_2753B7398();
  MEMORY[0x277C76100](0x6C61697461707328, 0xEE00203A64657A69);
  MEMORY[0x277C76100](v19, v18);

  OUTLINED_FUNCTION_27_4();
  MEMORY[0x277C76100](0xD000000000000015);
  MEMORY[0x277C76100](v16, v15);

  OUTLINED_FUNCTION_27_4();
  MEMORY[0x277C76100]();
  MEMORY[0x277C76100](v14, v13);

  MEMORY[0x277C76100](0x697461727564202CLL, 0xEC000000203A6E6FLL);
  MEMORY[0x277C76100](v23, v8);

  OUTLINED_FUNCTION_27_4();
  MEMORY[0x277C76100](0xD000000000000015);
  MEMORY[0x277C76100](v22, v10);

  OUTLINED_FUNCTION_27_4();
  MEMORY[0x277C76100]();
  MEMORY[0x277C76100](v21, v12);

  MEMORY[0x277C76100](41, 0xE100000000000000);
  return v24;
}

uint64_t sub_27539160C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartTransitionRenderer(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_275391670()
{
  result = qword_2809C3060;
  if (!qword_2809C3060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3060);
  }

  return result;
}

uint64_t sub_2753916C4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2753920F0(255, a2, a3, a4, MEMORY[0x277D64F08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_275391728()
{
  result = qword_2809C3078;
  if (!qword_2809C3078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3078);
  }

  return result;
}

uint64_t sub_27539177C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return a2;
}

unint64_t sub_2753917DC()
{
  result = qword_2809C3088;
  if (!qword_2809C3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3088);
  }

  return result;
}

uint64_t type metadata accessor for SonicNES(uint64_t a1)
{
  result = qword_2809C3090;
  if (!qword_2809C3090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275391884(uint64_t a1)
{
  result = sub_2753B5F98();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_275391954(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 7 && *(a1 + 33))
    {
      v2 = *a1 + 6;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 1) & 6 | (*(a1 + 32) >> 4) & 1) ^ 7;
      if (v2 >= 6)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2753919A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 7;
    *(result + 8) = 0;
    if (a3 >= 7)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * ((((-a2 >> 1) & 3) - 4 * a2) & 7);
    }
  }

  return result;
}

_BYTE *_s13StructureRoleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275391B00);
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_275391B54(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[49])
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

uint64_t sub_275391BA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_275391C04(uint64_t a1)
{
  if (!qword_2809C30A0)
  {
    MEMORY[0x28223BE20](0);
    type metadata accessor for SongTransitionInfo(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2809C30A0);
    }
  }
}

uint64_t sub_275391D04(uint64_t a1)
{
  v2 = 256;
  if (!*(v1 + 73))
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 72);
  v4 = 0x10000;
  if (!*(v1 + 74))
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!*(v1 + 75))
  {
    v5 = 0;
  }

  v6 = v3 | v4 | v5;
  v7 = 0x100000000;
  if (!*(v1 + 76))
  {
    v7 = 0;
  }

  return sub_275390038(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v6 | v7, (v6 | v7) >> 32);
}

void sub_275391D8C()
{
  if (!qword_2809C30A8)
  {
    v0 = sub_2753B76C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C30A8);
    }
  }
}

void sub_275391DDC(uint64_t a1)
{
  if (!qword_2809C30B0)
  {
    sub_27538C450(255);
    sub_275392218(&qword_2809C30B8, sub_27538C450, &protocol conformance descriptor for MusicContentSystem<A>);
    v1 = sub_2753B6BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C30B0);
    }
  }
}

uint64_t sub_275391E70()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275391EB0()
{
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v9 = v0[4];
  v8 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_2752FD514;

  return sub_2753902A8(v5, v3, v6, v7, v9, v8);
}

void sub_275391F70(uint64_t a1)
{
  if (!qword_2809C30C0)
  {
    sub_27538C450(255);
    sub_275392218(&qword_2809C30B8, sub_27538C450, &protocol conformance descriptor for MusicContentSystem<A>);
    v1 = sub_2753B69B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C30C0);
    }
  }
}

void sub_275392004(uint64_t a1)
{
  if (!qword_2809C30C8)
  {
    sub_27538C450(255);
    v3 = v2;
    v4 = sub_275392218(&qword_2809C3040, sub_27538C450, &protocol conformance descriptor for MusicContentSystem<A>);
    v6 = type metadata accessor for FacetCollection<>.TransitionInfo(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_2809C30C8);
    }
  }
}

uint64_t sub_275392098(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_2753920F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_275392158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2753921BC()
{
  result = qword_2809C30E0;
  if (!qword_2809C30E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2809C30E0);
  }

  return result;
}

uint64_t sub_275392218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275392260(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_6()
{
}

uint64_t OUTLINED_FUNCTION_12_6()
{
}

uint64_t OUTLINED_FUNCTION_18_4()
{
}

uint64_t OUTLINED_FUNCTION_22_3(uint64_t a1)
{

  return sub_2753B70C8();
}

uint64_t OUTLINED_FUNCTION_23_2()
{
}

_SonicKit_MusicKit::SonicNESError_optional __swiftcall SonicNESError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2753924AC()
{
  result = qword_2809C30F0;
  if (!qword_2809C30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C30F0);
  }

  return result;
}

uint64_t sub_275392508@<X0>(uint64_t *a1@<X8>)
{
  result = SonicNESError.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_275392534()
{
  result = qword_2809C30F8;
  if (!qword_2809C30F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C30F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SonicNESError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275392654);
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

_SonicKit_MusicKit::SubscriptionLeaseError_optional __swiftcall SubscriptionLeaseError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2753926CC@<X0>(uint64_t *a1@<X8>)
{
  result = SubscriptionLeaseError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static SubscriptionDRMSession.session(for:in:)()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 80) = v4;
  v5 = type metadata accessor for AssetRecipe(0);
  OUTLINED_FUNCTION_75(v5);
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 16) = *v3;
  *(v1 + 29) = *(v3 + 13);
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2753927B0()
{
  v7 = v0;
  v1 = v0[13];
  v2 = v0[11];
  sub_275396C74(v0[10], v1, type metadata accessor for AssetRecipe);
  v6[0] = *v2;
  *(v6 + 13) = *(v2 + 13);
  sub_2753928BC((v0 + 2), (v0 + 6));
  v3 = sub_275392870(v1, v6);

  v4 = v0[1];

  return v4(v3);
}

uint64_t *sub_275392918(uint64_t a1, _OWORD *a2)
{
  v32 = a1;
  v5 = *v2;
  v6 = type metadata accessor for AssetRecipe(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_275396C20(0, &qword_2809C32C0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27[-v10];
  v31 = &v27[-v10];
  *v34 = *a2;
  v12 = *v34;
  *&v34[13] = *(a2 + 13);
  v13 = *&v34[13];
  v2[6] = 0;
  v2[7] = 0;
  *(v2 + 1) = v12;
  *(v2 + 29) = v13;
  v14 = sub_2753B7148();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  sub_275396C74(a1, &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AssetRecipe);
  v29 = *v34;
  v15 = *&v34[16];
  v16 = v34[24];
  v17 = v34[25];
  v28 = v34[26];
  v18 = v34[27];
  LOBYTE(v11) = v34[28];
  v19 = (*(v7 + 80) + 77) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v21 = *(v5 + 80);
  *(v20 + 32) = v21;
  v22 = *(v5 + 88);
  *(v20 + 40) = v22;
  *(v20 + 48) = v29;
  *(v20 + 64) = v15;
  *(v20 + 72) = v16;
  *(v20 + 73) = v17;
  *(v20 + 74) = v28;
  *(v20 + 75) = v18;
  *(v20 + 76) = v11;
  sub_275396D2C(v30, v20 + v19, type metadata accessor for AssetRecipe);
  sub_2753928BC(v34, v33);
  v24 = type metadata accessor for SubscriptionDRMSession.Lease(0, v21, v22, v23);
  v25 = sub_275396E44(0, 0, v31, &unk_2753CC8C8, v20, v24);
  sub_275396CD4(v32, type metadata accessor for AssetRecipe);
  v2[6] = v25;

  return v2;
}

uint64_t sub_275392BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x2822009F8](sub_275392C04, 0, 0);
}

uint64_t sub_275392C04()
{
  v1 = MusicContent.Environment.storeRequestContext.getter();
  *(v0 + 80) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_15_6();
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_275392D80;

  return v6(v2);
}

uint64_t sub_275392D80()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_7();
  *v3 = v2;
  *v3 = *v1;
  v2[12] = v4;
  v2[13] = v5;
  v2[14] = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_275392E84()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[14];
  sub_2753B7178();
  if (v1)
  {
    v2 = v0[10];
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_19_0();

    return v3();
  }

  else
  {
    ObjectType = swift_getObjectType();
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_275392F78;
    v7 = v0[13];

    return sub_2753931F4(ObjectType, v7);
  }
}

uint64_t sub_275392F78()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275393070()
{
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 128);
  sub_2753B7178();
  v3 = *(v0 + 80);
  if (v1)
  {
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v5 = *(v0 + 56);
    v6 = *(v0 + 16);
    type metadata accessor for SubscriptionDRMSession(0, *(v0 + 64), *(v0 + 72), v2);
    v9 = *(v0 + 96);
    v7 = sub_275393738(v5, v3);

    *v6 = v9;
    *(v6 + 16) = v7;
    OUTLINED_FUNCTION_35_0();
  }

  return v4();
}

uint64_t sub_275393134()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v1();
}

uint64_t sub_275393190()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_19_0();

  return v2();
}

uint64_t sub_2753931F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_275393218, 0, 0);
}

uint64_t sub_275393218()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 8);
  *(v0 + 40) = v3;
  *(v0 + 48) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x42AF000000000000;
  v4 = v3(v1);
  *(v0 + 56) = v4;
  if ([v4 shouldPlaybackRequireOnlineKeys] && (objc_msgSend(v4, sel_hasOnlinePlaybackKeys) & 1) != 0 || (objc_msgSend(v4, sel_shouldPlaybackRequireOnlineKeys) & 1) == 0 && (objc_msgSend(v4, sel_hasOfflinePlaybackKeys) & 1) != 0)
  {

    OUTLINED_FUNCTION_35_0();
LABEL_9:

    return v5();
  }

  if (([v4 hasPendingLeaseAcquisition] & 1) == 0 && objc_msgSend(v4, sel_leaseState))
  {
    *(v0 + 80) = 1;
    sub_275396760(0);
    OUTLINED_FUNCTION_8_8();
    v8 = sub_275396810(v6, v7, MEMORY[0x277D64F10]);
    OUTLINED_FUNCTION_19_5(v8);
    v9 = sub_2753967BC();
    MEMORY[0x277C755D0](v0 + 80, 0xD00000000000002BLL, 0x80000002753BDC40, MEMORY[0x277D84F90], &type metadata for SubscriptionLeaseError, v9);
    swift_willThrow();

    OUTLINED_FUNCTION_19_0();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_15_6();
  v15 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v0 + 64) = v12;
  *v12 = v0;
  v12[1] = sub_2753934A4;
  v13 = *(v0 + 24);
  v14 = *(v0 + 16);

  return v15(v14, v13);
}

uint64_t sub_2753934A4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27539359C()
{
  v1 = (*(v0 + 40))(*(v0 + 16), *(v0 + 24));
  if ([v1 hasOnlinePlaybackKeys])
  {
    v2 = *(v0 + 56);

    OUTLINED_FUNCTION_35_0();
  }

  else
  {
    v4 = *(v0 + 56);
    *(v0 + 81) = 2;
    sub_275396760(0);
    OUTLINED_FUNCTION_8_8();
    v7 = sub_275396810(v5, v6, MEMORY[0x277D64F10]);
    OUTLINED_FUNCTION_19_5(v7);
    v8 = sub_2753967BC();
    MEMORY[0x277C755D0](v0 + 81, 0xD000000000000021, 0x80000002753BDC70, MEMORY[0x277D84F90], &type metadata for SubscriptionLeaseError, v8);
    swift_willThrow();

    OUTLINED_FUNCTION_19_0();
  }

  return v3();
}

uint64_t sub_2753936DC()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v1();
}

id sub_275393738(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = sub_2753B61F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275396C20(0, &qword_2809C08E8, MEMORY[0x277CC9260]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for AssetRecipe.DRM(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AssetRecipe(0);
  sub_275396C74(a1 + *(v19 + 20), v15, type metadata accessor for AssetRecipe.DRM);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v22 = type metadata accessor for AssetRecipe.DRM;
    v23 = v15;
LABEL_10:
    sub_275396CD4(v23, v22);
    return 0;
  }

  sub_275396D2C(v15, v18, type metadata accessor for AssetRecipe.DRM.FairPlayStreaming);
  if ((v18[8] & 1) != 0 || (v20 = *v18) == 0)
  {
    v22 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming;
    v23 = v18;
    goto LABEL_10;
  }

  __swift_storeEnumTagSinglePayload(v12, 1, 1, v3);
  if (sub_2753B6158())
  {
    sub_275327638(v12);
    (*(v4 + 16))(v12, a1, v3);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v3);
  }

  sub_275359EB0(v12, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
  {
    sub_275327638(v10);
    v21 = [objc_allocWithZone(MEMORY[0x277D7FB28]) init];
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_2753277B8(0, &qword_2809C32D0, 0x277D7FA98);
    v25 = sub_2753B61C8();
    v21 = sub_275394CB8(v25, v26);
    (*(v4 + 8))(v6, v3);
  }

  v27 = v21;
  sub_2753277B8(0, &qword_2809C32C8, 0x277D7FA70);
  v24 = sub_275394D2C(v33, v27, 0);
  v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  [v24 setAdamID_];

  v29 = sub_2753B6198();
  [v24 setKeyServerURL_];

  v30 = sub_2753B6198();
  [v24 setKeyCertificateURL_];

  [v24 setKeyServerProtocolType_];
  [v24 setAllowFallbackToStreamingKeys_];
  [v24 setRequestOfflineKeys_];
  [v24 setIsStoreKeyServer_];
  swift_unknownObjectRelease();
  sub_275327638(v12);
  sub_275396CD4(v18, type metadata accessor for AssetRecipe.DRM.FairPlayStreaming);
  return v24;
}

void *SubscriptionDRMSession.deinit(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4[6])
  {
    v5 = OUTLINED_FUNCTION_20_4(result, *(*v4 + 80), *(*v4 + 88), a4);
    OUTLINED_FUNCTION_21_5(v5, &qword_2809C1468, MEMORY[0x277D84948]);

    sub_2753B7168();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SubscriptionDRMSession.__deallocating_deinit(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  SubscriptionDRMSession.deinit(a1, a2, a3, a4);

  return MEMORY[0x2821FE8D8](v4, 64, 7);
}

uint64_t SubscriptionDRMSession.add(asset:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return OUTLINED_FUNCTION_0_0(sub_275393D6C);
}

uint64_t sub_275393D6C(uint64_t a1)
{
  v2 = *(v1[6] + 48);
  v1[8] = v2;
  if (v2)
  {
    OUTLINED_FUNCTION_3();
    v3 = v1[7];

    v4 = swift_task_alloc();
    v1[9] = v4;
    v6 = OUTLINED_FUNCTION_20_4(v4, *(v3 + 80), *(v3 + 88), v5);
    OUTLINED_FUNCTION_21_5(v6, &qword_2809C1468, MEMORY[0x277D84948]);
    OUTLINED_FUNCTION_11_7();
    *v4 = v7;
    v4[1] = sub_275393E48;
    a1 = OUTLINED_FUNCTION_10_8();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200430](a1);
}

uint64_t sub_275393E48()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275393F5C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  [v2 addAsset_];

  OUTLINED_FUNCTION_35_0();

  return v3();
}

uint64_t SubscriptionDRMSession.prepare(forRate:)(float a1)
{
  *(v2 + 40) = v1;
  *(v2 + 120) = a1;
  *(v2 + 48) = *v1;
  return OUTLINED_FUNCTION_0_0(sub_27539403C);
}

uint64_t sub_27539403C()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 120) == 0.0)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_2753945C0;

    return sub_275394B8C();
  }

  else
  {
    v4 = *(*(v0 + 40) + 48);
    *(v0 + 56) = v4;
    if (v4)
    {
      v5 = *(v0 + 48);

      v6 = swift_task_alloc();
      *(v0 + 64) = v6;
      v8 = OUTLINED_FUNCTION_20_4(v6, *(v5 + 80), *(v5 + 88), v7);
      OUTLINED_FUNCTION_21_5(v8, &qword_2809C1468, MEMORY[0x277D84948]);
      OUTLINED_FUNCTION_11_7();
      *v6 = v9;
      v6[1] = sub_275394190;
      v1 = OUTLINED_FUNCTION_10_8();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200430](v1);
  }
}

uint64_t sub_275394190()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2753942A4()
{
  OUTLINED_FUNCTION_3();
  *(v0 + 80) = *(v0 + 16);

  swift_getObjectType();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_275394354;
  v2 = OUTLINED_FUNCTION_79_0();

  return sub_2753931F4(v2, v3);
}

uint64_t sub_275394354()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27539444C()
{
  OUTLINED_FUNCTION_14_0();
  swift_unknownObjectRelease();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_2753944E0;

  return sub_275394720();
}

uint64_t sub_2753944E0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_2753945C0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_2753946C4()
{
  OUTLINED_FUNCTION_14_0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_275394720()
{
  v1[5] = v0;
  v1[6] = *v0;
  sub_2753B6288();
  v1[7] = sub_2753B6278();
  sub_275396810(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v3 = sub_2753B70C8();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_275394810, v3, v2);
}

uint64_t sub_275394810()
{
  OUTLINED_FUNCTION_3();
  v2 = v0[5];
  if (*(v2 + 56))
  {

    OUTLINED_FUNCTION_35_0();

    return v3();
  }

  else
  {
    v5 = *(v2 + 48);
    v0[10] = v5;
    if (v5)
    {
      v6 = v0[6];

      v7 = swift_task_alloc();
      v0[11] = v7;
      v8 = *(v6 + 80);
      v0[12] = v8;
      v9 = *(v6 + 88);
      v0[13] = v9;
      v11 = OUTLINED_FUNCTION_20_4(v7, v8, v9, v10);
      OUTLINED_FUNCTION_21_5(v11, &qword_2809C1468, MEMORY[0x277D84948]);
      OUTLINED_FUNCTION_11_7();
      *v7 = v12;
      v7[1] = sub_275394938;
      v1 = OUTLINED_FUNCTION_10_8();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200430](v1);
  }
}

uint64_t sub_275394938()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_275394B30;
  }

  else
  {
    v7 = sub_275394A84;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_275394A84()
{
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);

  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  type metadata accessor for SubscriptionDRMSession.LeaseRefresher(0, v1, v2, v6);
  *(v3 + 56) = sub_275394D9C(v4, v5);

  OUTLINED_FUNCTION_35_0();

  return v7();
}

uint64_t sub_275394B30()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_275394B8C()
{
  *(v1 + 16) = v0;
  sub_2753B6288();
  *(v1 + 24) = sub_2753B6278();
  sub_275396810(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v3 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_275394C54, v3, v2);
}

uint64_t sub_275394C54()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 16);

  *(v1 + 56) = 0;

  OUTLINED_FUNCTION_35_0();

  return v2();
}

id sub_275394CB8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2753B6D78();

  v4 = [v2 initWithPath_];

  return v4;
}

id sub_275394D2C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequestContext:a1 keyStore:a2 delegate:a3];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_275394DE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  ObjectType = swift_getObjectType();
  v5 = *(a2 + 32);
  swift_unknownObjectRetain();
  v5(ObjectType, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_275394E5C()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 40);
  swift_unknownObjectRetain();
  v3(ObjectType, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_275394ED8()
{
  v0 = sub_275394E5C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_275394F08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752FD514;

  return SubscriptionDRMSession.add(asset:)(a1);
}

uint64_t sub_275394FA0(float a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752FE5C0;

  return SubscriptionDRMSession.prepare(forRate:)(a1);
}

uint64_t sub_275395050()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  sub_2753954A4(0, &qword_2809C3100, &protocol descriptor for SubscriptionLeaseImpl, 0);
  *v3 = v0;
  v3[1] = sub_275395154;
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_275395154()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275395270()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

void sub_2753952CC(uint64_t a1, uint64_t a2)
{
  sub_2753965B4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = [objc_opt_self() sharedController];
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_2753966EC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275395584;
  aBlock[3] = &block_descriptor_32;
  v11 = _Block_copy(aBlock);

  [v8 getLeaseSessionWithRequestContext:a2 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_2753954A4(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_2753954F8(void *result, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_2753965B4(0);
    return sub_2753B70D8();
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_2753965B4(0);
      v4 = v3;
      return sub_2753B70E8();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_275395584(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_275395628()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[2];
  v2 = [v1 requestContext];
  v3 = [objc_allocWithZone(MEMORY[0x277D7FB60]) initWithRequestContext_];
  v0[3] = v3;

  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_275395758;
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822008A0](v6);
}

uint64_t sub_275395758()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275395858()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_35_0();

  return v1();
}

uint64_t sub_2753958B0()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v1();
}

void sub_275395914(uint64_t a1, void *a2, uint64_t a3)
{
  sub_275396480(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  (*(v8 + 32))(v11 + v10, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_275396518;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275395BE8;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);

  v13 = [a2 performPlaybackRequest:a3 completionHandler:v12];
  _Block_release(v12);
}

unint64_t sub_275395ADC()
{
  result = qword_2809C3108;
  if (!qword_2809C3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3108);
  }

  return result;
}

unint64_t sub_275395B34()
{
  result = qword_2809C3110[0];
  if (!qword_2809C3110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C3110);
  }

  return result;
}

uint64_t sub_275395B88(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    sub_275396480(0);
    return sub_2753B70D8();
  }

  else
  {
    sub_275396480(0);
    return sub_2753B70E8();
  }
}

void sub_275395BE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

id sub_275395C94()
{
  v1 = [v0 leaseStatus];

  return v1;
}

uint64_t sub_275395CCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_275395D60;

  return static ICMusicSubscriptionLeaseSession.lease(with:)(a1);
}

uint64_t sub_275395D60()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_18_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_79_0();
  }

  return v5(v4);
}

uint64_t sub_275395E58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return ICMusicSubscriptionLeaseSession.perform()();
}

uint64_t dispatch thunk of static SubscriptionLeaseImpl.lease(with:)()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_15_6();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 16) = v8;
  *v8 = v0;
  v8[1] = sub_275396030;

  return v10(v6, v4, v2);
}

uint64_t sub_275396030()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_18_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_79_0();

  return v4(v3);
}

uint64_t dispatch thunk of SubscriptionLeaseImpl.perform()()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_15_6();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_2752FD514;
  v3 = OUTLINED_FUNCTION_79_0();

  return v5(v3);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionLeaseError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275396320);
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

uint64_t sub_275396434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_275396480(uint64_t a1)
{
  if (!qword_2809C3298)
  {
    sub_2753954A4(255, &qword_2809C1468, MEMORY[0x277D84948], 1);
    v1 = sub_2753B70F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C3298);
    }
  }
}

uint64_t sub_275396518(int a1, int a2, void *a3)
{
  sub_275396480(0);
  OUTLINED_FUNCTION_75(v6);

  return sub_275395B88(a1, a2, a3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2753965B4(uint64_t a1)
{
  if (!qword_2809C32A0)
  {
    sub_2753954A4(255, &qword_2809C3100, &protocol descriptor for SubscriptionLeaseImpl, 0);
    sub_2753954A4(255, &qword_2809C1468, MEMORY[0x277D84948], 1);
    v1 = sub_2753B70F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C32A0);
    }
  }
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v1 + v4);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

void *sub_2753966EC()
{
  OUTLINED_FUNCTION_96();
  sub_2753965B4(0);
  OUTLINED_FUNCTION_75(v0);
  v1 = OUTLINED_FUNCTION_79_0();

  return sub_2753954F8(v1, v2);
}

void sub_275396760(uint64_t a1)
{
  if (!qword_2809C32A8)
  {
    sub_2753967BC();
    v1 = sub_2753B6308();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C32A8);
    }
  }
}

unint64_t sub_2753967BC()
{
  result = qword_2809C32B0;
  if (!qword_2809C32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C32B0);
  }

  return result;
}

uint64_t sub_275396810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275396858()
{
  v1 = type metadata accessor for AssetRecipe(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 77) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v8 = v0 + v3 + *(v1 + 20);
  type metadata accessor for AssetRecipe.DRM(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      sub_2752F2350(*v8, *(v8 + 8));

      break;
    case 3u:
      sub_2752F2350(*(v8 + 8), *(v8 + 16));
      sub_2752F2350(*(v8 + 24), *(v8 + 32));
      break;
    case 4u:
      v15 = v4;
      v9 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
      v7(v8 + *(v9 + 20), v5);
      v10 = *(v9 + 24);
      v4 = v15;
      v7(v8 + v10, v5);
      break;
    default:
      break;
  }

  v11 = v0 + v3 + *(v1 + 24);
  v12 = type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
  if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
  {

    v13 = *(v12 + 40);
    if (!__swift_getEnumTagSinglePayload(v11 + v13, 1, v5))
    {
      v7(v11 + v13, v5);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_275396A9C(uint64_t a1)
{
  v3 = v2;
  v4 = type metadata accessor for AssetRecipe(0);
  OUTLINED_FUNCTION_75(v4);
  v6 = (*(v5 + 80) + 77) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = 256;
  if (!*(v1 + 73))
  {
    v12 = 0;
  }

  v13 = v12 | *(v1 + 72);
  v14 = 0x10000;
  if (!*(v1 + 74))
  {
    v14 = 0;
  }

  v15 = 0x1000000;
  if (!*(v1 + 75))
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15;
  if (*(v1 + 76))
  {
    v17 = 0x100000000;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_2752FE5C0;

  return sub_275392BD0(a1, v7, v8, v9, v10, v11, v16 | v17, v1 + v6);
}

void sub_275396C20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2753B72A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_275396C74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_275396CD4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_275396D2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_19_5(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_21_5(uint64_t a1, unint64_t *a2, uint64_t a3)
{

  return sub_2753954A4(0, a2, a3, 1);
}

uint64_t sub_275396E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_27539A1D4(0);
  v11 = OUTLINED_FUNCTION_75(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[5] = a4;
  v24[6] = a5;
  sub_27539AA04(a3, v13);
  v14 = sub_2753B7148();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_27539A328(v13);
  }

  else
  {
    sub_2753B7138();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2753B70C8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2753B6DD8();
      sub_27539AAF4(v20 + 32, v24);

      v21 = v24[0];
      sub_27539A328(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27539A328(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

_SonicKit_MusicKit::SuzeLeaseError_optional __swiftcall SuzeLeaseError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2753970A4@<X0>(uint64_t *a1@<X8>)
{
  result = SuzeLeaseError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static SuzeDRMSession.session(for:in:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 45) = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(v3 + 96) = v2;
  *(v3 + 104) = v4;
  *(v3 + 112) = v5;
  *(v3 + 16) = *a2;
  *(v3 + 29) = *(a2 + 13);
  return OUTLINED_FUNCTION_0_0(sub_275397128);
}

uint64_t sub_275397128()
{
  if (qword_2809C06F0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v14 = *(v0 + 45);
  v3 = *(v0 + 96);
  *(v0 + 120) = qword_2809C32D8;
  v13 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  v7 = *(v0 + 42);
  v11 = *(v0 + 44);
  v12 = *(v0 + 43);
  v8 = swift_allocObject();
  *(v0 + 128) = v8;
  *(v8 + 16) = *(v3 + 80);
  *(v8 + 24) = *(v3 + 88);
  *(v8 + 32) = v14;
  *(v8 + 40) = v2;
  *(v8 + 48) = v1;
  *(v8 + 56) = v13;
  *(v8 + 72) = v4;
  *(v8 + 80) = v5;
  *(v8 + 81) = v6;
  *(v8 + 82) = v7;
  *(v8 + 83) = v12;
  *(v8 + 84) = v11;
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  swift_bridgeObjectRetain_n();

  sub_2753928BC(v0 + 16, v0 + 48);
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_2753972F8;

  return MEMORY[0x2821CC360](v0 + 80, sub_27539A148, v8);
}

uint64_t sub_2753972F8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v7 + 144) = v6;
  *(v7 + 152) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_275397454()
{
  result = *(v0 + 144);
  if (result)
  {
    OUTLINED_FUNCTION_14_0();
    v2 = swift_dynamicCastClassUnconditional();
    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_2753974F0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *v18 = a4;
  *&v18[8] = a5;
  *&v18[16] = a6;
  *&v18[24] = a7;
  v18[28] = BYTE4(a7);
  type metadata accessor for SuzeDRMSession(0, a8, a9, a4);
  v15[0] = a1;
  v16 = a2;
  v17 = a3;
  v14[0] = *v18;
  *(v14 + 13) = *&v18[13];

  sub_2753928BC(v18, &v13);
  return sub_27539759C(v15, v14);
}

uint64_t *sub_2753975E8(unsigned __int8 *a1, _OWORD *a2)
{
  v27 = *v2;
  sub_27539A1D4(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v8 = *(a1 + 1);
  v24 = *(a1 + 2);
  v25 = v8;
  *v29 = *a2;
  v9 = *v29;
  *&v29[13] = *(a2 + 13);
  v10 = *&v29[13];
  v2[7] = 0;
  *(v2 + 1) = v9;
  *(v2 + 29) = v10;
  v11 = sub_2753B7148();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  v23 = *v29;
  v12 = *&v29[16];
  v13 = v29[24];
  v14 = v29[25];
  v15 = v29[26];
  v16 = v29[27];
  v17 = v29[28];
  v18 = swift_allocObject();
  v19 = v27;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v20 = *(v19 + 80);
  *(v18 + 32) = v20;
  *(v18 + 40) = *(v19 + 88);
  *(v18 + 48) = v23;
  *(v18 + 64) = v12;
  *(v18 + 72) = v13;
  *(v18 + 73) = v14;
  *(v18 + 74) = v15;
  *(v18 + 75) = v16;
  *(v18 + 76) = v17;
  *(v18 + 80) = v26;
  v21 = v24;
  *(v18 + 88) = v25;
  *(v18 + 96) = v21;
  sub_2753928BC(v29, v28);
  v2[6] = sub_275396E44(0, 0, v7, &unk_2753CCB70, v18, v20);
  return v2;
}

uint64_t sub_2753977A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 72) = v11;
  *(v8 + 80) = v12;
  *(v8 + 56) = v10;
  *(v8 + 128) = a8;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2753977E8, 0, 0);
}

uint64_t sub_2753977E8()
{
  v20 = v0;
  v1 = *(v0 + 48);
  v17 = *(v0 + 24);
  v18 = *(v0 + 32);
  LODWORD(v19) = v1;
  BYTE4(v19) = BYTE4(v1);
  v2 = MusicContent.Environment.storeRequestContext.getter();
  *(v0 + 88) = v2;
  v3 = v2;
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 128);
  v19 = MEMORY[0x277D837D0];
  v17 = v4;
  *&v18 = v5;
  v7 = *(v0 + 72);
  v16 = *(v0 + 80);
  v8 = objc_allocWithZone(MEMORY[0x277D7FC58]);

  v9 = sub_27539AA68(v3, &v17, v6 + 1);
  *(v0 + 96) = v9;
  *(v0 + 104) = (*(v16 + 8))(v9, v7, v16);
  OUTLINED_FUNCTION_9_1();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_2753979E4;
  v13 = *(v0 + 72);
  v12 = *(v0 + 80);

  return v15(v13, v12);
}

uint64_t sub_2753979E4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275397AE0()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 16);

  *v3 = v2;
  OUTLINED_FUNCTION_35_0();

  return v4();
}

uint64_t sub_275397B50()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t *SuzeDRMSession.deinit()
{
  v1 = *v0;
  sub_27539A1D4(0);
  v3 = OUTLINED_FUNCTION_75(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[6];
  v7 = sub_2753B7148();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = *(v1 + 80);
  v8[5] = *(v1 + 88);
  v8[6] = v6;
  swift_retain_n();
  sub_2753982D4(0, 0, v5, &unk_2753CC8E0, v8);

  sub_27539A328(v5);

  return v0;
}

uint64_t sub_275397D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v7 = swift_task_alloc();
  v6[9] = v7;
  sub_275358C80();
  *v7 = v6;
  v7[1] = sub_275397DD8;

  return MEMORY[0x282200430](v6 + 5);
}

uint64_t sub_275397DD8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275397ED4()
{
  OUTLINED_FUNCTION_3();
  v0[11] = v0[5];
  OUTLINED_FUNCTION_9_1();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_275397FD8;
  v4 = v0[7];
  v3 = v0[8];

  return v6(v4, v3);
}

uint64_t sub_275397FD8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2753980D4()
{
  OUTLINED_FUNCTION_14_0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27539812C()
{
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 80);
  sub_2752E5160();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_18_5(v2, xmmword_2753BE420);
  OUTLINED_FUNCTION_17_6();
  swift_getErrorValue();
  sub_2753B76E8();
  OUTLINED_FUNCTION_11_8(v5);

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_2753981FC()
{
  OUTLINED_FUNCTION_68_0();
  swift_unknownObjectRelease();
  v1 = *(v0 + 104);
  sub_2752E5160();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_18_5(v2, xmmword_2753BE420);
  OUTLINED_FUNCTION_17_6();
  swift_getErrorValue();
  sub_2753B76E8();
  OUTLINED_FUNCTION_11_8(v5);

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_2753982D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_27539A1D4(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27539AA04(a3, v11);
  v12 = sub_2753B7148();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_27539A328(v11);
  }

  else
  {
    sub_2753B7138();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2753B70C8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2753B6DD8() + 32;
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

uint64_t SuzeDRMSession.__deallocating_deinit()
{
  SuzeDRMSession.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t SuzeDRMSession.add(asset:)()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return OUTLINED_FUNCTION_0_0(sub_2753985C4);
}

uint64_t sub_2753985C4()
{
  OUTLINED_FUNCTION_3();
  *(v0 + 40) = *(*(v0 + 24) + 48);
  v1 = *(MEMORY[0x277D857C8] + 4);

  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_21_6(v2);
  OUTLINED_FUNCTION_11_7();
  *v1 = v3;
  v1[1] = sub_275398674;
  v4 = OUTLINED_FUNCTION_10_8();

  return MEMORY[0x282200430](v4);
}

uint64_t sub_275398674()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t SuzeDRMSession.prepare(forRate:)(float a1)
{
  *(v2 + 24) = v1;
  *(v2 + 80) = a1;
  *(v2 + 32) = *v1;
  return OUTLINED_FUNCTION_0_0(sub_2753987F8);
}

uint64_t sub_2753987F8()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 80) == 0.0)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_275398BA4;

    return sub_2753990E4();
  }

  else
  {
    *(v0 + 40) = *(*(v0 + 24) + 48);
    v3 = *(MEMORY[0x277D857C8] + 4);

    v4 = swift_task_alloc();
    OUTLINED_FUNCTION_21_6(v4);
    OUTLINED_FUNCTION_11_7();
    *v3 = v5;
    v3[1] = sub_275398920;
    v6 = OUTLINED_FUNCTION_10_8();

    return MEMORY[0x282200430](v6);
  }
}

uint64_t sub_275398920()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275398A38()
{
  OUTLINED_FUNCTION_14_0();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_275398AC4;

  return sub_275398CA8();
}

uint64_t sub_275398AC4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_275398BA4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_275398CA8()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_2753B6288();
  v1[5] = sub_2753B6278();
  sub_27539AE6C(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v3 = sub_2753B70C8();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_275398D98, v3, v2);
}

uint64_t sub_275398D98()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[3];
  if (*(v1 + 56))
  {

    OUTLINED_FUNCTION_35_0();

    return v2();
  }

  else
  {
    v4 = v0[4];
    v0[8] = *(v1 + 48);

    v5 = swift_task_alloc();
    v0[9] = v5;
    v0[10] = *(v4 + 80);
    sub_275358C80();
    OUTLINED_FUNCTION_11_7();
    *v5 = v6;
    v5[1] = sub_275398EA0;
    v7 = OUTLINED_FUNCTION_10_8();

    return MEMORY[0x282200430](v7);
  }
}

uint64_t sub_275398EA0()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_275399088;
  }

  else
  {
    v7 = sub_275398FF0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_275398FF0()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[3];

  v4 = v0[2];
  type metadata accessor for SuzeDRMSession.LeaseRefresher(0, v1, *(v2 + 88), v5);
  *(v3 + 56) = sub_2753991AC(v4);

  OUTLINED_FUNCTION_35_0();

  return v6();
}

uint64_t sub_275399088()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_2753990E4()
{
  *(v1 + 16) = v0;
  sub_2753B6288();
  *(v1 + 24) = sub_2753B6278();
  sub_27539AE6C(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v3 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_275394C54, v3, v2);
}

uint64_t *sub_2753991E8(uint64_t a1)
{
  v2 = *v1;
  v1[2] = a1;
  v3 = *(v2 + 88);
  v4 = *(v3 + 32);
  v5 = *(v2 + 80);
  swift_unknownObjectRetain();
  v4(v5, v3);
  swift_unknownObjectRelease();
  return v1;
}

void *sub_275399278()
{
  v1 = *(*v0 + 88);
  v2 = *(v1 + 40);
  v3 = *(*v0 + 80);
  swift_unknownObjectRetain();
  v2(v3, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_275399310()
{
  v0 = sub_275399278();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_275399340()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FD514;

  return SuzeDRMSession.add(asset:)();
}

uint64_t sub_2753993D0(float a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752FE5C0;

  return SuzeDRMSession.prepare(forRate:)(a1);
}

uint64_t sub_275399480()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_27539955C;
  v4 = OUTLINED_FUNCTION_20_5();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_27539955C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_275399660(uint64_t a1, void *a2)
{
  sub_27539ABB0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_27539ADE8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275399930;
  aBlock[3] = &block_descriptor_46;
  v10 = _Block_copy(aBlock);

  [a2 startLeaseSessionWithCompletionHandler_];
  _Block_release(v10);
}

uint64_t sub_275399804(char a1, int a2, id a3)
{
  if (a1)
  {
    sub_27539ABB0(0);
    return sub_2753B70E8();
  }

  else
  {
    if (!a3)
    {
      v7 = 1;
      sub_27539ACB0(0);
      sub_27539AE6C(&qword_2809C3408, sub_27539ACB0, MEMORY[0x277D64F10]);
      swift_allocError();
      v5 = sub_27539AD0C();
      MEMORY[0x277C755D0](&v7, 0xD00000000000001ALL, 0x80000002753BDD20, MEMORY[0x277D84F90], &type metadata for SuzeLeaseError, v5);
    }

    v6 = a3;
    sub_27539ABB0(0);
    return sub_2753B70D8();
  }
}

void sub_275399930(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a3;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_2753999DC()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_275399AB4;
  v4 = OUTLINED_FUNCTION_20_5();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_275399AB4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275399BB8()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

void sub_275399C14(uint64_t a1, void *a2)
{
  sub_27539ABB0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_27539AC1C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275399EE4;
  aBlock[3] = &block_descriptor_2;
  v10 = _Block_copy(aBlock);

  [a2 stopLeaseSessionWithCompletionHandler_];
  _Block_release(v10);
}

uint64_t sub_275399DB8(char a1, id a2)
{
  if (a1)
  {
    sub_27539ABB0(0);
    return sub_2753B70E8();
  }

  else
  {
    if (!a2)
    {
      v6 = 2;
      sub_27539ACB0(0);
      sub_27539AE6C(&qword_2809C3408, sub_27539ACB0, MEMORY[0x277D64F10]);
      swift_allocError();
      v4 = sub_27539AD0C();
      MEMORY[0x277C755D0](&v6, 0xD000000000000019, 0x80000002753BDCC0, MEMORY[0x277D84F90], &type metadata for SuzeLeaseError, v4);
    }

    v5 = a2;
    sub_27539ABB0(0);
    return sub_2753B70D8();
  }
}

void sub_275399EE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_275399F60(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];

  return v2;
}

uint64_t sub_275399FA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return ICSuzeLeaseSession.start()();
}

uint64_t sub_27539A034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return ICSuzeLeaseSession.stop()();
}

uint64_t sub_27539A0C0()
{
  sub_27539B158();
  swift_allocObject();
  result = sub_2753B66D8();
  qword_2809C32D8 = result;
  return result;
}

uint64_t sub_27539A100()
{

  return MEMORY[0x2821FE8E8](v0, 85, 7);
}

uint64_t *sub_27539A148()
{
  v1 = 256;
  if (!*(v0 + 81))
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 80);
  v3 = 0x10000;
  if (!*(v0 + 82))
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if (!*(v0 + 83))
  {
    v4 = 0;
  }

  v5 = v2 | v3 | v4;
  v6 = 0x100000000;
  if (!*(v0 + 84))
  {
    v6 = 0;
  }

  return sub_2753974F0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v5 | v6, *(v0 + 16), *(v0 + 24));
}

void sub_27539A1D4(uint64_t a1)
{
  if (!qword_2809C32C0)
  {
    sub_2753B7148();
    v1 = sub_2753B72A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C32C0);
    }
  }
}

uint64_t sub_27539A22C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27539A26C()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v1;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_26_0(v8);
  *v9 = v10;
  v9[1] = sub_2752FD514;

  return sub_275397D10(v2, v5, v6, v7, v3, v4);
}

uint64_t sub_27539A328(uint64_t a1)
{
  sub_27539A1D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27539A398()
{
  result = qword_2809C32E0;
  if (!qword_2809C32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C32E0);
  }

  return result;
}

unint64_t sub_27539A3F0()
{
  result = qword_2809C32E8[0];
  if (!qword_2809C32E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C32E8);
  }

  return result;
}

uint64_t dispatch thunk of SuzeLeaseImpl.start()()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_9_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_15_7(v1);

  return v3(v2);
}

uint64_t dispatch thunk of SuzeLeaseImpl.stop()()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_9_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_15_7(v1);

  return v3(v2);
}

_BYTE *storeEnumTagSinglePayload for SuzeLeaseError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27539A744);
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

uint64_t sub_27539A864()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_27539A8B4(uint64_t a1)
{
  v3 = v2;
  v4 = *(v1 + 24);
  v17 = *(v1 + 16);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = 256;
  if (!*(v1 + 73))
  {
    v8 = 0;
  }

  v9 = v8 | *(v1 + 72);
  v10 = 0x10000;
  if (!*(v1 + 74))
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if (!*(v1 + 75))
  {
    v11 = 0;
  }

  v12 = v9 | v10 | v11;
  if (*(v1 + 76))
  {
    v13 = 0x100000000;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v1 + 80);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2752FE5C0;

  return sub_2753977A8(a1, v17, v4, v5, v6, v7, v12 | v13, v14);
}

uint64_t sub_27539AA04(uint64_t a1, uint64_t a2)
{
  sub_27539A1D4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_27539AA68(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = [v3 initWithRequestContext:a1 leaseID:sub_2753B76F8() mediaType:a3];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v7;
}

uint64_t sub_27539AAF4@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_27539ABB0(uint64_t a1)
{
  if (!qword_2809C33F0)
  {
    sub_275358C80();
    v1 = sub_2753B70F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C33F0);
    }
  }
}

uint64_t sub_27539AC1C(char a1, void *a2)
{
  sub_27539ABB0(0);
  OUTLINED_FUNCTION_75(v4);

  return sub_275399DB8(a1, a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_27539ACB0(uint64_t a1)
{
  if (!qword_2809C33F8)
  {
    sub_27539AD0C();
    v1 = sub_2753B6308();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C33F8);
    }
  }
}

unint64_t sub_27539AD0C()
{
  result = qword_2809C3400;
  if (!qword_2809C3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3400);
  }

  return result;
}

uint64_t objectdestroy_39Tm()
{
  sub_27539ABB0(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_27539ADE8(char a1, int a2, void *a3)
{
  sub_27539ABB0(0);
  OUTLINED_FUNCTION_75(v6);

  return sub_275399804(a1, a2, a3);
}

uint64_t sub_27539AE6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27539AEB4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_27539AFAC;

  return v6(a1);
}

uint64_t sub_27539AFAC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_35_0();

  return v3();
}

uint64_t sub_27539B08C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27539B0C4()
{
  OUTLINED_FUNCTION_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_9(v1);

  return v4(v3);
}

void sub_27539B158()
{
  if (!qword_2809C3410[0])
  {
    v0 = sub_2753B66E8();
    if (!v1)
    {
      atomic_store(v0, qword_2809C3410);
    }
  }
}

uint64_t OUTLINED_FUNCTION_11_8@<X0>(uint64_t a1@<X8>)
{
  v3[7] = v2;
  v3[4] = a1;
  v3[5] = v1;

  return sub_2753B7778();
}

void OUTLINED_FUNCTION_17_6()
{

  JUMPOUT(0x277C76100);
}

uint64_t OUTLINED_FUNCTION_18_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_2753B7398();
}

unint64_t OUTLINED_FUNCTION_21_6(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_275358C80();
}

uint64_t dispatch thunk of MusicDRMSession.add(asset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27539B3DC;

  return v9(a1, a2, a3);
}

uint64_t sub_27539B3DC()
{
  OUTLINED_FUNCTION_14_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of MusicDRMSession.prepare(forRate:)(uint64_t a1, uint64_t a2, float a3)
{
  v10 = (*(a2 + 16) + **(a2 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27539B9B8;
  v8.n128_f32[0] = a3;

  return v10(a1, a2, v8);
}

void sub_27539B680(uint64_t a1)
{
  if (!qword_2809C34A0)
  {
    v4[0] = sub_2753277B8(255, &qword_2809C34A8, 0x277D7FB68);
    v4[1] = sub_2753277B8(255, &qword_2809C34B0, 0x277D7FC50);
    v4[2] = &protocol witness table for ICMusicSubscriptionLeaseSession;
    v4[3] = &protocol witness table for ICSuzeLeaseSession;
    v2 = _s3DRMO24MusicDRMBehaviorTemplateVMa(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_2809C34A0);
    }
  }
}

uint64_t sub_27539B724()
{
  OUTLINED_FUNCTION_14_0();
  sub_2753B6288();
  *(v0 + 16) = sub_2753B6278();
  sub_27539B970(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v2 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_27539B7E4, v2, v1);
}

uint64_t sub_27539B7E4()
{
  OUTLINED_FUNCTION_14_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27539B844()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27539B3DC;

  return sub_27539B724();
}

unint64_t sub_27539B8D4()
{
  result = qword_2809C34B8;
  if (!qword_2809C34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34B8);
  }

  return result;
}

uint64_t sub_27539B970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27539B9C0()
{
  result = qword_2809C34C8;
  if (!qword_2809C34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34C8);
  }

  return result;
}

unint64_t sub_27539BA18()
{
  result = qword_2809C34D0;
  if (!qword_2809C34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34D0);
  }

  return result;
}

unint64_t sub_27539BA70()
{
  result = qword_2809C34D8;
  if (!qword_2809C34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34D8);
  }

  return result;
}

uint64_t sub_27539BAC4()
{
  sub_2753B6288();
  *(v0 + 16) = sub_2753B6278();
  sub_2752E5560();
  v2 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_27539BB58, v2, v1);
}

uint64_t sub_27539BB58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27539BBBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752E546C;

  return sub_27539BAC4();
}

unint64_t sub_27539BCB8()
{
  result = qword_2809C34E0;
  if (!qword_2809C34E0)
  {
    type metadata accessor for MusicPlayerServer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34E0);
  }

  return result;
}

unint64_t sub_27539BD34()
{
  result = qword_2809C34E8;
  if (!qword_2809C34E8)
  {
    type metadata accessor for MusicPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34E8);
  }

  return result;
}

unint64_t sub_27539BD8C()
{
  result = qword_2809C34F0;
  if (!qword_2809C34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34F0);
  }

  return result;
}

uint64_t sub_27539BE3C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2753B6288();
  *(v1 + 24) = sub_2753B6278();
  sub_27539C318(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v3 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_27539BF04, v3, v2);
}

uint64_t sub_27539BF04()
{
  v1 = *(v0 + 16);

  sub_2753B6C28();
  v2 = *(_s9PublisherO18_PublisherBehaviorVMa(0) + 20);
  type metadata accessor for MusicPlayerServer();
  *(v1 + v2) = swift_allocObject();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_27539BF94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752E546C;

  return sub_27539BE3C(a1);
}

uint64_t _s9PublisherO18_PublisherBehaviorVMa(uint64_t a1)
{
  result = qword_2809C34F8;
  if (!qword_2809C34F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27539C08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2753B6C38();
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

uint64_t sub_27539C14C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2753B6C38();
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

uint64_t sub_27539C1F4(uint64_t a1)
{
  result = sub_2753B6C38();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MusicPlayerServer();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27539C318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_27539C360()
{
  result = sub_27539C380();
  off_2809C3518 = result;
  return result;
}

uint64_t sub_27539C380()
{
  v0 = sub_2753B5D18();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v41 - v5;
  type metadata accessor for CMTime(0);
  v8 = v7;
  sub_27539CB90(0, &qword_2809C3520, MEMORY[0x277D834F8]);
  sub_27539C934(&qword_2809C3528, type metadata accessor for CMTime, MEMORY[0x277D85118]);
  v48 = sub_2753B6C98();
  v9 = sub_2753B5D08();
  v10 = v9;
  v45 = *(v9 + 16);
  if (v45)
  {
    v41[1] = v8;
    v42 = v9;
    v47 = 0;
    v11 = 0;
    v51 = v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v50 = v1 + 16;
    v52 = v1 + 8;
    v12 = v45;
    v43 = v4;
    v44 = v1;
    while (v11 < *(v10 + 16))
    {
      (*(v1 + 16))(v6, v51 + *(v1 + 72) * v11, v0);
      sub_2753B5CD8();
      sub_27539C934(&qword_2809C3530, MEMORY[0x277D7EFE8], MEMORY[0x277D7EFF0]);
      v13 = sub_2753B6D68();
      v14 = *(v1 + 8);
      v14(v4, v0);
      if ((v13 & 1) == 0)
      {
        sub_2753B5CF8();
        v15 = sub_2753B6DE8();

        v49 = v15;
        if ((v15 & 0x100000000) == 0)
        {
          v16 = sub_2753B7298();
          v18 = v17;
          v20 = v19;
          sub_2753B5CC8();
          v22 = v21;
          sub_27539C97C(v47, 0);
          v23 = v48;
          swift_isUniquelyReferenced_nonNull_native();
          v53 = v23;
          v46 = v16;
          v47 = v20;
          v24 = sub_275384438(v16, v18, v20);
          if (__OFADD__(*(v23 + 16), (v25 & 1) == 0))
          {
            goto LABEL_19;
          }

          v26 = v24;
          v27 = v25;
          sub_27539C98C(0);
          v28 = sub_2753B7478();
          v29 = v53;
          if (v28)
          {
            v30 = sub_275384438(v46, v18, v47);
            if ((v27 & 1) != (v31 & 1))
            {
              goto LABEL_21;
            }

            v26 = v30;
          }

          if ((v27 & 1) == 0)
          {
            sub_27539C7BC(&v53);
            v32 = v53;
            v29[(v26 >> 6) + 8] |= 1 << v26;
            v33 = (v29[6] + 24 * v26);
            v34 = v47;
            *v33 = v46;
            v33[1] = v18;
            v33[2] = v34;
            *(v29[7] + 8 * v26) = v32;
            v35 = v29[2];
            v36 = __OFADD__(v35, 1);
            v37 = v35 + 1;
            if (v36)
            {
              goto LABEL_20;
            }

            v29[2] = v37;
          }

          v38 = v22;
          v48 = v29;
          sub_27539CA54(v49, v38);
          v47 = sub_27539C7BC;
          v4 = v43;
          v1 = v44;
          v10 = v42;
          v12 = v45;
        }
      }

      ++v11;
      v14(v6, v0);
      if (v12 == v11)
      {

        v39 = v47;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_2753B7768();
    __break(1u);
  }

  else
  {

    v39 = 0;
LABEL_17:
    sub_27539C97C(v39, 0);
    return v48;
  }

  return result;
}

uint64_t sub_27539C7BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2753B6C98();
  *a1 = result;
  return result;
}

uint64_t static DefaultDSPParameterProvider.smartTransitionDefaultParameterSchedule.getter()
{
  if (qword_2809C06F8 != -1)
  {
    swift_once();
  }
}

_BYTE *storeEnumTagSinglePayload for DefaultDSPParameterProvider(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x27539C8FCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27539C934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27539C97C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_27539C98C(uint64_t a1)
{
  if (!qword_2809C3538)
  {
    type metadata accessor for CMTime(255);
    sub_27539CB90(255, &qword_2809C3520, MEMORY[0x277D834F8]);
    sub_27539C934(&qword_2809C3528, type metadata accessor for CMTime, MEMORY[0x277D85118]);
    v1 = sub_2753B7498();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C3538);
    }
  }
}

unint64_t sub_27539CA54(uint64_t a1, float a2)
{
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v5 = sub_2753843F0(a1);
  v7 = v6 ^ 1;
  if (__OFADD__(v15[2], (v6 ^ 1) & 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5;
  v9 = v6;
  sub_27539CB90(0, &qword_2809C3540, MEMORY[0x277D843B8]);
  if (sub_2753B7478())
  {
    v10 = sub_2753843F0(a1);
    if ((v9 & 1) == (v11 & 1))
    {
      v8 = v10;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_2753B7768();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v9)
  {
    v12 = v15[7];
    v13 = *(v12 + 4 * v8);
    *(v12 + 4 * v8) = a2;
  }

  else
  {
    sub_275328BCC(v8, a1, v15, a2);
    v13 = 0;
  }

  *v2 = v15;
  return v13 | ((v7 & 1) << 32);
}

void sub_27539CB90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_SonicKit_MusicKit::SmartTransitionSongTime __swiftcall SmartTransitionSongTime.init(sourceTime:targetTime:)(Swift::Double sourceTime, Swift::Double targetTime)
{
  *v2 = sourceTime;
  v2[1] = targetTime;
  result.targetTime = targetTime;
  result.sourceTime = sourceTime;
  return result;
}

uint64_t FullSmartTransitionData.transitionStrategy.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t SmartTransitionData.fullTransitionData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x80uLL);
  memcpy(a1, v1, 0x80uLL);
  return sub_27539CD18(__dst, v4);
}

void *SmartTransitionData.outgoingSongAudioMix.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

void *SmartTransitionData.incomingSongAudioMix.getter()
{
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

uint64_t SmartTransitionData.outgoingSongTransitionData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 144), sizeof(__dst));
  memcpy(a1, (v1 + 144), 0x60uLL);
  return sub_27539CDF4(__dst, &v4);
}

uint64_t SmartTransitionData.incomingSongTransitionData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 240), sizeof(__dst));
  memcpy(a1, (v1 + 240), 0x60uLL);
  return sub_27539CDF4(__dst, &v4);
}

uint64_t SmartTransitionProvided.hashValue.getter()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

unint64_t sub_27539CF18()
{
  result = qword_2809C3548;
  if (!qword_2809C3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3548);
  }

  return result;
}

uint64_t sub_27539CF78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27539CF98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_27539CFE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
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

uint64_t sub_27539D020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27539D094(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_27539D0E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_27539D168(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 336))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
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

uint64_t sub_27539D1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartTransitionProvided(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27539D318);
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

void OUTLINED_FUNCTION_3_8(__n128 *a1@<X8>, double a2@<D0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *a1 = a3;
  a1[1] = a4;
  a1[2].n128_f64[0] = a2;
}

uint64_t SmartTransitionData.debugDescription.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_2753B7398();
  OUTLINED_FUNCTION_2_11();
  MEMORY[0x277C76100]();
  MEMORY[0x277C76100](v1, v2);
  OUTLINED_FUNCTION_2_11();
  MEMORY[0x277C76100]();
  sub_2753B7198();
  OUTLINED_FUNCTION_2_11();
  v3 = MEMORY[0x277C76100]();
  OUTLINED_FUNCTION_0_11(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_11(v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_11(v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_3_9();
  sub_2753B7198();
  OUTLINED_FUNCTION_2_11();
  v21 = MEMORY[0x277C76100]();
  OUTLINED_FUNCTION_0_11(v21, v22, v23, v24, v25, v26);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_11(v27, v28, v29, v30, v31, v32);
  OUTLINED_FUNCTION_3_9();
  sub_2753B7198();
  OUTLINED_FUNCTION_2_11();
  MEMORY[0x277C76100]();
  return 0;
}

uint64_t SmartTransitionSongTime.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = [objc_allocWithZone(MEMORY[0x277CE6640]) init];
  [v3 setStyle_];
  sub_2753B7398();

  strcpy(v13, "(sourceTime: ");
  v4 = [v3 stringFromSeconds_];
  v5 = sub_2753B6D88();
  v7 = v6;

  MEMORY[0x277C76100](v5, v7);

  MEMORY[0x277C76100](0x746567726174202CLL, 0xEE00203A656D6954);
  v8 = [v3 stringFromSeconds_];
  v9 = sub_2753B6D88();
  v11 = v10;

  MEMORY[0x277C76100](v9, v11);

  MEMORY[0x277C76100](41, 0xE100000000000000);

  return v13[0];
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_2753B7468();
}

void OUTLINED_FUNCTION_1_12()
{

  JUMPOUT(0x277C76100);
}

void OUTLINED_FUNCTION_3_9()
{

  JUMPOUT(0x277C76100);
}

uint64_t sub_27539D798(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_100(a1);
  MEMORY[0x277C76A80]((v1 & 1u) + 1);
  return sub_2753B77D8();
}

uint64_t sub_27539D810(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_100(a1);
  MEMORY[0x277C76A80](qword_2753CD398[v1]);
  return sub_2753B77D8();
}

uint64_t sub_27539D8A4(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_100(a1);
  a2(v5, a1);
  return sub_2753B77D8();
}

uint64_t sub_27539D8F8(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_100(a1);
  if (v1)
  {
    v2 = 24;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x277C76A80](v2);
  return sub_2753B77D8();
}

uint64_t sub_27539D940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2753B5B48();
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

uint64_t sub_27539D9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2753B5E78();
  OUTLINED_FUNCTION_2_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10();
  v11 = v10 - v9;
  v12 = sub_2753B5F98();
  OUTLINED_FUNCTION_2_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  v18 = v17 - v16;
  (*(v7 + 16))(v11, a1, v5);
  sub_2753B5E98();
  if (v2)
  {
    return (*(v7 + 8))(a1, v5);
  }

  (*(v7 + 8))(a1, v5);
  return (*(v14 + 32))(a2, v18, v12);
}

void *sub_27539DB88@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v52 = sub_2753B6878();
  OUTLINED_FUNCTION_2_0();
  v62 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_13();
  v61 = v8;
  OUTLINED_FUNCTION_4_9();
  sub_2753B5A18();
  OUTLINED_FUNCTION_2_0();
  v58 = v10;
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_13();
  v56 = v11;
  OUTLINED_FUNCTION_4_9();
  sub_2753B59A8();
  OUTLINED_FUNCTION_2_0();
  v54 = v13;
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_13();
  v53 = v14;
  OUTLINED_FUNCTION_4_9();
  sub_2753B5D68();
  OUTLINED_FUNCTION_2_0();
  v50 = v16;
  v51 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_13();
  v49 = v17;
  OUTLINED_FUNCTION_4_9();
  sub_2753B5D78();
  OUTLINED_FUNCTION_2_0();
  v67 = v19;
  v69 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_13();
  v65 = v20;
  OUTLINED_FUNCTION_4_9();
  v21 = sub_2753B5C48();
  OUTLINED_FUNCTION_2_0();
  v64 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10();
  v26 = v25 - v24;
  v27 = sub_2753B5DE8();
  OUTLINED_FUNCTION_2_0();
  v71 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_13();
  v30 = *(a3 + 16);
  v76[0] = *a3;
  LOBYTE(v76[1]) = v30;
  v32 = v31;
  result = sub_27539E7B4(a1, a2, v76, v31);
  if (!v73)
  {
    v48 = v26;
    v74 = v27;
    sub_2753B5DB8();
    if ((*(v67 + 88))(v65, v69) == *MEMORY[0x277D7EFF8])
    {
      (*(v67 + 96))(v65, v69);
      (*(v64 + 32))(v26, v65, v21);
      sub_2753A5884(v26, __src);
      sub_27539F7B4(a1, v80);
      memcpy(v79, v80, sizeof(v79));
      sub_27539FB28(v78);
      memcpy(v77, v78, sizeof(v77));
      v70 = v32;
      sub_2753B59C8();
      if ((*(v54 + 88))(v53, v55) == *MEMORY[0x277D7EF70])
      {
        (*(v54 + 96))(v53, v55);
        (*(v50 + 32))(v49, v53, v51);
        v35 = sub_2753B5D58();
        v66 = v36;
        v68 = v35;
        (*(v50 + 8))(v49, v51);
      }

      else
      {
        (*(v54 + 8))(v53, v55);
        v66 = 0;
        v68 = 0;
      }

      v37 = v56;
      sub_2753B5A28();
      v38 = sub_2753B5A08();
      v57 = *(v58 + 8);
      v57(v37, v60);
      v59 = sub_27539FD6C(v38, v68, v66);

      sub_2753B5A28();
      v39 = sub_2753B59F8();
      v57(v37, v60);
      v40 = sub_27539FD6C(v39, v68, v66);

      memcpy(v76, __src, 0x80uLL);
      memcpy(&v76[9], v79, 0x60uLL);
      *&v76[8] = v59;
      *(&v76[8] + 1) = v40;
      memcpy(&v76[15], v77, 0x60uLL);
      sub_2753B6868();
      sub_2753A2678(v76, v75);
      v41 = sub_2753B6858();
      v42 = sub_2753B7248();
      sub_2753A26D4(v76);
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v82 = v44;
        *v43 = 136446210;
        memcpy(v75, v76, sizeof(v75));
        v45 = SmartTransitionData.debugDescription.getter();
        v47 = sub_275314A34(v45, v46, &v82);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_2752E3000, v41, v42, "[ALC] - Transition Generation Complete: %{public}s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x277C77190](v44, -1, -1);
        MEMORY[0x277C77190](v43, -1, -1);
      }

      (*(v62 + 8))(v61, v52);
      (*(v64 + 8))(v48, v21);
      (*(v71 + 8))(v70, v74);
      memcpy(v75, v76, sizeof(v75));
      nullsub_1();
      return memcpy(a4, v75, 0x150uLL);
    }

    else
    {
      (*(v67 + 8))(v65, v69);
      LOBYTE(v76[0]) = 1;
      sub_2753A2508(0);
      sub_2753A345C(&qword_2809C3080, sub_2753A2508, MEMORY[0x277D64F10]);
      swift_allocError();
      v34 = sub_275391728();
      MEMORY[0x277C755D0](v76, 0xD000000000000030, 0x80000002753BDFB0, MEMORY[0x277D84F90], &type metadata for SmartTransitionRendererError, v34);
      swift_willThrow();
      return (*(v71 + 8))(v32, v27);
    }
  }

  return result;
}

uint64_t sub_27539E4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2753B5F98();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_27539E4FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2753B5F98();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SmartTransitionRenderer(uint64_t a1)
{
  result = qword_2809C3550;
  if (!qword_2809C3550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27539E594(uint64_t a1)
{
  result = sub_2753B5F98();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartTransitionRendererError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27539E6CCLL);
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

unint64_t sub_27539E708()
{
  result = qword_2809C3560;
  if (!qword_2809C3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3560);
  }

  return result;
}

unint64_t sub_27539E760()
{
  result = qword_2809C3568;
  if (!qword_2809C3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3568);
  }

  return result;
}

uint64_t sub_27539E7B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a1;
  v109 = a2;
  v83 = a4;
  v86 = sub_2753B5E88();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A33B0(0);
  v87 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v88 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v91 = &v83 - v9;
  v90 = sub_2753B5F88();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v97 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2753B59B8();
  v99 = *(v100 - 8);
  v11 = MEMORY[0x28223BE20](v100);
  v95 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = &v83 - v13;
  v106 = sub_2753B5F48();
  v96 = *(v106 - 8);
  v14 = MEMORY[0x28223BE20](v106);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v98 = &v83 - v16;
  v17 = sub_2753B5F68();
  v104 = *(v17 - 8);
  v105 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v93 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v111 = &v83 - v20;
  v21 = sub_2753B5F58();
  v102 = *(v21 - 8);
  v103 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v92 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v101 = &v83 - v24;
  v25 = sub_2753B5F28();
  v107 = *(v25 - 8);
  v108 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v110 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v113 = &v83 - v28;
  v29 = sub_2753B5E28();
  MEMORY[0x28223BE20](v29 - 8);
  v30 = sub_2753B5FB8();
  MEMORY[0x28223BE20](v30 - 8);
  v31 = sub_2753B5CB8();
  MEMORY[0x28223BE20](v31 - 8);
  sub_2753A3588(0, &qword_2809C35C8, MEMORY[0x277D7EFE0]);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v83 - v33;
  sub_2753A3588(0, &qword_2809C35D0, MEMORY[0x277D7F048]);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v83 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v83 - v42;
  v44 = *(a3 + 16);
  v45 = sub_2753B5F08();
  v116 = v43;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v45);
  if (v44)
  {
    v47 = v115;
    v46 = v116;
  }

  else
  {
    sub_2753B5FC8();
    sub_2753B5E38();
    v51 = v115;
    sub_2753B5C98();
    if (v51)
    {
LABEL_6:
      v46 = v116;
      return sub_2753A3258(v46, &qword_2809C35D0, MEMORY[0x277D7F048]);
    }

    sub_2753B5C68();
    v47 = 0;
    v46 = v116;
    v69 = sub_2753B5C78();
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v69);
    sub_2753B5EF8();
    sub_2753A3258(v46, &qword_2809C35D0, MEMORY[0x277D7F048]);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v45);
    sub_2753A3508(v41, v46);
  }

  v48 = v114;
  sub_2753A0A78(v114, v46, v113);
  v49 = v111;
  v50 = v112;
  if (v47)
  {
    return sub_2753A3258(v46, &qword_2809C35D0, MEMORY[0x277D7F048]);
  }

  __swift_storeEnumTagSinglePayload(v38, 1, 1, v45);
  sub_2753A0A78(v109, v38, v110);
  sub_2753A3258(v38, &qword_2809C35D0, MEMORY[0x277D7F048]);
  v54 = v101;
  v53 = v102;
  v55 = v48;
  v56 = *(v102 + 104);
  v57 = v103;
  v56(v101, *MEMORY[0x277D7F078], v103);
  if ((*(v55 + *(type metadata accessor for SmartTransitionRequestSongData(0) + 40) + 8) & 1) == 0)
  {
    v58 = v92;
    sub_2753B5FC8();
    (*(v53 + 8))(v54, v57);
    v56(v58, *MEMORY[0x277D7F070], v57);
    (*(v53 + 32))(v54, v58, v57);
  }

  (*(v53 + 16))(v49, v54, v57);
  v59 = v104;
  v60 = v105;
  (*(v104 + 104))(v49, *MEMORY[0x277D7F080], v105);
  v61 = *MEMORY[0x277D7F060];
  v62 = sub_2753B5F38();
  v63 = v98;
  (*(*(v62 - 8) + 104))(v98, v61, v62);
  v64 = v96;
  v65 = v106;
  (*(v96 + 104))(v63, *MEMORY[0x277D7F068], v106);
  sub_2753A11DC(v114, v109, v50);
  (*(v59 + 16))(v93, v49, v60);
  (*(v64 + 16))(v94, v63, v65);
  (*(v99 + 16))(v95, v50, v100);
  v66 = v97;
  sub_2753B5F78();
  v70 = v105;
  v71 = v106;
  v72 = v91;
  sub_2753B5E58();
  v73 = v88;
  sub_2753A34A4(v72, v88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v74 = v85;
    v75 = v84;
    v76 = v86;
    (*(v85 + 32))(v84, v73, v86);
    v119 = 1;
    v117 = 0;
    v118 = 0xE000000000000000;
    sub_2753B7398();
    MEMORY[0x277C76100](0xD00000000000003DLL, 0x80000002753BDFF0);
    sub_2753B7468();
    v77 = v118;
    v115 = v117;
    v78 = v99;
    sub_2753A2508(0);
    sub_2753A345C(&qword_2809C3080, sub_2753A2508, MEMORY[0x277D64F10]);
    swift_allocError();
    v79 = sub_275391728();
    MEMORY[0x277C755D0](&v119, v115, v77, MEMORY[0x277D84F90], &type metadata for SmartTransitionRendererError, v79);
    swift_willThrow();
    (*(v74 + 8))(v75, v76);
    sub_2753A27BC(v91, sub_2753A33B0);
    (*(v89 + 8))(v97, v90);
    (*(v78 + 8))(v112, v100);
    (*(v64 + 8))(v98, v106);
    (*(v104 + 8))(v111, v105);
    (*(v102 + 8))(v101, v103);
    v67 = v108;
    v68 = *(v107 + 8);
    v68(v110, v108);
    v68(v113, v67);
    goto LABEL_6;
  }

  sub_2753A27BC(v72, sub_2753A33B0);
  (*(v89 + 8))(v66, v90);
  (*(v99 + 8))(v112, v100);
  (*(v64 + 8))(v98, v71);
  (*(v104 + 8))(v111, v70);
  (*(v102 + 8))(v101, v103);
  v80 = v108;
  v81 = *(v107 + 8);
  v81(v110, v108);
  v81(v113, v80);
  sub_2753A3258(v116, &qword_2809C35D0, MEMORY[0x277D7F048]);
  v82 = sub_2753B5DE8();
  return (*(*(v82 - 8) + 32))(v83, v73, v82);
}

uint64_t sub_27539F7B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *&v30 = a1;
  v3 = sub_2753B5A98();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A3588(0, &qword_2809C1848, MEMORY[0x277D2AAB8]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_2753B5A58();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753B5A68();
  v12 = sub_2753B5A48();
  (*(v9 + 8))(v11, v8);
  v13 = v34;
  v14 = sub_2753A1840(v12);

  if (!v13)
  {
    v16 = v30 + *(type metadata accessor for SmartTransitionRequestSongData(0) + 20);
    v17 = *(type metadata accessor for SongTransitionInfo(0) + 24);
    v18 = sub_2753B6808();
    v34 = v14;
    v19 = v18;
    (*(*(v18 - 8) + 16))(v7, v16 + v17, v18);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v19);
    sub_2753A6648(v38);
    v20 = sub_2753A1AD8(v7, v38[0]);
    sub_2753A3258(v7, &qword_2809C1848, MEMORY[0x277D2AAB8]);
    sub_2753A6688(v38);
    v21 = v38[0];
    v22 = v38[1];
    sub_2753A6648(&v37);
    v30 = v37;
    sub_2753A66C8(&v36);
    v29 = v36;
    sub_2753A6708(v35);
    v23 = v35[0];
    v24 = v35[1];
    v25 = v31;
    sub_2753B5AA8();
    sub_2753A6748();
    v27 = v26;
    result = (*(v32 + 8))(v25, v33);
    *a2 = v34;
    *(a2 + 8) = v21;
    *(a2 + 16) = v22;
    *(a2 + 24) = 0;
    v28 = v29;
    *(a2 + 32) = v30;
    *(a2 + 48) = v28;
    *(a2 + 64) = v23;
    *(a2 + 72) = v24;
    *(a2 + 80) = v27;
    *(a2 + 88) = v20;
  }

  return result;
}

uint64_t sub_27539FB28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2753B5A98();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2753B5A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753B5A68();
  v9 = sub_2753B5A38();
  (*(v6 + 8))(v8, v5);
  v10 = v21;
  v11 = sub_2753A1840(v9);

  if (!v10)
  {
    sub_2753A679C(&v24);
    v21 = v24;
    sub_2753A67DC(&v23);
    v18 = v23;
    sub_2753A681C(v22);
    v13 = v22[0];
    v14 = v22[1];
    sub_2753B5AA8();
    sub_2753A6BA4();
    v16 = v15;
    result = (*(v19 + 8))(v4, v20);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = v11;
    *(a1 + 24) = 1;
    v17 = v18;
    *(a1 + 32) = v21;
    *(a1 + 48) = v17;
    *(a1 + 64) = v13;
    *(a1 + 72) = v14;
    *(a1 + 80) = v16;
    *(a1 + 88) = 0;
  }

  return result;
}

id sub_27539FD6C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v87 = a2;
  v100 = sub_2753B5E28();
  v91 = *(v100 - 8);
  v94 = v91;
  MEMORY[0x28223BE20](v100);
  v99 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A2728(0);
  v96 = v5;
  MEMORY[0x28223BE20](v5);
  v114 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2753B5BB8();
  v7 = *(v98 - 8);
  v93 = v7;
  MEMORY[0x28223BE20](v98);
  v97 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A3588(0, &qword_2809C3580, MEMORY[0x277D7EFB8]);
  MEMORY[0x28223BE20](v9 - 8);
  v106 = (&v83 - v10);
  v113 = sub_2753B5B48();
  v101 = *(v113 - 8);
  v11 = MEMORY[0x28223BE20](v113);
  v95 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v83 - v13;
  v110 = sub_2753B5D18();
  v15 = *(v110 - 8);
  v16 = MEMORY[0x28223BE20](v110);
  v109 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v108 = &v83 - v18;
  v19 = sub_2753B5AE8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v105 = &v83 - v25;
  MEMORY[0x28223BE20](v24);
  v85 = &v83 - v26;
  v86 = [objc_allocWithZone(MEMORY[0x277CE6538]) init];
  v102 = [objc_opt_self() audioMixInputParametersWithTrack_];
  [v102 setTrackID_];
  v27 = 0;
  v104 = a1;
  v112 = *(a1 + 16);
  v107 = (v20 + 16);
  v28 = (v15 + 8);
  v111 = v20;
  v103 = (v20 + 8);
  while (v112 != v27)
  {
    (*(v111 + 16))(v23, v104 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v27, v19);
    v29 = v108;
    sub_2753B5AD8();
    v30 = v109;
    sub_2753B5CD8();
    v31 = sub_2753B5CE8();
    v32 = *v28;
    v33 = v30;
    v34 = v110;
    (*v28)(v33, v110);
    v32(v29, v34);
    if (v31)
    {
      v35 = *(v111 + 32);
      v36 = v105;
      v35(v105, v23, v19);
      v83 = v19;
      v35(v85, v36, v19);
      v37 = sub_2753B5AB8();
      v38 = v106;
      sub_27539D940(v37, v106);
      v39 = v113;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v113);
      v84 = v37;
      if (EnumTagSinglePayload == 1)
      {
        sub_2753A3258(v38, &qword_2809C3580, MEMORY[0x277D7EFB8]);
        v41 = v97;
        v42 = v101;
      }

      else
      {
        (*(v101 + 32))(v14, v38, v39);
        v41 = v97;
        sub_2753B5B38();
        v43 = v114;
        sub_2753B5B98();
        v44 = v98;
        v112 = *(v7 + 8);
        (v112)(v41, v98);
        v45 = v94;
        v46 = v99;
        v47 = v100;
        v111 = v94[2];
        (v111)(v99, v43, v100);
        sub_2753A27BC(v43, sub_2753A2728);
        sub_2753B5E18();
        v49 = v48;
        v50 = v45 + 1;
        v51 = v45[1];
        (v51)(v46, v47);
        if (v49 != 0.0)
        {
          v94 = v50;
          sub_2753B5B18();
          v53 = v52;
          sub_2753B5B18();
          v55 = v54;
          v110 = sub_2753B7298();
          v109 = v56;
          sub_2753B5B38();
          sub_2753B5B98();
          (v112)(v41, v44);
          (v111)(v46, v114, v47);
          sub_2753A27BC(v114, sub_2753A2728);
          sub_2753B5E18();
          (v51)(v46, v47);
          sub_2753B7298();
          sub_2753B7228();
          *&v57 = v53;
          *&v58 = v55;
          [v102 setVolumeRampFromStartVolume:&v116 toEndVolume:v57 timeRange:v58];
        }

        v59 = v101;
        (*(v101 + 8))(v14, v113);
        v42 = v59;
        v37 = v84;
      }

      v60 = *(v37 + 16);
      if (v60)
      {
        v62 = *(v42 + 16);
        v61 = v42 + 16;
        v94 = v62;
        v63 = (v37 + ((*(v61 + 64) + 32) & ~*(v61 + 64)));
        ++v93;
        v89 = *(v61 + 56);
        v92 = (v91 + 2);
        ++v91;
        v90 = (v61 - 8);
        v112 = (v60 - 1);
        v101 = v61;
        v64 = v95;
        v65 = v99;
        v66 = v91;
        while (1)
        {
          v105 = v63;
          (v94)(v64);
          sub_2753B5B18();
          *&v68 = v67;
          sub_2753B5B28();
          *&v70 = v69;
          sub_2753B5B38();
          sub_2753B5B98();
          v107 = *v93;
          v71 = v98;
          v107(v41, v98);
          v108 = *v92;
          v72 = v100;
          (v108)(v65, v114, v100);
          sub_2753A27BC(v114, sub_2753A2728);
          sub_2753B5E18();
          v106 = *v66;
          (v106)(v65, v72);
          v111 = sub_2753B7298();
          v110 = v73;
          v109 = v74;
          sub_2753B5B38();
          (*v90)(v64, v113);
          sub_2753B5B98();
          v107(v41, v71);
          (v108)(v65, v114 + *(v96 + 36), v72);
          sub_2753A27BC(v114, sub_2753A2728);
          sub_2753B5E18();
          (v106)(v65, v72);
          sub_2753B7298();
          sub_2753B7228();
          v115[0] = v116;
          v115[1] = v117;
          v115[2] = v118;
          [v102 setVolumeRampFromStartVolume:v115 toEndVolume:COERCE_DOUBLE(__PAIR64__(DWORD1(v118) timeRange:{v68)), COERCE_DOUBLE(__PAIR64__(DWORD1(v117), v70))}];
          if (!v112)
          {
            break;
          }

          --v112;
          v63 = &v105[v89];
          v41 = v97;
        }
      }

      (*v103)(v85, v83);
      break;
    }

    ++v27;
    (*v103)(v23, v19);
  }

  sub_2753A39C0(v104, v87, v88);
  v76 = v102;
  if (v75)
  {
    v77 = v75;
    [v102 addEffect_];
  }

  sub_2753A32AC(0, &qword_2809C3588, MEMORY[0x277D84F68] + 8);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_2753CD240;
  *(v78 + 32) = v76;
  sub_2753A2814();
  v79 = v76;
  v80 = sub_2753B6FC8();

  v81 = v86;
  [v86 setInputParameters_];

  return v81;
}

uint64_t sub_2753A0A78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v63 = a3;
  sub_2753A3588(0, &qword_2809C35D0, MEMORY[0x277D7F048]);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v55 - v5;
  sub_2753A3588(0, &qword_2809C35D8, MEMORY[0x277D7F058]);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v55 - v7;
  sub_2753A3588(0, &qword_2809C1850, MEMORY[0x277D2A988]);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = &v55 - v9;
  sub_2753A3588(0, &qword_2809C1848, MEMORY[0x277D2AAB8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_2753B5EB8();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13);
  v67 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D2AC90];
  sub_2753A3588(0, &qword_2809C1288, MEMORY[0x277D2AC90]);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v64 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v55 - v22;
  v71 = sub_2753B5EC8();
  v24 = *(v71 - 8);
  v25 = MEMORY[0x28223BE20](v71);
  v56 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v55 - v27;

  v69 = v28;
  sub_2753B5ED8();
  v29 = type metadata accessor for SmartTransitionRequestSongData(0);
  v30 = a1 + v29[5];
  v31 = type metadata accessor for SongTransitionInfo(0);
  sub_2753A35DC(&v30[v31[8]], v23, &qword_2809C1288, v15);
  v32 = v29[6];
  v59 = a1;
  LODWORD(v32) = *(a1 + v32);
  v70 = v24;
  v66 = v23;
  if (v32 == 1)
  {
    sub_2753A35DC(v23, v21, &qword_2809C1288, MEMORY[0x277D2AC90]);
  }

  else
  {
    v33 = sub_2753B6818();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v33);
  }

  v34 = v31[6];
  v35 = sub_2753B6808();
  (*(*(v35 - 8) + 16))(v12, &v30[v34], v35);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v35);
  v36 = v31[5];
  v37 = sub_2753B67C8();
  v38 = &v30[v36];
  v39 = v65;
  (*(*(v37 - 8) + 16))(v65, v38, v37);
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v37);
  sub_2753A35DC(v21, v64, &qword_2809C1288, MEMORY[0x277D2AC90]);

  v40 = v67;
  v41 = v68;
  sub_2753B5EA8();
  if (v41)
  {
    v48 = v71;
    v50 = v69;
    v49 = v70;
    v51 = v66;
    v52 = MEMORY[0x277D2AC90];
    sub_2753A3258(v21, &qword_2809C1288, MEMORY[0x277D2AC90]);
    sub_2753A3258(v51, &qword_2809C1288, v52);
    return (*(v49 + 8))(v50, v48);
  }

  else
  {
    (*(v70 + 16))(v56, v69, v71);
    v42 = v60;
    v43 = v59 + v29[9];
    v68 = *v43;
    LODWORD(v65) = v43[8];
    v45 = v57;
    v44 = v58;
    (*(v57 + 16))(v60, v40, v58);
    v46 = *MEMORY[0x277D7F050];
    v47 = sub_2753B5F18();
    (*(*(v47 - 8) + 104))(v42, v46, v47);
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v47);
    sub_2753A35DC(v62, v61, &qword_2809C35D0, MEMORY[0x277D7F048]);
    sub_2753B5EE8();
    (*(v45 + 8))(v40, v44);
    v53 = MEMORY[0x277D2AC90];
    sub_2753A3258(v21, &qword_2809C1288, MEMORY[0x277D2AC90]);
    sub_2753A3258(v66, &qword_2809C1288, v53);
    return (*(v70 + 8))(v69, v71);
  }
}

uint64_t sub_2753A11DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v5 = sub_2753B6878();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v46 = &v43 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = *MEMORY[0x277D7EF80];
  v17 = sub_2753B59B8();
  v18 = *(v17 - 8);
  v48 = *(v18 + 104);
  v49 = a3;
  v48(a3, v16, v17);
  result = type metadata accessor for SmartTransitionRequestSongData(0);
  v20 = result;
  v21 = *(result + 24);
  v22 = &off_27A64A000;
  if (*(a1 + v21) == 1 && (*(a1 + *(result + 32)) & 1) != 0 || *(v50 + v21) == 1 && *(v50 + *(result + 32)) == 1)
  {
    v45 = v6;
    if (MSVDeviceOSIsInternalInstall() && (v23 = [objc_opt_self() standardUserDefaults], v24 = sub_2753B6D78(), v44 = v5, v25 = v24, v26 = objc_msgSend(v23, sel_BOOLForKey_, v24), v23, v25, v5 = v44, v26))
    {
      sub_2753B6868();
      v27 = sub_2753B6858();
      v28 = sub_2753B7248();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2752E3000, v27, v28, "[ALC] - Spatialized asset missing edit list transition complexity downgrade overridden", v29, 2u);
        v13 = v15;
LABEL_11:
        v6 = v45;
        MEMORY[0x277C77190](v29, -1, -1);
        v5 = v44;
LABEL_14:

        result = (*(v6 + 8))(v13, v5);
        v22 = &off_27A64A000;
        goto LABEL_15;
      }

      v13 = v15;
    }

    else
    {
      v30 = v49;
      (*(v18 + 8))(v49, v17);
      v48(v30, *MEMORY[0x277D7EF78], v17);
      sub_2753B6868();
      v27 = sub_2753B6858();
      v31 = sub_2753B7248();
      if (os_log_type_enabled(v27, v31))
      {
        v44 = v5;
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2752E3000, v27, v31, "[ALC] - Transition complexity downgraded to .crossFadeWithEffects due to spatialized asset with missing edit list", v29, 2u);
        goto LABEL_11;
      }
    }

    v6 = v45;
    goto LABEL_14;
  }

LABEL_15:
  v32 = *(v20 + 28);
  if (*(a1 + v32) != 1 || (*(v50 + v32) & 1) == 0)
  {
    if (MSVDeviceOSIsInternalInstall() && (v33 = [objc_opt_self() v22[281]], v34 = sub_2753B6D78(), v35 = objc_msgSend(v33, sel_BOOLForKey_, v34), v33, v34, v35))
    {
      v36 = v46;
      sub_2753B6868();
      v37 = sub_2753B6858();
      v38 = sub_2753B7248();
      if (!os_log_type_enabled(v37, v38))
      {
        v40 = v36;
        goto LABEL_24;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2752E3000, v37, v38, "[ALC] - Non-subscription transition complexity downgrade overridden", v39, 2u);
      v40 = v36;
    }

    else
    {
      v41 = v49;
      (*(v18 + 8))(v49, v17);
      v48(v41, *MEMORY[0x277D7EF88], v17);
      v40 = v47;
      sub_2753B6868();
      v37 = sub_2753B6858();
      v42 = sub_2753B7248();
      if (!os_log_type_enabled(v37, v42))
      {
LABEL_24:

        return (*(v6 + 8))(v40, v5);
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2752E3000, v37, v42, "[ALC] - Transition complexity downgraded to .fallback due to both items not being subscription items", v39, 2u);
    }

    MEMORY[0x277C77190](v39, -1, -1);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_2753A1840(uint64_t a1)
{
  v26 = sub_2753B5BB8();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2753B5BD8();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v20[1] = v1;
    v28 = MEMORY[0x277D84F90];
    sub_27538823C(0, v8, 0);
    v9 = v28;
    v11 = *(v5 + 16);
    v10 = v5 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v21 = *(v10 + 56);
    v22 = v11;
    v13 = (v3 + 8);
    v23 = v10;
    v14 = (v10 - 8);
    do
    {
      v15 = v24;
      v22(v7, v12, v24);
      v16 = v25;
      sub_2753B5BC8();
      sub_2753A1FC0(v16, __src);
      (*v13)(v16, v26);
      (*v14)(v7, v15);
      v28 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_27538823C(v17 > 1, v18 + 1, 1);
        v9 = v28;
      }

      *(v9 + 16) = v18 + 1;
      memcpy((v9 + 96 * v18 + 32), __src, 0x60uLL);
      v12 += v21;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {

      return 0;
    }
  }

  return v9;
}

uint64_t sub_2753A1AD8(uint64_t a1, double a2)
{
  sub_2753A3588(0, &qword_2809C35A8, MEMORY[0x277D2A9B8]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_2753B67E8();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D2AAB8];
  sub_2753A3588(0, &qword_2809C1848, MEMORY[0x277D2AAB8]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_2753B6808();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A35DC(a1, v13, &qword_2809C1848, v10);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_2753B67F8();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      (*(v15 + 8))(v17, v14);
      v18 = &qword_2809C35A8;
      v19 = MEMORY[0x277D2A9B8];
      v20 = v6;
      goto LABEL_5;
    }

    (*(v41 + 32))(v9, v6, v7);
    v22 = sub_2753B67D8();
    v23 = *(v22 + 16);
    v40 = v22;
    if (v23)
    {
      v24 = (v22 + 32);
      v25 = MEMORY[0x277D84F90];
      do
      {
        v26 = *v24;
        if (*v24 < a2)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_27538825C(0, *(v25 + 16) + 1, 1);
            v25 = v42;
          }

          v29 = *(v25 + 16);
          v28 = *(v25 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_27538825C(v28 > 1, v29 + 1, 1);
            v25 = v42;
          }

          *(v25 + 16) = v29 + 1;
          *(v25 + 8 * v29 + 32) = v26;
        }

        ++v24;
        --v23;
      }

      while (v23);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v42 = v25;

    sub_2753A260C(&v42);

    v31 = sub_2753A2470(10, v42);
    v33 = v32;
    v35 = v34;
    if (v34)
    {
      v40 = v30;
      sub_2753B7728();
      swift_unknownObjectRetain_n();
      v37 = swift_dynamicCastClass();
      if (!v37)
      {
        swift_unknownObjectRelease();
        v37 = MEMORY[0x277D84F90];
      }

      v38 = *(v37 + 16);

      if (__OFSUB__(v35 >> 1, v33))
      {
        __break(1u);
      }

      else if (v38 == (v35 >> 1) - v33)
      {
        v21 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v21)
        {
LABEL_26:
          (*(v41 + 8))(v9, v7);
          (*(v15 + 8))(v17, v14);
          return v21;
        }

        v21 = MEMORY[0x277D84F90];
LABEL_25:
        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
      v30 = v40;
    }

    sub_2753A2858(v31, v30, v33, v35);
    v21 = v36;
    goto LABEL_25;
  }

  v18 = &qword_2809C1848;
  v19 = MEMORY[0x277D2AAB8];
  v20 = v13;
LABEL_5:
  sub_2753A3258(v20, v18, v19);
  return MEMORY[0x277D84F90];
}

void *sub_2753A1FC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v35 = sub_2753B5E28();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v33 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A2728(0);
  v36 = v4 - 8;
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2753B5FB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A31C4(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753B5BA8();
  v27 = *(v7 + 16);
  v27(v9, v13, v6);
  sub_2753A27BC(v13, sub_2753A31C4);
  sub_2753B5FA8();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v31 = sub_2753B7298();
  v30 = v15;
  v29 = v16;
  v28 = a1;
  sub_2753B5BA8();
  v27(v9, &v13[*(v11 + 44)], v6);
  sub_2753A27BC(v13, sub_2753A31C4);
  sub_2753B5FA8();
  v14(v9, v6);
  sub_2753B7298();
  sub_2753B7228();
  v17 = v32;
  sub_2753B5B98();
  v18 = v34;
  v19 = *(v34 + 16);
  v20 = v33;
  v21 = v35;
  v19(v33, v17, v35);
  sub_2753A27BC(v17, sub_2753A2728);
  sub_2753B5E18();
  v22 = *(v18 + 8);
  v22(v20, v21);
  sub_2753B7298();
  v34 = v23;
  v31 = v24;
  sub_2753B5B98();
  v19(v20, v17 + *(v36 + 44), v21);
  sub_2753A27BC(v17, sub_2753A2728);
  sub_2753B5E18();
  v22(v20, v21);
  sub_2753B7298();
  sub_2753B7228();
  __src[0] = v38;
  __src[1] = v39;
  __src[2] = v40;
  return memcpy(v37, __src, 0x60uLL);
}

uint64_t sub_2753A2470(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2753A3364(v3, -result, 0);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_2753A32F8(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_2753A2508(uint64_t a1)
{
  if (!qword_2809C3070)
  {
    sub_275391728();
    v1 = sub_2753B6308();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C3070);
    }
  }
}

uint64_t sub_2753A260C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2753B365C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2753A2924(v6);
  *a1 = v2;
  return result;
}

void sub_2753A2728(uint64_t a1)
{
  if (!qword_2809C3570)
  {
    sub_2753B5E28();
    sub_2753A345C(&qword_2809C3578, MEMORY[0x277D7F020], MEMORY[0x277D7F028]);
    v1 = sub_2753B6D58();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C3570);
    }
  }
}

uint64_t sub_2753A27BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2753A2814()
{
  result = qword_2809C3590;
  if (!qword_2809C3590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C3590);
  }

  return result;
}

void sub_2753A2858(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_2753A32AC(0, &qword_2809C35B0, MEMORY[0x277D839F8]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_0(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 8);
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
      return;
    }

    goto LABEL_10;
  }
}

uint64_t sub_2753A2924(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2753B76A8();
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
        v6 = sub_2753B7048();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2753A2A74(v7, v8, a1, v4);
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
    return sub_2753A2A18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2753A2A18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2753A2A74(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_275384E68();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_275384E68();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_2753A3050((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_2753A2F24(&v79, *result, a3);
LABEL_89:
}

uint64_t sub_2753A2F24(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2753B20A8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2753A3050((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2753A3050(char *a1, char *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_2753858F4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_2753858F4(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

void sub_2753A31C4(uint64_t a1)
{
  if (!qword_2809C3598)
  {
    sub_2753B5FB8();
    sub_2753A345C(&qword_2809C35A0, MEMORY[0x277D7F088], MEMORY[0x277D7F090]);
    v1 = sub_2753B6D58();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C3598);
    }
  }
}

uint64_t sub_2753A3258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2753A3588(0, a2, a3);
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_2753A32AC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2753B76C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2753A32F8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2753A3364(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_2753A33B0(uint64_t a1)
{
  if (!qword_2809C35B8)
  {
    sub_2753B5DE8();
    sub_2753B5E88();
    sub_2753A345C(&qword_2809C35C0, MEMORY[0x277D7F038], MEMORY[0x277D7F040]);
    v1 = sub_2753B77E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C35B8);
    }
  }
}

uint64_t sub_2753A345C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2753A34A4(uint64_t a1, uint64_t a2)
{
  sub_2753A33B0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2753A3508(uint64_t a1, uint64_t a2)
{
  sub_2753A3588(0, &qword_2809C35D0, MEMORY[0x277D7F048]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2753A3588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2753B72A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2753A35DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2753A3588(0, a3, a4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2753A367C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SongTransitionInfo(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2753A3718(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SongTransitionInfo(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SmartTransitionRequestSongData(uint64_t a1)
{
  result = qword_2809C35E0;
  if (!qword_2809C35E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2753A37E4(uint64_t a1)
{
  type metadata accessor for SongTransitionInfo(319);
  if (v1 <= 0x3F)
  {
    sub_2753A388C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2753A388C()
{
  if (!qword_2809C35F0)
  {
    v0 = sub_2753B72A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C35F0);
    }
  }
}

char *sub_2753A38DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_275385670(*(a1 + 16), 0);
  v4 = sub_2753A532C(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_2753A5478(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  sub_2753A470C(&v7);
  return v7;
}

void sub_2753A39C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v47 = a2;
    v48 = a3;

    v4 = sub_2753A3DE0(a1);
    v5 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D84F90];
    v6 = sub_2753A38DC(v4);
    v7 = v6;
    v8 = *(v6 + 2);
    if (v8)
    {
      v9 = 0;
      v10 = v6 + 32;
      v11 = v5;
      v51 = v6;
      v52 = v4;
      v49 = (v6 + 32);
      v50 = *(v6 + 2);
      while (v9 < *(v7 + 16))
      {
        if (v4[2])
        {
          v12 = &v10[24 * v9];
          v54 = v12[1];
          v55 = *v12;
          v56 = v12[2];
          v13 = sub_275384438(*v12, v54, v56);
          if (v14)
          {
            v15 = *(v4[7] + 8 * v13);
            v16 = *(v15 + 16);
            if (v16)
            {
              v53 = v9;
              v62 = v5;

              sub_2753B7438();
              v18 = sub_2753A542C(v15);
              v20 = v19;
              v21 = 0;
              v61 = v15 + 64;
              v58 = v19;
              v57 = v15 + 72;
              while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v15 + 32))
              {
                v22 = v18 >> 6;
                if ((*(v61 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
                {
                  goto LABEL_35;
                }

                if (*(v15 + 36) != v20)
                {
                  goto LABEL_36;
                }

                v60 = v17;
                v23 = *(*(v15 + 48) + 4 * v18);
                v24 = *(*(v15 + 56) + 4 * v18);
                v25 = objc_allocWithZone(MEMORY[0x277CE64A0]);
                LODWORD(v26) = v24;
                [v25 initWithFourCharCode:v23 value:v26];
                sub_2753B7418();
                sub_2753B7448();
                sub_2753B7458();
                v27 = sub_2753B7428();
                v35 = 1 << *(v15 + 32);
                if (v18 >= v35)
                {
                  goto LABEL_37;
                }

                v36 = *(v61 + 8 * v22);
                if ((v36 & (1 << v18)) == 0)
                {
                  goto LABEL_38;
                }

                if (*(v15 + 36) != v20)
                {
                  goto LABEL_39;
                }

                v37 = v36 & (-2 << (v18 & 0x3F));
                if (v37)
                {
                  v35 = __clz(__rbit64(v37)) | v18 & 0x7FFFFFFFFFFFFFC0;
                }

                else
                {
                  v38 = v22 << 6;
                  v39 = v22 + 1;
                  v40 = (v57 + 8 * v22);
                  while (v39 < (v35 + 63) >> 6)
                  {
                    v42 = *v40++;
                    v41 = v42;
                    v38 += 64;
                    ++v39;
                    if (v42)
                    {
                      OUTLINED_FUNCTION_4_10(v27, v28, v29, v30, v31, v32, v33, v34, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
                      v35 = __clz(__rbit64(v41)) + v38;
                      goto LABEL_23;
                    }
                  }

                  OUTLINED_FUNCTION_4_10(v27, v28, v29, v30, v31, v32, v33, v34, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
                }

LABEL_23:
                v17 = 0;
                ++v21;
                v18 = v35;
                v20 = v58;
                if (v21 == v16)
                {

                  v43 = v62;
                  v7 = v51;
                  v4 = v52;
                  v5 = MEMORY[0x277D84F90];
                  v10 = v49;
                  v8 = v50;
                  v9 = v53;
                  goto LABEL_26;
                }
              }

              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              break;
            }

            v43 = v5;
LABEL_26:
            sub_2753277B8(0, &qword_2809C36D0, 0x277CE64A8);
            v44 = sub_2753A464C(v43, v55, v54, v56);
            MEMORY[0x277C76290]();
            if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2753B7018();
            }

            sub_2753B7068();

            v11 = v63;
          }
        }

        if (++v9 == v8)
        {

          goto LABEL_33;
        }
      }

      __break(1u);
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
LABEL_33:
      sub_2753277B8(0, &qword_2809C35F8, 0x277CCABB0);
      sub_2753A489C();
      sub_2753A4904();
      v45 = sub_2753B6C98();
      v46 = objc_allocWithZone(MEMORY[0x277CE6498]);
      sub_2753A4778(v47, v48, v45, v11, 0xD000000000000015, 0x80000002753BE0A0);
    }
  }
}

void *sub_2753A3DE0(unint64_t a1)
{
  v99 = sub_2753B5E28();
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  v98 = v6 - v5;
  OUTLINED_FUNCTION_4_9();
  v97 = sub_2753B5B08();
  OUTLINED_FUNCTION_2_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10();
  v96 = v11 - v10;
  OUTLINED_FUNCTION_4_9();
  v95 = sub_2753B5B78();
  OUTLINED_FUNCTION_2_0();
  v103 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v94 = (v15 - v14);
  OUTLINED_FUNCTION_4_9();
  v16 = sub_2753B5D18();
  OUTLINED_FUNCTION_2_0();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v76 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v86 = &v75 - v23;
  MEMORY[0x28223BE20](v22);
  v85 = &v75 - v24;
  OUTLINED_FUNCTION_4_9();
  v87 = sub_2753B5AE8();
  OUTLINED_FUNCTION_2_0();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10();
  isUniquelyReferenced_nonNull_native = v29 - v28;
  if (qword_2809C06F8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v31 = off_2809C3518;
  v84 = *(a1 + 16);
  if (!v84)
  {

    return v31;
  }

  v83 = v16;
  v33 = *(v26 + 2);
  v32 = v26 + 16;
  v81 = v33;
  v80 = a1 + ((v32[64] + 32) & ~v32[64]);
  v34 = (v18 + 8);
  v92 = (v8 + 8);
  v93 = v103 + 16;
  v90 = v103 + 8;
  v91 = (v3 + 1);
  v77 = (v32 - 8);
  v82 = v32;
  v79 = *(v32 + 7);

  v35 = 0;
  v36 = 0;
  v37 = v87;
  v78 = isUniquelyReferenced_nonNull_native;
  v89 = (v18 + 8);
  while (1)
  {
    v88 = v36;
    v81(isUniquelyReferenced_nonNull_native, v80 + v79 * v36, v37);
    v26 = v85;
    sub_2753B5AD8();
    v38 = v86;
    sub_2753B5CD8();
    sub_27539C934(&qword_2809C3530, MEMORY[0x277D7EFE8], MEMORY[0x277D7EFF0]);
    v8 = v83;
    v39 = sub_2753B6D68();
    v18 = *v34;
    (*v34)(v38, v8);
    (v18)(v26, v8);
    if (v39)
    {
      goto LABEL_26;
    }

    v16 = v76;
    sub_2753B5AD8();
    sub_2753B5CF8();
    (v18)(v16, v8);
    v40 = sub_2753B6DE8();

    v104 = v40;
    if ((v40 & 0x100000000) != 0)
    {
      goto LABEL_26;
    }

    v3 = sub_2753B5AC8();
    v102 = v3[2];
    if (v102)
    {
      break;
    }

LABEL_25:

LABEL_26:
    v37 = v87;
    v73 = v88 + 1;
    isUniquelyReferenced_nonNull_native = v78;
    (*v77)(v78, v87);
    v36 = v73;
    if (v73 == v84)
    {
      sub_27539C97C(v35, 0);
      return v31;
    }
  }

  type metadata accessor for CMTime(0);
  v75 = v41;
  a1 = 0;
  v42 = *(v103 + 80);
  v100 = v3;
  v101 = v3 + ((v42 + 32) & ~v42);
  while (1)
  {
    if (a1 >= v3[2])
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v43 = v103;
    v44 = v35;
    v45 = v94;
    v16 = v95;
    (*(v103 + 16))(v94, &v101[*(v103 + 72) * a1], v95);
    v46 = v96;
    sub_2753B5B58();
    v47 = v98;
    sub_2753B5AF8();
    (*v92)(v46, v97);
    sub_2753B5E18();
    (*v91)(v47, v99);
    v8 = sub_2753B7298();
    v18 = v48;
    v26 = v49;
    v3 = v45;
    sub_2753B5B68();
    v51 = v50;
    (*(v43 + 8))(v45, v16);
    sub_27539C97C(v44, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105[0] = v31;
    v52 = OUTLINED_FUNCTION_3_10();
    if (__OFADD__(v31[2], (v53 & 1) == 0))
    {
      goto LABEL_31;
    }

    v54 = v52;
    v16 = v53;
    sub_27539C98C(0);
    v55 = sub_2753B7478();
    v31 = v105[0];
    if (v55)
    {
      v56 = OUTLINED_FUNCTION_3_10();
      if ((v16 & 1) != (v57 & 1))
      {
        goto LABEL_36;
      }

      v54 = v56;
    }

    if ((v16 & 1) == 0)
    {
      v3 = HIDWORD(v18);
      sub_27539C7BC(v105);
      v58 = v105[0];
      v31[(v54 >> 6) + 8] |= 1 << v54;
      v59 = (v31[6] + 24 * v54);
      *v59 = v8;
      v59[1] = v18;
      v59[2] = v26;
      *(v31[7] + 8 * v54) = v58;
      v60 = v31[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_33;
      }

      v31[2] = v62;
    }

    isUniquelyReferenced_nonNull_native = v31[7];
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v105[0] = *(isUniquelyReferenced_nonNull_native + 8 * v54);
    v3 = v105[0];
    v63 = sub_2753843F0(v104);
    v65 = v3[2];
    v66 = (v64 & 1) == 0;
    v26 = (v65 + v66);
    if (__OFADD__(v65, v66))
    {
      goto LABEL_32;
    }

    v18 = v63;
    v8 = v64;
    sub_27539CB90(0, &qword_2809C3540, MEMORY[0x277D843B8]);
    v3 = v105;
    if (sub_2753B7478())
    {
      break;
    }

LABEL_20:
    v69 = v51;
    v70 = v105[0];
    if (v8)
    {
      *(*(v105[0] + 56) + 4 * v18) = v69;
    }

    else
    {
      *(v105[0] + 8 * (v18 >> 6) + 64) |= 1 << v18;
      *(v70[6] + 4 * v18) = v104;
      *(v70[7] + 4 * v18) = v69;
      v71 = v70[2];
      v61 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v61)
      {
        goto LABEL_34;
      }

      v70[2] = v72;
    }

    ++a1;
    *(isUniquelyReferenced_nonNull_native + 8 * v54) = v70;
    v35 = sub_27539C7BC;
    v34 = v89;
    v3 = v100;
    if (v102 == a1)
    {
      goto LABEL_25;
    }
  }

  v3 = v105[0];
  v67 = sub_2753843F0(v104);
  if ((v8 & 1) == (v68 & 1))
  {
    v18 = v67;
    goto LABEL_20;
  }

LABEL_36:
  result = sub_2753B7768();
  __break(1u);
  return result;
}

id sub_2753A464C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = HIDWORD(a3);
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_2753277B8(0, &qword_2809C36D8, 0x277CE64A0);
  v9 = sub_2753B6FC8();

  v12 = a2;
  v13 = v5;
  v14 = v7;
  v15 = a4;
  v10 = [v8 initWithParameters:v9 at:&v12];

  return v10;
}

uint64_t sub_2753A470C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2753B3670(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2753A496C(v5);
  *a1 = v2;
  return result;
}

id sub_2753A4778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_2753B6D78();

  sub_2753277B8(0, &qword_2809C35F8, 0x277CCABB0);
  sub_2753A489C();
  sub_2753A4904();
  v8 = sub_2753B6C68();

  sub_2753277B8(0, &qword_2809C36D0, 0x277CE64A8);
  v9 = sub_2753B6FC8();

  v10 = sub_2753B6D78();

  v11 = [v6 initWithDSPGraphText:v7 properties:v8 parameterSchedule:v9 identifier:v10];

  return v11;
}

unint64_t sub_2753A489C()
{
  result = qword_2809C3600;
  if (!qword_2809C3600)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2809C3600);
  }

  return result;
}

unint64_t sub_2753A4904()
{
  result = qword_2809C36C8;
  if (!qword_2809C36C8)
  {
    sub_2753277B8(255, &qword_2809C35F8, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C36C8);
  }

  return result;
}

uint64_t sub_2753A496C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2753B76A8();
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
        type metadata accessor for CMTime(0);
        v6 = sub_2753B7048();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2753A4B68(v7, v8, a1, v4);
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
    return sub_2753A4A64(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2753A4A64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = sub_2753B7268();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 + 32);
        v11 = *(v10 + 36);
        v13 = *(v10 + 40);
        v14 = *(v10 + 16);
        result = *(v10 + 24);
        *(v10 + 24) = *v10;
        *(v10 + 40) = v14;
        *v10 = result;
        *(v10 + 8) = v12;
        *(v10 + 12) = v11;
        *(v10 + 16) = v13;
        v10 -= 24;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2753A4B68(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_89:
    v93 = *result;
    if (!*result)
    {
      goto LABEL_130;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_91:
      v83 = v6 + 16;
      v84 = *(v6 + 2);
      while (v84 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_127;
        }

        v85 = v6;
        v6 += 16 * v84;
        v86 = *v6;
        v87 = &v83[2 * v84];
        v88 = *(v87 + 1);
        sub_2753A5178((*a3 + 24 * *v6), (*a3 + 24 * *v87), *a3 + 24 * v88, v93);
        if (v95)
        {
          break;
        }

        if (v88 < v86)
        {
          goto LABEL_115;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_116;
        }

        *v6 = v86;
        *(v6 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_117;
        }

        v95 = 0;
        v84 = *v83 - 1;
        sub_2753B219C(v87 + 16, v89, v87);
        *v83 = v84;
        v6 = v85;
      }

LABEL_99:

      return;
    }

LABEL_124:
    v6 = sub_2753B20A8(v6);
    goto LABEL_91;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *a3 + 24 * v7;
      v9 = 24 * v7;
      v10 = sub_2753B7268();
      v11 = v8 + 64;
      v12 = v7 + 2;
      while (1)
      {
        v13 = v12;
        if (++v5 >= v4)
        {
          break;
        }

        v14 = sub_2753B7268();
        v11 += 24;
        v12 = v13 + 1;
        if ((v10 & 1) != (v14 & 1))
        {
          if ((v10 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_10;
        }
      }

      v5 = v4;
      if ((v10 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_10:
      if (v5 < v7)
      {
        goto LABEL_121;
      }

      if (v7 < v5)
      {
        if (v4 >= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v4;
        }

        v16 = 24 * v15 - 8;
        v17 = v5;
        v18 = v7;
        do
        {
          if (v18 != --v17)
          {
            v19 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v20 = (v19 + v9);
            v21 = (v19 + v16);
            v22 = *v20;
            v23 = v20[2];
            v24 = v20[1];
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v24;
            *v21 = v23;
          }

          ++v18;
          v16 -= 24;
          v9 += 24;
        }

        while (v18 < v17);
      }
    }

LABEL_20:
    v26 = a3[1];
    if (v5 < v26)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_120;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_37:
    if (v5 < v7)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_275384E68();
      v6 = v81;
    }

    v40 = *(v6 + 2);
    v41 = v40 + 1;
    if (v40 >= *(v6 + 3) >> 1)
    {
      sub_275384E68();
      v6 = v82;
    }

    *(v6 + 2) = v41;
    v42 = v6 + 32;
    v43 = &v6[16 * v40 + 32];
    *v43 = v7;
    *(v43 + 1) = v5;
    v93 = *result;
    if (!*result)
    {
      goto LABEL_129;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        v45 = &v42[16 * v41 - 16];
        v46 = &v6[16 * v41];
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v47 = *(v6 + 4);
          v48 = *(v6 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_106;
          }

          v62 = *v46;
          v61 = *(v46 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_109;
          }

          v66 = *(v45 + 1);
          v67 = v66 - *v45;
          if (__OFSUB__(v66, *v45))
          {
            goto LABEL_112;
          }

          if (__OFADD__(v64, v67))
          {
            goto LABEL_114;
          }

          if (v64 + v67 >= v49)
          {
            if (v49 < v67)
            {
              v44 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_108;
        }

        v69 = *v46;
        v68 = *(v46 + 1);
        v57 = __OFSUB__(v68, v69);
        v64 = v68 - v69;
        v65 = v57;
LABEL_72:
        if (v65)
        {
          goto LABEL_111;
        }

        v71 = *v45;
        v70 = *(v45 + 1);
        v57 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v72 < v64)
        {
          goto LABEL_86;
        }

LABEL_79:
        if (v44 - 1 >= v41)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v76 = v6;
        v77 = &v42[16 * v44 - 16];
        v78 = *v77;
        v6 = &v42[16 * v44];
        v79 = *(v6 + 1);
        sub_2753A5178((*a3 + 24 * *v77), (*a3 + 24 * *v6), *a3 + 24 * v79, v93);
        if (v95)
        {
          goto LABEL_99;
        }

        if (v79 < v78)
        {
          goto LABEL_101;
        }

        v80 = *(v76 + 2);
        if (v44 > v80)
        {
          goto LABEL_102;
        }

        *v77 = v78;
        *(v77 + 1) = v79;
        if (v44 >= v80)
        {
          goto LABEL_103;
        }

        v95 = 0;
        v41 = v80 - 1;
        sub_2753B219C(v6 + 16, v80 - 1 - v44, &v42[16 * v44]);
        v6 = v76;
        *(v76 + 2) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_86;
        }
      }

      v51 = &v42[16 * v41];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_104;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_105;
      }

      v58 = *(v46 + 1);
      v59 = v58 - *v46;
      if (__OFSUB__(v58, *v46))
      {
        goto LABEL_107;
      }

      v57 = __OFADD__(v49, v59);
      v60 = v49 + v59;
      if (v57)
      {
        goto LABEL_110;
      }

      if (v60 >= v54)
      {
        v74 = *v45;
        v73 = *(v45 + 1);
        v57 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v57)
        {
          goto LABEL_118;
        }

        if (v49 < v75)
        {
          v44 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_86:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_89;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_122;
  }

  if (v7 + a4 >= v26)
  {
    v27 = a3[1];
  }

  else
  {
    v27 = v7 + a4;
  }

  if (v27 < v7)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v5 == v27)
  {
    goto LABEL_37;
  }

  v93 = v6;
  v28 = *a3;
  v29 = *a3 + 24 * v5 - 24;
  v90 = v7;
  v30 = v7 - v5;
LABEL_30:
  v31 = v27;
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if ((sub_2753B7268() & 1) == 0)
    {
LABEL_35:
      ++v5;
      v29 += 24;
      --v30;
      v27 = v31;
      if (v5 == v31)
      {
        v5 = v31;
        v7 = v90;
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if (!v28)
    {
      break;
    }

    v35 = *(v33 + 32);
    v34 = *(v33 + 36);
    v36 = *(v33 + 40);
    v38 = *(v33 + 16);
    v37 = *(v33 + 24);
    *(v33 + 24) = *v33;
    *(v33 + 40) = v38;
    *v33 = v37;
    *(v33 + 8) = v35;
    *(v33 + 12) = v34;
    *(v33 + 16) = v36;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_35;
    }
  }

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
}

uint64_t sub_2753A5178(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_275385914(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if ((sub_2753B7268() & 1) == 0)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_275385914(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = sub_2753B7268();
    v18 = (v5 + 24);
    if (v17)
    {
      v13 = v18 == v6;
      v6 -= 24;
      if (!v13)
      {
        v20 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v20;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v18)
    {
      v19 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v19;
    }

    v10 -= 24;
  }

LABEL_28:
  v21 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

void *sub_2753A532C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = (*(a4 + 48) + 24 * (v12 | (v9 << 6)));
      v14 = v13[2];
      v15 = v13[1];
      *a2 = *v13;
      a2[1] = v15;
      a2[2] = v14;
      a2 += 3;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2753A546C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_275384438(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22)
{

  return sub_2753A546C(v22, v23, a22 & 1);
}

uint64_t static SmartTransitionsDSPGraphDataProvider.dspGraphText.getter()
{
  sub_2753A56FC(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_2753B5D68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2753B5998();
  v7 = sub_2753B59A8();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v7);
  v8 = OUTLINED_FUNCTION_129_0();
  if (v9(v8) == *MEMORY[0x277D7EF70])
  {
    v10 = OUTLINED_FUNCTION_129_0();
    v11(v10);
    (*(v4 + 32))(v6, v2, v3);
    sub_2753B5D58();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_129_0();
    v13(v12);
  }

  return OUTLINED_FUNCTION_129_0();
}

void sub_2753A56FC(uint64_t a1)
{
  if (!qword_2809C36E0)
  {
    sub_2753B59A8();
    v1 = sub_2753B72A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C36E0);
    }
  }
}

uint64_t sub_2753A5754(uint64_t a1)
{
  sub_2753A56FC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SmartTransitionsDSPGraphDataProvider(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2753A584CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2753A5884@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v163 = a2;
  v162 = sub_2753B5CB8();
  OUTLINED_FUNCTION_2_0();
  v161 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_4_11(v7);
  v159 = sub_2753B5C78();
  OUTLINED_FUNCTION_2_0();
  v156 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_4_11(v11);
  v155 = sub_2753B59E8();
  OUTLINED_FUNCTION_2_0();
  v154 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_4_11(v15);
  v176 = sub_2753B5E28();
  OUTLINED_FUNCTION_2_0();
  v178 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_11(v19 - v18);
  v172 = sub_2753B5FB8();
  OUTLINED_FUNCTION_2_0();
  v177 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_11(v23 - v22);
  v138 = sub_2753B5DD8();
  OUTLINED_FUNCTION_2_0();
  v166 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_4_11(v28);
  v165 = sub_2753B5DA8();
  OUTLINED_FUNCTION_2_0();
  v174 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_4_11(v32);
  v164 = sub_2753B5D38();
  OUTLINED_FUNCTION_2_0();
  v173 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_7();
  v175 = sub_2753B5E08();
  OUTLINED_FUNCTION_2_0();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10();
  v41 = v40 - v39;
  v42 = sub_2753B5A98();
  OUTLINED_FUNCTION_2_0();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10();
  v48 = v47 - v46;
  v149 = sub_2753B5C38();
  OUTLINED_FUNCTION_2_0();
  v148 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_98();
  v53 = v51 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v133 - v55;
  sub_2753B5AA8();
  v169 = v56;
  sub_2753B5A88();
  v57 = *(v44 + 8);
  v57(v48, v42);
  v171 = a1;
  sub_2753B5AA8();
  OUTLINED_FUNCTION_8_9();
  sub_2753B5A78();
  v57(v48, v42);
  v170 = v53;
  sub_2753B5BE8();
  sub_2753B5DF8();
  v59 = v58;
  v60 = *(v37 + 8);
  v145 = v41;
  v168 = (v37 + 8);
  v167 = v60;
  v60(v41, v175);
  sub_2753B5D48();
  v61 = v143;
  sub_2753B5D28();
  v134 = *(v173 + 8);
  v173 += 8;
  v62 = v164;
  v134(v2, v164);
  v63 = v144;
  sub_2753B5D98();
  v64 = *(v174 + 8);
  v174 += 8;
  v65 = v165;
  v64(v61, v165);
  v66 = sub_2753B5DC8();
  v68 = v67;
  v69 = *(v166 + 8);
  v70 = v63;
  v71 = v138;
  v136 = v166 + 8;
  v135 = v69;
  v69(v70, v138);
  v180 = v66;
  v181 = v68;
  MEMORY[0x277C76100](2108704, 0xE300000000000000);
  sub_2753B5D48();
  sub_2753B5D28();
  v72 = v134;
  v134(v2, v62);
  v73 = sub_2753B5D88();
  v64(v61, v65);
  v179 = v73;
  v74 = sub_2753B76B8();
  MEMORY[0x277C76100](v74);

  v75 = v181;
  v144 = v180;
  v76 = v137;
  sub_2753B5D48();
  v77 = v139;
  sub_2753B5D28();
  v72(v76, v164);
  v78 = v140;
  sub_2753B5D98();
  v64(v77, v165);
  v79 = v166;
  v80 = v141;
  (*(v166 + 16))(v141, v78, v71);
  v81 = (*(v79 + 88))(v80, v71);
  v82 = v81 == *MEMORY[0x277D7F018];
  v146 = v59;
  v143 = v75;
  if (v82)
  {
    v83 = 4;
LABEL_10:
    LODWORD(v174) = v83;
    v135(v78, v71);
    sub_2753B5BE8();
    sub_2753B5DF8();
    v173 = v84;
    v85 = OUTLINED_FUNCTION_7_5();
    v86(v85);
    v87 = v147;
    OUTLINED_FUNCTION_8_9();
    sub_2753B5C08();
    sub_2753B5FA8();
    v166 = v88;
    v89 = *(v177 + 8);
    v177 += 8;
    v90 = v172;
    v89(v87, v172);
    v91 = v151;
    OUTLINED_FUNCTION_10_10();
    sub_2753B5C28();
    sub_2753B5E18();
    v165 = v92;
    v93 = v178 + 8;
    v94 = *(v178 + 8);
    v95 = v176;
    v94(v91, v176);
    v178 = v93;
    OUTLINED_FUNCTION_8_9();
    sub_2753B5BF8();
    sub_2753B5FA8();
    v164 = v96;
    v89(v87, v90);
    OUTLINED_FUNCTION_10_10();
    sub_2753B5C18();
    sub_2753B5E18();
    v98 = v97;
    v94(v91, v95);
    sub_2753B5BE8();
    sub_2753B5DF8();
    v100 = v99;
    v101 = OUTLINED_FUNCTION_7_5();
    v102(v101);
    OUTLINED_FUNCTION_8_9();
    sub_2753B5C08();
    sub_2753B5FA8();
    v104 = v103;
    v141 = v89;
    v89(v87, v90);
    OUTLINED_FUNCTION_10_10();
    sub_2753B5C28();
    sub_2753B5E18();
    v106 = v105;
    v107 = v176;
    v142 = v94;
    v94(v91, v176);
    OUTLINED_FUNCTION_8_9();
    sub_2753B5BF8();
    sub_2753B5FA8();
    v109 = v108;
    v89(v87, v90);
    OUTLINED_FUNCTION_10_10();
    sub_2753B5C18();
    sub_2753B5E18();
    v111 = v110;
    v94(v91, v107);
    v112 = v150;
    sub_2753B5B88();
    v113 = v152;
    sub_2753B59D8();
    v175 = *(v154 + 8);
    v114 = v155;
    v175(v112, v155);
    v115 = v157;
    sub_2753B5C58();
    v168 = *(v156 + 8);
    v116 = v159;
    v168(v113, v159);
    sub_2753B5CA8();
    v167 = *(v161 + 8);
    v117 = v115;
    v118 = v162;
    v167(v117, v162);
    sub_2753B5FA8();
    v120 = v119;
    v141(v87, v172);
    v121 = v153;
    sub_2753B5B88();
    v122 = v158;
    sub_2753B59D8();
    v175(v121, v114);
    v123 = v160;
    sub_2753B5C58();
    v168(v122, v116);
    sub_2753B5C88();
    v167(v123, v118);
    sub_2753B5E18();
    v125 = v124;
    v142(v91, v176);
    v126 = *(v148 + 8);
    v127 = v149;
    v126(v170, v149);
    result = (v126)(v169, v127);
    v129 = v163;
    v130 = v173;
    *v163 = v146;
    *(v129 + 1) = v130;
    v131 = v165;
    *(v129 + 2) = v166;
    *(v129 + 3) = v131;
    *(v129 + 4) = v164;
    *(v129 + 5) = v98;
    *(v129 + 6) = v100;
    *(v129 + 7) = v104;
    *(v129 + 8) = v106;
    *(v129 + 9) = v109;
    *(v129 + 10) = v111;
    *(v129 + 11) = v120;
    *(v129 + 12) = v125;
    *(v129 + 104) = 0;
    *(v129 + 105) = v174;
    v132 = v143;
    *(v129 + 14) = v144;
    *(v129 + 15) = v132;
    return result;
  }

  if (v81 == *MEMORY[0x277D7F008])
  {
    v83 = 3;
    goto LABEL_10;
  }

  if (v81 == *MEMORY[0x277D7F000])
  {
    v83 = 2;
    goto LABEL_10;
  }

  if (v81 == *MEMORY[0x277D7F010])
  {
    v83 = 1;
    goto LABEL_10;
  }

  result = sub_2753B7708();
  __break(1u);
  return result;
}

uint64_t sub_2753A685C@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X2>, double *a4@<X8>)
{
  v54 = a3;
  v51 = a2;
  v47 = a1;
  v56 = a4;
  v55 = sub_2753B5E28();
  OUTLINED_FUNCTION_2_0();
  v53 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10();
  v52 = v9 - v8;
  sub_2753B5FB8();
  OUTLINED_FUNCTION_2_0();
  v49 = v11;
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10();
  v14 = v13 - v12;
  v48 = sub_2753B5C38();
  OUTLINED_FUNCTION_2_0();
  v57 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_98();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_7();
  v21 = sub_2753B5A98();
  OUTLINED_FUNCTION_2_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_98();
  v27 = (v25 - v26);
  MEMORY[0x28223BE20](v28);
  v30 = &v46 - v29;
  v31 = sub_2753B5AA8();
  a1(v31);
  v32 = *(v23 + 8);
  v33 = v32(v30, v21);
  v51(v33);
  v34 = *(v57 + 8);
  v57 += 8;
  v35 = v4;
  v36 = v48;
  v34(v35, v48);
  sub_2753B5FA8();
  v38 = v37;
  (*(v49 + 8))(v14, v50);
  v39 = sub_2753B5AA8();
  v47(v39);
  v40 = v32(v27, v21);
  v41 = v52;
  v54(v40);
  v34(v19, v36);
  sub_2753B5E18();
  v43 = v42;
  result = (*(v53 + 8))(v41, v55);
  v45 = v56;
  *v56 = v38;
  *(v45 + 1) = v43;
  return result;
}

uint64_t sub_2753A6BF8(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v55 = a4;
  v57 = a3;
  v48 = a2;
  v49 = a1;
  v56 = sub_2753B5E28();
  OUTLINED_FUNCTION_2_0();
  v53 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_14();
  v54 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_4();
  v52 = v10;
  v51 = sub_2753B5FB8();
  OUTLINED_FUNCTION_2_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_14();
  v50 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = v47 - v16;
  v18 = sub_2753B5C38();
  OUTLINED_FUNCTION_2_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_98();
  v24 = (v22 - v23);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v47 - v27;
  v29 = a1(v26);
  a2(v29);
  v30 = *(v20 + 8);
  v30(v28, v18);
  sub_2753B5FA8();
  v31 = *(v12 + 8);
  v47[1] = v12 + 8;
  v32 = v51;
  v33 = v31(v17, v51);
  v34 = v57(v33);
  v35 = v50;
  v48(v34);
  v30(v24, v18);
  sub_2753B5FA8();
  v36 = v31(v35, v32);
  v37 = v49(v36);
  v38 = v52;
  v39 = v55;
  v55(v37);
  v30(v28, v18);
  sub_2753B5E18();
  v40 = *(v53 + 8);
  v41 = v38;
  v42 = v56;
  v43 = v40(v41, v56);
  v44 = v57(v43);
  v45 = v54;
  v39(v44);
  v30(v24, v18);
  sub_2753B5E18();
  return v40(v45, v42);
}

uint64_t AssetRecipe.format.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for AssetRecipe.DRM(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AssetRecipe(0);
  sub_2753A71BC(v1 + *(v6 + 20), v5);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
    case 2:
    case 3:
      result = OUTLINED_FUNCTION_0_12();
      goto LABEL_3;
    case 4:
      *a1 = 2;
      result = OUTLINED_FUNCTION_0_12();
      break;
    case 5:
      *a1 = 0;
      break;
    default:
LABEL_3:
      *a1 = 1;
      break;
  }

  return result;
}

uint64_t sub_2753A71BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetRecipe.DRM(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s015_SonicKit_MusicB011AssetRecipeV6FormatO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

uint64_t EnhancedHLSAssetVariant.underlyingDictionary.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EnhancedHLSAssetVariant.stableVariantID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t EnhancedHLSAssetVariant.stableVariantID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

unint64_t sub_2753A74C0()
{
  result = qword_2809C36E8;
  if (!qword_2809C36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C36E8);
  }

  return result;
}

unint64_t sub_2753A7518()
{
  result = qword_2809C36F0;
  if (!qword_2809C36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C36F0);
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2753A7594(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 44))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 36);
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

uint64_t sub_2753A75E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 36) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_2753A763C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753A7708);
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