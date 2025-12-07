id default argument 0 of MusicContent.Environment.init(userIdentity:bag:)()
{
  v0 = [objc_opt_self() defaultMediaIdentity];

  return v0;
}

uint64_t sub_2752E4BA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2752E4BC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaAPI.SpatialOffsets.Offset(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MediaAPI.SpatialOffsets.Offset(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2752E4C98(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2752E4CB8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2752E4D0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2752E4D2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_2752E4D8C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2752E4DE0()
{
  *(v0 + 16) = [objc_opt_self() shared];
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_userStateDidChange_ name:*MEMORY[0x277D7F938] object:0];

  return v0;
}

uint64_t sub_2752E4E74()
{
  sub_2752E5160();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2753BE420;
  sub_2753B7398();
  MEMORY[0x277C76100](0x203A3A4B4ALL, 0xE500000000000000);
  sub_2753B7468();
  MEMORY[0x277C76100](0x6320737265737520, 0xEF206465676E6168);
  v2 = [*(v0 + 16) allUserStates];
  v3 = sub_2752E51B4();
  v4 = sub_2753B6FD8();

  v5 = MEMORY[0x277C762C0](v4, v3);
  v7 = v6;

  MEMORY[0x277C76100](v5, v7);

  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_2753B7778();
}

uint64_t sub_2752E5104()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_2752E5160()
{
  if (!qword_2809C0730)
  {
    v0 = sub_2753B76C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C0730);
    }
  }
}

unint64_t sub_2752E51B4()
{
  result = qword_2809C0738;
  if (!qword_2809C0738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0738);
  }

  return result;
}

unint64_t sub_2752E51FC()
{
  result = qword_2809C0740;
  if (!qword_2809C0740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0740);
  }

  return result;
}

uint64_t sub_2752E52A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2753B6288();
  *(v1 + 24) = sub_2753B6278();
  sub_2752E5560();
  v3 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_2752E5338, v3, v2);
}

uint64_t sub_2752E5338()
{
  v1 = *(v0 + 16);

  type metadata accessor for MusicAccountManager();
  swift_allocObject();
  v2 = sub_2752E4DE0();
  type metadata accessor for HomeSharingAccountManager();
  v3 = swift_allocObject();
  *v1 = v2;
  v1[1] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2752E53D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752E546C;

  return sub_2752E52A0(a1);
}

uint64_t sub_2752E546C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2752E5560()
{
  result = qword_2809C0748;
  if (!qword_2809C0748)
  {
    sub_2753B6288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0748);
  }

  return result;
}

uint64_t sub_2752E55B8(uint64_t *a1, int a2)
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

uint64_t sub_2752E55F8(uint64_t result, int a2, int a3)
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

unint64_t sub_2752E5658()
{
  result = qword_2809C0750;
  if (!qword_2809C0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0750);
  }

  return result;
}

unint64_t sub_2752E56B0()
{
  result = qword_2809C0758[0];
  if (!qword_2809C0758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C0758);
  }

  return result;
}

uint64_t sub_2752E571C()
{
  v1 = *(v0 + 16);
  strcpy(v1, "Unimplemented");
  *(v1 + 14) = -4864;
  v2 = *MEMORY[0x277D65138];
  v3 = sub_2753B6A38();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2752E5850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_2753B69B8();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for FacetCollection<>.ArtworkData(0, a5, a6, v15);
  v17 = a7 + *(result + 36);
  *v17 = a2;
  *(v17 + 8) = a3;
  *(v17 + 16) = a4 & 1;
  return result;
}

uint64_t sub_2752E5908(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752E59A0;

  return FacetCollection<>.ArtworkData.availability.getter(a1);
}

uint64_t sub_2752E59A0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2752E5A8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2752E5B1C;

  return FacetCollection<>.ArtworkData.value.getter();
}

uint64_t sub_2752E5B1C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t FacetCollection<>.artworkData(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v6, v16);
  return sub_2752E5850(v14, a1, a2, a3 & 1, *(a4 + 16), a5, a6);
}

uint64_t sub_2752E5DA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752E6614;

  return FacetCollection<>.ArtworkTemplateURL.availability.getter(a1);
}

uint64_t sub_2752E5E40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752E6614;

  return FacetCollection<>.ArtworkTemplateURL.value.getter();
}

uint64_t sub_2752E5F4C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_2753B69B8();
  v7 = *(*(v6 - 8) + 32);

  return v7(a4, a1, v6);
}

uint64_t sub_2752E5FBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752E6614;

  return FacetCollection<>.MotionArtwork.availability.getter(a1);
}

uint64_t sub_2752E6054(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2752E60E4;

  return FacetCollection<>.MotionArtwork.value.getter();
}

uint64_t sub_2752E60E4()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_2752E61EC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v3, a1);
  return sub_2752E5F4C(v7, a3);
}

void sub_2752E62CC(uint64_t a1)
{
  sub_2753B69B8();
  if (v1 <= 0x3F)
  {
    sub_2752E63F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2752E63F0(uint64_t a1)
{
  if (!qword_2809C07E0[0])
  {
    type metadata accessor for CGSize(255);
    v1 = sub_2753B72A8();
    if (!v2)
    {
      atomic_store(v1, qword_2809C07E0);
    }
  }
}

uint64_t sub_2752E648C(uint64_t a1)
{
  result = sub_2753B69B8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2753B69B8();

  return __swift_getEnumTagSinglePayload(a1, a2, v5);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2753B69B8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_2753B74A8();
}

uint64_t sub_2752E6688()
{
  OUTLINED_FUNCTION_24();
  sub_2753B70B8();
  return v0;
}

uint64_t FacetCollection<>.Asset.id.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_160();
  sub_2753B69A8();
  v1 = sub_2753B6648();
  v3 = v2;

  MEMORY[0x277C76100](v1, v3);

  MEMORY[0x277C76100](0x2D74657373612DLL, 0xE700000000000000);
  sub_2753B7468();
  return 0;
}

uint64_t FacetCollection<>.Asset.context.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_27();

  return v2(v1);
}

uint64_t FacetCollection<>.Asset.context.setter(uint64_t a1, uint64_t a2)
{
  sub_2753B69B8();
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_150();

  return v4(v3, a1);
}

uint64_t FacetCollection<>.Asset.builders.getter(uint64_t a1)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_141();
  if (*(v1 + *(v5 + 44)) - 1 >= 4)
  {
    OUTLINED_FUNCTION_56();
    return sub_2753B7038();
  }

  else
  {
    OUTLINED_FUNCTION_56();
    sub_2753B76C8();
    swift_allocObject();
    v6 = sub_2753B6FF8();
    v8 = v7;
    (*(v4 + 16))(v2, v1, a1);
    v11[0] = type metadata accessor for FacetCollection<>.MusicKitAssetElement(0, *(a1 + 16), *(a1 + 24), v9);
    v11[1] = v11;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_43();
    v8[3] = sub_2753B68B8();
    v8[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v8);
    swift_getWitnessTable();
    sub_2753B68A8();
    sub_2753B70B8();
  }

  return v6;
}

uint64_t sub_2752E6AC0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2752E6AE4, 0, 0);
}

uint64_t sub_2752E6AE4()
{
  OUTLINED_FUNCTION_39();
  sub_2752F3C30();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2752E6B4C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  sub_2753B69B8();
  OUTLINED_FUNCTION_9();
  (*(v10 + 32))(a5, a1);
  result = type metadata accessor for FacetCollection<>.Asset(0, a3, a4, v11);
  *(a5 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_2752E6BE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2752E546C;

  return MEMORY[0x2821CC418](a1, a2, WitnessTable);
}

uint64_t sub_2752E6CB4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2752F7284;

  return MEMORY[0x2821CC420](a1, a2, WitnessTable);
}

uint64_t sub_2752E6D80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FacetCollection<>.Asset.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2752E6DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10, v4, a1);
  v15 = a3;
  return sub_2752E6B4C(v12, &v15, *(a1 + 16), a2, a4);
}

uint64_t AssetRecipe.url.getter()
{
  OUTLINED_FUNCTION_86();
  sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_27();

  return v1(v0);
}

uint64_t AssetRecipe.url.setter()
{
  OUTLINED_FUNCTION_24();
  sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_150();

  return v2(v1, v0);
}

uint64_t sub_2752E6F74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616863727570 && a2 == 0xE800000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

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

uint64_t sub_2752E7054(char a1)
{
  if (a1)
  {
    return 0x7069726373627573;
  }

  else
  {
    return 0x6573616863727570;
  }
}

uint64_t sub_2752E709C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E6F74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E70E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2752E7040();
  *a1 = result;
  return result;
}

uint64_t sub_2752E710C(uint64_t a1)
{
  v2 = sub_2752F2F8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7148(uint64_t a1)
{
  v2 = sub_2752F2F8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E71BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E7184(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2752E7204@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2752E7230(uint64_t a1)
{
  v2 = sub_2752F2F38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E726C(uint64_t a1)
{
  v2 = sub_2752F2F38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E72A8(uint64_t a1)
{
  v2 = sub_2752F2EE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E72E4(uint64_t a1)
{
  v2 = sub_2752F2EE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7334(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735290739 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6569766F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74736163646F70 && a2 == 0xE700000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F6F426F69647561 && a2 == 0xE90000000000006BLL;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74656C6B6F6F62 && a2 == 0xE700000000000000;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x646F736970457674 && a2 == 0xE900000000000065)
            {

              return 6;
            }

            else
            {
              v12 = sub_2753B7718();

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

uint64_t sub_2752E75B4(char a1)
{
  result = 1735290739;
  switch(a1)
  {
    case 1:
      result = 0x6569766F6DLL;
      break;
    case 2:
      v3 = 0x736163646F70;
      goto LABEL_5;
    case 3:
      result = 0x6F6F426F69647561;
      break;
    case 4:
      v3 = 0x656C6B6F6F62;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      break;
    case 5:
      result = 0x646956636973756DLL;
      break;
    case 6:
      result = 0x646F736970457674;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2752E769C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

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

uint64_t sub_2752E779C(char a1)
{
  if (a1)
  {
    return 25705;
  }

  else
  {
    return 0x707954616964656DLL;
  }
}

uint64_t sub_2752E77CC(uint64_t a1)
{
  v2 = sub_2752F31D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7808(uint64_t a1)
{
  v2 = sub_2752F31D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7844(uint64_t a1)
{
  v2 = sub_2752F3184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7880(uint64_t a1)
{
  v2 = sub_2752F3184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E78F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E7334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E7920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2752E7574();
  *a1 = result;
  return result;
}

uint64_t sub_2752E7948(uint64_t a1)
{
  v2 = sub_2752F3328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7984(uint64_t a1)
{
  v2 = sub_2752F3328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E79C0(uint64_t a1)
{
  v2 = sub_2752F3280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E79FC(uint64_t a1)
{
  v2 = sub_2752F3280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7A38(uint64_t a1)
{
  v2 = sub_2752F3130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7A74(uint64_t a1)
{
  v2 = sub_2752F3130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7AB0(uint64_t a1)
{
  v2 = sub_2752F322C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7AEC(uint64_t a1)
{
  v2 = sub_2752F322C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7B28(uint64_t a1)
{
  v2 = sub_2752F32D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7B64(uint64_t a1)
{
  v2 = sub_2752F32D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7BA0(uint64_t a1)
{
  v2 = sub_2752F30DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7BDC(uint64_t a1)
{
  v2 = sub_2752F30DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E769C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E7C7C(uint64_t a1)
{
  v2 = sub_2752F2FE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7CB8(uint64_t a1)
{
  v2 = sub_2752F2FE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetRecipe.DRM.PurchaseKeyMaterial.pinf.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  sub_2752F22F8(v0, v1);
  return OUTLINED_FUNCTION_27();
}

uint64_t AssetRecipe.DRM.PurchaseKeyMaterial.pinf.setter()
{
  OUTLINED_FUNCTION_96();
  result = sub_2752F2350(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t AssetRecipe.DRM.PurchaseKeyMaterial.suzeLeaseInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
}

uint64_t sub_2752E7DA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1718511984 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7361654C657A7573 && a2 == 0xED00006F666E4965)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

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

uint64_t sub_2752E7E74(char a1)
{
  if (a1)
  {
    return 0x7361654C657A7573;
  }

  else
  {
    return 1718511984;
  }
}

uint64_t sub_2752E7EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E7DA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E7EE0(uint64_t a1)
{
  v2 = sub_2752F361C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7F1C(uint64_t a1)
{
  v2 = sub_2752F361C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 _s015_SonicKit_MusicB011AssetRecipeV3DRMO19PurchaseKeyMaterialV13suzeLeaseInfoAE04SuzekL0VSgvs_0(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  v1[1] = v4;
  v1[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_2752E7FD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E497064 && a2 == 0xE600000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7361654C657A7573 && a2 == 0xED00006F666E4965)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

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

uint64_t sub_2752E80A0(char a1)
{
  if (a1)
  {
    return 0x7361654C657A7573;
  }

  else
  {
    return 0x6F666E497064;
  }
}

uint64_t sub_2752E80E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E7FD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E8110(uint64_t a1)
{
  v2 = sub_2752F337C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E814C(uint64_t a1)
{
  v2 = sub_2752F337C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E8198(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047270 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1768843629 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

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

uint64_t sub_2752E8268(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_100(a1);
  MEMORY[0x277C76A80](v1 & 1);
  return sub_2753B77D8();
}

uint64_t sub_2752E82A8(char a1)
{
  if (a1)
  {
    return 1768843629;
  }

  else
  {
    return 1819047270;
  }
}

uint64_t sub_2752E82D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E8198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E82F8(uint64_t a1)
{
  v2 = sub_2752F3814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E8334(uint64_t a1)
{
  v2 = sub_2752F3814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E8370(uint64_t a1)
{
  v2 = sub_2752F37C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E83AC(uint64_t a1)
{
  v2 = sub_2752F37C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E83E8(uint64_t a1)
{
  v2 = sub_2752F376C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E8424(uint64_t a1)
{
  v2 = sub_2752F376C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetRecipe.DRM.SecurityKeyMaterial.sinf.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_27();
  sub_2752F22F8(v1, v2);
  return OUTLINED_FUNCTION_27();
}

uint64_t AssetRecipe.DRM.SecurityKeyMaterial.sinf.setter()
{
  OUTLINED_FUNCTION_96();
  result = sub_2752F2350(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t AssetRecipe.DRM.SecurityKeyMaterial.sinf2.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_27();
  sub_2752F22F8(v1, v2);
  return OUTLINED_FUNCTION_27();
}

uint64_t AssetRecipe.DRM.SecurityKeyMaterial.sinf2.setter()
{
  OUTLINED_FUNCTION_96();
  result = sub_2752F2350(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_2752E85D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6169726176 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1718511987 && a2 == 0xE400000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x32666E6973 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2753B7718();

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

uint64_t sub_2752E86E4(char a1)
{
  if (!a1)
  {
    return 0x746E6169726176;
  }

  if (a1 == 1)
  {
    return 1718511987;
  }

  return 0x32666E6973;
}

uint64_t sub_2752E8738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E85D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E8760@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2752E86DC();
  *a1 = result;
  return result;
}

uint64_t sub_2752E8788(uint64_t a1)
{
  v2 = sub_2752F3670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E87C4(uint64_t a1)
{
  v2 = sub_2752F3670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerURL.getter()
{
  v2 = OUTLINED_FUNCTION_86();
  v3 = *(type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v2) + 20);
  sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerURL.setter()
{
  v2 = OUTLINED_FUNCTION_24();
  v3 = *(type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v2) + 20);
  sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerURL.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v0);
  return OUTLINED_FUNCTION_116();
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerCertificateURL.getter()
{
  v2 = OUTLINED_FUNCTION_86();
  v3 = *(type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v2) + 24);
  sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerCertificateURL.setter()
{
  v2 = OUTLINED_FUNCTION_24();
  v3 = *(type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v2) + 24);
  sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerCertificateURL.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v0);
  return OUTLINED_FUNCTION_116();
}

_SonicKit_MusicKit::AssetRecipe::DRM::FairPlayStreaming::KeyServerType_optional __swiftcall AssetRecipe.DRM.FairPlayStreaming.KeyServerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2753B74E8();

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

uint64_t AssetRecipe.DRM.FairPlayStreaming.KeyServerType.rawValue.getter()
{
  if (*v0)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x6966696C706D6973;
  }
}

uint64_t sub_2752E8B10(char a1, uint64_t a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1701869940;
      break;
    case 2:
      v4 = 0x7475626972747461;
      v3 = 0xEA00000000007365;
      break;
    case 3:
      v3 = 1885956211;
      OUTLINED_FUNCTION_139();
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1701869940;
      break;
    case 2:
      v6 = 0x7475626972747461;
      v5 = 0xEA00000000007365;
      break;
    case 3:
      v6 = 0x6E6F6974616C6572;
      v5 = 0xED00007370696873;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_2752E8C74()
{
  v0 = MediaAPI.MediaAPIType.rawValue.getter();
  v2 = v1;
  v3 = MediaAPI.MediaAPIType.rawValue.getter();
  if (v0 == v3 && v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_57(v0, v4, v3);
  }

  return v6 & 1;
}

uint64_t sub_2752E8D08(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6966696C706D6973;
  }

  if (v2)
  {
    v4 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6966696C706D6973;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_2752E8DA0(char a1, char a2)
{
  v2 = 0x6E6F6973726576;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 7107189;
    }

    else
    {
      v3 = 7172708;
    }

    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F6973726576;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7107189;
    }

    else
    {
      v2 = 7172708;
    }

    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2753B7718();
  }

  return v7 & 1;
}

uint64_t sub_2752E8E7C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x73676E6F73;
  v3 = a1;
  v4 = 0x73676E6F73;
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_65();
      break;
    case 2:
      v4 = OUTLINED_FUNCTION_130();
      break;
    case 3:
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_129();
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_107();
      break;
    default:
      break;
  }

  v5 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_82();
      break;
    case 2:
      OUTLINED_FUNCTION_126();
      break;
    case 3:
      OUTLINED_FUNCTION_62();
      v5 = 0xE900000000000073;
      break;
    case 4:
      OUTLINED_FUNCTION_105();
      break;
    default:
      break;
  }

  if (v4 == v2 && v5 == 0xE500000000000000)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_57(v4, a2, v2);
  }

  return v7 & 1;
}

uint64_t sub_2752E8FAC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1735290739;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1735290739;
  switch(v4)
  {
    case 1:
      v5 = 0x646956636973756DLL;
      v3 = 0xEA00000000006F65;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x6D75626C61;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_64();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x646956636973756DLL;
      v6 = 0xEA00000000006F65;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x6D75626C61;
      break;
    case 3:
      v6 = 0xE800000000000000;
      OUTLINED_FUNCTION_62();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_2752E90F0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1735290739;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x646956636973756DLL;
    }

    else
    {
      v4 = 0x6D75626C61;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000006F65;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1735290739;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x646956636973756DLL;
    }

    else
    {
      v2 = 0x6D75626C61;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000006F65;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_2752E91DC(uint64_t a1)
{
  v1 = 1735290739;
  OUTLINED_FUNCTION_139();
  v3 = 0x2D7972617262696CLL;
  v5 = v4;
  v6 = 0x2D7972617262696CLL;
  v7 = 1735290739;
  switch(v5)
  {
    case 1:
      v7 = 0x80000002753B8130;
      v6 = 0xD000000000000014;
      break;
    case 2:
      v7 = 0xEE00736D75626C61;
      v6 = 0x2D7972617262696CLL;
      break;
    case 3:
      v6 = 0xD000000000000011;
      v7 = 0x80000002753B8170;
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      v1 = 0x80000002753B8130;
      v3 = 0xD000000000000014;
      break;
    case 2:
      OUTLINED_FUNCTION_151();
      break;
    case 3:
      v3 = 0xD000000000000011;
      v1 = 0x80000002753B8170;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_159(v6, v7, v3);
  }

  return v9 & 1;
}

uint64_t sub_2752E9340(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E776F6E6B6E75;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x73676E6F73;
      break;
    case 2:
      OUTLINED_FUNCTION_65();
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_130();
      break;
    case 4:
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_129();
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_107();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x73676E6F73;
      break;
    case 2:
      OUTLINED_FUNCTION_82();
      break;
    case 3:
      OUTLINED_FUNCTION_126();
      break;
    case 4:
      OUTLINED_FUNCTION_62();
      v6 = 0xE900000000000073;
      break;
    case 5:
      OUTLINED_FUNCTION_105();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_2752E94D0()
{
  OUTLINED_FUNCTION_32();
  sub_2753B6A18();
  sub_2752F2964(qword_2809C1060, MEMORY[0x277D65110], MEMORY[0x277D65118]);
  OUTLINED_FUNCTION_135();
  sub_2753B6F38();
  OUTLINED_FUNCTION_135();
  sub_2753B6F38();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = OUTLINED_FUNCTION_159(v5, v6, v3);
  }

  return v1 & 1;
}

uint64_t sub_2752E95A8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_139();
      break;
    default:
      break;
  }

  sub_2753B6688();
}

uint64_t sub_2752E9694(uint64_t a1)
{
  MediaAPI.MediaAPIType.rawValue.getter();
  sub_2753B6688();
}

uint64_t sub_2752E96F4(uint64_t a1, char a2)
{
  sub_2753B6688();
}

uint64_t sub_2752E9764(uint64_t a1, char a2)
{
  sub_2753B6688();
}

uint64_t sub_2752E97E0()
{
  OUTLINED_FUNCTION_132();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_145();
      break;
    case 2:
      OUTLINED_FUNCTION_131();
      break;
    case 3:
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_69();
      break;
    case 4:
      OUTLINED_FUNCTION_106();
      break;
    default:
      break;
  }

  sub_2753B6688();
}

uint64_t sub_2752E987C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_69();
      break;
    default:
      break;
  }

  sub_2753B6688();
}

uint64_t sub_2752E9930(uint64_t a1, unsigned __int8 a2)
{
  sub_2753B6688();
}

uint64_t sub_2752E99B4(uint64_t a1)
{
  OUTLINED_FUNCTION_139();
  switch(v1)
  {
    case 2:
      OUTLINED_FUNCTION_151();
      break;
    default:
      break;
  }

  sub_2753B6688();
}

uint64_t sub_2752E9A80(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_132();
      break;
    case 2:
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_145();
      break;
    case 3:
      OUTLINED_FUNCTION_131();
      break;
    case 4:
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_69();
      break;
    case 5:
      OUTLINED_FUNCTION_106();
      break;
    default:
      break;
  }

  sub_2753B6688();
}

uint64_t sub_2752E9B38(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 24;
  }

  else
  {
    v2 = 0;
  }

  return MEMORY[0x277C76A80](v2);
}

uint64_t sub_2752E9BB0@<X0>(uint64_t *a1@<X8>)
{
  result = AssetRecipe.DRM.FairPlayStreaming.KeyServerType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerType.getter()
{
  v2 = OUTLINED_FUNCTION_86();
  result = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerType.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v0);
  return OUTLINED_FUNCTION_116();
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerSupportsOfflineKeys.setter(char a1)
{
  result = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerSupportsOfflineKeys.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v0);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_2752E9D0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497465737361 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657672655379656BLL && a2 == 0xEC0000004C525572;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000002753B8360 == a2;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657672655379656BLL && a2 == 0xED00006570795472;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001CLL && 0x80000002753B8380 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_2753B7718();

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

unint64_t sub_2752E9EC4(char a1)
{
  result = 0x44497465737361;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0x657672655379656BLL;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2752E9F84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x67614279656BLL && a2 == 0xE600000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6573616863727570 && a2 == 0xE800000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6365746F72706564 && a2 == 0xEC0000006E6F6974;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7974697275636573 && a2 == 0xE800000000000000;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000011 && 0x80000002753B8340 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_2753B7718();

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

unint64_t sub_2752EA17C(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x67614279656BLL;
      break;
    case 2:
      result = 0x6573616863727570;
      break;
    case 3:
      result = 0x6365746F72706564;
      break;
    case 4:
      result = 0x7974697275636573;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2752EA278(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_159(12383, 0xE200000000000000, a1);

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2752EA2E0(uint64_t a1)
{
  OUTLINED_FUNCTION_100(a1);
  MEMORY[0x277C76A80](0);
  return sub_2753B77D8();
}

uint64_t sub_2752EA324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E9D0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752EA34C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2752E9EBC();
  *a1 = result;
  return result;
}

uint64_t sub_2752EA374(uint64_t a1)
{
  v2 = sub_2752F3520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA3B0(uint64_t a1)
{
  v2 = sub_2752F3520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E9F84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752EA41C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2752EA174();
  *a1 = result;
  return result;
}

uint64_t sub_2752EA444(uint64_t a1)
{
  v2 = sub_2752F28CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA480(uint64_t a1)
{
  v2 = sub_2752F28CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752EA278(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2752EA510(uint64_t a1)
{
  v2 = sub_2752F277C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA54C(uint64_t a1)
{
  v2 = sub_2752F277C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA588(uint64_t a1)
{
  v2 = sub_2752F26D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA5C4(uint64_t a1)
{
  v2 = sub_2752F26D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA600(uint64_t a1)
{
  v2 = sub_2752F2824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA63C(uint64_t a1)
{
  v2 = sub_2752F2824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA678(uint64_t a1)
{
  v2 = sub_2752F2878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA6B4(uint64_t a1)
{
  v2 = sub_2752F2878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA6F0(uint64_t a1)
{
  v2 = sub_2752F27D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA72C(uint64_t a1)
{
  v2 = sub_2752F27D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA768()
{
  sub_2753B7798();
  MEMORY[0x277C76A80](0);
  return sub_2753B77D8();
}

uint64_t sub_2752EA7A8(uint64_t a1)
{
  v2 = sub_2752F2728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA7E4(uint64_t a1)
{
  v2 = sub_2752F2728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetRecipe.drm.getter()
{
  v0 = OUTLINED_FUNCTION_86();
  type metadata accessor for AssetRecipe(v0);
  OUTLINED_FUNCTION_1_0();
  return sub_2752F3C30();
}

uint64_t AssetRecipe.drm.setter()
{
  v2 = OUTLINED_FUNCTION_24();
  v3 = v1 + *(type metadata accessor for AssetRecipe(v2) + 20);

  return sub_2752F2408(v0, v3);
}

uint64_t AssetRecipe.drm.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for AssetRecipe(v0);
  return OUTLINED_FUNCTION_116();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.contentID.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.contentType.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.downloadParameters.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.purchasedMediaKind.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.userAgent.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.dsid.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.hlsPlaylistURL.getter()
{
  v0 = OUTLINED_FUNCTION_86();
  type metadata accessor for AssetRecipe.iTunesStoreContentInfo(v0);
  OUTLINED_FUNCTION_3_0();
  return sub_2752F24C4();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.hlsPlaylistURL.setter()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for AssetRecipe.iTunesStoreContentInfo(v0);
  OUTLINED_FUNCTION_3_0();
  return sub_2752F2570();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.hlsPlaylistURL.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for AssetRecipe.iTunesStoreContentInfo(v0);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_2752EABDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000002753B83A0 == a2;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000002753B83C0 == a2;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65674172657375 && a2 == 0xE900000000000074;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1684632420 && a2 == 0xE400000000000000;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6C79616C50736C68 && a2 == 0xEE004C5255747369)
            {

              return 6;
            }

            else
            {
              v12 = sub_2753B7718();

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

uint64_t sub_2752EAE2C(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_100(a1);
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

unint64_t sub_2752EAE6C(char a1)
{
  result = 0x49746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x54746E65746E6F63;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6E65674172657375;
      break;
    case 5:
      result = 1684632420;
      break;
    case 6:
      result = 0x6C79616C50736C68;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2752EAF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752EABDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752EAF94(uint64_t a1)
{
  v2 = sub_2752F39E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EAFD0(uint64_t a1)
{
  v2 = sub_2752F39E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetRecipe.iTunesStoreContentInfo.getter()
{
  v0 = OUTLINED_FUNCTION_86();
  type metadata accessor for AssetRecipe(v0);
  OUTLINED_FUNCTION_6();
  return sub_2752F24C4();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.setter()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for AssetRecipe(v0);
  OUTLINED_FUNCTION_6();
  return sub_2752F2570();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for AssetRecipe(v0);
  return OUTLINED_FUNCTION_116();
}

void static AssetRecipe.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_153();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10();
  v11 = v10 - v9;
  sub_2752F251C(0, &qword_2809C08F0, type metadata accessor for AssetRecipe.iTunesStoreContentInfo);
  OUTLINED_FUNCTION_75(v12);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21();
  sub_2752F38E4(0, &qword_2809C08F8, &qword_2809C08F0, type metadata accessor for AssetRecipe.iTunesStoreContentInfo);
  v15 = v14;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_112();
  if (sub_2753B61A8())
  {
    v17 = type metadata accessor for AssetRecipe(0);
    static AssetRecipe.DRM.== infix(_:_:)(v6 + *(v17 + 20), v4 + *(v17 + 20));
    if (v18)
    {
      v19 = *(v15 + 48);
      OUTLINED_FUNCTION_37();
      sub_2752F24C4();
      sub_2752F24C4();
      OUTLINED_FUNCTION_123(&qword_2809C08F0, 1, v7);
      if (!v20)
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_152();
        sub_2752F24C4();
        OUTLINED_FUNCTION_123(&qword_2809C08F0 + v19, 1, v7);
        if (!v20)
        {
          OUTLINED_FUNCTION_55();
          sub_2752F2680();
          static AssetRecipe.iTunesStoreContentInfo.== infix(_:_:)(v2, v11);
          sub_2752F25C8(v11);
          sub_2752F25C8(v2);
          OUTLINED_FUNCTION_5();
          sub_2752F3998(&qword_2809C08F0);
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_11();
        sub_2752F25C8(v2);
LABEL_11:
        OUTLINED_FUNCTION_6();
        sub_2752F3948(&qword_2809C08F0);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_123(&qword_2809C08F0 + v19, 1, v7);
      if (!v20)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_5();
      sub_2752F3998(&qword_2809C08F0);
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_155();
}

void AssetRecipe.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_153();
  a19 = v21;
  a20 = v22;
  v23 = OUTLINED_FUNCTION_24();
  v24 = type metadata accessor for AssetRecipe.iTunesStoreContentInfo(v23);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10();
  v28 = v27 - v26;
  OUTLINED_FUNCTION_37();
  sub_2752F251C(0, &qword_2809C08F0, v29);
  OUTLINED_FUNCTION_75(v30);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  sub_2753B61F8();
  OUTLINED_FUNCTION_0_1();
  sub_2752F2964(v34, v35, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_52();
  sub_2753B6D38();
  type metadata accessor for AssetRecipe(0);
  AssetRecipe.DRM.hash(into:)(v20);
  sub_2752F24C4();
  OUTLINED_FUNCTION_123(v33, 1, v24);
  if (v36)
  {
    OUTLINED_FUNCTION_156();
  }

  else
  {
    OUTLINED_FUNCTION_55();
    sub_2752F2680();
    OUTLINED_FUNCTION_157();
    AssetRecipe.iTunesStoreContentInfo.hash(into:)(v20);
    OUTLINED_FUNCTION_11();
    sub_2752F25C8(v28);
  }

  OUTLINED_FUNCTION_155();
}

void static AssetRecipe.DRM.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_153();
  *&v66 = v3;
  v4 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  v5 = OUTLINED_FUNCTION_75(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10();
  v65 = v7 - v6;
  type metadata accessor for AssetRecipe.DRM(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_98();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_142();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v64 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v64 - v18;
  MEMORY[0x28223BE20](v17);
  sub_2752F261C(0);
  v21 = OUTLINED_FUNCTION_75(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10();
  v24 = v23 - v22;
  v26 = (v23 - v22 + *(v25 + 56));
  sub_2752F3C30();
  sub_2752F3C30();
  OUTLINED_FUNCTION_27();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_0();
      sub_2752F3C30();
      v51 = *v19;
      v50 = *(v19 + 1);
      v32 = *(v19 + 4);
      OUTLINED_FUNCTION_76();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      v33 = *v26;
      v34 = *(v26 + 3);
      v35 = *(v26 + 4);
      v71 = v51;
      v72 = v50;
      v36 = *(v19 + 1);
      goto LABEL_15;
    case 2u:
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_52();
      sub_2752F3C30();
      v31 = *v16;
      v30 = *(v16 + 1);
      v32 = *(v16 + 4);
      OUTLINED_FUNCTION_76();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
LABEL_16:
        v54 = OUTLINED_FUNCTION_112();
        sub_2752F2350(v54, v55);

        goto LABEL_21;
      }

      v33 = *v26;
      v34 = *(v26 + 3);
      v35 = *(v26 + 4);
      v71 = v31;
      v72 = v30;
      v36 = *(v16 + 1);
LABEL_15:
      v73 = v36;
      v74 = v32;
      v67 = v33;
      v66 = *(v26 + 8);
      v68 = v66;
      v69 = v34;
      v70 = v35;
      static AssetRecipe.DRM.PurchaseKeyMaterial.== infix(_:_:)(&v71, &v67);
      sub_2752F2350(v33, v66);

      v52 = OUTLINED_FUNCTION_112();
      sub_2752F2350(v52, v53);

      goto LABEL_18;
    case 3u:
      OUTLINED_FUNCTION_1_0();
      sub_2752F3C30();
      OUTLINED_FUNCTION_76();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v37 = *v2;
        v38 = *v26;
        v39 = *(v26 + 1);
        v40 = *(v26 + 2);
        v41 = *(v26 + 3);
        v42 = *(v26 + 4);
        if (v37 == v38 && (v43 = OUTLINED_FUNCTION_147(), (MEMORY[0x277C75500](v43) & 1) != 0))
        {
          v44 = OUTLINED_FUNCTION_94();
          v45 = MEMORY[0x277C75500](v44);
          sub_2752F2350(v39, v40);
          sub_2752F2350(v41, v42);
          v46 = OUTLINED_FUNCTION_147();
          sub_2752F2350(v46, v47);
          v48 = OUTLINED_FUNCTION_94();
          sub_2752F2350(v48, v49);
          if (v45)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_2752F2350(v39, v40);
          sub_2752F2350(v41, v42);
          v60 = OUTLINED_FUNCTION_147();
          sub_2752F2350(v60, v61);
          v62 = OUTLINED_FUNCTION_94();
          sub_2752F2350(v62, v63);
        }
      }

      else
      {
        v56 = OUTLINED_FUNCTION_147();
        sub_2752F2350(v56, v57);
        v58 = OUTLINED_FUNCTION_94();
        sub_2752F2350(v58, v59);
      }

      goto LABEL_21;
    case 4u:
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_53();
      sub_2752F3C30();
      OUTLINED_FUNCTION_76();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        OUTLINED_FUNCTION_48();
        v27 = v65;
        sub_2752F2680();
        v28 = OUTLINED_FUNCTION_94();
        static AssetRecipe.DRM.FairPlayStreaming.== infix(_:_:)(v28, v29);
        sub_2752F25C8(v27);
        sub_2752F25C8(v11);
LABEL_18:
        OUTLINED_FUNCTION_13();
      }

      else
      {
        OUTLINED_FUNCTION_8();
        sub_2752F25C8(v11);
LABEL_21:
        sub_2752F25C8(v24);
      }

      OUTLINED_FUNCTION_155();
      return;
    case 5u:
      OUTLINED_FUNCTION_76();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    default:
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_152();
      sub_2752F3C30();
      OUTLINED_FUNCTION_76();
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_18;
      }

      goto LABEL_21;
  }
}

void AssetRecipe.DRM.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  v112 = v21;
  v23 = v22;
  OUTLINED_FUNCTION_46();
  v24 = MEMORY[0x277D84538];
  sub_2752F3C84(0, v25, v26, v27, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10();
  v109 = v31 - v30;
  v32 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v32, v33, v34, v35, v24);
  OUTLINED_FUNCTION_2_0();
  v108 = v36;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19();
  v38 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v38, v39, v40, v41, v24);
  v107 = v42;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_19();
  v44 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v44, v45, v46, v47, v24);
  v106 = v48;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19();
  v50 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v50, v51, v52, v53, v24);
  v105 = v54;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_19();
  v56 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v56, v57, v58, v59, v24);
  v61 = v60;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_14();
  type metadata accessor for AssetRecipe.DRM(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_10();
  v66 = v65 - v64;
  v67 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v67, v68, v69, &type metadata for AssetRecipe.DRM.CodingKeys, v24);
  OUTLINED_FUNCTION_2_0();
  v111 = v70;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_67_0(v23, v23[3]);
  sub_2752F28CC();
  v110 = v20;
  sub_2753B7808();
  OUTLINED_FUNCTION_1_0();
  sub_2752F3C30();
  OUTLINED_FUNCTION_111();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v114 = 2;
      sub_2752F27D0();
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_103(&type metadata for AssetRecipe.DRM.PurchaseCodingKeys, &v114, v95, v96, v97);
      OUTLINED_FUNCTION_127();
      sub_2752F2A54();
      v84 = v106;
      sub_2753B7698();
      goto LABEL_8;
    case 2u:
      v114 = 3;
      sub_2752F277C();
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_103(&type metadata for AssetRecipe.DRM.DeprotectionCodingKeys, &v114, v81, v82, v83);
      OUTLINED_FUNCTION_127();
      sub_2752F2A00();
      v84 = v107;
      sub_2753B7698();
LABEL_8:
      v98 = OUTLINED_FUNCTION_66();
      v99(v98, v84);
      OUTLINED_FUNCTION_108();
      v100 = OUTLINED_FUNCTION_94();
      v101(v100);
      sub_2752F2350(v112, v113);

      goto LABEL_10;
    case 3u:
      v85 = *v66;
      v86 = *(v66 + 8);
      v87 = *(v66 + 16);
      v88 = *(v66 + 24);
      v89 = *(v66 + 32);
      sub_2752F2728();
      sub_2753B75E8();
      v114 = v85;
      v115 = v86;
      v116 = v87;
      v117 = v88;
      v118 = v89;
      sub_2752F29AC();
      sub_2753B7698();
      v90 = OUTLINED_FUNCTION_84();
      v91(v90, v108);
      OUTLINED_FUNCTION_108();
      v92(v110, v111);
      sub_2752F2350(v86, v87);
      v93 = OUTLINED_FUNCTION_97();
      sub_2752F2350(v93, v94);
      goto LABEL_10;
    case 4u:
      sub_2752F2680();
      v114 = 5;
      sub_2752F26D4();
      sub_2753B75E8();
      OUTLINED_FUNCTION_38();
      sub_2752F2964(v77, v78, &protocol conformance descriptor for AssetRecipe.DRM.FairPlayStreaming);
      sub_2753B7698();
      v79 = OUTLINED_FUNCTION_112();
      v80(v79);
      OUTLINED_FUNCTION_8();
      sub_2752F25C8(v109);
      OUTLINED_FUNCTION_108();
      v75 = OUTLINED_FUNCTION_114();
      goto LABEL_4;
    case 5u:
      v114 = 0;
      sub_2752F2878();
      sub_2753B75E8();
      v102 = OUTLINED_FUNCTION_66();
      v103(v102, v61);
      OUTLINED_FUNCTION_108();
      v104(v20, v111);
      goto LABEL_10;
    default:
      v72 = *v66;
      sub_2752F2824();
      sub_2753B75E8();
      v114 = v72;
      sub_2752F2AA8();
      sub_2753B7698();
      v73 = OUTLINED_FUNCTION_66();
      v74(v73, v105);
      OUTLINED_FUNCTION_108();
      v75 = OUTLINED_FUNCTION_112();
LABEL_4:
      v76(v75);
LABEL_10:
      OUTLINED_FUNCTION_61();
      return;
  }
}

uint64_t AssetRecipe.DRM.hash(into:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_24();
  type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v1);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10();
  v5 = v4 - v3;
  type metadata accessor for AssetRecipe.DRM(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  v9 = (v8 - v7);
  OUTLINED_FUNCTION_1_0();
  sub_2752F3C30();
  OUTLINED_FUNCTION_115();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = v9[16];
      v13 = *(v9 + 4);
      v14 = 2;
      goto LABEL_8;
    case 2u:
      v12 = v9[16];
      v13 = *(v9 + 4);
      v14 = 3;
LABEL_8:
      MEMORY[0x277C76A80](v14);
      OUTLINED_FUNCTION_101();
      sub_2753B6248();
      if (v13)
      {
        OUTLINED_FUNCTION_157();
        MEMORY[0x277C76A80](v12);
        OUTLINED_FUNCTION_97();
        sub_2753B6688();
      }

      else
      {
        OUTLINED_FUNCTION_156();
      }

      v21 = OUTLINED_FUNCTION_135();
      sub_2752F2350(v21, v22);

    case 3u:
      v15 = *v9;
      v16 = *(v9 + 1);
      v17 = *(v9 + 2);
      v18 = *(v9 + 3);
      v19 = *(v9 + 4);
      MEMORY[0x277C76A80](4);
      MEMORY[0x277C76A80](v15);
      OUTLINED_FUNCTION_152();
      sub_2753B6248();
      OUTLINED_FUNCTION_97();
      sub_2753B6248();
      sub_2752F2350(v16, v17);
      return sub_2752F2350(v18, v19);
    case 4u:
      OUTLINED_FUNCTION_48();
      sub_2752F2680();
      MEMORY[0x277C76A80](5);
      if (*(v5 + 8) == 1)
      {
        OUTLINED_FUNCTION_156();
      }

      else
      {
        v23 = *v5;
        OUTLINED_FUNCTION_157();
        MEMORY[0x277C76AA0](v23);
      }

      sub_2753B61F8();
      OUTLINED_FUNCTION_0_1();
      sub_2752F2964(v24, v25, MEMORY[0x277CC9270]);
      OUTLINED_FUNCTION_33();
      sub_2753B6D38();
      OUTLINED_FUNCTION_33();
      sub_2753B6D38();
      sub_2753B6688();

      sub_2753B77B8();
      OUTLINED_FUNCTION_8();
      return sub_2752F25C8(v5);
    case 5u:
      v11 = 0;
      return MEMORY[0x277C76A80](v11);
    default:
      v10 = *v9;
      MEMORY[0x277C76A80](1);
      v11 = v10;
      return MEMORY[0x277C76A80](v11);
  }
}

void AssetRecipe.DRM.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  v23 = v22;
  v173 = v24;
  OUTLINED_FUNCTION_46();
  v25 = MEMORY[0x277D844C8];
  sub_2752F3C84(0, v26, v27, v28, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  v171 = v30;
  v172 = v29;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19();
  v170 = v32;
  v33 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v33, v34, v35, v36, v25);
  v160 = v37;
  OUTLINED_FUNCTION_2_0();
  v164 = v38;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_19();
  v169 = v40;
  v41 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v41, v42, v43, v44, v25);
  v159 = v45;
  OUTLINED_FUNCTION_2_0();
  v163 = v46;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_19();
  v168 = v48;
  v49 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v49, v50, v51, v52, v25);
  v158 = v53;
  OUTLINED_FUNCTION_2_0();
  v162 = v54;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_19();
  v167 = v56;
  v57 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v57, v58, v59, v60, v25);
  v157 = v61;
  OUTLINED_FUNCTION_2_0();
  v161 = v62;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_19();
  v166 = v64;
  v65 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v65, v66, v67, v68, v25);
  v156 = v69;
  OUTLINED_FUNCTION_2_0();
  v155 = v70;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_19();
  v165 = v72;
  v73 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v73, v74, v75, v76, v25);
  OUTLINED_FUNCTION_2_0();
  v174 = v78;
  v175 = v77;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_70();
  v176 = type metadata accessor for AssetRecipe.DRM(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_98();
  v154 = v81 - v82;
  v84 = MEMORY[0x28223BE20](v83);
  v86 = v149 - v85;
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_142();
  v88 = MEMORY[0x28223BE20](v87);
  v90 = v149 - v89;
  v91 = MEMORY[0x28223BE20](v88);
  v93 = v149 - v92;
  MEMORY[0x28223BE20](v91);
  v94 = v23[3];
  v177 = v23;
  OUTLINED_FUNCTION_67_0(v23, v94);
  sub_2752F28CC();
  sub_2753B77F8();
  if (v20)
  {
    goto LABEL_8;
  }

  v150 = v93;
  v151 = v90;
  v152 = v21;
  v153 = v86;
  v95 = v176;
  v96 = sub_2753B75C8();
  sub_2752F2B48(v96, 0);
  if (v99 == v100 >> 1)
  {
    goto LABEL_7;
  }

  v149[1] = 0;
  if (v99 >= (v100 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2752ED0D4);
  }

  v101 = *(v98 + v99);
  sub_2752F3868(v99 + 1, v100 >> 1, v97, v98, v99, v100);
  v103 = v102;
  v105 = v104;
  swift_unknownObjectRelease();
  if (v103 != v105 >> 1)
  {
LABEL_7:
    v108 = sub_2753B73E8();
    OUTLINED_FUNCTION_122(v108, MEMORY[0x277D841A0]);
    v110 = v109;
    sub_2752F2CE0(0);
    *v110 = v95;
    v111 = sub_2753B7508();
    OUTLINED_FUNCTION_59(v111);
    OUTLINED_FUNCTION_18();
    (*(v112 + 104))(v110);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_92();
    v113 = OUTLINED_FUNCTION_95();
    v114(v113);
LABEL_8:
    v115 = v177;
    goto LABEL_9;
  }

  v106 = v172;
  v107 = v171;
  switch(v101)
  {
    case 1:
      v178[0] = 1;
      sub_2752F2824();
      OUTLINED_FUNCTION_23(&type metadata for AssetRecipe.DRM.KeyBagCodingKeys, v178);
      sub_2752F2E90();
      OUTLINED_FUNCTION_26(&type metadata for AssetRecipe.DRM.KeyBag);
      OUTLINED_FUNCTION_73();
      swift_unknownObjectRelease();
      v142 = OUTLINED_FUNCTION_28();
      v143(v142);
      v144 = OUTLINED_FUNCTION_29();
      v145(v144);
      *v150 = v178[0];
      OUTLINED_FUNCTION_53();
      goto LABEL_15;
    case 2:
      v178[0] = 2;
      sub_2752F27D0();
      OUTLINED_FUNCTION_23(&type metadata for AssetRecipe.DRM.PurchaseCodingKeys, v178);
      sub_2752F2E3C();
      OUTLINED_FUNCTION_26(&type metadata for AssetRecipe.DRM.PurchaseKeyMaterial);
      OUTLINED_FUNCTION_73();
      swift_unknownObjectRelease();
      v128 = OUTLINED_FUNCTION_28();
      v129(v128);
      v130 = OUTLINED_FUNCTION_29();
      v131(v130);
      v132 = *&v178[32];
      v133 = *&v178[16];
      v134 = v151;
      *v151 = *v178;
      v134[1] = v133;
      *(v134 + 4) = v132;
      OUTLINED_FUNCTION_53();
      goto LABEL_15;
    case 3:
      v178[0] = 3;
      sub_2752F277C();
      OUTLINED_FUNCTION_23(&type metadata for AssetRecipe.DRM.DeprotectionCodingKeys, v178);
      sub_2752F2DE8();
      OUTLINED_FUNCTION_26(&type metadata for AssetRecipe.DRM.DeprotectionKeyMaterial);
      OUTLINED_FUNCTION_73();
      swift_unknownObjectRelease();
      v135 = OUTLINED_FUNCTION_28();
      v136(v135);
      v137 = OUTLINED_FUNCTION_29();
      v138(v137);
      v139 = *&v178[32];
      v140 = *&v178[16];
      v141 = v152;
      *v152 = *v178;
      v141[1] = v140;
      *(v141 + 4) = v139;
      OUTLINED_FUNCTION_53();
      goto LABEL_15;
    case 4:
      v178[0] = 4;
      sub_2752F2728();
      OUTLINED_FUNCTION_23(&type metadata for AssetRecipe.DRM.SecurityCodingKeys, v178);
      sub_2752F2D94();
      OUTLINED_FUNCTION_26(&type metadata for AssetRecipe.DRM.SecurityKeyMaterial);
      OUTLINED_FUNCTION_73();
      swift_unknownObjectRelease();
      v123 = OUTLINED_FUNCTION_28();
      v124(v123);
      v125 = OUTLINED_FUNCTION_29();
      v126(v125);
      v127 = v153;
      *v153 = v178[0];
      *(v127 + 8) = *&v178[8];
      *(v127 + 24) = *&v178[24];
      OUTLINED_FUNCTION_53();
LABEL_15:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7();
      sub_2752F2680();
      goto LABEL_16;
    case 5:
      v178[0] = 5;
      sub_2752F26D4();
      v116 = v170;
      OUTLINED_FUNCTION_23(&type metadata for AssetRecipe.DRM.FairplayStreamingCodingKeys, v178);
      type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
      OUTLINED_FUNCTION_38();
      sub_2752F2964(v121, v122, &protocol conformance descriptor for AssetRecipe.DRM.FairPlayStreaming);
      OUTLINED_FUNCTION_88();
      sub_2753B75B8();
      swift_unknownObjectRelease();
      (*(v107 + 8))(v116, v106);
      OUTLINED_FUNCTION_92();
      v146 = OUTLINED_FUNCTION_52();
      v147(v146);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7();
      sub_2752F2680();
      v148 = v177;
      goto LABEL_17;
    default:
      v178[0] = 0;
      sub_2752F2878();
      OUTLINED_FUNCTION_23(&type metadata for AssetRecipe.DRM.NoneCodingKeys, v178);
      swift_unknownObjectRelease();
      v117 = OUTLINED_FUNCTION_66();
      v118(v117, v156);
      OUTLINED_FUNCTION_92();
      v119 = OUTLINED_FUNCTION_52();
      v120(v119);
      swift_storeEnumTagMultiPayload();
LABEL_16:
      v148 = v177;
LABEL_17:
      OUTLINED_FUNCTION_7();
      sub_2752F2680();
      v115 = v148;
      break;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v115);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void AssetRecipe.DRM.KeyBag.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  v26 = v25;
  OUTLINED_FUNCTION_41();
  v27 = MEMORY[0x277D84538];
  sub_2752F3C84(0, v28, v29, v30, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  v61 = v32;
  v62 = v31;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_134(v34);
  v35 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v35, v36, v37, v38, v27);
  OUTLINED_FUNCTION_2_0();
  v58 = v40;
  v59 = v39;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_133(v42);
  v43 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v43, v44, v45, &type metadata for AssetRecipe.DRM.KeyBag.CodingKeys, v27);
  v47 = v46;
  OUTLINED_FUNCTION_2_0();
  v49 = v48;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_30();
  v51 = *v23;
  OUTLINED_FUNCTION_67_0(v26, v26[3]);
  v52 = sub_2752F2F8C();
  OUTLINED_FUNCTION_104(v52);
  v53 = (v49 + 8);
  if (v51)
  {
    OUTLINED_FUNCTION_77();
    sub_2752F2EE4();
    v54 = v60;
    OUTLINED_FUNCTION_35();
    sub_2753B75E8();
    v56 = v61;
    v55 = v62;
  }

  else
  {
    sub_2752F2F38();
    v54 = v57;
    OUTLINED_FUNCTION_35();
    sub_2753B75E8();
    v56 = v58;
    v55 = v59;
  }

  (*(v56 + 8))(v54, v55);
  (*v53)(v24, v47);
  OUTLINED_FUNCTION_61();
}

uint64_t _s015_SonicKit_MusicB011AssetRecipeV3DRMO19SecurityKeyMaterialV7VariantO9hashValueSivg_0(uint64_t a1)
{
  OUTLINED_FUNCTION_100(a1);
  OUTLINED_FUNCTION_119();
  return sub_2753B77D8();
}

void AssetRecipe.DRM.KeyBag.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_41();
  v25 = MEMORY[0x277D844C8];
  sub_2752F3C84(0, v26, v27, v28, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  v67 = v29;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_134(v31);
  v32 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v32, v33, v34, v35, v25);
  v37 = v36;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14();
  v39 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v39, v40, v41, &type metadata for AssetRecipe.DRM.KeyBag.CodingKeys, v25);
  v43 = v42;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_67_0(v24, v24[3]);
  v45 = sub_2752F2F8C();
  OUTLINED_FUNCTION_93(v45);
  if (!v20)
  {
    v46 = OUTLINED_FUNCTION_102();
    sub_2752F2B48(v46, 0);
    if (v48 != v47 >> 1)
    {
      OUTLINED_FUNCTION_31();
      if (v53 == v54)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_117(v49, v50, v51, v52);
      OUTLINED_FUNCTION_154();
      if (!(&type metadata for AssetRecipe.DRM.KeyBag.CodingKeys >> 1))
      {
        if (v43)
        {
          OUTLINED_FUNCTION_77();
          sub_2752F2EE4();
          OUTLINED_FUNCTION_25(&type metadata for AssetRecipe.DRM.KeyBag.SubscriptionCodingKeys, &a10 + 7);
          OUTLINED_FUNCTION_63();
          swift_unknownObjectRelease();
          (*(v67 + 8))(v68, v37);
        }

        else
        {
          BYTE6(a10) = 0;
          sub_2752F2F38();
          OUTLINED_FUNCTION_25(&type metadata for AssetRecipe.DRM.KeyBag.PurchaseCodingKeys, &a10 + 6);
          OUTLINED_FUNCTION_63();
          swift_unknownObjectRelease();
          v63 = OUTLINED_FUNCTION_83();
          v64(v63);
        }

        v65 = OUTLINED_FUNCTION_68();
        v66(v65);
        *v43 = v43;
        v62 = 0;
        goto LABEL_10;
      }
    }

    v55 = sub_2753B73E8();
    OUTLINED_FUNCTION_122(v55, MEMORY[0x277D841A0]);
    v57 = v56;
    sub_2752F2CE0(0);
    *v57 = &type metadata for AssetRecipe.DRM.KeyBag;
    v58 = sub_2753B7508();
    OUTLINED_FUNCTION_59(v58);
    OUTLINED_FUNCTION_18();
    (*(v59 + 104))(v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_125();
    v61(v60);
    v24 = 0;
  }

  v62 = v24;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v62);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752ED7C4()
{
  sub_2753B7798();
  OUTLINED_FUNCTION_119();
  return sub_2753B77D8();
}

uint64_t static AssetRecipe.DRM.SuzeLeaseInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_2753B7718();
  }
}

void AssetRecipe.DRM.SuzeLeaseInfo.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60();
  v26 = v25;
  OUTLINED_FUNCTION_36();
  sub_2752F3C84(0, v27, v28, &type metadata for AssetRecipe.DRM.SuzeLeaseInfo.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_67_0(v26, v26[3]);
  sub_2752F2FE0();
  OUTLINED_FUNCTION_149();
  sub_2753B7808();
  sub_2752F3034();
  sub_2753B7698();
  if (!v24)
  {
    OUTLINED_FUNCTION_22();
    sub_2753B7658();
  }

  v30 = OUTLINED_FUNCTION_114();
  v31(v30);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t AssetRecipe.DRM.SuzeLeaseInfo.hash(into:)()
{
  MEMORY[0x277C76A80](*v0);
  OUTLINED_FUNCTION_101();

  return sub_2753B6688();
}

uint64_t AssetRecipe.DRM.SuzeLeaseInfo.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_100(a1);
  OUTLINED_FUNCTION_119();
  sub_2753B6688();
  return sub_2753B77D8();
}

void AssetRecipe.DRM.SuzeLeaseInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60();
  v27 = v26;
  v39 = v28;
  OUTLINED_FUNCTION_36();
  sub_2752F3C84(0, v29, v30, &type metadata for AssetRecipe.DRM.SuzeLeaseInfo.CodingKeys, MEMORY[0x277D844C8]);
  v32 = v31;
  OUTLINED_FUNCTION_2_0();
  v34 = v33;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_2752F2FE0();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (!v24)
  {
    sub_2752F3088();
    sub_2753B75B8();
    v36 = sub_2753B7578();
    v38 = v37;
    (*(v34 + 8))(v25, v32);
    *v39 = a14;
    *(v39 + 8) = v36;
    *(v39 + 16) = v38;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752EDC2C()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  sub_2753B6688();
  return sub_2753B77D8();
}

void AssetRecipe.DRM.SuzeLeaseInfo.MediaType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_60();
  a26 = v28;
  a27 = v29;
  v30 = v27;
  v32 = v31;
  OUTLINED_FUNCTION_49();
  v33 = MEMORY[0x277D84538];
  sub_2752F3C84(0, v34, v35, v36, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19();
  v38 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v38, v39, v40, v41, v33);
  OUTLINED_FUNCTION_2_0();
  v126 = v43;
  v127 = v42;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_19();
  v125 = v45;
  v46 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v46, v47, v48, v49, v33);
  OUTLINED_FUNCTION_2_0();
  v123 = v51;
  v124 = v50;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_19();
  v122 = v53;
  v54 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v54, v55, v56, v57, v33);
  OUTLINED_FUNCTION_2_0();
  v120 = v59;
  v121 = v58;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_19();
  v119 = v61;
  v62 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v62, v63, v64, v65, v33);
  OUTLINED_FUNCTION_2_0();
  v117 = v67;
  v118 = v66;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_19();
  v116 = v69;
  v70 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v70, v71, v72, v73, v33);
  OUTLINED_FUNCTION_2_0();
  v114 = v75;
  v115 = v74;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_19();
  v113 = v77;
  v78 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v78, v79, v80, v81, v33);
  v83 = v82;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_70();
  v85 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v85, v86, v87, &type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.CodingKeys, v33);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_20();
  v89 = *v30;
  OUTLINED_FUNCTION_67_0(v32, v32[3]);
  sub_2752F3328();
  OUTLINED_FUNCTION_148();
  sub_2753B7808();
  switch(v89)
  {
    case 1:
      a12 = 1;
      v105 = sub_2752F3280();
      v94 = v113;
      OUTLINED_FUNCTION_16(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.MovieCodingKeys, &a12, v106, v107, v105);
      v98 = v114;
      v97 = v115;
      goto LABEL_8;
    case 2:
      a13 = 2;
      v99 = sub_2752F322C();
      v94 = v116;
      OUTLINED_FUNCTION_16(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.PodcastCodingKeys, &a13, v100, v101, v99);
      v98 = v117;
      v97 = v118;
      goto LABEL_8;
    case 3:
      OUTLINED_FUNCTION_128();
      v102 = sub_2752F31D8();
      v94 = v119;
      OUTLINED_FUNCTION_16(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.AudioBookCodingKeys, &a14, v103, v104, v102);
      v98 = v120;
      v97 = v121;
      goto LABEL_8;
    case 4:
      a15 = 4;
      v93 = sub_2752F3184();
      v94 = v122;
      OUTLINED_FUNCTION_16(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.BookletCodingKeys, &a15, v95, v96, v93);
      v98 = v123;
      v97 = v124;
      goto LABEL_8;
    case 5:
      a16 = 5;
      v108 = sub_2752F3130();
      v94 = v125;
      OUTLINED_FUNCTION_16(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.MusicVideoCodingKeys, &a16, v109, v110, v108);
      v98 = v126;
      v97 = v127;
LABEL_8:
      (*(v98 + 8))(v94, v97);
      v111 = OUTLINED_FUNCTION_53();
      goto LABEL_11;
    case 6:
      a17 = 6;
      sub_2752F30DC();
      OUTLINED_FUNCTION_35();
      sub_2753B75E8();
      v90 = OUTLINED_FUNCTION_109();
      goto LABEL_10;
    default:
      sub_2752F32D4();
      OUTLINED_FUNCTION_35();
      sub_2753B75E8();
      v90 = OUTLINED_FUNCTION_84();
      v92 = v83;
LABEL_10:
      v91(v90, v92);
      v111 = OUTLINED_FUNCTION_97();
LABEL_11:
      v112(v111);
      OUTLINED_FUNCTION_61();
      return;
  }
}

void AssetRecipe.DRM.SuzeLeaseInfo.MediaType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_60();
  a26 = v29;
  a27 = v30;
  v32 = v31;
  v107 = v33;
  OUTLINED_FUNCTION_49();
  v34 = MEMORY[0x277D844C8];
  sub_2752F3C84(0, v35, v36, v37, MEMORY[0x277D844C8]);
  v106 = v38;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_133(v40);
  v41 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v41, v42, v43, v44, v34);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_19();
  v46 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v46, v47, v48, v49, v34);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_19();
  v51 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v51, v52, v53, v54, v34);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_19();
  v56 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v56, v57, v58, v59, v34);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_19();
  v61 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v61, v62, v63, v64, v34);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_19();
  v66 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v66, v67, v68, v69, v34);
  v71 = v70;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_14();
  v73 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v73, v74, v75, &type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.CodingKeys, v34);
  v77 = v76;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_70();
  v108 = v32;
  OUTLINED_FUNCTION_67_0(v32, v32[3]);
  sub_2752F3328();
  sub_2753B77F8();
  if (v27)
  {
    goto LABEL_9;
  }

  v79 = sub_2753B75C8();
  sub_2752F2B48(v79, 0);
  v81 = v80;
  if (v83 == v82 >> 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_31();
  if (v88 == v89)
  {
    __break(1u);
    JUMPOUT(0x2752EEB80);
  }

  v105 = *(v87 + v85);
  sub_2752F3868(v85 + 1, v84, v81, v87, v85, v86);
  v91 = v90;
  v93 = v92;
  swift_unknownObjectRelease();
  if (v91 != v93 >> 1)
  {
LABEL_8:
    v97 = sub_2753B73E8();
    OUTLINED_FUNCTION_122(v97, MEMORY[0x277D841A0]);
    v99 = v98;
    sub_2752F2CE0(0);
    *v99 = &type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType;
    v100 = sub_2753B7508();
    OUTLINED_FUNCTION_59(v100);
    OUTLINED_FUNCTION_18();
    (*(v101 + 104))(v99);
    swift_willThrow();
    swift_unknownObjectRelease();
    v102 = OUTLINED_FUNCTION_84();
    v103(v102, v77);
LABEL_9:
    v104 = v108;
    goto LABEL_10;
  }

  switch(v105)
  {
    case 1:
      a12 = 1;
      sub_2752F3280();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.MovieCodingKeys, &a12);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
      goto LABEL_16;
    case 2:
      a13 = 2;
      sub_2752F322C();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.PodcastCodingKeys, &a13);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
      goto LABEL_16;
    case 3:
      OUTLINED_FUNCTION_128();
      sub_2752F31D8();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.AudioBookCodingKeys, &a14);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
      goto LABEL_16;
    case 4:
      a15 = 4;
      sub_2752F3184();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.BookletCodingKeys, &a15);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
      goto LABEL_16;
    case 5:
      a16 = 5;
      sub_2752F3130();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.MusicVideoCodingKeys, &a16);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
LABEL_16:
      v94 = OUTLINED_FUNCTION_109();
      break;
    case 6:
      a17 = 6;
      sub_2752F30DC();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.TvEpisodeCodingKeys, &a17);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
      v94 = OUTLINED_FUNCTION_109();
      v96 = v106;
      break;
    default:
      a11 = 0;
      sub_2752F32D4();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.SongCodingKeys, &a11);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
      v94 = OUTLINED_FUNCTION_109();
      v96 = v71;
      break;
  }

  v95(v94, v96);
  (*(v91 + 8))(v28, v77);
  v104 = v108;
  *v107 = v105;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v104);
  OUTLINED_FUNCTION_61();
}

uint64_t static AssetRecipe.DRM.FairPlayStreaming.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v4 & 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_11;
    }
  }

  v5 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  if ((sub_2753B61A8() & 1) == 0 || (sub_2753B61A8() & 1) == 0 || (sub_2752E8D08(*(a1 + *(v5 + 28)), *(a2 + *(v5 + 28))) & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    return v4 & 1;
  }

  v4 = *(a1 + *(v5 + 32)) ^ *(a2 + *(v5 + 32)) ^ 1;
  return v4 & 1;
}

void AssetRecipe.DRM.FairPlayStreaming.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60();
  v26 = v25;
  OUTLINED_FUNCTION_42();
  sub_2752F3C84(0, v27, v28, &type metadata for AssetRecipe.DRM.FairPlayStreaming.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_67_0(v26, v26[3]);
  sub_2752F3520();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  OUTLINED_FUNCTION_88();
  sub_2753B7648();
  if (!v24)
  {
    type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
    OUTLINED_FUNCTION_143();
    sub_2753B61F8();
    OUTLINED_FUNCTION_0_1();
    sub_2752F2964(v30, v31, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_88();
    sub_2753B7698();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_88();
    sub_2753B7698();
    sub_2752F3574();
    OUTLINED_FUNCTION_88();
    sub_2753B7698();
    OUTLINED_FUNCTION_88();
    sub_2753B7668();
  }

  v32 = OUTLINED_FUNCTION_114();
  v33(v32);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    OUTLINED_FUNCTION_156();
  }

  else
  {
    v2 = *v1;
    OUTLINED_FUNCTION_157();
    MEMORY[0x277C76AA0](v2);
  }

  type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  sub_2753B61F8();
  OUTLINED_FUNCTION_0_1();
  sub_2752F2964(v3, v4, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_33();
  sub_2753B6D38();
  OUTLINED_FUNCTION_33();
  sub_2753B6D38();
  sub_2753B6688();

  return sub_2753B77B8();
}

void AssetRecipe.DRM.FairPlayStreaming.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_60();
  v72 = v26;
  v28 = v27;
  v70 = v29;
  sub_2753B61F8();
  OUTLINED_FUNCTION_2_0();
  v75 = v30;
  v76 = v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_98();
  v34 = (v32 - v33);
  MEMORY[0x28223BE20](v35);
  v37 = v68 - v36;
  OUTLINED_FUNCTION_42();
  sub_2752F3C84(0, v38, v39, &type metadata for AssetRecipe.DRM.FairPlayStreaming.CodingKeys, MEMORY[0x277D844C8]);
  v71 = v40;
  OUTLINED_FUNCTION_2_0();
  v42 = v41;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_70();
  v74 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10();
  v47 = v46 - v45;
  v73 = v28;
  v48 = OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67_0(v48, v49);
  sub_2752F3520();
  v50 = v72;
  sub_2753B77F8();
  if (v50)
  {
    __swift_destroy_boxed_opaque_existential_1(v73);
  }

  else
  {
    v72 = v42;
    OUTLINED_FUNCTION_34();
    v51 = v47;
    *v47 = sub_2753B7568();
    *(v47 + 8) = v52 & 1;
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_0_1();
    v55 = sub_2752F2964(v53, v54, MEMORY[0x277CC9280]);
    v56 = v37;
    v57 = v75;
    OUTLINED_FUNCTION_34();
    sub_2753B75B8();
    v68[1] = v55;
    v58 = v74;
    v59 = *(v74 + 20);
    v60 = *(v76 + 32);
    v69 = v51;
    v60(v51 + v59, v56, v57);
    OUTLINED_FUNCTION_124();
    v61 = v34;
    OUTLINED_FUNCTION_34();
    sub_2753B75B8();
    v62 = v69;
    v60(v69 + v58[6], v61, v57);
    sub_2752F35C8();
    v63 = v71;
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_34();
    sub_2753B75B8();
    *(v62 + v58[7]) = a13;
    OUTLINED_FUNCTION_34();
    v64 = sub_2753B7588();
    v65 = v58[8];
    v66 = OUTLINED_FUNCTION_84();
    v67(v66, v63);
    *(v62 + v65) = v64 & 1;
    sub_2752F3C30();
    __swift_destroy_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_8();
    sub_2752F25C8(v62);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752EF668(void *a1, void *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if ((MEMORY[0x277C75500](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v7)
    {
      if (v6 == v3)
      {
        if (v2 == v5 && v4 == v7)
        {
          return 1;
        }

        v9 = OUTLINED_FUNCTION_76();
        if (OUTLINED_FUNCTION_159(v9, v10, v5))
        {
          return 1;
        }
      }

      return 0;
    }

LABEL_12:

    return 0;
  }

  if (v7)
  {
    goto LABEL_12;
  }

  return 1;
}

void sub_2752EF770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  v38 = v22;
  v24 = v23;
  sub_2752F3C84(0, v25, v26, v27, MEMORY[0x277D84538]);
  v29 = v28;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_20();
  v32 = *v20;
  v31 = v20[1];
  OUTLINED_FUNCTION_67_0(v24, v24[3]);
  v33 = sub_2752F22F8(v32, v31);
  v38(v33);
  OUTLINED_FUNCTION_146();
  sub_2753B7808();
  sub_2752F33D0();
  sub_2753B7698();
  sub_2752F2350(v32, v31);
  if (v21)
  {
    v34 = OUTLINED_FUNCTION_83();
    v35(v34, v29);
  }

  else
  {
    OUTLINED_FUNCTION_77();
    sub_2752F3424();

    sub_2753B7638();

    v36 = OUTLINED_FUNCTION_97();
    v37(v36);
  }

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752EF950(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  sub_2753B6248();
  if (!v3)
  {
    return sub_2753B77B8();
  }

  sub_2753B77B8();
  MEMORY[0x277C76A80](v2);

  return sub_2753B6688();
}

uint64_t sub_2752EF9E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_100(a1);
  sub_2753B6248();
  sub_2753B77B8();
  if (v3)
  {
    MEMORY[0x277C76A80](v2);
    sub_2753B6688();
  }

  return sub_2753B77D8();
}

void sub_2752EFABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  v25 = v24;
  v27 = v26;
  v42 = v28;
  sub_2752F3C84(0, v29, v30, v31, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14();
  v33 = OUTLINED_FUNCTION_52();
  v35 = OUTLINED_FUNCTION_67_0(v33, v34);
  v25(v35);
  sub_2753B77F8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_2752F3478();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_110();
    sub_2753B75B8();
    OUTLINED_FUNCTION_77();
    sub_2752F34CC();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_110();
    sub_2753B7558();
    v36 = OUTLINED_FUNCTION_71();
    v37(v36);

    *v42 = v43;
    v42[1] = v44;
    v42[2] = v43;
    v42[3] = v44;
    v42[4] = v45;
    v38 = OUTLINED_FUNCTION_111();
    sub_2752F22F8(v38, v39);

    __swift_destroy_boxed_opaque_existential_1(v27);
    v40 = OUTLINED_FUNCTION_111();
    sub_2752F2350(v40, v41);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752EFCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = *(v4 + 4);
  v7 = v4[1];
  v10 = *v4;
  v11 = v7;
  v12 = v6;
  sub_2753B7798();
  a4(v9);
  return sub_2753B77D8();
}

uint64_t static AssetRecipe.DRM.SecurityKeyMaterial.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && (MEMORY[0x277C75500](*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & 1) != 0)
  {
    OUTLINED_FUNCTION_27();

    JUMPOUT(0x277C75500);
  }

  return 0;
}

void AssetRecipe.DRM.SecurityKeyMaterial.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60();
  v15 = v14;
  OUTLINED_FUNCTION_47();
  sub_2752F3C84(0, v16, v17, &type metadata for AssetRecipe.DRM.SecurityKeyMaterial.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_21();
  v25 = v12[2];
  v26 = v12[1];
  v23 = v12[4];
  v24 = v12[3];
  OUTLINED_FUNCTION_67_0(v15, v15[3]);
  sub_2752F3670();
  OUTLINED_FUNCTION_149();
  sub_2753B7808();
  sub_2752F36C4();
  OUTLINED_FUNCTION_99();
  sub_2753B7698();
  if (!v13)
  {
    OUTLINED_FUNCTION_77();
    sub_2752F22F8(v19, v20);
    sub_2752F33D0();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_58();
    sub_2753B7698();
    sub_2752F2350(v26, v25);
    sub_2752F22F8(v24, v23);
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_58();
    sub_2753B7698();
    sub_2752F2350(v24, v23);
  }

  v21 = OUTLINED_FUNCTION_114();
  v22(v21);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t AssetRecipe.DRM.SecurityKeyMaterial.hash(into:)()
{
  MEMORY[0x277C76A80](*v0);
  OUTLINED_FUNCTION_101();
  sub_2753B6248();
  OUTLINED_FUNCTION_33();

  return sub_2753B6248();
}

uint64_t AssetRecipe.DRM.SecurityKeyMaterial.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_100(a1);
  OUTLINED_FUNCTION_119();
  sub_2753B6248();
  sub_2753B6248();
  return sub_2753B77D8();
}

void AssetRecipe.DRM.SecurityKeyMaterial.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  v25 = v24;
  v36 = v26;
  OUTLINED_FUNCTION_47();
  sub_2752F3C84(0, v27, v28, &type metadata for AssetRecipe.DRM.SecurityKeyMaterial.CodingKeys, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2752F3670();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2752F3718();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_110();
    sub_2753B75B8();
    OUTLINED_FUNCTION_77();
    sub_2752F3478();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_110();
    sub_2753B75B8();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_110();
    sub_2753B75B8();
    v30 = OUTLINED_FUNCTION_71();
    v31(v30);
    *v36 = v37;
    *(v36 + 8) = v37;
    *(v36 + 16) = v38;
    *(v36 + 24) = v37;
    *(v36 + 32) = v38;
    sub_2752F22F8(v37, v38);
    v32 = OUTLINED_FUNCTION_115();
    sub_2752F22F8(v32, v33);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_2752F2350(v37, v38);
    v34 = OUTLINED_FUNCTION_115();
    sub_2752F2350(v34, v35);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752F02F8()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  sub_2753B6248();
  sub_2753B6248();
  return sub_2753B77D8();
}

void AssetRecipe.DRM.SecurityKeyMaterial.Variant.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  v26 = v25;
  OUTLINED_FUNCTION_45();
  v27 = MEMORY[0x277D84538];
  sub_2752F3C84(0, v28, v29, v30, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  v61 = v32;
  v62 = v31;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_134(v34);
  v35 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v35, v36, v37, v38, v27);
  OUTLINED_FUNCTION_2_0();
  v58 = v40;
  v59 = v39;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_133(v42);
  v43 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v43, v44, v45, &type metadata for AssetRecipe.DRM.SecurityKeyMaterial.Variant.CodingKeys, v27);
  v47 = v46;
  OUTLINED_FUNCTION_2_0();
  v49 = v48;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_30();
  v51 = *v23;
  OUTLINED_FUNCTION_67_0(v26, v26[3]);
  v52 = sub_2752F3814();
  OUTLINED_FUNCTION_104(v52);
  v53 = (v49 + 8);
  if (v51)
  {
    OUTLINED_FUNCTION_77();
    sub_2752F376C();
    v54 = v60;
    OUTLINED_FUNCTION_35();
    sub_2753B75E8();
    v56 = v61;
    v55 = v62;
  }

  else
  {
    sub_2752F37C0();
    v54 = v57;
    OUTLINED_FUNCTION_35();
    sub_2753B75E8();
    v56 = v58;
    v55 = v59;
  }

  (*(v56 + 8))(v54, v55);
  (*v53)(v24, v47);
  OUTLINED_FUNCTION_61();
}

void AssetRecipe.DRM.SecurityKeyMaterial.Variant.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_45();
  v25 = MEMORY[0x277D844C8];
  sub_2752F3C84(0, v26, v27, v28, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  v67 = v29;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_134(v31);
  v32 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v32, v33, v34, v35, v25);
  v37 = v36;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14();
  v39 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v39, v40, v41, &type metadata for AssetRecipe.DRM.SecurityKeyMaterial.Variant.CodingKeys, v25);
  v43 = v42;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_67_0(v24, v24[3]);
  v45 = sub_2752F3814();
  OUTLINED_FUNCTION_93(v45);
  if (!v20)
  {
    v46 = OUTLINED_FUNCTION_102();
    sub_2752F2B48(v46, 0);
    if (v48 != v47 >> 1)
    {
      OUTLINED_FUNCTION_31();
      if (v53 == v54)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_117(v49, v50, v51, v52);
      OUTLINED_FUNCTION_154();
      if (!(&type metadata for AssetRecipe.DRM.SecurityKeyMaterial.Variant.CodingKeys >> 1))
      {
        if (v43)
        {
          OUTLINED_FUNCTION_77();
          sub_2752F376C();
          OUTLINED_FUNCTION_25(&type metadata for AssetRecipe.DRM.SecurityKeyMaterial.Variant.MiniCodingKeys, &a10 + 7);
          OUTLINED_FUNCTION_63();
          swift_unknownObjectRelease();
          (*(v67 + 8))(v68, v37);
        }

        else
        {
          BYTE6(a10) = 0;
          sub_2752F37C0();
          OUTLINED_FUNCTION_25(&type metadata for AssetRecipe.DRM.SecurityKeyMaterial.Variant.FullCodingKeys, &a10 + 6);
          OUTLINED_FUNCTION_63();
          swift_unknownObjectRelease();
          v63 = OUTLINED_FUNCTION_83();
          v64(v63);
        }

        v65 = OUTLINED_FUNCTION_68();
        v66(v65);
        *v43 = v43;
        v62 = 0;
        goto LABEL_10;
      }
    }

    v55 = sub_2753B73E8();
    OUTLINED_FUNCTION_122(v55, MEMORY[0x277D841A0]);
    v57 = v56;
    sub_2752F2CE0(0);
    *v57 = &type metadata for AssetRecipe.DRM.SecurityKeyMaterial.Variant;
    v58 = sub_2753B7508();
    OUTLINED_FUNCTION_59(v58);
    OUTLINED_FUNCTION_18();
    (*(v59 + 104))(v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_125();
    v61(v60);
    v24 = 0;
  }

  v62 = v24;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v62);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void static AssetRecipe.iTunesStoreContentInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_153();
  v4 = v3;
  v6 = v5;
  v7 = sub_2753B61F8();
  OUTLINED_FUNCTION_2_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10();
  v13 = v12 - v11;
  v14 = MEMORY[0x277CC9260];
  sub_2752F251C(0, &qword_2809C08E8, MEMORY[0x277CC9260]);
  OUTLINED_FUNCTION_75(v15);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_21();
  sub_2752F38E4(0, &qword_2809C0C40, &qword_2809C08E8, v14);
  v18 = v17;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_20();
  v20 = *(v4 + 8);
  if (*(v6 + 8))
  {
    if (!*(v4 + 8))
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v6 != *v4)
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_54;
    }
  }

  v21 = *(v6 + 24);
  v22 = *(v4 + 24);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_54;
    }

    v23 = *(v6 + 16) == *(v4 + 16) && v21 == v22;
    if (!v23 && (sub_2753B7718() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v22)
  {
    goto LABEL_54;
  }

  v24 = *(v4 + 32);
  if (*(v6 + 32))
  {
    if (!v24)
    {
      goto LABEL_54;
    }

    v25 = OUTLINED_FUNCTION_111();
    v27 = sub_2752F20F8(v25, v26);

    if ((v27 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v24)
  {
    goto LABEL_54;
  }

  v28 = *(v6 + 48);
  v29 = *(v4 + 48);
  if (v28)
  {
    if (!v29)
    {
      goto LABEL_54;
    }

    v30 = *(v6 + 40) == *(v4 + 40) && v28 == v29;
    if (!v30 && (sub_2753B7718() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v29)
  {
    goto LABEL_54;
  }

  v31 = *(v6 + 64);
  v32 = *(v4 + 64);
  if (v31)
  {
    if (!v32)
    {
      goto LABEL_54;
    }

    v33 = *(v6 + 56) == *(v4 + 56) && v31 == v32;
    if (!v33 && (sub_2753B7718() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v32)
  {
    goto LABEL_54;
  }

  v34 = *(v4 + 80);
  if (*(v6 + 80))
  {
    if (!*(v4 + 80))
    {
      goto LABEL_54;
    }

LABEL_45:
    type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
    v35 = *(v18 + 48);
    sub_2752F24C4();
    sub_2752F24C4();
    OUTLINED_FUNCTION_123(&qword_2809C08E8, 1, v7);
    if (v23)
    {
      OUTLINED_FUNCTION_123(&qword_2809C08E8 + v35, 1, v7);
      if (v23)
      {
        OUTLINED_FUNCTION_4_0();
        sub_2752F3998(&qword_2809C08E8);
        goto LABEL_54;
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_152();
      sub_2752F24C4();
      OUTLINED_FUNCTION_123(&qword_2809C08E8 + v35, 1, v7);
      if (!v36)
      {
        (*(v9 + 32))(v13, &qword_2809C08E8 + v35, v7);
        OUTLINED_FUNCTION_0_1();
        sub_2752F2964(v37, v38, MEMORY[0x277CC9278]);
        sub_2753B6D68();
        v39 = *(v9 + 8);
        v40 = OUTLINED_FUNCTION_76();
        v39(v40);
        (v39)(v2, v7);
        OUTLINED_FUNCTION_4_0();
        sub_2752F3998(&qword_2809C08E8);
        goto LABEL_54;
      }

      (*(v9 + 8))(v2, v7);
    }

    OUTLINED_FUNCTION_3_0();
    sub_2752F3948(&qword_2809C08E8);
    goto LABEL_54;
  }

  if (*(v6 + 72) != *(v4 + 72))
  {
    v34 = 1;
  }

  if ((v34 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_54:
  OUTLINED_FUNCTION_155();
}

void AssetRecipe.iTunesStoreContentInfo.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_60();
  v29 = v28;
  OUTLINED_FUNCTION_40();
  sub_2752F3C84(0, v30, v31, &type metadata for AssetRecipe.iTunesStoreContentInfo.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_67_0(v29, v29[3]);
  sub_2752F39E8();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  OUTLINED_FUNCTION_22();
  sub_2753B7648();
  if (!v27)
  {
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    OUTLINED_FUNCTION_124();
    sub_2752F3A3C();
    sub_2752F3A98(&qword_2809C0C68, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
    OUTLINED_FUNCTION_128();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    OUTLINED_FUNCTION_22();
    sub_2753B7648();
    type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
    sub_2753B61F8();
    OUTLINED_FUNCTION_0_1();
    sub_2752F2964(v33, v34, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
  }

  v35 = OUTLINED_FUNCTION_114();
  v36(v35);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  v3 = sub_2753B61F8();
  OUTLINED_FUNCTION_2_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_4_0();
  sub_2752F251C(0, v10, v11);
  OUTLINED_FUNCTION_75(v12);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_141();
  if (*(v1 + 8) == 1)
  {
    sub_2753B77B8();
  }

  else
  {
    v14 = *v1;
    sub_2753B77B8();
    MEMORY[0x277C76AA0](v14);
  }

  if (v1[3])
  {
    sub_2753B77B8();
    OUTLINED_FUNCTION_95();
    sub_2753B6688();
  }

  else
  {
    sub_2753B77B8();
  }

  if (v1[4])
  {
    sub_2753B77B8();
    v15 = OUTLINED_FUNCTION_115();
    sub_2752F2B80(v15, v16);
  }

  else
  {
    sub_2753B77B8();
  }

  if (v1[6])
  {
    sub_2753B77B8();
    OUTLINED_FUNCTION_95();
    sub_2753B6688();
  }

  else
  {
    sub_2753B77B8();
  }

  if (v1[8])
  {
    sub_2753B77B8();
    OUTLINED_FUNCTION_95();
    sub_2753B6688();
  }

  else
  {
    sub_2753B77B8();
  }

  if (*(v1 + 80) == 1)
  {
    sub_2753B77B8();
  }

  else
  {
    v17 = v1[9];
    sub_2753B77B8();
    MEMORY[0x277C76AA0](v17);
  }

  type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
  OUTLINED_FUNCTION_3_0();
  sub_2752F24C4();
  OUTLINED_FUNCTION_123(v2, 1, v3);
  if (v18)
  {
    return sub_2753B77B8();
  }

  (*(v5 + 32))(v9, v2, v3);
  sub_2753B77B8();
  OUTLINED_FUNCTION_0_1();
  sub_2752F2964(v19, v20, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_150();
  sub_2753B6D38();
  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_2752F132C(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_100(a1);
  a1(v3);
  return sub_2753B77D8();
}

void AssetRecipe.iTunesStoreContentInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_60();
  v28 = v27;
  OUTLINED_FUNCTION_4_0();
  sub_2752F251C(0, v29, v30);
  OUTLINED_FUNCTION_75(v31);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_40();
  sub_2752F3C84(0, v33, v34, v35, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_30();
  v37 = type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
  v38 = OUTLINED_FUNCTION_75(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10();
  v41 = v40 - v39;
  *v41 = 0;
  *(v41 + 8) = 1;
  *(v41 + 48) = 0u;
  *(v41 + 64) = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 0u;
  *(v41 + 80) = 1;
  v43 = *(v42 + 48);
  v44 = sub_2753B61F8();
  __swift_storeEnumTagSinglePayload(v41 + v43, 1, 1, v44);
  OUTLINED_FUNCTION_67_0(v28, v28[3]);
  sub_2752F39E8();
  sub_2753B77F8();
  if (!v26)
  {
    *v41 = sub_2753B7568();
    *(v41 + 8) = v45 & 1;
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_137();
    *(v41 + 16) = sub_2753B7518();
    *(v41 + 24) = v46;
    sub_2752F3A3C();
    OUTLINED_FUNCTION_124();
    sub_2752F3A98(&qword_2809C0C78, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_2753B7558();
    *(v41 + 32) = v54;
    OUTLINED_FUNCTION_128();
    OUTLINED_FUNCTION_137();
    *(v41 + 40) = sub_2753B7518();
    *(v41 + 48) = v47;
    OUTLINED_FUNCTION_137();
    *(v41 + 56) = sub_2753B7518();
    *(v41 + 64) = v48;
    OUTLINED_FUNCTION_137();
    *(v41 + 72) = sub_2753B7568();
    *(v41 + 80) = v49 & 1;
    OUTLINED_FUNCTION_0_1();
    sub_2752F2964(v50, v51, MEMORY[0x277CC9280]);
    sub_2753B7558();
    v52 = OUTLINED_FUNCTION_95();
    v53(v52);
    OUTLINED_FUNCTION_3_0();
    sub_2752F2570();
    sub_2752F3C30();
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_11();
  sub_2752F25C8(v41);
  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752F1750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_2753B7798();
  a4(v6);
  return sub_2753B77D8();
}

unint64_t sub_2752F1804(uint64_t a1, uint64_t a2)
{
  v2 = sub_2753B74E8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2752F1850(char a1)
{
  if (!a1)
  {
    return 0x6E6F6973726576;
  }

  if (a1 == 1)
  {
    return 7107189;
  }

  return 7172708;
}

uint64_t sub_2752F18B0@<X0>(uint64_t *a1@<X8>)
{
  result = AssetRecipe.CodingError.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2752F1924@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2752F1804(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2752F1954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2752F1850(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2752F1988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752F1804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752F19BC(uint64_t a1)
{
  v2 = sub_2752F3AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752F19F8(uint64_t a1)
{
  v2 = sub_2752F3AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void AssetRecipe.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  a22 = v26;
  a23 = v27;
  v29 = v28;
  type metadata accessor for AssetRecipe.DRM(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_133(v32 - v31);
  sub_2753B61F8();
  OUTLINED_FUNCTION_2_0();
  v57 = v34;
  v58 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10();
  v37 = v36 - v35;
  OUTLINED_FUNCTION_51();
  sub_2752F3C84(0, v38, v39, &type metadata for AssetRecipe.CodingKeys, MEMORY[0x277D844C8]);
  v41 = v40;
  OUTLINED_FUNCTION_2_0();
  v59 = v42;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_20();
  type metadata accessor for AssetRecipe(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_141();
  v46 = *(v45 + 24);
  v47 = type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
  v60 = v25;
  __swift_storeEnumTagSinglePayload(v25 + v46, 1, 1, v47);
  OUTLINED_FUNCTION_67_0(v29, v29[3]);
  sub_2752F3AF8();
  OUTLINED_FUNCTION_148();
  v48 = v29;
  sub_2753B77F8();
  if (v24)
  {
    goto LABEL_5;
  }

  a13 = 0;
  if (sub_2753B75A8() != 1)
  {
    a12 = 1;
    sub_2752F3C84(0, &qword_2809C0C90, sub_2752F3B4C, &type metadata for AssetRecipe.CodingError, MEMORY[0x277D64F08]);
    v54 = v53;
    v55 = sub_2752F3BA0();
    OUTLINED_FUNCTION_122(v54, v55);
    v56 = sub_2752F3B4C();
    v48 = v29;
    MEMORY[0x277C755D0](&a12, 0xD000000000000027, 0x80000002753B8310, MEMORY[0x277D84F90], &type metadata for AssetRecipe.CodingError, v56);
    swift_willThrow();
    (*(v59 + 8))(v23, v41);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_5();
    sub_2752F3998(v60 + v46);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_0_1();
  sub_2752F2964(v49, v50, MEMORY[0x277CC9280]);
  sub_2753B75B8();
  (*(v57 + 32))(v60, v37, v58);
  OUTLINED_FUNCTION_50();
  sub_2752F2964(v51, v52, &protocol conformance descriptor for AssetRecipe.DRM);
  sub_2753B75B8();
  (*(v59 + 8))(v23, v41);
  OUTLINED_FUNCTION_7();
  sub_2752F2680();
  OUTLINED_FUNCTION_39();
  sub_2752F3C30();
  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_2752F25C8(v60);
LABEL_6:
  OUTLINED_FUNCTION_61();
}

void AssetRecipe.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_60();
  v22 = v21;
  OUTLINED_FUNCTION_51();
  sub_2752F3C84(0, v23, v24, &type metadata for AssetRecipe.CodingKeys, MEMORY[0x277D84538]);
  v26 = v25;
  OUTLINED_FUNCTION_2_0();
  v28 = v27;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_67_0(v22, v22[3]);
  sub_2752F3AF8();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  sub_2753B7688();
  if (!v19)
  {
    sub_2753B61F8();
    OUTLINED_FUNCTION_0_1();
    sub_2752F2964(v30, v31, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_138();
    sub_2753B7698();
    type metadata accessor for AssetRecipe(0);
    OUTLINED_FUNCTION_124();
    type metadata accessor for AssetRecipe.DRM(0);
    OUTLINED_FUNCTION_50();
    sub_2752F2964(v32, v33, &protocol conformance descriptor for AssetRecipe.DRM);
    OUTLINED_FUNCTION_138();
    sub_2753B7698();
  }

  (*(v28 + 8))(v20, v26);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752F20F8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_2753842B8(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_2753B7718();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
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

uint64_t sub_2752F22F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2752F2350(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2752F2408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetRecipe.DRM(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752F248C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2752F24C4()
{
  v1 = OUTLINED_FUNCTION_32();
  sub_2752F251C(v1, v2, v3);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return v0;
}

void sub_2752F251C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2752F2570()
{
  v1 = OUTLINED_FUNCTION_32();
  sub_2752F251C(v1, v2, v3);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return v0;
}

uint64_t sub_2752F25C8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_24();
  v3(v2);
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(v1);
  return v1;
}

void sub_2752F261C(uint64_t a1)
{
  if (!qword_2809C0908)
  {
    type metadata accessor for AssetRecipe.DRM(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C0908);
    }
  }
}

uint64_t sub_2752F2680()
{
  v1 = OUTLINED_FUNCTION_32();
  v2(v1);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_27();
  v4(v3);
  return v0;
}

unint64_t sub_2752F26D4()
{
  result = qword_2809C0918;
  if (!qword_2809C0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0918);
  }

  return result;
}

unint64_t sub_2752F2728()
{
  result = qword_2809C0928;
  if (!qword_2809C0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0928);
  }

  return result;
}

unint64_t sub_2752F277C()
{
  result = qword_2809C0938;
  if (!qword_2809C0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0938);
  }

  return result;
}

unint64_t sub_2752F27D0()
{
  result = qword_2809C0948;
  if (!qword_2809C0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0948);
  }

  return result;
}

unint64_t sub_2752F2824()
{
  result = qword_2809C0958;
  if (!qword_2809C0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0958);
  }

  return result;
}

unint64_t sub_2752F2878()
{
  result = qword_2809C0968;
  if (!qword_2809C0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0968);
  }

  return result;
}

unint64_t sub_2752F28CC()
{
  result = qword_2809C0978;
  if (!qword_2809C0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0978);
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

uint64_t sub_2752F2964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2752F29AC()
{
  result = qword_2809C0988;
  if (!qword_2809C0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0988);
  }

  return result;
}

unint64_t sub_2752F2A00()
{
  result = qword_2809C0990;
  if (!qword_2809C0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0990);
  }

  return result;
}

unint64_t sub_2752F2A54()
{
  result = qword_2809C0998;
  if (!qword_2809C0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0998);
  }

  return result;
}

unint64_t sub_2752F2AA8()
{
  result = qword_2809C09A0;
  if (!qword_2809C09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C09A0);
  }

  return result;
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

void sub_2752F2B48(uint64_t result, uint64_t a2)
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

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_80();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_2752F2B80(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x277C76A80](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        memcpy(__dst, a1, sizeof(__dst));

        sub_2753B6688();

        sub_2753B6688();

        result = sub_2753B77D8();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

void sub_2752F2CE0(uint64_t a1)
{
  if (!qword_2809C09E0)
  {
    sub_2752F2D50();
    sub_2753B73D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C09E0);
    }
  }
}

unint64_t sub_2752F2D50()
{
  result = qword_2809C09E8;
  if (!qword_2809C09E8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2809C09E8);
  }

  return result;
}

unint64_t sub_2752F2D94()
{
  result = qword_2809C09F8;
  if (!qword_2809C09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C09F8);
  }

  return result;
}

unint64_t sub_2752F2DE8()
{
  result = qword_2809C0A00;
  if (!qword_2809C0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A00);
  }

  return result;
}

unint64_t sub_2752F2E3C()
{
  result = qword_2809C0A08;
  if (!qword_2809C0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A08);
  }

  return result;
}

unint64_t sub_2752F2E90()
{
  result = qword_2809C0A10;
  if (!qword_2809C0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A10);
  }

  return result;
}

unint64_t sub_2752F2EE4()
{
  result = qword_2809C0A20;
  if (!qword_2809C0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A20);
  }

  return result;
}

unint64_t sub_2752F2F38()
{
  result = qword_2809C0A30;
  if (!qword_2809C0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A30);
  }

  return result;
}

unint64_t sub_2752F2F8C()
{
  result = qword_2809C0A40;
  if (!qword_2809C0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A40);
  }

  return result;
}

unint64_t sub_2752F2FE0()
{
  result = qword_2809C0A68;
  if (!qword_2809C0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A68);
  }

  return result;
}

unint64_t sub_2752F3034()
{
  result = qword_2809C0A70;
  if (!qword_2809C0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A70);
  }

  return result;
}

unint64_t sub_2752F3088()
{
  result = qword_2809C0A80;
  if (!qword_2809C0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A80);
  }

  return result;
}

unint64_t sub_2752F30DC()
{
  result = qword_2809C0A90;
  if (!qword_2809C0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A90);
  }

  return result;
}

unint64_t sub_2752F3130()
{
  result = qword_2809C0AA0;
  if (!qword_2809C0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0AA0);
  }

  return result;
}

unint64_t sub_2752F3184()
{
  result = qword_2809C0AB0;
  if (!qword_2809C0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0AB0);
  }

  return result;
}

unint64_t sub_2752F31D8()
{
  result = qword_2809C0AC0;
  if (!qword_2809C0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0AC0);
  }

  return result;
}

unint64_t sub_2752F322C()
{
  result = qword_2809C0AD0;
  if (!qword_2809C0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0AD0);
  }

  return result;
}

unint64_t sub_2752F3280()
{
  result = qword_2809C0AE0;
  if (!qword_2809C0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0AE0);
  }

  return result;
}

unint64_t sub_2752F32D4()
{
  result = qword_2809C0AF0;
  if (!qword_2809C0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0AF0);
  }

  return result;
}

unint64_t sub_2752F3328()
{
  result = qword_2809C0B00;
  if (!qword_2809C0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B00);
  }

  return result;
}

unint64_t sub_2752F337C()
{
  result = qword_2809C0B50;
  if (!qword_2809C0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B50);
  }

  return result;
}

unint64_t sub_2752F33D0()
{
  result = qword_2809C0B58;
  if (!qword_2809C0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B58);
  }

  return result;
}

unint64_t sub_2752F3424()
{
  result = qword_2809C0B60;
  if (!qword_2809C0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B60);
  }

  return result;
}

unint64_t sub_2752F3478()
{
  result = qword_2809C0B70;
  if (!qword_2809C0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B70);
  }

  return result;
}

unint64_t sub_2752F34CC()
{
  result = qword_2809C0B78;
  if (!qword_2809C0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B78);
  }

  return result;
}

unint64_t sub_2752F3520()
{
  result = qword_2809C0B88;
  if (!qword_2809C0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B88);
  }

  return result;
}

unint64_t sub_2752F3574()
{
  result = qword_2809C0B98;
  if (!qword_2809C0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B98);
  }

  return result;
}

unint64_t sub_2752F35C8()
{
  result = qword_2809C0BB0;
  if (!qword_2809C0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0BB0);
  }

  return result;
}

unint64_t sub_2752F361C()
{
  result = qword_2809C0BC0;
  if (!qword_2809C0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0BC0);
  }

  return result;
}

unint64_t sub_2752F3670()
{
  result = qword_2809C0BD8;
  if (!qword_2809C0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0BD8);
  }

  return result;
}

unint64_t sub_2752F36C4()
{
  result = qword_2809C0BE0;
  if (!qword_2809C0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0BE0);
  }

  return result;
}

unint64_t sub_2752F3718()
{
  result = qword_2809C0BF0;
  if (!qword_2809C0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0BF0);
  }

  return result;
}

unint64_t sub_2752F376C()
{
  result = qword_2809C0C00;
  if (!qword_2809C0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0C00);
  }

  return result;
}

unint64_t sub_2752F37C0()
{
  result = qword_2809C0C10;
  if (!qword_2809C0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0C10);
  }

  return result;
}

unint64_t sub_2752F3814()
{
  result = qword_2809C0C20;
  if (!qword_2809C0C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0C20);
  }

  return result;
}

uint64_t sub_2752F3868(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

void sub_2752F38E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2752F251C(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2752F3948(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_24();
  sub_2752F38E4(v2, v3, v4, v5);
  OUTLINED_FUNCTION_9();
  (*(v6 + 8))(v1);
  return v1;
}

uint64_t sub_2752F3998(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_24();
  sub_2752F251C(v2, v3, v4);
  OUTLINED_FUNCTION_9();
  (*(v5 + 8))(v1);
  return v1;
}

unint64_t sub_2752F39E8()
{
  result = qword_2809C0C58;
  if (!qword_2809C0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0C58);
  }

  return result;
}

void sub_2752F3A3C()
{
  if (!qword_2809C0C60)
  {
    v0 = sub_2753B6CD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C0C60);
    }
  }
}

uint64_t sub_2752F3A98(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2752F3A3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2752F3AF8()
{
  result = qword_2809C0C88;
  if (!qword_2809C0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0C88);
  }

  return result;
}

unint64_t sub_2752F3B4C()
{
  result = qword_2809C0C98;
  if (!qword_2809C0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0C98);
  }

  return result;
}

unint64_t sub_2752F3BA0()
{
  result = qword_2809C0CA0;
  if (!qword_2809C0CA0)
  {
    sub_2752F3C84(255, &qword_2809C0C90, sub_2752F3B4C, &type metadata for AssetRecipe.CodingError, MEMORY[0x277D64F08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CA0);
  }

  return result;
}

uint64_t sub_2752F3C30()
{
  v1 = OUTLINED_FUNCTION_32();
  v2(v1);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_27();
  v4(v3);
  return v0;
}

void sub_2752F3C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2752F3CF0()
{
  result = qword_2809C0CC0;
  if (!qword_2809C0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CC0);
  }

  return result;
}

unint64_t sub_2752F3DA8()
{
  result = qword_2809C0CC8;
  if (!qword_2809C0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CC8);
  }

  return result;
}

unint64_t sub_2752F3E00()
{
  result = qword_2809C0CD0;
  if (!qword_2809C0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CD0);
  }

  return result;
}

unint64_t sub_2752F3EE8()
{
  result = qword_2809C0CE8;
  if (!qword_2809C0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CE8);
  }

  return result;
}

unint64_t sub_2752F3F40()
{
  result = qword_2809C0CF0;
  if (!qword_2809C0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CF0);
  }

  return result;
}

unint64_t sub_2752F3F98()
{
  result = qword_2809C0CF8;
  if (!qword_2809C0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CF8);
  }

  return result;
}

unint64_t sub_2752F3FF0()
{
  result = qword_2809C0D00;
  if (!qword_2809C0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0D00);
  }

  return result;
}

unint64_t sub_2752F4090()
{
  result = qword_2809C0D10;
  if (!qword_2809C0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0D10);
  }

  return result;
}

unint64_t sub_2752F40E8()
{
  result = qword_2809C0D18;
  if (!qword_2809C0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0D18);
  }

  return result;
}

unint64_t sub_2752F4188()
{
  result = qword_2809C0D28;
  if (!qword_2809C0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0D28);
  }

  return result;
}

unint64_t sub_2752F41E0()
{
  result = qword_2809C0D30;
  if (!qword_2809C0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0D30);
  }

  return result;
}

unint64_t sub_2752F4238()
{
  result = qword_2809C0D38[0];
  if (!qword_2809C0D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C0D38);
  }

  return result;
}

uint64_t sub_2752F42A8(uint64_t a1)
{
  result = sub_2753B69B8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2752F4338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_74();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 36));
    if (v9 >= 6)
    {
      return v9 - 5;
    }

    else
    {
      return 0;
    }
  }
}

void sub_2752F43F0(uint64_t a1, char a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_74();
  if (*(v8 + 84) == a3)
  {
    OUTLINED_FUNCTION_140();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 5;
  }
}

uint64_t sub_2752F44BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_43();
  sub_2753B61F8();
  OUTLINED_FUNCTION_74();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_150();
  }

  else
  {
    type metadata accessor for AssetRecipe.DRM(0);
    OUTLINED_FUNCTION_74();
    if (*(v10 + 84) == a2)
    {
      v8 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      OUTLINED_FUNCTION_5();
      sub_2752F251C(0, v12, v13);
      v8 = v14;
      v11 = *(a3 + 24);
    }

    v7 = v3 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

uint64_t sub_2752F45AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_43();
  sub_2753B61F8();
  OUTLINED_FUNCTION_74();
  if (*(v5 + 84) != a3)
  {
    type metadata accessor for AssetRecipe.DRM(0);
    OUTLINED_FUNCTION_74();
    if (*(v6 + 84) != a3)
    {
      OUTLINED_FUNCTION_5();
      sub_2752F251C(0, v7, v8);
    }
  }

  OUTLINED_FUNCTION_140();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void sub_2752F4690(uint64_t a1)
{
  sub_2753B61F8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AssetRecipe.DRM(319);
    if (v2 <= 0x3F)
    {
      sub_2752F251C(319, &qword_2809C08F0, type metadata accessor for AssetRecipe.iTunesStoreContentInfo);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2752F4750(uint64_t a1)
{
  result = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
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

uint64_t sub_2752F47FC(uint64_t a1, int a2)
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

uint64_t sub_2752F483C(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
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

uint64_t sub_2752F48F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      return OUTLINED_FUNCTION_79(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_158();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_79(v3);
}

uint64_t sub_2752F493C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_2752F49A8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[40])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
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

uint64_t sub_2752F49E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2752F4A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24();
  sub_2753B61F8();
  OUTLINED_FUNCTION_74();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(v3 + *(a3 + 28));
    if (v11 >= 2)
    {
      return v11 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_2752F4B2C(uint64_t a1, char a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_43();
  sub_2753B61F8();
  OUTLINED_FUNCTION_74();
  if (*(v8 + 84) == a3)
  {
    OUTLINED_FUNCTION_140();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 28)) = a2 + 1;
  }
}

void sub_2752F4BCC(uint64_t a1)
{
  sub_2752F4F00(319, &qword_2809C0DF0, MEMORY[0x277D84A28]);
  if (v1 <= 0x3F)
  {
    sub_2753B61F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2752F4C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_158();
    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_4_0();
    sub_2752F251C(0, v8, v9);
    v11 = v10;
    v12 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v12, a2, v11);
  }
}

uint64_t sub_2752F4D38(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    OUTLINED_FUNCTION_4_0();
    sub_2752F251C(0, v4, v5);
    OUTLINED_FUNCTION_140();

    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  return result;
}

uint64_t sub_2752F4DC0(uint64_t a1)
{
  sub_2752F4F00(319, &qword_2809C0DF0, MEMORY[0x277D84A28]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2752F4F00(319, &qword_2809C0E08, MEMORY[0x277D837D0]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_2752F251C(319, &qword_2809C0E10, sub_2752F3A3C);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2752F251C(319, &qword_2809C08E8, MEMORY[0x277CC9260]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_2752F4F00(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2753B72A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2752F4FBC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_79(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_79(v8);
}

_BYTE *sub_2752F5040(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2752F50FCLL);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetRecipe.DRM.FairPlayStreaming.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetRecipe.DRM.FairPlayStreaming.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2752F5298);
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

uint64_t sub_2752F52E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_79(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_79(v8);
}

_BYTE *sub_2752F5364(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2752F5420);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2752F54D8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_79(-1);
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
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_79(v8);
}

_BYTE *sub_2752F555C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2752F5618);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2752F5674(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_79(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_79(v8);
}

_BYTE *sub_2752F56FC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2752F57B8);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2752F584C(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_121(a1);
}

_BYTE *sub_2752F5898(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2752F5934);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2752F5970()
{
  result = qword_2809C0E18;
  if (!qword_2809C0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E18);
  }

  return result;
}

unint64_t sub_2752F59C8()
{
  result = qword_2809C0E20;
  if (!qword_2809C0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E20);
  }

  return result;
}

unint64_t sub_2752F5A20()
{
  result = qword_2809C0E28;
  if (!qword_2809C0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E28);
  }

  return result;
}

unint64_t sub_2752F5A78()
{
  result = qword_2809C0E30;
  if (!qword_2809C0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E30);
  }

  return result;
}

unint64_t sub_2752F5AD0()
{
  result = qword_2809C0E38;
  if (!qword_2809C0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E38);
  }

  return result;
}

unint64_t sub_2752F5B28()
{
  result = qword_2809C0E40;
  if (!qword_2809C0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E40);
  }

  return result;
}

unint64_t sub_2752F5B80()
{
  result = qword_2809C0E48;
  if (!qword_2809C0E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E48);
  }

  return result;
}

unint64_t sub_2752F5BD8()
{
  result = qword_2809C0E50;
  if (!qword_2809C0E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E50);
  }

  return result;
}

unint64_t sub_2752F5C30()
{
  result = qword_2809C0E58;
  if (!qword_2809C0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E58);
  }

  return result;
}

unint64_t sub_2752F5C88()
{
  result = qword_2809C0E60;
  if (!qword_2809C0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E60);
  }

  return result;
}

unint64_t sub_2752F5CE0()
{
  result = qword_2809C0E68;
  if (!qword_2809C0E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E68);
  }

  return result;
}

unint64_t sub_2752F5D38()
{
  result = qword_2809C0E70;
  if (!qword_2809C0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E70);
  }

  return result;
}

unint64_t sub_2752F5D90()
{
  result = qword_2809C0E78;
  if (!qword_2809C0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E78);
  }

  return result;
}

unint64_t sub_2752F5DE8()
{
  result = qword_2809C0E80;
  if (!qword_2809C0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E80);
  }

  return result;
}

unint64_t sub_2752F5E40()
{
  result = qword_2809C0E88;
  if (!qword_2809C0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E88);
  }

  return result;
}

unint64_t sub_2752F5E98()
{
  result = qword_2809C0E90;
  if (!qword_2809C0E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E90);
  }

  return result;
}

unint64_t sub_2752F5EF0()
{
  result = qword_2809C0E98;
  if (!qword_2809C0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E98);
  }

  return result;
}

unint64_t sub_2752F5F48()
{
  result = qword_2809C0EA0;
  if (!qword_2809C0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EA0);
  }

  return result;
}

unint64_t sub_2752F5FA0()
{
  result = qword_2809C0EA8;
  if (!qword_2809C0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EA8);
  }

  return result;
}

unint64_t sub_2752F5FF8()
{
  result = qword_2809C0EB0;
  if (!qword_2809C0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EB0);
  }

  return result;
}

unint64_t sub_2752F6050()
{
  result = qword_2809C0EB8;
  if (!qword_2809C0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EB8);
  }

  return result;
}

unint64_t sub_2752F60A8()
{
  result = qword_2809C0EC0;
  if (!qword_2809C0EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EC0);
  }

  return result;
}

unint64_t sub_2752F6100()
{
  result = qword_2809C0EC8;
  if (!qword_2809C0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EC8);
  }

  return result;
}

unint64_t sub_2752F6158()
{
  result = qword_2809C0ED0;
  if (!qword_2809C0ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0ED0);
  }

  return result;
}

unint64_t sub_2752F61B0()
{
  result = qword_2809C0ED8;
  if (!qword_2809C0ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0ED8);
  }

  return result;
}

unint64_t sub_2752F6208()
{
  result = qword_2809C0EE0;
  if (!qword_2809C0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EE0);
  }

  return result;
}

unint64_t sub_2752F6260()
{
  result = qword_2809C0EE8;
  if (!qword_2809C0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EE8);
  }

  return result;
}

unint64_t sub_2752F62B8()
{
  result = qword_2809C0EF0;
  if (!qword_2809C0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EF0);
  }

  return result;
}

unint64_t sub_2752F6310()
{
  result = qword_2809C0EF8;
  if (!qword_2809C0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EF8);
  }

  return result;
}

unint64_t sub_2752F6368()
{
  result = qword_2809C0F00;
  if (!qword_2809C0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F00);
  }

  return result;
}

unint64_t sub_2752F63C0()
{
  result = qword_2809C0F08;
  if (!qword_2809C0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F08);
  }

  return result;
}

unint64_t sub_2752F6418()
{
  result = qword_2809C0F10;
  if (!qword_2809C0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F10);
  }

  return result;
}

unint64_t sub_2752F6470()
{
  result = qword_2809C0F18;
  if (!qword_2809C0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F18);
  }

  return result;
}

unint64_t sub_2752F64C8()
{
  result = qword_2809C0F20;
  if (!qword_2809C0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F20);
  }

  return result;
}

unint64_t sub_2752F6520()
{
  result = qword_2809C0F28;
  if (!qword_2809C0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F28);
  }

  return result;
}

unint64_t sub_2752F6578()
{
  result = qword_2809C0F30;
  if (!qword_2809C0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F30);
  }

  return result;
}

unint64_t sub_2752F65D0()
{
  result = qword_2809C0F38;
  if (!qword_2809C0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F38);
  }

  return result;
}

unint64_t sub_2752F6628()
{
  result = qword_2809C0F40;
  if (!qword_2809C0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F40);
  }

  return result;
}

unint64_t sub_2752F6680()
{
  result = qword_2809C0F48;
  if (!qword_2809C0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F48);
  }

  return result;
}

unint64_t sub_2752F66D8()
{
  result = qword_2809C0F50;
  if (!qword_2809C0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F50);
  }

  return result;
}

unint64_t sub_2752F6730()
{
  result = qword_2809C0F58;
  if (!qword_2809C0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F58);
  }

  return result;
}

unint64_t sub_2752F6788()
{
  result = qword_2809C0F60;
  if (!qword_2809C0F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F60);
  }

  return result;
}

unint64_t sub_2752F67E0()
{
  result = qword_2809C0F68;
  if (!qword_2809C0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F68);
  }

  return result;
}

unint64_t sub_2752F6838()
{
  result = qword_2809C0F70;
  if (!qword_2809C0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F70);
  }

  return result;
}

unint64_t sub_2752F6890()
{
  result = qword_2809C0F78;
  if (!qword_2809C0F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F78);
  }

  return result;
}

unint64_t sub_2752F68E8()
{
  result = qword_2809C0F80;
  if (!qword_2809C0F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F80);
  }

  return result;
}

unint64_t sub_2752F6940()
{
  result = qword_2809C0F88;
  if (!qword_2809C0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F88);
  }

  return result;
}

unint64_t sub_2752F6998()
{
  result = qword_2809C0F90;
  if (!qword_2809C0F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F90);
  }

  return result;
}

unint64_t sub_2752F69F0()
{
  result = qword_2809C0F98;
  if (!qword_2809C0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F98);
  }

  return result;
}

unint64_t sub_2752F6A48()
{
  result = qword_2809C0FA0;
  if (!qword_2809C0FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FA0);
  }

  return result;
}

unint64_t sub_2752F6AA0()
{
  result = qword_2809C0FA8;
  if (!qword_2809C0FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FA8);
  }

  return result;
}

unint64_t sub_2752F6AF8()
{
  result = qword_2809C0FB0;
  if (!qword_2809C0FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FB0);
  }

  return result;
}

unint64_t sub_2752F6B50()
{
  result = qword_2809C0FB8;
  if (!qword_2809C0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FB8);
  }

  return result;
}

unint64_t sub_2752F6BA8()
{
  result = qword_2809C0FC0;
  if (!qword_2809C0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FC0);
  }

  return result;
}

unint64_t sub_2752F6C00()
{
  result = qword_2809C0FC8;
  if (!qword_2809C0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FC8);
  }

  return result;
}

unint64_t sub_2752F6C58()
{
  result = qword_2809C0FD0;
  if (!qword_2809C0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FD0);
  }

  return result;
}

unint64_t sub_2752F6CB0()
{
  result = qword_2809C0FD8;
  if (!qword_2809C0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FD8);
  }

  return result;
}

unint64_t sub_2752F6D08()
{
  result = qword_2809C0FE0;
  if (!qword_2809C0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FE0);
  }

  return result;
}

unint64_t sub_2752F6D60()
{
  result = qword_2809C0FE8;
  if (!qword_2809C0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FE8);
  }

  return result;
}

unint64_t sub_2752F6DB8()
{
  result = qword_2809C0FF0;
  if (!qword_2809C0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FF0);
  }

  return result;
}

unint64_t sub_2752F6E10()
{
  result = qword_2809C0FF8;
  if (!qword_2809C0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FF8);
  }

  return result;
}

unint64_t sub_2752F6E68()
{
  result = qword_2809C1000;
  if (!qword_2809C1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1000);
  }

  return result;
}

unint64_t sub_2752F6EC0()
{
  result = qword_2809C1008;
  if (!qword_2809C1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1008);
  }

  return result;
}

unint64_t sub_2752F6F18()
{
  result = qword_2809C1010;
  if (!qword_2809C1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1010);
  }

  return result;
}

unint64_t sub_2752F6F70()
{
  result = qword_2809C1018;
  if (!qword_2809C1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1018);
  }

  return result;
}

unint64_t sub_2752F6FC8()
{
  result = qword_2809C1020;
  if (!qword_2809C1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1020);
  }

  return result;
}

unint64_t sub_2752F7020()
{
  result = qword_2809C1028;
  if (!qword_2809C1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1028);
  }

  return result;
}

unint64_t sub_2752F7078()
{
  result = qword_2809C1030;
  if (!qword_2809C1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1030);
  }

  return result;
}

unint64_t sub_2752F70D0()
{
  result = qword_2809C1038;
  if (!qword_2809C1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1038);
  }

  return result;
}

unint64_t sub_2752F7128()
{
  result = qword_2809C1040;
  if (!qword_2809C1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1040);
  }

  return result;
}

unint64_t sub_2752F7180()
{
  result = qword_2809C1048;
  if (!qword_2809C1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1048);
  }

  return result;
}

unint64_t sub_2752F71D8()
{
  result = qword_2809C1050;
  if (!qword_2809C1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1050);
  }

  return result;
}

unint64_t sub_2752F722C()
{
  result = qword_2809C1058;
  if (!qword_2809C1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1058);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_13()
{

  return sub_2752F25C8(v0);
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2753B75E8();
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1)
{

  return sub_2753B75B8();
}

uint64_t OUTLINED_FUNCTION_56()
{
  *(v1 - 72) = v0;

  return swift_getExtendedExistentialTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2753B7718();
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1)
{

  return MEMORY[0x2821FD170](a1, 0xD00000000000002BLL, v1 | 0x8000000000000000, 0);
}

uint64_t OUTLINED_FUNCTION_93(uint64_t a1)
{

  return sub_2753B77F8();
}

void *OUTLINED_FUNCTION_100(uint64_t a1, ...)
{

  return sub_2753B7798();
}

uint64_t OUTLINED_FUNCTION_102()
{
  *(v3 - 152) = v0;
  *(v3 - 144) = v2;
  *(v3 - 88) = v1;

  return sub_2753B75C8();
}

uint64_t OUTLINED_FUNCTION_103(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2753B75E8();
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1)
{

  return sub_2753B7808();
}

uint64_t OUTLINED_FUNCTION_117@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X8>)
{

  return sub_2752F3868(a2 + 1, a1, v4, a4, a2, a3);
}

void OUTLINED_FUNCTION_119()
{

  JUMPOUT(0x277C76A80);
}

uint64_t OUTLINED_FUNCTION_122(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

__n128 OUTLINED_FUNCTION_127()
{
  v2 = *(v1 - 192);
  result = *(v1 - 144);
  *(v1 - 128) = result;
  *(v1 - 112) = v2;
  *(v1 - 96) = v0;
  return result;
}

__n128 OUTLINED_FUNCTION_136()
{
  result = *(v0 + 16);
  *(v1 - 144) = *v0;
  *(v1 - 192) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_154()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_156()
{

  return sub_2753B77B8();
}

uint64_t OUTLINED_FUNCTION_157()
{

  return sub_2753B77B8();
}

uint64_t OUTLINED_FUNCTION_159(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2753B7718();
}

uint64_t OUTLINED_FUNCTION_160()
{

  return sub_2753B69B8();
}

uint64_t FacetCollection<>.ContentType.id.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_160();
  sub_2753B69A8();
  v1 = sub_2753B6648();

  MEMORY[0x277C76100](0x746E65746E6F632DLL, 0xEC00000065707954);
  return v1;
}

uint64_t FacetCollection<>.ContentType.context.getter@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t FacetCollection<>.ContentType.context.setter(uint64_t a1, uint64_t a2)
{
  sub_2753B69B8();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 40);

  return v6(v2, a1, v4);
}

uint64_t FacetCollection<>.ContentType.builders.getter(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v7;
  swift_getExtendedExistentialTypeMetadata();
  sub_2753B76C8();
  swift_allocObject();
  sub_2753B6FF8();
  v11 = v10;
  (*(v5 + 16))(v9, v2, a1);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v15 = type metadata accessor for FacetCollection<>.FullyQualifiedContentRegistrationElement(0, v12, v13, v14);
  v19 = v15;
  v20 = &v19;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v13;
  swift_getWitnessTable();
  v11[3] = sub_2753B68B8();
  v11[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v11);
  v18[1] = v15;
  v18[0] = swift_getWitnessTable();
  sub_2753B68A8();
  return sub_2752E6688();
}

uint64_t sub_2752F82E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *(*a2 + 16);
  return MEMORY[0x2822009F8](sub_2752F830C, 0, 0);
}

uint64_t sub_2752F8330@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  sub_2753B69B8();
  OUTLINED_FUNCTION_9();
  v8 = *(v7 + 32);

  return v8(a4, a1, v6);
}

uint64_t sub_2752F83A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2752E546C;

  return MEMORY[0x2821CC418](a1, a2, WitnessTable);
}

uint64_t sub_2752F846C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2752F7284;

  return MEMORY[0x2821CC420](a1, a2, WitnessTable);
}

uint64_t sub_2752F8538@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FacetCollection<>.ContentType.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t FacetCollection<>.contentType.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a1);
  return sub_2752F8330(v8, a3);
}

uint64_t sub_2752F863C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2752E546C;

  return sub_2752F82E0(a1, a2);
}

uint64_t sub_2752F873C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_160();

  return __swift_getEnumTagSinglePayload(a1, a2, v5);
}

uint64_t sub_2752F8798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_160();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
}

uint64_t sub_2752F8898(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752E546C;

  return FacetCollection<>.MusicKitMetadata.availability.getter(a1);
}

uint64_t sub_2752F8930(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2752F89C0;

  return FacetCollection<>.MusicKitMetadata.value.getter();
}

uint64_t sub_2752F89C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t FacetCollection<>.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v3, a1);
  return sub_2752E5F4C(v7, a3);
}

uint64_t sub_2752F8BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2753B69B8();

  return __swift_getEnumTagSinglePayload(a1, a2, v5);
}

uint64_t sub_2752F8C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2753B69B8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
}

uint64_t FacetCollection<>.RelatedContent.id.getter(uint64_t a1)
{
  sub_2753B7398();
  OUTLINED_FUNCTION_160();
  sub_2753B69A8();
  v1 = sub_2753B6648();
  v3 = v2;

  MEMORY[0x277C76100](v1, v3);

  MEMORY[0x277C76100](0xD000000000000010, 0x80000002753B8410);
  sub_2753B6A18();
  sub_2753B7468();
  return 0;
}

uint64_t FacetCollection<>.RelatedContent.context.getter@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t FacetCollection<>.RelatedContent.context.setter(uint64_t a1, uint64_t a2)
{
  sub_2753B69B8();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 40);

  return v6(v2, a1, v4);
}

uint64_t FacetCollection<>.RelatedContent.relationship.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_2753B6A18();
  OUTLINED_FUNCTION_9();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t FacetCollection<>.RelatedContent.relationship.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  sub_2753B6A18();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t FacetCollection<>.RelatedContent.builders.getter(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  v9 = v8 - v7;
  v16 = v10;
  swift_getExtendedExistentialTypeMetadata();
  sub_2753B76C8();
  swift_allocObject();
  sub_2753B6FF8();
  v12 = v11;
  (*(v5 + 16))(v9, v2, a1);
  v15 = type metadata accessor for FacetCollection<>.MusicKitRelatedContentElement(0, *(a1 + 16), *(a1 + 24), v13);
  v16 = &v15;
  swift_getWitnessTable();
  v12[3] = sub_2753B68B8();
  v12[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v12);
  swift_getWitnessTable();
  sub_2753B68A8();
  return sub_2752E6688();
}

uint64_t sub_2752F9164(uint64_t a1, void **a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = **a2;
  return MEMORY[0x2822009F8](sub_2752F9190, 0, 0);
}

uint64_t sub_2752F9190()
{
  **(v0 + 16) = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2752F9200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2753B69B8();
  OUTLINED_FUNCTION_9();
  (*(v10 + 32))(a5, a1);
  v12 = *(type metadata accessor for FacetCollection<>.RelatedContent(0, a3, a4, v11) + 36);
  sub_2753B6A18();
  OUTLINED_FUNCTION_9();
  v14 = *(v13 + 32);

  return v14(a5 + v12, a2);
}

uint64_t sub_2752F92D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2752E546C;

  return MEMORY[0x2821CC418](a1, a2, WitnessTable);
}

uint64_t sub_2752F93A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2752F7284;

  return MEMORY[0x2821CC420](a1, a2, WitnessTable);
}

uint64_t sub_2752F9470@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FacetCollection<>.RelatedContent.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t FacetCollection<>.relatedContent(as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_2753B6A18();
  OUTLINED_FUNCTION_2_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18, v5, a2);
  (*(v12 + 16))(v16, a1, v10);
  return sub_2752F9200(v20, v16, *(a2 + 16), a3, a4);
}

uint64_t sub_2752F9638(uint64_t a1)
{
  result = sub_2753B69B8();
  if (v2 <= 0x3F)
  {
    result = sub_2753B6A18();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2752F96D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_160();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2753B6A18();
    v8 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}