double sub_217E9AF6C@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 17)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double sub_217E9AFCC@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 12)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double sub_217E9B02C@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 14)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_217E9B08C()
{
  sub_217E9B52C(v0, &v2);
  if (v3 == 8)
  {
    return v2;
  }

  sub_217E9B564(&v2);
  return 0;
}

double sub_217E9B0D8@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 19)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double sub_217E9B138@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 20)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double sub_217E9B198@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 21)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_217E9B1F8()
{
  sub_217E9B52C(v0, v3);
  switch(v4)
  {
    case 1:
      sub_217E9B564(v3);
      result = 0x456E6F6973736573;
      break;
    case 2:
      sub_217E9B564(v3);
      result = 1702131053;
      break;
    case 3:
      sub_217E9B564(v3);
      result = 0x6574756D6E75;
      break;
    case 4:
      sub_217E9B564(v3);
      result = 0x776F6C6C6F66;
      break;
    case 5:
      sub_217E9B564(v3);
      result = 0x776F6C6C6F666E75;
      break;
    case 6:
      sub_217E9B564(v3);
      result = 0x65726F6E6769;
      break;
    case 7:
      sub_217E9B564(v3);
      result = 0x7765695664656566;
      break;
    case 8:
      sub_217E9B564(v3);
      result = 0x61547374726F7073;
      break;
    case 9:
      __swift_destroy_boxed_opaque_existential_2(v3);
      result = 0x53656C6369747261;
      break;
    case 10:
      sub_217E9B564(v3);
      result = 0x56656C6369747261;
      break;
    case 11:
      __swift_destroy_boxed_opaque_existential_2(v3);
      result = 0x52656C6369747261;
      break;
    case 12:
      sub_217E9B564(v3);
      result = 1701538156;
      break;
    case 13:
      sub_217E9B564(v3);
      result = 0x656B696C6E75;
      break;
    case 14:
      sub_217E9B564(v3);
      result = 0x656B696C736964;
      break;
    case 15:
      sub_217E9B564(v3);
      result = 0x6B696C7369646E75;
      break;
    case 16:
      sub_217E9B564(v3);
      result = 0x6572616873;
      break;
    case 17:
      sub_217E9B564(v3);
      result = 0x6465766173;
      break;
    case 18:
      sub_217E9B564(v3);
      result = 0x64657661736E75;
      break;
    case 19:
      sub_217E9B564(v3);
      v2 = 0x566B63617274;
      goto LABEL_24;
    case 20:
      sub_217E9B564(v3);
      v2 = 0x4C6B63617274;
LABEL_24:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7369000000000000;
      break;
    case 21:
      sub_217E9B564(v3);
      result = 0x6E69466B63617274;
      break;
    default:
      sub_217E9B564(v3);
      result = 0x536E6F6973736573;
      break;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_2(void *a1)
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_217E9B60C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEB && *(a1 + 57))
  {
    return (*a1 + 235);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0x16)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217E9B648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEA)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 235;
    if (a3 >= 0xEB)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEB)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_217E9B69C(uint64_t result, unsigned int a2)
{
  if (a2 > 0x15)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 22;
    LOBYTE(a2) = 22;
  }

  *(result + 56) = a2;
  return result;
}

_OWORD *sub_217E9B6D8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

XavierNews::ClassicHeadlineCohortData __swiftcall ClassicHeadlineCohortData.init(rawClicks:clicks:impressions:)(Swift::Double rawClicks, Swift::Double clicks, Swift::Double impressions)
{
  *v3 = rawClicks;
  v3[1] = clicks;
  v3[2] = impressions;
  result.impressions = impressions;
  result.clicks = clicks;
  result.rawClicks = rawClicks;
  return result;
}

uint64_t ClassicArticleData.articleID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ClassicArticleData.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClassicArticleData(0) + 52);

  return sub_217E9B804(v3, a1);
}

uint64_t type metadata accessor for ClassicArticleData(uint64_t a1)
{
  result = qword_280C29538;
  if (!qword_280C29538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217E9B804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C0, &qword_217F4D500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ClassicArticleData.publisherID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClassicArticleData(0) + 56));

  return v1;
}

uint64_t ClassicArticleData.sourceFeedID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClassicArticleData(0) + 60));

  return v1;
}

uint64_t ClassicArticleData.topicIDs.getter()
{
  type metadata accessor for ClassicArticleData(0);
}

uint64_t ClassicArticleData.cohorts.getter()
{
  type metadata accessor for ClassicArticleData(0);
}

uint64_t ClassicArticleData.conversionData.getter()
{
  type metadata accessor for ClassicArticleData(0);
}

uint64_t ClassicArticleData.tagMetadata.getter()
{
  type metadata accessor for ClassicArticleData(0);
}

uint64_t ClassicArticleData.init(adCategories:articleID:articleLength:halfLife:halfLifeOverride:hasVideo:isANF:isPaid:isBundlePaid:publishDate:publisherID:sourceFeedID:topicIDs:cohorts:conversionData:isAudio:featured:isFeatureCandidate:isEvergreen:tagMetadata:reduceVisibility:webConverted:conditionalScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, char a24, char a25, char a26, uint64_t a27, char a28, char a29)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = a10;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7 & 1;
  *(a9 + 57) = a8;
  *(a9 + 58) = a12;
  *(a9 + 59) = a13;
  *(a9 + 60) = a14;
  v31 = type metadata accessor for ClassicArticleData(0);
  result = sub_217E9BC34(a15, a9 + v31[13]);
  v33 = (a9 + v31[14]);
  *v33 = a16;
  v33[1] = a17;
  v34 = (a9 + v31[15]);
  *v34 = a18;
  v34[1] = a19;
  *(a9 + v31[16]) = a20;
  *(a9 + v31[17]) = a21;
  *(a9 + v31[18]) = a22;
  *(a9 + v31[19]) = a23;
  *(a9 + v31[20]) = a24;
  *(a9 + v31[21]) = a25;
  *(a9 + v31[22]) = a26;
  *(a9 + v31[23]) = a27;
  *(a9 + v31[24]) = a28;
  *(a9 + v31[25]) = a29;
  *(a9 + v31[26]) = a11;
  return result;
}

uint64_t sub_217E9BC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C0, &qword_217F4D500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ClassicArticleData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_217F4B144();
  }
}

unint64_t sub_217E9BCDC(char a1)
{
  result = 0x6F67657461436461;
  switch(a1)
  {
    case 1:
      result = 0x49656C6369747261;
      break;
    case 2:
      result = 0x4C656C6369747261;
      break;
    case 3:
      result = 0x6566694C666C6168;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6F65646956736168;
      break;
    case 6:
      result = 0x464E417369;
      break;
    case 7:
      result = 0x646961507369;
      break;
    case 8:
      result = 0x656C646E75427369;
      break;
    case 9:
      result = 0x446873696C627570;
      break;
    case 10:
      result = 0x656873696C627570;
      break;
    case 11:
      result = 0x6546656372756F73;
      break;
    case 12:
      result = 0x7344496369706F74;
      break;
    case 13:
      result = 0x7374726F686F63;
      break;
    case 14:
      result = 0x69737265766E6F63;
      break;
    case 15:
      result = 0x6F696475417369;
      break;
    case 16:
      result = 0x6465727574616566;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x7267726576457369;
      break;
    case 19:
      result = 0x646174654D676174;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0x65766E6F43626577;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217E9BF8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217E9F47C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217E9BFCC(uint64_t a1)
{
  v2 = sub_217E9C6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217E9C008(uint64_t a1)
{
  v2 = sub_217E9C6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClassicArticleData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C8, &qword_217F4D508);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217E9C6F8();
  sub_217F4B294();
  v14 = *v3;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54D8, &qword_217F4D510);
  sub_217E9D6B8(&qword_27CBF54E0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_217F4B054();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  LOBYTE(v14) = 1;
  sub_217F4B084();
  LOBYTE(v14) = 2;
  sub_217F4B074();
  LOBYTE(v14) = 3;
  sub_217F4B0A4();
  LOBYTE(v14) = 4;
  sub_217F4B034();
  LOBYTE(v14) = 5;
  sub_217F4B094();
  LOBYTE(v14) = 6;
  sub_217F4B024();
  LOBYTE(v14) = 7;
  sub_217F4B094();
  LOBYTE(v14) = 8;
  sub_217F4B094();
  v12 = v6;
  v10 = type metadata accessor for ClassicArticleData(0);
  LOBYTE(v14) = 9;
  sub_217F4A9F4();
  sub_217E9E70C(qword_280C28FC8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_217F4B054();
  LOBYTE(v14) = 10;
  sub_217F4B084();
  LOBYTE(v14) = 11;
  sub_217F4B014();
  v14 = *(v3 + v10[16]);
  v13 = 12;
  sub_217F4B0C4();
  v14 = *(v3 + v10[17]);
  v13 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54E8, &qword_217F4D518);
  sub_217E9C74C();
  sub_217F4B0C4();
  v14 = *(v3 + v10[18]);
  v13 = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5508, &qword_217F4D520);
  sub_217E9D838(&qword_27CBF5500, sub_217E9C860, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_217F4B0C4();
  LOBYTE(v14) = 15;
  sub_217F4B094();
  LOBYTE(v14) = 16;
  sub_217F4B094();
  LOBYTE(v14) = 17;
  sub_217F4B094();
  LOBYTE(v14) = 18;
  sub_217F4B094();
  v14 = *(v3 + v10[23]);
  v13 = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5518, &qword_217F4D528);
  sub_217E9C8B4(&qword_27CBF5520, sub_217E9C938, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_217F4B0C4();
  LOBYTE(v14) = 20;
  sub_217F4B094();
  LOBYTE(v14) = 21;
  sub_217F4B094();
  LOBYTE(v14) = 22;
  sub_217F4B0A4();
  return (*(v12 + 8))(v9, v5);
}

unint64_t sub_217E9C6F8()
{
  result = qword_27CBF54D0;
  if (!qword_27CBF54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF54D0);
  }

  return result;
}

unint64_t sub_217E9C74C()
{
  result = qword_27CBF54F0;
  if (!qword_27CBF54F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF54E8, &qword_217F4D518);
    sub_217E9C80C();
    sub_217E9D838(&qword_27CBF5500, sub_217E9C860, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF54F0);
  }

  return result;
}

unint64_t sub_217E9C80C()
{
  result = qword_27CBF54F8;
  if (!qword_27CBF54F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF54F8);
  }

  return result;
}

unint64_t sub_217E9C860()
{
  result = qword_27CBF5510;
  if (!qword_27CBF5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5510);
  }

  return result;
}

uint64_t sub_217E9C8B4(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5518, &qword_217F4D528);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217E9C938()
{
  result = qword_27CBF5528;
  if (!qword_27CBF5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5528);
  }

  return result;
}

uint64_t ClassicArticleData.hashValue.getter()
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t ClassicArticleData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C0, &qword_217F4D500);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v32 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5530, &qword_217F4D530);
  v8 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for ClassicArticleData(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_217E9C6F8();
  v37 = v11;
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v34 = v15;
  v35 = v8;
  v33 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54D8, &qword_217F4D510);
  v40 = 0;
  sub_217E9D6B8(&qword_27CBF5538, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_217F4AF54();
  v17 = v34;
  *v34 = v41;
  LOBYTE(v41) = 1;
  *(v17 + 1) = sub_217F4AF84();
  *(v17 + 2) = v18;
  LOBYTE(v41) = 2;
  v32 = 0;
  *(v17 + 3) = sub_217F4AF74();
  v17[32] = v19 & 1;
  LOBYTE(v41) = 3;
  sub_217F4AFA4();
  *(v17 + 5) = v20;
  LOBYTE(v41) = 4;
  *(v17 + 6) = sub_217F4AF34();
  v17[56] = v21 & 1;
  LOBYTE(v41) = 5;
  v17[57] = sub_217F4AF94() & 1;
  LOBYTE(v41) = 6;
  v17[58] = sub_217F4AF24();
  LOBYTE(v41) = 7;
  v34[59] = sub_217F4AF94() & 1;
  LOBYTE(v41) = 8;
  v34[60] = sub_217F4AF94() & 1;
  sub_217F4A9F4();
  LOBYTE(v41) = 9;
  sub_217E9E70C(&qword_27CBF5220, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_217F4AF54();
  sub_217E9BC34(v7, &v34[v33[13]]);
  LOBYTE(v41) = 10;
  v22 = sub_217F4AF84();
  v23 = &v34[v33[14]];
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v41) = 11;
  v25 = sub_217F4AF14();
  v26 = &v34[v33[15]];
  *v26 = v25;
  v26[1] = v27;
  v40 = 12;
  sub_217F4AFC4();
  *&v34[v33[16]] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54E8, &qword_217F4D518);
  v40 = 13;
  sub_217E9D724();
  sub_217F4AFC4();
  *&v34[v33[17]] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5508, &qword_217F4D520);
  v40 = 14;
  sub_217E9D838(&qword_27CBF5550, sub_217E9D8BC, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_217F4AFC4();
  *&v34[v33[18]] = v41;
  LOBYTE(v41) = 15;
  v34[v33[19]] = sub_217F4AF94() & 1;
  LOBYTE(v41) = 16;
  v34[v33[20]] = sub_217F4AF94() & 1;
  LOBYTE(v41) = 17;
  v34[v33[21]] = sub_217F4AF94() & 1;
  LOBYTE(v41) = 18;
  v34[v33[22]] = sub_217F4AF94() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5518, &qword_217F4D528);
  v40 = 19;
  sub_217E9C8B4(&qword_27CBF5560, sub_217E9D910, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_217F4AFC4();
  *&v34[v33[23]] = v41;
  LOBYTE(v41) = 20;
  v34[v33[24]] = sub_217F4AF94() & 1;
  LOBYTE(v41) = 21;
  v34[v33[25]] = sub_217F4AF94() & 1;
  LOBYTE(v41) = 22;
  sub_217F4AFA4();
  v29 = v28;
  (*(v35 + 8))(v37, v38);
  v30 = v34;
  *&v34[v33[26]] = v29;
  sub_217E9D964(v30, v36);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_217E9D9C8(v30);
}

uint64_t sub_217E9D4F4()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_217E9D580(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t sub_217E9D5C4()
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217E9D610(uint64_t a1)
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217E9D650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C0, &qword_217F4D500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217E9D6B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF54D8, &qword_217F4D510);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217E9D724()
{
  result = qword_27CBF5540;
  if (!qword_27CBF5540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF54E8, &qword_217F4D518);
    sub_217E9D7E4();
    sub_217E9D838(&qword_27CBF5550, sub_217E9D8BC, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5540);
  }

  return result;
}

unint64_t sub_217E9D7E4()
{
  result = qword_27CBF5548;
  if (!qword_27CBF5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5548);
  }

  return result;
}

uint64_t sub_217E9D838(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5508, &qword_217F4D520);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217E9D8BC()
{
  result = qword_27CBF5558;
  if (!qword_27CBF5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5558);
  }

  return result;
}

unint64_t sub_217E9D910()
{
  result = qword_27CBF5568;
  if (!qword_27CBF5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5568);
  }

  return result;
}

uint64_t sub_217E9D964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassicArticleData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E9D9C8(uint64_t a1)
{
  v2 = type metadata accessor for ClassicArticleData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217E9DA54(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_217F4B144();
  }
}

uint64_t ClassicArticleData.debugDescription.getter()
{
  v1 = v0;
  sub_217F4ADD4();

  MEMORY[0x21CEAEAC0](*(v1 + 8), *(v1 + 16));
  MEMORY[0x21CEAEAC0](0x73696C627550202CLL, 0xEC00000020726568);
  v2 = type metadata accessor for ClassicArticleData(0);
  MEMORY[0x21CEAEAC0](*(v1 + *(v2 + 56)), *(v1 + *(v2 + 56) + 8));
  MEMORY[0x21CEAEAC0](0x736369706F54202CLL, 0xE900000000000020);
  v3 = MEMORY[0x21CEAEBA0](*(v0 + *(v2 + 64)), MEMORY[0x277D837D0]);
  MEMORY[0x21CEAEAC0](v3);

  return 0x20656C6369747241;
}

XavierNews::ClassicHeadlineCohortType_optional __swiftcall ClassicHeadlineCohortType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217F4AEE4();

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

uint64_t ClassicHeadlineCohortType.rawValue.getter()
{
  if (*v0)
  {
    return 1684627824;
  }

  else
  {
    return 1701147238;
  }
}

uint64_t sub_217E9DC10(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1684627824;
  }

  else
  {
    v2 = 1701147238;
  }

  if (*a2)
  {
    v3 = 1684627824;
  }

  else
  {
    v3 = 1701147238;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_217F4B144();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_217E9DC88()
{
  sub_217F4B224();
  sub_217F4AB24();

  return sub_217F4B254();
}

uint64_t sub_217E9DCF0(uint64_t a1)
{
  sub_217F4AB24();
}

uint64_t sub_217E9DD3C(uint64_t a1)
{
  sub_217F4B224();
  sub_217F4AB24();

  return sub_217F4B254();
}

uint64_t sub_217E9DDA0@<X0>(char *a2@<X8>)
{
  v3 = sub_217F4AEE4();

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

  *a2 = v5;
  return result;
}

void sub_217E9DE00(uint64_t *a1@<X8>)
{
  v2 = 1701147238;
  if (*v1)
  {
    v2 = 1684627824;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_217E9DF20()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E9DF68(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

uint64_t sub_217E9DFAC()
{
  v1 = 0x736B63696C63;
  if (*v0 != 1)
  {
    v1 = 0x6973736572706D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B63696C43776172;
  }
}

uint64_t sub_217E9E010@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217E9FBC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217E9E050(uint64_t a1)
{
  v2 = sub_217E9E278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217E9E08C(uint64_t a1)
{
  v2 = sub_217E9E278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClassicHeadlineCohortData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5570, &qword_217F4D538);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217E9E278();
  sub_217F4B294();
  v12 = 0;
  sub_217F4B0A4();
  if (!v1)
  {
    v11 = 1;
    sub_217F4B0A4();
    v10 = 2;
    sub_217F4B0A4();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_217E9E278()
{
  result = qword_27CBF5578;
  if (!qword_27CBF5578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5578);
  }

  return result;
}

uint64_t ClassicHeadlineCohortData.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEAF1D0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x21CEAF1D0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x21CEAF1D0](*&v5);
}

uint64_t ClassicHeadlineCohortData.hashValue.getter()
{
  sub_217F4B224();
  ClassicHeadlineCohortData.hash(into:)();
  return sub_217F4B254();
}

uint64_t ClassicHeadlineCohortData.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5580, &qword_217F4D540);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217E9E278();
  sub_217F4B274();
  if (!v2)
  {
    v17[15] = 0;
    sub_217F4AFA4();
    v11 = v10;
    v17[14] = 1;
    sub_217F4AFA4();
    v14 = v13;
    v17[13] = 2;
    sub_217F4AFA4();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v14;
    *(a2 + 2) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217E9E598()
{
  sub_217F4B224();
  ClassicHeadlineCohortData.hash(into:)();
  return sub_217F4B254();
}

uint64_t sub_217E9E5F0(uint64_t a1)
{
  sub_217F4B224();
  ClassicHeadlineCohortData.hash(into:)();
  return sub_217F4B254();
}

uint64_t sub_217E9E640(uint64_t a1)
{
  *(a1 + 8) = sub_217E9E70C(&qword_280C29550, type metadata accessor for ClassicArticleData, &protocol conformance descriptor for ClassicArticleData);
  result = sub_217E9E70C(&qword_280C29560, type metadata accessor for ClassicArticleData, &protocol conformance descriptor for ClassicArticleData);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_217E9E70C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_217E9E758()
{
  result = qword_280C293C8;
  if (!qword_280C293C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C293C8);
  }

  return result;
}

unint64_t sub_217E9E7B0()
{
  result = qword_27CBF5588;
  if (!qword_27CBF5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5588);
  }

  return result;
}

void sub_217E9E980(uint64_t a1)
{
  sub_217E9EBD0(319);
  if (v1 <= 0x3F)
  {
    v2 = MEMORY[0x277D837D0];
    sub_217E9EC8C(319, &qword_280C29050, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      sub_217E9EC8C(319, &qword_280C29060, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v4 <= 0x3F)
      {
        sub_217E9EC8C(319, &qword_280C29068, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          sub_217E9EC34(319);
          if (v6 <= 0x3F)
          {
            sub_217E9EC8C(319, &qword_280C29080, v2, MEMORY[0x277D83D88]);
            if (v7 <= 0x3F)
            {
              sub_217E9EC8C(319, &qword_280C29078, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
              if (v8 <= 0x3F)
              {
                sub_217E9ECDC(319);
                if (v9 <= 0x3F)
                {
                  sub_217E9EDA8(319, &qword_280C29088, &type metadata for ClassicHeadlineCohortData);
                  if (v10 <= 0x3F)
                  {
                    sub_217E9EDA8(319, &qword_280C29090, &type metadata for ClassicTagMetadata);
                    if (v11 <= 0x3F)
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
}

void sub_217E9EBD0(uint64_t a1)
{
  if (!qword_280C29070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF54D8, &qword_217F4D510);
    v1 = sub_217F4AD74();
    if (!v2)
    {
      atomic_store(v1, &qword_280C29070);
    }
  }
}

void sub_217E9EC34(uint64_t a1)
{
  if (!qword_280C29568[0])
  {
    sub_217F4A9F4();
    v1 = sub_217F4AD74();
    if (!v2)
    {
      atomic_store(v1, qword_280C29568);
    }
  }
}

void sub_217E9EC8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_217E9ECDC(uint64_t a1)
{
  if (!qword_280C29098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5508, &qword_217F4D520);
    sub_217E9ED54();
    v1 = sub_217F4AAB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280C29098);
    }
  }
}

unint64_t sub_217E9ED54()
{
  result = qword_280C293D0[0];
  if (!qword_280C293D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C293D0);
  }

  return result;
}

void sub_217E9EDA8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_217F4AAB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ClassicHeadlineCohortType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClassicHeadlineCohortType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ClassicHeadlineCohortData(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ClassicHeadlineCohortData(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ClassicHeadlineCohortData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassicHeadlineCohortData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClassicArticleData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassicArticleData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217E9F270()
{
  result = qword_27CBF5590;
  if (!qword_27CBF5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5590);
  }

  return result;
}

unint64_t sub_217E9F2C8()
{
  result = qword_27CBF5598;
  if (!qword_27CBF5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5598);
  }

  return result;
}

unint64_t sub_217E9F320()
{
  result = qword_27CBF55A0;
  if (!qword_27CBF55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55A0);
  }

  return result;
}

unint64_t sub_217E9F378()
{
  result = qword_27CBF55A8;
  if (!qword_27CBF55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55A8);
  }

  return result;
}

unint64_t sub_217E9F3D0()
{
  result = qword_27CBF55B0;
  if (!qword_27CBF55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55B0);
  }

  return result;
}

unint64_t sub_217E9F428()
{
  result = qword_27CBF55B8;
  if (!qword_27CBF55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55B8);
  }

  return result;
}

uint64_t sub_217E9F47C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F67657461436461 && a2 == 0xEC00000073656972;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49656C6369747261 && a2 == 0xE900000000000044 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C656C6369747261 && a2 == 0xED00006874676E65 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6566694C666C6168 && a2 == 0xE800000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F5CA00 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F65646956736168 && a2 == 0xE800000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x464E417369 && a2 == 0xE500000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C646E75427369 && a2 == 0xEC00000064696150 || (sub_217F4B144() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_217F4B144() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xEB00000000444972 || (sub_217F4B144() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6546656372756F73 && a2 == 0xEC00000044496465 || (sub_217F4B144() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7344496369706F74 && a2 == 0xE800000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7374726F686F63 && a2 == 0xE700000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00617461446E6FLL || (sub_217F4B144() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F696475417369 && a2 == 0xE700000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6465727574616566 && a2 == 0xE800000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5C460 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x7267726576457369 && a2 == 0xEB000000006E6565 || (sub_217F4B144() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x646174654D676174 && a2 == 0xEB00000000617461 || (sub_217F4B144() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F5CA20 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x65766E6F43626577 && a2 == 0xEC00000064657472 || (sub_217F4B144() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F5CA40 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_217E9FBC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B63696C43776172 && a2 == 0xE900000000000073;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736B63696C63 && a2 == 0xE600000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_217E9FCE8()
{
  result = qword_27CBF55C0;
  if (!qword_27CBF55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55C0);
  }

  return result;
}

uint64_t sub_217E9FDB0()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E9FE10()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E9FE84(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

uint64_t sub_217E9FF20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  if (qword_280C28E90 != -1)
  {
LABEL_67:
    swift_once();
  }

  v7 = qword_280C28E98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_217F4C8A0;
  v9 = a1[2];
  v93 = v9;
  v10 = sub_217F4B104();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v14 = sub_217E86438();
  *(v8 + 64) = v14;
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v15 = MEMORY[0x21CEAEBA0](a4, &_s14descr2829CD401O17TagClusteringRuleON);
  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  v79 = v14;
  *(v8 + 72) = v15;
  *(v8 + 80) = v16;
  v17 = sub_217F4AD54();
  v80 = v7;
  sub_217F4AA44("Attempting to create group with %{public}@ tags and rules: %{public}@", 69, 2, &dword_217E7B000, v7, v17, v8);

  v81 = v9;
  if (v9)
  {
    v18 = 0;
    v82 = a1 + 4;
    v19 = a4 + 32;
    v20 = MEMORY[0x277D84F90];
    v85 = MEMORY[0x277D84F90];
    v78 = a4;
    while (1)
    {
      v24 = &v82[6 * v18];
      v86 = *v24;
      v25 = v24[2];
      v26 = v24[3];
      a1 = v24[4];
      v90 = *(v24 + 40);
      v88 = v24[1];
      if ((a3 & 1) == 0 && *(v20 + 2) >= a2)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_217E8D604(0, *(v85 + 2) + 1, 1, v85);
        }

        v46 = *(v85 + 2);
        v45 = *(v85 + 3);
        if (v46 >= v45 >> 1)
        {
          v85 = sub_217E8D604((v45 > 1), v46 + 1, 1, v85);
        }

        *(v85 + 2) = v46 + 1;
        v47 = &v85[48 * v46];
        *(v47 + 4) = v86;
        *(v47 + 5) = v88;
        *(v47 + 6) = v25;
        *(v47 + 7) = v26;
        *(v47 + 8) = a1;
        v47[72] = v90;
        v47[73] = 1;
        goto LABEL_5;
      }

      v84 = v18;
      v27 = *(a4 + 16);
      if (!v27)
      {
LABEL_33:
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_217E8D604(0, *(v20 + 2) + 1, 1, v20);
        }

        a4 = v78;
        v18 = v84;
        v44 = *(v20 + 2);
        v43 = *(v20 + 3);
        if (v44 >= v43 >> 1)
        {
          v20 = sub_217E8D604((v43 > 1), v44 + 1, 1, v20);
        }

        *(v20 + 2) = v44 + 1;
        v21 = &v20[48 * v44];
        *(v21 + 4) = v86;
        *(v21 + 5) = v88;
        *(v21 + 6) = v25;
        *(v21 + 7) = v26;
        *(v21 + 8) = a1;
        *(v21 + 36) = v90;
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_217F4BC20;

        *(v22 + 56) = MEMORY[0x277D837D0];
        *(v22 + 64) = v79;
        *(v22 + 32) = v86;
        *(v22 + 40) = v88;
        v23 = sub_217F4AD54();
        sub_217F4AA44("Accepting candidate %{public}@", 30, 2, &dword_217E7B000, v80, v23, v22);

        goto LABEL_5;
      }

      v28 = 0;
      v87 = v20 + 72;
      v89 = v20 + 64;
      while (1)
      {
        v29 = v19 + 16 * v28;
        v30 = *v29;
        if (*(v29 + 8))
        {
          break;
        }

        if (v90 == 1)
        {
          v37 = 0;
          v38 = *(v20 + 2) + 1;
          v39 = v87;
          while (--v38)
          {
            v40 = *v39;
            v39 += 48;
            v41 = v40 == 1;
            v35 = __OFADD__(v37, v41);
            v37 += v41;
            if (v35)
            {
              __break(1u);
              goto LABEL_67;
            }
          }

          if (v37 >= v30)
          {
            v42 = 0;
            goto LABEL_43;
          }
        }

LABEL_11:
        if (++v28 == v27)
        {
          goto LABEL_33;
        }
      }

      if (!a1)
      {
        goto LABEL_11;
      }

      a4 = v19;
      v31 = 0;
      v32 = v20;
      v20 = (*(v20 + 2) + 1);
      v33 = v89;
      while (--v20)
      {
        if (*v33)
        {
          if (*(v33 - 1) == v26 && *v33 == a1)
          {
            v34 = 1;
          }

          else
          {
            v34 = sub_217F4B144() & 1;
          }
        }

        else
        {
          v34 = 0;
        }

        v33 += 48;
        v35 = __OFADD__(v31, v34);
        v31 += v34;
        if (v35)
        {
          __break(1u);
          goto LABEL_65;
        }
      }

      v20 = v32;
      v19 = a4;
      if (v31 < v30)
      {
        goto LABEL_11;
      }

      v42 = 1;
LABEL_43:
      sub_217EA0884();
      v48 = swift_allocError();
      *v49 = v42;
      swift_willThrow();
      v93 = v48;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CEAF520](v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5268, &unk_217F4BF20);
      a4 = v78;
      if (swift_dynamicCast())
      {
        MEMORY[0x21CEAF510](v48);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_217F4BC20;

        *(v50 + 56) = MEMORY[0x277D837D0];
        *(v50 + 64) = v79;
        *(v50 + 32) = v86;
        *(v50 + 40) = v88;
        v51 = sub_217F4AD54();
        if (v91)
        {
          sub_217F4AA44("Skipping candidate %{public}@ because the max number of tags allowed per sport has exceeded.", 92, 2, &dword_217E7B000, v80, v51, v50);
          v52 = 3;
        }

        else
        {
          v52 = 2;
          sub_217F4AA44("Skipping candidate %{public}@ because sports league diversity threshold has been reached.", 89, 2, &dword_217E7B000, v80, v51, v50);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_217E8D604(0, *(v85 + 2) + 1, 1, v85);
        }

        v59 = *(v85 + 2);
        v58 = *(v85 + 3);
        if (v59 >= v58 >> 1)
        {
          v85 = sub_217E8D604((v58 > 1), v59 + 1, 1, v85);
        }

        *(v85 + 2) = v59 + 1;
        v60 = &v85[48 * v59];
        *(v60 + 4) = v86;
        *(v60 + 5) = v88;
        *(v60 + 6) = v25;
        *(v60 + 7) = v26;
        *(v60 + 8) = a1;
        v60[72] = v90;
        v60[73] = v52;
        MEMORY[0x21CEAF510](v93);
        v18 = v84;
      }

      else
      {
        MEMORY[0x21CEAF510](v48);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_217F4BC20;

        *(v53 + 56) = MEMORY[0x277D837D0];
        *(v53 + 64) = v79;
        *(v53 + 32) = v86;
        *(v53 + 40) = v88;
        v54 = sub_217F4AD54();
        sub_217F4AA44("Skipping candidate %{public}@ due to unknown error.", 51, 2, &dword_217E7B000, v80, v54, v53);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_217E8D604(0, *(v85 + 2) + 1, 1, v85);
        }

        v56 = *(v85 + 2);
        v55 = *(v85 + 3);
        if (v56 >= v55 >> 1)
        {
          v85 = sub_217E8D604((v55 > 1), v56 + 1, 1, v85);
        }

        MEMORY[0x21CEAF510](v48);
        *(v85 + 2) = v56 + 1;
        v57 = &v85[48 * v56];
        *(v57 + 4) = v86;
        *(v57 + 5) = v88;
        *(v57 + 6) = v25;
        *(v57 + 7) = v26;
        *(v57 + 8) = a1;
        v57[72] = v90;
        v57[73] = 4;
        v18 = v84;
      }

LABEL_5:
      if (++v18 == v81)
      {
        goto LABEL_58;
      }
    }
  }

  v85 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
LABEL_58:
  a1 = swift_allocObject();
  *(a1 + 1) = xmmword_217F4BC20;
  v93 = 0;
  v94 = 0xE000000000000000;
  v61 = *(v20 + 2);
  if (v61)
  {
    v92 = MEMORY[0x277D84F90];

    sub_217EA0864(0, v61, 0);
    v62 = v92;
    v63 = v20;
    v64 = (v20 + 40);
    do
    {
      v66 = *(v64 - 1);
      v65 = *v64;
      v67 = *(v92 + 16);
      v68 = *(v92 + 24);

      if (v67 >= v68 >> 1)
      {
        sub_217EA0864((v68 > 1), v67 + 1, 1);
      }

      *(v92 + 16) = v67 + 1;
      v69 = v92 + 16 * v67;
      *(v69 + 32) = v66;
      *(v69 + 40) = v65;
      v64 += 6;
      --v61;
    }

    while (v61);
    v20 = v63;
  }

  else
  {
LABEL_65:

    v62 = MEMORY[0x277D84F90];
  }

  v70 = MEMORY[0x277D837D0];
  v71 = MEMORY[0x21CEAEBA0](v62, MEMORY[0x277D837D0]);
  v73 = v72;

  MEMORY[0x21CEAEAC0](v71, v73);

  a1[7] = v70;
  a1[8] = v79;
  a1[4] = v93;
  a1[5] = v94;
  v74 = sub_217F4AD54();
  sub_217F4AA44("Finished creating group with tags: %{public}@", 45, 2, &dword_217E7B000, v80, v74, a1);

  *a5 = v20;
  a5[1] = v85;
  return result;
}

void *sub_217EA0844(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA0DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0864(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA10E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_217EA0884()
{
  result = qword_27CBF55C8;
  if (!qword_27CBF55C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55C8);
  }

  return result;
}

unint64_t sub_217EA08DC()
{
  result = qword_27CBF55D0;
  if (!qword_27CBF55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55D0);
  }

  return result;
}

uint64_t _s14descr2829CD401O18TagClusteringErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14descr2829CD401O18TagClusteringErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s14descr2829CD401O17TagClusteringRuleOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t _s14descr2829CD401O17TagClusteringRuleOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t _s14descr2829CD401O18SportsTagClustererVwet(unsigned int *a1, int a2)
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

_WORD *_s14descr2829CD401O18SportsTagClustererVwst(_WORD *result, int a2, int a3)
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

char *sub_217EA0C40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA11EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217EA0C60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA12F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0C80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA142C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0CA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA1548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0CC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA164C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0CE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA176C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0D00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA1888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0D20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA197C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217EA0D40(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA1A9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217EA0D60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA1D2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0D80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA1E74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217EA0DA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_217EA1F98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217EA0DC0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF55E8, &qword_217F4DC98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF55F0, &qword_217F4DCA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217EA0F08(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5468, &unk_217F4DD10);
  v10 = *(type metadata accessor for ReadonlyAggregate(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ReadonlyAggregate(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_217EA10E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217EA11EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5630, &qword_217F4DCF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217EA12F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5638, &qword_217F4DD00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5640, &qword_217F4DD08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217EA142C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5428, &qword_217F4DCF0);
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
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_217EA1548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5360, &qword_217F4CBC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_217EA164C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5620, &qword_217F4DCE0);
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
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_217EA176C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53E0, &qword_217F4CC50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217EA1888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5628, &qword_217F4DCE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_217EA197C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53D8, &qword_217F4CC48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217EA1A9C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5610, &qword_217F4DCD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5618, &qword_217F4DCD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217EA1BE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53E8, &qword_217F4CC58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5608, &unk_217F4DCC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217EA1D2C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF55F8, &qword_217F4DCA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5600, &unk_217F4DCB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217EA1E74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5348, &unk_217F4CBB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217EA1F98(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF55D8, &qword_217F4DC88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF55E0, &qword_217F4DC90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_217EA2134())(double *a1)
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217F4DD20;
  v1 = swift_allocObject();
  *(v1 + 16) = sub_217EA339C;
  *(v1 + 24) = v0;
  return sub_217EA33D0;
}

uint64_t (*sub_217EA2210())(double *a1)
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217F4DD30;
  v1 = swift_allocObject();
  *(v1 + 16) = sub_217EA3398;
  *(v1 + 24) = v0;
  return sub_217EA332C;
}

uint64_t (*sub_217EA22D4(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_217EA23FC;
}

uint64_t sub_217EA2328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 40))(a2, a3);
  swift_getAssociatedTypeWitness();
  sub_217F4AC94();
  swift_getWitnessTable();
  v3 = sub_217F4AB44();

  return v3 & 1;
}

uint64_t (*sub_217EA2404(uint64_t a1))()
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  sub_217EA22D4(v1, v2);
  v4 = v3;
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = sub_217EA23FC;
  v5[5] = v4;
  return sub_217EA32FC;
}

BOOL sub_217EA254C(uint64_t a1)
{
  v1 = *a1 >= 0.0;
  if (*a1 > 1.0)
  {
    v1 = 0;
  }

  return *(a1 + 8) >= 0 && v1;
}

uint64_t sub_217EA25AC(float64x2_t *a1)
{
  v1 = a1[1];
  __asm { FMOV            V2.2D, #1.0 }

  LODWORD(_Q2.f64[0]) = vuzp1_s8(vmovn_s32(vuzp1q_s32(vcgeq_f64(_Q2, *a1), vcgeq_f64(_Q2, v1))), *&a1->f64[0]).u32[0];
  v7 = vmovn_s32(vuzp1q_s32(vcgezq_f64(*a1), vcgezq_f64(v1)));
  HIDWORD(_Q2.f64[0]) = vuzp1_s8(v7, v7).i32[1];
  return vminv_u8(vcltz_s8(vshl_n_s8(*&_Q2.f64[0], 7uLL))) & 1;
}

uint64_t sub_217EA2668(uint64_t result)
{
  v1 = 0;
  v2 = result + 64;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if ((*(*(result + 48) + ((v7 << 9) | (8 * v8))) & 0x8000000000000000) != 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  v9 = 0;
  v10 = 1 << *(result + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(result + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = v9;
LABEL_21:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    if (*(*(result + 56) + ((v14 << 9) | (8 * v15))) < 0.0)
    {
      return 0;
    }
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v13)
    {
      return 1;
    }

    v12 = *(v2 + 8 * v14);
    ++v9;
    if (v12)
    {
      v9 = v14;
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

BOOL sub_217EA2804(double *a1)
{
  result = 0;
  if (*a1 >= 0.0 && a1[1] >= 0.0 && a1[2] >= 0.0)
  {
    return a1[3] >= 0.0;
  }

  return result;
}

unint64_t sub_217EA298C()
{
  result = qword_27CBF5648;
  if (!qword_27CBF5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5648);
  }

  return result;
}

unint64_t sub_217EA29E4()
{
  result = qword_280C27A38;
  if (!qword_280C27A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27A38);
  }

  return result;
}

unint64_t sub_217EA2A3C()
{
  result = qword_27CBF5650;
  if (!qword_27CBF5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5650);
  }

  return result;
}

unint64_t sub_217EA2A94()
{
  result = qword_27CBF5658;
  if (!qword_27CBF5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5658);
  }

  return result;
}

unint64_t sub_217EA2AEC()
{
  result = qword_280C27E40;
  if (!qword_280C27E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27E40);
  }

  return result;
}

unint64_t sub_217EA2B44()
{
  result = qword_27CBF5660;
  if (!qword_27CBF5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5660);
  }

  return result;
}

unint64_t sub_217EA2B9C()
{
  result = qword_27CBF5668;
  if (!qword_27CBF5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5668);
  }

  return result;
}

unint64_t sub_217EA2BF4()
{
  result = qword_27CBF5670;
  if (!qword_27CBF5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5670);
  }

  return result;
}

unint64_t sub_217EA2C4C()
{
  result = qword_27CBF5678;
  if (!qword_27CBF5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5678);
  }

  return result;
}

unint64_t sub_217EA2CA4()
{
  result = qword_27CBF5680;
  if (!qword_27CBF5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5680);
  }

  return result;
}

unint64_t sub_217EA2CFC()
{
  result = qword_27CBF5688;
  if (!qword_27CBF5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5688);
  }

  return result;
}

unint64_t sub_217EA2D54()
{
  result = qword_27CBF5690;
  if (!qword_27CBF5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5690);
  }

  return result;
}

uint64_t sub_217EA2E30(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF56A0, qword_217F4DE10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217EA2EA4()
{
  result = qword_27CBF56B0;
  if (!qword_27CBF56B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF56A0, qword_217F4DE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56B0);
  }

  return result;
}

unint64_t sub_217EA2F24()
{
  result = qword_27CBF56B8;
  if (!qword_27CBF56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56B8);
  }

  return result;
}

unint64_t sub_217EA2F7C()
{
  result = qword_27CBF56C0;
  if (!qword_27CBF56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56C0);
  }

  return result;
}

unint64_t sub_217EA2FD4()
{
  result = qword_27CBF56C8;
  if (!qword_27CBF56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56C8);
  }

  return result;
}

unint64_t sub_217EA302C()
{
  result = qword_27CBF56D0;
  if (!qword_27CBF56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56D0);
  }

  return result;
}

unint64_t sub_217EA3084()
{
  result = qword_27CBF56D8;
  if (!qword_27CBF56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56D8);
  }

  return result;
}

unint64_t sub_217EA30DC()
{
  result = qword_27CBF56E0[0];
  if (!qword_27CBF56E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF56E0);
  }

  return result;
}

uint64_t sub_217EA3220(unsigned int *a1, int a2)
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

_WORD *sub_217EA3270(_WORD *result, int a2, int a3)
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

uint64_t GroupableHeadline.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GroupableHeadline.publisherID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GroupableHeadline.thumbnailPerceptualHash.getter()
{
  v1 = *(v0 + 72);
  sub_217EA34A8(v1, *(v0 + 80));
  return v1;
}

uint64_t sub_217EA34A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_217EA34BC(a1, a2);
  }

  return a1;
}

uint64_t sub_217EA34BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t GroupableHeadline.init(identifier:publisherID:topicIDs:managedTopicIDs:managedWinnerTopicIDs:score:accessible:bundlePaid:aigc:evergreen:thumbnailPerceptualHash:groupingReason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, char a11, char a12, char a13, uint64_t a14, uint64_t a15, char *a16)
{
  v16 = *a16;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a10;
  *(a9 + 64) = a8;
  *(a9 + 65) = a13;
  *(a9 + 66) = a11;
  *(a9 + 67) = a12;
  *(a9 + 72) = a14;
  *(a9 + 80) = a15;
  *(a9 + 88) = v16;
  return result;
}

double GroupableHeadline.computedScore(tagID:config:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 928);
  v7 = *(a3 + 936);
  v8 = *(v3 + 40);
  v9 = *(v3 + 56);
  if ((sub_217EA3608(a1, a2, *(v3 + 48)) & 1) == 0)
  {
    if (sub_217EA3608(a1, a2, v8))
    {
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }
  }

  return v9 * v7;
}

uint64_t sub_217EA3608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_217F4B224();
  sub_217F4AB24();
  v6 = sub_217F4B254();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_217F4B144() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t static GroupableHeadline.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217F4B144();
  }
}

uint64_t sub_217EA3730(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217F4B144();
  }
}

uint64_t GroupableHeadline.hashValue.getter()
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217EA37B4()
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217EA3808(uint64_t a1)
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t GroupableHeadline.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](2114633, 0xE300000000000000);
  MEMORY[0x21CEAEAC0](v1, v2);
  MEMORY[0x21CEAEAC0](0x736369706F54202CLL, 0xE900000000000020);
  v3 = sub_217F4ACC4();
  MEMORY[0x21CEAEAC0](v3);

  MEMORY[0x21CEAEAC0](0x2065726F6353202CLL, 0xE800000000000000);
  sub_217F4ACB4();
  return 0;
}

unint64_t sub_217EA395C()
{
  result = qword_280C28820;
  if (!qword_280C28820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28820);
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_217EA3A1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_217EA3A64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217EA3ACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_217EA0C40(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  result = sub_217F4AD84();
  v6 = result;
  v7 = 0;
  v25 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v24 = *(*(a1 + 56) + 16 * v6);
    v12 = *(v26 + 16);
    v13 = *(v26 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_217EA0C40((v13 > 1), v12 + 1, 1);
    }

    *(v26 + 16) = v12 + 1;
    v14 = v26 + 32 * v12;
    *(v14 + 32) = v23;
    *(v14 + 40) = v11;
    *(v14 + 48) = v24;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_217EB9F3C(v6, v25, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_217EB9F3C(v6, v25, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217EA3D24()
{
  if (*v0)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x6C616E7265747865;
  }
}

uint64_t sub_217EA3D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217EA3E2C(uint64_t a1)
{
  v2 = sub_217EA4364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA3E68(uint64_t a1)
{
  v2 = sub_217EA4364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA3EBC(uint64_t a1)
{
  v2 = sub_217EA440C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA3EF8(uint64_t a1)
{
  v2 = sub_217EA440C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA3F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000217F5CFE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217F4B144();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217EA3FF8(uint64_t a1)
{
  v2 = sub_217EA43B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA4034(uint64_t a1)
{
  v2 = sub_217EA43B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Mode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5768, &qword_217F4E260);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v21 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5770, &qword_217F4E268);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5778, &qword_217F4E270);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EA4364();
  sub_217F4B294();
  if (v15 == 2)
  {
    v24 = 0;
    sub_217EA440C();
    sub_217F4B004();
    (*(v19 + 8))(v9, v20);
  }

  else
  {
    v25 = 1;
    sub_217EA43B8();
    v17 = v21;
    sub_217F4B004();
    v18 = v23;
    sub_217F4B094();
    (*(v22 + 8))(v17, v18);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_217EA4364()
{
  result = qword_280C28E60;
  if (!qword_280C28E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E60);
  }

  return result;
}

unint64_t sub_217EA43B8()
{
  result = qword_280C28E38;
  if (!qword_280C28E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E38);
  }

  return result;
}

unint64_t sub_217EA440C()
{
  result = qword_27CBF5780;
  if (!qword_27CBF5780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5780);
  }

  return result;
}

uint64_t ClusteringJournal.Mode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5788, &qword_217F4E278);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v3);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5790, &qword_217F4E280);
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5798, &qword_217F4E288);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v30 - v13;
  v15 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_217EA4364();
  v16 = v34;
  sub_217F4B274();
  if (!v16)
  {
    v34 = v6;
    v17 = v11;
    v18 = v33;
    v19 = sub_217F4AFE4();
    v20 = v10;
    if (*(v19 + 16) == 1)
    {
      v21 = v11;
      if (*(v19 + 32))
      {
        v37 = 1;
        sub_217EA43B8();
        v22 = v20;
        sub_217F4AEF4();
        v27 = v5;
        v28 = v30;
        v29 = sub_217F4AF94();
        (*(v32 + 8))(v27, v28);
        (*(v21 + 8))(v14, v22);
        swift_unknownObjectRelease();
        *v18 = v29 & 1;
      }

      else
      {
        v36 = 0;
        sub_217EA440C();
        sub_217F4AEF4();
        (*(v31 + 8))(v9, v34);
        (*(v11 + 8))(v14, v20);
        swift_unknownObjectRelease();
        *v18 = 2;
      }
    }

    else
    {
      v23 = sub_217F4AE04();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290);
      *v25 = &type metadata for ClusteringJournal.Mode;
      sub_217F4AF04();
      sub_217F4ADE4();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v17 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_217EA4904()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClusteringJournal.Inventory.Item.tagID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_217EA49A8()
{
  v1 = 0x656E696C64616568;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449676174;
  }
}

uint64_t sub_217EA4A08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EB43B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EA4A3C(uint64_t a1)
{
  v2 = sub_217EA4C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA4A78(uint64_t a1)
{
  v2 = sub_217EA4C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Inventory.Item.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57A0, &qword_217F4E298);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EA4C68();
  sub_217F4B294();
  v14 = 0;
  v9 = v11[3];
  sub_217F4B084();
  if (v9)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v13 = 1;
  sub_217F4B0B4();
  v12 = 2;
  sub_217F4B0B4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_217EA4C68()
{
  result = qword_280C28A00;
  if (!qword_280C28A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28A00);
  }

  return result;
}

uint64_t ClusteringJournal.Inventory.Item.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57A8, &unk_217F4E2A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EA4C68();
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_217F4AF84();
  v12 = v11;
  v13 = v10;
  v19 = 1;
  v17 = sub_217F4AFB4();
  v18 = 2;
  v15 = sub_217F4AFB4();
  (*(v6 + 8))(v9, v5);
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217EA4F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v60 = MEMORY[0x277D84F90];
    sub_217EA0864(0, v4, 0);
    v5 = v60;
    v6 = (a2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v60 + 16);
      v10 = *(v60 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_217EA0864((v10 > 1), v9 + 1, 1);
      }

      *(v60 + 16) = v9 + 1;
      v11 = v60 + 16 * v9;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 4;
      --v4;
    }

    while (v4);

    v12 = a1;
  }

  else
  {
    v12 = a1;

    v5 = MEMORY[0x277D84F90];
  }

  v13 = sub_217E97288(v5);

  v51 = *(v12 + 16);
  if (!v51)
  {

    v17 = MEMORY[0x277D84F98];
    goto LABEL_40;
  }

  v15 = 0;
  v50 = v12 + 32;
  v16 = v13 + 56;
  v17 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v15 >= *(v12 + 16))
    {
      goto LABEL_44;
    }

    v54 = v15;
    v18 = v50 + 96 * v15;
    v19 = *(v18 + 24);
    v20 = *(v18 + 32);
    v21 = *(v18 + 48);
    v56 = *(v18 + 64);
    v53 = *(v18 + 66);
    v22 = *(v18 + 80);
    v55 = *(v18 + 72);
    v24 = *(v18 + 8);
    v23 = *(v18 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217F4BC20;
    *(inited + 32) = v23;
    *(inited + 40) = v19;
    v26 = *(v20 + 16);

    v58 = v21;

    sub_217EA34A8(v55, v22);

    v61 = sub_217E8DB18(0, v26 + 1, 0, MEMORY[0x277D84F90]);

    sub_217E80724(v27);
    sub_217E80630(inited);
    v28 = v61;
    v59 = *(v61 + 2);
    if (v59)
    {
      break;
    }

LABEL_10:

    v12 = a1;
    v15 = v54 + 1;
    result = sub_217EB9ED4(v55, v22);
    if (v54 + 1 == v51)
    {

LABEL_40:
      v48 = sub_217EA3ACC(v17);

      *a3 = v48;
      return result;
    }
  }

  v29 = 0;
  v57 = (v56 ^ 1) & v53;
  v30 = v24;
  result = v58;
  while (v29 < *(v28 + 2))
  {
    if (!*(v13 + 16))
    {
      goto LABEL_16;
    }

    v31 = v30;
    v32 = &v61[16 * v29 + 32];
    v33 = *v32;
    v34 = v32[1];
    sub_217F4B224();

    sub_217F4AB24();
    v35 = sub_217F4B254();
    v36 = -1 << *(v13 + 32);
    v37 = v35 & ~v36;
    if ((*(v16 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
    {
      v38 = ~v36;
      while (1)
      {
        v39 = (*(v13 + 48) + 16 * v37);
        result = *v39;
        if (*v39 == v33 && v39[1] == v34)
        {
          break;
        }

        result = sub_217F4B144();
        if (result)
        {
          break;
        }

        v37 = (v37 + 1) & v38;
        if (((*(v16 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v41 = *(v17 + 16);
      if (v41)
      {
        result = sub_217E8E88C(v33, v34);
        if (v42)
        {
          v43 = v17;
          v44 = (*(v17 + 56) + 16 * result);
          v45 = *v44 + 1;
          if (__OFADD__(*v44, 1))
          {
            goto LABEL_43;
          }

          v41 = v44[1];
          goto LABEL_35;
        }

        v43 = v17;
        v41 = 0;
      }

      else
      {
        v43 = v17;
      }

      v45 = 1;
LABEL_35:
      v46 = v41 + v57;
      if (__OFADD__(v41, v57))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_217F19B9C(v45, v46, v33, v34, isUniquelyReferenced_nonNull_native);

      v17 = v43;
      goto LABEL_15;
    }

LABEL_14:

LABEL_15:
    v30 = v31;
    v28 = v61;
    result = v58;
LABEL_16:
    if (++v29 == v59)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t ClusteringJournal.Inventory.data.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_217EA0C60(0, v2, 0);
    v3 = v15;
    v4 = (v1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v15 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_217EA0C60((v9 > 1), v10 + 1, 1);
        v3 = v15;
      }

      v4 += 4;
      *(v3 + 16) = v10 + 1;
      v11 = (v3 + 32 * v10);
      v11[4] = v6;
      v11[5] = v5;
      v11[6] = v7;
      v11[7] = v8;
      --v2;
    }

    while (v2);
  }

  else if (!*(MEMORY[0x277D84F90] + 16))
  {
    v12 = MEMORY[0x277D84F98];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5438, &qword_217F4CCA8);
  v12 = sub_217F4AED4();
LABEL_9:
  v15 = v12;

  sub_217EB23A4(v13, 1, &v15);

  return v15;
}

uint64_t sub_217EA5564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EA55F4(uint64_t a1)
{
  v2 = sub_217EB273C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA5630(uint64_t a1)
{
  v2 = sub_217EB273C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Inventory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57B0, &qword_217F4E2B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB273C();

  sub_217F4B294();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57B8, &qword_217F4E2B8);
  sub_217EB2790();
  sub_217F4B0C4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ClusteringJournal.Inventory.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57C0, &qword_217F4E2C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB273C();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57B8, &qword_217F4E2B8);
    sub_217EB2868();
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ClusteringJournal.Result.Article.articleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_217EA59C8()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x49656C6369747261;
  }
}

uint64_t sub_217EA5A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217EA5AF0(uint64_t a1)
{
  v2 = sub_217EB2940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA5B2C(uint64_t a1)
{
  v2 = sub_217EB2940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.Article.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57D8, &qword_217F4E2C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB2940();
  sub_217F4B294();
  v11 = 0;
  v7 = v9;
  sub_217F4B084();
  if (!v7)
  {
    v10 = 1;
    sub_217F4B0A4();
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t ClusteringJournal.Result.Article.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57E0, &qword_217F4E2D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB2940();
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17[15] = 0;
  v10 = sub_217F4AF84();
  v12 = v11;
  v13 = v10;
  v17[14] = 1;
  sub_217F4AFA4();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *a2 = v13;
  *(a2 + 1) = v12;
  *(a2 + 2) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ClusteringJournal.Result.Requirements.bundlePaidQuotas.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_217EB2994(v7, &v6);
}

unint64_t sub_217EA5F70()
{
  v1 = 0x7473756C436E696DLL;
  v2 = 0x7473756C4378616DLL;
  if (*v0 != 2)
  {
    v2 = 0x73656C7572;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217EA5FF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EB44D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EA6028(uint64_t a1)
{
  v2 = sub_217EB29F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA6064(uint64_t a1)
{
  v2 = sub_217EB29F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.Requirements.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57E8, &qword_217F4E2D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v14 - v7;
  v9 = v1[1];
  v26 = *v1;
  v27 = v9;
  v10 = v1[3];
  v28 = v1[2];
  v29 = v10;
  v11 = *(v1 + 9);
  v30 = *(v1 + 8);
  v14[1] = v11;
  v14[0] = *(v1 + 10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB2994(&v26, &v22);
  sub_217EB29F0();
  sub_217F4B294();
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  v21 = 0;
  sub_217EA29E4();
  sub_217F4B0C4();
  if (v2)
  {
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    sub_217EB2A44(&v17);
  }

  else
  {
    v12 = v14[0];
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    sub_217EB2A44(&v17);
    LOBYTE(v16) = 1;
    sub_217F4B0B4();
    LOBYTE(v16) = 2;
    sub_217F4B0B4();
    v16 = v12;
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57F0, &qword_217F4E2E0);
    sub_217EB2A98();
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ClusteringJournal.Result.Requirements.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57F8, &qword_217F4E2E8);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v6);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB29F0();
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = 0;
  sub_217EA298C();
  sub_217F4AFC4();
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  LOBYTE(v21[0]) = 1;
  v9 = sub_217F4AFB4();
  LOBYTE(v21[0]) = 2;
  v16 = sub_217F4AFB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57F0, &qword_217F4E2E0);
  v34 = 3;
  sub_217EB2B70();
  sub_217F4AFC4();
  (*(v5 + 8))(v8, v17);
  v10 = v25;
  v11 = v30;
  v12 = v31;
  v18[0] = v30;
  v18[1] = v31;
  v13 = v33;
  v18[2] = v32;
  v18[3] = v33;
  v14 = v16;
  *&v19 = v9;
  *(&v19 + 1) = v16;
  v20 = v25;
  *(a2 + 32) = v32;
  *(a2 + 48) = v13;
  *(a2 + 80) = v10;
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 64) = v19;
  sub_217EB2C48(v18, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v21[0] = v30;
  v21[1] = v31;
  v21[2] = v32;
  v21[3] = v33;
  v22 = v9;
  v23 = v14;
  v24 = v10;
  return sub_217EB2C80(v21);
}

uint64_t sub_217EA66D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EA6774(uint64_t a1)
{
  v2 = sub_217EB2FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA67B0(uint64_t a1)
{
  v2 = sub_217EB2FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA67EC()
{
  v1 = 0x6369706F74;
  if (*v0 != 1)
  {
    v1 = 0x6C656E6E616863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x59726F4665726F6DLL;
  }
}

uint64_t sub_217EA6848@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EB4654(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EA687C(uint64_t a1)
{
  v2 = sub_217EB2F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA68B8(uint64_t a1)
{
  v2 = sub_217EB2F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA690C(uint64_t a1)
{
  v2 = sub_217EB3068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA6948(uint64_t a1)
{
  v2 = sub_217EB3068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA69A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496369706F74 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EA6A38(uint64_t a1)
{
  v2 = sub_217EB3014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA6A74(uint64_t a1)
{
  v2 = sub_217EB3014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.Group.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5810, &qword_217F4E2F0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v31 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5818, &qword_217F4E2F8);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5820, &qword_217F4E300);
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v26 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5828, &qword_217F4E308);
  v14 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v15);
  v17 = &v26 - v16;
  v18 = *v1;
  v34 = v1[1];
  v35 = v18;
  v19 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB2F6C();
  sub_217F4B294();
  if (!v19)
  {
    v38 = 1;
    sub_217EB3014();
    v21 = v36;
    sub_217F4B004();
    v23 = v30;
    sub_217F4B084();
    (*(v29 + 8))(v9, v23);
    return (*(v14 + 8))(v17, v21);
  }

  if (v19 == 1)
  {
    v39 = 2;
    sub_217EB2FC0();
    v20 = v31;
    v21 = v36;
    sub_217F4B004();
    v22 = v33;
    sub_217F4B084();
    (*(v32 + 8))(v20, v22);
    return (*(v14 + 8))(v17, v21);
  }

  v37 = 0;
  sub_217EB3068();
  v25 = v36;
  sub_217F4B004();
  (*(v27 + 8))(v13, v28);
  return (*(v14 + 8))(v17, v25);
}

uint64_t ClusteringJournal.Result.Group.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      return MEMORY[0x21CEAF1C0](0);
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x21CEAF1C0](v2);

  return sub_217F4AB24();
}

uint64_t ClusteringJournal.Result.Group.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_217F4B224();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x21CEAF1C0](0);
      return sub_217F4B254();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x21CEAF1C0](v2);
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t ClusteringJournal.Result.Group.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5830, &qword_217F4E310);
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v3);
  v54 = &v45 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5838, &qword_217F4E318);
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v5);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5840, &qword_217F4E320);
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5848, &qword_217F4E328);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v45 - v15;
  v17 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_217EB2F6C();
  v18 = v55;
  sub_217F4B274();
  if (!v18)
  {
    v46 = 0;
    v47 = v13;
    v19 = v53;
    v20 = v54;
    v55 = v16;
    v21 = sub_217F4AFE4();
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(v21 + 32);
      if (v22 == 1 && v23 != 3)
      {
        if (*(v21 + 32))
        {
          if (v23 == 1)
          {
            v58 = 1;
            sub_217EB3014();
            v30 = v7;
            v31 = v55;
            v32 = v46;
            sub_217F4AEF4();
            if (!v32)
            {
              v33 = v49;
              v53 = sub_217F4AF84();
              v40 = v39;
              (*(v51 + 8))(v30, v33);
              (*(v47 + 8))(v31, v12);
              swift_unknownObjectRelease();
              v41 = 0;
              v42 = v52;
LABEL_20:
              *v42 = v53;
              *(v42 + 8) = v40;
              *(v42 + 16) = v41;
              return __swift_destroy_boxed_opaque_existential_1(v56);
            }

            (*(v47 + 8))(v31, v12);
            goto LABEL_18;
          }

          v59 = 2;
          sub_217EB2FC0();
          v34 = v55;
          v36 = v46;
          sub_217F4AEF4();
          v42 = v52;
          if (!v36)
          {
            v37 = v48;
            v53 = sub_217F4AF84();
            v38 = v47;
            v46 = 0;
            v40 = v43;
            (*(v50 + 8))(v20, v37);
            (*(v38 + 8))(v55, v12);
            swift_unknownObjectRelease();
            v41 = 1;
            goto LABEL_20;
          }
        }

        else
        {
          v57 = 0;
          sub_217EB3068();
          v34 = v55;
          v35 = v46;
          sub_217F4AEF4();
          if (!v35)
          {
            (*(v19 + 8))(v11, v8);
            (*(v47 + 8))(v34, v12);
            swift_unknownObjectRelease();
            v53 = 0;
            v40 = 0;
            v41 = 2;
            v42 = v52;
            goto LABEL_20;
          }
        }

        (*(v47 + 8))(v34, v12);
LABEL_18:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v56);
      }
    }

    v25 = sub_217F4AE04();
    swift_allocError();
    v26 = v12;
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290);
    *v28 = &type metadata for ClusteringJournal.Result.Group;
    v29 = v55;
    sub_217F4AF04();
    sub_217F4ADE4();
    (*(*(v25 - 8) + 104))(v28, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v47 + 8))(v29, v26);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_217EA7644()
{
  v1 = *(v0 + 16);
  sub_217F4B224();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x21CEAF1C0](0);
      return sub_217F4B254();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x21CEAF1C0](v2);
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217EA76D0(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      return MEMORY[0x21CEAF1C0](0);
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x21CEAF1C0](v2);

  return sub_217F4AB24();
}

uint64_t sub_217EA7758(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_217F4B224();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x21CEAF1C0](0);
      return sub_217F4B254();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x21CEAF1C0](v3);
  sub_217F4AB24();
  return sub_217F4B254();
}

unint64_t sub_217EA77E4()
{
  v1 = 0x63696E6167726FLL;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x6465746F6D6F7270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217EA7864@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EB4770(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EA7898(uint64_t a1)
{
  v2 = sub_217EB30BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA78D4(uint64_t a1)
{
  v2 = sub_217EB30BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA791C(uint64_t a1)
{
  v2 = sub_217EB320C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA7958(uint64_t a1)
{
  v2 = sub_217EB320C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA79A0(uint64_t a1)
{
  v2 = sub_217EB3164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA79DC(uint64_t a1)
{
  v2 = sub_217EB3164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA7A24(uint64_t a1)
{
  v2 = sub_217EB31B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA7A60(uint64_t a1)
{
  v2 = sub_217EB31B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA7A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953459315 && a2 == 0xE400000000000000;
  if (v5 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E49656372756F73 && a2 == 0xEB00000000786564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217EA7B88(uint64_t a1)
{
  v2 = sub_217EB3110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA7BC4(uint64_t a1)
{
  v2 = sub_217EB3110();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.AcceptanceReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5850, &qword_217F4E330);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v45 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5858, &qword_217F4E338);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5860, &qword_217F4E340);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5868, &qword_217F4E348);
  v40 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5870, &qword_217F4E350);
  v19 = *(v18 - 8);
  v51 = v18;
  v52 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v21 = *v1;
  v48 = v1[1];
  v49 = v21;
  v22 = *(v1 + 16);
  v23 = a1[3];
  v24 = a1;
  v26 = &v40 - v25;
  __swift_project_boxed_opaque_existential_1(v24, v23);
  sub_217EB30BC();
  sub_217F4B294();
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v61 = 2;
      sub_217EB3164();
      v27 = v51;
      sub_217F4B004();
      v60 = 0;
      v31 = v50;
      v14 = v44;
      sub_217F4B0B4();
      if (v31)
      {
        v29 = *(v43 + 8);
        v30 = v9;
        goto LABEL_13;
      }

      v59 = 1;
      sub_217F4B0B4();
      v29 = *(v43 + 8);
      v30 = v9;
    }

    else
    {
      v64 = 3;
      sub_217EB3110();
      v37 = v45;
      v27 = v51;
      sub_217F4B004();
      v63 = 0;
      v38 = v50;
      v14 = v47;
      sub_217F4B0B4();
      if (v38)
      {
        v29 = *(v46 + 8);
        v30 = v37;
        goto LABEL_13;
      }

      v62 = 1;
      sub_217F4B0B4();
      v29 = *(v46 + 8);
      v30 = v37;
    }

LABEL_17:
    v39 = v14;
    goto LABEL_18;
  }

  if (!v22)
  {
    v55 = 0;
    sub_217EB320C();
    v27 = v51;
    sub_217F4B004();
    v54 = 0;
    v28 = v50;
    sub_217F4B0B4();
    if (v28)
    {
      v29 = *(v40 + 8);
      v30 = v17;
LABEL_13:
      v39 = v14;
LABEL_18:
      v29(v30, v39);
      return (*(v52 + 8))(v26, v27);
    }

    v53 = 1;
    sub_217F4B0B4();
    v29 = *(v40 + 8);
    v30 = v17;
    goto LABEL_17;
  }

  v58 = 1;
  sub_217EB31B8();
  v32 = v26;
  v33 = v51;
  sub_217F4B004();
  v57 = 0;
  v34 = v50;
  v35 = v42;
  sub_217F4B0B4();
  if (!v34)
  {
    v56 = 1;
    sub_217F4B0B4();
  }

  (*(v41 + 8))(v13, v35);
  return (*(v52 + 8))(v32, v33);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.AcceptanceReason.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5880, &qword_217F4E358);
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v3);
  v78 = &v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5888, &qword_217F4E360);
  v6 = *(v5 - 8);
  v74 = v5;
  v75 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v77 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5890, &qword_217F4E368);
  v10 = *(v9 - 8);
  v72 = v9;
  v73 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5898, &qword_217F4E370);
  v71 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58A0, &qword_217F4E378);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v65 - v21;
  v23 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_217EB30BC();
  v24 = v80;
  sub_217F4B274();
  if (!v24)
  {
    v66 = v14;
    v67 = 0;
    v26 = v77;
    v25 = v78;
    v27 = v79;
    v80 = v19;
    v68 = v22;
    v69 = v18;
    v28 = sub_217F4AFE4();
    v29 = *(v28 + 16);
    if (!v29 || ((v30 = *(v28 + 32), v29 == 1) ? (v31 = v30 == 4) : (v31 = 1), v31))
    {
      v32 = sub_217F4AE04();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290);
      *v34 = &type metadata for ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.AcceptanceReason;
      v35 = v68;
      v36 = v69;
      sub_217F4AF04();
      sub_217F4ADE4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v80 + 8))(v35, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v28 + 32) <= 1u)
      {
        if (!*(v28 + 32))
        {
          v84 = 0;
          sub_217EB320C();
          v37 = v17;
          v38 = v68;
          v39 = v69;
          v40 = v67;
          sub_217F4AEF4();
          if (v40)
          {
            v41 = *(v80 + 8);
            v42 = v38;
LABEL_18:
            v41(v42, v39);
LABEL_25:
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v81);
          }

          v83 = 0;
          v56 = v66;
          v57 = sub_217F4AFB4();
          v58 = v80;
          v67 = v57;
          v82 = 1;
          v63 = sub_217F4AFB4();
          (*(v71 + 8))(v37, v56);
          (*(v58 + 8))(v68, v39);
          swift_unknownObjectRelease();
LABEL_28:
          v64 = v70;
          *v70 = v67;
          v64[1] = v63;
          *(v64 + 16) = v30;
          return __swift_destroy_boxed_opaque_existential_1(v81);
        }

        v87 = 1;
        sub_217EB31B8();
        v49 = v13;
        v50 = v68;
        v39 = v69;
        v51 = v67;
        sub_217F4AEF4();
        if (v51)
        {
          v41 = *(v80 + 8);
          v42 = v50;
          goto LABEL_18;
        }

        v86 = 0;
        v59 = v72;
        v67 = sub_217F4AFB4();
        v85 = 1;
        v63 = sub_217F4AFB4();
        (*(v73 + 8))(v49, v59);
        (*(v80 + 8))(v50, v69);
LABEL_27:
        swift_unknownObjectRelease();
        goto LABEL_28;
      }

      if (v30 == 2)
      {
        v90 = 2;
        sub_217EB3164();
        v43 = v26;
        v45 = v68;
        v44 = v69;
        v46 = v67;
        sub_217F4AEF4();
        v47 = v80;
        if (v46)
        {
          (*(v80 + 8))(v45, v44);
          goto LABEL_25;
        }

        v89 = 0;
        v48 = v74;
        v67 = sub_217F4AFB4();
        v88 = 1;
        v63 = sub_217F4AFB4();
        (*(v75 + 8))(v43, v48);
        (*(v47 + 8))(v45, v44);
        goto LABEL_27;
      }

      v93 = 3;
      sub_217EB3110();
      v52 = v68;
      v53 = v69;
      v54 = v67;
      sub_217F4AEF4();
      v55 = v80;
      if (!v54)
      {
        v92 = 0;
        v67 = sub_217F4AFB4();
        v91 = 1;
        v60 = sub_217F4AFB4();
        v61 = v68;
        v63 = v60;
        (*(v76 + 8))(v25, v27);
        (*(v55 + 8))(v61, v69);
        swift_unknownObjectRelease();
        goto LABEL_28;
      }

      (*(v80 + 8))(v52, v53);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

unint64_t sub_217EA8AF0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000012;
    v6 = 0xD00000000000001FLL;
    if (a1 != 8)
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (a1 != 7)
    {
      v6 = v5;
    }

    v7 = 0x7669446369706F74;
    if (a1 != 5)
    {
      v7 = 0x746174696C617571;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6565726772657665;
    v2 = 0x7373656363616E69;
    v3 = 0x4578614D63676961;
    if (a1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217EA8CA4(uint64_t a1)
{
  v2 = sub_217EB34AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA8CE0(uint64_t a1)
{
  v2 = sub_217EB34AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA8D24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EB48E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EA8D64(uint64_t a1)
{
  v2 = sub_217EB3260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA8DA0(uint64_t a1)
{
  v2 = sub_217EB3260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA8DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C6369747261 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EA8E90(uint64_t a1)
{
  v2 = sub_217EB335C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA8ECC(uint64_t a1)
{
  v2 = sub_217EB335C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA8F14(uint64_t a1)
{
  v2 = sub_217EB3680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA8F50(uint64_t a1)
{
  v2 = sub_217EB3680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA8FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000217F5D120 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217F4B144();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217EA9050(uint64_t a1)
{
  v2 = sub_217EB35A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA908C(uint64_t a1)
{
  v2 = sub_217EB35A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA90D4(uint64_t a1)
{
  v2 = sub_217EB33B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA9110(uint64_t a1)
{
  v2 = sub_217EB33B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA9158(uint64_t a1)
{
  v2 = sub_217EB3554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA9194(uint64_t a1)
{
  v2 = sub_217EB3554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA91D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217EA92B4(uint64_t a1)
{
  v2 = sub_217EB3500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA92F0(uint64_t a1)
{
  v2 = sub_217EB3500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA932C()
{
  v1 = 0x54646574696D696CLL;
  if (*v0 != 1)
  {
    v1 = 0x74696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C6369747261;
  }
}

uint64_t sub_217EA938C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EB4C38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EA93C0(uint64_t a1)
{
  v2 = sub_217EB3404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA93FC(uint64_t a1)
{
  v2 = sub_217EB3404();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217EA9438()
{
  v1 = *v0;
  v2 = 0x656C6369747261;
  v3 = 0xD000000000000012;
  v4 = 0x6D69536369706F74;
  if (v1 != 4)
  {
    v4 = 0x6C6F687365726874;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6953776F646E6977;
  if (v1 != 1)
  {
    v5 = 0x6369706F546C6C61;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217EA9518@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EB4D50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EA9558(uint64_t a1)
{
  v2 = sub_217EB3458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA9594(uint64_t a1)
{
  v2 = sub_217EB3458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA95D0()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x656C6369747261;
  }
}

uint64_t sub_217EA9608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217EA96EC(uint64_t a1)
{
  v2 = sub_217EB32B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA9728(uint64_t a1)
{
  v2 = sub_217EB32B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.RejectionReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58A8, &qword_217F4E380);
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v79 = v57 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58B0, &qword_217F4E388);
  v73 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v6);
  v71 = v57 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58B8, &qword_217F4E390);
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v8);
  v69 = v57 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58C0, &qword_217F4E398);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v10);
  v70 = v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58C8, &qword_217F4E3A0);
  v13 = *(v12 - 8);
  v80 = v12;
  v81 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v78 = v57 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58D0, &qword_217F4E3A8);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v16);
  v66 = v57 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58D8, &qword_217F4E3B0);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v18);
  v63 = v57 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58E0, &qword_217F4E3B8);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v20);
  v60 = v57 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58E8, &qword_217F4E3C0);
  v59 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v25 = v57 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58F0, &qword_217F4E3C8);
  v58 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v29 = v57 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58F8, &qword_217F4E3D0);
  v31 = *(v30 - 8);
  v88 = v30;
  v89 = v31;
  MEMORY[0x28223BE20](v30, v32);
  v33 = *v1;
  v85 = v1[1];
  v86 = v33;
  v34 = v1[2];
  v35 = v1[4];
  v84 = v1[3];
  v57[2] = v35;
  v57[1] = v1[5];
  v36 = *(v1 + 64);
  v37 = a1[3];
  v38 = a1;
  v40 = v57 - v39;
  __swift_project_boxed_opaque_existential_1(v38, v37);
  sub_217EB3260();
  sub_217F4B294();
  if (v36 > 4)
  {
    if (v36 <= 6)
    {
      if (v36 == 5)
      {
        LOBYTE(v91) = 5;
        sub_217EB3458();
        v41 = v78;
        v42 = v88;
        sub_217F4B004();
        v91 = v86;
        v92 = v85;
        v93 = v34;
        v90 = 0;
        sub_217EB3308();
        v43 = v80;
        v48 = v87;
        sub_217F4B0C4();
        if (!v48)
        {
          LOBYTE(v91) = 1;
          sub_217F4B0B4();
          LOBYTE(v91) = 2;
          sub_217F4B0B4();
          LOBYTE(v91) = 3;
          sub_217F4B0B4();
          LOBYTE(v91) = 4;
          sub_217F4B0A4();
          LOBYTE(v91) = 5;
          sub_217F4B0A4();
        }

        v56 = v81;
        goto LABEL_39;
      }

      LOBYTE(v91) = 6;
      sub_217EB3404();
      v41 = v70;
      v42 = v88;
      sub_217F4B004();
      v91 = v86;
      v92 = v85;
      v93 = v34;
      v90 = 0;
      sub_217EB3308();
      v43 = v76;
      v55 = v87;
      sub_217F4B0C4();
      if (v55)
      {
        v45 = &v98;
        goto LABEL_33;
      }

      LOBYTE(v91) = 1;
      sub_217F4B084();
      LOBYTE(v91) = 2;
      sub_217F4B0B4();
      v46 = &v98;
    }

    else if (v36 == 7)
    {
      LOBYTE(v91) = 7;
      sub_217EB33B0();
      v41 = v69;
      v42 = v88;
      sub_217F4B004();
      v91 = v86;
      v92 = v85;
      v93 = v34;
      v90 = 0;
      sub_217EB3308();
      v43 = v75;
      v50 = v87;
      sub_217F4B0C4();
      if (v50)
      {
        v45 = &v96;
        goto LABEL_33;
      }

      LOBYTE(v91) = 1;
      sub_217F4B0B4();
      v46 = &v96;
    }

    else
    {
      if (v36 != 8)
      {
        LOBYTE(v91) = 9;
        sub_217EB32B4();
        v41 = v79;
        v42 = v88;
        sub_217F4B004();
        v91 = v86;
        v92 = v85;
        v93 = v34;
        v90 = 0;
        sub_217EB3308();
        v43 = v83;
        v52 = v87;
        sub_217F4B0C4();
        if (!v52)
        {
          LOBYTE(v91) = 1;
          sub_217F4B084();
        }

        v56 = v82;
        goto LABEL_39;
      }

      LOBYTE(v91) = 8;
      sub_217EB335C();
      v41 = v71;
      v42 = v88;
      sub_217F4B004();
      v91 = v86;
      v92 = v85;
      v93 = v34;
      sub_217EB3308();
      v43 = v77;
      sub_217F4B0C4();
      v46 = &v97;
    }

    goto LABEL_38;
  }

  if (v36 > 1)
  {
    if (v36 == 2)
    {
      LOBYTE(v91) = 2;
      sub_217EB3554();
      v41 = v60;
      v42 = v88;
      sub_217F4B004();
      v91 = v86;
      v92 = v85;
      v93 = v34;
      v90 = 0;
      sub_217EB3308();
      v43 = v62;
      v49 = v87;
      sub_217F4B0C4();
      if (v49)
      {
        v45 = &v93;
        goto LABEL_33;
      }

      LOBYTE(v91) = 1;
      sub_217F4B0B4();
      v46 = &v93;
    }

    else if (v36 == 3)
    {
      LOBYTE(v91) = 3;
      sub_217EB3500();
      v41 = v63;
      v42 = v88;
      sub_217F4B004();
      v91 = v86;
      v92 = v85;
      v93 = v34;
      v90 = 0;
      sub_217EB3308();
      v43 = v65;
      v44 = v87;
      sub_217F4B0C4();
      if (v44)
      {
        v45 = &v94;
LABEL_33:
        v56 = *(v45 - 32);
LABEL_39:
        (*(v56 + 8))(v41, v43);
        return (*(v89 + 8))(v40, v42);
      }

      LOBYTE(v91) = 1;
      sub_217F4B0B4();
      v46 = &v94;
    }

    else
    {
      LOBYTE(v91) = 4;
      sub_217EB34AC();
      v41 = v66;
      v42 = v88;
      sub_217F4B004();
      v91 = v86;
      v92 = v85;
      v93 = v34;
      v90 = 0;
      sub_217EB3308();
      v43 = v68;
      v51 = v87;
      sub_217F4B0C4();
      if (v51)
      {
        v45 = &v95;
        goto LABEL_33;
      }

      LOBYTE(v91) = 1;
      sub_217F4B0B4();
      v46 = &v95;
    }

LABEL_38:
    v56 = *(v46 - 32);
    goto LABEL_39;
  }

  if (v36)
  {
    LOBYTE(v91) = 1;
    sub_217EB35A8();
    v53 = v88;
    sub_217F4B004();
    v91 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5928, &qword_217F4E3D8);
    sub_217EB35FC();
    sub_217F4B0C4();
    (*(v59 + 8))(v25, v22);
    return (*(v89 + 8))(v40, v53);
  }

  LOBYTE(v91) = 0;
  sub_217EB3680();
  v42 = v88;
  sub_217F4B004();
  v91 = v86;
  v92 = v85;
  v93 = v34;
  v90 = 0;
  sub_217EB3308();
  v47 = v87;
  sub_217F4B0C4();
  if (!v47)
  {
    LOBYTE(v91) = 1;
    sub_217F4B0B4();
  }

  (*(v58 + 8))(v29, v26);
  return (*(v89 + 8))(v40, v42);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.RejectionReason.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5930, &qword_217F4E3E0);
  v124 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v6);
  v128 = &v105 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5938, &qword_217F4E3E8);
  v119 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v8);
  v129 = &v105 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5940, &qword_217F4E3F0);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v10);
  v135 = &v105 - v11;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5948, &qword_217F4E3F8);
  v123 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v12);
  v134 = &v105 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5950, &qword_217F4E400);
  v15 = *(v14 - 8);
  v125 = v14;
  v126 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v130 = &v105 - v17;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5958, &qword_217F4E408);
  v116 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v18);
  v133 = &v105 - v19;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5960, &qword_217F4E410);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v20);
  v127 = &v105 - v21;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5968, &qword_217F4E418);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v22);
  v132 = &v105 - v23;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5970, &qword_217F4E420);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v24);
  v26 = &v105 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5978, &qword_217F4E428);
  v110 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v105 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5980, &qword_217F4E430);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v105 - v34;
  v36 = a1[3];
  v137 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_217EB3260();
  v37 = v136;
  sub_217F4B274();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v137);
  }

  v106 = v26;
  v105 = v27;
  v39 = v132;
  v38 = v133;
  v40 = v134;
  v41 = v135;
  v107 = 0;
  v136 = v32;
  v42 = sub_217F4AFE4();
  if (*(v42 + 16) != 1 || (v43 = *(v42 + 32), v43 == 10))
  {
    v48 = sub_217F4AE04();
    swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290);
    *v50 = &type metadata for ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.RejectionReason;
    sub_217F4AF04();
    sub_217F4ADE4();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    (*(v136 + 8))(v35, v31);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v137);
  }

  if (*(v42 + 32) <= 4u)
  {
    if (*(v42 + 32) > 1u)
    {
      v44 = v107;
      if (v43 == 2)
      {
        LOBYTE(v139) = 2;
        sub_217EB3554();
        v58 = v39;
        sub_217F4AEF4();
        if (!v44)
        {
          v138 = 0;
          sub_217EB36D4();
          v59 = v112;
          sub_217F4AFC4();
          v75 = v140;
          v129 = v139;
          v4 = v141;
          v138 = 1;
          v72 = sub_217F4AFB4();
          v107 = 0;
          v45 = v111 + 8;
          v88 = v72;
          (*(v111 + 8))(v58, v59);
          (*(v136 + 8))(v35, v31);
          goto LABEL_43;
        }
      }

      else
      {
        v135 = v42;
        if (v43 == 3)
        {
          LOBYTE(v139) = 3;
          sub_217EB3500();
          v45 = v127;
          sub_217F4AEF4();
          v46 = v136;
          if (!v44)
          {
            v138 = 0;
            sub_217EB36D4();
            v47 = v115;
            sub_217F4AFC4();
            v75 = v140;
            v129 = v139;
            v4 = v141;
            v138 = 1;
            v76 = sub_217F4AFB4();
            v107 = 0;
            v88 = v76;
            (*(v114 + 8))(v45, v47);
            (*(v46 + 8))(v35, v31);
LABEL_43:
            swift_unknownObjectRelease();
            v103 = v88;
            goto LABEL_44;
          }

          goto LABEL_26;
        }

        LOBYTE(v139) = 4;
        sub_217EB34AC();
        sub_217F4AEF4();
        v61 = v136;
        if (!v44)
        {
          v138 = 0;
          sub_217EB36D4();
          v45 = v113;
          sub_217F4AFC4();
          v62 = v38;
          v77 = v140;
          v129 = v139;
          v4 = v141;
          v138 = 1;
          v78 = sub_217F4AFB4();
          v107 = 0;
          v89 = v78;
          (*(v116 + 8))(v62, v45);
          (*(v61 + 8))(v35, v31);
          swift_unknownObjectRelease();
          v103 = v89;
          v55 = v131;
          v75 = v77;
          v102 = v129;
          goto LABEL_48;
        }
      }

      goto LABEL_18;
    }

    v135 = v42;
    v54 = v107;
    if (v43)
    {
      LOBYTE(v139) = 1;
      sub_217EB35A8();
      v45 = v106;
      sub_217F4AEF4();
      if (v54)
      {
        goto LABEL_18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5928, &qword_217F4E3D8);
      sub_217EB3728();
      v75 = v109;
      sub_217F4AFC4();
      v107 = 0;
      (*(v108 + 8))(v45, v75);
      (*(v136 + 8))(v35, v31);
      swift_unknownObjectRelease();
      v102 = v139;
    }

    else
    {
      LOBYTE(v139) = 0;
      sub_217EB3680();
      sub_217F4AEF4();
      if (v54)
      {
LABEL_18:
        (*(v136 + 8))(v35, v31);
        goto LABEL_45;
      }

      v138 = 0;
      sub_217EB36D4();
      v70 = v105;
      sub_217F4AFC4();
      v102 = v139;
      v75 = v140;
      v4 = v141;
      v138 = 1;
      v82 = sub_217F4AFB4();
      v107 = 0;
      v45 = v110 + 8;
      v94 = v82;
      (*(v110 + 8))(v30, v70);
      (*(v136 + 8))(v35, v31);
      swift_unknownObjectRelease();
      v103 = v94;
    }

    v55 = v131;
    goto LABEL_48;
  }

  if (*(v42 + 32) > 6u)
  {
    if (v43 == 7)
    {
      LOBYTE(v139) = 7;
      sub_217EB33B0();
      v60 = v107;
      sub_217F4AEF4();
      v46 = v136;
      if (!v60)
      {
        v138 = 0;
        sub_217EB36D4();
        v45 = v122;
        sub_217F4AFC4();
        v129 = v139;
        v73 = v41;
        v75 = v140;
        v4 = v141;
        v138 = 1;
        v74 = sub_217F4AFB4();
        v107 = 0;
        v87 = v74;
        (*(v121 + 8))(v73, v45);
        (*(v46 + 8))(v35, v31);
        swift_unknownObjectRelease();
        v103 = v87;
LABEL_44:
        v55 = v131;
        v102 = v129;
        goto LABEL_48;
      }

LABEL_26:
      (*(v46 + 8))(v35, v31);
      goto LABEL_45;
    }

    v45 = v31;
    v135 = v42;
    v51 = v136;
    if (v43 == 8)
    {
      LOBYTE(v139) = 8;
      sub_217EB335C();
      v52 = v129;
      v53 = v107;
      sub_217F4AEF4();
      if (!v53)
      {
        sub_217EB36D4();
        v67 = v118;
        sub_217F4AFC4();
        v107 = 0;
        (*(v119 + 8))(v52, v67);
        (*(v51 + 8))(v35, v45);
        swift_unknownObjectRelease();
        v102 = v139;
        v75 = v140;
        v4 = v141;
        v55 = v131;
        goto LABEL_48;
      }
    }

    else
    {
      LOBYTE(v139) = 9;
      sub_217EB32B4();
      v63 = v128;
      v64 = v107;
      sub_217F4AEF4();
      if (!v64)
      {
        v138 = 0;
        sub_217EB36D4();
        v68 = v117;
        sub_217F4AFC4();
        v69 = v63;
        v129 = v139;
        v132 = v140;
        v4 = v141;
        v138 = 1;
        v79 = sub_217F4AF84();
        v107 = 0;
        v91 = v90;
        v92 = *(v124 + 8);
        v127 = v79;
        v92(v69, v68);
        (*(v51 + 8))(v35, v45);
        swift_unknownObjectRelease();
        v55 = v131;
        v75 = v132;
        v103 = v127;
        v102 = v129;
        v45 = v91;
        goto LABEL_48;
      }
    }

    (*(v51 + 8))(v35, v45);
LABEL_45:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v137);
  }

  v133 = v31;
  v135 = v42;
  v55 = v131;
  if (v43 != 5)
  {
    LOBYTE(v139) = 6;
    sub_217EB3404();
    v65 = v40;
    v56 = v133;
    v66 = v107;
    sub_217F4AEF4();
    if (!v66)
    {
      v138 = 0;
      sub_217EB36D4();
      v71 = v120;
      sub_217F4AFC4();
      v83 = v140;
      v129 = v139;
      v4 = v141;
      v138 = 1;
      v84 = v65;
      v85 = sub_217F4AF84();
      v86 = v123;
      v45 = v95;
      v127 = v85;
      v132 = v83;
      v138 = 2;
      v96 = sub_217F4AFB4();
      v107 = 0;
      v99 = v96;
      (*(v86 + 8))(v84, v71);
      (*(v136 + 8))(v35, v133);
      swift_unknownObjectRelease();
      v104 = v99;
      v75 = v132;
      v102 = v129;
      v103 = v127;
      goto LABEL_48;
    }

LABEL_34:
    (*(v136 + 8))(v35, v56);
    goto LABEL_45;
  }

  LOBYTE(v139) = 5;
  sub_217EB3458();
  v56 = v133;
  v57 = v107;
  sub_217F4AEF4();
  if (v57)
  {
    goto LABEL_34;
  }

  v138 = 0;
  sub_217EB36D4();
  sub_217F4AFC4();
  v81 = v139;
  v80 = v140;
  v4 = v141;
  v138 = 1;
  v127 = sub_217F4AFB4();
  v132 = v80;
  v138 = 2;
  v45 = sub_217F4AFB4();
  v138 = 3;
  v97 = sub_217F4AFB4();
  v107 = 0;
  v98 = v97;
  v129 = v81;
  v138 = 4;
  sub_217F4AFA4();
  v107 = 0;
  v2 = v100;
  v138 = 5;
  sub_217F4AFA4();
  v107 = 0;
  v3 = v101;
  (*(v126 + 8))(v130, v125);
  (*(v136 + 8))(v35, v133);
  swift_unknownObjectRelease();
  v55 = v131;
  v75 = v132;
  v102 = v129;
  v103 = v127;
  v104 = v98;
LABEL_48:
  *v55 = v102;
  *(v55 + 8) = v75;
  *(v55 + 16) = v4;
  *(v55 + 24) = v103;
  *(v55 + 32) = v45;
  *(v55 + 40) = v104;
  *(v55 + 48) = v2;
  *(v55 + 56) = v3;
  *(v55 + 64) = v43;
  return __swift_destroy_boxed_opaque_existential_1(v137);
}

uint64_t sub_217EABE54()
{
  if (*v0)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 0x656C6369747261;
  }
}

uint64_t sub_217EABE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217EABF70(uint64_t a1)
{
  v2 = sub_217EB38A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EABFAC(uint64_t a1)
{
  v2 = sub_217EB38A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EABFE8()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217EAC030(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

uint64_t sub_217EAC074()
{
  if (*v0)
  {
    return 0x64657463656A6572;
  }

  else
  {
    return 0x6465747065636361;
  }
}

uint64_t sub_217EAC0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465747065636361 && a2 == 0xE800000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657463656A6572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217EAC190(uint64_t a1)
{
  v2 = sub_217EB37AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EAC1CC(uint64_t a1)
{
  v2 = sub_217EB37AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EAC224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EAC2B4(uint64_t a1)
{
  v2 = sub_217EB3800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EAC2F0(uint64_t a1)
{
  v2 = sub_217EB3800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5998, &qword_217F4E438);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v32 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59A0, &qword_217F4E440);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59A8, &qword_217F4E448);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v10);
  v11 = v1[1];
  v37 = *v1;
  v38 = v11;
  v12 = v1[3];
  v39 = v1[2];
  v13 = v1[4];
  v14 = v1[5];
  v15 = v1[7];
  v31 = v1[6];
  v30 = v15;
  v16 = *(v1 + 64);
  v17 = a1[3];
  v18 = a1;
  v20 = &v29 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_217EB37AC();
  sub_217F4B294();
  if (v16 < 0)
  {
    v25 = v16 & 0x7F;
    LOBYTE(v43) = 1;
    sub_217EB3800();
    v26 = v32;
    v27 = v42;
    sub_217F4B004();
    v43 = v37;
    v44 = v38;
    v45 = v39;
    v46 = v12;
    v47 = v13;
    v48 = v14;
    v49 = v31;
    v50 = v30;
    v51 = v25;
    sub_217EB3854();
    v28 = v34;
    sub_217F4B0C4();
    (*(v33 + 8))(v26, v28);
    return (*(v40 + 8))(v20, v27);
  }

  else
  {
    LOBYTE(v43) = 0;
    sub_217EB38A8();
    v21 = v42;
    sub_217F4B004();
    v43 = v37;
    v44 = v38;
    v45 = v39;
    v52 = 0;
    sub_217EB3308();
    v22 = v36;
    v23 = v41;
    sub_217F4B0C4();
    if (!v23)
    {
      v43 = v12;
      v44 = v13;
      LOBYTE(v45) = v14;
      v52 = 1;
      sub_217EB38FC();
      sub_217F4B0C4();
    }

    (*(v35 + 8))(v9, v22);
    return (*(v40 + 8))(v20, v21);
  }
}

uint64_t ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59B0, &qword_217F4E450);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59B8, &qword_217F4E458);
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59C0, &qword_217F4E460);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v36 - v14;
  v16 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_217EB37AC();
  v17 = v40;
  sub_217F4B274();
  if (!v17)
  {
    v40 = v12;
    v18 = v39;
    v19 = sub_217F4AFE4();
    v20 = v19;
    if (*(v19 + 16) == 1)
    {
      if (*(v19 + 32))
      {
        LOBYTE(v44) = 1;
        sub_217EB3800();
        sub_217F4AEF4();
        sub_217EB3950();
        v21 = v37;
        sub_217F4AFC4();
        (*(v36 + 8))(v6, v21);
        (*(v40 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v22 = v44;
        v23 = v45;
        v24 = v46;
        v25 = v47;
        v26 = v48;
        v27 = v49;
        v28 = v50 & 0xF | 0x80;
      }

      else
      {
        LOBYTE(v44) = 0;
        sub_217EB38A8();
        sub_217F4AEF4();
        LOBYTE(v42) = 0;
        sub_217EB36D4();
        v33 = v10;
        sub_217F4AFC4();
        v34 = v40;
        v36 = v20;
        v37 = v11;
        v35 = v7;
        v22 = v44;
        v23 = v45;
        v24 = v46;
        v51 = 1;
        sub_217EB39A4();
        sub_217F4AFC4();
        (*(v38 + 8))(v33, v35);
        (*(v34 + 8))(v15, v37);
        swift_unknownObjectRelease();
        v28 = 0;
        v25 = v42;
        v27 = v43;
        *&v26 = v43;
      }

      *v18 = v22;
      *(v18 + 8) = v23;
      *(v18 + 16) = v24;
      *(v18 + 24) = v25;
      *(v18 + 40) = v26;
      *(v18 + 56) = v27;
      *(v18 + 64) = v28;
    }

    else
    {
      v29 = sub_217F4AE04();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290);
      *v31 = &type metadata for ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome;
      sub_217F4AF04();
      sub_217F4ADE4();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v40 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

unint64_t sub_217EACD0C()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696C64616568;
  }
}

uint64_t sub_217EACD6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EB4F74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EACDA0(uint64_t a1)
{
  v2 = sub_217EB39F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EACDDC(uint64_t a1)
{
  v2 = sub_217EB39F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EACE30(uint64_t a1)
{
  v2 = sub_217EB3AA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EACE6C(uint64_t a1)
{
  v2 = sub_217EB3AA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EACEC0(uint64_t a1)
{
  v2 = sub_217EB3A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EACEFC(uint64_t a1)
{
  v2 = sub_217EB3A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EACF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EACFD8(uint64_t a1)
{
  v2 = sub_217EB3AF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EAD014(uint64_t a1)
{
  v2 = sub_217EB3AF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59D8, &qword_217F4E468);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v29 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59E0, &qword_217F4E470);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59E8, &qword_217F4E478);
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v26 = &v25 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59F0, &qword_217F4E480);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v25 - v16;
  v32 = v1;
  v18 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB39F8();
  sub_217F4B294();
  if (v18 > 0xEF)
  {
    LOBYTE(v35) = 1;
    sub_217EB3AA0();
    sub_217F4B004();
    (*(v33 + 8))(v9, v34);
    return (*(v14 + 8))(v17, v13);
  }

  if ((v18 & 0xF0) == 0x70)
  {
    LOBYTE(v35) = 2;
    sub_217EB3A4C();
    v19 = v29;
    sub_217F4B004();
    (*(v30 + 8))(v19, v31);
    return (*(v14 + 8))(v17, v13);
  }

  LOBYTE(v35) = 0;
  sub_217EB3AF4();
  v21 = v26;
  sub_217F4B004();
  v22 = v32[1];
  v35 = *v32;
  v36 = v22;
  v23 = v32[3];
  v37 = v32[2];
  v38 = v23;
  v39 = v18;
  sub_217EB3B48();
  v24 = v28;
  sub_217F4B0C4();
  (*(v27 + 8))(v21, v24);
  return (*(v14 + 8))(v17, v13);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59F8, &qword_217F4E488);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v3);
  v48 = &v40 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A00, &qword_217F4E490);
  v42 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A08, &qword_217F4E498);
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A10, &qword_217F4E4A0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v40 - v15;
  v17 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_217EB39F8();
  v18 = v49;
  sub_217F4B274();
  if (!v18)
  {
    v41 = v8;
    v19 = v48;
    v49 = v13;
    v20 = v16;
    v21 = sub_217F4AFE4();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 3) : (v24 = 1), v24))
    {
      v25 = sub_217F4AE04();
      swift_allocError();
      v26 = v12;
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290);
      *v28 = &type metadata for ClusteringJournal.Result.ClusteringEvent;
      sub_217F4AF04();
      sub_217F4ADE4();
      (*(*(v25 - 8) + 104))(v28, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v49 + 8))(v20, v26);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v21 + 32))
      {
        if (v23 == 1)
        {
          LOBYTE(v50) = 1;
          sub_217EB3AA0();
          sub_217F4AEF4();
          v29 = v49;
          (*(v42 + 8))(v7, v46);
          (*(v29 + 8))(v20, v12);
          swift_unknownObjectRelease();
          v34 = 0uLL;
          v35 = -16;
        }

        else
        {
          LOBYTE(v50) = 2;
          sub_217EB3A4C();
          v31 = v19;
          sub_217F4AEF4();
          v32 = v49;
          (*(v43 + 8))(v31, v45);
          (*(v32 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v34 = 0uLL;
          v35 = 112;
        }

        v37 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
        v30 = v47;
      }

      else
      {
        LOBYTE(v50) = 0;
        sub_217EB3AF4();
        sub_217F4AEF4();
        v30 = v47;
        sub_217EB3B9C();
        v36 = v41;
        sub_217F4AFC4();
        (*(v44 + 8))(v11, v36);
        (*(v49 + 8))(v20, v12);
        swift_unknownObjectRelease();
        v34 = v50;
        v37 = v51;
        v38 = v52;
        v39 = v53;
        v35 = v54;
      }

      *v30 = v34;
      *(v30 + 16) = v37;
      *(v30 + 32) = v38;
      *(v30 + 48) = v39;
      *(v30 + 64) = v35;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

unint64_t sub_217EADA7C()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_217EADAE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EB5098(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EADB14(uint64_t a1)
{
  v2 = sub_217EB3BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EADB50(uint64_t a1)
{
  v2 = sub_217EB3BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217EADB8C()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0x73746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x536D756D696E696DLL;
  }
}

uint64_t sub_217EADBF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EB51BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EADC24(uint64_t a1)
{
  v2 = sub_217EB3D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EADC60(uint64_t a1)
{
  v2 = sub_217EB3D70();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217EADC9C()
{
  v1 = 0x536D756D696E696DLL;
  v2 = 0x73746E657665;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217EADD20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EB52DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EADD54(uint64_t a1)
{
  v2 = sub_217EB3C44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EADD90(uint64_t a1)
{
  v2 = sub_217EB3C44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EADDD4()
{
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](0);
  return sub_217F4B254();
}

uint64_t sub_217EADE18(uint64_t a1)
{
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](0);
  return sub_217F4B254();
}

uint64_t sub_217EADE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EADEFC(uint64_t a1)
{
  v2 = sub_217EB3DC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EADF38(uint64_t a1)
{
  v2 = sub_217EB3DC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.Outcome.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A20, &qword_217F4E4A8);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v39 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A28, &qword_217F4E4B0);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A30, &qword_217F4E4B8);
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A38, &qword_217F4E4C0);
  v44 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v16 = v1[1];
  v42 = *v1;
  v17 = v1[3];
  v34 = v1[2];
  v35 = v16;
  v33 = v17;
  v18 = *(v1 + 32);
  v19 = a1[3];
  v20 = a1;
  v22 = &v32 - v21;
  __swift_project_boxed_opaque_existential_1(v20, v19);
  sub_217EB3BF0();
  sub_217F4B294();
  if (!v18)
  {
    LOBYTE(v46) = 0;
    sub_217EB3DC4();
    sub_217F4B004();
    v46 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A40, &qword_217F4E4C8);
    sub_217EB3C98();
    sub_217F4B0C4();
    (*(v36 + 8))(v13, v10);
    return (*(v44 + 8))(v22, v14);
  }

  if (v18 != 1)
  {
    LOBYTE(v46) = 2;
    sub_217EB3C44();
    v29 = v39;
    v23 = v14;
    sub_217F4B004();
    LOBYTE(v46) = 0;
    v25 = v41;
    v30 = v43;
    sub_217F4B0B4();
    if (v30)
    {
      v26 = *(v40 + 8);
      v27 = v29;
      goto LABEL_9;
    }

    LOBYTE(v46) = 1;
    sub_217F4B0B4();
    LOBYTE(v46) = 2;
    sub_217F4B0B4();
    v46 = v33;
    v45 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A40, &qword_217F4E4C8);
    sub_217EB3C98();
    sub_217F4B0C4();
    v26 = *(v40 + 8);
    v27 = v29;
LABEL_16:
    v31 = v25;
    goto LABEL_17;
  }

  LOBYTE(v46) = 1;
  sub_217EB3D70();
  v23 = v14;
  sub_217F4B004();
  LOBYTE(v46) = 0;
  v24 = v43;
  v25 = v38;
  sub_217F4B0B4();
  if (!v24)
  {
    LOBYTE(v46) = 1;
    sub_217F4B0B4();
    v46 = v34;
    v45 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A40, &qword_217F4E4C8);
    sub_217EB3C98();
    sub_217F4B0C4();
    v26 = *(v37 + 8);
    v27 = v9;
    goto LABEL_16;
  }

  v26 = *(v37 + 8);
  v27 = v9;
LABEL_9:
  v31 = v25;
LABEL_17:
  v26(v27, v31);
  return (*(v44 + 8))(v22, v23);
}

uint64_t ClusteringJournal.Result.Outcome.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A50, &qword_217F4E4D0);
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v3);
  v53 = v44 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A58, &qword_217F4E4D8);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v5);
  v7 = v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A60, &qword_217F4E4E0);
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A68, &qword_217F4E4E8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v44 - v15;
  v17 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_217EB3BF0();
  v18 = v54;
  sub_217F4B274();
  if (!v18)
  {
    v45 = v8;
    v46 = v7;
    v19 = v51;
    v20 = v52;
    v54 = v13;
    v21 = v16;
    v22 = sub_217F4AFE4();
    v23 = *(v22 + 16);
    if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 3) : (v25 = 1), v25))
    {
      v26 = sub_217F4AE04();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290);
      *v28 = &type metadata for ClusteringJournal.Result.Outcome;
      sub_217F4AF04();
      sub_217F4ADE4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v54 + 8))(v21, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v44[1] = v22;
      if (v24)
      {
        if (v24 == 1)
        {
          LOBYTE(v57) = 1;
          sub_217EB3D70();
          sub_217F4AEF4();
          LOBYTE(v57) = 0;
          v29 = v19;
          v36 = sub_217F4AFB4();
          LOBYTE(v57) = 1;
          v37 = sub_217F4AFB4();
          v38 = v49;
          v48 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A40, &qword_217F4E4C8);
          v56 = 2;
          sub_217EB3E18();
          v40 = v46;
          sub_217F4AFC4();
          (*(v38 + 8))(v40, v29);
          (*(v54 + 8))(v21, v12);
          swift_unknownObjectRelease();
          v41 = 0;
          v42 = v57;
        }

        else
        {
          LOBYTE(v57) = 2;
          sub_217EB3C44();
          sub_217F4AEF4();
          LOBYTE(v57) = 0;
          v33 = sub_217F4AFB4();
          v34 = v54;
          v35 = v33;
          LOBYTE(v57) = 1;
          v48 = sub_217F4AFB4();
          LOBYTE(v57) = 2;
          v51 = sub_217F4AFB4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A40, &qword_217F4E4C8);
          v56 = 3;
          sub_217EB3E18();
          v43 = v53;
          sub_217F4AFC4();
          (*(v50 + 8))(v43, v20);
          (*(v34 + 8))(v21, v12);
          swift_unknownObjectRelease();
          v41 = v57;
          v42 = v51;
          v36 = v35;
        }

        v31 = v48;
      }

      else
      {
        LOBYTE(v57) = 0;
        sub_217EB3DC4();
        sub_217F4AEF4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A40, &qword_217F4E4C8);
        sub_217EB3E18();
        v30 = v45;
        sub_217F4AFC4();
        (*(v48 + 8))(v11, v30);
        (*(v54 + 8))(v21, v12);
        swift_unknownObjectRelease();
        v31 = 0;
        v42 = 0;
        v41 = 0;
        v36 = v57;
      }

      v32 = v47;
      *v47 = v36;
      v32[1] = v31;
      v32[2] = v42;
      v32[3] = v41;
      *(v32 + 32) = v24;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t ClusteringJournal.Result.group.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_217EB3EF0(v2, v3, v4);
}

uint64_t ClusteringJournal.Result.outcome.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 72);
  *(a1 + 32) = v6;
  return sub_217EB3F08(v2, v3, v4, v5, v6);
}

uint64_t ClusteringJournal.Result.requirements.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v4 = *(v1 + 144);
  v10 = *(v1 + 128);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 160);
  v6 = *(v1 + 96);
  v9[0] = *(v1 + 80);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_217EB2C48(v9, v8);
}

uint64_t sub_217EAEDC4()
{
  v1 = 0x70756F7267;
  v2 = 0x6D65726975716572;
  if (*v0 != 2)
  {
    v2 = 0x74616469646E6163;
  }

  if (*v0)
  {
    v1 = 0x656D6F6374756FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217EAEE48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EB5450(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217EAEE7C(uint64_t a1)
{
  v2 = sub_217EB3F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EAEEB8(uint64_t a1)
{
  v2 = sub_217EB3F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.deinit()
{
  sub_217EB3F30(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_217EB3F48(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return v0;
}

uint64_t ClusteringJournal.Result.__deallocating_deinit()
{
  sub_217EB3F30(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_217EB3F48(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t ClusteringJournal.Result.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A80, &qword_217F4E4F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB3F70();
  sub_217F4B294();
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  *&v32 = *(v3 + 16);
  *(&v32 + 1) = v10;
  LOBYTE(v33) = v11;
  LOBYTE(v26) = 0;
  sub_217EB3EF0(v32, v10, v11);
  sub_217EB3FC4();
  sub_217F4B0C4();
  sub_217EB3F30(v32, *(&v32 + 1), v33);
  if (!v2)
  {
    v12 = *(v3 + 48);
    v13 = *(v3 + 56);
    v14 = *(v3 + 64);
    v15 = *(v3 + 72);
    v39 = *(v3 + 40);
    v40 = v12;
    v41 = v13;
    v42 = v14;
    v43 = v15;
    v38 = 1;
    sub_217EB3F08(v39, v12, v13, v14, v15);
    sub_217EB4018();
    sub_217F4B0C4();
    sub_217EB3F48(v39, v40, v41, v42, v43);
    v16 = *(v3 + 128);
    v17 = *(v3 + 96);
    v34 = *(v3 + 112);
    v35 = v16;
    v18 = *(v3 + 128);
    v36 = *(v3 + 144);
    v19 = *(v3 + 96);
    v32 = *(v3 + 80);
    v33 = v19;
    v28 = v34;
    v29 = v18;
    v30 = *(v3 + 144);
    v37 = *(v3 + 160);
    v31 = *(v3 + 160);
    v26 = v32;
    v27 = v17;
    v25 = 2;
    sub_217EB2C48(&v32, v23);
    sub_217EB406C();
    sub_217F4B0C4();
    v23[2] = v28;
    v23[3] = v29;
    v23[4] = v30;
    v24 = v31;
    v23[0] = v26;
    v23[1] = v27;
    sub_217EB2C80(v23);
    v22 = *(v3 + 168);
    v21[7] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A88, &qword_217F4E4F8);
    sub_217EB40C0();
    sub_217F4B054();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ClusteringJournal.Result.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ClusteringJournal.Result.init(from:)(a1);
  return v2;
}

uint64_t *ClusteringJournal.Result.init(from:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A90, &unk_217F4E500);
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v5);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB3F70();
  sub_217F4B274();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v16 = a1;
  }

  else
  {
    v8 = v4;
    LOBYTE(v20) = 0;
    sub_217EB41A0();
    v9 = v19;
    sub_217F4AFC4();
    v10 = v22;
    *(v1 + 16) = v21;
    *(v1 + 32) = v10;
    LOBYTE(v20) = 1;
    sub_217EB41F4();
    sub_217F4AFC4();
    v11 = v23;
    v12 = v22;
    *(v1 + 40) = v21;
    *(v1 + 56) = v12;
    *(v1 + 72) = v11;
    v28 = 2;
    sub_217EB4248();
    sub_217F4AFC4();
    v18 = a1;
    v13 = v24;
    *(v1 + 112) = v23;
    *(v1 + 128) = v13;
    *(v1 + 144) = v25;
    *(v1 + 160) = v26;
    v14 = v22;
    *(v1 + 80) = v21;
    *(v1 + 96) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A88, &qword_217F4E4F8);
    v27 = 3;
    sub_217EB429C();
    sub_217F4AF54();
    (*(v8 + 8))(v7, v9);
    *(v1 + 168) = v20;
    v16 = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v1;
}

uint64_t *sub_217EAF708@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ClusteringJournal.Result.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t ClusteringJournal.inventory.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 144);
}

uint64_t ClusteringJournal.inventory.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 144) = v2;
}

uint64_t ClusteringJournal.results.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
}

uint64_t ClusteringJournal.configuration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 160), 0x780uLL);
  memcpy(a1, (v1 + 160), 0x780uLL);
  return sub_217EB4358(__dst, v4);
}

uint64_t ClusteringJournal.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10XavierNews17ClusteringJournal_date;
  v4 = sub_217F4A9F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Void __swiftcall ClusteringJournal.startedBuildingCandidateGroups()()
{
  if (*(v0 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) != 2)
  {
    swift_beginAccess();
    if (*(v0 + 16))
    {
      v1 = qword_280C28808;

      if (v1 != -1)
      {
        swift_once();
      }

      v2 = qword_280C28810;
      v3 = sub_217F4AD34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_217F4BC20;
      type metadata accessor for ClusteringJournal.Result();
      v5 = MEMORY[0x277D837D0];
      v6 = sub_217F4AA74();
      v8 = v7;

      *(v4 + 56) = v5;
      *(v4 + 64) = sub_217E86438();
      *(v4 + 32) = v6;
      *(v4 + 40) = v8;
      sub_217F4AA44("Failed to start building candidate groups, candidate group building is already in process with candidate groups %{public}@", 122, 2, &dword_217E7B000, v2, v3, v4);
    }

    else
    {
      *(v0 + 16) = MEMORY[0x277D84F98];
    }
  }
}

Swift::Void __swiftcall ClusteringJournal.finishedBuildingCandidateGroups(selectedTag:)(Swift::String selectedTag)
{
  v2 = OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode;
  if (*(v1 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) != 2)
  {
    object = selectedTag._object;
    countAndFlagsBits = selectedTag._countAndFlagsBits;
    swift_beginAccess();
    v5 = *(v1 + 16);
    if (!v5)
    {
      if (qword_280C28808 != -1)
      {
        swift_once();
      }

      v19 = qword_280C28810;
      v20 = sub_217F4AD34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_217F4BC20;
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = sub_217E86438();
      *(v21 + 32) = countAndFlagsBits;
      *(v21 + 40) = object;

      sub_217F4AA44("Finished building candiate groups and selected tag %{public}@, but no candidate groups are available", 100, 2, &dword_217E7B000, v19, v20, v21);
      goto LABEL_19;
    }

    v6 = *(v5 + 16);

    if (!v6 || (v42 = v1, v7 = sub_217E8E88C(countAndFlagsBits, object), (v8 & 1) == 0))
    {
      if (qword_280C28808 != -1)
      {
        swift_once();
      }

      v11 = qword_280C28810;
      v12 = sub_217F4AD34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_217F4C8A0;
      v14 = MEMORY[0x277D837D0];
      *(v13 + 56) = MEMORY[0x277D837D0];
      v15 = sub_217E86438();
      *(v13 + 64) = v15;
      *(v13 + 32) = countAndFlagsBits;
      *(v13 + 40) = object;
      type metadata accessor for ClusteringJournal.Result();

      v16 = sub_217F4AA74();
      v18 = v17;

      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 72) = v16;
      *(v13 + 80) = v18;
      sub_217F4AA44("Finished building candiate groups and but no result is available for selected tag %{public}@. Candidate groups: %{public}@", 122, 2, &dword_217E7B000, v11, v12, v13);
      goto LABEL_19;
    }

    v9 = *(*(v5 + 56) + 8 * v7);
    v10 = *(v1 + v2);
    if (v10 == 2)
    {
    }

    else
    {

      if (v10)
      {

        v41 = sub_217EB5708(v5, countAndFlagsBits, object);

LABEL_16:
        v22 = *(v9 + 16);
        v23 = *(v9 + 24);
        v24 = *(v9 + 40);
        v25 = *(v9 + 48);
        v26 = *(v9 + 64);
        v40 = *(v9 + 56);
        v27 = *(v9 + 32);
        v28 = *(v9 + 112);
        v29 = *(v9 + 144);
        v30 = *(v9 + 72);
        v47 = *(v9 + 128);
        v48 = v29;
        v49 = *(v9 + 160);
        v31 = *(v9 + 96);
        v44 = *(v9 + 80);
        v45 = v31;
        v46 = v28;
        type metadata accessor for ClusteringJournal.Result();
        v32 = swift_allocObject();
        v33 = v47;
        v34 = v48;
        v35 = v45;
        *(v32 + 112) = v46;
        *(v32 + 128) = v33;
        *(v32 + 16) = v22;
        *(v32 + 24) = v23;
        *(v32 + 32) = v27;
        *(v32 + 40) = v24;
        *(v32 + 48) = v25;
        *(v32 + 56) = v40;
        *(v32 + 64) = v26;
        *(v32 + 72) = v30;
        *(v32 + 144) = v34;
        v36 = v49;
        *(v32 + 80) = v44;
        *(v32 + 96) = v35;
        *(v32 + 160) = v36;
        *(v32 + 168) = v41;
        swift_beginAccess();
        sub_217EB3EF0(v22, v23, v27);
        sub_217EB3F08(v24, v25, v40, v26, v30);
        v37 = sub_217EB2C48(&v44, v43);
        MEMORY[0x21CEAEB90](v37);
        v38 = v42;
        if (*((*(v42 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v42 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_217F4AC34();
          v38 = v42;
        }

        v39 = v38;
        sub_217F4AC64();
        swift_endAccess();

        *(v39 + 16) = 0;
LABEL_19:

        return;
      }
    }

    v41 = 0;
    goto LABEL_16;
  }
}