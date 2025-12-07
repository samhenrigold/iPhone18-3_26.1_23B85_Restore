uint64_t sub_2752F9788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_160();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2753B6A18();
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t FacetCollection<>.Traits.id.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_160();
  sub_2753B69A8();
  v1 = sub_2753B6648();

  MEMORY[0x277C76100](0x7374696172742DLL, 0xE700000000000000);
  return v1;
}

uint64_t FacetCollection<>.Traits.context.getter@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t FacetCollection<>.Traits.context.setter(uint64_t a1, uint64_t a2)
{
  sub_2753B69B8();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 40);

  return v6(v2, a1, v4);
}

uint64_t sub_2752F9A64(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2752E546C;

  return MEMORY[0x2821CC418](a1, a2, WitnessTable);
}

uint64_t sub_2752F9B30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752F7284;

  return FacetCollection<>.Traits.value.getter(a1);
}

uint64_t sub_2752F9BC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FacetCollection<>.Traits.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t FacetCollection<>.traits.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v3, a1);
  return sub_2752F8330(v7, a3);
}

_SonicKit_MusicKit::ContentTraits sub_2752F9D90@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ContentTraits.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2752F9DD0@<X0>(uint64_t *a1@<X8>)
{
  result = ContentTraits.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2752F9E44()
{
  result = qword_2809C11E8;
  if (!qword_2809C11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C11E8);
  }

  return result;
}

unint64_t sub_2752F9E9C()
{
  result = qword_2809C11F0;
  if (!qword_2809C11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C11F0);
  }

  return result;
}

unint64_t sub_2752F9EF4()
{
  result = qword_2809C11F8;
  if (!qword_2809C11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C11F8);
  }

  return result;
}

unint64_t sub_2752F9F4C()
{
  result = qword_2809C1200[0];
  if (!qword_2809C1200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C1200);
  }

  return result;
}

uint64_t sub_2752F9FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_160();

  return __swift_getEnumTagSinglePayload(a1, a2, v5);
}

uint64_t sub_2752FA010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_160();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
}

uint64_t getEnumTagSinglePayload for ContentTraits(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContentTraits(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t SongTransitionInfo.flexAnalysis.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SongTransitionInfo(0) + 20);
  sub_2753B67C8();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SongTransitionInfo(uint64_t a1)
{
  result = qword_2809C1318;
  if (!qword_2809C1318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SongTransitionInfo.flexAnalysis.setter()
{
  v2 = *(OUTLINED_FUNCTION_13_0() + 20);
  sub_2753B67C8();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t SongTransitionInfo.audioAnalysis.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SongTransitionInfo(0) + 24);
  sub_2753B6808();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SongTransitionInfo.audioAnalysis.setter()
{
  v2 = *(OUTLINED_FUNCTION_13_0() + 24);
  sub_2753B6808();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t SongTransitionInfo.genres.getter()
{
  type metadata accessor for SongTransitionInfo(0);
}

uint64_t SongTransitionInfo.genres.setter()
{
  v2 = *(OUTLINED_FUNCTION_13_0() + 28);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SongTransitionInfo.spatialTimingInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SongTransitionInfo(0) + 32);

  return sub_2752FA478(v3, a1);
}

uint64_t sub_2752FA478(uint64_t a1, uint64_t a2)
{
  sub_2752FAE3C(0, &qword_2809C1288, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SongTransitionInfo.spatialTimingInformation.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_13_0() + 32);

  return sub_2752FA548(v0, v2);
}

uint64_t sub_2752FA548(uint64_t a1, uint64_t a2)
{
  sub_2752FAE3C(0, &qword_2809C1288, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SongTransitionInfo.supportsSmartTransitions.setter(char a1)
{
  result = type metadata accessor for SongTransitionInfo(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_2752FA6A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E4178656C66 && a2 == 0xEC00000073697379;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616E416F69647561 && a2 == 0xED0000736973796CLL;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000002753B8430 == a2;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000018 && 0x80000002753B8450 == a2)
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

uint64_t sub_2752FA8A8(unsigned __int8 a1)
{
  sub_2753B7798();
  MEMORY[0x277C76A80](a1);
  return sub_2753B77D8();
}

unint64_t sub_2752FA8F0(char a1)
{
  result = 0x6E6F697461727564;
  switch(a1)
  {
    case 1:
      result = 0x6C616E4178656C66;
      break;
    case 2:
      result = 0x616E416F69647561;
      break;
    case 3:
      result = 0x7365726E6567;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2752FA9D4()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

uint64_t sub_2752FAA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752FA6A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752FAA48(uint64_t a1)
{
  v2 = sub_2752FADE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752FAA84(uint64_t a1)
{
  v2 = sub_2752FADE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SongTransitionInfo.encode(to:)(void *a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_8_0();
  sub_2752FBAF0(0, v5, v6, &type metadata for SongTransitionInfo.CodingKeys, MEMORY[0x277D84538]);
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  v10 = v9;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2752FADE8();
  sub_2753B7808();
  v30 = 0;
  sub_2753B7678();
  if (!v2)
  {
    v14 = type metadata accessor for SongTransitionInfo(0);
    v29 = 1;
    sub_2753B67C8();
    OUTLINED_FUNCTION_10_0();
    sub_2752FB640(v15, v16, MEMORY[0x277D2A990]);
    OUTLINED_FUNCTION_4_1();
    sub_2753B7698();
    v28 = 2;
    sub_2753B6808();
    OUTLINED_FUNCTION_9_0();
    sub_2752FB640(v17, v18, MEMORY[0x277D2AAC0]);
    OUTLINED_FUNCTION_4_1();
    sub_2753B7698();
    v24[1] = *(v3 + *(v14 + 28));
    v27 = 3;
    OUTLINED_FUNCTION_1_1();
    sub_2752FAE3C(0, v19, v20, MEMORY[0x277D83940]);
    sub_2752FB590(&qword_2809C12B8, &qword_2809C12C0, MEMORY[0x277CD8328], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_4_1();
    sub_2753B7698();
    v26 = 4;
    sub_2753B6818();
    OUTLINED_FUNCTION_7_0();
    sub_2752FB640(v21, v22, MEMORY[0x277D2AC98]);
    OUTLINED_FUNCTION_4_1();
    sub_2753B7638();
    v25 = 5;
    sub_2753B7668();
  }

  return (*(v10 + 8))(v13, v8);
}

unint64_t sub_2752FADE8()
{
  result = qword_2809C1298;
  if (!qword_2809C1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1298);
  }

  return result;
}

void sub_2752FAE3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t SongTransitionInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  OUTLINED_FUNCTION_2_2();
  sub_2752FAE3C(0, v3, v4, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v5);
  v54 = &v53 - v6;
  sub_2753B6808();
  OUTLINED_FUNCTION_2_0();
  v58 = v8;
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10();
  v11 = v10 - v9;
  sub_2753B67C8();
  OUTLINED_FUNCTION_2_0();
  v60 = v13;
  v61 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_8_0();
  sub_2752FBAF0(0, v17, v18, &type metadata for SongTransitionInfo.CodingKeys, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  v55 = v20;
  v56 = v19;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  type metadata accessor for SongTransitionInfo(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10();
  v27 = (v26 - v25);
  v63 = v28;
  v29 = v28[8];
  v30 = sub_2753B6818();
  v64 = v29;
  v31 = v27;
  __swift_storeEnumTagSinglePayload(&v27[v29], 1, 1, v30);
  v32 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_2752FADE8();
  v57 = v23;
  v33 = v62;
  sub_2753B77F8();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1(v65);
    return sub_2752FB504(&v27[v64]);
  }

  else
  {
    v62 = v30;
    v34 = v11;
    v36 = v55;
    v35 = v56;
    v72 = 0;
    sub_2753B7598();
    *v31 = v37;
    v71 = 1;
    OUTLINED_FUNCTION_10_0();
    sub_2752FB640(v38, v39, MEMORY[0x277D2A9A0]);
    v40 = v16;
    v41 = v61;
    OUTLINED_FUNCTION_11_0();
    v42 = v63;
    (*(v60 + 32))(&v31[v63[5]], v40, v41);
    v70 = 2;
    OUTLINED_FUNCTION_9_0();
    sub_2752FB640(v43, v44, MEMORY[0x277D2AAD0]);
    v45 = v59;
    OUTLINED_FUNCTION_11_0();
    (*(v58 + 32))(&v31[v42[6]], v34, v45);
    OUTLINED_FUNCTION_1_1();
    sub_2752FAE3C(0, v46, v47, MEMORY[0x277D83940]);
    v69 = 3;
    sub_2752FB590(&qword_2809C12E8, &qword_2809C12F0, MEMORY[0x277CD8340], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_11_0();
    *&v31[v42[7]] = v66;
    v68 = 4;
    OUTLINED_FUNCTION_7_0();
    sub_2752FB640(v48, v49, MEMORY[0x277D2ACA8]);
    v50 = v54;
    sub_2753B7558();
    sub_2752FA548(v50, &v31[v64]);
    v67 = 5;
    v51 = sub_2753B7588();
    (*(v36 + 8))(v57, v35);
    v31[v42[9]] = v51 & 1;
    sub_2752FB688(v31, v53);
    __swift_destroy_boxed_opaque_existential_1(v65);
    return sub_2752FB6EC(v31);
  }
}

uint64_t sub_2752FB504(uint64_t a1)
{
  sub_2752FAE3C(0, &qword_2809C1288, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2752FB590(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_1_1();
    sub_2752FAE3C(255, v8, v9, MEMORY[0x277D83940]);
    sub_2752FB640(a2, MEMORY[0x277CD8320], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2752FB640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2752FB688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongTransitionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752FB6EC(uint64_t a1)
{
  v2 = type metadata accessor for SongTransitionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FacetCollection<>.TransitionInfo.id.getter(uint64_t a1)
{
  sub_2752FBAF0(0, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
  v22 = v1;
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  v6 = (&v22 - v5);
  sub_2752FBAF0(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  v10 = v9;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  OUTLINED_FUNCTION_160();
  sub_2753B69A8();
  v14 = sub_2753B6648();
  v16 = v15;

  v27 = v14;
  v28 = v16;
  sub_2753B6988();
  sub_2753B6A58();
  (*(v10 + 8))(v13, v8);
  v17 = v22;
  if ((*(v3 + 88))(v6, v22) == *MEMORY[0x277D65178])
  {
    (*(v3 + 96))(v6, v17);
    sub_27535A340(*v6, &v23);

    v18 = v25 | (v26 << 16);
    if ((~v18 & 0xFE00FE) != 0)
    {
      v20 = v23;
      v19 = v24;
      if ((v18 & 0xE00000) != 0)
      {
        OUTLINED_FUNCTION_12_0();
      }

      else
      {
        v23 = 45;
        v24 = 0xE100000000000000;

        MEMORY[0x277C76100](v20, v19);
        OUTLINED_FUNCTION_12_0();

        MEMORY[0x277C76100](v23, v24);
      }
    }
  }

  else
  {
    (*(v3 + 8))(v6, v17);
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_2753B7398();

  v23 = v27;
  v24 = v28;
  MEMORY[0x277C76100](0x7469736E6172742DLL, 0xEF6F666E496E6F69);
  return v23;
}

unint64_t sub_2752FBA9C()
{
  result = qword_2809C1308;
  if (!qword_2809C1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1308);
  }

  return result;
}

void sub_2752FBAF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2752FBB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if ((~a7 & 0xFE00FE) != 0)
  {
    sub_2752FBB6C(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_2752FBB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = (a7 >> 21) & 7;
  if (v8 <= 5)
  {
    if (((1 << v8) & 0x1A) == 0)
    {
    }
  }
}

uint64_t FacetCollection<>.TransitionInfo.context.getter@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t FacetCollection<>.TransitionInfo.context.setter(uint64_t a1, uint64_t a2)
{
  sub_2753B69B8();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 40);

  return v6(v2, a1, v4);
}

uint64_t FacetCollection<>.TransitionInfo.builders.getter(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  v9 = v8 - v7;
  v39 = v10;
  swift_getExtendedExistentialTypeMetadata();
  sub_2753B76C8();
  swift_allocObject();
  sub_2753B6FF8();
  v12 = v11;
  v13 = *(v5 + 16);
  v13(v9, v2, a1);
  v14 = *(a1 + 24);
  v30 = *(a1 + 16);
  v16 = type metadata accessor for FacetCollection<>.MusicKitTransitionInfoOffline(0, v30, v14, v15);
  v38 = v16;
  v39 = &v38;
  swift_getWitnessTable();
  v17 = sub_2753B68B8();
  v12[3] = v17;
  WitnessTable = swift_getWitnessTable();
  v12[4] = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(v12);
  v37 = v16;
  v36 = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0(v36, &v39, &unk_2753C15F8, v19, v20, v21, &v37, v22, &v36);
  v13(v9, v31, a1);
  v24 = type metadata accessor for FacetCollection<>.MusicKitTransitionInfoElement(0, v30, v14, v23);
  v34 = v24;
  v35 = &v34;
  v12[8] = v17;
  v12[9] = WitnessTable;
  __swift_allocate_boxed_opaque_existential_1(v12 + 5);
  v33 = v24;
  v32 = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0(v32, &v35, &unk_2753C1600, v25, v26, v27, &v33, v28, &v32);
  return sub_2752E6688();
}

uint64_t sub_2752FBF58(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2752FC9C8, 0, 0);
}

uint64_t sub_2752FBF7C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2752FBFA0, 0, 0);
}

uint64_t sub_2752FBFA0()
{
  sub_2752FB688(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2752FC00C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2752E546C;

  return MEMORY[0x2821CC418](a1, a2, WitnessTable);
}

uint64_t sub_2752FC0D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2752F7284;

  return MEMORY[0x2821CC420](a1, a2, WitnessTable);
}

uint64_t sub_2752FC1A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FacetCollection<>.TransitionInfo.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t FacetCollection<>.transitionInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  v9 = v8 - v7;
  (*(v10 + 16))(v8 - v7, v3, a1);
  return sub_2752F8330(v9, a3);
}

uint64_t sub_2752FC2DC(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_17_0();
  sub_2753B67C8();
  OUTLINED_FUNCTION_74();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_10:

    return __swift_getEnumTagSinglePayload(v4 + v9, v3, v8);
  }

  sub_2753B6808();
  OUTLINED_FUNCTION_74();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_10;
  }

  if (v3 != 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_2_2();
    sub_2752FAE3C(0, v14, v15, MEMORY[0x277D83D88]);
    v8 = v16;
    v9 = a3[8];
    goto LABEL_10;
  }

  v12 = *(v4 + a3[7]);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

void sub_2752FC418(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_17_0();
  sub_2753B67C8();
  OUTLINED_FUNCTION_74();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_2753B6808();
    OUTLINED_FUNCTION_74();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v5 + a4[7]) = (v4 - 1);
        return;
      }

      OUTLINED_FUNCTION_2_2();
      sub_2752FAE3C(0, v14, v15, MEMORY[0x277D83D88]);
      v10 = v16;
      v11 = a4[8];
    }
  }

  __swift_storeEnumTagSinglePayload(v5 + v11, v4, v4, v10);
}

void sub_2752FC53C(uint64_t a1)
{
  sub_2753B67C8();
  if (v1 <= 0x3F)
  {
    sub_2753B6808();
    if (v2 <= 0x3F)
    {
      sub_2752FAE3C(319, &qword_2809C12B0, MEMORY[0x277CD8320], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2752FAE3C(319, &qword_2809C1288, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2752FC67C()
{
  OUTLINED_FUNCTION_17_0();
  v2 = OUTLINED_FUNCTION_160();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2752FC6D4()
{
  OUTLINED_FUNCTION_17_0();
  v2 = OUTLINED_FUNCTION_160();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t getEnumTagSinglePayload for SongTransitionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SongTransitionInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2752FC888);
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

unint64_t sub_2752FC8C4()
{
  result = qword_2809C13A8;
  if (!qword_2809C13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C13A8);
  }

  return result;
}

unint64_t sub_2752FC91C()
{
  result = qword_2809C13B0;
  if (!qword_2809C13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C13B0);
  }

  return result;
}

unint64_t sub_2752FC974()
{
  result = qword_2809C13B8;
  if (!qword_2809C13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C13B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_2753B75B8();
}

void OUTLINED_FUNCTION_12_0()
{

  sub_2752FBB58(v2, v1, v3, v4, v5, v6, v0);
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return type metadata accessor for SongTransitionInfo(0);
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2753B68A8();
}

void sub_2752FCB30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*v2 & a1) != 0)
  {
    *v2 &= ~a1;
  }

  OUTLINED_FUNCTION_15_0(a2);
}

uint64_t sub_2752FCBAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

_SonicKit_MusicKit::AttributesMask sub_2752FCCB4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = AttributesMask.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2752FCCF4@<X0>(uint64_t *a1@<X8>)
{
  result = AttributesMask.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t MusicContent.Sources.MusicKit.qualifier(for:)()
{
  OUTLINED_FUNCTION_14_0();
  v0[2] = v1;
  v0[3] = v2;
  sub_2753B6288();
  v0[4] = sub_2753B6278();
  OUTLINED_FUNCTION_4_2();
  sub_2752FDA78(v3, 255, v4, MEMORY[0x277D64EF8]);
  v6 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_2752FCDEC, v6, v5);
}

uint64_t sub_2752FCDEC()
{
  v2 = *(v1 + 24);

  if (*(v2 + 16))
  {
    switch(*(*(v1 + 24) + 64) >> 5)
    {
      case 1:
      case 3:
      case 4:
        goto LABEL_3;
      default:
        v7 = *(v1 + 16);
        OUTLINED_FUNCTION_0_2();
        sub_2752FD85C(0, &qword_2809C13C0, v8);
        *(v7 + 24) = v9;
        v10 = OUTLINED_FUNCTION_1_2(&qword_2809C13C8);
        OUTLINED_FUNCTION_16_1(v10);
        sub_2752FBA9C();
        sub_2753B6BE8();
        break;
    }
  }

  else
  {
LABEL_3:
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_5_1();
    sub_2752FD85C(0, &qword_2809C13D0, v4);
    *(v3 + 24) = v5;
    v6 = sub_2752FD1F8(&qword_2809C13D8, &qword_2809C13D0, v0, MEMORY[0x277D65128]);
    OUTLINED_FUNCTION_16_1(v6);
    sub_2752FBA9C();
    sub_2753B6A28();
  }

  OUTLINED_FUNCTION_19_0();

  return v11();
}

uint64_t sub_2752FD030(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  sub_2752FE570();
  result = swift_allocObject();
  *(result + 16) = xmmword_2753BE420;
  if (v4 > 0x1F)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = MEMORY[0x277D84F90];
    *(result + 32) = v2;
    *(result + 40) = v1;
    *(result + 48) = v3;
    *(result + 56) = v7;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 79) = 0;

    return v6;
  }

  return result;
}

uint64_t sub_2752FD0BC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *(a1 + 32);
  sub_2752FE570();
  result = swift_allocObject();
  *(result + 16) = xmmword_2753BE420;
  if ((v5 & 0xE0) == 0x40)
  {
    v7 = result;
    *(result + 32) = v2;
    *(result + 40) = v1;
    *(result + 48) = v4;
    *(result + 56) = v3;
    *(result + 64) = v5 & 0x1F;
    *(result + 72) = 0;
    *(result + 82) = 64;
    *(result + 80) = 2561;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2752FD16C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 32);
  sub_2752FE570();
  result = swift_allocObject();
  *(result + 16) = xmmword_2753BE420;
  if ((v3 & 0xE0) == 0xA0)
  {
    v5 = result;
    *(result + 32) = v2;
    *(result + 40) = v1;
    *(result + 48) = MEMORY[0x277D84F90];
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 82) = -96;
    *(result + 80) = 0;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2752FD1F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2752FD85C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MusicContent.Sources.MusicKit.requalifier(for:)()
{
  OUTLINED_FUNCTION_14_0();
  *(v0 + 16) = v1;
  sub_2753B6288();
  *(v0 + 24) = sub_2753B6278();
  OUTLINED_FUNCTION_4_2();
  sub_2752FDA78(v2, 255, v3, MEMORY[0x277D64EF8]);
  v5 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_2752FD2F4, v5, v4);
}

uint64_t sub_2752FD2F4()
{
  v2 = *(v1 + 16);

  OUTLINED_FUNCTION_5_1();
  sub_2752FD85C(0, &qword_2809C13D0, v3);
  *(v2 + 24) = v4;
  v5 = sub_2752FD1F8(&qword_2809C13E0, &qword_2809C13D0, v0, MEMORY[0x277D65130]);
  OUTLINED_FUNCTION_16_1(v5);
  sub_2752FBA9C();
  sub_2753B6A28();
  OUTLINED_FUNCTION_19_0();

  return v6();
}

uint64_t sub_2752FD3DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContent.Sources.MusicKit.qualifier(for:)();
}

uint64_t sub_2752FD47C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FD514;

  return MusicContent.Sources.MusicKit.requalifier(for:)();
}

uint64_t sub_2752FD514()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t FacetCollection<>.extractAdamIDForLogging()(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  sub_2752FD85C(0, &qword_2809C1300, MEMORY[0x277D65180]);
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = (&v20 - v7);
  sub_2752FD85C(0, &qword_2809C1310, MEMORY[0x277D65188]);
  v10 = v9;
  OUTLINED_FUNCTION_2_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_2753B6988();
  sub_2753B6A58();
  (*(v12 + 8))(v15, v10);
  if ((*(v5 + 88))(v8, v3) == *MEMORY[0x277D65178])
  {
    (*(v5 + 96))(v8, v3);
    sub_27535A340(*v8, &v21);

    v16 = v22 | (v23 << 16);
    if ((~v16 & 0xFE00FE) != 0)
    {
      v17 = v21;
      v18 = (v16 >> 21) & 7;
      if (v18 != 5 && v18)
      {
        OUTLINED_FUNCTION_11_1();
      }

      else
      {

        OUTLINED_FUNCTION_11_1();
        return v17;
      }
    }
  }

  else
  {
    (*(v5 + 8))(v8, v3);
  }

  return v1;
}

void sub_2752FD85C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2752FBA9C();
    v7 = a3(a1, &type metadata for MusicContent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2752FD8C4()
{
  result = qword_2809C13E8;
  if (!qword_2809C13E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C13E8);
  }

  return result;
}

unint64_t sub_2752FD91C()
{
  result = qword_2809C13F0;
  if (!qword_2809C13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C13F0);
  }

  return result;
}

unint64_t sub_2752FD974()
{
  result = qword_2809C13F8;
  if (!qword_2809C13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C13F8);
  }

  return result;
}

unint64_t sub_2752FD9CC()
{
  result = qword_2809C1400;
  if (!qword_2809C1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1400);
  }

  return result;
}

uint64_t sub_2752FDA20(uint64_t a1, uint64_t a2)
{
  result = sub_2752FDA78(&qword_2809C1408, a2, type metadata accessor for MusicContent.Sources.MusicKit, &protocol conformance descriptor for MusicContent.Sources.MusicKit);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2752FDA78(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2752FDAE4(uint64_t a1, uint64_t a2)
{
  result = sub_2752FDA78(&qword_2809C1410, a2, type metadata accessor for MusicContent.Sources.MusicKit, &protocol conformance descriptor for MusicContent.Sources.MusicKit);
  *(a1 + 8) = result;
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

uint64_t sub_2752FDB54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 64))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_2752FDBA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t dispatch thunk of MusicKitStorageOperations.hasMediaAPIAttributes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_1(a1, a2, a3);
  OUTLINED_FUNCTION_13_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_10_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_3(v4);

  return v7(v6);
}

uint64_t dispatch thunk of MusicKitStorageOperations.hasMediaAPIAttributes(containing:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9_1();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10_1(v4);
  *v5 = v6;
  v5[1] = sub_2752FDE24;
  OUTLINED_FUNCTION_7_1();

  return v7();
}

uint64_t sub_2752FDE24()
{
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  OUTLINED_FUNCTION_18_0();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of MusicKitStorageOperations.mediaAPIAttributes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_1(a1, a2, a3);
  OUTLINED_FUNCTION_13_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_10_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_3(v4);

  return v7(v6);
}

uint64_t sub_2752FE00C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_0();
  v5 = *v2;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1, a2);
}

uint64_t dispatch thunk of MusicKitStorageOperations.storeMediaAPIAttributes(_:attributesMask:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_9_1();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_10_1(v13);
  *v14 = v15;
  v14[1] = sub_2752FE5C0;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MusicKitStorageOperations.hasMediaAPITransitionInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_1(a1, a2, a3);
  OUTLINED_FUNCTION_13_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_10_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_3(v4);

  return v7(v6);
}

uint64_t dispatch thunk of MusicKitStorageOperations.mediaAPITransitionInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9_1();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10_1(v4);
  *v5 = v6;
  v5[1] = sub_2752FD514;
  OUTLINED_FUNCTION_7_1();

  return v7();
}

uint64_t dispatch thunk of MusicKitStorageOperations.storeMediaAPITransitionInfo(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9_1();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10_1(v4);
  *v5 = v6;
  v5[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_7_1();

  return v7();
}

void sub_2752FE570()
{
  if (!qword_2809C1418)
  {
    v0 = sub_2753B76C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C1418);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_2(unint64_t *a1)
{
  v4 = MEMORY[0x277D651F0];

  return sub_2752FD1F8(a1, v1, v2, v4);
}

void OUTLINED_FUNCTION_11_1()
{

  sub_2752FBB58(v2, v0, v4, v3, v6, v5, v1);
}

uint64_t *OUTLINED_FUNCTION_16_1(uint64_t a1)
{
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v1);
}

uint64_t FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  type metadata accessor for MediaAPIResourceRequest.Option(255, a1, a2, a2);
  sub_2753B70B8();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_223();
  sub_2753B7038();
  sub_275314624();
  v4 = sub_2753B6C98();
  v5 = OUTLINED_FUNCTION_96_0();
  result = v6(v5);
  *a3 = v4;
  return result;
}

uint64_t FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v8 = v7;
  v6[49] = v9;
  v6[50] = v10;
  v6[47] = v11;
  v6[48] = v7;
  v6[46] = v12;
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v13, v14, v15, MEMORY[0x277D64F00]);
  v6[51] = v16;
  OUTLINED_FUNCTION_75(v16);
  v6[52] = OUTLINED_FUNCTION_138_0();
  v6[53] = *(v8 + 16);
  v6[54] = OUTLINED_FUNCTION_138_0();
  v17 = sub_2753B6AC8();
  v6[55] = v17;
  OUTLINED_FUNCTION_17_1(v17);
  v6[56] = v18;
  v6[57] = OUTLINED_FUNCTION_138_0();
  sub_275316CAC(0, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
  v6[58] = v19;
  OUTLINED_FUNCTION_17_1(v19);
  v6[59] = v20;
  v6[60] = OUTLINED_FUNCTION_138_0();
  sub_275316CAC(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
  v6[61] = v21;
  OUTLINED_FUNCTION_17_1(v21);
  v6[62] = v22;
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[65] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_75(AssociatedTypeWitness);
  v6[66] = OUTLINED_FUNCTION_138_0();
  v6[67] = *(v8 + 24);
  OUTLINED_FUNCTION_99_0();
  v24 = sub_2753B69B8();
  v6[68] = v24;
  OUTLINED_FUNCTION_17_1(v24);
  v6[69] = v25;
  v6[70] = OUTLINED_FUNCTION_138_0();
  v6[71] = *v5;
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_2752FEB1C()
{
  v152 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 472);
  v141 = *(v0 + 464);
  sub_2753B6938();
  v3 = OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189(v3);
  OUTLINED_FUNCTION_70_0();
  sub_2753B6988();
  OUTLINED_FUNCTION_156_0();
  sub_2753B6A58();
  v4 = (*(v2 + 88))(v1, v141);
  if (v4 == *MEMORY[0x277D65178])
  {
    v5 = *(v0 + 480);
    v6 = OUTLINED_FUNCTION_126_0();
    v7(v6);
    v8 = *v5;
    if (*(*v5 + 16) == 1 && (*(v8 + 82) >> 5) >= 5u)
    {
      v46 = *(v8 + 80) | (*(v8 + 82) << 16);
      v48 = *(v0 + 448);
      v47 = *(v0 + 456);
      v49 = *(v0 + 440);
      v50 = *(v8 + 40);
      v51 = *(v8 + 48);
      v136 = *(v8 + 32);
      v137 = *(v8 + 56);
      v139 = *(v8 + 64);

      sub_2753B6978();
      *(v0 + 136) = *(v0 + 168);
      *(v0 + 149) = *(v0 + 181);
      sub_275314888(v0 + 136);
      v52 = *MEMORY[0x277D65198];
      sub_2753B6AB8();
      OUTLINED_FUNCTION_8_2();
      (*(v53 + 104))(v47, v52);
      (*(v48 + 104))(v47, *MEMORY[0x277D651A0], v49);
      v54 = sub_2753B6AA8();
      v55 = *(v0 + 488);
      if ((v54 & 1) == 0)
      {
        v69 = *(v0 + 496);
        v70 = *(v0 + 448);
        v125 = *(v0 + 456);
        v130 = *(v0 + 512);
        v71 = *(v0 + 440);
        v134 = *(v0 + 384);
        v72 = *(v0 + 368);

        OUTLINED_FUNCTION_188(v73, v74, v75, v76, v77, v78, v79, v80, v120, v121, v122, v125, v130, v134, v136, v137, v139, *(&v139 + 1));
        (*(v70 + 8))(v126, v71);
        (*(v69 + 8))(v131, v55);
        *v72 = 0xD000000000000013;
        v72[1] = 0x80000002753B85D0;
        OUTLINED_FUNCTION_3_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_65_0();
        sub_2753B6C18();
        OUTLINED_FUNCTION_8_2();
        v81 = OUTLINED_FUNCTION_96_0();
LABEL_28:
        v83(v81, v82);
        v94 = OUTLINED_FUNCTION_98_0();
        v95(v94);

        OUTLINED_FUNCTION_35_0();
        goto LABEL_29;
      }

      sub_2753B6A88();
      v56 = *(v0 + 296);
      v57 = *(v0 + 304);
      *&__src = v136;
      *(&__src + 1) = v50;
      *&v149 = v51;
      *(&v149 + 1) = v137;
      v150 = v139;
      BYTE2(v151[0]) = BYTE2(v46);
      LOWORD(v151[0]) = v46;

      sub_275319620(v56, v57, &__src, v0 + 16);
      v128 = *(v0 + 24);
      v132 = *(v0 + 16);
      v58 = *(v0 + 48);
      v144 = *(v0 + 32);
      v145 = v58;
      *v146 = *(v0 + 64);
      *&v146[15] = *(v0 + 79);
      if (v128)
      {

        OUTLINED_FUNCTION_188(v59, v60, v61, v62, v63, v64, v65, v66, v120, v121, v122, v124, v128, v132, v136, v137, v139, *(&v139 + 1));
        OUTLINED_FUNCTION_115();
        sub_2753104C4(v67);
        v96 = *(v0 + 536);
        v97 = *(v0 + 424);
        v98 = v149;
        *(v0 + 88) = __src;
        *(v0 + 104) = v98;
        *(v0 + 120) = v150;
        type metadata accessor for MediaAPIResourceRequest.Option(255, v97, v96, v99);
        OUTLINED_FUNCTION_99_0();
        sub_2753B76C8();
        swift_allocObject();
        v100 = sub_2753B6FF8();
        OUTLINED_FUNCTION_137_0(v100, v101);
        v147 = sub_2752E6688();
        sub_2753B69A8();
        v102 = *(v0 + 320);
        *(v0 + 328) = *(v0 + 312);
        *(v0 + 336) = v102;
        OUTLINED_FUNCTION_99_0();
        sub_2753B70B8();
        sub_275314624();
        sub_2753B6D08();

        v103 = *(v0 + 352);
        if (v103)
        {
          *(v0 + 360) = v103;
          swift_getWitnessTable();
          sub_2753B7088();
        }

        v104 = *(v0 + 536);
        v105 = *(v0 + 496);
        v138 = *(v0 + 488);
        v140 = *(v0 + 512);
        v106 = *(v0 + 448);
        v127 = *(v0 + 456);
        v107 = *(v0 + 432);
        v123 = *(v0 + 440);
        v108 = *(v0 + 424);
        v109 = *(v0 + 368);
        sub_275314944(0);
        v111 = (v109 + *(v110 + 48));
        v112 = *MEMORY[0x277D650C8];
        sub_2753B6898();
        OUTLINED_FUNCTION_8_2();
        (*(v113 + 104))(v109, v112);
        v114 = *MEMORY[0x277D65140];
        sub_2753B6A38();
        OUTLINED_FUNCTION_8_2();
        (*(v115 + 104))(v109, v114);
        *&__src = v133;
        *(&__src + 1) = v129;
        v149 = v144;
        v150 = v145;
        v151[0] = *v146;
        *(v151 + 15) = *&v146[15];
        sub_2753B6998();
        v117 = type metadata accessor for MediaAPIResourceRequest(0, v108, v104, v116);
        v111[3] = v117;
        v111[4] = OUTLINED_FUNCTION_22_0(v117, v117);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v111);
        sub_275319DD0(&__src, (v0 + 88), v107, v108, v104, boxed_opaque_existential_1);
        (*(v106 + 8))(v127, v123);
        (*(v105 + 8))(v140, v138);
        v92 = *MEMORY[0x277D65218];
        OUTLINED_FUNCTION_3_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_65_0();
        sub_2753B6C18();
        OUTLINED_FUNCTION_8_2();
        v83 = *(v119 + 104);
        v81 = v109;
        goto LABEL_27;
      }

LABEL_36:
      __break(1u);
      JUMPOUT(0x2752FF984);
    }

    OUTLINED_FUNCTION_210();
    while (2)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_125_0();
        v11 = *(v10 - 24);
        v12 = *(v10 - 16);
        v14 = *(v10 - 8);
        v13 = *v10;
        switch(v15)
        {
          case 0:
            v16 = 0;
            v17 = 0;
            v14 = *(v10 - 8);
            goto LABEL_25;
          case 1:
            v16 = *v10;
            v17 = 32;
            goto LABEL_25;
          case 2:
            v17 = *(v10 + 8) | 0x40;

            v16 = v13;
            goto LABEL_25;
          case 3:
            v16 = *v10;
            v17 = 96;
            goto LABEL_25;
          case 4:
            v16 = *v10;
            v17 = 0x80;
LABEL_25:

            *&__src = v11;
            *(&__src + 1) = v12;
            *&v149 = v14;
            *(&v149 + 1) = v16;
            LOBYTE(v150) = v17;
            sub_27535DCC4(&v144);

            OUTLINED_FUNCTION_83_0();
            sub_2753147B0(v84, v85, v86, v16, v17);
            v87 = v144;
            if (v144 != 6)
            {
              v88 = *(v0 + 368);

              sub_2753B6A88();
              v89 = OUTLINED_FUNCTION_69_0();
              v90(v89);
              v91 = *(v0 + 288);
              *v88 = *(v0 + 280);
              *(v88 + 8) = v91;
              *(v88 + 16) = v87;
              *(v88 + 24) = v8;
              v92 = *MEMORY[0x277D65210];
              OUTLINED_FUNCTION_3_2();
              swift_getWitnessTable();
              OUTLINED_FUNCTION_65_0();
              sub_2753B6C18();
              OUTLINED_FUNCTION_8_2();
              v83 = *(v93 + 104);
              v81 = v88;
LABEL_27:
              v82 = v92;
              goto LABEL_28;
            }

            __break(1u);
            break;
          default:
            continue;
        }

        goto LABEL_36;
      }

      break;
    }

    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v0 + 85) = 5;
    sub_2753B6298();
    OUTLINED_FUNCTION_163();
    v38 = sub_2753B62C8();
    *(v0 + 344) = v8;
    OUTLINED_FUNCTION_42_0(v38, &qword_2809C1450, &type metadata for MusicContent.QualifiedIdentifier);
    sub_27531480C();
    sub_2753B62B8();

    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    sub_275316CAC(0, v39, v40, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_146_0();
    sub_2753B62E8();
    swift_willThrow();
    v41 = OUTLINED_FUNCTION_97_0();
    v42(v41);
LABEL_13:
    v43 = OUTLINED_FUNCTION_105_0();
    v44(v43);

    OUTLINED_FUNCTION_19_0();
LABEL_29:

    return v45();
  }

  if (v4 == *MEMORY[0x277D65170])
  {
    v18 = *(v0 + 504);
    v142 = *(v0 + 512);
    v19 = *(v0 + 488);
    v20 = *(v0 + 496);
    (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    *(v0 + 84) = 19;
    sub_2753B6298();
    OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_171(v21 + 85);
    sub_2753B6988();
    sub_2753B6A88();
    v22 = *(v20 + 8);
    v22(v18, v19);
    v23 = *(v0 + 256);
    *(v0 + 264) = *(v0 + 248);
    *(v0 + 272) = v23;
    sub_2753146CC();
    OUTLINED_FUNCTION_239(v0 + 264);

    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    sub_275316CAC(0, v24, v25, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_79_0();
    sub_2753B62E8();
    swift_willThrow();
    v22(v142, v19);
    goto LABEL_13;
  }

  if (v4 == *MEMORY[0x277D65168])
  {
    v26 = *(v0 + 560);
    v27 = *(v0 + 504);
    v143 = *(v0 + 512);
    v28 = *(v0 + 496);
    v29 = *(v0 + 480);
    v30 = OUTLINED_FUNCTION_126_0();
    v31(v30);
    v32 = v29[1];
    v135 = *v29;

    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    *(v0 + 83) = 6;
    sub_2753B6298();
    OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_171(v33 + 57);
    sub_2753B6988();
    OUTLINED_FUNCTION_235();
    v34 = *(v28 + 8);
    v34(v27, v26);
    v35 = *(v0 + 208);
    *(v0 + 216) = *(v0 + 200);
    *(v0 + 224) = v35;
    sub_2753146CC();
    OUTLINED_FUNCTION_123_0();
    sub_2753B62B8();

    OUTLINED_FUNCTION_234();
    *(v0 + 232) = v135;
    *(v0 + 240) = v32;
    OUTLINED_FUNCTION_123_0();
    sub_2753B62B8();

    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    sub_275316CAC(0, v36, v37, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_79_0();
    sub_2753B62E8();
    swift_willThrow();
    (v34)(v143);
    goto LABEL_13;
  }

  return sub_2753B7708();
}

uint64_t sub_2752FF99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a1;
  v6[27] = a3;
  sub_275316CAC(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  v6[30] = v8;
  v6[31] = swift_task_alloc();
  sub_275316CAC(0, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
  v6[32] = v9;
  v6[33] = *(v9 - 8);
  v6[34] = swift_task_alloc();
  v10 = *(a4 + 16);
  v6[35] = v10;
  v6[36] = *(v10 - 8);
  v6[37] = swift_task_alloc();
  sub_275316CAC(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
  v6[38] = v11;
  v6[39] = *(v11 - 8);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_getAssociatedTypeWitness();
  v6[43] = swift_task_alloc();
  v6[44] = *(a4 + 24);
  v12 = sub_2753B69B8();
  v6[45] = v12;
  v6[46] = *(v12 - 8);
  v6[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2752FFCC0, 0, 0);
}

uint64_t sub_2752FFCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v7 = v6[44];
  sub_2753B6938();
  v8 = OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189(v8);
  OUTLINED_FUNCTION_70_0();
  sub_2753B6998();
  v6[48] = *(v7 + 32);
  v6[49] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v6[50] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v9, v10, MEMORY[0x277D64EF8]);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2752FFD9C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 384);

  v2 = OUTLINED_FUNCTION_79_0();
  *(v0 + 408) = v1(v2);
  v3 = OUTLINED_FUNCTION_39_0();
  v4(v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2752FFE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = swift_task_alloc();
  *(v9 + 416) = v10;
  OUTLINED_FUNCTION_56_0(v10);
  OUTLINED_FUNCTION_38_0(&qword_2753C2888);
  v23 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v9 + 424) = v12;
  *v12 = v13;
  v12[1] = sub_2752FFF04;
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_241();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_2752FFF04()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27530000C()
{
  v85 = v0;
  sub_2753B6A58();
  v1 = OUTLINED_FUNCTION_129_0();
  v3 = v2(v1);
  if (v3 == *MEMORY[0x277D65178])
  {
    v4 = *(v0 + 272);
    v5 = OUTLINED_FUNCTION_126_0();
    v6(v5);
    v7 = *v4;
    if (*(*v4 + 16) == 1 && (*(v7 + 82) >> 5) >= 5u)
    {
      v45 = *(v7 + 80) | (*(v7 + 82) << 16);
      v74 = *(v0 + 312);
      v75 = *(v0 + 304);
      v78 = *(v0 + 328);
      v47 = *(v7 + 32);
      v46 = *(v7 + 40);
      v48 = *(v7 + 48);
      v49 = *(v7 + 56);
      v71 = *(v7 + 72);
      v72 = *(v7 + 64);

      sub_275314678();
      sub_2753B62D8();
      OUTLINED_FUNCTION_23_0();
      sub_2753B62C8();
      *(v0 + 70) = 13;
      sub_2753B6298();
      OUTLINED_FUNCTION_164();
      OUTLINED_FUNCTION_171(v50 + 57);
      *(v0 + 16) = v47;
      *(v0 + 24) = v46;
      *(v0 + 32) = v48;
      *(v0 + 40) = v49;
      *(v0 + 48) = v72;
      *(v0 + 56) = v71;
      *(v0 + 66) = BYTE2(v45);
      *(v0 + 64) = v45;
      sub_275317860();
      sub_2753B62B8();
      sub_2752FBB6C(v47, v46, v48, v49, v72, v71, v45);
      OUTLINED_FUNCTION_85_0();
      sub_2753B62C8();
      sub_2753B69A8();
      v51 = *(v0 + 176);
      *(v0 + 184) = *(v0 + 168);
      *(v0 + 192) = v51;
      sub_2753146CC();
      OUTLINED_FUNCTION_239(v0 + 184);

      OUTLINED_FUNCTION_23_0();
      sub_2753B62C8();
      OUTLINED_FUNCTION_0_3();
      sub_275316CAC(0, v52, v53, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
      sub_275314720();
      OUTLINED_FUNCTION_9_2();
      swift_allocError();
      OUTLINED_FUNCTION_141_0();
      OUTLINED_FUNCTION_90_0();
      sub_2753B62E8();
      swift_willThrow();
      (*(v74 + 8))(v78, v75);
    }

    else
    {
      OUTLINED_FUNCTION_210();
      while (2)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_125_0();
          v10 = *(v9 - 24);
          v11 = *(v9 - 16);
          v13 = *(v9 - 8);
          v12 = *v9;
          switch(v14)
          {
            case 0:
              v15 = 0;
              v16 = 0;
              v13 = *(v9 - 8);
              goto LABEL_22;
            case 1:
              v15 = *v9;
              v16 = 32;
              goto LABEL_22;
            case 2:
              v16 = *(v9 + 8) | 0x40;

              v15 = v12;
              goto LABEL_22;
            case 3:
              v15 = *v9;
              v16 = 96;
              goto LABEL_22;
            case 4:
              v15 = *v9;
              v16 = 0x80;
LABEL_22:

              v80 = v10;
              v81 = v11;
              v82 = v13;
              v83 = v15;
              v84 = v16;
              sub_27535DCC4(&v79);

              OUTLINED_FUNCTION_83_0();
              sub_2753147B0(v58, v59, v60, v15, v16);
              v61 = v79;
              if (v79 == 6)
              {
                __break(1u);
                JUMPOUT(0x275300910);
              }

              v62 = *(v0 + 328);
              v64 = *(v0 + 304);
              v63 = *(v0 + 312);
              v65 = *(v0 + 208);

              sub_2753B6A88();
              (*(v63 + 8))(v62, v64);
              v66 = *(v0 + 160);
              *v65 = *(v0 + 152);
              *(v65 + 8) = v66;
              *(v65 + 16) = v61;
              *(v65 + 24) = v7;
              v67 = OUTLINED_FUNCTION_90_0();
              v68(v67);

              OUTLINED_FUNCTION_35_0();
              goto LABEL_24;
            default:
              continue;
          }
        }

        break;
      }

      sub_275314678();
      sub_2753B62D8();
      OUTLINED_FUNCTION_23_0();
      sub_2753B62C8();
      *(v0 + 69) = 5;
      sub_2753B6298();
      OUTLINED_FUNCTION_49_0();
      v37 = sub_2753B62C8();
      *(v0 + 200) = v7;
      OUTLINED_FUNCTION_42_0(v37, &qword_2809C1450, &type metadata for MusicContent.QualifiedIdentifier);
      sub_27531480C();
      sub_2753B62B8();

      OUTLINED_FUNCTION_23_0();
      sub_2753B62C8();
      OUTLINED_FUNCTION_0_3();
      v38 = OUTLINED_FUNCTION_221();
      sub_275316CAC(v38, v39, v40, v41, v42);
      sub_275314720();
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_67_1();
      swift_allocError();
      OUTLINED_FUNCTION_141_0();
      sub_2753B62E8();
      swift_willThrow();
      v43 = OUTLINED_FUNCTION_97_0();
      v44(v43);
    }

LABEL_14:
    v54 = OUTLINED_FUNCTION_98_0();
    v55(v54);

    OUTLINED_FUNCTION_19_0();
LABEL_24:
    OUTLINED_FUNCTION_225();

    __asm { BRAA            X1, X16 }
  }

  if (v3 == *MEMORY[0x277D65170])
  {
    v76 = *(v0 + 328);
    v18 = *(v0 + 304);
    v17 = *(v0 + 312);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    *(v0 + 68) = 19;
    sub_2753B6298();
    OUTLINED_FUNCTION_49_0();
    sub_2753B62C8();
    sub_2753B69A8();
    v19 = *(v0 + 128);
    *(v0 + 136) = *(v0 + 120);
    *(v0 + 144) = v19;
    sub_2753146CC();
    OUTLINED_FUNCTION_239(v0 + 136);

    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    v20 = OUTLINED_FUNCTION_221();
    sub_275316CAC(v20, v21, v22, v23, v24);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_212();
    sub_2753B62E8();
    swift_willThrow();
    (*(v17 + 8))(v76, v18);
    goto LABEL_14;
  }

  if (v3 == *MEMORY[0x277D65168])
  {
    v25 = *(v0 + 376);
    v26 = *(v0 + 320);
    v77 = *(v0 + 328);
    v27 = *(v0 + 312);
    v28 = *(v0 + 272);
    v29 = OUTLINED_FUNCTION_126_0();
    v30(v29);
    v31 = v28[1];
    v73 = *v28;

    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    *(v0 + 67) = 6;
    sub_2753B6298();
    OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_171(v32 + 60);
    sub_2753B6988();
    OUTLINED_FUNCTION_235();
    v33 = *(v27 + 8);
    v33(v26, v25);
    v34 = *(v0 + 80);
    *(v0 + 88) = *(v0 + 72);
    *(v0 + 96) = v34;
    sub_2753146CC();
    OUTLINED_FUNCTION_123_0();
    sub_2753B62B8();

    OUTLINED_FUNCTION_234();
    *(v0 + 104) = v73;
    *(v0 + 112) = v31;
    OUTLINED_FUNCTION_123_0();
    sub_2753B62B8();

    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    sub_275316CAC(0, v35, v36, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_79_0();
    sub_2753B62E8();
    swift_willThrow();
    (v33)(v77);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_225();

  return sub_2753B7708();
}

uint64_t sub_275300924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_66_0();

  v10 = OUTLINED_FUNCTION_105_0();
  v11(v10);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_179();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_2753009F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a4;
  v6[8] = a6;
  v6[5] = a2;
  v6[6] = a3;
  v6[4] = a1;
  return MEMORY[0x2822009F8](sub_275300A1C, 0, 0);
}

uint64_t sub_275300A1C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_89_0();
  sub_2753B69A8();
  OUTLINED_FUNCTION_178();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 80) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_91_0(v1);

  return MusicContentStorage.Operations.registration(for:followRedirect:)();
}

uint64_t sub_275300AC0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_58_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_19_0();

    return v10();
  }
}

uint64_t sub_275300BDC()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t FacetCollection<>.FullyQualifiedContentRegistrationElement.value<A, B>(from:for:)()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v5;
  v1[6] = v2;
  v1[7] = v6;
  v1[4] = v7;
  v1[5] = v8;
  v1[3] = v9;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_41_0(v10, v11, v12, v13);
  v1[10] = v14;
  OUTLINED_FUNCTION_75(v14);
  v1[11] = OUTLINED_FUNCTION_138_0();
  v16 = type metadata accessor for MediaAPIResourceRequest(255, *(v3 + 16), *(v3 + 24), v15);
  v1[12] = v16;
  OUTLINED_FUNCTION_82_0();
  v17 = sub_2753B72A8();
  v1[13] = v17;
  OUTLINED_FUNCTION_17_1(v17);
  v1[14] = v18;
  v1[15] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_88_0();
  v1[16] = v19;
  v1[17] = OUTLINED_FUNCTION_138_0();
  v1[18] = *(v16 - 8);
  v20 = OUTLINED_FUNCTION_138_0();
  v21 = *v0;
  v1[19] = v20;
  v1[20] = v21;
  v22 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_275300DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = OUTLINED_FUNCTION_54_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_59_0();
  if (v13)
  {
    v16 = *(v10 + 160);
    OUTLINED_FUNCTION_151_0();
    v17 = OUTLINED_FUNCTION_96_0();
    v18(v17);
    *(v10 + 16) = v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    *(v10 + 168) = v19;
    *v19 = v20;
    v19[1] = sub_275301000;
    OUTLINED_FUNCTION_111_0();

    return sub_2752FF99C(v21, v22, v23, v24, v25, v26);
  }

  else
  {
    v29 = OUTLINED_FUNCTION_128_0(v13, v14, v15, *(v10 + 96));
    v30(v29);
    sub_275314678();
    OUTLINED_FUNCTION_124_0(65);
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    *(v10 + 184) = 7;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_83_0();
    sub_2753B62A8();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_193(v31, v32, v33, v34, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_25_0();
    swift_allocError();
    OUTLINED_FUNCTION_52_0();
    sub_2753B62E8();
    swift_willThrow();

    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_111_0();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
  }
}

uint64_t sub_275301000()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2753010FC()
{
  OUTLINED_FUNCTION_3();
  v0 = OUTLINED_FUNCTION_98_0();
  v1(v0);

  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_275301194()
{
  OUTLINED_FUNCTION_3();
  (*(v0[18] + 8))(v0[19], v0[12]);

  OUTLINED_FUNCTION_19_0();

  return v1();
}

uint64_t FacetCollection<>.FullyQualifiedContentRegistrationElement.merge(other:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  OUTLINED_FUNCTION_83_0();
  type metadata accessor for MediaAPIResourceRequest.Option(v8, v9, v10, v11);
  OUTLINED_FUNCTION_223();
  sub_2753B70B8();
  sub_275314624();
  v12 = OUTLINED_FUNCTION_211();
  v13 = MEMORY[0x277C75FA0](v12);
  if (v13)
  {
  }

  else
  {
    MEMORY[0x28223BE20](v13);
    sub_2753B6CD8();

    result = sub_2753B6CB8();
  }

  *a1 = v7;
  *a2 = 0;
  return result;
}

uint64_t sub_275301360@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for MediaAPIResourceRequest.Option(0, a3, a4, a4);
  result = sub_2753B7028();
  *a5 = result;
  return result;
}

uint64_t static FacetCollection<>.FullyQualifiedContentRegistrationElement.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MediaAPIResourceRequest.Option(255, a3, a4, a4);
  OUTLINED_FUNCTION_82_0();
  sub_2753B70B8();
  sub_275314624();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_27();
  return sub_2753B6CF8() & 1;
}

uint64_t FacetCollection<>.FullyQualifiedContentRegistrationElement.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MediaAPIResourceRequest.Option(255, *(a2 + 16), *(a2 + 24), a4);
  OUTLINED_FUNCTION_82_0();
  sub_2753B70B8();
  sub_275314624();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_27();
  return sub_2753B6CE8();
}

uint64_t FacetCollection<>.FullyQualifiedContentRegistrationElement.hashValue.getter(uint64_t a1)
{
  v6[9] = *v1;
  sub_2753B7798();
  FacetCollection<>.FullyQualifiedContentRegistrationElement.hash(into:)(v6, a1, v3, v4);
  return sub_2753B77D8();
}

uint64_t sub_2753015A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.prepare(in:)();
}

uint64_t sub_27530162C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2752FD514;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)(a1, a2, a5, a3, a4);
}

uint64_t sub_2753016F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.value<A, B>(from:for:)();
}

uint64_t sub_2753017E0(uint64_t a1, uint64_t a2)
{
  sub_2753B7798();
  FacetCollection<>.FullyQualifiedContentRegistrationElement.hash(into:)(v6, a2, v3, v4);
  return sub_2753B77D8();
}

uint64_t FacetCollection<>.MusicKitMetadataElement.availability<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_117_0();
  v5[34] = v7;
  v5[35] = v8;
  v5[32] = v9;
  v5[33] = v10;
  v5[31] = v11;
  v12 = sub_2753B6A38();
  v5[36] = v12;
  OUTLINED_FUNCTION_17_1(v12);
  v5[37] = v13;
  v5[38] = OUTLINED_FUNCTION_138_0();
  v14 = sub_2753B6AC8();
  v5[39] = v14;
  OUTLINED_FUNCTION_17_1(v14);
  v5[40] = v15;
  v5[41] = OUTLINED_FUNCTION_138_0();
  v5[42] = *(v6 + 16);
  v5[43] = *(v6 + 24);
  OUTLINED_FUNCTION_95_0();
  v5[44] = type metadata accessor for FacetCollection<>.FullyQualifiedContentRegistrationElement(v16, v17, v18, v19);
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v20 = sub_2753B6C18();
  v5[45] = v20;
  OUTLINED_FUNCTION_17_1(v20);
  v5[46] = v21;
  v5[47] = OUTLINED_FUNCTION_176();
  v5[48] = swift_task_alloc();
  OUTLINED_FUNCTION_2_1();
  v5[49] = v22;
  v5[50] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_2_1();
  v5[51] = v23;
  v5[52] = OUTLINED_FUNCTION_176();
  v5[53] = swift_task_alloc();
  OUTLINED_FUNCTION_93_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[54] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_75(AssociatedTypeWitness);
  v5[55] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_82_0();
  v25 = sub_2753B69B8();
  v5[56] = v25;
  OUTLINED_FUNCTION_17_1(v25);
  v5[57] = v26;
  v5[58] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_275301AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v7 = v6[43];
  sub_2753B6938();
  v8 = OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189(v8);
  OUTLINED_FUNCTION_70_0();
  sub_2753B6998();
  v6[59] = *(v7 + 32);
  v6[60] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v6[61] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v9, v10, MEMORY[0x277D64EF8]);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_275301BBC()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 472);

  v2 = OUTLINED_FUNCTION_79_0();
  *(v0 + 496) = v1(v2);
  v3 = OUTLINED_FUNCTION_39_0();
  v4(v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_275301C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = swift_task_alloc();
  *(v9 + 504) = v10;
  OUTLINED_FUNCTION_56_0(v10);
  OUTLINED_FUNCTION_38_0(&qword_2753C1DF0);
  v22 = v11;
  v12 = swift_task_alloc();
  *(v9 + 512) = v12;
  *v12 = v9;
  v12[1] = sub_275301D20;
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_241();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_275301D20()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v1;
  v3[65] = v5;
  v3[66] = v6;
  v3[67] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275301E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = v12[66];
  if (v13)
  {
    v14 = v12[31];
    *v14 = v12[65];
    v14[1] = v13;
    v15 = *MEMORY[0x277D65210];
    OUTLINED_FUNCTION_106_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    sub_2753B6C18();
    OUTLINED_FUNCTION_8_2();
    (*(v16 + 104))(v14, v15);
    OUTLINED_FUNCTION_132_0();
    v17 = OUTLINED_FUNCTION_98_0();
    v18(v17);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_100_0();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  else
  {
    v28 = v12[43];
    v29 = OUTLINED_FUNCTION_54_0();
    v30(v29);
    OUTLINED_FUNCTION_69_0();
    FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)(v31, v28, v32);
    v12[68] = a9;
    v12[30] = a9;
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v12[69] = v33;
    *v33 = v34;
    v33[1] = sub_275302018;
    OUTLINED_FUNCTION_100_0();

    return FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)(v35, v36, v37, v38, v39);
  }
}

uint64_t sub_275302018()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 560) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_275302114(uint64_t a1)
{
  v116 = v1;
  v2 = OUTLINED_FUNCTION_48_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_92_0();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D65210])
  {
    v7 = *(v1 + 376);
    v8 = OUTLINED_FUNCTION_126_0();
    v9(v8);
    v10 = *v7;
    v11 = v7[1];
    sub_27535A340(v7[3], v104);
    v12 = v107 | (v108 << 16);
    if ((~v12 & 0xFE00FE) == 0)
    {
      v13 = *(v1 + 248);

      v14 = OUTLINED_FUNCTION_90_0();
      v15(v14);
      OUTLINED_FUNCTION_142_0();
      *v13 = v16 | 2;
      v13[1] = 0x80000002753B86D0;
      v17 = *MEMORY[0x277D65208];
LABEL_13:
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      sub_2753B6C18();
      OUTLINED_FUNCTION_8_2();
      v29 = *(v57 + 104);
      v30 = v13;
      goto LABEL_14;
    }

    v93 = v104[0];
    v97 = v104[1];
    v31 = v106;
    v102 = v105;
    v32 = *(v1 + 320);
    v33 = *(v1 + 328);
    v34 = *(v1 + 312);
    sub_2753B6978();
    *(v1 + 176) = *(v1 + 208);
    *(v1 + 189) = *(v1 + 221);
    sub_275314888(v1 + 176);
    v35 = *MEMORY[0x277D65198];
    sub_2753B6AB8();
    OUTLINED_FUNCTION_8_2();
    (*(v36 + 104))(v33, v35);
    (*(v32 + 104))(v33, *MEMORY[0x277D651A0], v34);
    if ((sub_2753B6AA8() & 1) == 0)
    {
      v61 = *(v1 + 368);
      v89 = *(v1 + 360);
      v91 = *(v1 + 384);
      v87 = *(v1 + 328);
      v62 = v31;
      v64 = *(v1 + 312);
      v63 = *(v1 + 320);

      sub_2752FBB58(v93, *(&v93 + 1), v97, *(&v97 + 1), v102, v62, v12);

      (*(v63 + 8))(v87, v64);
      (*(v61 + 8))(v91, v89);
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_106_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      sub_2753B6C18();
      OUTLINED_FUNCTION_8_2();
      v30 = OUTLINED_FUNCTION_96_0();
      goto LABEL_15;
    }

    v112 = v93;
    v113 = v97;
    *&v114 = v102;
    *(&v114 + 1) = v31;
    BYTE2(v115[0]) = BYTE2(v12);
    LOWORD(v115[0]) = v12;

    sub_275315CA4(v93, *(&v93 + 1), v97, *(&v97 + 1), v102, v31, v12);
    sub_275319620(v10, v11, &v112, v1 + 16);
    v86 = *(v1 + 24);
    v88 = *(v1 + 16);
    v37 = *(v1 + 48);
    v109 = *(v1 + 32);
    v110 = v37;
    v111[0] = *(v1 + 64);
    *(v111 + 15) = *(v1 + 79);
    if (!v86)
    {
      __break(1u);
      return;
    }

    v90 = *(v1 + 560);

    sub_2752FBB58(v93, *(&v93 + 1), v97, *(&v97 + 1), v102, v31, v12);

    sub_2753104C4(&v112);
    if (v90)
    {
      v39 = *(v1 + 368);
      v100 = *(v1 + 360);
      v103 = *(v1 + 384);
      v40 = *(v1 + 320);
      v95 = *(v1 + 312);
      v98 = *(v1 + 328);
      type metadata accessor for MediaAPIResourceRequest.Identifier(255, *(v1 + 336), *(v1 + 344), v38);
      OUTLINED_FUNCTION_223();
      sub_2753B72A8();
      OUTLINED_FUNCTION_9();
      (*(v41 + 8))(v1 + 16);
      *(v1 + 83) = 4;
      sub_2753148DC(0);
      v43 = OUTLINED_FUNCTION_197(v42);
      *(v43 + 16) = xmmword_2753BE420;
      *(v43 + 32) = v90;
      OUTLINED_FUNCTION_0_3();
      sub_275316CAC(0, v44, v45, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
      sub_275314720();
      OUTLINED_FUNCTION_67_1();
      swift_allocError();
      v46 = v90;
      v47 = sub_275314678();
      MEMORY[0x277C755D0](v1 + 83, 0xD00000000000005CLL, 0x80000002753B86F0, v43, &type metadata for MusicContentError, v47);
      swift_willThrow();

      (*(v40 + 8))(v98, v95);
      (*(v39 + 8))(v103, v100);
      OUTLINED_FUNCTION_132_0();
      v48 = OUTLINED_FUNCTION_98_0();
      v49(v48);

      OUTLINED_FUNCTION_19_0();
LABEL_16:

      v50();
      return;
    }

    v99 = *(v1 + 360);
    v101 = *(v1 + 384);
    v65 = *(v1 + 336);
    v66 = *(v1 + 344);
    v67 = *(v1 + 320);
    v94 = *(v1 + 328);
    v96 = *(v1 + 368);
    v92 = *(v1 + 312);
    v69 = *(v1 + 288);
    v68 = *(v1 + 296);
    v22 = *(v1 + 248);
    v70 = v112;
    v71 = v113;
    *(v1 + 120) = v114;
    *(v1 + 104) = v71;
    *(v1 + 88) = v70;
    sub_275314944(0);
    v73 = (v22 + *(v72 + 48));
    v74 = *MEMORY[0x277D650C8];
    sub_2753B6898();
    OUTLINED_FUNCTION_8_2();
    (*(v75 + 104))(v22, v74);
    (*(v68 + 104))(v22, *MEMORY[0x277D65140], v69);
    *&v112 = v88;
    *(&v112 + 1) = v86;
    v113 = v109;
    v114 = v110;
    v115[0] = v111[0];
    *(v115 + 15) = *(v111 + 15);
    type metadata accessor for MediaAPIResourceRequest.Option(255, v65, v66, v76);
    OUTLINED_FUNCTION_99_0();
    sub_2753B76C8();
    swift_allocObject();
    v77 = sub_2753B6FF8();
    OUTLINED_FUNCTION_137_0(v77, v78);
    sub_2752E6688();
    sub_2753B6998();
    v80 = type metadata accessor for MediaAPIResourceRequest(0, v65, v66, v79);
    v73[3] = v80;
    v73[4] = OUTLINED_FUNCTION_22_0(v80, v80);
    __swift_allocate_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_214();
    sub_275319DD0(v81, v82, v83, v84, v66, v85);
    (*(v67 + 8))(v94, v92);
    (*(v96 + 8))(v101, v99);
    v17 = *MEMORY[0x277D65218];
LABEL_6:
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    sub_2753B6C18();
    OUTLINED_FUNCTION_8_2();
    v29 = *(v28 + 104);
    v30 = v22;
LABEL_14:
    v58 = v17;
LABEL_15:
    v29(v30, v58);
    OUTLINED_FUNCTION_132_0();
    v59 = OUTLINED_FUNCTION_98_0();
    v60(v59);

    OUTLINED_FUNCTION_35_0();
    goto LABEL_16;
  }

  v17 = v6;
  if (v6 == *MEMORY[0x277D65218])
  {
    v18 = *(v1 + 544);
    v19 = *(v1 + 376);
    v20 = *(v1 + 360);
    v21 = *(v1 + 368);
    v22 = *(v1 + 248);
    OUTLINED_FUNCTION_205();
    v23();

    v21 = (v21 + 96);
    v24 = OUTLINED_FUNCTION_107_0();
    v25(v24);
    sub_275314944(0);
    v26 = OUTLINED_FUNCTION_74_0();
    v21(v26);
    sub_275315C8C((v19 + v20), v1 + 136);
    v27 = OUTLINED_FUNCTION_127_0();
    v21(v27);
    sub_275315C8C((v1 + 136), v22 + v18);
    goto LABEL_6;
  }

  if (v6 == *MEMORY[0x277D65208])
  {
    v51 = *(v1 + 376);
    v52 = *(v1 + 368);
    v13 = *(v1 + 248);

    v53 = *(v52 + 8);
    v54 = OUTLINED_FUNCTION_90_0();
    v53(v54);
    v55 = OUTLINED_FUNCTION_207();
    v53(v55);
    OUTLINED_FUNCTION_142_0();
    *v13 = v56;
    v13[1] = v51;
    goto LABEL_13;
  }

  sub_2753B7708();
}

uint64_t sub_275302AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();

  v24 = *(v12 + 536);
  v13 = OUTLINED_FUNCTION_105_0();
  v14(v13);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_100_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_275302B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();

  v24 = *(v12 + 560);
  v13 = OUTLINED_FUNCTION_105_0();
  v14(v13);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_100_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_275302C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a4;
  v6[8] = a6;
  v6[5] = a2;
  v6[6] = a3;
  v6[4] = a1;
  return MEMORY[0x2822009F8](sub_275302CA4, 0, 0);
}

uint64_t sub_275302CA4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_89_0();
  sub_2753B69A8();
  OUTLINED_FUNCTION_178();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_275302D4C;
  OUTLINED_FUNCTION_75_0();

  return MusicContentStorage.Operations.mediaAPIAttributes(for:)();
}

uint64_t sub_275302D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_45_0();
  v11 = v10;
  OUTLINED_FUNCTION_13_2();
  *v12 = v11;
  v13 = *v8;
  OUTLINED_FUNCTION_2();
  *v14 = v13;
  v11[11] = v7;

  if (!v7)
  {

    v11[12] = v6;
    v11[13] = v9;
  }

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_275302E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a2;
  sub_275316CAC(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  v5[13] = v7;
  v5[14] = swift_task_alloc();
  v8 = *(a3 + 16);
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_getAssociatedTypeWitness();
  v5[19] = swift_task_alloc();
  v5[20] = *(a3 + 24);
  v9 = sub_2753B69B8();
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275303068, 0, 0);
}

uint64_t sub_275303068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v7 = v6[20];
  sub_2753B6938();
  v8 = OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189(v8);
  OUTLINED_FUNCTION_70_0();
  sub_2753B6998();
  v6[24] = *(v7 + 32);
  v6[25] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v6[26] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v9, v10, MEMORY[0x277D64EF8]);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_275303144()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 192);

  v2 = OUTLINED_FUNCTION_79_0();
  *(v0 + 216) = v1(v2);
  v3 = OUTLINED_FUNCTION_39_0();
  v4(v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2753031D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = swift_task_alloc();
  *(v9 + 224) = v10;
  OUTLINED_FUNCTION_56_0(v10);
  OUTLINED_FUNCTION_38_0(&qword_2753C1DF0);
  v22 = v11;
  v12 = swift_task_alloc();
  *(v9 + 232) = v12;
  *v12 = v9;
  v12[1] = sub_2753032AC;
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_241();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_2753032AC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v0;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[30] = v9;
  v3[31] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2753033BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  if (*(v10 + 240))
  {
    (*(*(v10 + 176) + 8))(*(v10 + 184), *(v10 + 168));

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_111_0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
  }

  else
  {
    sub_275314678();
    OUTLINED_FUNCTION_113_0();
    sub_2753B62D8();
    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    *(v10 + 256) = 8;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_156_0();
    sub_2753B69A8();
    v20 = *(v10 + 56);
    *(v10 + 64) = *(v10 + 48);
    *(v10 + 72) = v20;
    sub_2753146CC();
    OUTLINED_FUNCTION_115();
    sub_2753B62B8();

    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_198(v21, v22, v23, v24, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_71_0();
    sub_2753B62E8();
    swift_willThrow();
    v25 = OUTLINED_FUNCTION_105_0();
    v26(v25);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_111_0();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

uint64_t sub_2753035E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();

  v6 = OUTLINED_FUNCTION_105_0();
  v7(v6);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_275303694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a4;
  v6[8] = a6;
  v6[5] = a2;
  v6[6] = a3;
  v6[4] = a1;
  return MEMORY[0x2822009F8](sub_2753036BC, 0, 0);
}

uint64_t sub_2753036BC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_89_0();
  sub_2753B69A8();
  OUTLINED_FUNCTION_178();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_275303764;
  OUTLINED_FUNCTION_75_0();

  return MusicContentStorage.Operations.mediaAPIAttributes(for:)();
}

uint64_t sub_275303764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_45_0();
  v11 = v10;
  OUTLINED_FUNCTION_13_2();
  *v12 = v11;
  v13 = *v8;
  OUTLINED_FUNCTION_2();
  *v14 = v13;
  v11[11] = v7;

  if (!v7)
  {

    v11[12] = v6;
    v11[13] = v9;
  }

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t FacetCollection<>.MusicKitMetadataElement.value<A, B>(from:for:)()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_184(v1, v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v8, v9, v10, MEMORY[0x277D64F00]);
  v0[8] = v11;
  OUTLINED_FUNCTION_75(v11);
  v12 = OUTLINED_FUNCTION_138_0();
  v0[9] = v12;
  v0[10] = OUTLINED_FUNCTION_238(v12, v13, v14, v15);
  OUTLINED_FUNCTION_93_0();
  v16 = sub_2753B72A8();
  v0[11] = v16;
  OUTLINED_FUNCTION_17_1(v16);
  v0[12] = v17;
  v0[13] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_87_0();
  v0[14] = v18;
  v0[15] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_88_0();
  v0[16] = v19;
  v0[17] = OUTLINED_FUNCTION_138_0();
  v20 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2753039F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_202();
  v11 = OUTLINED_FUNCTION_54_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_59_0();
  if (v13)
  {
    OUTLINED_FUNCTION_202();
    OUTLINED_FUNCTION_151_0();
    v16 = OUTLINED_FUNCTION_96_0();
    v17(v16);
    v18 = swift_task_alloc();
    *(v10 + 144) = v18;
    *v18 = v10;
    OUTLINED_FUNCTION_158_0(v18);
    OUTLINED_FUNCTION_111_0();

    return sub_275302E74(v19, v20, v21, v22, v23);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_128_0(v13, v14, v15, *(v10 + 80));
    v27(v26);
    sub_275314678();
    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    *(v10 + 176) = 7;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_83_0();
    sub_2753B62A8();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_193(v28, v29, v30, v31, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_25_0();
    swift_allocError();
    OUTLINED_FUNCTION_52_0();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_229();

    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_111_0();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }
}

uint64_t sub_275303BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_45_0();
  v11 = v10;
  OUTLINED_FUNCTION_13_2();
  *v12 = v11;
  v13 = *v8;
  OUTLINED_FUNCTION_2();
  *v14 = v13;
  v11[19] = v7;

  if (!v7)
  {
    v11[20] = v6;
    v11[21] = v9;
  }

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_275303CE0()
{
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_98_0();
  v2(v1);

  v3 = v0[1];
  v5 = v0[20];
  v4 = v0[21];

  return v3(v4, v5);
}

uint64_t sub_275303D84()
{
  OUTLINED_FUNCTION_3();
  (*(v0[16] + 8))(v0[17], v0[10]);
  OUTLINED_FUNCTION_185();

  OUTLINED_FUNCTION_19_0();

  return v1();
}

uint64_t sub_275303E64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.prepare(in:)();
}

uint64_t sub_275303EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitMetadataElement.availability<A>(of:)(a1, a2, a5, a3, a4);
}

uint64_t sub_275303FB8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_275317948;

  return FacetCollection<>.MusicKitMetadataElement.value<A, B>(from:for:)();
}

uint64_t FacetCollection<>.MusicKitRelatedContentElement.availability<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_117_0();
  v5[35] = v7;
  v5[36] = v8;
  v5[33] = v9;
  v5[34] = v10;
  v5[32] = v11;
  v12 = sub_2753B6A38();
  v5[37] = v12;
  OUTLINED_FUNCTION_17_1(v12);
  v5[38] = v13;
  v5[39] = OUTLINED_FUNCTION_138_0();
  v14 = sub_2753B6AC8();
  v5[40] = v14;
  OUTLINED_FUNCTION_17_1(v14);
  v5[41] = v15;
  v5[42] = OUTLINED_FUNCTION_138_0();
  v5[43] = *(v6 + 16);
  v16 = *(v6 + 24);
  v5[44] = v16;
  OUTLINED_FUNCTION_95_0();
  v5[45] = type metadata accessor for FacetCollection<>.FullyQualifiedContentRegistrationElement(v17, v18, v19, v20);
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v21 = sub_2753B6C18();
  v5[46] = v21;
  OUTLINED_FUNCTION_17_1(v21);
  v5[47] = v22;
  v5[48] = OUTLINED_FUNCTION_176();
  v5[49] = swift_task_alloc();
  OUTLINED_FUNCTION_2_1();
  v5[50] = v23;
  v5[51] = OUTLINED_FUNCTION_176();
  v5[52] = swift_task_alloc();
  v24 = sub_2753B6A18();
  v5[53] = v24;
  OUTLINED_FUNCTION_17_1(v24);
  v5[54] = v25;
  v5[55] = OUTLINED_FUNCTION_176();
  v5[56] = swift_task_alloc();
  OUTLINED_FUNCTION_2_1();
  v5[57] = v26;
  v5[58] = OUTLINED_FUNCTION_138_0();
  v27 = OUTLINED_FUNCTION_82_0();
  v30 = type metadata accessor for FacetCollection<>.RelatedContent(v27, v28, v16, v29);
  v5[59] = v30;
  OUTLINED_FUNCTION_17_1(v30);
  v5[60] = v31;
  v5[61] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_93_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[62] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_75(AssociatedTypeWitness);
  v5[63] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_82_0();
  v33 = sub_2753B69B8();
  v5[64] = v33;
  OUTLINED_FUNCTION_17_1(v33);
  v5[65] = v34;
  v5[66] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_2753043E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_177();
  v56 = v20[64];
  v57 = v20[61];
  v21 = v20[59];
  v22 = v20[57];
  v23 = v20[54];
  v59 = v20[56];
  v60 = v20[55];
  v58 = v20[53];
  sub_2753B6938();
  OUTLINED_FUNCTION_33();
  swift_dynamicCast();
  v20[67] = *(v22 + 16);
  v20[68] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24 = OUTLINED_FUNCTION_165();
  v25(v24);
  OUTLINED_FUNCTION_150_0(v57);
  (*(v23 + 16))(v59, v57 + *(v21 + 36), v58);
  sub_2753B69C8();
  if (qword_2809C06E0 != -1)
  {
    swift_once();
  }

  v26 = v20[54];
  __swift_project_value_buffer(v20[53], qword_2809DAC90);
  v27 = sub_2752E94D0();
  v20[69] = *(v26 + 8);
  v20[70] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28 = OUTLINED_FUNCTION_96_0();
  v29(v28);
  if (v27)
  {
    v30 = v20[44];
    sub_2753B6998();
    v20[71] = *(v30 + 32);
    v20[72] = (v30 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
    sub_2753B6288();
    v20[73] = OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_2_4();
    sub_275315BB8(v31, v32, MEMORY[0x277D64EF8]);
    OUTLINED_FUNCTION_102_0();
    sub_2753B70C8();
    OUTLINED_FUNCTION_118_0();
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_148_0();

    return MEMORY[0x2822009F8](v33, v34, v35);
  }

  else
  {
    v37 = v20[32];
    sub_2753B7398();
    v20[21] = 0;
    v20[22] = 0xE000000000000000;
    OUTLINED_FUNCTION_85_0();
    MEMORY[0x277C76100](0xD00000000000001DLL);
    sub_2753B7468();
    v38 = v20[22];
    *v37 = v20[21];
    v37[1] = v38;
    v39 = *MEMORY[0x277D65208];
    OUTLINED_FUNCTION_4_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    sub_2753B6C18();
    OUTLINED_FUNCTION_8_2();
    (*(v40 + 104))(v37, v39);
    OUTLINED_FUNCTION_36_0();
    v41 = OUTLINED_FUNCTION_114_0();
    v42(v41);
    v43 = OUTLINED_FUNCTION_162();
    v44(v43);
    v45 = OUTLINED_FUNCTION_73_0();
    v46(v45);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_148_0();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, v56, v57, v58, v59, v60, 0, 0xE000000000000000, a18, a19, a20);
  }
}

uint64_t sub_275304748()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 568);

  v2 = OUTLINED_FUNCTION_79_0();
  *(v0 + 592) = v1(v2);
  v3 = OUTLINED_FUNCTION_39_0();
  v4(v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2753047DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = v10[66];
  v12 = v10[56];
  v14 = v10[43];
  v13 = v10[44];
  v16 = v10[35];
  v15 = v10[36];
  v17 = swift_task_alloc();
  v10[75] = v17;
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v13;
  v17[5] = v15;
  v17[6] = v11;
  v17[7] = v12;
  OUTLINED_FUNCTION_38_0(&qword_2753C1E28);
  v29 = v18;
  v19 = swift_task_alloc();
  v10[76] = v19;
  *v19 = v10;
  v19[1] = sub_2753048C0;
  OUTLINED_FUNCTION_111_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10);
}

uint64_t sub_2753048C0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 616) = v5;
  *(v3 + 624) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2753049D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_181();
  v19 = v18[77];
  if (*(v19 + 16))
  {
    v20 = v18[32];
    *v20 = v19;
    v21 = *MEMORY[0x277D65210];
    OUTLINED_FUNCTION_4_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    sub_2753B6C18();
    OUTLINED_FUNCTION_8_2();
    (*(v22 + 104))(v20, v21);
    OUTLINED_FUNCTION_36_0();
    v23 = OUTLINED_FUNCTION_114_0();
    v24(v23);
    v25 = OUTLINED_FUNCTION_162();
    v26(v25);
    v27 = OUTLINED_FUNCTION_73_0();
    v28(v27);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_131_0();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v38 = v18[44];
    v39 = OUTLINED_FUNCTION_211();
    v40(v39);
    OUTLINED_FUNCTION_101_0();
    FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)(v41, v38, v42);
    sub_2753B69A8();
    v43 = v18[23];
    v44 = v18[24];
    v45 = OUTLINED_FUNCTION_136_0();
    v18[79] = type metadata accessor for MediaAPIResourceRequest.Option(v45, v46, v47, v48);
    v18[80] = sub_2753B76C8();
    swift_allocObject();
    sub_2753B6FF8();
    *v49 = 4;
    v18[30] = sub_2752E6688();
    v18[25] = v43;
    v18[26] = v44;
    sub_2753B70B8();
    sub_275314624();
    sub_2753B6CD8();
    OUTLINED_FUNCTION_129_0();
    sub_2753B6D18();
    v18[31] = v18[29];

    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v18[81] = v50;
    *v50 = v51;
    v50[1] = sub_275304C8C;
    OUTLINED_FUNCTION_131_0();

    return FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)(v52, v53, v54, v55, v56);
  }
}

uint64_t sub_275304C8C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 656) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275304DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = OUTLINED_FUNCTION_48_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_92_0();
  v17 = v16(v15);
  if (v17 == *MEMORY[0x277D65210])
  {
    v18 = *(v12 + 384);
    v19 = OUTLINED_FUNCTION_126_0();
    v20(v19);
    v21 = *v18;
    v22 = v18[1];
    v23 = v18[3];
    OUTLINED_FUNCTION_210();
    while (2)
    {
      if (v24 == 1)
      {
LABEL_25:

        v213 = 0;
        v214 = 0xE000000000000000;
        sub_2753B7398();
        v70 = v214;
        *(v12 + 216) = v213;
        *(v12 + 224) = v70;
        OUTLINED_FUNCTION_122_0();
        MEMORY[0x277C76100](v71 | 2, v72 | 0x8000000000000000);
        OUTLINED_FUNCTION_210();
        while (2)
        {
          if (v73 == 1)
          {
            v82 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_125_0();
            v75 = *(v74 - 24);
            v76 = *(v74 - 16);
            v78 = *(v74 - 8);
            v77 = *v74;
            switch(v79)
            {
              case 0:
                v80 = 0;
                v81 = 0;
                v78 = *(v74 - 8);
                goto LABEL_38;
              case 1:
                v80 = *v74;
                v81 = 32;
                goto LABEL_38;
              case 2:
                v81 = *(v74 + 8) | 0x40;

                v80 = v77;
                goto LABEL_38;
              case 3:
                v80 = *v74;
                v81 = 96;
                goto LABEL_38;
              case 4:
                v80 = *v74;
                v81 = 0x80;
LABEL_38:

                v213 = v75;
                v214 = v76;
                *&v215 = v78;
                *(&v215 + 1) = v80;
                LOBYTE(v216) = v81;
                sub_27535DCC4(&v210);

                v111 = OUTLINED_FUNCTION_101_0();
                sub_2753147B0(v111, v112, v78, v80, v81);
                v82 = v210;
                if (v210 == 6)
                {
                  goto LABEL_49;
                }

                break;
              default:
                continue;
            }
          }

          break;
        }

        v113 = *(v12 + 256);

        *(v12 + 133) = v82;
        sub_2753B7468();
        v114 = *(v12 + 216);
        v115 = *(v12 + 224);
        v116 = OUTLINED_FUNCTION_69_0();
        v117(v116);
        *v113 = v114;
        v113[1] = v115;
        v34 = *MEMORY[0x277D65208];
        OUTLINED_FUNCTION_4_3();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_65_0();
        sub_2753B6C18();
        OUTLINED_FUNCTION_8_2();
        v46 = *(v118 + 104);
        v47 = v113;
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_125_0();
      v26 = *(v25 - 24);
      v27 = *(v25 - 16);
      v29 = *(v25 - 8);
      v28 = *v25;
      v30 = v22;
      switch(v31)
      {
        case 0:
          v32 = 0;
          v33 = 0;
          v29 = *(v25 - 8);
          goto LABEL_17;
        case 1:
          v32 = *v25;
          v33 = 32;
          goto LABEL_17;
        case 2:
          v33 = *(v25 + 8) | 0x40;

          v32 = v28;
          goto LABEL_17;
        case 3:
          v32 = *v25;
          v33 = 96;
          goto LABEL_17;
        case 4:
          v32 = *v25;
          v33 = 0x80;
LABEL_17:

          v213 = v26;
          v214 = v27;
          *&v215 = v29;
          *(&v215 + 1) = v32;
          LOBYTE(v216) = v33;
          sub_27535DCC4(&v210);

          v57 = OUTLINED_FUNCTION_212();
          sub_2753147B0(v57, v58, v29, v32, v33);
          v59 = v210;
          if (v210 == 6)
          {
            __break(1u);
LABEL_49:
            __break(1u);
          }

          else
          {

            v60 = v30;
            v61 = v21;
            switch(v59)
            {
              case 3:
LABEL_21:

                break;
              default:
                v62 = sub_2753B7718();

                if ((v62 & 1) == 0)
                {
                  switch(v59)
                  {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 5:
                      OUTLINED_FUNCTION_212();
                      v63 = sub_2753B7718();

                      if (v63)
                      {
                        goto LABEL_23;
                      }

                      goto LABEL_25;
                    case 4:
                      goto LABEL_21;
                    default:
                      JUMPOUT(0);
                  }
                }

                return result;
            }

LABEL_23:
            sub_27535A340(v23, v204);
            v64 = v207 | (v208 << 16);
            if ((~v64 & 0xFE00FE) == 0)
            {
              v65 = *(v12 + 256);

              v66 = OUTLINED_FUNCTION_90_0();
              v67(v66);
              OUTLINED_FUNCTION_142_0();
              *v65 = v68 | 1;
              v65[1] = 0x80000002753B87D0;
              v34 = *MEMORY[0x277D65208];
              OUTLINED_FUNCTION_4_3();
              swift_getWitnessTable();
              OUTLINED_FUNCTION_65_0();
              sub_2753B6C18();
              OUTLINED_FUNCTION_8_2();
              v46 = *(v69 + 104);
              v47 = v65;
              goto LABEL_41;
            }

            v203 = v204[0];
            v201 = v204[1];
            v83 = v206;
            v202 = v205;
            v85 = *(v12 + 328);
            v84 = *(v12 + 336);
            v86 = *(v12 + 320);
            sub_2753B6978();
            *(v12 + 104) = *(v12 + 136);
            *(v12 + 117) = *(v12 + 149);
            sub_275314888(v12 + 104);
            v87 = *MEMORY[0x277D65198];
            sub_2753B6AB8();
            OUTLINED_FUNCTION_8_2();
            (*(v88 + 104))(v84, v87);
            (*(v85 + 104))(v84, *MEMORY[0x277D651A0], v86);
            if ((sub_2753B6AA8() & 1) == 0)
            {
              v107 = *(v12 + 376);
              v197 = *(v12 + 368);
              v200 = *(v12 + 392);
              v108 = v83;
              v109 = *(v12 + 328);
              v193 = *(v12 + 320);
              v195 = *(v12 + 336);
              v34 = *(v12 + 256);

              sub_2752FBB58(v203, *(&v203 + 1), v201, *(&v201 + 1), v202, v108, v64);

              (*(v109 + 8))(v195, v193);
              (*(v107 + 8))(v200, v197);
              OUTLINED_FUNCTION_55_0();
              OUTLINED_FUNCTION_4_3();
              swift_getWitnessTable();
              OUTLINED_FUNCTION_65_0();
              sub_2753B6C18();
              OUTLINED_FUNCTION_8_2();
              v47 = OUTLINED_FUNCTION_96_0();
LABEL_42:
              v46(v47, v110);
              OUTLINED_FUNCTION_36_0();
              v119(v34);
              v120 = OUTLINED_FUNCTION_162();
              v121(v120);
              v122 = OUTLINED_FUNCTION_73_0();
              v123(v122);

              OUTLINED_FUNCTION_35_0();
              goto LABEL_43;
            }

            v89 = *(v12 + 656);
            sub_2753104C4(v209);
            if (v89)
            {
              v90 = v83;
              v91 = *(v12 + 376);
              v196 = *(v12 + 368);
              v199 = *(v12 + 392);
              v92 = *(v12 + 328);
              v192 = *(v12 + 320);
              v194 = *(v12 + 336);

              sub_2752FBB58(v203, *(&v203 + 1), v201, *(&v201 + 1), v202, v90, v64);

              *(v12 + 134) = 4;
              sub_2753148DC(0);
              v94 = OUTLINED_FUNCTION_197(v93);
              *(v94 + 16) = xmmword_2753BE420;
              *(v94 + 32) = v89;
              OUTLINED_FUNCTION_0_3();
              v95 = OUTLINED_FUNCTION_221();
              sub_275316CAC(v95, v96, v97, v98, v99);
              sub_275314720();
              OUTLINED_FUNCTION_102_0();
              OUTLINED_FUNCTION_67_1();
              swift_allocError();
              v100 = v89;
              sub_275314678();
              OUTLINED_FUNCTION_142_0();
              MEMORY[0x277C755D0](v12 + 134, v101 + 74, 0x80000002753B87F0, v94, &type metadata for MusicContentError);
              swift_willThrow();

              (*(v92 + 8))(v194, v192);
              (*(v91 + 8))(v199, v196);
              OUTLINED_FUNCTION_37_0();
              v102(v89);
              v103 = OUTLINED_FUNCTION_167();
              v104(v103);
              v105 = OUTLINED_FUNCTION_107_0();
              v106(v105);

              OUTLINED_FUNCTION_19_0();
LABEL_43:
              OUTLINED_FUNCTION_100_0();

              return v125(v124, v125, v126, v127, v128, v129, v130, v131, a9, a10, a11, a12);
            }

            v132 = v209[1];
            *(v12 + 16) = v209[0];
            *(v12 + 32) = v132;
            *(v12 + 48) = v209[2];
            v210 = v203;
            v211 = v201;
            *&v212[0] = v202;
            *(&v212[0] + 1) = v83;
            BYTE2(v212[1]) = BYTE2(v64);
            LOWORD(v212[1]) = v64;

            OUTLINED_FUNCTION_214();
            sub_275315CA4(v133, v134, v135, v136, v137, v83, v64);
            sub_275319620(v61, v60, &v210, &v213);
            v198 = v214;
            v210 = v215;
            v211 = v216;
            v212[0] = v217[0];
            *(v212 + 15) = *(v217 + 15);
            if (v214)
            {
              v138 = v83;
              v174 = *(v12 + 640);
              v177 = *(v12 + 632);
              v179 = *(v12 + 408);
              v189 = *(v12 + 376);
              v190 = *(v12 + 368);
              v191 = *(v12 + 392);
              v185 = *(v12 + 352);
              v181 = *(v12 + 344);
              v183 = *(v12 + 512);
              v186 = *(v12 + 328);
              v187 = *(v12 + 320);
              v188 = *(v12 + 336);
              v139 = *(v12 + 304);
              v171 = *(v12 + 296);
              v140 = *(v12 + 256);

              OUTLINED_FUNCTION_214();
              sub_2752FBB58(v141, v142, v143, v144, v145, v138, v64);

              sub_275314944(0);
              v147 = (v140 + *(v146 + 48));
              v148 = *MEMORY[0x277D650C8];
              sub_2753B6898();
              OUTLINED_FUNCTION_8_2();
              (*(v149 + 104))(v140, v148);
              (*(v139 + 104))(v140, *MEMORY[0x277D65140], v171);
              OUTLINED_FUNCTION_119_0(v198, v171, v174);
              swift_allocObject();
              v150 = sub_2753B6FF8();
              OUTLINED_FUNCTION_137_0(v150, v151);
              v152 = sub_2752E6688();
              v160 = OUTLINED_FUNCTION_192(v152, v153, v154, v155, v156, v157, v158, v159, v172, v175, v177, v179, v181, v183);
              v168 = OUTLINED_FUNCTION_194(v160, v161, v162, v163, v164, v165, v166, v167, v173, v176, v178, v180, v182, v184, v185);
              v147[3] = v168;
              v147[4] = OUTLINED_FUNCTION_22_0(v168, v168);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v147);
              sub_275319DD0(&v213, (v12 + 16), v138, v64, v201, boxed_opaque_existential_1);
              (*(v186 + 8))(v188, v187);
              (*(v189 + 8))(v191, v190);
              v34 = *MEMORY[0x277D65218];
              OUTLINED_FUNCTION_4_3();
              swift_getWitnessTable();
              OUTLINED_FUNCTION_65_0();
              sub_2753B6C18();
              OUTLINED_FUNCTION_8_2();
              v46 = *(v170 + 104);
              v47 = v140;
              goto LABEL_41;
            }
          }

          __break(1u);
          JUMPOUT(0x275305C68);
        default:
          continue;
      }
    }
  }

  v34 = v17;
  if (v17 == *MEMORY[0x277D65218])
  {
    v36 = *(v12 + 384);
    v35 = *(v12 + 392);
    v37 = *(v12 + 368);
    v38 = *(v12 + 376);
    v39 = *(v12 + 256);

    OUTLINED_FUNCTION_205();
    v40(v35, v37);

    v38 = (v38 + 96);
    v41 = OUTLINED_FUNCTION_107_0();
    v42(v41);
    sub_275314944(0);
    v43 = OUTLINED_FUNCTION_74_0();
    v38(v43);
    sub_275315C8C((v36 + v37), v12 + 64);
    v44 = OUTLINED_FUNCTION_127_0();
    v38(v44);
    sub_275315C8C((v12 + 64), v39 + v35);
    OUTLINED_FUNCTION_4_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    sub_2753B6C18();
    OUTLINED_FUNCTION_8_2();
    v46 = *(v45 + 104);
    v47 = v39;
LABEL_41:
    v110 = v34;
    goto LABEL_42;
  }

  if (v17 == *MEMORY[0x277D65208])
  {
    v48 = *(v12 + 376);
    v49 = *(v12 + 256);

    v50 = *(v48 + 8);
    v51 = OUTLINED_FUNCTION_97_0();
    v50(v51);
    v52 = OUTLINED_FUNCTION_101_0();
    v50(v52);
    OUTLINED_FUNCTION_142_0();
    *v49 = v53;
    v49[1] = 0x80000002753B86B0;
    OUTLINED_FUNCTION_4_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    sub_2753B6C18();
    OUTLINED_FUNCTION_8_2();
    v46 = *(v54 + 104);
    v47 = v49;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_100_0();

  return sub_2753B7708();
}

uint64_t sub_275305CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_177();

  v36 = *(v20 + 624);
  OUTLINED_FUNCTION_37_0();
  v21 = OUTLINED_FUNCTION_108_0();
  v22(v21);
  v23 = OUTLINED_FUNCTION_167();
  v24(v23);
  v25 = OUTLINED_FUNCTION_107_0();
  v26(v25);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_148_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, v36, a18, a19, a20);
}

uint64_t sub_275305DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_177();
  v36 = *(v20 + 656);
  OUTLINED_FUNCTION_37_0();
  v21 = OUTLINED_FUNCTION_108_0();
  v22(v21);
  v23 = OUTLINED_FUNCTION_167();
  v24(v23);
  v25 = OUTLINED_FUNCTION_107_0();
  v26(v25);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_148_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, v36, a18, a19, a20);
}

uint64_t sub_275305EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a5;
  v7[9] = a7;
  v7[6] = a3;
  v7[7] = a4;
  v7[4] = a1;
  v7[5] = a2;
  return MEMORY[0x2822009F8](sub_275305EE4, 0, 0);
}

uint64_t sub_275305EE4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_112_0();
  sub_2753B69B8();
  sub_2753B69A8();
  v0[10] = v0[3];
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_275305FA0;
  OUTLINED_FUNCTION_75_0();

  return MusicContentStorage.Operations.relatedContent(to:as:)();
}

uint64_t sub_275305FA0()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {

    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2753060C4()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_275306124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a2;
  sub_275316CAC(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  v5[9] = v8;
  v5[10] = swift_task_alloc();
  v9 = *(a3 + 16);
  v5[11] = v9;
  v5[12] = *(v9 - 8);
  v5[13] = swift_task_alloc();
  v10 = sub_2753B6A18();
  v5[14] = v10;
  v5[15] = *(v10 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = *(a4 - 8);
  v5[18] = swift_task_alloc();
  v11 = *(a3 + 24);
  v5[19] = v11;
  v13 = type metadata accessor for FacetCollection<>.RelatedContent(0, v9, v11, v12);
  v5[20] = v13;
  v5[21] = *(v13 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_getAssociatedTypeWitness();
  v5[24] = swift_task_alloc();
  v14 = sub_2753B69B8();
  v5[25] = v14;
  v5[26] = *(v14 - 8);
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27530642C, 0, 0);
}

uint64_t sub_27530642C()
{
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_181();
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[15];
  v13 = v0[22];
  v14 = v0[14];
  v15 = v0[16];
  sub_2753B6938();
  swift_dynamicCast();
  v4 = OUTLINED_FUNCTION_165();
  v5(v4);
  OUTLINED_FUNCTION_150_0(v13);
  (*(v3 + 16))(v15, v13 + *(v2 + 36), v14);
  sub_2753B6998();
  v0[28] = *(v1 + 32);
  v0[29] = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v0[30] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v6, v7, MEMORY[0x277D64EF8]);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_131_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_275306578()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 224);

  v2 = OUTLINED_FUNCTION_79_0();
  *(v0 + 248) = v1(v2);
  v3 = OUTLINED_FUNCTION_39_0();
  v4(v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_275306608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = v10[27];
  v12 = v10[19];
  v13 = v10[16];
  v14 = v10[11];
  v16 = v10[7];
  v15 = v10[8];
  v17 = swift_task_alloc();
  v10[32] = v17;
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v12;
  v17[5] = v15;
  v17[6] = v11;
  v17[7] = v13;
  OUTLINED_FUNCTION_38_0(&qword_2753C1E28);
  v29 = v18;
  v19 = swift_task_alloc();
  v10[33] = v19;
  *v19 = v10;
  v19[1] = sub_2753066F0;
  OUTLINED_FUNCTION_111_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10);
}

uint64_t sub_2753066F0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 272) = v5;
  *(v3 + 280) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_275306800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_226();
  if (*(*(v16 + 272) + 16))
  {
    v49 = *(v16 + 104);
    v51 = *(v16 + 80);
    (*(*(v16 + 120) + 8))(*(v16 + 128), *(v16 + 112));
    v17 = OUTLINED_FUNCTION_97_0();
    v18(v17);
    v19 = OUTLINED_FUNCTION_96_0();
    v20(v19);

    OUTLINED_FUNCTION_175();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, v49, v51, a13, a14, a15, a16);
  }

  else
  {

    sub_275314678();
    OUTLINED_FUNCTION_113_0();
    sub_2753B62D8();
    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    *(v16 + 288) = 9;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    sub_2753B69A8();
    v30 = *(v16 + 24);
    *(v16 + 32) = *(v16 + 16);
    *(v16 + 40) = v30;
    sub_2753146CC();
    OUTLINED_FUNCTION_115();
    sub_2753B62B8();

    sub_2753B62C8();
    sub_2753B62A8();
    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_198(v31, v32, v33, v34, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    v52 = swift_allocError();
    OUTLINED_FUNCTION_71_0();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_159_0();
    v48 = *(v16 + 104);
    v50 = *(v16 + 80);
    (*(v35 + 8))(v30, *(v16 + 112));
    v36 = OUTLINED_FUNCTION_107_0();
    v37(v36);
    v38 = OUTLINED_FUNCTION_129_0();
    v39(v38);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_175();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v48, v50, v52, a13, a14, a15, a16);
  }
}

uint64_t sub_275306B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();

  OUTLINED_FUNCTION_159_0();
  v31 = v14[13];
  v32 = v14[10];
  v33 = v16;
  (*(v17 + 8))(v15, v14[14]);
  v18 = OUTLINED_FUNCTION_107_0();
  v19(v18);
  v20 = OUTLINED_FUNCTION_129_0();
  v21(v20);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, a12, a13, a14);
}

uint64_t sub_275306C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a5;
  v7[9] = a7;
  v7[6] = a3;
  v7[7] = a4;
  v7[4] = a1;
  v7[5] = a2;
  return MEMORY[0x2822009F8](sub_275306C30, 0, 0);
}

uint64_t sub_275306C30()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_112_0();
  sub_2753B69B8();
  sub_2753B69A8();
  v0[10] = v0[3];
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_275306CEC;
  OUTLINED_FUNCTION_75_0();

  return MusicContentStorage.Operations.relatedContent(to:as:)();
}

uint64_t sub_275306CEC()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {

    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t FacetCollection<>.MusicKitRelatedContentElement.value<A, B>(from:for:)()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_184(v1, v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v8, v9, v10, MEMORY[0x277D64F00]);
  v0[8] = v11;
  OUTLINED_FUNCTION_75(v11);
  v12 = OUTLINED_FUNCTION_138_0();
  v0[9] = v12;
  v0[10] = OUTLINED_FUNCTION_238(v12, v13, v14, v15);
  OUTLINED_FUNCTION_93_0();
  v16 = sub_2753B72A8();
  v0[11] = v16;
  OUTLINED_FUNCTION_17_1(v16);
  v0[12] = v17;
  v0[13] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_87_0();
  v0[14] = v18;
  v0[15] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_88_0();
  v0[16] = v19;
  v0[17] = OUTLINED_FUNCTION_138_0();
  v20 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_275306F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_202();
  v11 = OUTLINED_FUNCTION_54_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_59_0();
  if (v13)
  {
    OUTLINED_FUNCTION_202();
    OUTLINED_FUNCTION_151_0();
    v16 = OUTLINED_FUNCTION_96_0();
    v17(v16);
    v18 = swift_task_alloc();
    *(v10 + 144) = v18;
    *v18 = v10;
    OUTLINED_FUNCTION_158_0(v18);
    OUTLINED_FUNCTION_111_0();

    return sub_275306124(v19, v20, v21, v22, v23);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_128_0(v13, v14, v15, *(v10 + 80));
    v27(v26);
    sub_275314678();
    OUTLINED_FUNCTION_124_0(54);
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_149_0();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_83_0();
    sub_2753B62A8();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_193(v28, v29, v30, v31, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_25_0();
    swift_allocError();
    OUTLINED_FUNCTION_52_0();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_229();

    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_111_0();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }
}

uint64_t sub_275307168()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_275307274()
{
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_98_0();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 160);

  return v3(v4);
}

uint64_t sub_275307320()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.prepare(in:)();
}

uint64_t sub_2753073AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitRelatedContentElement.availability<A>(of:)(a1, a2, a5, a3, a4);
}

uint64_t sub_275307474(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_275317974;

  return FacetCollection<>.MusicKitRelatedContentElement.value<A, B>(from:for:)();
}

uint64_t FacetCollection<>.MusicKitTransitionInfoElement.availability<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_117_0();
  v5[50] = v7;
  v5[51] = v8;
  v5[48] = v9;
  v5[49] = v10;
  v5[47] = v11;
  v12 = sub_2753B6A38();
  v5[52] = v12;
  OUTLINED_FUNCTION_17_1(v12);
  v5[53] = v13;
  v5[54] = OUTLINED_FUNCTION_138_0();
  v5[55] = *(v6 + 16);
  v5[56] = *(v6 + 24);
  OUTLINED_FUNCTION_95_0();
  v5[57] = type metadata accessor for FacetCollection<>.FullyQualifiedContentRegistrationElement(v14, v15, v16, v17);
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v18 = sub_2753B6C18();
  v5[58] = v18;
  OUTLINED_FUNCTION_17_1(v18);
  v5[59] = v19;
  v5[60] = OUTLINED_FUNCTION_176();
  v5[61] = swift_task_alloc();
  OUTLINED_FUNCTION_2_1();
  v5[62] = v20;
  v5[63] = OUTLINED_FUNCTION_138_0();
  v21 = type metadata accessor for SongTransitionInfo(0);
  OUTLINED_FUNCTION_75(v21);
  v5[64] = OUTLINED_FUNCTION_138_0();
  v22 = sub_2753B6878();
  v5[65] = v22;
  OUTLINED_FUNCTION_17_1(v22);
  v5[66] = v23;
  v5[67] = OUTLINED_FUNCTION_138_0();
  sub_2753169C4(0, &qword_2809C1480, MEMORY[0x277D85B28], MEMORY[0x277D64FF8], MEMORY[0x277D64FF0]);
  v5[68] = v24;
  OUTLINED_FUNCTION_17_1(v24);
  v5[69] = v25;
  v5[70] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_2_1();
  v5[71] = v26;
  v5[72] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_93_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[73] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_75(AssociatedTypeWitness);
  v5[74] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_82_0();
  v28 = sub_2753B69B8();
  v5[75] = v28;
  OUTLINED_FUNCTION_17_1(v28);
  v5[76] = v29;
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_2753078A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v7 = v6[56];
  sub_2753B6938();
  v8 = OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189(v8);
  OUTLINED_FUNCTION_70_0();
  sub_2753B6998();
  v6[79] = *(v7 + 32);
  v6[80] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v6[81] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v9, v10, MEMORY[0x277D64EF8]);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_275307988()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 632);

  v2 = OUTLINED_FUNCTION_79_0();
  *(v0 + 656) = v1(v2);
  v3 = OUTLINED_FUNCTION_39_0();
  v4(v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_275307A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = swift_task_alloc();
  *(v9 + 664) = v10;
  OUTLINED_FUNCTION_56_0(v10);
  OUTLINED_FUNCTION_38_0(&qword_2753C1E60);
  v23 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v9 + 672) = v12;
  *v12 = v13;
  v12[1] = sub_275307AF0;
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_241();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_275307AF0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 680) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275307BF0()
{
  v75 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v2;
  v3 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v3;
  v4 = FacetCollection<>.extractAdamIDForLogging()(v1);
  *(v0 + 688) = v4;
  *(v0 + 696) = v5;
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 112);
  *(v0 + 200) = *(v0 + 96);
  *(v0 + 216) = v8;
  *(v0 + 232) = *(v0 + 128);
  if (v6 >> 60 == 15)
  {
    v9 = *(v0 + 448);
    v10 = OUTLINED_FUNCTION_211();
    v11(v10);
    OUTLINED_FUNCTION_101_0();
    FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)(v12, v9, v13);
    sub_2753B69A8();
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);
    v16 = OUTLINED_FUNCTION_136_0();
    type metadata accessor for MediaAPIResourceRequest.Option(v16, v17, v18, v19);
    sub_2753B76C8();
    swift_allocObject();
    sub_2753B6FF8();
    *v20 = 3;
    *(v0 + 360) = sub_2752E6688();
    *(v0 + 304) = v14;
    *(v0 + 312) = v15;
    sub_2753B70B8();
    sub_275314624();
    sub_2753B6CD8();
    sub_2753B6D18();
    *(v0 + 368) = *(v0 + 352);

    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    *(v0 + 704) = v21;
    *v21 = v22;
    v21[1] = sub_27530821C;
    v23 = *(v0 + 488);
    v24 = *(v0 + 456);
    v25 = *(v0 + 400);
    v26 = *(v0 + 408);
    v27 = *(v0 + 384);

    return FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)(v23, v27, v24, v25, v26);
  }

  else
  {
    v29 = v5;
    v67 = v4;
    v69 = v7;
    v70 = v6;
    OUTLINED_FUNCTION_180();
    v30 = *(v0 + 560);
    v31 = *(v0 + 552);
    v32 = *(v0 + 544);
    MEMORY[0x277C75B00]();
    OUTLINED_FUNCTION_76_0();
    sub_2753B6838();
    (*(v31 + 8))(v30, v32);
    v33 = OUTLINED_FUNCTION_79_0();
    v34(v33);

    v35 = sub_2753B6858();
    v36 = sub_2753B7248();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 536);
    v39 = *(v0 + 528);
    v40 = *(v0 + 520);
    if (v37)
    {
      v66 = v36;
      v41 = swift_slowAlloc();
      v71[0] = swift_slowAlloc();
      *v41 = 136446466;
      v42 = sub_275314A34(v67, v29, v71);
      v68 = v40;
      v43 = v42;

      *(v41 + 4) = v43;
      *(v41 + 12) = 2082;
      sub_2753B69A8();
      v44 = OUTLINED_FUNCTION_69_0();
      v45(v44);
      sub_2753B6648();

      v46 = OUTLINED_FUNCTION_101_0();
      v49 = sub_275314A34(v46, v47, v48);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_2752E3000, v35, v66, "[TransitionInfo] Found transition info in ContentSystem cache for adamID: %{public}s, contentID: %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_170();

      (*(v39 + 8))(v38, v68);
    }

    else
    {
      v50 = OUTLINED_FUNCTION_69_0();
      v51(v50);

      (*(v39 + 8))(v38, v40);
    }

    v52 = *(v0 + 680);
    v53 = *(v0 + 512);
    v71[0] = v69;
    v71[1] = v70;
    v54 = *(v0 + 216);
    v72 = *(v0 + 200);
    v73 = v54;
    v74 = *(v0 + 232);
    sub_275308E04(v53);
    if (v52)
    {
      sub_275316048(v0 + 80, &qword_2809C1488, &type metadata for TransitionInfoStorage);

      OUTLINED_FUNCTION_15_1();
      v55 = OUTLINED_FUNCTION_98_0();
      v56(v55);

      OUTLINED_FUNCTION_19_0();
    }

    else
    {
      v58 = *(v0 + 376);
      sub_275316048(v0 + 80, &qword_2809C1488, &type metadata for TransitionInfoStorage);
      OUTLINED_FUNCTION_31_0();
      v59 = OUTLINED_FUNCTION_69_0();
      sub_2753168D8(v59, v60, v61);
      v62 = *MEMORY[0x277D65210];
      OUTLINED_FUNCTION_30_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      sub_2753B6C18();
      OUTLINED_FUNCTION_8_2();
      (*(v63 + 104))(v58, v62);
      OUTLINED_FUNCTION_180();
      OUTLINED_FUNCTION_15_1();
      v64 = OUTLINED_FUNCTION_105_0();
      v65(v64);

      OUTLINED_FUNCTION_35_0();
    }

    return v57();
  }
}

uint64_t sub_27530821C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 712) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_275308334(uint64_t a1)
{
  v90 = v1;
  v4 = OUTLINED_FUNCTION_48_0();
  v5(v4);
  v6 = OUTLINED_FUNCTION_92_0();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x277D65210])
  {
    v9 = *(v1 + 480);
    v10 = OUTLINED_FUNCTION_126_0();
    v11(v10);
    v13 = *v9;
    v12 = v9[1];
    sub_27535A340(v9[3], &v82);
    v14 = v88 | (v89 << 16);
    if ((~v14 & 0xFE00FE) == 0)
    {
      OUTLINED_FUNCTION_233();

      v15 = OUTLINED_FUNCTION_97_0();
      v16(v15);
      OUTLINED_FUNCTION_47_0();
      *v2 = v17;
      v2[1] = v18;
      v19 = *MEMORY[0x277D65208];
LABEL_10:
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      sub_2753B6C18();
      OUTLINED_FUNCTION_8_2();
      (*(v44 + 104))(v2, v19);
      goto LABEL_11;
    }

    v31 = v83;
    v33 = v84;
    v32 = v85;
    v34 = v86;
    v35 = v87;
    *(v1 + 144) = v82;
    *(v1 + 152) = v31;
    *(v1 + 160) = v33;
    *(v1 + 168) = v32;
    *(v1 + 176) = v34;
    *(v1 + 184) = v35;
    *(v1 + 194) = BYTE2(v14);
    *(v1 + 192) = v14;
    v36 = 1 << ((v14 >> 21) & 7);
    if ((v36 & 0x1A) != 0)
    {
      v82 = 0;
      v83 = 0xE000000000000000;
      sub_2753B7398();
      v37 = v83;
      *(v1 + 320) = v82;
      *(v1 + 328) = v37;
      OUTLINED_FUNCTION_122_0();
      MEMORY[0x277C76100](v38 + 10, v39 | 0x8000000000000000);
      *(v1 + 195) = 0x4030200u >> (8 * (((v14 >> 21) & 7) - 1));
      sub_2753B7468();
      MEMORY[0x277C76100](93, 0xE100000000000000);
      sub_2753B74A8();
      OUTLINED_FUNCTION_224();
      return;
    }

    if ((v36 & 0x21) != 0)
    {
      v80 = *(v1 + 712);
      v77 = *(v1 + 688);
      v78 = *(v1 + 696);
      v49 = *(v1 + 448);
      v75 = *(v1 + 440);
      v76 = *(v1 + 624);
      v73 = *(v1 + 400);
      v74 = *(v1 + 376);

      sub_275309690(v76, v13, v12, (v1 + 144), v77, v78, v74, v75, v73, v49);
      if (v80)
      {
        (*(*(v1 + 472) + 8))(*(v1 + 488), *(v1 + 464));

        v50 = OUTLINED_FUNCTION_133_0();
        sub_2752FBB58(v50, v51, v52, v53, v54, v35, v14);

        v55 = OUTLINED_FUNCTION_98_0();
        v56(v55);

        OUTLINED_FUNCTION_19_0();
LABEL_12:
        OUTLINED_FUNCTION_224();

        __asm { BRAA            X1, X16 }
      }

      (*(*(v1 + 472) + 8))(*(v1 + 488), *(v1 + 464));

      v68 = OUTLINED_FUNCTION_133_0();
      sub_2752FBB58(v68, v69, v70, v71, v72, v35, v14);
    }

    else
    {
      v58 = *(v1 + 472);
      v79 = *(v1 + 464);
      v81 = *(v1 + 488);
      v59 = *(v1 + 376);

      v60 = OUTLINED_FUNCTION_133_0();
      sub_2752FBB58(v60, v61, v62, v63, v64, v35, v14);
      (*(v58 + 8))(v81, v79);
      OUTLINED_FUNCTION_142_0();
      *v59 = v65;
      v59[1] = 0x80000002753B8900;
      v66 = *MEMORY[0x277D65208];
      OUTLINED_FUNCTION_30_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      sub_2753B6C18();
      OUTLINED_FUNCTION_8_2();
      (*(v67 + 104))(v59, v66);
    }

LABEL_11:
    OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_15_1();
    v45 = OUTLINED_FUNCTION_105_0();
    v46(v45);

    OUTLINED_FUNCTION_35_0();
    goto LABEL_12;
  }

  v19 = v8;
  if (v8 == *MEMORY[0x277D65218])
  {
    v21 = *(v1 + 480);
    v20 = *(v1 + 488);
    v22 = *(v1 + 464);
    v23 = *(v1 + 472);
    v24 = *(v1 + 376);

    OUTLINED_FUNCTION_205();
    v25(v20, v22);

    v23 = (v23 + 96);
    v26 = OUTLINED_FUNCTION_107_0();
    v27(v26);
    sub_275314944(0);
    v28 = OUTLINED_FUNCTION_74_0();
    v23(v28);
    sub_275315C8C((v21 + v22), v1 + 248);
    v29 = OUTLINED_FUNCTION_127_0();
    v23(v29);
    sub_275315C8C((v1 + 248), v24 + v20);
    OUTLINED_FUNCTION_30_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    sub_2753B6C18();
    OUTLINED_FUNCTION_8_2();
    (*(v30 + 104))(v24, v19);
    goto LABEL_11;
  }

  if (v8 == *MEMORY[0x277D65208])
  {
    OUTLINED_FUNCTION_233();

    v40 = *(v3 + 8);
    v41 = OUTLINED_FUNCTION_97_0();
    v40(v41);
    v42 = OUTLINED_FUNCTION_101_0();
    v40(v42);
    OUTLINED_FUNCTION_142_0();
    *v2 = v43;
    v2[1] = 0x80000002753B86B0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_224();

  sub_2753B7708();
}

uint64_t sub_275308A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();

  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_15_1();
  v27 = *(v14 + 480);
  v28 = *(v14 + 432);
  v29 = v15;
  v16 = OUTLINED_FUNCTION_105_0();
  v17(v16);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, a12, a13, a14);
}

uint64_t sub_275308B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();

  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_15_1();
  v27 = *(v14 + 480);
  v28 = *(v14 + 432);
  v29 = v15;
  v16 = OUTLINED_FUNCTION_105_0();
  v17(v16);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, a12, a13, a14);
}

uint64_t sub_275308C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a4;
  v6[8] = a6;
  v6[5] = a2;
  v6[6] = a3;
  v6[4] = a1;
  return MEMORY[0x2822009F8](sub_275308C48, 0, 0);
}

uint64_t sub_275308C48()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_89_0();
  sub_2753B69A8();
  OUTLINED_FUNCTION_178();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 80) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_91_0(v1);

  return MusicContentStorage.Operations.mediaAPITransitionInfo(for:)();
}

uint64_t sub_275308CE8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_58_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_19_0();

    return v10();
  }
}

uint64_t sub_275308E04@<X0>(double *a2@<X8>)
{
  v69 = a2;
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v3, v4, v5, MEMORY[0x277D64F00]);
  v81 = v6;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v7);
  v80 = &v65 - v8;
  v75 = sub_2753B67C8();
  OUTLINED_FUNCTION_2_1();
  v71 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10();
  v76 = v12 - v11;
  v79 = sub_2753B6808();
  OUTLINED_FUNCTION_2_1();
  v74 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_6_0();
  sub_2753167D4(0, v18, v19, MEMORY[0x277D83D88]);
  v21 = OUTLINED_FUNCTION_75(v20);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v65 - v25;
  v27 = v2[3];
  v77 = v2[2];
  v78 = v27;
  v28 = v2[4];
  v72 = v2[5];
  v73 = v28;
  v29 = v2[7];
  v70 = v2[6];
  sub_2753B5FF8();
  OUTLINED_FUNCTION_199();
  swift_allocObject();
  sub_2753B5FE8();
  sub_275316E50();
  v30 = v82;
  sub_2753B5FD8();
  if (v30)
  {
  }

  v66 = v24;
  v67 = 0;
  v65 = v29;
  v68 = v17;
  v82 = v26;

  memcpy(v86, v87, 0x2F9uLL);
  if (v86[35])
  {
    sub_275316EA4(v86);
    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    v85[0] = 14;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    v32 = OUTLINED_FUNCTION_221();
    sub_275316CAC(v32, v33, v34, v35, v36);
    sub_275314720();
    OUTLINED_FUNCTION_25_0();
    swift_allocError();
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_107_0();
    sub_2753B62E8();
    return swift_willThrow();
  }

  v37 = v86[34];
  v38 = sub_2753B6818();
  OUTLINED_FUNCTION_140_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  memcpy(v85, &v86[76], sizeof(v85));
  if (sub_275316EF8(v85) == 1)
  {
    sub_275316EA4(v86);
    v42 = v67;
  }

  else
  {
    v81 = v37;
    sub_2753B6028();
    OUTLINED_FUNCTION_199();
    swift_allocObject();
    memcpy(v84, &v86[76], sizeof(v84));
    sub_275316FE8(v84, v83);
    sub_2753B6018();
    memcpy(v83, v85, sizeof(v83));
    sub_275317044();
    v47 = v67;
    v48 = sub_2753B6008();
    v42 = v47;
    if (v47)
    {
      OUTLINED_FUNCTION_6_0();
      sub_275316AC4(v82, v50, v51);

      sub_275316EA4(v86);
      return sub_275316048(&v86[76], &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    }

    v53 = v48;
    v54 = v49;

    sub_275316048(&v86[76], &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    swift_allocObject();
    sub_2753B5FE8();
    sub_275315BB8(&qword_2809C12F8, MEMORY[0x277D2AC90], MEMORY[0x277D2ACA8]);
    v55 = v66;
    sub_2753B5FD8();
    OUTLINED_FUNCTION_6_0();
    sub_275316AC4(v82, v57, v58);

    sub_2752F2350(v53, v54);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v38);
    sub_275316C18(v55, v82);
    sub_275316EA4(v86);
    v37 = v81;
  }

  v43 = LOBYTE(v86[95]);
  v44 = LOBYTE(v86[95]) == 2;
  swift_allocObject();
  sub_2753B5FE8();
  sub_275315BB8(&qword_2809C12E0, MEMORY[0x277D2AAB8], MEMORY[0x277D2AAD0]);
  sub_2753B5FD8();
  if (v42)
  {
    OUTLINED_FUNCTION_6_0();
    sub_275316AC4(v82, v45, v46);
  }

  LODWORD(v78) = v43;
  LODWORD(v80) = v44;

  swift_allocObject();
  sub_2753B5FE8();
  sub_275315BB8(&qword_2809C12D8, MEMORY[0x277D2A988], MEMORY[0x277D2A9A0]);
  v52 = v75;
  sub_2753B5FD8();
  v81 = v37;

  swift_allocObject();
  sub_2753B5FE8();
  sub_2753167D4(0, &qword_2809C12B0, MEMORY[0x277CD8320], MEMORY[0x277D83940]);
  sub_275316F10();
  sub_2753B5FD8();
  v56 = v79;
  v59 = v80 | v78;

  v60 = v52;
  v61 = v84[0];
  v62 = v81 / 1000.0;
  v63 = type metadata accessor for SongTransitionInfo(0);
  v64 = v69;
  (*(v71 + 32))(v69 + v63[5], v76, v60);
  (*(v74 + 32))(v64 + v63[6], v68, v56);
  result = sub_275316C18(v82, v64 + v63[8]);
  *v64 = v62;
  *(v64 + v63[7]) = v61;
  *(v64 + v63[9]) = v59 & 1;
  return result;
}

void sub_275309690(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v81 = a6;
  v75 = a5;
  v86 = a4;
  v87 = a2;
  v88 = a3;
  MEMORY[0x28223BE20](a1);
  v85 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2753B69B8();
  v80 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v79 = &v70 - v14;
  v15 = sub_2753B6878();
  v82 = *(v15 - 8);
  v83 = v15;
  MEMORY[0x28223BE20](v15);
  v89 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753169C4(0, &qword_2809C1480, MEMORY[0x277D85B28], MEMORY[0x277D64FF8], MEMORY[0x277D64FF0]);
  v77 = *(v17 - 8);
  v78 = v17;
  MEMORY[0x28223BE20](v17);
  v76 = &v70 - v18;
  v19 = sub_2753B6AC8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v13;
  sub_2753B6978();
  v99[0] = v91[0];
  *(v99 + 13) = *(v91 + 13);
  sub_275314888(v99);
  v23 = *MEMORY[0x277D65198];
  v24 = sub_2753B6AB8();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  (*(v20 + 104))(v22, *MEMORY[0x277D651A0], v19);
  if (sub_2753B6AA8())
  {
    v73 = v22;
    v74 = v19;
    v72 = a7;
    v25 = v90;
    sub_2753104C4(v97);
    if (v25)
    {
      LOBYTE(v91[0]) = 4;
      sub_2753148DC(0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_2753BE420;
      *(v26 + 32) = v25;
      sub_275316CAC(0, &qword_2809C1440, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
      sub_275314720();
      swift_allocError();
      v27 = v25;
      v28 = sub_275314678();
      MEMORY[0x277C755D0](v91, 0xD000000000000062, 0x80000002753B8DF0, v26, &type metadata for MusicContentError, v28);
      swift_willThrow();

      (*(v20 + 8))(v73, v74);
    }

    else
    {
      v90 = 0;
      v98[0] = v97[0];
      v98[1] = v97[1];
      v98[2] = v97[2];
      v32 = v86;
      v33 = v86[1];
      v94 = *v86;
      v95 = v33;
      v96[0] = v86[2];
      *(v96 + 15) = *(v86 + 47);
      v34 = v88;

      sub_275317098(v32, v91);
      v35 = v87;
      v87 = a8;
      v88 = a10;
      sub_275319620(v35, v34, &v94, v91);
      v86 = *&v91[0];
      v94 = v91[1];
      v95 = v92;
      v96[0] = *v93;
      *(v96 + 15) = *&v93[15];
      v71 = *(&v91[0] + 1);
      if (*(&v91[0] + 1))
      {
        v36 = v76;
        MEMORY[0x277C75B00]();
        v37 = v78;
        sub_2753B6838();
        (*(v77 + 8))(v36, v37);
        v38 = v79;
        v39 = v80;
        v40 = *(v80 + 16);
        v78 = a1;
        v41 = v84;
        v40(v79, a1, v84);
        v42 = v81;

        v43 = sub_2753B6858();
        v44 = sub_2753B7248();

        v45 = os_log_type_enabled(v43, v44);
        v70 = v20;
        if (v45)
        {
          v46 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v100 = v77;
          *v46 = 136446466;
          *(v46 + 4) = sub_275314A34(v75, v42, &v100);
          *(v46 + 12) = 2082;
          v47 = v44;
          sub_2753B69A8();
          (*(v39 + 8))(v38, v41);
          v48 = sub_2753B6648();
          v50 = v49;

          v51 = sub_275314A34(v48, v50, &v100);

          *(v46 + 14) = v51;
          _os_log_impl(&dword_2752E3000, v43, v47, "[TransitionInfo] Would need to make a MediaAPI request for adamID: %{public}s, contentID: %{public}s", v46, 0x16u);
          v52 = v77;
          swift_arrayDestroy();
          MEMORY[0x277C77190](v52, -1, -1);
          MEMORY[0x277C77190](v46, -1, -1);
        }

        else
        {
          (*(v39 + 8))(v38, v41);
        }

        (*(v82 + 8))(v89, v83);
        v53 = v72;
        sub_275314944(0);
        v55 = (v53 + *(v54 + 48));
        v56 = *MEMORY[0x277D650C8];
        v57 = sub_2753B6898();
        (*(*(v57 - 8) + 104))(v53, v56, v57);
        v58 = *MEMORY[0x277D65140];
        v59 = sub_2753B6A38();
        (*(*(v59 - 8) + 104))(v53, v58, v59);
        v60 = v87;
        *&v91[0] = v86;
        *(&v91[0] + 1) = v71;
        v91[1] = v94;
        v92 = v95;
        *v93 = v96[0];
        *&v93[15] = *(v96 + 15);
        v61 = v88;
        type metadata accessor for MediaAPIResourceRequest.Option(255, v87, v88, v62);
        sub_2753B76C8();
        swift_allocObject();
        sub_2753B6FF8();
        *v63 = 512;
        *(v63 + 2) = 3;
        sub_2752E6688();
        v64 = v85;
        sub_2753B6998();
        v55[3] = type metadata accessor for MediaAPIResourceRequest(0, v60, v61, v65);
        v55[4] = swift_getWitnessTable();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
        sub_275319DD0(v91, v98, v64, v60, v61, boxed_opaque_existential_1);
        (*(v70 + 8))(v73, v74);
        v67 = *MEMORY[0x277D65218];
        type metadata accessor for FacetCollection<>.MusicKitTransitionInfoElement(255, v60, v61, v68);
        swift_getWitnessTable();
        v69 = sub_2753B6C18();
        (*(*(v69 - 8) + 104))(v53, v67, v69);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    (*(v20 + 8))(v22, v19);
    *a7 = 0x6F7774656E206F4ELL;
    a7[1] = 0xEA00000000006B72;
    v29 = *MEMORY[0x277D65208];
    type metadata accessor for FacetCollection<>.MusicKitTransitionInfoElement(255, a8, a10, v30);
    swift_getWitnessTable();
    v31 = sub_2753B6C18();
    (*(*(v31 - 8) + 104))(a7, v29, v31);
  }
}

uint64_t sub_27530A0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a1;
  v6[33] = a3;
  sub_275316CAC(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  v6[36] = v8;
  v6[37] = swift_task_alloc();
  type metadata accessor for SongTransitionInfo(0);
  v6[38] = swift_task_alloc();
  v9 = *(a4 + 16);
  v6[39] = v9;
  v6[40] = *(v9 - 8);
  v6[41] = swift_task_alloc();
  v10 = sub_2753B6878();
  v6[42] = v10;
  v6[43] = *(v10 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  sub_2753169C4(0, &qword_2809C1480, MEMORY[0x277D85B28], MEMORY[0x277D64FF8], MEMORY[0x277D64FF0]);
  v6[46] = v11;
  v6[47] = *(v11 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_getAssociatedTypeWitness();
  v6[51] = swift_task_alloc();
  v6[52] = *(a4 + 24);
  v12 = sub_2753B69B8();
  v6[53] = v12;
  v6[54] = *(v12 - 8);
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27530A400, 0, 0);
}

uint64_t sub_27530A400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_226();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[57];
  v29 = v24[53];
  v28 = v24[54];
  v30 = v24[49];
  v31 = v24[46];
  v32 = v24[47];
  v62 = v24[56];
  sub_2753B6938();
  swift_dynamicCast();
  v33 = FacetCollection<>.extractAdamIDForLogging()(v29);
  v35 = v34;
  v60 = v33;
  v24[58] = v33;
  v24[59] = v34;
  MEMORY[0x277C75B00]();
  OUTLINED_FUNCTION_76_0();
  sub_2753B6838();
  v36 = *(v32 + 8);
  v24[60] = v36;
  v24[61] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v30, v31);
  v37 = *(v28 + 16);
  v24[62] = v37;
  v24[63] = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37(v62, v27, v29);

  v38 = sub_2753B6858();
  v39 = sub_2753B7248();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v24[54];
    v59 = v24[43];
    v61 = v24[42];
    v63 = v24[45];
    v41 = swift_slowAlloc();
    a13 = swift_slowAlloc();
    *v41 = 136446466;
    *(v41 + 4) = sub_275314A34(v60, v35, &a13);
    *(v41 + 12) = 2082;
    sub_2753B69A8();
    v42 = *(v40 + 8);
    v43 = OUTLINED_FUNCTION_69_0();
    v42(v43);
    sub_2753B6648();

    v44 = OUTLINED_FUNCTION_101_0();
    v47 = sub_275314A34(v44, v45, v46);

    *(v41 + 14) = v47;
    _os_log_impl(&dword_2752E3000, v38, v39, "[TransitionInfo] Executed MediaAPI network request for transition info - adamID: %{public}s, contentID: %{public}s", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_170();
    OUTLINED_FUNCTION_170();

    v48 = *(v59 + 8);
    v48(v63, v61);
  }

  else
  {
    v49 = v24[43];
    v42 = *(v24[54] + 8);
    (v42)(v24[56], v24[53]);

    v48 = *(v49 + 8);
    v50 = OUTLINED_FUNCTION_69_0();
    (v48)(v50);
  }

  v24[65] = v42;
  v24[64] = v48;
  v51 = v24[52];
  sub_2753B6998();
  v24[66] = *(v51 + 32);
  v24[67] = (v51 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v24[68] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v52, v53, MEMORY[0x277D64EF8]);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2822009F8](v54, v55, v56);
}

uint64_t sub_27530A734()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 528);

  v2 = OUTLINED_FUNCTION_79_0();
  *(v0 + 552) = v1(v2);
  v3 = OUTLINED_FUNCTION_39_0();
  v4(v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_27530A7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = swift_task_alloc();
  *(v9 + 560) = v10;
  OUTLINED_FUNCTION_56_0(v10);
  OUTLINED_FUNCTION_38_0(&qword_2753C1E60);
  v23 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v9 + 568) = v12;
  *v12 = v13;
  v12[1] = sub_27530A8A0;
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_241();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_27530A8A0()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 576) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_27530A9E0()
{
  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v0 + 112) = v2;
  *(v0 + 128) = v3;
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v0 + 144) = v1;
  *(v0 + 160) = v2;
  *(v0 + 176) = v3;
  if (v4 >> 60 == 15)
  {
    v6 = *(v0 + 560);

    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v0 + 584) = 10;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    sub_2753B69A8();
    *(v0 + 208) = *(v0 + 192);
    *(v0 + 216) = *(v0 + 200);
    sub_2753146CC();
    sub_2753B62B8();

    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    v7 = OUTLINED_FUNCTION_222();
    sub_275316CAC(v7, v8, v9, v10, v11);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_101_0();
    sub_2753B62E8();
    swift_willThrow();
  }

  else
  {
    v48 = v5;
    v49 = v4;
    v45 = *(v0 + 496);
    v12 = *(v0 + 480);
    v13 = *(v0 + 384);
    v14 = *(v0 + 368);
    MEMORY[0x277C75B00]();
    OUTLINED_FUNCTION_76_0();
    sub_2753B6838();
    v12(v13, v14);
    v15 = OUTLINED_FUNCTION_110_0();
    v45(v15);

    v16 = sub_2753B6858();
    v17 = sub_2753B7248();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 520);
    v20 = *(v0 + 512);
    v21 = *(v0 + 472);
    if (v18)
    {
      v22 = *(v0 + 464);
      v23 = *(v0 + 440);
      v24 = *(v0 + 424);
      v46 = *(v0 + 336);
      v47 = *(v0 + 352);
      v44 = *(v0 + 512);
      v25 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v25 = 136446466;
      v26 = sub_275314A34(v22, v21, v50);

      *(v25 + 4) = v26;
      *(v25 + 12) = 2082;
      sub_2753B69A8();
      v19(v23, v24);
      v27 = sub_2753B6648();
      v29 = v28;

      v30 = sub_275314A34(v27, v29, v50);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_2752E3000, v16, v17, "[TransitionInfo] Successfully retrieved transition info from MediaAPI for adamID: %{public}s, contentID: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_170();

      v44(v47, v46);
    }

    else
    {
      v19(*(v0 + 440), *(v0 + 424));

      v31 = OUTLINED_FUNCTION_90_0();
      v20(v31);
    }

    v32 = *(v0 + 576);
    v33 = *(v0 + 304);
    v50[0] = v48;
    v50[1] = v49;
    v34 = *(v0 + 160);
    v51 = *(v0 + 144);
    v52 = v34;
    v53 = *(v0 + 176);
    sub_275308E04(v33);
    v6 = *(v0 + 560);
    if (!v32)
    {
      v38 = *(v0 + 520);
      v39 = *(v0 + 456);
      v40 = *(v0 + 424);
      sub_275316048(v0 + 80, &qword_2809C1488, &type metadata for TransitionInfoStorage);
      OUTLINED_FUNCTION_31_0();
      v41 = OUTLINED_FUNCTION_101_0();
      sub_2753168D8(v41, v42, v43);
      v38(v39, v40);

      OUTLINED_FUNCTION_35_0();
LABEL_9:
      OUTLINED_FUNCTION_225();

      __asm { BRAA            X1, X16 }
    }

    sub_275316048(v0 + 80, &qword_2809C1488, &type metadata for TransitionInfoStorage);
  }

  OUTLINED_FUNCTION_120_0();
  v35(v6);

  OUTLINED_FUNCTION_19_0();
  goto LABEL_9;
}

uint64_t sub_27530AF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_120_0();
  v27 = *(v15 + 304);
  v28 = *(v15 + 296);
  v29 = v16;
  v17(v14);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, a12, a13, a14);
}

uint64_t FacetCollection<>.MusicKitTransitionInfoElement.value<A, B>(from:for:)()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_155_0(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_41_0(v9, v10, v11, v12);
  v0[9] = v13;
  OUTLINED_FUNCTION_75(v13);
  v14 = OUTLINED_FUNCTION_138_0();
  v0[10] = v14;
  v0[11] = OUTLINED_FUNCTION_238(v14, v15, v16, v17);
  OUTLINED_FUNCTION_93_0();
  v18 = sub_2753B72A8();
  v0[12] = v18;
  OUTLINED_FUNCTION_17_1(v18);
  v0[13] = v19;
  v0[14] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_87_0();
  v0[15] = v20;
  v0[16] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_88_0();
  v0[17] = v21;
  v0[18] = OUTLINED_FUNCTION_138_0();
  v22 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_27530B1C0()
{
  OUTLINED_FUNCTION_144_0();
  v1 = OUTLINED_FUNCTION_54_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_59_0();
  v4 = v0[11];
  if (!v3)
  {
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];
    OUTLINED_FUNCTION_140_0();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v4);
    (*(v20 + 8))(v19, v21);
    sub_275314678();
    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_149_0();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_83_0();
    sub_2753B62A8();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_193(v25, v26, v27, v28, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_25_0();
    swift_allocError();
    OUTLINED_FUNCTION_52_0();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_232();

    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_172();

    __asm { BRAA            X1, X16 }
  }

  v5 = OUTLINED_FUNCTION_213();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v4);
  v7 = OUTLINED_FUNCTION_52_0();
  v8(v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[19] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_157_0(v9);
  OUTLINED_FUNCTION_172();

  return sub_27530A0B8(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_27530B3CC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27530B4D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.prepare(in:)();
}

uint64_t sub_27530B55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitTransitionInfoElement.availability<A>(of:)(a1, a2, a5, a3, a4);
}

uint64_t sub_27530B624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitTransitionInfoElement.value<A, B>(from:for:)();
}

uint64_t FacetCollection<>.MusicKitTransitionInfoOffline.availability<A>(of:)()
{
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  v0[9] = v3;
  v0[10] = v4;
  v0[7] = v5;
  v0[8] = v6;
  OUTLINED_FUNCTION_29_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v7 = sub_2753B6C18();
  v0[11] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v0[12] = v8;
  v0[13] = OUTLINED_FUNCTION_138_0();
  v9 = *(v2 + 16);
  v0[14] = v9;
  v10 = *(v2 + 24);
  v0[15] = v10;
  v0[16] = type metadata accessor for FacetCollection<>.FullyQualifiedContentRegistrationElement(255, v9, v10, v11);
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v12 = sub_2753B6C18();
  v0[17] = v12;
  OUTLINED_FUNCTION_17_1(v12);
  v0[18] = v13;
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  OUTLINED_FUNCTION_87_0();
  v0[21] = v14;
  v0[22] = OUTLINED_FUNCTION_138_0();
  v15 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_27530B898(uint64_t a1)
{
  OUTLINED_FUNCTION_68_0();
  v2 = v1[15];
  v3 = OUTLINED_FUNCTION_54_0();
  v4(v3);
  OUTLINED_FUNCTION_69_0();
  FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)(v5, v2, v6);
  v1[23] = v15;
  v1[5] = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v1[24] = v7;
  *v7 = v8;
  v7[1] = sub_27530B980;
  v9 = v1[20];
  v10 = v1[16];
  v11 = v1[9];
  v12 = v1[10];
  v13 = v1[8];

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)(v9, v13, v10, v11, v12);
}

uint64_t sub_27530B980()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27530BA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_66_0();
  v11 = OUTLINED_FUNCTION_48_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_92_0();
  v15 = v14(v13);
  if (v15 == *MEMORY[0x277D65210])
  {
    v16 = *(v10 + 152);

    v17 = OUTLINED_FUNCTION_96_0();
    v18(v17);
    v19 = *(v16 + 24);
    v20 = v19[2] + 1;
    v21 = v19;
    do
    {
      if (!--v20)
      {
        v43 = *(v10 + 88);
        v44 = *(v10 + 96);
        v45 = *(v10 + 56);

        v46 = OUTLINED_FUNCTION_90_0();
        v47(v46);
        OUTLINED_FUNCTION_47_0();
        *v45 = v48;
        v45[1] = v49;
        (*(v44 + 104))(v45, *MEMORY[0x277D65208], v43);
        goto LABEL_14;
      }

      v22 = v21 + 7;
      v23 = *(v21 + 82);
      v24 = *(v21 + 40);
      *(v10 + 274) = v23;
      *(v10 + 272) = v24;
      v21 = v22;
    }

    while (((v23 << 16) & 0xE00000) != 0);
    *(v10 + 208) = *(v22 - 3);
    *(v10 + 216) = *(v22 - 2);
    *(v10 + 224) = *(v22 - 1);
    *(v10 + 232) = *v22;
    *(v10 + 240) = v22[1];
    *(v10 + 248) = v22[2];

    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    *(v10 + 256) = v25;
    *v25 = v26;
    v25[1] = sub_27530BE0C;
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_179();

    return sub_27530C1CC(v27, v28, v29, v30, v31, v32);
  }

  else
  {
    v35 = v15;
    if (v15 == *MEMORY[0x277D65218])
    {
      v37 = *(v10 + 144);
      v36 = *(v10 + 152);

      v38 = OUTLINED_FUNCTION_96_0();
      v39(v38);
      sub_275314944(0);
      __swift_destroy_boxed_opaque_existential_1((v36 + *(v40 + 48)));
      sub_2753B6A38();
      OUTLINED_FUNCTION_9();
      (*(v41 + 8))(v36);
      v42 = *(v37 + 8);
      v35 = *MEMORY[0x277D65208];
    }

    else
    {
      if (v15 != *MEMORY[0x277D65208])
      {
        OUTLINED_FUNCTION_179();

        return sub_2753B7708();
      }

      v50 = *(v10 + 144);

      v42 = *(v50 + 8);
      v51 = OUTLINED_FUNCTION_129_0();
      v42(v51);
    }

    v52 = *(v10 + 88);
    v53 = *(v10 + 96);
    v54 = *(v10 + 56);
    (v42)(*(v10 + 160), *(v10 + 136));
    OUTLINED_FUNCTION_142_0();
    *v54 = v55;
    v54[1] = 0x80000002753B86B0;
    (*(v53 + 104))(v54, v35, v52);
LABEL_14:
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_179();

    return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10);
  }
}

uint64_t sub_27530BE0C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27530BF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  sub_2752FBB6C(*(v10 + 208), *(v10 + 216), *(v10 + 224), *(v10 + 232), *(v10 + 240), *(v10 + 248), *(v10 + 272) | (*(v10 + 274) << 16));
  v11 = OUTLINED_FUNCTION_96_0();
  v12(v11);
  OUTLINED_FUNCTION_95_0();
  v13();
  OUTLINED_FUNCTION_187();

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_111_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_27530BFD8()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27530C064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_177();
  v21 = *(v20 + 264);
  v42 = *(v20 + 248);
  v22 = *(v20 + 224);
  v38 = *(v20 + 232);
  v39 = *(v20 + 240);
  v24 = *(v20 + 208);
  v23 = *(v20 + 216);
  v25 = *(v20 + 272) | (*(v20 + 274) << 16);
  v26 = *(v20 + 144);
  v40 = *(v20 + 136);
  v41 = *(v20 + 160);
  v27 = *(v20 + 96);
  v43 = *(v20 + 88);
  v28 = *(v20 + 56);
  sub_2753B7398();
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x277C76100](0xD000000000000028);
  swift_getErrorValue();
  sub_2753B76E8();

  sub_2752FBB6C(v24, v23, v22, v38, v39, v42, v25);
  (*(v26 + 8))(v41, v40);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  (*(v27 + 104))(v28, *MEMORY[0x277D65208], v43);
  OUTLINED_FUNCTION_187();

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_148_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, v42, v43, 0, 0xE000000000000000, a18, a19, a20);
}

uint64_t sub_27530C1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a4;
  v6[12] = a6;
  v6[9] = a2;
  v6[10] = a3;
  v6[8] = a1;
  v7 = sub_2753B6878();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  sub_2753169C4(0, &qword_2809C1480, MEMORY[0x277D85B28], MEMORY[0x277D64FF8], MEMORY[0x277D64FF0]);
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v9 = MEMORY[0x277D83D88];
  sub_2753167D4(0, &qword_2809C1288, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
  v6[19] = swift_task_alloc();
  v6[20] = type metadata accessor for SongTransitionInfo(0);
  v6[21] = swift_task_alloc();
  sub_275316934(0);
  v6[22] = swift_task_alloc();
  sub_2753169C4(0, &qword_2809C1840, MEMORY[0x277CD8320], MEMORY[0x277CD8310], MEMORY[0x277CD7C78]);
  v6[23] = v10;
  v6[24] = *(v10 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  sub_2753167D4(0, &qword_2809C1848, MEMORY[0x277D2AAB8], v9);
  v6[27] = swift_task_alloc();
  v11 = sub_2753B6808();
  v6[28] = v11;
  v6[29] = *(v11 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  sub_2753167D4(0, &qword_2809C1850, MEMORY[0x277D2A988], v9);
  v6[32] = swift_task_alloc();
  v12 = sub_2753B67C8();
  v6[33] = v12;
  v6[34] = *(v12 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v13 = sub_2753B6768();
  v6[37] = v13;
  v6[38] = *(v13 - 8);
  v6[39] = swift_task_alloc();
  v14 = sub_2753B67A8();
  v6[40] = v14;
  v6[41] = *(v14 - 8);
  v6[42] = swift_task_alloc();
  sub_2753167D4(0, &qword_2809C1858, MEMORY[0x277D2A720], v9);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v15 = sub_2753B6798();
  v6[45] = v15;
  v6[46] = *(v15 - 8);
  v6[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27530C758, 0, 0);
}

uint64_t sub_27530C758()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_79_0();
  v1 = sub_2753B6888();
  v3 = v2;
  v0[48] = v1;
  v0[49] = v2;
  sub_275317784(0, &qword_2809C1860, MEMORY[0x277CD7E90], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2753BE420;
  *(inited + 32) = v1;
  *(inited + 40) = v3;

  sub_275314FD0(inited);
  sub_2753B6778();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[50] = v5;
  *v5 = v6;
  v5[1] = sub_27530C878;
  v7 = v0[42];

  return MEMORY[0x282189978](v7);
}

uint64_t sub_27530C878()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27530C978()
{
  v112 = v0;
  v1 = v0[43];
  v2 = v0[37];
  sub_2753B67B8();

  v3 = OUTLINED_FUNCTION_115();
  v4(v3);
  v5 = OUTLINED_FUNCTION_90_0();
  sub_275316A30(v5, v6);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_12_2();
    v10 = v9;
LABEL_3:
    sub_275316AC4(v10, v7, v8);
    goto LABEL_6;
  }

  (*(v0[38] + 32))(v0[39], v0[43], v0[37]);
  v11 = sub_2753B6748();
  if (v12)
  {
    (*(v0[38] + 8))(v0[39], v0[37]);
    goto LABEL_6;
  }

  v28 = v0[32];
  v27 = v0[33];
  sub_2753B6708();
  if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
  {
    v29 = v0[32];
    v30 = OUTLINED_FUNCTION_98_0();
    v31(v30);
    v7 = &unk_2809C1850;
    v8 = MEMORY[0x277D2A988];
    v10 = v29;
    goto LABEL_3;
  }

  v33 = v0[27];
  v32 = v0[28];
  v34 = *(v0[34] + 32);
  v34(v0[36], v0[32], v0[33]);
  sub_2753B6718();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v32);
  v36 = v0[27];
  if (EnumTagSinglePayload == 1)
  {
    (*(v0[34] + 8))(v0[36], v0[33]);
    v37 = OUTLINED_FUNCTION_79_0();
    v38(v37);
    v7 = &unk_2809C1848;
    v8 = MEMORY[0x277D2AAB8];
    v10 = v36;
    goto LABEL_3;
  }

  v40 = v0[22];
  v39 = v0[23];
  v41 = *(v0[29] + 32);
  v41(v0[31], v0[27], v0[28]);
  sub_2753B6758();
  v42 = __swift_getEnumTagSinglePayload(v40, 1, v39);
  v43 = v0[34];
  v107 = v0[39];
  v109 = v0[33];
  if (v42 != 1)
  {
    v48 = v0[35];
    v82 = v0[36];
    v49 = v0[29];
    v105 = v0[30];
    v103 = v0[28];
    v81 = v0[26];
    v84 = v0[25];
    v91 = v34;
    v93 = v41;
    v51 = v0[23];
    v50 = v0[24];
    v52 = v0[21];
    v87 = v0[19];
    v89 = v0[20];
    v98 = v0[16];
    v100 = v0[17];
    v95 = v0[18];
    v80 = v0[31];
    (*(v50 + 32))();
    (*(v43 + 16))(v48, v82, v109);
    (*(v49 + 16))(v105, v80, v103);
    (*(v50 + 16))(v84, v81, v51);
    sub_275316B88();
    v53 = sub_2753B6EA8();
    sub_2753B6728();
    v54 = sub_2753B6738();
    v55 = (v54 == 2) | v54;
    *v52 = v11;
    v91(v52 + v89[5], v48, v109);
    v93(v52 + v89[6], v105, v103);
    *(v52 + v89[7]) = v53;
    v56 = sub_275316C18(v87, v52 + v89[8]);
    *(v52 + v89[9]) = v55 & 1;
    MEMORY[0x277C75B00](v56);
    OUTLINED_FUNCTION_76_0();
    sub_2753B6838();
    (*(v100 + 8))(v95, v98);

    v57 = sub_2753B6858();
    v58 = sub_2753B7248();

    v59 = os_log_type_enabled(v57, v58);
    v61 = v0[46];
    v60 = v0[47];
    v108 = v0[44];
    v110 = v0[45];
    v62 = v0[38];
    v106 = v0[39];
    v102 = v0[36];
    v104 = v0[37];
    v63 = v0[34];
    v99 = v0[31];
    v101 = v0[33];
    v64 = v0[29];
    v96 = v0[26];
    v97 = v0[28];
    v65 = v0[24];
    v66 = v0[14];
    v92 = v0[15];
    v94 = v0[23];
    v90 = v0[13];
    if (v59)
    {
      v83 = v0[9];
      v85 = v0[10];
      v88 = v0[46];
      v67 = swift_slowAlloc();
      v86 = v60;
      v68 = swift_slowAlloc();
      v111 = v68;
      *v67 = 136446210;
      *(v67 + 4) = sub_275314A34(v83, v85, &v111);
      _os_log_impl(&dword_2752E3000, v57, v58, "[TransitionInfo] Found transition info from Download MusicKit request for adamID: %{public}s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_170();

      (*(v66 + 8))(v92, v90);
      (*(v65 + 8))(v96, v94);
      (*(v64 + 8))(v99, v97);
      (*(v63 + 8))(v102, v101);
      (*(v62 + 8))(v106, v104);
      OUTLINED_FUNCTION_12_2();
      sub_275316AC4(v108, v69, v70);
      (*(v88 + 8))(v86, v110);
    }

    else
    {

      (*(v66 + 8))(v92, v90);
      (*(v65 + 8))(v96, v94);
      (*(v64 + 8))(v99, v97);
      (*(v63 + 8))(v102, v101);
      (*(v62 + 8))(v106, v104);
      OUTLINED_FUNCTION_12_2();
      sub_275316AC4(v108, v71, v72);
      (*(v61 + 8))(v60, v110);
    }

    v73 = v0[11];
    v74 = v0[12];
    v75 = v0[8];
    OUTLINED_FUNCTION_31_0();
    sub_2753168D8(v76, v75, v77);
    type metadata accessor for FacetCollection<>.MusicKitTransitionInfoOffline(255, v73, v74, v78);
    OUTLINED_FUNCTION_29_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    sub_2753B6C18();
    OUTLINED_FUNCTION_8_2();
    (*(v79 + 104))(v75);
    goto LABEL_7;
  }

  v44 = v0[37];
  v45 = v0[38];
  v46 = v0[36];
  v47 = v0[22];
  (*(v0[29] + 8))(v0[31], v0[28]);
  (*(v43 + 8))(v46, v109);
  (*(v45 + 8))(v107, v44);
  sub_275316B2C(v47);
LABEL_6:
  v13 = v0[8];
  OUTLINED_FUNCTION_12_2();
  sub_275316AC4(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_129_0();
  v18(v17);
  *v13 = 0xD000000000000026;
  v13[1] = 0x80000002753B8D10;
  v19 = OUTLINED_FUNCTION_136_0();
  type metadata accessor for FacetCollection<>.MusicKitTransitionInfoOffline(v19, v20, v21, v22);
  OUTLINED_FUNCTION_29_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  sub_2753B6C18();
  OUTLINED_FUNCTION_8_2();
  v23 = OUTLINED_FUNCTION_96_0();
  v24(v23);
LABEL_7:

  OUTLINED_FUNCTION_35_0();

  return v25();
}

uint64_t sub_27530D23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_177();
  v30 = v20[30];
  v31 = v20[27];
  v32 = v20[26];
  v33 = v20[25];
  v34 = v20[22];
  v35 = v20[21];
  v36 = v20[19];
  v37 = v20[18];
  v38 = v20[15];
  (*(v20[46] + 8))(v20[47], v20[45]);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_148_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, a18, a19, a20);
}

uint64_t FacetCollection<>.MusicKitTransitionInfoOffline.value<A, B>(from:for:)()
{
  OUTLINED_FUNCTION_14_0();
  v0[2] = v1;
  v0[3] = v2;
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v3, v4, v5, MEMORY[0x277D64F00]);
  v0[4] = v6;
  OUTLINED_FUNCTION_75(v6);
  v0[5] = OUTLINED_FUNCTION_138_0();
  v7 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27530D42C()
{
  OUTLINED_FUNCTION_160_0();
  v8 = v1;
  OUTLINED_FUNCTION_66_0();
  sub_275314678();
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_24_0();
  sub_2753B62C8();
  *(v0 + 48) = 7;
  sub_2753B6298();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_83_0();
  sub_2753B62A8();
  OUTLINED_FUNCTION_24_0();
  sub_2753B62C8();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_193(v2, v3, v4, v5, MEMORY[0x277D64F08]);
  sub_275314720();
  OUTLINED_FUNCTION_25_0();
  swift_allocError();
  OUTLINED_FUNCTION_52_0();
  sub_2753B62E8();
  swift_willThrow();

  OUTLINED_FUNCTION_72_0();

  return v6();
}

uint64_t sub_27530D544()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.prepare(in:)();
}

uint64_t sub_27530D5D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitTransitionInfoOffline.availability<A>(of:)();
}

uint64_t sub_27530D698()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitTransitionInfoOffline.value<A, B>(from:for:)();
}

uint64_t FacetCollection<>.MusicKitAssetElement.availability<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_117_0();
  v5[646] = v7;
  v5[645] = v8;
  v5[644] = v9;
  v5[643] = v10;
  v5[642] = v11;
  v12 = sub_2753B6A38();
  v5[647] = v12;
  OUTLINED_FUNCTION_17_1(v12);
  v5[648] = v13;
  v5[649] = OUTLINED_FUNCTION_138_0();
  v14 = sub_2753B6AC8();
  v5[650] = v14;
  OUTLINED_FUNCTION_17_1(v14);
  v5[651] = v15;
  v5[652] = OUTLINED_FUNCTION_138_0();
  v5[653] = *(v6 + 16);
  v16 = *(v6 + 24);
  v5[654] = v16;
  OUTLINED_FUNCTION_95_0();
  v5[655] = type metadata accessor for FacetCollection<>.FullyQualifiedContentRegistrationElement(v17, v18, v19, v20);
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65_0();
  v21 = sub_2753B6C18();
  v5[656] = v21;
  OUTLINED_FUNCTION_17_1(v21);
  v5[657] = v22;
  v5[658] = OUTLINED_FUNCTION_176();
  v5[659] = swift_task_alloc();
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v23, v24, v25, MEMORY[0x277D64F00]);
  v5[660] = v26;
  OUTLINED_FUNCTION_75(v26);
  v5[661] = OUTLINED_FUNCTION_138_0();
  v27 = type metadata accessor for AssetRecipe(0);
  OUTLINED_FUNCTION_75(v27);
  v5[662] = OUTLINED_FUNCTION_138_0();
  v28 = sub_2753B6DB8();
  v5[663] = v28;
  OUTLINED_FUNCTION_17_1(v28);
  v5[664] = v29;
  v5[665] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_2_1();
  v5[666] = v30;
  v5[667] = OUTLINED_FUNCTION_176();
  v5[668] = swift_task_alloc();
  OUTLINED_FUNCTION_2_1();
  v5[669] = v31;
  v5[670] = OUTLINED_FUNCTION_138_0();
  v32 = OUTLINED_FUNCTION_82_0();
  v35 = type metadata accessor for FacetCollection<>.Asset(v32, v33, v16, v34);
  v5[671] = v35;
  OUTLINED_FUNCTION_17_1(v35);
  v5[672] = v36;
  v5[673] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_93_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[674] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_75(AssociatedTypeWitness);
  v5[675] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_82_0();
  v38 = sub_2753B69B8();
  v5[676] = v38;
  OUTLINED_FUNCTION_17_1(v38);
  v5[677] = v39;
  v5[678] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_27530DB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_181();
  v46 = v18[676];
  v19 = v18[673];
  v20 = v18[671];
  v21 = v18[669];
  sub_2753B6938();
  OUTLINED_FUNCTION_33();
  swift_dynamicCast();
  v18[679] = *(v21 + 16);
  v18[680] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22 = OUTLINED_FUNCTION_165();
  v23(v22);
  OUTLINED_FUNCTION_150_0(v19);
  if (*(v19 + *(v20 + 36)) == 3)
  {
    v24 = v18[654];
    sub_2753B6998();
    v18[681] = *(v24 + 32);
    v18[682] = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
    sub_2753B6288();
    v18[683] = OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_2_4();
    sub_275315BB8(v25, v26, MEMORY[0x277D64EF8]);
    OUTLINED_FUNCTION_102_0();
    sub_2753B70C8();
    OUTLINED_FUNCTION_118_0();
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_131_0();

    return MEMORY[0x2822009F8](v27, v28, v29);
  }

  else
  {
    v31 = v18[642];
    *v31 = 0xD000000000000029;
    v31[1] = 0x80000002753B8950;
    v32 = *MEMORY[0x277D65208];
    OUTLINED_FUNCTION_7_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    sub_2753B6C18();
    OUTLINED_FUNCTION_8_2();
    (*(v33 + 104))(v31, v32);
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_139_0();
    v34(v19);
    v35 = OUTLINED_FUNCTION_90_0();
    v36(v35);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_131_0();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, v46, a16, a17, a18);
  }
}

uint64_t sub_27530DDA4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 5448);

  v2 = OUTLINED_FUNCTION_79_0();
  *(v0 + 5472) = v1(v2);
  v3 = OUTLINED_FUNCTION_39_0();
  v4(v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_27530DE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = swift_task_alloc();
  *(v9 + 5480) = v10;
  OUTLINED_FUNCTION_56_0(v10);
  OUTLINED_FUNCTION_38_0(&qword_2753C1DF0);
  v22 = v11;
  v12 = swift_task_alloc();
  *(v9 + 5488) = v12;
  *v12 = v9;
  v12[1] = sub_27530DF18;
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_241();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_27530DF18()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v1;
  v3[687] = v5;
  v3[688] = v6;
  v3[689] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

unsigned __int8 *sub_27530E034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  if (*(v12 + 5504))
  {
    sub_2753B6DA8();
    OUTLINED_FUNCTION_213();
    sub_2753B6D98();
    v14 = v13;

    v15 = OUTLINED_FUNCTION_101_0();
    v16(v15);
    if (v14 >> 60 == 15)
    {
      sub_275314678();
      OUTLINED_FUNCTION_113_0();
      sub_2753B62D8();
      OUTLINED_FUNCTION_33_0();
      sub_2753B62C8();
      OUTLINED_FUNCTION_231();
      OUTLINED_FUNCTION_122_0();
      sub_2753B62C8();
      OUTLINED_FUNCTION_156_0();
      sub_2753B69A8();
      v17 = *(v12 + 5016);
      *(v12 + 5024) = *(v12 + 5008);
      *(v12 + 5032) = v17;
      sub_2753146CC();
      sub_2753B62B8();

      OUTLINED_FUNCTION_33_0();
      sub_2753B62C8();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_198(v18, v19, v20, v21, MEMORY[0x277D64F08]);
      sub_275314720();
      OUTLINED_FUNCTION_9_2();
      swift_allocError();
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_71_0();
      sub_2753B62E8();
      swift_willThrow();
LABEL_90:
      v101 = *(v12 + 5384);
      OUTLINED_FUNCTION_139_0();
      v102(v101);
      v103 = OUTLINED_FUNCTION_90_0();
      v104(v103);

      OUTLINED_FUNCTION_19_0();
      goto LABEL_91;
    }

    v43 = *(v12 + 5512);
    sub_2753B5FF8();
    OUTLINED_FUNCTION_199();
    swift_allocObject();
    sub_2753B5FE8();
    v44 = sub_275315F0C();
    OUTLINED_FUNCTION_230(&type metadata for MediaAPI.Resource, v45, v46, v47, v44);
    if (v43)
    {
      v48 = OUTLINED_FUNCTION_110_0();
      sub_275315F60(v48, v49);

      goto LABEL_90;
    }

    result = memcpy((v12 + 840), (v12 + 16), 0x338uLL);
    v50 = *(v12 + 840);
    v51 = *(v12 + 848);
    v52 = HIBYTE(v51) & 0xF;
    v53 = v50 & 0xFFFFFFFFFFFFLL;
    if ((v51 & 0x2000000000000000) != 0)
    {
      v54 = HIBYTE(v51) & 0xF;
    }

    else
    {
      v54 = v50 & 0xFFFFFFFFFFFFLL;
    }

    if (!v54)
    {
      goto LABEL_89;
    }

    if ((v51 & 0x1000000000000000) != 0)
    {

      v93 = OUTLINED_FUNCTION_107_0();
      v56 = sub_27531518C(v93, v94, 10);
      v96 = v95;

      if (v96)
      {
        goto LABEL_89;
      }

LABEL_80:
      if (v56)
      {
        OUTLINED_FUNCTION_237((v12 + 3968));
        if (sub_275315FC8(v12 + 3968) == 1)
        {
          sub_275315F74(v12 + 840);
        }

        else
        {
          OUTLINED_FUNCTION_237((v12 + 2432));
          sub_275315FE0(v12 + 2432, v12 + 1664);
          sub_275315F74(v12 + 840);
          memcpy((v12 + 3200), (v12 + 3968), 0x2F9uLL);
          if (!sub_27531603C(v12 + 3200))
          {
            v73 = *(v12 + 5408);
            v83 = *(v12 + 5296);
            v84 = sub_275316098(v12 + 3200);
            memcpy(__dst, v84, 0x2F9uLL);
            sub_2753B6978();
            v114[0] = *(v12 + 4888);
            *(v114 + 13) = *(v12 + 4901);
            sub_27530FDEC(v56, v114, v83);
            v85 = *(v12 + 5136);
            OUTLINED_FUNCTION_227(v12 + 4952);
            v86 = OUTLINED_FUNCTION_110_0();
            sub_275315F60(v86, v87);
            sub_275316048(v12 + 888, qword_2809C1498, &type metadata for MediaAPI.Attributes);
            v88 = OUTLINED_FUNCTION_115();
            sub_2753168D8(v88, v89, v90);
            v91 = *MEMORY[0x277D65210];
            OUTLINED_FUNCTION_7_2();
            swift_getWitnessTable();
            OUTLINED_FUNCTION_65_0();
            sub_2753B6C18();
            OUTLINED_FUNCTION_8_2();
            (*(v92 + 104))(v85, v91);
            goto LABEL_86;
          }

          sub_275316048(v12 + 888, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        }

        v72 = *(v12 + 5136);
        sub_2753B7398();

        __dst[0] = 0xD00000000000002ELL;
        __dst[1] = 0x80000002753B8A90;
        OUTLINED_FUNCTION_156_0();
        sub_2753B69A8();
        v73 = sub_2753B6648();
        v75 = v74;

        MEMORY[0x277C76100](v73, v75);

        v76 = OUTLINED_FUNCTION_110_0();
        sub_275315F60(v76, v77);
        *v72 = 0xD00000000000002ELL;
        v72[1] = 0x80000002753B8A90;
        v78 = *MEMORY[0x277D65208];
        OUTLINED_FUNCTION_7_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_65_0();
        sub_2753B6C18();
        OUTLINED_FUNCTION_8_2();
        (*(v79 + 104))(v72, v78);
LABEL_86:
        OUTLINED_FUNCTION_27_0();
        (*(v80 + 8))(v73);
        v81 = OUTLINED_FUNCTION_90_0();
        v82(v81);

        OUTLINED_FUNCTION_35_0();
LABEL_91:
        OUTLINED_FUNCTION_100_0();

        return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12);
      }

LABEL_89:
      sub_275314678();
      OUTLINED_FUNCTION_206();
      sub_2753B62D8();
      OUTLINED_FUNCTION_33_0();
      sub_2753B62C8();
      *(v12 + 2427) = 16;
      sub_2753B6298();
      OUTLINED_FUNCTION_122_0();
      sub_2753B62C8();
      *(v12 + 5040) = v50;
      *(v12 + 5048) = v51;

      sub_2753B62B8();
      sub_275315F74(v12 + 840);

      OUTLINED_FUNCTION_33_0();
      sub_2753B62C8();
      OUTLINED_FUNCTION_0_3();
      sub_275316CAC(0, v97, v98, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
      sub_275314720();
      OUTLINED_FUNCTION_67_1();
      swift_allocError();
      sub_2753B62E8();
      swift_willThrow();
      v99 = OUTLINED_FUNCTION_110_0();
      sub_275315F60(v99, v100);
      goto LABEL_90;
    }

    if ((v51 & 0x2000000000000000) != 0)
    {
      __dst[0] = *(v12 + 840);
      __dst[1] = v51 & 0xFFFFFFFFFFFFFFLL;
      if (v50 == 43)
      {
        if (v52)
        {
          if (v52 != 1)
          {
            OUTLINED_FUNCTION_209();
            while (1)
            {
              OUTLINED_FUNCTION_34_0();
              if (!v58 & v57)
              {
                break;
              }

              OUTLINED_FUNCTION_46_0();
              if (!v58)
              {
                break;
              }

              v56 = v67 + v66;
              if (__OFADD__(v67, v66))
              {
                break;
              }

              OUTLINED_FUNCTION_109_0();
              if (v58)
              {
                goto LABEL_79;
              }
            }
          }

          goto LABEL_78;
        }

LABEL_98:
        __break(1u);
        return result;
      }

      if (v50 != 45)
      {
        if (v52)
        {
          while (1)
          {
            OUTLINED_FUNCTION_34_0();
            if (!v58 & v57)
            {
              break;
            }

            OUTLINED_FUNCTION_46_0();
            if (!v58)
            {
              break;
            }

            v56 = v71 + v70;
            if (__OFADD__(v71, v70))
            {
              break;
            }

            OUTLINED_FUNCTION_109_0();
            if (v58)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_78;
      }

      if (v52)
      {
        if (v52 != 1)
        {
          OUTLINED_FUNCTION_209();
          while (1)
          {
            OUTLINED_FUNCTION_34_0();
            if (!v58 & v57)
            {
              break;
            }

            OUTLINED_FUNCTION_46_0();
            if (!v58)
            {
              break;
            }

            v56 = v63 - v62;
            if (__OFSUB__(v63, v62))
            {
              break;
            }

            OUTLINED_FUNCTION_109_0();
            if (v58)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_78;
      }
    }

    else
    {
      if ((v50 & 0x1000000000000000) != 0)
      {
        result = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        OUTLINED_FUNCTION_107_0();
        result = sub_2753B73F8();
      }

      v55 = *result;
      if (v55 == 43)
      {
        if (v53 >= 1)
        {
          if (v53 != 1)
          {
            v56 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_203();
              while (1)
              {
                OUTLINED_FUNCTION_34_0();
                if (!v58 & v57)
                {
                  goto LABEL_78;
                }

                OUTLINED_FUNCTION_46_0();
                if (!v58)
                {
                  goto LABEL_78;
                }

                v56 = v65 + v64;
                if (__OFADD__(v65, v64))
                {
                  goto LABEL_78;
                }

                OUTLINED_FUNCTION_109_0();
                if (v58)
                {
                  goto LABEL_79;
                }
              }
            }

            goto LABEL_69;
          }

          goto LABEL_78;
        }

        goto LABEL_97;
      }

      if (v55 != 45)
      {
        if (v53)
        {
          v56 = 0;
          if (result)
          {
            while (1)
            {
              v68 = *result - 48;
              if (v68 > 9)
              {
                goto LABEL_78;
              }

              v69 = 10 * v56;
              if ((v56 * 10) >> 64 != (10 * v56) >> 63)
              {
                goto LABEL_78;
              }

              v56 = v69 + v68;
              if (__OFADD__(v69, v68))
              {
                goto LABEL_78;
              }

              ++result;
              if (!--v53)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_78:
        v56 = 0;
        v61 = 1;
LABEL_79:
        LOBYTE(v114[0]) = v61;
        if (v61)
        {
          goto LABEL_89;
        }

        goto LABEL_80;
      }

      if (v53 >= 1)
      {
        if (v53 != 1)
        {
          v56 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_203();
            while (1)
            {
              OUTLINED_FUNCTION_34_0();
              if (!v58 & v57)
              {
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_46_0();
              if (!v58)
              {
                goto LABEL_78;
              }

              v56 = v60 - v59;
              if (__OFSUB__(v60, v59))
              {
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_109_0();
              if (v58)
              {
                goto LABEL_79;
              }
            }
          }

LABEL_69:
          v61 = 0;
          goto LABEL_79;
        }

        goto LABEL_78;
      }

      __break(1u);
    }

    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v22 = *(v12 + 5232);
  v23 = OUTLINED_FUNCTION_211();
  v24(v23);
  OUTLINED_FUNCTION_101_0();
  FacetCollection<>.FullyQualifiedContentRegistrationElement.init<A>(facet:)(v25, v22, v26);
  sub_2753B69A8();
  v27 = *(v12 + 5088);
  v28 = *(v12 + 5096);
  v29 = OUTLINED_FUNCTION_136_0();
  *(v12 + 5520) = type metadata accessor for MediaAPIResourceRequest.Option(v29, v30, v31, v32);
  *(v12 + 5528) = sub_2753B76C8();
  swift_allocObject();
  sub_2753B6FF8();
  *v33 = 2;
  *(v12 + 5112) = sub_2752E6688();
  *(v12 + 5056) = v27;
  *(v12 + 5064) = v28;
  sub_2753B70B8();
  sub_275314624();
  sub_2753B6CD8();
  sub_2753B6D18();
  *(v12 + 5104) = *(v12 + 5120);

  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v12 + 5536) = v34;
  *v34 = v35;
  v34[1] = sub_27530EBA4;
  OUTLINED_FUNCTION_100_0();

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.availability<A>(of:)(v36, v37, v38, v39, v40);
}

uint64_t sub_27530EBA4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 5544) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_27530ECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = OUTLINED_FUNCTION_48_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_92_0();
  v17 = v16(v15);
  if (v17 == *MEMORY[0x277D65210])
  {
    v18 = *(v12 + 5264);
    v19 = OUTLINED_FUNCTION_126_0();
    v20(v19);
    v21 = *v18;
    v22 = v18[1];
    sub_27535A340(v18[3], v160);
    v23 = v161 | (v162 << 16);
    if ((~v23 & 0xFE00FE) == 0)
    {
      v24 = *(v12 + 5136);

      v25 = OUTLINED_FUNCTION_69_0();
      v26(v25);
      OUTLINED_FUNCTION_47_0();
      *v24 = v27;
      v24[1] = v28;
      v29 = *MEMORY[0x277D65208];
LABEL_11:
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      sub_2753B6C18();
      OUTLINED_FUNCTION_8_2();
      v43 = *(v67 + 104);
      v44 = v24;
      goto LABEL_12;
    }

    v151 = v21;
    v158 = v22;
    v159 = v160[0];
    v155 = v160[2];
    v156 = v160[1];
    v154 = v160[3];
    v45 = v160[5];
    v157 = v160[4];
    v46 = *(v12 + 5216);
    v47 = *(v12 + 5208);
    v48 = *(v12 + 5200);
    sub_2753B6978();
    *(v12 + 4824) = *(v12 + 4856);
    *(v12 + 4837) = *(v12 + 4869);
    sub_275314888(v12 + 4824);
    v49 = *MEMORY[0x277D65198];
    sub_2753B6AB8();
    OUTLINED_FUNCTION_8_2();
    (*(v50 + 104))(v46, v49);
    (*(v47 + 104))(v46, *MEMORY[0x277D651A0], v48);
    if ((sub_2753B6AA8() & 1) == 0)
    {
      v24 = v45;
      v80 = *(v12 + 5256);
      v149 = *(v12 + 5248);
      v153 = *(v12 + 5272);
      v81 = *(v12 + 5216);
      v82 = *(v12 + 5208);
      v83 = *(v12 + 5200);

      sub_2752FBB58(v159, v156, v155, v154, v157, v24, v23);

      (*(v82 + 8))(v81, v83);
      (*(v80 + 8))(v153, v149);
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_7_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_65_0();
      sub_2753B6C18();
      OUTLINED_FUNCTION_8_2();
      v44 = OUTLINED_FUNCTION_96_0();
      goto LABEL_13;
    }

    v51 = *(v12 + 5544);
    sub_2753104C4(v163);
    if (v51)
    {
      v148 = *(v12 + 5248);
      v152 = *(v12 + 5272);
      v146 = *(v12 + 5216);
      v147 = *(v12 + 5256);
      v143 = *(v12 + 5208);
      v145 = *(v12 + 5200);

      sub_2752FBB58(v159, v156, v155, v154, v157, v45, v23);
      *(v12 + 2425) = 4;
      sub_2753148DC(0);
      v53 = OUTLINED_FUNCTION_197(v52);
      *(v53 + 16) = xmmword_2753BE420;
      *(v53 + 32) = v51;
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_198(v54, v55, v56, v57, MEMORY[0x277D64F08]);
      sub_275314720();
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_67_1();
      swift_allocError();
      v58 = v51;
      sub_275314678();
      OUTLINED_FUNCTION_214();
      MEMORY[0x277C755D0]();
      swift_willThrow();

      (*(v143 + 8))(v146, v145);
      (*(v147 + 8))(v152, v148);
      OUTLINED_FUNCTION_28_0();
      (*(v59 + 8))(v156);
      v60 = OUTLINED_FUNCTION_73_0();
      v61(v60);

      OUTLINED_FUNCTION_19_0();
LABEL_14:
      OUTLINED_FUNCTION_100_0();

      v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12);
      return;
    }

    v85 = v163[1];
    *(v12 + 4736) = v163[0];
    *(v12 + 4752) = v85;
    *(v12 + 4768) = v163[2];
    *&v164 = v159;
    *(&v164 + 1) = v156;
    *&v165 = v155;
    *(&v165 + 1) = v154;
    *&v166[0] = v157;
    *(&v166[0] + 1) = v45;
    BYTE2(v166[1]) = BYTE2(v23);
    LOWORD(v166[1]) = v23;

    OUTLINED_FUNCTION_208();
    sub_275315CA4(v86, v87, v88, v89, v90, v45, v23);
    sub_275319620(v151, v158, &v164, &v167);
    v150 = v168;
    v164 = v169;
    v165 = v170;
    v166[0] = v171[0];
    *(v166 + 15) = *(v171 + 15);
    if (!v168)
    {
      __break(1u);
      return;
    }

    v126 = *(v12 + 5528);
    v129 = *(v12 + 5520);
    v131 = *(v12 + 5336);
    v141 = *(v12 + 5256);
    v142 = *(v12 + 5248);
    v144 = *(v12 + 5272);
    v137 = *(v12 + 5232);
    v133 = *(v12 + 5224);
    v135 = *(v12 + 5408);
    v138 = *(v12 + 5208);
    v139 = *(v12 + 5200);
    v140 = *(v12 + 5216);
    v91 = *(v12 + 5184);
    v123 = *(v12 + 5176);
    v92 = *(v12 + 5136);

    OUTLINED_FUNCTION_208();
    sub_2752FBB58(v93, v94, v95, v96, v97, v45, v23);

    sub_275314944(0);
    v99 = (v92 + *(v98 + 48));
    v100 = *MEMORY[0x277D650C8];
    sub_2753B6898();
    OUTLINED_FUNCTION_8_2();
    (*(v101 + 104))(v92, v100);
    v102 = *(v91 + 104);
    v24 = (v91 + 104);
    v102(v92, *MEMORY[0x277D65140], v123);
    OUTLINED_FUNCTION_119_0(v150, v123, v126);
    swift_allocObject();
    sub_2753B6FF8();
    *v103 = 512;
    v104 = sub_2752E6688();
    v112 = OUTLINED_FUNCTION_192(v104, v105, v106, v107, v108, v109, v110, v111, v124, v127, v129, v131, v133, v135);
    v120 = OUTLINED_FUNCTION_194(v112, v113, v114, v115, v116, v117, v118, v119, v125, v128, v130, v132, v134, v136, v137);
    v99[3] = v120;
    v99[4] = OUTLINED_FUNCTION_22_0(v120, v120);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v99);
    sub_275319DD0(&v167, (v12 + 4736), v23, v24, v154, boxed_opaque_existential_1);
    (*(v138 + 8))(v140, v139);
    (*(v141 + 8))(v144, v142);
    v29 = *MEMORY[0x277D65218];
    OUTLINED_FUNCTION_7_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    sub_2753B6C18();
    OUTLINED_FUNCTION_8_2();
    v43 = *(v122 + 104);
    v44 = v92;
LABEL_12:
    v68 = v29;
LABEL_13:
    v43(v44, v68);
    OUTLINED_FUNCTION_27_0();
    (*(v69 + 8))(v24);
    v70 = OUTLINED_FUNCTION_90_0();
    v71(v70);

    OUTLINED_FUNCTION_35_0();
    goto LABEL_14;
  }

  v29 = v17;
  if (v17 == *MEMORY[0x277D65218])
  {
    v30 = *(v12 + 5264);
    v24 = *(v12 + 5192);
    v31 = *(v12 + 5184);
    v32 = *(v12 + 5176);
    v33 = *(v12 + 5136);
    OUTLINED_FUNCTION_205();
    v34();

    v35 = OUTLINED_FUNCTION_97_0();
    v36(v35);
    sub_275314944(0);
    v38 = v37;
    v39 = *(v37 + 48);
    v40 = *(v31 + 32);
    v40(v24, v30, v32);
    sub_275315C8C((v30 + v39), v12 + 4784);
    v41 = *(v38 + 48);
    v40(v33, v24, v32);
    sub_275315C8C((v12 + 4784), v33 + v41);
    OUTLINED_FUNCTION_7_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_0();
    sub_2753B6C18();
    OUTLINED_FUNCTION_8_2();
    v43 = *(v42 + 104);
    v44 = v33;
    goto LABEL_12;
  }

  if (v17 == *MEMORY[0x277D65208])
  {
    v62 = *(v12 + 5264);
    v63 = *(v12 + 5256);
    v24 = *(v12 + 5136);

    v64 = *(v63 + 8);
    v65 = OUTLINED_FUNCTION_90_0();
    v64(v65);
    v66 = OUTLINED_FUNCTION_207();
    v64(v66);
    *v24 = 0xD000000000000010;
    v24[1] = v62;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_100_0();

  sub_2753B7708();
}

uint64_t sub_27530F71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_181();

  v32 = *(v18 + 5512);
  OUTLINED_FUNCTION_28_0();
  v19 = OUTLINED_FUNCTION_116_0();
  v20(v19);
  v21 = OUTLINED_FUNCTION_73_0();
  v22(v21);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_131_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, v32, a16, a17, a18);
}

uint64_t sub_27530F820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_181();
  v32 = *(v18 + 5544);
  OUTLINED_FUNCTION_28_0();
  v19 = OUTLINED_FUNCTION_116_0();
  v20(v19);
  v21 = OUTLINED_FUNCTION_73_0();
  v22(v21);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_131_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, v32, a16, a17, a18);
}

uint64_t sub_27530F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a4;
  v6[11] = a6;
  v6[8] = a2;
  v6[9] = a3;
  v6[7] = a1;
  return MEMORY[0x2822009F8](sub_27530F938, 0, 0);
}

uint64_t sub_27530F938()
{
  OUTLINED_FUNCTION_3();
  v0[6] = 1;
  OUTLINED_FUNCTION_112_0();
  v0[12] = sub_2753B69B8();
  sub_2753B69A8();
  v0[13] = v0[3];
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_27530FA04;
  OUTLINED_FUNCTION_71_0();

  return MusicContentStorage.Operations.hasMediaAPIAttributes(containing:for:)();
}

uint64_t sub_27530FA04()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (!v0)
  {

    *(v5 + 168) = v3 & 1;
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_27530FB1C()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 168) == 1)
  {
    sub_2753B69A8();
    *(v0 + 128) = *(v0 + 40);
    v1 = swift_task_alloc();
    *(v0 + 136) = v1;
    *v1 = v0;
    v1[1] = sub_27530FC10;
    OUTLINED_FUNCTION_75_0();

    return MusicContentStorage.Operations.mediaAPIAttributes(for:)();
  }

  else
  {
    v3 = *(v0 + 56);
    *v3 = 0;
    v3[1] = 0;
    OUTLINED_FUNCTION_35_0();

    return v4();
  }
}

uint64_t sub_27530FC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_45_0();
  v11 = v10;
  OUTLINED_FUNCTION_13_2();
  *v12 = v11;
  v13 = *v8;
  OUTLINED_FUNCTION_2();
  *v14 = v13;
  v11[18] = v7;

  if (!v7)
  {

    v11[19] = v6;
    v11[20] = v9;
  }

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_27530FD34()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27530FD90()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_27530FDEC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a1;
  v73 = a3;
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v5, v6, v7, MEMORY[0x277D64F00]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v8);
  v70 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10();
  v71 = v11 - v10;
  OUTLINED_FUNCTION_104_0();
  v12 = MEMORY[0x277D83D88];
  sub_2753167D4(0, v13, v14, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_75(v15);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - v17;
  v19 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_103_0();
  sub_2753167D4(0, v24, v25, v12);
  OUTLINED_FUNCTION_75(v26);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v27);
  v29 = &v66 - v28;
  v30 = sub_2753B61F8();
  OUTLINED_FUNCTION_2_1();
  v74 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10();
  v82 = v34 - v33;
  v81[0] = *a2;
  *(v81 + 13) = *(a2 + 13);
  v35 = *(v3 + 296);
  if (!v35 || (sub_275319BB4(0x6465636E61686E65, 0xEB00000000736C48, v35), !v36))
  {
    sub_275314678();
    OUTLINED_FUNCTION_190(69);
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    LOBYTE(v76[0]) = 14;
    sub_2753B6298();
    goto LABEL_6;
  }

  sub_2753B61D8();

  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    OUTLINED_FUNCTION_103_0();
    sub_275316AC4(v29, v37, v38);
    sub_275314678();
    OUTLINED_FUNCTION_190(40);
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    LOBYTE(v76[0]) = 15;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
LABEL_6:
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    v39 = OUTLINED_FUNCTION_222();
    sub_275316CAC(v39, v40, v41, v42, v43);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_146_0();
    sub_2753B62E8();
    return swift_willThrow();
  }

  v69 = *(v74 + 32);
  v69(v82, v29, v30);
  v75[0] = v81[0];
  *(v75 + 13) = *(v81 + 13);
  MusicContent.Environment.selectedAccount.getter(v76);
  if (*(&v76[0] + 1) && (v46 = v79, v45 = v80, v68 = v77, v67 = v78, sub_275316838(v77, v78, v79), sub_275316048(v76, &qword_2809C1828, &type metadata for MusicContent.Environment.Account), v46))
  {

    sub_275316888(v68, v67, v46, v45);
    sub_275319C0C(0, v45, v18);

    if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
    {
      sub_2753168D8(v18, v23, type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo);
      v47 = v70;
      v48 = v71;
      v49 = v69;
      v69(v71 + *(v70 + 20), v23, v30);
      v49(v48 + v47[6], v23 + *(v19 + 20), v30);
      *v48 = v72;
      *(v48 + 8) = 0;
      *(v48 + v47[7]) = 0;
      *(v48 + v47[8]) = 1;
      v50 = v73;
      v49(v73, v82, v30);
      v51 = type metadata accessor for AssetRecipe(0);
      sub_2753168D8(v48, v50 + *(v51 + 20), type metadata accessor for AssetRecipe.DRM.FairPlayStreaming);
      type metadata accessor for AssetRecipe.DRM(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
      OUTLINED_FUNCTION_140_0();
      return __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
    }
  }

  else
  {
    OUTLINED_FUNCTION_140_0();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v19);
  }

  OUTLINED_FUNCTION_104_0();
  sub_275316AC4(v18, v59, v60);
  sub_275314678();
  OUTLINED_FUNCTION_190(71);
  OUTLINED_FUNCTION_24_0();
  sub_2753B62C8();
  LOBYTE(v75[0]) = 4;
  sub_2753B6298();
  sub_2753B62C8();
  OUTLINED_FUNCTION_0_3();
  v61 = OUTLINED_FUNCTION_222();
  sub_275316CAC(v61, v62, v63, v64, v65);
  sub_275314720();
  OUTLINED_FUNCTION_9_2();
  swift_allocError();
  OUTLINED_FUNCTION_146_0();
  sub_2753B62E8();
  swift_willThrow();
  return (*(v74 + 8))(v82, v30);
}

double sub_2753104C4@<D0>(_OWORD *a3@<X8>)
{
  sub_2753B69B8();
  sub_2753B6978();
  v7[0] = v8[0];
  *(v7 + 13) = *(v8 + 13);
  sub_2753196F4(v7, v9);
  if (!v3)
  {
    v6 = v9[1];
    *a3 = v9[0];
    a3[1] = v6;
    result = *&v10;
    a3[2] = v10;
  }

  return result;
}

uint64_t sub_275310560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[707] = a6;
  v6[706] = a5;
  v6[705] = a3;
  v6[704] = a1;
  sub_275316CAC(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  v6[708] = v8;
  v6[709] = swift_task_alloc();
  v9 = sub_2753B6DB8();
  v6[710] = v9;
  v6[711] = *(v9 - 8);
  v6[712] = swift_task_alloc();
  v10 = *(a4 + 16);
  v6[713] = v10;
  v6[714] = *(v10 - 8);
  v6[715] = swift_task_alloc();
  v6[716] = swift_getAssociatedTypeWitness();
  v6[717] = swift_task_alloc();
  v6[718] = *(a4 + 24);
  v11 = sub_2753B69B8();
  v6[719] = v11;
  v6[720] = *(v11 - 8);
  v6[721] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2753107B8, 0, 0);
}

uint64_t sub_2753107B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v7 = v6[718];
  sub_2753B6938();
  v8 = OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189(v8);
  OUTLINED_FUNCTION_70_0();
  sub_2753B6998();
  v6[722] = *(v7 + 32);
  v6[723] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v6[724] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v9, v10, MEMORY[0x277D64EF8]);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2753108A4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 5776);

  v2 = OUTLINED_FUNCTION_79_0();
  *(v0 + 5800) = v1(v2);
  v3 = OUTLINED_FUNCTION_39_0();
  v4(v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_27531093C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = swift_task_alloc();
  *(v9 + 5808) = v10;
  OUTLINED_FUNCTION_56_0(v10);
  OUTLINED_FUNCTION_38_0(&qword_2753C1DF0);
  v22 = v11;
  v12 = swift_task_alloc();
  *(v9 + 5816) = v12;
  *v12 = v9;
  v12[1] = sub_275310A18;
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_241();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_275310A18()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  *v4 = *v1;
  v3[728] = v5;
  v3[729] = v6;
  v3[730] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

unsigned __int8 *sub_275310B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_226();
  if (!*(v16 + 5832))
  {
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_113_0();
    sub_2753B62D8();
    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    *(v16 + 2425) = 11;
    sub_2753B6298();
    OUTLINED_FUNCTION_49_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_156_0();
    sub_2753B69A8();
    v22 = *(v16 + 5512);
    *(v16 + 5520) = *(v16 + 5504);
    *(v16 + 5528) = v22;
    goto LABEL_5;
  }

  sub_2753B6DA8();
  OUTLINED_FUNCTION_213();
  sub_2753B6D98();
  v18 = v17;

  v19 = OUTLINED_FUNCTION_101_0();
  v20(v19);
  if (v18 >> 60 == 15)
  {
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_113_0();
    sub_2753B62D8();
    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_164();
    sub_2753B62C8();
    OUTLINED_FUNCTION_156_0();
    sub_2753B69A8();
    v21 = *(v16 + 5544);
    *(v16 + 5552) = *(v16 + 5536);
    *(v16 + 5560) = v21;
LABEL_5:
    sub_2753146CC();
    sub_2753B62B8();

    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_198(v23, v24, v25, v26, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_71_0();
    sub_2753B62E8();
    swift_willThrow();
LABEL_87:
    v73 = OUTLINED_FUNCTION_98_0();
    v74(v73);

    OUTLINED_FUNCTION_19_0();
    goto LABEL_88;
  }

  v27 = *(v16 + 5840);
  sub_2753B5FF8();
  OUTLINED_FUNCTION_199();
  swift_allocObject();
  sub_2753B5FE8();
  v28 = sub_275315F0C();
  OUTLINED_FUNCTION_230(&type metadata for MediaAPI.Resource, v29, v30, v31, v28);
  if (v27)
  {
    v32 = OUTLINED_FUNCTION_110_0();
    sub_275315F60(v32, v33);

    goto LABEL_87;
  }

  result = memcpy((v16 + 840), (v16 + 16), 0x338uLL);
  v35 = *(v16 + 840);
  v36 = *(v16 + 848);
  v37 = HIBYTE(v36) & 0xF;
  v38 = v35 & 0xFFFFFFFFFFFFLL;
  if ((v36 & 0x2000000000000000) != 0)
  {
    v39 = HIBYTE(v36) & 0xF;
  }

  else
  {
    v39 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    goto LABEL_85;
  }

  if ((v36 & 0x1000000000000000) != 0)
  {

    v41 = sub_27531518C(v35, v36, 10);
    v68 = v67;

    if (v68)
    {
      goto LABEL_85;
    }

    goto LABEL_79;
  }

  if ((v36 & 0x2000000000000000) != 0)
  {
    a11 = *(v16 + 840);
    a12 = v36 & 0xFFFFFFFFFFFFFFLL;
    if (a11 == 43)
    {
      if (v37)
      {
        if (v37 != 1)
        {
          OUTLINED_FUNCTION_201();
          while (1)
          {
            OUTLINED_FUNCTION_34_0();
            if (!v43 & v42)
            {
              break;
            }

            OUTLINED_FUNCTION_44_0();
            if (!v43)
            {
              break;
            }

            v41 = v52 + v51;
            if (__OFADD__(v52, v51))
            {
              break;
            }

            OUTLINED_FUNCTION_109_0();
            if (v43)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

LABEL_95:
      __break(1u);
      return result;
    }

    if (*(v16 + 840) != 45)
    {
      if (v37)
      {
        while (1)
        {
          OUTLINED_FUNCTION_34_0();
          if (!v43 & v42)
          {
            break;
          }

          OUTLINED_FUNCTION_44_0();
          if (!v43)
          {
            break;
          }

          v41 = v56 + v55;
          if (__OFADD__(v56, v55))
          {
            break;
          }

          OUTLINED_FUNCTION_109_0();
          if (v43)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    if (v37)
    {
      if (v37 != 1)
      {
        OUTLINED_FUNCTION_201();
        while (1)
        {
          OUTLINED_FUNCTION_34_0();
          if (!v43 & v42)
          {
            break;
          }

          OUTLINED_FUNCTION_44_0();
          if (!v43)
          {
            break;
          }

          v41 = v48 - v47;
          if (__OFSUB__(v48, v47))
          {
            break;
          }

          OUTLINED_FUNCTION_109_0();
          if (v43)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_93;
  }

  if ((v35 & 0x1000000000000000) != 0)
  {
    result = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_2753B73F8();
  }

  v40 = *result;
  if (v40 == 43)
  {
    if (v38 >= 1)
    {
      if (v38 != 1)
      {
        v41 = 0;
        if (result)
        {
          OUTLINED_FUNCTION_203();
          while (1)
          {
            OUTLINED_FUNCTION_34_0();
            if (!v43 & v42)
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_44_0();
            if (!v43)
            {
              goto LABEL_77;
            }

            v41 = v50 + v49;
            if (__OFADD__(v50, v49))
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_109_0();
            if (v43)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_68;
      }

      goto LABEL_77;
    }

    goto LABEL_94;
  }

  if (v40 == 45)
  {
    if (v38 >= 1)
    {
      if (v38 != 1)
      {
        v41 = 0;
        if (result)
        {
          OUTLINED_FUNCTION_203();
          while (1)
          {
            OUTLINED_FUNCTION_34_0();
            if (!v43 & v42)
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_44_0();
            if (!v43)
            {
              goto LABEL_77;
            }

            v41 = v45 - v44;
            if (__OFSUB__(v45, v44))
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_109_0();
            if (v43)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_68:
        v46 = 0;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v38)
  {
    v41 = 0;
    if (result)
    {
      while (1)
      {
        v53 = *result - 48;
        if (v53 > 9)
        {
          goto LABEL_77;
        }

        v54 = 10 * v41;
        if ((v41 * 10) >> 64 != (10 * v41) >> 63)
        {
          goto LABEL_77;
        }

        v41 = v54 + v53;
        if (__OFADD__(v54, v53))
        {
          goto LABEL_77;
        }

        ++result;
        if (!--v38)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_77:
  v41 = 0;
  v46 = 1;
LABEL_78:
  LOBYTE(a10) = v46;
  if (v46)
  {
LABEL_85:
    sub_275314678();
    OUTLINED_FUNCTION_206();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    *(v16 + 2427) = 16;
    sub_2753B6298();
    OUTLINED_FUNCTION_49_0();
    sub_2753B62C8();
    *(v16 + 5568) = v35;
    *(v16 + 5576) = v36;

    sub_2753B62B8();
    sub_275315F74(v16 + 840);

    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    sub_275316CAC(0, v69, v70, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_67_1();
    swift_allocError();
    OUTLINED_FUNCTION_141_0();
    goto LABEL_86;
  }

LABEL_79:
  if (!v41)
  {
    goto LABEL_85;
  }

  OUTLINED_FUNCTION_237((v16 + 2432));
  if (sub_275315FC8(v16 + 2432) == 1 || (memcpy((v16 + 3200), (v16 + 2432), 0x2F9uLL), sub_27531603C(v16 + 3200)))
  {
    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    *(v16 + 2428) = 12;
    sub_2753B6298();
    OUTLINED_FUNCTION_49_0();
    sub_2753B62C8();
    v57 = *(v16 + 864);
    *(v16 + 5584) = *(v16 + 856);
    *(v16 + 5592) = v57;

    sub_2753B62B8();
    sub_275315F74(v16 + 840);

    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    sub_2753B69A8();
    v58 = *(v16 + 5608);
    *(v16 + 5616) = *(v16 + 5600);
    *(v16 + 5624) = v58;
    sub_2753146CC();
    OUTLINED_FUNCTION_239(v16 + 5616);

    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    sub_275316CAC(0, v59, v60, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_212();
LABEL_86:
    sub_2753B62E8();
    swift_willThrow();
    v71 = OUTLINED_FUNCTION_110_0();
    sub_275315F60(v71, v72);
    goto LABEL_87;
  }

  a9 = *(v16 + 5744);
  v61 = *(v16 + 5632);
  v62 = sub_275316098(v16 + 3200);
  memcpy((v16 + 1664), v62, 0x2F9uLL);
  OUTLINED_FUNCTION_237((v16 + 3968));
  sub_275315FE0(v16 + 3968, v16 + 4736);
  sub_275315F74(v16 + 840);
  sub_2753119D8((v16 + 1664), v41, v61);
  v63 = OUTLINED_FUNCTION_110_0();
  sub_275315F60(v63, v64);
  sub_275316048(v16 + 888, qword_2809C1498, &type metadata for MediaAPI.Attributes);
  v65 = OUTLINED_FUNCTION_69_0();
  v66(v65);

  OUTLINED_FUNCTION_35_0();
LABEL_88:
  OUTLINED_FUNCTION_175();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_275311504()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();

  v0 = OUTLINED_FUNCTION_105_0();
  v1(v0);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_217();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2753115C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a4;
  v6[11] = a6;
  v6[8] = a2;
  v6[9] = a3;
  v6[7] = a1;
  return MEMORY[0x2822009F8](sub_2753115F0, 0, 0);
}

uint64_t sub_2753115F0()
{
  OUTLINED_FUNCTION_3();
  v0[6] = 1;
  OUTLINED_FUNCTION_112_0();
  v0[12] = sub_2753B69B8();
  sub_2753B69A8();
  v0[13] = v0[3];
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_2753116BC;
  OUTLINED_FUNCTION_71_0();

  return MusicContentStorage.Operations.hasMediaAPIAttributes(containing:for:)();
}

uint64_t sub_2753116BC()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (!v0)
  {

    *(v5 + 168) = v3 & 1;
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2753117D4()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 168) == 1)
  {
    sub_2753B69A8();
    *(v0 + 128) = *(v0 + 40);
    v1 = swift_task_alloc();
    *(v0 + 136) = v1;
    *v1 = v0;
    v1[1] = sub_2753118C8;
    OUTLINED_FUNCTION_75_0();

    return MusicContentStorage.Operations.mediaAPIAttributes(for:)();
  }

  else
  {
    v3 = *(v0 + 56);
    *v3 = 0;
    v3[1] = 0;
    OUTLINED_FUNCTION_35_0();

    return v4();
  }
}

uint64_t sub_2753118C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_45_0();
  v11 = v10;
  OUTLINED_FUNCTION_13_2();
  *v12 = v11;
  v13 = *v8;
  OUTLINED_FUNCTION_2();
  *v14 = v13;
  v11[18] = v7;

  if (!v7)
  {

    v11[19] = v6;
    v11[20] = v9;
  }

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2753119D8@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_2753B69B8();
  sub_2753B6978();
  v9[0] = v10[0];
  *(v9 + 13) = *(v10 + 13);
  sub_27530FDEC(a2, v9, a5);
  v8[0] = v9[0];
  *(v8 + 13) = *(v9 + 13);
  return sub_275314888(v8);
}

uint64_t FacetCollection<>.MusicKitAssetElement.value<A, B>(from:for:)()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_155_0(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_41_0(v9, v10, v11, v12);
  v0[9] = v13;
  OUTLINED_FUNCTION_75(v13);
  v14 = OUTLINED_FUNCTION_138_0();
  v0[10] = v14;
  v0[11] = OUTLINED_FUNCTION_238(v14, v15, v16, v17);
  OUTLINED_FUNCTION_93_0();
  v18 = sub_2753B72A8();
  v0[12] = v18;
  OUTLINED_FUNCTION_17_1(v18);
  v0[13] = v19;
  v0[14] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_87_0();
  v0[15] = v20;
  v0[16] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_88_0();
  v0[17] = v21;
  v0[18] = OUTLINED_FUNCTION_138_0();
  v22 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_275311C04()
{
  OUTLINED_FUNCTION_144_0();
  v1 = OUTLINED_FUNCTION_54_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_59_0();
  v4 = v0[11];
  if (!v3)
  {
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];
    OUTLINED_FUNCTION_140_0();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v4);
    (*(v20 + 8))(v19, v21);
    sub_275314678();
    OUTLINED_FUNCTION_124_0(45);
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_149_0();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_83_0();
    sub_2753B62A8();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_193(v25, v26, v27, v28, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_25_0();
    swift_allocError();
    OUTLINED_FUNCTION_52_0();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_232();

    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_172();

    __asm { BRAA            X1, X16 }
  }

  v5 = OUTLINED_FUNCTION_213();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v4);
  v7 = OUTLINED_FUNCTION_52_0();
  v8(v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[19] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_157_0(v9);
  OUTLINED_FUNCTION_172();

  return sub_275310560(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_275311E24()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275311F20()
{
  OUTLINED_FUNCTION_3();
  v0 = OUTLINED_FUNCTION_98_0();
  v1(v0);

  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_275311FB8()
{
  OUTLINED_FUNCTION_3();
  (*(v0[17] + 8))(v0[18], v0[11]);

  OUTLINED_FUNCTION_19_0();

  return v1();
}

uint64_t sub_2753120AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.prepare(in:)();
}

uint64_t sub_275312138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitAssetElement.availability<A>(of:)(a1, a2, a5, a3, a4);
}

uint64_t sub_275312200()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitAssetElement.value<A, B>(from:for:)();
}

uint64_t sub_2753122FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_2753B6288();
  v4[6] = sub_2753B6278();
  sub_275315BB8(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v6 = sub_2753B70C8();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_2753123C8, v6, v5);
}

uint64_t sub_2753123C8()
{
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_94_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  sub_275316CAC(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
  OUTLINED_FUNCTION_134_0();
  *v2 = v3;
  v2[1] = sub_2753124BC;
  OUTLINED_FUNCTION_204();

  return MEMORY[0x2821CC178](v4);
}

uint64_t sub_2753124BC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_275312618;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_2753125C0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2753125C0()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_35_0();

  return v0();
}

uint64_t sub_275312618()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_275312680(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_2753B6288();
  v3[7] = sub_2753B6278();
  sub_275315BB8(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v5 = sub_2753B70C8();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x2822009F8](sub_27531274C, v5, v4);
}

uint64_t sub_27531274C()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  OUTLINED_FUNCTION_43_0(v4, &qword_2809C0E08, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_134_0();
  *v4 = v5;
  v4[1] = sub_275312830;
  OUTLINED_FUNCTION_204();

  return MEMORY[0x2821CC178](v6);
}

uint64_t sub_275312830()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_275312990;
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_275312934;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_275312934()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_168();

  return v0();
}

uint64_t sub_275312990()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_2753129F8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_2753B6288();
  v3[6] = sub_2753B6278();
  sub_275315BB8(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v5 = sub_2753B70C8();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_275312AC4, v5, v4);
}

uint64_t sub_275312AC4()
{
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_94_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  OUTLINED_FUNCTION_42_0(v2, &qword_2809C1898, MEMORY[0x277D64FD0]);
  OUTLINED_FUNCTION_134_0();
  *v2 = v3;
  v2[1] = sub_275312B8C;
  OUTLINED_FUNCTION_204();

  return MEMORY[0x2821CC178](v4);
}

uint64_t sub_275312B8C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_275312618;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_275312C90;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_275312C90()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_161();

  return v0();
}

uint64_t sub_275312CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_2753B6288();
  v4[6] = sub_2753B6278();
  sub_275315BB8(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v6 = sub_2753B70C8();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_275312DB8, v6, v5);
}

uint64_t sub_275312DB8()
{
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_94_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  OUTLINED_FUNCTION_43_0(v2, &qword_2809C1488, &type metadata for TransitionInfoStorage);
  OUTLINED_FUNCTION_134_0();
  *v2 = v3;
  v2[1] = sub_275312E80;
  OUTLINED_FUNCTION_204();

  return MEMORY[0x2821CC178](v4);
}

uint64_t sub_275312E80()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_2753179B4;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_2753179DC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}