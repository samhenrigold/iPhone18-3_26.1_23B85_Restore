unint64_t sub_222C000B4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v8 = a7[7] + 4 * result;
  *v8 = a6;
  *(v8 + 3) = HIBYTE(a6);
  *(v8 + 1) = a6 >> 8;
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

unint64_t sub_222C00114(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_222C00158(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222C9367C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_222C00210(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222C9367C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_222C002EC(unint64_t a1, uint64_t a2, __int16 a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222C9367C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 2 * a1);
  *v11 = a3 & 1;
  v11[1] = HIBYTE(a3) & 1;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_222C003B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222C9367C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
  result = sub_222B5B33C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_222C00490(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_222C004D8(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_222B405A0(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_222C00548(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t _s28SiriPrivateLearningInference15AMPSongMetadataV10AttributesV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v4 != v9 || v6 != v11) && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12 && (v5 == v10 && v7 == v12 || (sub_222C951FC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t _s28SiriPrivateLearningInference15AMPSongMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v10 = *(a1 + 40);
  v11 = *(a1 + 24);
  v3 = *(a1 + 56);
  v4 = *(a2 + 16);
  v8 = *(a2 + 40);
  v9 = *(a2 + 24);
  v5 = *(a2 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v6 = 0, (sub_222C951FC() & 1) != 0))
  {
    v15 = v5;
    v16 = v2;
    v17 = v11;
    v18 = v10;
    v19 = v3;
    v12 = v4;
    v13 = v9;
    v14 = v8;
    v6 = _s28SiriPrivateLearningInference15AMPSongMetadataV10AttributesV2eeoiySbAE_AEtFZ_0(&v16, &v12);
  }

  return v6 & 1;
}

uint64_t *sub_222C00820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AMPMetadataHelper();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v10[5] = a3;
  v10[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 2);
  (*(v7 + 32))(boxed_opaque_existential_1, v9, a3);
  return v10;
}

uint64_t sub_222C00924(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

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

uint64_t sub_222C00978(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_222C009C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_222C00A20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_222C00A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of SongMetadataClient.searchSongs(identifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222C00E84;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AMPMetadataHelper.getSongMetadata(identifiers:)(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222C00D84;

  return v6(a1);
}

uint64_t sub_222C00D84(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

SiriPrivateLearningInference::MessagesGroundTruthSource_optional __swiftcall MessagesGroundTruthSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MessagesGroundTruthSource.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_222C00F44()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222C00FDC(uint64_t a1)
{
  sub_222C9452C();
}

uint64_t sub_222C01060(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

void sub_222C01100(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "abandonmentAndInAppFollowup";
  if (*v1 != 1)
  {
    v3 = "partialRepetition";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    v4 = "previouslySurfaced";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_222C01208(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "abandonmentAndInAppFollowup";
  if (v2 == 1)
  {
    v4 = "abandonmentAndInAppFollowup";
  }

  else
  {
    v4 = "partialRepetition";
  }

  if (*a1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = "previouslySurfaced";
  }

  if (*a2 != 1)
  {
    v3 = "partialRepetition";
  }

  if (*a2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = 0xD00000000000001BLL;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = "previouslySurfaced";
  }

  if (v5 == v7 && (v6 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222C951FC();
  }

  return v9 & 1;
}

uint64_t MessagesGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessagesGroundTruth.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MessagesGroundTruth(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for MessagesGroundTruth(uint64_t a1)
{
  result = qword_280FDF4A8;
  if (!qword_280FDF4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessagesGroundTruth.contactUSOPerson.getter()
{
  type metadata accessor for MessagesGroundTruth(0);
}

void MessagesGroundTruth.originalContactReference.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagesGroundTruth(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_222B98D00(v4, v5, v6, v7);
}

uint64_t MessagesGroundTruth.correctedContactReference.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagesGroundTruth(0) + 32));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

unint64_t sub_222C014B4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656372756F73;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_222C01548@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222C02938(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222C01570(uint64_t a1)
{
  v2 = sub_222C0244C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C015AC(uint64_t a1)
{
  v2 = sub_222C0244C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessagesGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D10, &qword_222CA0270);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C0244C();
  sub_222C9536C();
  LOBYTE(v20) = 0;
  sub_222C9367C();
  sub_222C026A4(&qword_27D025148, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_222C9512C();
  if (!v2)
  {
    v9 = type metadata accessor for MessagesGroundTruth(0);
    LOBYTE(v20) = *(v3 + v9[5]);
    v24 = 1;
    sub_222BBBAD8();
    sub_222C9512C();
    v20 = *(v3 + v9[6]);
    v24 = 2;
    sub_222C9378C();
    sub_222C026A4(&qword_27D025A98, MEMORY[0x277D5E850], MEMORY[0x277D5E450]);
    sub_222C9512C();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v20 = *v10;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v24 = 3;
    sub_222B98D00(v20, v11, v12, v13);
    sub_222BFD70C();
    sub_222C950DC();
    sub_222B450E8(v20, v21, v22, v23);
    v14 = (v3 + v9[8]);
    v15 = v14[1];
    v17 = v14[2];
    v16 = v14[3];
    v20 = *v14;
    v21 = v15;
    v22 = v17;
    v23 = v16;
    v24 = 4;

    sub_222C9512C();
  }

  return (*(v6 + 8))(v8, v5);
}

void MessagesGroundTruth.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_222C9367C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D20, &qword_222CA0278);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for MessagesGroundTruth(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C0244C();
  v28 = v9;
  sub_222C9535C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v22 = a1;
    v13 = v12;
    v14 = v24;
    LOBYTE(v29) = 0;
    sub_222C026A4(&qword_27D025178, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v15 = v25;
    v16 = v26;
    sub_222C9507C();
    (*(v14 + 32))(v13, v15, v4);
    v31 = 1;
    sub_222BBBC7C();
    sub_222C9507C();
    *(v13 + v10[5]) = v29;
    sub_222C9378C();
    v31 = 2;
    sub_222C026A4(&qword_27D026C98, MEMORY[0x277D5E850], MEMORY[0x277D5E458]);
    sub_222C9507C();
    *(v13 + v10[6]) = v29;
    v31 = 3;
    sub_222BFD7B4();
    sub_222C9502C();
    v17 = (v13 + v10[7]);
    v18 = v30;
    *v17 = v29;
    v17[1] = v18;
    v31 = 4;
    sub_222C9507C();
    (*(v27 + 8))(v28, v16);
    v19 = *(&v29 + 1);
    v20 = v13 + v10[8];
    *v20 = v29;
    *(v20 + 8) = v19;
    *(v20 + 16) = v30;
    sub_222C024A0(v13, v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    sub_222C02504(v13);
  }
}

uint64_t _s28SiriPrivateLearningInference19MessagesGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v4 = 0xD000000000000011;
  v5 = type metadata accessor for MessagesGroundTruth(0);
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  v9 = "previouslySurfaced";
  if (v7)
  {
    if (v7 == 1)
    {
      v10 = "partialRepetition";
    }

    else
    {
      v10 = "successfulOneShot";
    }

    v11 = 0xD000000000000011;
    v12 = (v10 - 32) | 0x8000000000000000;
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_6:
    v4 = 0xD00000000000001BLL;
    goto LABEL_13;
  }

  v11 = 0xD00000000000001BLL;
  v12 = 0x8000000222CA9420;
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (v8 == 1)
  {
    v13 = "partialRepetition";
  }

  else
  {
    v13 = "successfulOneShot";
  }

  v9 = v13 - 32;
LABEL_13:
  if (v11 == v4 && v12 == (v9 | 0x8000000000000000))
  {
  }

  else
  {
    v14 = sub_222C951FC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v15 = sub_222C9534C();
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  if (v15 != sub_222C9534C())
  {
    return 0;
  }

  v16 = v5[7];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = *(a1 + v16 + 16);
  v20 = *(a1 + v16 + 24);
  v21 = (a2 + v16);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  if (!v18)
  {
    v60 = v17;
    v36 = v17;
    v37 = v19;
    sub_222B98D00(v36, 0, v19, v20);
    if (!v23)
    {
      sub_222B98D00(v22, 0, v24, v25);
      v18 = 0;
      goto LABEL_51;
    }

    v38 = v22;
    sub_222B98D00(v22, v23, v24, v25);
    v39 = v60;
    goto LABEL_37;
  }

  if (!v23)
  {
    v40 = v17;
    v38 = *v21;
    v39 = v17;
    v37 = v19;
    sub_222B98D00(v40, v18, v19, v20);
    sub_222B98D00(v38, 0, v24, v25);
    sub_222B98D00(v39, v18, v37, v20);

LABEL_37:
    sub_222B450E8(v39, v18, v37, v20);
    v41 = v38;
    v42 = v23;
    v43 = v24;
    v44 = v25;
LABEL_43:
    sub_222B450E8(v41, v42, v43, v44);
    return 0;
  }

  v62 = v19;
  if (v17 != v22 || v18 != v23)
  {
    v59 = v21[3];
    v26 = v20;
    v27 = *v21;
    v28 = v17;
    v29 = v19;
    v30 = sub_222C951FC();
    v19 = v29;
    v17 = v28;
    v22 = v27;
    v20 = v26;
    v25 = v59;
    if ((v30 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (!v20)
  {
    sub_222B98D00(v17, v18, v19, 0);
    v45 = 0;
    if (!v25)
    {
      sub_222B98D00(v22, v23, v24, 0);
      sub_222B98D00(v17, v18, v62, 0);
      v32 = v22;
      v33 = v23;
      v34 = v24;
      v35 = 0;
      goto LABEL_49;
    }

    goto LABEL_41;
  }

  if (!v25)
  {
LABEL_38:
    sub_222B98D00(v17, v18, v19, v20);
    v45 = v20;
LABEL_41:
    v46 = v45;
    sub_222B98D00(v22, v23, v24, v25);
    sub_222B98D00(v17, v18, v62, v46);
    sub_222B450E8(v22, v23, v24, v25);
LABEL_42:

    v41 = v17;
    v42 = v18;
    v43 = v62;
    v44 = v20;
    goto LABEL_43;
  }

  if (v19 != v24 || v20 != v25)
  {
    v58 = v24;
    v48 = v19;
    v61 = sub_222C951FC();
    sub_222B98D00(v17, v18, v48, v20);
    sub_222B98D00(v22, v23, v58, v25);
    sub_222B98D00(v17, v18, v48, v20);
    sub_222B450E8(v22, v23, v58, v25);
    if (v61)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  v31 = v19;
  sub_222B98D00(v17, v18, v19, v20);
  sub_222B98D00(v22, v23, v31, v20);
  sub_222B98D00(v17, v18, v31, v20);
  v32 = v22;
  v33 = v23;
  v34 = v31;
  v35 = v20;
LABEL_49:
  sub_222B450E8(v32, v33, v34, v35);
LABEL_50:
  v60 = v17;
  v37 = v62;

LABEL_51:
  sub_222B450E8(v60, v18, v37, v20);
  v49 = v5[8];
  v50 = a1 + v49;
  v51 = *(a1 + v49);
  v52 = *(a1 + v49 + 8);
  v54 = *(a1 + v49 + 16);
  v53 = *(v50 + 24);
  v55 = (a2 + v49);
  v57 = v55[2];
  v56 = v55[3];
  if (v51 == *v55 && v52 == v55[1] || (sub_222C951FC() & 1) != 0)
  {
    if (v53)
    {
      if (v56 && (v54 == v57 && v53 == v56 || (sub_222C951FC() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v56)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_222C0244C()
{
  result = qword_27D026D18;
  if (!qword_27D026D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D18);
  }

  return result;
}

uint64_t sub_222C024A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesGroundTruth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C02504(uint64_t a1)
{
  v2 = type metadata accessor for MessagesGroundTruth(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222C02564()
{
  result = qword_27D026D28;
  if (!qword_27D026D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D28);
  }

  return result;
}

unint64_t sub_222C025BC()
{
  result = qword_27D026D30;
  if (!qword_27D026D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026D38, &qword_222CA0370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D30);
  }

  return result;
}

uint64_t sub_222C02620(uint64_t a1)
{
  *(a1 + 8) = sub_222C026A4(&qword_280FDF4C0, type metadata accessor for MessagesGroundTruth, &protocol conformance descriptor for MessagesGroundTruth);
  result = sub_222C026A4(qword_280FDF4C8, type metadata accessor for MessagesGroundTruth, &protocol conformance descriptor for MessagesGroundTruth);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222C026A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_222C02724(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222C9378C();
    if (v2 <= 0x3F)
    {
      sub_222C027D0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_222C027D0()
{
  if (!qword_280FDFB50[0])
  {
    v0 = sub_222C94B5C();
    if (!v1)
    {
      atomic_store(v0, qword_280FDFB50);
    }
  }
}

unint64_t sub_222C02834()
{
  result = qword_27D026D40;
  if (!qword_27D026D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D40);
  }

  return result;
}

unint64_t sub_222C0288C()
{
  result = qword_27D026D48;
  if (!qword_27D026D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D48);
  }

  return result;
}

unint64_t sub_222C028E4()
{
  result = qword_27D026D50;
  if (!qword_27D026D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D50);
  }

  return result;
}

uint64_t sub_222C02938(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222CAC3F0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000222CAC410 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000222CAC430 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_222C02AE4()
{
  result = qword_27D026D58;
  if (!qword_27D026D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D58);
  }

  return result;
}

uint64_t static UsoMediaUtils.createUsoMediaWithName(entityName:)(uint64_t a1, uint64_t a2)
{
  sub_222C93A5C();
  swift_allocObject();
  v2 = sub_222C93A4C();
  sub_222C93A3C();
  MEMORY[0x223DC8590](v2);
  sub_222C9386C();
  sub_222C9381C();

  return v4;
}

uint64_t static UsoMediaUtils.createUsoMediaWithNameAndDuration(entityName:duration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_222C9380C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222C939AC();
  swift_allocObject();
  sub_222C9399C();
  sub_222C9398C();
  sub_222C93A1C();
  swift_allocObject();
  sub_222C93A0C();
  (*(v4 + 104))(v6, *MEMORY[0x277D5E978], v3);
  sub_222C939FC();
  (*(v4 + 8))(v6, v3);
  sub_222C93B0C();
  swift_allocObject();
  sub_222C93AFC();

  sub_222C93ADC();

  sub_222C93AEC();

  sub_222C939EC();
  swift_allocObject();
  sub_222C939DC();

  sub_222C939CC();

  sub_222C93A5C();
  swift_allocObject();
  v7 = sub_222C93A4C();
  sub_222C93A3C();

  sub_222C93A2C();

  MEMORY[0x223DC8590](v7);
  sub_222C9386C();
  sub_222C9381C();

  return v9[1];
}

uint64_t sub_222C02E7C(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_222C94D4C();
  swift_getObjectType();
  result = sub_222C94D4C();
  if (v1 == result)
  {
    v3 = sub_222C94D5C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v3)
    {
      return 0;
    }

    else
    {
      sub_222C9521C();
      sub_222C94F1C();
      swift_unknownObjectRelease();
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t InferenceCombinedSessionAsyncSequence.InferenceCombinedSessionAsyncSequenceIterator.init(asyncSequence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InferenceCombinedSessionAsyncSequence.InferenceCombinedSessionAsyncSequenceIterator(0, v10, v11, v12);
  v14 = *(v13 + 36);
  v15 = sub_222C93BFC();
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  *(a4 + *(v13 + 40)) = 0;
  (*(v7 + 16))(v9, a1, a2);
  sub_222C9487C();
  return (*(v7 + 8))(a1, a2);
}

uint64_t InferenceCombinedSessionAsyncSequence.InferenceCombinedSessionAsyncSequenceIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D60, &unk_222CA0628);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v3[13] = swift_task_alloc();
  v5 = sub_222C9367C();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = sub_222C93BFC();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D68, qword_222CA0638);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222C033C8, 0, 0);
}

uint64_t sub_222C033C8()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 64) + 40);
  *(v0 + 384) = v2;
  if (*(v1 + v2))
  {
    (*(*(v0 + 88) + 56))(*(v0 + 56), 1, 1, *(v0 + 80));

    v3 = *(v0 + 8);
LABEL_5:

    return v3();
  }

  if (sub_222C9486C())
  {
    *(v1 + v2) = 1;
    sub_222C9483C();
    sub_222C05370(&qword_27D026D70, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_222C9437C();
    swift_willThrow();

    v3 = *(v0 + 8);
    goto LABEL_5;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 272) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 280) = AssociatedConformanceWitness;
  v7 = swift_task_alloc();
  *(v0 + 288) = v7;
  *v7 = v0;
  v7[1] = sub_222C03754;
  v8 = *(v0 + 264);

  return MEMORY[0x282200308](v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_222C03754()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_222C0496C;
  }

  else
  {
    v2 = sub_222C03868;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222C03868()
{
  v96 = v0;
  v1 = *(v0 + 184);
  v2 = *(*(v0 + 192) + 48);
  if (v2(*(v0 + 264), 1, v1) == 1)
  {
    *(*(v0 + 72) + *(v0 + 384)) = 1;
    v1 = *(v0 + 184);
  }

  v3 = *(v0 + 256);
  v4 = *(v0 + 72);
  v5 = *(*(v0 + 64) + 36);
  *(v0 + 388) = v5;
  sub_222B4FC6C(v4 + v5, v3, &qword_27D026D68, qword_222CA0638);
  if (v2(v3, 1, v1) == 1)
  {
    sub_222B4FCD4(*(v0 + 256), &qword_27D026D68, qword_222CA0638);
    goto LABEL_27;
  }

  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 248);
  v9 = *(v0 + 224);
  v10 = *(v0 + 184);
  v11 = *(v0 + 192);
  v12 = *(v11 + 32);
  *(v0 + 304) = v12;
  *(v0 + 312) = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v9, v6, v10);
  sub_222B4FC6C(v7, v8, &qword_27D026D68, qword_222CA0638);
  v13 = v2(v8, 1, v10);
  v14 = *(v0 + 248);
  if (v13 == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 224), *(v0 + 184));
    sub_222B4FCD4(v14, &qword_27D026D68, qword_222CA0638);
    goto LABEL_27;
  }

  v12(*(v0 + 216), *(v0 + 248), *(v0 + 184));
  v15 = sub_222C93BEC();
  v16 = sub_222C02E7C(v15);

  v93 = v4;
  if (v16)
  {
    sub_222C941DC();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = 1;
  v87 = *(*(v0 + 120) + 56);
  v87(*(v0 + 176), v17, 1, *(v0 + 112));
  v19 = sub_222C93BEC();
  v20 = sub_222BB77B0(v19);

  v89 = v2;
  v91 = v5;
  if (v20)
  {
    sub_222C941DC();

    v18 = 0;
  }

  v22 = *(v0 + 168);
  v21 = *(v0 + 176);
  v24 = *(v0 + 144);
  v23 = *(v0 + 152);
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  v87(v22, v18, 1, v25);
  v27 = *(v24 + 48);
  sub_222B4FC6C(v21, v23, &unk_27D026290, &qword_222C96B40);
  sub_222B4FC6C(v22, v23 + v27, &unk_27D026290, &qword_222C96B40);
  v28 = *(v26 + 48);
  if (v28(v23, 1, v25) == 1)
  {
    v29 = *(v0 + 176);
    v30 = *(v0 + 112);
    sub_222B4FCD4(*(v0 + 168), &unk_27D026290, &qword_222C96B40);
    sub_222B4FCD4(v29, &unk_27D026290, &qword_222C96B40);
    v31 = v28(v23 + v27, 1, v30);
    v2 = v89;
    v5 = v91;
    if (v31 == 1)
    {
      sub_222B4FCD4(*(v0 + 152), &unk_27D026290, &qword_222C96B40);
      v4 = v93;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v32 = *(v0 + 112);
  sub_222B4FC6C(*(v0 + 152), *(v0 + 160), &unk_27D026290, &qword_222C96B40);
  v33 = v28(v23 + v27, 1, v32);
  v34 = *(v0 + 168);
  v35 = *(v0 + 176);
  v36 = *(v0 + 160);
  if (v33 == 1)
  {
    v37 = *(v0 + 112);
    v38 = *(v0 + 120);
    sub_222B4FCD4(*(v0 + 168), &unk_27D026290, &qword_222C96B40);
    sub_222B4FCD4(v35, &unk_27D026290, &qword_222C96B40);
    (*(v38 + 8))(v36, v37);
    v2 = v89;
    v5 = v91;
LABEL_17:
    sub_222B4FCD4(*(v0 + 152), &qword_27D025290, &unk_222C97C30);
    v4 = v93;
LABEL_26:
    v60 = *(v0 + 224);
    v61 = *(v0 + 184);
    v62 = *(*(v0 + 192) + 8);
    v62(*(v0 + 216), v61);
    v62(v60, v61);
LABEL_27:
    v63 = *(v0 + 232);
    v64 = *(v0 + 184);
    sub_222B4FC6C(v4 + v5, v63, &qword_27D026D68, qword_222CA0638);
    v65 = v2(v63, 1, v64);
    v66 = *(v0 + 264);
    if (v65 == 1)
    {
      sub_222B4FCD4(*(v0 + 232), &qword_27D026D68, qword_222CA0638);
      sub_222C04DC4(v66, v4 + v5);
      v67 = swift_task_alloc();
      *(v0 + 368) = v67;
      *v67 = v0;
      v67[1] = sub_222C0470C;
      v68 = *(v0 + 64);
      v69 = *(v0 + 56);

      return InferenceCombinedSessionAsyncSequence.InferenceCombinedSessionAsyncSequenceIterator.next()(v69, v68);
    }

    else
    {
      v71 = *(v0 + 200);
      v72 = *(v0 + 184);
      v92 = v5;
      v74 = *(v0 + 88);
      v73 = *(v0 + 96);
      v75 = *(v0 + 80);
      v90 = *(v0 + 56);
      v76 = *(*(v0 + 192) + 32);
      v76(v71, *(v0 + 232), v72);
      v77 = *(v75 + 48);
      v76(v73, v71, v72);
      sub_222B4FC6C(v66, v73 + v77, &qword_27D026D68, qword_222CA0638);
      sub_222C04E34(v66, v4 + v92);
      sub_222B723A4(v73, v90, &qword_27D026D60, &unk_222CA0628);
      (*(v74 + 56))(v90, 0, 1, v75);

      v78 = *(v0 + 8);

      return v78();
    }
  }

  v86 = *(v0 + 176);
  v88 = *(v0 + 152);
  v39 = *(v0 + 136);
  v40 = *(v0 + 112);
  v41 = *(v0 + 120);
  (*(v41 + 32))(v39, v23 + v27, v40);
  sub_222C05370(&qword_280FE02A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v42 = sub_222C9447C();
  v43 = *(v41 + 8);
  v43(v39, v40);
  sub_222B4FCD4(v34, &unk_27D026290, &qword_222C96B40);
  sub_222B4FCD4(v86, &unk_27D026290, &qword_222C96B40);
  v43(v36, v40);
  sub_222B4FCD4(v88, &unk_27D026290, &qword_222C96B40);
  v5 = v91;
  v4 = v93;
  v2 = v89;
  if ((v42 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  v44 = sub_222C93BEC();
  v45 = sub_222C02E7C(v44);
  *(v0 + 320) = v45;

  if (!v45)
  {
    goto LABEL_26;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v46 = sub_222C9431C();
  __swift_project_value_buffer(v46, qword_280FE2340);

  v47 = sub_222C942FC();
  v48 = sub_222C94A3C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 136);
    v50 = *(v0 + 120);
    v94 = *(v0 + 112);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v95 = v52;
    *v51 = 136315138;
    sub_222C941DC();
    v53 = sub_222C9360C();
    v55 = v54;
    (*(v50 + 8))(v49, v94);
    v56 = sub_222B437C0(v53, v55, &v95);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_222B39000, v47, v48, "[CombinedSessionAsyncSequence] Turns with the same id: %s detected, merging related conversations", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x223DCA8C0](v52, -1, -1);
    MEMORY[0x223DCA8C0](v51, -1, -1);
  }

  *(v0 + 328) = sub_222C93BEC();
  v57 = sub_222C93BEC();
  *(v0 + 336) = v57;
  sub_222C941DC();
  v58 = sub_222C941CC();
  if (sub_222BB77B0(v57))
  {
    v59 = sub_222C941CC();
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
  }

  v95 = v58;
  sub_222B49C08(v59);
  sub_222C941BC();
  sub_222C941FC();
  swift_allocObject();
  v79 = sub_222C941EC();
  *(v0 + 344) = v79;

  sub_222C94F0C();

  sub_222C94EAC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C9BAE0;
  *(inited + 32) = v79;

  sub_222B49BF0(inited);

  sub_222C94E8C();

  v81 = sub_222C94EAC();

  sub_222B49BF0(v81);
  sub_222C93C0C();
  v82 = swift_task_alloc();
  *(v0 + 352) = v82;
  *v82 = v0;
  v82[1] = sub_222C043B4;
  v83 = *(v0 + 272);
  v84 = *(v0 + 280);
  v85 = *(v0 + 240);

  return MEMORY[0x282200308](v85, v83, v84);
}

uint64_t sub_222C043B4()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_222C04AA8;
  }

  else
  {
    v2 = sub_222C044C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222C044C8()
{
  v17 = *(v0 + 304);
  v14 = *(v0 + 240);
  v15 = *(v0 + 388);
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v16 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 88);
  v12 = *(v0 + 264);
  v13 = *(v0 + 80);
  v11 = *(v0 + 72);
  v6 = *(v0 + 56);

  v7 = *(v3 + 8);
  v7(v2, v4);
  v7(v1, v4);
  sub_222B4FCD4(v12, &qword_27D026D68, qword_222CA0638);
  sub_222C04DC4(v14, v11 + v15);
  v8 = *(v13 + 48);
  v17(v6, v16, v4);
  sub_222B723A4(v14, v6 + v8, &qword_27D026D68, qword_222CA0638);
  (*(v5 + 56))(v6, 0, 1, v13);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_222C0470C()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_222C04C70;
  }

  else
  {
    v2 = sub_222C04820;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222C04820()
{
  sub_222B4FCD4(*(v0 + 264), &qword_27D026D68, qword_222CA0638);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222C0496C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222C04AA8()
{
  v1 = v0[33];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  v7(v2, v5);
  sub_222B4FCD4(v1, &qword_27D026D68, qword_222CA0638);

  v8 = v0[1];

  return v8();
}

uint64_t sub_222C04C70()
{
  sub_222B4FCD4(*(v0 + 264), &qword_27D026D68, qword_222CA0638);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222C04DC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D68, qword_222CA0638);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C04E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D68, qword_222CA0638);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C04EA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222B503AC;

  return InferenceCombinedSessionAsyncSequence.InferenceCombinedSessionAsyncSequenceIterator.next()(a1, a2);
}

uint64_t sub_222C04F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_222C05020;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_222C05020()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t InferenceCombinedSessionAsyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return InferenceCombinedSessionAsyncSequence.InferenceCombinedSessionAsyncSequenceIterator.init(asyncSequence:)(v6, v3, a2);
}

uint64_t sub_222C05238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  InferenceCombinedSessionAsyncSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncSequence<>.windowSquished()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t sub_222C05370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222C053E0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222C05450(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
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
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_222C05590(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void sub_222C057B0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_222C05E50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_222C05850(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = sub_222C93BFC();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = *(v9 + 80);
  v15 = *(*(v8 - 8) + 64);
  if (!v11)
  {
    ++v15;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 64) + v14;
  if (a2 > v13)
  {
    v17 = v15 + (v16 & ~v14) + 1;
    v18 = 8 * v17;
    if (v17 > 3)
    {
      goto LABEL_14;
    }

    v20 = ((a2 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v20 >= 2)
    {
LABEL_14:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_34;
      }

LABEL_21:
      v21 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v21 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v22 = v17;
        }

        else
        {
          v22 = 4;
        }

        if (v22 > 2)
        {
          if (v22 == 3)
          {
            v23 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v23 = *a1;
          }
        }

        else if (v22 == 1)
        {
          v23 = *a1;
        }

        else
        {
          v23 = *a1;
        }
      }

      else
      {
        v23 = 0;
      }

      v29 = v13 + (v23 | v21);
      return (v29 + 1);
    }
  }

LABEL_34:
  if (v7 != v13)
  {
    v26 = (a1 + v16) & ~v14;
    if (v12 == v13)
    {
      if (v11 >= 2)
      {
        v27 = (*(v10 + 48))(v26);
        if (v27 >= 2)
        {
          return v27 - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    v28 = *(v26 + v15);
    if (v28 < 2)
    {
      return 0;
    }

    v29 = (v28 + 2147483646) & 0x7FFFFFFF;
    return (v29 + 1);
  }

  v24 = *(v6 + 48);

  return v24(a1, v7, AssociatedTypeWitness);
}

void sub_222C05B04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_222C93BFC() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  if (v14 <= 0xFE)
  {
    v14 = 254;
  }

  v17 = *(v8 + 64) + v15;
  if (!v12)
  {
    ++v16;
  }

  v18 = v16 + (v17 & ~v15) + 1;
  if (a3 <= v14)
  {
    goto LABEL_21;
  }

  if (v18 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v19))
    {
      v10 = 4;
      if (v14 >= a2)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

LABEL_21:
    if (v14 >= a2)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v10 = 1;
  if (v14 >= a2)
  {
LABEL_31:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v18] = 0;
    }

    else if (v10)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    if (!a2)
    {
      return;
    }

LABEL_38:
    if (v9 == v14)
    {
      v24 = *(v27 + 56);

      v24(a1, a2, v9, AssociatedTypeWitness);
    }

    else
    {
      v25 = &a1[v17] & ~v15;
      if (v13 == v14)
      {
        v26 = *(v11 + 56);

        v26(v25, (a2 + 1));
      }

      else
      {
        *(v25 + v16) = a2 + 1;
      }
    }

    return;
  }

LABEL_22:
  v21 = ~v14 + a2;
  if (v18 >= 4)
  {
    bzero(a1, v16 + (v17 & ~v15) + 1);
    *a1 = v21;
    v22 = 1;
    if (v10 > 1)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  v22 = (v21 >> (8 * v18)) + 1;
  if (v16 + (v17 & ~v15) == -1)
  {
LABEL_50:
    if (v10 > 1)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  v23 = v21 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_50;
  }

  if (v18 == 2)
  {
    *a1 = v23;
    if (v10 > 1)
    {
LABEL_54:
      if (v10 == 2)
      {
        *&a1[v18] = v22;
      }

      else
      {
        *&a1[v18] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v10 > 1)
    {
      goto LABEL_54;
    }
  }

LABEL_51:
  if (v10)
  {
    a1[v18] = v22;
  }
}

void sub_222C05E50(uint64_t a1)
{
  if (!qword_280FE0288)
  {
    sub_222C93BFC();
    v1 = sub_222C94B5C();
    if (!v2)
    {
      atomic_store(v1, &qword_280FE0288);
    }
  }
}

uint64_t sub_222C05EA8()
{
  type metadata accessor for MessagesSuggestionOutcomeExtractor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D78, &qword_222CA0818);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDC778 = 91;
  unk_280FDC780 = 0xE100000000000000;
  return result;
}

uint64_t MessagesSuggestionOutcomeExtractor.__allocating_init(picsStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_222B405A0(a1, v2 + 16);
  return v2;
}

void *sub_222C05F98(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v3 - 8);
  v89 = (&v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v90 = &v86 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v86 - v8;
  v10 = type metadata accessor for EntityPromptClassification(0);
  v94 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v98 = (&v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v12);
  v97 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v86 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v86 - v17;
  MEMORY[0x28223BE20](v19);
  v22 = &v86 - v21;
  v23 = *(a1 + 16);
  v91 = v20;
  v95 = v24;
  v88 = v23;
  v92 = a1;
  if (v23)
  {
    v25 = *(v20 + 72);
    v96 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v26 = a1 + v96;
    v27 = MEMORY[0x277D84F90];
    do
    {
      sub_222C09250(v26, v22, type metadata accessor for FeaturisedTurn);
      if (sub_222B42478(*&v22[*(v12 + 24)]))
      {

        sub_222C0A01C(v22, v18, type metadata accessor for FeaturisedTurn);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v101[0] = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C3D4(0, *(v27 + 16) + 1, 1);
          v27 = *&v101[0];
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_222B4C3D4((v29 > 1), v30 + 1, 1);
          v27 = *&v101[0];
        }

        *(v27 + 16) = v30 + 1;
        sub_222C0A01C(v18, v27 + v96 + v30 * v25, type metadata accessor for FeaturisedTurn);
        v12 = v95;
      }

      else
      {
        sub_222C0A084(v22, type metadata accessor for FeaturisedTurn);
      }

      v26 += v25;
      --v23;
    }

    while (v23);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  v93 = v27;
  v31 = *(v86 + 16);
  if (v31)
  {
    v22 = (v86 + 32);
    v32 = (v94 + 56);
    v33 = (v94 + 48);
    v34 = MEMORY[0x277D84F90];
    v35 = v86 + 32;
    v36 = *(v86 + 16);
    do
    {
      sub_222B43E3C(v35, v101);
      sub_222B405A0(v101, v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v37 = swift_dynamicCast();
      (*v32)(v9, v37 ^ 1u, 1, v10);
      if ((*v33)(v9, 1, v10) == 1)
      {
        sub_222B4FCD4(v9, &qword_27D025028, &unk_222C96EC0);
      }

      else
      {
        sub_222C0A01C(v9, v98, type metadata accessor for EntityPromptClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_222B49F90(0, v34[2] + 1, 1, v34);
        }

        v39 = v34[2];
        v38 = v34[3];
        v40 = v34;
        if (v39 >= v38 >> 1)
        {
          v40 = sub_222B49F90((v38 > 1), v39 + 1, 1, v34);
        }

        v40[2] = v39 + 1;
        v34 = v40;
        sub_222C0A01C(v98, v40 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v39, type metadata accessor for EntityPromptClassification);
      }

      v35 += 40;
      --v36;
    }

    while (v36);
    do
    {
      sub_222B43E3C(v22, v101);
      sub_222B405A0(v101, v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      if (swift_dynamicCast())
      {
        v41 = v99[0];

        if (v41)
        {
          v98 = v34;
          LODWORD(v96) = 1;
          goto LABEL_29;
        }
      }

      v22 += 40;
      --v31;
    }

    while (v31);
    v98 = v34;
    LODWORD(v96) = 0;
  }

  else
  {
    LODWORD(v96) = 0;
    v98 = MEMORY[0x277D84F90];
  }

LABEL_29:
  v42 = 0xD000000000000013;
  v43 = v91 + 56;
  v44 = (v91 + 48);
  swift_bridgeObjectRetain_n();
  v45 = OS_LOG_TYPE_DEFAULT;
  v46 = 0;
  while (1)
  {
LABEL_39:
    if (v46 == v88)
    {
      v51 = 1;
      v46 = v88;
      v52 = v89;
      v53 = v95;
      goto LABEL_44;
    }

    v52 = v89;
    if (v46 >= v88)
    {
      break;
    }

    sub_222C09250(v92 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v46, v90, type metadata accessor for FeaturisedTurn);
    v54 = __OFADD__(v46++, 1);
    v53 = v95;
    if (v54)
    {
      goto LABEL_98;
    }

    v51 = 0;
LABEL_44:
    v55 = v90;
    (*v43)(v90, v51, 1, v53);
    sub_222B5EC84(v55, v52);
    if ((*v44)(v52, 1, v53) == 1)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_60;
    }

    v22 = v87;
    sub_222C0A01C(v52, v87, type metadata accessor for FeaturisedTurn);
    v56 = *&v22[*(v53 + 28)];

    sub_222C0A084(v22, type metadata accessor for FeaturisedTurn);

    v45 = v56;
    if (v56)
    {
      v47 = (v56 + 64);
      v48 = -1;
      do
      {
        ++v48;
        v49 = *(v56 + 16);
        if (v48 == v49)
        {
          goto LABEL_39;
        }

        if (v48 >= v49)
        {
          goto LABEL_93;
        }

        v22 = *(v47 - 2);
        if (*(v47 - 1) == 0xD000000000000013 && 0x8000000222CA87A0 == *v47)
        {
          break;
        }

        v47 += 5;
      }

      while ((sub_222C951FC() & 1) == 0);

      swift_bridgeObjectRelease_n();

      v57 = sub_222B41660(v22);

      if (v57)
      {
        v58 = 0;
        v59 = *(v57 + 16);
        v42 = MEMORY[0x277D84F90];
        while (1)
        {
          v43 = v98;
          v60 = v57 + 48 * v58;
          do
          {
            if (v59 == v58)
            {

              goto LABEL_61;
            }

            if (v58 >= *(v57 + 16))
            {
              goto LABEL_92;
            }

            v61 = (v60 + 48);
            ++v58;
            v62 = *(v60 + 56);
            v60 += 48;
          }

          while (!v62);
          v63 = *v61;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_222B49E84(0, *(v42 + 2) + 1, 1, v42);
          }

          v65 = *(v42 + 2);
          v64 = *(v42 + 3);
          if (v65 >= v64 >> 1)
          {
            v42 = sub_222B49E84((v64 > 1), v65 + 1, 1, v42);
          }

          *(v42 + 2) = v65 + 1;
          v66 = &v42[16 * v65];
          *(v66 + 4) = v63;
          *(v66 + 5) = v62;
        }
      }

LABEL_60:
      v42 = 0;
      v43 = v98;
LABEL_61:
      if (qword_280FDFE78 != -1)
      {
        goto LABEL_96;
      }

      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  swift_once();
LABEL_64:
  *(v22 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, v101);
  *(v22 + 6) = 2048;
  *(v22 + 14) = *(v93 + 16);

  _os_log_impl(&dword_222B39000, v52, v45, "%s Found %ld turns with PICS suggestions reported.", v22, 0x16u);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  MEMORY[0x223DCA8C0](v44, -1, -1);
  MEMORY[0x223DCA8C0](v22, -1, -1);

  v43 = v98;
LABEL_66:

  v68 = sub_222C942FC();
  v69 = sub_222C94A3C();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v101[0] = v71;
    *v70 = 136315394;
    if (qword_280FDC770 != -1)
    {
      swift_once();
    }

    *(v70 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, v101);
    *(v70 + 12) = 2048;
    *(v70 + 14) = *(v43 + 16);

    _os_log_impl(&dword_222B39000, v68, v69, "%s Found %ld entity prompts in the session.", v70, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v71);
    MEMORY[0x223DCA8C0](v71, -1, -1);
    MEMORY[0x223DCA8C0](v70, -1, -1);
  }

  else
  {
  }

  v72 = *(v93 + 16);
  if (v72)
  {
    v73 = v93 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v74 = *(v91 + 72);
    v75 = MEMORY[0x277D84F90];
    while (1)
    {
      v76 = v97;
      sub_222C09250(v73, v97, type metadata accessor for FeaturisedTurn);
      v77 = sub_222C06D54(v76, v98, v42, v96);
      sub_222C0A084(v76, type metadata accessor for FeaturisedTurn);
      v78 = *(v77 + 16);
      v43 = v75[2];
      v79 = v43 + v78;
      if (__OFADD__(v43, v78))
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
        swift_once();
LABEL_62:
        v67 = sub_222C9431C();
        __swift_project_value_buffer(v67, qword_280FE2340);

        v52 = sub_222C942FC();
        v45 = sub_222C94A3C();
        if (os_log_type_enabled(v52, v45))
        {
          v22 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *&v101[0] = v44;
          *v22 = 136315394;
          if (qword_280FDC770 == -1)
          {
            goto LABEL_64;
          }

          goto LABEL_99;
        }

        goto LABEL_66;
      }

      v80 = swift_isUniquelyReferenced_nonNull_native();
      if (v80 && v79 <= v75[3] >> 1)
      {
        if (*(v77 + 16))
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v43 <= v79)
        {
          v81 = v43 + v78;
        }

        else
        {
          v81 = v43;
        }

        v75 = sub_222B4B674(v80, v81, 1, v75);
        if (*(v77 + 16))
        {
LABEL_84:
          v43 = v75[2];
          v82 = (v75[3] >> 1) - v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE8, &qword_222CA55A0);
          if (v82 < v78)
          {
            goto LABEL_94;
          }

          swift_arrayInitWithCopy();

          if (v78)
          {
            v83 = v75[2];
            v54 = __OFADD__(v83, v78);
            v84 = v83 + v78;
            if (v54)
            {
              goto LABEL_95;
            }

            v75[2] = v84;
          }

          goto LABEL_74;
        }
      }

      if (v78)
      {
        goto LABEL_91;
      }

LABEL_74:
      v73 += v74;
      if (!--v72)
      {
        goto LABEL_89;
      }
    }
  }

  v75 = MEMORY[0x277D84F90];
LABEL_89:

  return v75;
}

uint64_t sub_222C06D54(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v186 = a4;
  v197 = a3;
  v184 = a2;
  v213 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v213);
  v188 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v183 = &v177 - v7;
  v182 = type metadata accessor for EntityPromptClassification(0);
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v185 = &v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  MEMORY[0x28223BE20](v9 - 8);
  v202 = &v177 - v10;
  v201 = type metadata accessor for PlusContactSuggestion(0);
  v205 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v193 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v209 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v187 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v192 = &v177 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v177 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v177 - v19;
  MEMORY[0x28223BE20](v21);
  v210 = &v177 - v22;
  v23 = type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary(0);
  v211 = *(v23 - 1);
  MEMORY[0x28223BE20](v23);
  v212 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v177 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v177 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v31 - 8);
  v208 = &v177 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v177 - v34;
  v36 = sub_222C9367C();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v190 = &v177 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v200 = &v177 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v177 - v42;
  FeaturisedTurn.getPlusId()(v35);
  v206 = *(v37 + 48);
  v207 = v37 + 48;
  if (v206(v35, 1, v36) == 1)
  {
    sub_222B4FCD4(v35, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v44 = sub_222C9431C();
    __swift_project_value_buffer(v44, qword_280FE2340);
    v45 = sub_222C942FC();
    v46 = sub_222C94A4C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v217 = v48;
      *v47 = 136315138;
      if (qword_280FDC770 != -1)
      {
        swift_once();
      }

      *(v47 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v217);
      _os_log_impl(&dword_222B39000, v45, v46, "%s Missing PLUS Id for turn with PICS suggestions. SELF logs cannot be emitted for these suggestions.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x223DCA8C0](v48, -1, -1);
      MEMORY[0x223DCA8C0](v47, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v50 = *(v37 + 32);
  v191 = v43;
  v199 = v37 + 32;
  v198 = v50;
  v50(v43, v35, v36);
  v189 = *(a1 + *(v213 + 24));
  v51 = sub_222B42A30(v189);
  v52 = a1;
  if (v51 != 2 && (v51 & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v87 = sub_222C9431C();
    __swift_project_value_buffer(v87, qword_280FE2340);
    v88 = sub_222C942FC();
    v89 = sub_222C94A3C();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v217 = v91;
      *v90 = 136315138;
      if (qword_280FDC770 != -1)
      {
        swift_once();
      }

      *(v90 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v217);
      _os_log_impl(&dword_222B39000, v88, v89, "%s Runtime suggestions is not enabled for the turn, no outcomes will be extracted", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      MEMORY[0x223DCA8C0](v91, -1, -1);
      MEMORY[0x223DCA8C0](v90, -1, -1);
    }

    (*(v37 + 8))(v191, v36);
    return MEMORY[0x277D84F90];
  }

  v53 = MEMORY[0x277D84F90];
  v54 = sub_222B42478(v189);
  if (v54)
  {
    v53 = v54;
  }

  v214 = v36;
  v180 = v37;
  v179 = a1;
  if (v197)
  {
    v55 = *(v53 + 16);
    if (v55)
    {
      v216 = MEMORY[0x277D84F90];
      sub_222B4CC54(0, v55, 0);
      v213 = v216;
      v56 = (*(v209 + 80) + 32) & ~*(v209 + 80);
      v178 = v53;
      v57 = v53 + v56;
      v195 = (v205 + 48);
      v194 = (v37 + 8);
      v58 = *(v209 + 72);
      v204 = (v37 + 16);
      v205 = v58;
      v196 = v23;
      do
      {
        v59 = v210;
        sub_222C09250(v57, v210, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        sub_222C09250(v59, v20, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        v60 = v208;
        sub_222B5551C(v59 + *(v215 + 20), v208);
        if (v206(v60, 1, v36) == 1)
        {
          sub_222C0A084(v59, type metadata accessor for PlusContactSuggestionRuntimeSummary);
          sub_222B4FCD4(v60, &unk_27D026290, &qword_222C96B40);
          v61 = 2;
        }

        else
        {
          v62 = v200;
          v198(v200, v60, v36);
          v63 = v203[5];
          v64 = v203[6];
          __swift_project_boxed_opaque_existential_1(v203 + 2, v63);
          v65 = v202;
          (*(v64 + 64))(v62, v63, v64);
          v66 = v201;
          if ((*v195)(v65, 1, v201) == 1)
          {
            v36 = v214;
            (*v194)(v62, v214);
            sub_222C0A084(v210, type metadata accessor for PlusContactSuggestionRuntimeSummary);
            sub_222B4FCD4(v65, &qword_27D025A88, &unk_222C9A0C0);
            v61 = 2;
          }

          else
          {
            v67 = v65;
            v68 = v193;
            v69 = sub_222C0A01C(v67, v193, type metadata accessor for PlusContactSuggestion);
            v70 = (v68 + *(v66 + 24));
            v71 = v70[1];
            v217 = *v70;
            v218 = v71;
            MEMORY[0x28223BE20](v69);
            *(&v177 - 2) = &v217;

            v72 = sub_222B42F4C(sub_222B5EEB0, (&v177 - 4), v197);
            sub_222C0A084(v68, type metadata accessor for PlusContactSuggestion);
            v36 = v214;
            (*v194)(v62, v214);
            sub_222C0A084(v210, type metadata accessor for PlusContactSuggestionRuntimeSummary);

            v61 = v72 & 1;
          }

          v23 = v196;
        }

        (*v204)(v30, v20, v36);
        v73 = v215;
        sub_222B5551C(&v20[*(v215 + 20)], &v30[v23[5]]);
        v30[v23[6]] = v20[*(v73 + 24)];
        v74 = v20[*(v73 + 28)];
        sub_222C0A084(v20, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        v30[v23[7]] = v74;
        v30[v23[8]] = v61;
        v75 = v213;
        v216 = v213;
        v77 = *(v213 + 16);
        v76 = *(v213 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_222B4CC54((v76 > 1), v77 + 1, 1);
          v75 = v216;
        }

        *(v75 + 16) = v77 + 1;
        v78 = (*(v211 + 80) + 32) & ~*(v211 + 80);
        v213 = v75;
        sub_222C0A01C(v30, v75 + v78 + *(v211 + 72) * v77, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v57 += v205;
        --v55;
        v36 = v214;
      }

      while (v55);

LABEL_41:
      v37 = v180;
      v52 = v179;
      goto LABEL_43;
    }
  }

  else
  {
    v79 = v53;
    v80 = *(v53 + 16);
    if (v80)
    {
      v217 = MEMORY[0x277D84F90];
      sub_222B4CC54(0, v80, 0);
      v81 = v217;
      v82 = (*(v209 + 80) + 32) & ~*(v209 + 80);
      v178 = v79;
      v83 = v79 + v82;
      v213 = *(v209 + 72);
      do
      {
        sub_222C09250(v83, v17, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        (*(v37 + 16))(v27, v17, v214);
        v84 = v215;
        sub_222B5551C(&v17[*(v215 + 20)], &v27[v23[5]]);
        v27[v23[6]] = v17[*(v84 + 24)];
        LOBYTE(v84) = v17[*(v84 + 28)];
        sub_222C0A084(v17, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        v27[v23[7]] = v84;
        v27[v23[8]] = 2;
        v217 = v81;
        v86 = *(v81 + 16);
        v85 = *(v81 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_222B4CC54((v85 > 1), v86 + 1, 1);
          v81 = v217;
        }

        *(v81 + 16) = v86 + 1;
        sub_222C0A01C(v27, v81 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v86, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v83 += v213;
        --v80;
      }

      while (v80);
      v213 = v81;

      v36 = v214;
      goto LABEL_41;
    }
  }

  v213 = MEMORY[0x277D84F90];
LABEL_43:
  v92 = sub_222B41648(v189);
  v93 = v192;
  if (v92 && (v94 = v92, v217 = 0xD000000000000029, v218 = 0x8000000222CA8620, MEMORY[0x28223BE20](v92), *(&v177 - 2) = &v217, v95 = sub_222B42F4C(sub_222B5EBA4, (&v177 - 4), v94), v96 = , (v95 & 1) != 0))
  {
    MEMORY[0x28223BE20](v96);
    *(&v177 - 2) = v52;
    v97 = v183;
    sub_222B4128C(sub_222C092D8, v184, v183);
    v210 = 0;
    if ((*(v181 + 48))(v97, 1, v182) == 1)
    {
      sub_222B4FCD4(v97, &qword_27D025028, &unk_222C96EC0);
      v98 = v213;
      v99 = sub_222C09818(v213, v186 & 1);
      v100 = v188;
    }

    else
    {
      v130 = v97;
      v131 = v185;
      v132 = sub_222C0A01C(v130, v185, type metadata accessor for EntityPromptClassification);
      MEMORY[0x28223BE20](v132);
      *(&v177 - 2) = v203;
      *(&v177 - 1) = v131;
      v133 = sub_222C55D08(sub_222C0A014, (&v177 - 4), v213);
      v134 = v133;
      v136 = v135;
      v137 = *(v135 + 16);
      if (v137)
      {
        v208 = v133;
        v217 = MEMORY[0x277D84F90];
        sub_222B4C9EC(0, v137, 0);
        v138 = v217;
        v139 = *(v211 + 80);
        v207 = v136;
        v140 = v136 + ((v139 + 32) & ~v139);
        v141 = *(v211 + 72);
        v142 = (v180 + 16);
        do
        {
          v143 = v212;
          sub_222C09250(v140, v212, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
          (*v142)(v93, v143, v214);
          v144 = v215;
          sub_222B5551C(v143 + v23[5], v93 + *(v215 + 20));
          v145 = *(v143 + v23[7]);
          *(v93 + *(v144 + 24)) = *(v143 + v23[6]);
          *(v93 + *(v144 + 28)) = v145;
          sub_222C0A084(v143, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
          v217 = v138;
          v147 = *(v138 + 16);
          v146 = *(v138 + 24);
          if (v147 >= v146 >> 1)
          {
            sub_222B4C9EC((v146 > 1), v147 + 1, 1);
            v138 = v217;
          }

          *(v138 + 16) = v147 + 1;
          sub_222C0A01C(v93, v138 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v147, type metadata accessor for PlusContactSuggestionRuntimeSummary);
          v140 += v141;
          --v137;
        }

        while (v137);

        v36 = v214;
        v134 = v208;
      }

      else
      {

        v138 = MEMORY[0x277D84F90];
      }

      v148 = v185;
      v149 = sub_222C55204(v138, v185);

      v150 = sub_222C09818(v134, v186 & 1);

      v217 = v149;
      sub_222B49C20(v150);
      v99 = v217;
      sub_222C0A084(v148, type metadata accessor for EntityPromptClassification);
      v100 = v188;
      v52 = v179;
      v98 = v213;
    }

    v151 = *(v98 + 16);
    if (v151)
    {
      v217 = MEMORY[0x277D84F90];
      sub_222B4C418(0, v151, 0);
      v152 = v217;
      v153 = v98 + ((*(v211 + 80) + 32) & ~*(v211 + 80));
      v154 = *(v211 + 72);
      do
      {
        v155 = v212;
        sub_222C09250(v153, v212, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v156 = sub_222C9360C();
        v158 = v157;
        sub_222C0A084(v155, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v217 = v152;
        v160 = *(v152 + 16);
        v159 = *(v152 + 24);
        if (v160 >= v159 >> 1)
        {
          sub_222B4C418((v159 > 1), v160 + 1, 1);
          v152 = v217;
        }

        *(v152 + 16) = v160 + 1;
        v161 = v152 + 16 * v160;
        *(v161 + 32) = v156;
        *(v161 + 40) = v158;
        v153 += v154;
        --v151;
      }

      while (v151);

      v36 = v214;
      v100 = v188;
      v52 = v179;
    }

    else
    {

      v152 = MEMORY[0x277D84F90];
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v162 = sub_222C9431C();
    __swift_project_value_buffer(v162, qword_280FE2340);
    sub_222C09250(v52, v100, type metadata accessor for FeaturisedTurn);

    v163 = sub_222C942FC();
    v164 = sub_222C94A3C();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v217 = v166;
      *v165 = 136315906;
      if (qword_280FDC770 != -1)
      {
        swift_once();
      }

      *(v165 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v217);
      *(v165 + 12) = 2048;
      if (v99 >> 62)
      {
        v167 = sub_222C94C6C();
      }

      else
      {
        v167 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v165 + 14) = v167;

      *(v165 + 22) = 2048;
      *(v165 + 24) = *(v152 + 16);

      *(v165 + 32) = 2080;
      sub_222B9E5D0();
      v168 = v214;
      v169 = sub_222C9517C();
      v171 = v170;
      sub_222C0A084(v100, type metadata accessor for FeaturisedTurn);
      v172 = sub_222B437C0(v169, v171, &v217);

      *(v165 + 34) = v172;
      _os_log_impl(&dword_222B39000, v163, v164, "%s Generated outcomes for %ld/%ld suggestions in Turn id=%s", v165, 0x2Au);
      swift_arrayDestroy();
      v173 = v166;
      v36 = v168;
      MEMORY[0x223DCA8C0](v173, -1, -1);
      MEMORY[0x223DCA8C0](v165, -1, -1);
    }

    else
    {

      sub_222C0A084(v100, type metadata accessor for FeaturisedTurn);
    }

    sub_222C54A3C(v99, v152);

    MEMORY[0x28223BE20](v174);
    v175 = v191;
    *(&v177 - 2) = v191;
    sub_222C63194(sub_222C0A208, (&v177 - 4), v99);
    v129 = v176;

    (*(v180 + 8))(v175, v36);
  }

  else
  {
    v101 = v191;
    v210 = 0;
    v102 = v190;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v103 = sub_222C9431C();
    __swift_project_value_buffer(v103, qword_280FE2340);
    v104 = *(v37 + 16);
    v104(v102, v101, v36);
    v105 = sub_222C942FC();
    v106 = v37;
    v107 = sub_222C94A3C();
    if (os_log_type_enabled(v105, v107))
    {
      v108 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v217 = v207;
      *v108 = 136315394;
      if (qword_280FDC770 != -1)
      {
        swift_once();
      }

      *(v108 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v217);
      *(v108 + 12) = 2080;
      sub_222B9E5D0();
      v109 = sub_222C9517C();
      v111 = v110;
      v208 = *(v180 + 8);
      (v208)(v102, v214);
      v112 = sub_222B437C0(v109, v111, &v217);
      v36 = v214;

      *(v108 + 14) = v112;
      _os_log_impl(&dword_222B39000, v105, v107, "%s Turn with PLUS ID %s does not have a messages task type. Marking all suggestion outcomes as unknown.", v108, 0x16u);
      v113 = v207;
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v113, -1, -1);
      MEMORY[0x223DCA8C0](v108, -1, -1);
    }

    else
    {

      v208 = *(v106 + 8);
      (v208)(v102, v36);
    }

    v114 = *(v213 + 16);
    if (v114)
    {
      v217 = MEMORY[0x277D84F90];
      v115 = v213;
      sub_222B4C9EC(0, v114, 0);
      v116 = v217;
      v117 = v115 + ((*(v211 + 80) + 32) & ~*(v211 + 80));
      v118 = *(v211 + 72);
      v119 = v187;
      do
      {
        v120 = v212;
        sub_222C09250(v117, v212, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v104(v119, v120, v36);
        v121 = v215;
        sub_222B5551C(v120 + v23[5], v119 + *(v215 + 20));
        v122 = *(v120 + v23[7]);
        *(v119 + *(v121 + 24)) = *(v120 + v23[6]);
        *(v119 + *(v121 + 28)) = v122;
        sub_222C0A084(v120, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v217 = v116;
        v124 = *(v116 + 16);
        v123 = *(v116 + 24);
        if (v124 >= v123 >> 1)
        {
          sub_222B4C9EC((v123 > 1), v124 + 1, 1);
          v116 = v217;
        }

        *(v116 + 16) = v124 + 1;
        sub_222C0A01C(v119, v116 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v124, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        v117 += v118;
        --v114;
        v36 = v214;
      }

      while (v114);
    }

    else
    {

      v116 = MEMORY[0x277D84F90];
    }

    v125 = sub_222BC94A8(v116, 0);

    MEMORY[0x28223BE20](v126);
    v127 = v191;
    *(&v177 - 2) = v191;
    sub_222C63194(sub_222C092B8, (&v177 - 4), v125);
    v129 = v128;

    (v208)(v127, v36);
  }

  return v129;
}

uint64_t sub_222C0886C(void *a1, uint64_t a2)
{
  v3 = *a1 == 0xD000000000000029 && 0x8000000222CA8620 == a1[1];
  if (!v3 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2] == 0x6E65697069636572 && a1[3] == 0xE900000000000074;
  if (!v4 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for EntityPromptClassification(0);
  return sub_222C9362C() & 1;
}

uint64_t sub_222C08940(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = a3;
  v57 = a2;
  v4 = type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  v10 = sub_222C9367C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v50 - v18;
  v56 = type metadata accessor for PlusContactSuggestion(0);
  v20 = *(v56 - 8);
  v21 = MEMORY[0x28223BE20](v56);
  v52 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v16, a1, v10, v21);
  v23 = v14[7];
  sub_222B5551C(a1 + v5[7], &v16[v23]);
  v24 = v5[9];
  v25 = *(a1 + v5[8]);
  v54 = a1;
  LOBYTE(v24) = *(a1 + v24);
  v16[v14[8]] = v25;
  v16[v14[9]] = v24;
  sub_222B5551C(&v16[v23], v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_222C0A084(v16, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    sub_222B4FCD4(v9, &unk_27D026290, &qword_222C96B40);
    v26 = v56;
    (*(v20 + 56))(v19, 1, 1, v56);
  }

  else
  {
    v27 = v51;
    (*(v11 + 32))(v51, v9, v10);
    v28 = v57[5];
    v29 = v57[6];
    __swift_project_boxed_opaque_existential_1(v57 + 2, v28);
    (*(v29 + 64))(v27, v28, v29);
    (*(v11 + 8))(v27, v10);
    sub_222C0A084(v16, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v26 = v56;
  }

  if ((*(v20 + 48))(v19, 1, v26) == 1)
  {
    sub_222B4FCD4(v19, &qword_27D025A88, &unk_222C9A0C0);
    v30 = v57;
  }

  else
  {
    v31 = v52;
    v32 = sub_222C0A01C(v19, v52, type metadata accessor for PlusContactSuggestion);
    v33 = *(v53 + 32);
    v34 = (v31 + *(v26 + 24));
    v35 = v34[1];
    v58[0] = *v34;
    v58[1] = v35;
    MEMORY[0x28223BE20](v32);
    *(&v50 - 2) = v58;

    LOBYTE(v33) = sub_222B42F4C(sub_222B5EEB0, (&v50 - 4), v33);
    sub_222C0A084(v31, type metadata accessor for PlusContactSuggestion);

    v30 = v57;
    if (v33)
    {
      return 1;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v37 = sub_222C9431C();
  __swift_project_value_buffer(v37, qword_280FE2340);
  v38 = v55;
  sub_222C09250(v54, v55, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);

  v39 = sub_222C942FC();
  v40 = sub_222C94A4C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v58[0] = v42;
    *v41 = 136315394;
    v58[2] = v30;
    type metadata accessor for MessagesSuggestionOutcomeExtractor();

    v43 = sub_222C944EC();
    v45 = sub_222B437C0(v43, v44, v58);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    v46 = sub_222C9360C();
    v48 = v47;
    sub_222C0A084(v38, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
    v49 = sub_222B437C0(v46, v48, v58);

    *(v41 + 14) = v49;
    _os_log_impl(&dword_222B39000, v39, v40, "[%s] Suggestion was not in the prompt entities. Falling back to non-prompt resolution. suggestionId=%s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v42, -1, -1);
    MEMORY[0x223DCA8C0](v41, -1, -1);
  }

  else
  {

    sub_222C0A084(v38, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
  }

  return 0;
}

id sub_222C09028@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE8, &qword_222CA55A0) + 48);
  v7 = sub_222C9367C();
  (*(*(v7 - 8) + 16))(a3, a2, v7);
  *(a3 + v6) = v5;
  return v5;
}

uint64_t MessagesSuggestionOutcomeExtractor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222C0911C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MessagesSuggestionOutcomeExtractor();
  v4 = swift_allocObject();
  result = sub_222B405A0(a1, v4 + 16);
  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary(uint64_t a1)
{
  result = qword_27D026D80;
  if (!qword_27D026D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222C09250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C092F8(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + *(type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary(0) + 32));
    if (v2 == 2)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v3 = sub_222C9431C();
      __swift_project_value_buffer(v3, qword_280FE2340);
      v4 = sub_222C942FC();
      v5 = sub_222C94A3C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v24 = v7;
        *v6 = 136315138;
        if (qword_280FDC770 != -1)
        {
          swift_once();
        }

        *(v6 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v24);
        _os_log_impl(&dword_222B39000, v4, v5, "%s Message was sent in session, but we don't know whether the suggestion was in recipients list. Marking outcome as unknown", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v7);
        MEMORY[0x223DCA8C0](v7, -1, -1);
        MEMORY[0x223DCA8C0](v6, -1, -1);
      }

      return 0;
    }

    else if (v2)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v14 = sub_222C9431C();
      __swift_project_value_buffer(v14, qword_280FE2340);
      v15 = sub_222C942FC();
      v16 = sub_222C94A3C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        *v17 = 136315138;
        if (qword_280FDC770 != -1)
        {
          swift_once();
        }

        *(v17 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v24);
        _os_log_impl(&dword_222B39000, v15, v16, "%s Suggestion was chosen by model without prompt, the user did not abandon and messages were sent to the suggestion. Marking outcome as successful execution.", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x223DCA8C0](v18, -1, -1);
        MEMORY[0x223DCA8C0](v17, -1, -1);
      }

      return 11;
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v19 = sub_222C9431C();
      __swift_project_value_buffer(v19, qword_280FE2340);
      v20 = sub_222C942FC();
      v21 = sub_222C94A3C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = v23;
        *v22 = 136315138;
        if (qword_280FDC770 != -1)
        {
          swift_once();
        }

        *(v22 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v24);
        _os_log_impl(&dword_222B39000, v20, v21, "%s Suggestion was chosen by model without prompt, but was not included in the final recipients. Marking outcome as removed.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        MEMORY[0x223DCA8C0](v23, -1, -1);
        MEMORY[0x223DCA8C0](v22, -1, -1);
      }

      return 12;
    }
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v9 = sub_222C9431C();
    __swift_project_value_buffer(v9, qword_280FE2340);
    v10 = sub_222C942FC();
    v11 = sub_222C94A3C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      if (qword_280FDC770 != -1)
      {
        swift_once();
      }

      *(v12 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v24);
      _os_log_impl(&dword_222B39000, v10, v11, "%s Suggestion was chosen by model without prompt, the user abandoned, and messages were not sent in session. Marking outcome as abandoned.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x223DCA8C0](v13, -1, -1);
      MEMORY[0x223DCA8C0](v12, -1, -1);
    }

    return 13;
  }
}

uint64_t sub_222C09818(uint64_t a1, int a2)
{
  LODWORD(v55) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v6 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v56 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - v19;
  v22 = *(a1 + 16);
  if (v22 == 1)
  {
    v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    sub_222C09250(a1 + v23, &v54 - v19, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
    v24 = a1;
    v25 = sub_222C092F8(v21, v55 & 1);
    v26 = sub_222C9367C();
    (*(*(v26 - 8) + 16))(v11, v21, v26);
    sub_222B5551C(&v21[v12[5]], &v11[v6[5]]);
    v27 = v21[v12[7]];
    v11[v6[6]] = v21[v12[6]];
    v11[v6[7]] = v27;
    v28 = type metadata accessor for EntityPromptClassification(0);
    (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
    v29 = sub_222BC8C30(v11, v5);
    sub_222B4FCD4(v5, &qword_27D025028, &unk_222C96EC0);
    sub_222C0A084(v11, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v57 = MEMORY[0x277D84F90];
    sub_222C09250(v24 + v23, v17, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
    v30 = [objc_allocWithZone(MEMORY[0x277D59CC8]) init];
    if (v30)
    {
      v31 = v30;
      v32 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v33 = sub_222C9361C();
      v34 = [v32 initWithNSUUID_];

      [v31 setSuggestionId_];
      [v31 setContactSuggestionOutcome_];
      [v31 setContactSuggestionRedundancyState_];
      v35 = sub_222C0A084(v17, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
      MEMORY[0x223DC94A0](v35);
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222C9475C();
      }

      sub_222C947AC();
      v36 = v57;
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v49 = sub_222C9431C();
      __swift_project_value_buffer(v49, qword_280FE2340);
      v50 = sub_222C942FC();
      v51 = sub_222C94A4C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_222B39000, v50, v51, "Failed to create SELF template for PLUSSchemaPLUSContactSuggestionOutcomeReported", v52, 2u);
        MEMORY[0x223DCA8C0](v52, -1, -1);
      }

      sub_222C0A084(v17, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
      v36 = MEMORY[0x277D84F90];
    }

    sub_222C0A084(v21, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
  }

  else
  {
    v55 = v20;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v37 = sub_222C9431C();
    __swift_project_value_buffer(v37, qword_280FE2340);
    v38 = sub_222C942FC();
    v39 = sub_222C94A3C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v57 = v41;
      *v40 = 136315138;
      if (qword_280FDC770 != -1)
      {
        swift_once();
      }

      *(v40 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v57);
      _os_log_impl(&dword_222B39000, v38, v39, "%s Either found zero suggestions, or multiple suggestions included in the model output but no detected prompt. Marking all suggestions as unknown outcomes.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x223DCA8C0](v41, -1, -1);
      MEMORY[0x223DCA8C0](v40, -1, -1);
    }

    v42 = MEMORY[0x277D84F90];
    if (v22)
    {
      v57 = MEMORY[0x277D84F90];
      sub_222B4C9EC(0, v22, 0);
      v42 = v57;
      v43 = a1 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
      v44 = *(v55 + 72);
      do
      {
        sub_222C09250(v43, v14, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v45 = sub_222C9367C();
        (*(*(v45 - 8) + 16))(v8, v14, v45);
        sub_222B5551C(&v14[v12[5]], &v8[v6[5]]);
        v46 = v14[v12[7]];
        v8[v6[6]] = v14[v12[6]];
        v8[v6[7]] = v46;
        sub_222C0A084(v14, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v57 = v42;
        v48 = *(v42 + 16);
        v47 = *(v42 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_222B4C9EC((v47 > 1), v48 + 1, 1);
          v42 = v57;
        }

        *(v42 + 16) = v48 + 1;
        sub_222C0A01C(v8, v42 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v48, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        v43 += v44;
        --v22;
      }

      while (v22);
    }

    v36 = sub_222BC94A8(v42, 8);
  }

  return v36;
}

uint64_t sub_222C0A01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C0A084(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_222C0A10C(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222B56160(319);
    if (v2 <= 0x3F)
    {
      sub_222C0A1B8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_222C0A1B8()
{
  if (!qword_27D026D90)
  {
    v0 = sub_222C94B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D026D90);
    }
  }
}

uint64_t sub_222C0A220@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D98, &unk_222CA0850);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v70 - v5;
  v7 = sub_222C93A8C();
  v86 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A40, &qword_222C9F098);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v70 - v11;
  v13 = sub_222C9397C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v98 = &v70 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;
  v22 = sub_222C9382C();
  if (!v22)
  {
    result = sub_222C9385C();
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v55 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    if (v56)
    {
      v64 = result;
    }

    else
    {
      v64 = 0;
    }

    if (v56 <= 1)
    {
      v65 = 1;
    }

    else
    {
      v65 = v56;
    }

    goto LABEL_60;
  }

  v102 = v22;
  if (v22 >> 62)
  {
    result = sub_222C94C6C();
  }

  else
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v82 = v9;
  v85 = a1;
  if (!result)
  {

    v55 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v97 = 0;
    v27 = MEMORY[0x277D84F90];
LABEL_52:
    if (sub_222C9384C())
    {
      sub_222C93A6C();
      v66 = v86;
      if ((*(v86 + 48))(v6, 1, v7) != 1)
      {
        v68 = v82;
        (*(v66 + 32))(v82, v6, v7);
        v62 = sub_222C93A7C();
        v63 = v69;

        (*(v66 + 8))(v68, v7);
        if (*(v27 + 2))
        {
          goto LABEL_56;
        }

        goto LABEL_58;
      }

      sub_222B4FCD4(v6, &qword_27D026D98, &unk_222CA0850);
    }

    v62 = 0;
    v63 = 0;
    if (*(v27 + 2))
    {
LABEL_56:
      v104 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
      sub_222B72340();
      v64 = sub_222C9445C();
      v65 = v67;

LABEL_59:
      v57 = v88;
      v61 = v89;
      v58 = v90;
      v59 = v91;
      v60 = v97;
LABEL_60:
      *a2 = v64;
      a2[1] = v65;
      a2[2] = v57;
      a2[3] = v58;
      a2[4] = v59;
      a2[5] = v60;
      a2[6] = v55;
      a2[7] = v61;
      a2[8] = v62;
      a2[9] = v63;
      return result;
    }

LABEL_58:

    v64 = 0;
    v65 = 0;
    goto LABEL_59;
  }

  if (result >= 1)
  {
    v78 = v16;
    v79 = v6;
    v80 = v7;
    v81 = a2;
    v84 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v97 = 0;
    v25 = 0;
    v26 = v102;
    v103 = v102 & 0xC000000000000001;
    v100 = (v14 + 48);
    v94 = (v14 + 32);
    v95 = (v14 + 16);
    v93 = (v14 + 88);
    v92 = *MEMORY[0x277D5EDC0];
    v87 = *MEMORY[0x277D5ED90];
    v83 = *MEMORY[0x277D5ED98];
    v96 = (v14 + 8);
    v27 = MEMORY[0x277D84F90];
    v101 = (v14 + 56);
    *&v23 = 136315138;
    v76 = v23;
    v99 = v21;
    while (1)
    {
      v28 = result;
      if (v103)
      {
        MEMORY[0x223DC9B30](v25, v26);
      }

      else
      {
      }

      sub_222C936DC();
      if (!v104)
      {
        break;
      }

      v29 = sub_222C9383C();

      if (!v29)
      {
        break;
      }

      sub_222C9395C();

      if ((*v100)(v12, 1, v13) == 1)
      {
        goto LABEL_20;
      }

      (*v94)(v21, v12, v13);
      v30 = *v95;
      v31 = v98;
      (*v95)(v98, v21, v13);
      v32 = (*v93)(v31, v13);
      if (v32 == v92)
      {

        sub_222C936DC();
        if (!v104)
        {
          (*v96)(v21, v13);

          v91 = 0;
          v97 = 0;
          goto LABEL_9;
        }

        v91 = sub_222C9385C();
        v97 = v33;

        goto LABEL_34;
      }

      if (v32 == v87)
      {

        sub_222C936DC();
        if (!v104)
        {
          (*v96)(v21, v13);

          v88 = 0;
          v90 = 0;
          goto LABEL_9;
        }

        v88 = sub_222C9385C();
        v90 = v40;
LABEL_33:

LABEL_34:

        (*v96)(v21, v13);
        goto LABEL_9;
      }

      if (v32 == v83)
      {

        sub_222C936DC();
        if (!v104)
        {
          (*v96)(v21, v13);

          v84 = 0;
          v89 = 0;
          goto LABEL_9;
        }

        v84 = sub_222C9385C();
        v89 = v41;
        goto LABEL_33;
      }

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v42 = sub_222C9431C();
      __swift_project_value_buffer(v42, qword_280FE2340);
      v43 = v78;
      v30(v78, v21, v13);
      v44 = sub_222C942FC();
      v75 = sub_222C94A3C();
      v45 = os_log_type_enabled(v44, v75);
      v46 = v96;
      v77 = v96 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v45)
      {
        v47 = swift_slowAlloc();
        v74 = v47;
        v73 = swift_slowAlloc();
        v104 = v73;
        *v47 = v76;
        v71 = sub_222C9396C();
        v49 = v48;
        v72 = v44;
        v50 = *v96;
        (*v96)(v43, v13);
        v51 = sub_222B437C0(v71, v49, &v104);

        v52 = v74;
        *(v74 + 1) = v51;
        v53 = v72;
        _os_log_impl(&dword_222B39000, v72, v75, "Unknown type detected in MediaItem USO: %s", v52, 0xCu);
        v54 = v73;
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        MEMORY[0x223DCA8C0](v54, -1, -1);
        MEMORY[0x223DCA8C0](v74, -1, -1);
      }

      else
      {

        v50 = *v46;
        (*v46)(v43, v13);
      }

      v50(v21, v13);
      v50(v98, v13);
LABEL_8:
      v26 = v102;
LABEL_9:
      ++v25;
      result = v28;
      if (v28 == v25)
      {

        a2 = v81;
        v7 = v80;
        v6 = v79;
        v55 = v84;
        goto LABEL_52;
      }
    }

    (*v101)(v12, 1, 1, v13);
LABEL_20:
    sub_222B4FCD4(v12, &qword_27D026A40, &qword_222C9F098);
    sub_222C936DC();
    if (v104 && (v34 = sub_222C9385C(), v36 = v35, , v36))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_222B49E84(0, *(v27 + 2) + 1, 1, v27);
      }

      v38 = *(v27 + 2);
      v37 = *(v27 + 3);
      if (v38 >= v37 >> 1)
      {
        v27 = sub_222B49E84((v37 > 1), v38 + 1, 1, v27);
      }

      *(v27 + 2) = v38 + 1;
      v39 = &v27[16 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v36;
      v21 = v99;
    }

    else
    {
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.findEvent(eventId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a4;
  v42 = type metadata accessor for FeaturisedTurn(0);
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v9 - 8);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v35 - v12;
  v35 = v7;
  v38 = (v7 + 48);
  v39 = (v7 + 56);
  v44 = a3;

  v43 = 0;
  while (1)
  {
    v23 = v43;
    v24 = *(v44 + 16);
    if (v43 == v24)
    {
      v25 = 1;
      v27 = v41;
      v26 = v42;
      v28 = v40;
      goto LABEL_15;
    }

    v27 = v41;
    v26 = v42;
    v28 = v40;
    if (v43 >= v24)
    {
      break;
    }

    sub_222B78534(v44 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v43, v40);
    v25 = 0;
    ++v23;
LABEL_15:
    (*v39)(v28, v25, 1, v26);
    sub_222B5EC84(v28, v27);
    if ((*v38)(v27, 1, v26) == 1)
    {

      v34 = v36;
      v36[4] = 0;
      *v34 = 0u;
      *(v34 + 1) = 0u;
      return result;
    }

    v43 = v23;
    v29 = v27;
    v30 = v37;
    sub_222B7E350(v29, v37);
    v31 = *(v30 + *(v26 + 28));

    sub_222B73DD0(v30);

    v32 = v31;
    if (v31)
    {
      v14 = (v31 + 64);
      v15 = -1;
      while (1)
      {
        ++v15;
        v16 = *(v32 + 16);
        if (v15 == v16)
        {
          break;
        }

        if (v15 >= v16)
        {
          __break(1u);
          goto LABEL_22;
        }

        v18 = *(v14 - 4);
        v17 = *(v14 - 3);
        v19 = *(v14 - 2);
        v20 = *(v14 - 1);
        v21 = *v14;
        if (v18 == a1 && v17 == a2)
        {
          v18 = a1;
LABEL_19:

          v33 = v36;
          *v36 = v18;
          v33[1] = v17;
          v33[2] = v19;
          v33[3] = v20;
          v33[4] = v21;
          return result;
        }

        v14 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_222C0AFD4(uint64_t a1)
{
  v1 = sub_222C9377C();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v5 = sub_222C9431C();
    __swift_project_value_buffer(v5, qword_280FE2340);

    v6 = sub_222C942FC();
    v7 = sub_222C94A3C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v45 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_222B437C0(v3, v4, &v45);
      _os_log_impl(&dword_222B39000, v6, v7, "Regular name was: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x223DCA8C0](v9, -1, -1);
      MEMORY[0x223DCA8C0](v8, -1, -1);
    }
  }

  else if (sub_222C9375C())
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CBDA58]) init];
    sub_222C938CC();
    if (v12)
    {
      v13 = sub_222C9448C();
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_222C9448C();
    [v11 setValue:v13 forKeyPath:v14];
    swift_unknownObjectRelease();

    sub_222C9389C();
    if (v15)
    {
      v16 = sub_222C9448C();
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_222C9448C();
    [v11 setValue:v16 forKeyPath:v17];
    swift_unknownObjectRelease();

    sub_222C938BC();
    if (v18)
    {
      v19 = sub_222C9448C();
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_222C9448C();
    [v11 setValue:v19 forKeyPath:v20];
    swift_unknownObjectRelease();

    sub_222C938AC();
    if (v21)
    {
      v22 = sub_222C9448C();
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_222C9448C();
    [v11 setValue:v22 forKeyPath:v23];
    swift_unknownObjectRelease();

    sub_222C938DC();
    if (v24)
    {
      v25 = sub_222C9448C();
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_222C9448C();
    [v11 setValue:v25 forKeyPath:v26];
    swift_unknownObjectRelease();

    sub_222C9388C();
    if (v27)
    {
      v28 = sub_222C9448C();
    }

    else
    {
      v28 = 0;
    }

    v29 = sub_222C9448C();
    [v11 setValue:v28 forKeyPath:v29];
    swift_unknownObjectRelease();

    v30 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
    v31 = [v30 stringFromContact_];
    if (v31)
    {
      v32 = v31;
      v3 = sub_222C9449C();
      v34 = v33;
    }

    else
    {
      v3 = 0;
      v34 = 0;
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v35 = sub_222C9431C();
    __swift_project_value_buffer(v35, qword_280FE2340);

    v36 = sub_222C942FC();
    v37 = sub_222C94A3C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v38 = 136315138;
      if (v34)
      {
        v41 = v3;
      }

      else
      {
        v41 = 7104878;
      }

      v44 = v30;
      v45 = v39;
      if (v34)
      {
        v42 = v34;
      }

      else
      {
        v42 = 0xE300000000000000;
      }

      v43 = sub_222B437C0(v41, v42, &v45);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_222B39000, v36, v37, "Formatted name for USO was: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x223DCA8C0](v40, -1, -1);
      MEMORY[0x223DCA8C0](v38, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t sub_222C0B5A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 28));
}

uint64_t MediaSuggestionStoreCandidateAdapter.__allocating_init(store:requiredTags:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = sub_222B63AF8(MEMORY[0x277D84F90]);
  sub_222B405A0(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t MediaSuggestionStoreCandidateAdapter.init(store:requiredTags:)(__int128 *a1, uint64_t a2)
{
  *(v2 + 64) = sub_222B63AF8(MEMORY[0x277D84F90]);
  sub_222B405A0(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t sub_222C0B69C(uint64_t a1)
{
  v3 = type metadata accessor for PlusMediaSuggestion(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  swift_beginAccess();
  v29 = v1;
  v10 = v1[8];
  if (*(v10 + 16))
  {

    v11 = sub_222B8CC2C(a1);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      return v13;
    }
  }

  v14 = v29[5];
  v15 = v29[6];
  __swift_project_boxed_opaque_existential_1(v29 + 2, v14);
  v16 = *(v15 + 48);
  v28 = a1;
  result = v16(a1, v14, v15);
  v18 = result;
  v32 = *(result + 16);
  if (!v32)
  {
    v13 = MEMORY[0x277D84F90];
    v20 = v29;
LABEL_17:

    swift_beginAccess();
    v26 = v28;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v20[8];
    v20[8] = 0x8000000000000000;
    sub_222BAA6B0(v13, v26, isUniquelyReferenced_nonNull_native);

    v20[8] = v33;
    swift_endAccess();
    return v13;
  }

  v19 = 0;
  v13 = MEMORY[0x277D84F90];
  v20 = v29;
  v30 = v6;
  v31 = v3;
  while (v19 < *(v18 + 16))
  {
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v22 = *(v4 + 72);
    sub_222B79B14(v18 + v21 + v22 * v19, v9);
    if (sub_222BB26C4(*&v9[*(v3 + 44)], v20[7]))
    {
      sub_222B7D960(v9, v6);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v13;
      if ((v23 & 1) == 0)
      {
        sub_222B4C630(0, *(v13 + 16) + 1, 1);
        v20 = v29;
        v13 = v34;
      }

      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_222B4C630((v24 > 1), v25 + 1, 1);
        v20 = v29;
        v13 = v34;
      }

      *(v13 + 16) = v25 + 1;
      v6 = v30;
      result = sub_222B7D960(v30, v13 + v21 + v25 * v22);
      v3 = v31;
    }

    else
    {
      result = sub_222B7D9D0(v9);
    }

    if (v32 == ++v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C0B9B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 64);
  *(v2 + 64) = 0x8000000000000000;
  sub_222BAA6B0(a2, a1, isUniquelyReferenced_nonNull_native);

  *(v2 + 64) = v7;
  return swift_endAccess();
}

uint64_t sub_222C0BA50()
{
  v1 = v0;
  v2 = type metadata accessor for PlusMediaSuggestion(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = v0[8];
  v6 = *(v5 + 64);
  v26 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v25 = (v7 + 63) >> 6;

  v11 = 0;
  v27 = result;
LABEL_5:
  while (v9)
  {
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(*(result + 56) + ((v11 << 9) | (8 * v13)));
    v15 = *(v14 + 16);
    if (v15)
    {
      v28 = v14 + ((*(v29 + 80) + 32) & ~*(v29 + 80));

      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        sub_222B79B14(v28 + *(v29 + 72) * v16, v4);
        v18 = v1[5];
        v17 = v1[6];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v18);
        if (((*(v17 + 24))(v4, v18, v17) & 1) == 0)
        {
          v19 = v1[5];
          v20 = v1[6];
          __swift_project_boxed_opaque_existential_1(v1 + 2, v19);
          if (((*(v20 + 8))(v4, v19, v20) & 1) == 0)
          {
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v21 = sub_222C9431C();
            __swift_project_value_buffer(v21, qword_280FE2340);
            v22 = sub_222C942FC();
            v23 = sub_222C94A4C();
            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              *v24 = 0;
              _os_log_impl(&dword_222B39000, v22, v23, "Failed to write updated candiates to the suggestion store", v24, 2u);
              MEMORY[0x223DCA8C0](v24, -1, -1);
            }
          }
        }

        ++v16;
        result = sub_222B7D9D0(v4);
        if (v15 == v16)
        {

          result = v27;
          goto LABEL_5;
        }
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v25)
    {
    }

    v9 = *(v26 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

void *MediaSuggestionStoreCandidateAdapter.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t MediaSuggestionStoreCandidateAdapter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222C0BDF4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + 64);
  *(v5 + 64) = 0x8000000000000000;
  sub_222BAA6B0(a2, v4, isUniquelyReferenced_nonNull_native);

  *(v5 + 64) = v8;
  return swift_endAccess();
}

unint64_t sub_222C0BE98()
{
  result = qword_27D025AC8;
  if (!qword_27D025AC8)
  {
    type metadata accessor for PlusMediaSuggestion(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025AC8);
  }

  return result;
}

uint64_t sub_222C0BFAC(unint64_t a1)
{
  v149 = *MEMORY[0x277D85DE8];
  v138 = type metadata accessor for PlusMediaSuggestion(0);
  v125 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v119 = v114 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v129 = v114 - v4;
  MEMORY[0x28223BE20](v5);
  v116 = v114 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = v114 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v114 - v11;
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    v13 = sub_222C9431C();
    v14 = __swift_project_value_buffer(v13, qword_280FE2340);

    v114[1] = v14;
    v15 = sub_222C942FC();
    v16 = sub_222C94A3C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *(a1 + 16);

      _os_log_impl(&dword_222B39000, v15, v16, "Reviewing %ld candidates for nomination.", v17, 0xCu);
      MEMORY[0x223DCA8C0](v17, -1, -1);
    }

    else
    {
    }

    v18 = *(v121 + 24);
    v19 = *(a1 + 16);
    v20 = MEMORY[0x277D84F90];
    v133 = a1;
    v136 = v18;
    v122 = v19;
    if (v19)
    {
      v144 = MEMORY[0x277D84F90];
      v21 = v19;
      sub_222B4C7C0(0, v19, 0);
      v20 = v144;
      v22 = a1 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v23 = *(v125 + 72);
      for (i = v21 - 1; ; --i)
      {
        sub_222C12DD0(v22, v12, type metadata accessor for PlusMediaSuggestion);
        v25 = &v12[*(v138 + 24)];
        v26 = *(v25 + 2);
        v141 = *(v25 + 1);
        v142 = v26;
        v143 = *(v25 + 24);
        v140 = *v25;
        sub_222B554C0(&v140, &v147);
        sub_222C12E38(v12, type metadata accessor for PlusMediaSuggestion);
        v144 = v20;
        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_222B4C7C0((v27 > 1), v28 + 1, 1);
          v20 = v144;
        }

        *(v20 + 16) = v28 + 1;
        v29 = v20 + 56 * v28;
        v30 = v140;
        v31 = v141;
        v32 = v142;
        *(v29 + 80) = v143;
        *(v29 + 48) = v31;
        *(v29 + 64) = v32;
        *(v29 + 32) = v30;
        if (!i)
        {
          break;
        }

        v22 += v23;
      }

      a1 = v133;
      v18 = v136;
    }

    v33 = sub_222B71CA4(v20);

    v34 = *(v18 + 16);
    v124 = v9;
    v135 = v34;
    if (v34)
    {
      break;
    }

    v127 = 0;
LABEL_34:
    if (!v122)
    {
      v117 = MEMORY[0x277D84F90];
      goto LABEL_90;
    }

    v67 = 0;
    v68 = (*(v125 + 80) + 32) & ~*(v125 + 80);
    v123 = *(v125 + 72);
    v115 = v68;
    v118 = a1 + v68;
    v135 = v33 + 56;
    v117 = MEMORY[0x277D84F90];
    do
    {
      v128 = v67;
      sub_222C12DD0(v118 + v123 * v67, v9, type metadata accessor for PlusMediaSuggestion);
      if (!*(v33 + 16) || (v69 = v9 + *(v138 + 24), v71 = *v69, v70 = *(v69 + 8), v12 = *(v69 + 16), v134 = *(v69 + 24), v72 = *(v69 + 40), v136 = *(v69 + 32), v73 = *(v69 + 48), sub_222C952FC(), *(&v137 + 1) = v71, *&v137 = v70, sub_222C9452C(), v74 = sub_222C9534C(), v75 = -1 << *(v33 + 32), v76 = v74 & ~v75, ((*(v135 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0))
      {
LABEL_80:
        v9 = v124;
        sub_222C12E38(v124, type metadata accessor for PlusMediaSuggestion);
        goto LABEL_81;
      }

      v77 = ~v75;
      v78 = 0x6C7070612E6D6F63;
      if (v73)
      {
        v78 = 0x656E696665646E75;
      }

      v126 = v78;
      v79 = 0xEF636973754D2E65;
      if (v73)
      {
        v79 = 0xE900000000000064;
      }

      v120 = v79;
      v133 = v12;
      v130 = v77;
      v132 = v73;
      while (1)
      {
        v80 = *(v33 + 48) + 56 * v76;
        v81 = *(v80 + 48);
        v82 = *(v80 + 32);
        v83 = *v80;
        v141 = *(v80 + 16);
        v142 = v82;
        v140 = v83;
        v143 = v81;
        if (__PAIR128__(v83, *(&v83 + 1)) != v137 && (sub_222C951FC() & 1) == 0)
        {
          goto LABEL_46;
        }

        v84 = *(&v141 + 1);
        a1 = v141;
        v85 = v142;
        if (*(&v141 + 1) != 1)
        {
          v86 = v134;
          if (v134 == 1)
          {
            sub_222B554C0(&v140, &v147);
            sub_222B4FDCC(a1, v84, v85, *(&v85 + 1));
            sub_222B4FDCC(v12, 1, v136, v72);
            sub_222B4FDCC(a1, v84, v85, *(&v85 + 1));

LABEL_44:
            sub_222B4FE78(a1, v84, v85, *(&v85 + 1));
            sub_222B4FE78(v12, v86, v136, v72);
LABEL_45:
            sub_222B55A80(&v140);
            v12 = v133;
            goto LABEL_46;
          }

          if (*(&v141 + 1))
          {
            if (v134 && (v141 == __PAIR128__(v134, v12) || (sub_222C951FC() & 1) != 0))
            {
              goto LABEL_57;
            }

LABEL_63:
            v88 = 0;
          }

          else
          {
            if (v134)
            {
              goto LABEL_63;
            }

LABEL_57:
            v88 = (*(&v85 + 1) | v72) == 0;
            if (*(&v85 + 1) && v72)
            {
              if (v85 == __PAIR128__(v72, v136))
              {
                v88 = 1;
              }

              else
              {
                v88 = sub_222C951FC();
              }
            }
          }

          v131 = v88;
          sub_222B554C0(&v140, &v147);
          sub_222B4FDCC(a1, v84, v85, *(&v85 + 1));
          v12 = v72;
          v89 = v136;
          v90 = v133;
          v91 = v134;
          sub_222B4FDCC(v133, v134, v136, v12);
          sub_222B4FDCC(a1, v84, v85, *(&v85 + 1));
          v92 = v89;
          v72 = v12;
          sub_222B4FE78(v90, v91, v92, v12);

          sub_222B4FE78(a1, v84, v85, *(&v85 + 1));
          v87 = v132;
          v77 = v130;
          if ((v131 & 1) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_65;
        }

        v86 = v134;
        if (v134 != 1)
        {
          sub_222B554C0(&v140, &v147);
          sub_222B4FDCC(a1, 1, v85, *(&v85 + 1));
          sub_222B4FDCC(v12, v86, v136, v72);
          goto LABEL_44;
        }

        sub_222B554C0(&v140, &v147);
        sub_222B4FDCC(a1, 1, v85, *(&v85 + 1));
        sub_222B4FDCC(v12, 1, v136, v72);
        sub_222B4FE78(a1, 1, v85, *(&v85 + 1));
        v87 = v132;
LABEL_65:
        if (v143 == 2)
        {
          sub_222B55A80(&v140);
          v12 = v133;
          if (v87 == 2)
          {
            goto LABEL_84;
          }

          goto LABEL_46;
        }

        if (v87 == 2)
        {
          goto LABEL_45;
        }

        v93 = (v143 & 1) != 0 ? 0x656E696665646E75 : 0x6C7070612E6D6F63;
        v94 = (v143 & 1) != 0 ? 0xE900000000000064 : 0xEF636973754D2E65;
        if (v93 == v126 && v94 == v120)
        {
          break;
        }

        v95 = sub_222C951FC();

        sub_222B55A80(&v140);
        v12 = v133;
        v77 = v130;
        if (v95)
        {
          goto LABEL_84;
        }

LABEL_46:
        v76 = (v76 + 1) & v77;
        if (((*(v135 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      sub_222B55A80(&v140);
LABEL_84:
      v9 = v124;
      sub_222C12F00(v124, v116, type metadata accessor for PlusMediaSuggestion);
      v96 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v144 = v96;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222B4C630(0, *(v96 + 16) + 1, 1);
        v96 = v144;
      }

      v99 = *(v96 + 16);
      v98 = *(v96 + 24);
      if (v99 >= v98 >> 1)
      {
        sub_222B4C630((v98 > 1), v99 + 1, 1);
        v96 = v144;
      }

      *(v96 + 16) = v99 + 1;
      v117 = v96;
      sub_222C12F00(v116, v96 + v115 + v99 * v123, type metadata accessor for PlusMediaSuggestion);
LABEL_81:
      v67 = v128 + 1;
    }

    while (v128 + 1 != v122);
LABEL_90:

    v9 = v117;
    v100 = *(v117 + 16);
    if (!v100)
    {
      v102 = MEMORY[0x277D84F90];
LABEL_103:

      v109 = sub_222C942FC();
      v110 = sub_222C94A3C();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 134217984;
        *(v111 + 4) = *(v102 + 16);

        _os_log_impl(&dword_222B39000, v109, v110, "%ld candidates marked as nominated", v111, 0xCu);
        MEMORY[0x223DCA8C0](v111, -1, -1);
      }

      else
      {
      }

      return v102;
    }

    v101 = 0;
    v102 = MEMORY[0x277D84F90];
    v103 = v127;
    while (v101 < *(v9 + 16))
    {
      v57 = ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v104 = *(v125 + 72);
      v105 = v129;
      sub_222C12DD0(v57 + v9 + v104 * v101, v129, type metadata accessor for PlusMediaSuggestion);
      v106 = sub_222C0DD40(v105, v121);
      if (v103)
      {

        sub_222C12E38(v129, type metadata accessor for PlusMediaSuggestion);

        __break(1u);
        goto LABEL_112;
      }

      if (v106)
      {
        sub_222C12F00(v129, v119, type metadata accessor for PlusMediaSuggestion);
        v107 = swift_isUniquelyReferenced_nonNull_native();
        *&v140 = v102;
        if ((v107 & 1) == 0)
        {
          sub_222B4C630(0, *(v102 + 16) + 1, 1);
          v102 = v140;
        }

        a1 = *(v102 + 16);
        v108 = *(v102 + 24);
        v12 = (a1 + 1);
        if (a1 >= v108 >> 1)
        {
          sub_222B4C630((v108 > 1), a1 + 1, 1);
          v102 = v140;
        }

        *(v102 + 16) = v12;
        sub_222C12F00(v119, v57 + v102 + a1 * v104, type metadata accessor for PlusMediaSuggestion);
      }

      else
      {
        sub_222C12E38(v129, type metadata accessor for PlusMediaSuggestion);
      }

      if (v100 == ++v101)
      {
        goto LABEL_103;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    swift_once();
  }

  v35 = 0;
  v127 = 0;
  v134 = v18 + 32;
  while (1)
  {
    if (v35 >= *(v18 + 16))
    {
      goto LABEL_109;
    }

    *(&v137 + 1) = v35;
    sub_222B43E3C(v134 + 40 * v35, &v144);
    v36 = v145;
    v37 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    v38 = (*(v37 + 24))(a1, v36, v37);
    v39 = *(v38 + 16);
    if (v39)
    {
      *&v137 = v33;
      v139 = MEMORY[0x277D84F90];
      sub_222B4C7C0(0, v39, 0);
      if (!*(v38 + 16))
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v40 = 0;
      v41 = v139;
      v42 = v38 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v9 = *(v125 + 72);
      a1 = v39 - 1;
      while (1)
      {
        sub_222C12DD0(v42, v12, type metadata accessor for PlusMediaSuggestion);
        v43 = &v12[*(v138 + 24)];
        v44 = *(v43 + 2);
        v141 = *(v43 + 1);
        v142 = v44;
        v143 = *(v43 + 24);
        v140 = *v43;
        sub_222B554C0(&v140, &v147);
        sub_222C12E38(v12, type metadata accessor for PlusMediaSuggestion);
        v139 = v41;
        v46 = *(v41 + 16);
        v45 = *(v41 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_222B4C7C0((v45 > 1), v46 + 1, 1);
          v41 = v139;
        }

        *(v41 + 16) = v46 + 1;
        v47 = v41 + 56 * v46;
        v48 = v140;
        v49 = v141;
        v50 = v142;
        *(v47 + 80) = v143;
        *(v47 + 48) = v49;
        *(v47 + 64) = v50;
        *(v47 + 32) = v48;
        if (a1 == v40)
        {
          break;
        }

        ++v40;
        v42 += v9;
        if (v40 >= *(v38 + 16))
        {
          goto LABEL_107;
        }
      }

      v9 = v124;
      v33 = v137;
      a1 = v133;
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
    }

    v147 = v41;
    MEMORY[0x28223BE20](v51);
    v114[-2] = &v147;
    v114[-1] = v33;
    v54 = v53 + 63;
    v55 = v54 >> 6;
    if (v56 <= 0xD)
    {
      break;
    }

    v64 = 8 * (v54 >> 6);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    v57 = swift_slowAlloc();
    bzero(v57, v64);
    v65 = v127;
    sub_222C12E98(v57, v55, &v140);
    v66 = &v148;
    v127 = v65;
    if (v65)
    {
      goto LABEL_113;
    }

    v63 = v140;

    MEMORY[0x223DCA8C0](v57, -1, -1);

LABEL_28:
    v33 = v63;
    v18 = v136;
    v35 = *(&v137 + 1) + 1;
    __swift_destroy_boxed_opaque_existential_0Tm(&v144);
    if (v35 == v135)
    {
      goto LABEL_34;
    }
  }

  v57 = v114;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  v59 = v114 - ((v58 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v59, v58);
  v60 = v127;
  v61 = sub_222C0F9C8(v59, v55, v41, v33);
  v62 = &v148;
  v127 = v60;
  if (!v60)
  {
    v63 = v61;

    goto LABEL_28;
  }

LABEL_112:
  v113 = *(v62 - 32);
  swift_willThrow();

  __break(1u);
LABEL_113:

  result = MEMORY[0x223DCA8C0](v57, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_222C0D10C(uint64_t a1)
{
  v126 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for PlusContactSuggestion(0);
  v119 = *(v2 - 8);
  v120 = v2;
  MEMORY[0x28223BE20](v2);
  v108 = v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v113 = v102 - v5;
  MEMORY[0x28223BE20](v6);
  v103 = v102 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v102 - v9;
  MEMORY[0x28223BE20](v11);
  v118 = v102 - v12;
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_78;
  }

LABEL_2:
  v13 = sub_222C9431C();
  v14 = __swift_project_value_buffer(v13, qword_280FE2340);

  v102[1] = v14;
  v15 = sub_222C942FC();
  v16 = sub_222C94A3C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = *(a1 + 16);

    _os_log_impl(&dword_222B39000, v15, v16, "Reviewing %ld candidates for nomination.", v17, 0xCu);
    MEMORY[0x223DCA8C0](v17, -1, -1);
  }

  else
  {
  }

  v18 = *(v109 + 24);
  v19 = *(a1 + 16);
  v20 = MEMORY[0x277D84F90];
  v111 = v10;
  v107 = a1;
  v106 = v18;
  v110 = v19;
  if (v19)
  {
    v123[0] = MEMORY[0x277D84F90];
    v21 = v19;
    sub_222B4CAD0(0, v19, 0);
    v20 = v123[0];
    v22 = a1 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    v117 = *(v119 + 72);
    do
    {
      v23 = v118;
      sub_222C12DD0(v22, v118, type metadata accessor for PlusContactSuggestion);
      v24 = (v23 + *(v120 + 24));
      v26 = *v24;
      v25 = v24[1];
      v28 = v24[2];
      v27 = v24[3];

      sub_222C12E38(v23, type metadata accessor for PlusContactSuggestion);
      v123[0] = v20;
      v30 = *(v20 + 16);
      v29 = *(v20 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_222B4CAD0((v29 > 1), v30 + 1, 1);
        v20 = v123[0];
      }

      *(v20 + 16) = v30 + 1;
      v31 = (v20 + 32 * v30);
      v31[4] = v26;
      v31[5] = v25;
      v31[6] = v28;
      v31[7] = v27;
      v22 += v117;
      --v21;
    }

    while (v21);
    v10 = v111;
    v18 = v106;
  }

  v32 = sub_222B72C64(v20);

  v105 = *(v18 + 16);
  if (!v105)
  {
    v115 = 0;
    a1 = v107;
    v33 = v32;
    goto LABEL_31;
  }

  v115 = 0;
  v104 = v18 + 32;
  a1 = v107;
  v33 = v32;
  v34 = 0;
  do
  {
    if (v34 >= *(v18 + 16))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      swift_once();
      goto LABEL_2;
    }

    v114 = v33;
    v112 = v34;
    sub_222B43E3C(v104 + 40 * v34, v123);
    v35 = v124;
    v36 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v37 = (*(v36 + 24))(a1, v35, v36);
    a1 = *(v37 + 16);
    if (!a1)
    {

      v40 = MEMORY[0x277D84F90];
      goto LABEL_22;
    }

    v122 = MEMORY[0x277D84F90];
    v38 = v37;
    sub_222B4CAD0(0, a1, 0);
    v39 = v38;
    v10 = 0;
    v40 = v122;
    v116 = v39 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    v117 = v39;
    do
    {
      if (v10 >= *(v39 + 16))
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v41 = v118;
      sub_222C12DD0(v116 + *(v119 + 72) * v10, v118, type metadata accessor for PlusContactSuggestion);
      v42 = (v41 + *(v120 + 24));
      v43 = *v42;
      v44 = v42[1];
      v45 = v42[2];
      v46 = v42[3];

      sub_222C12E38(v41, type metadata accessor for PlusContactSuggestion);
      v122 = v40;
      v48 = *(v40 + 16);
      v47 = *(v40 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_222B4CAD0((v47 > 1), v48 + 1, 1);
        v40 = v122;
      }

      ++v10;
      *(v40 + 16) = v48 + 1;
      v49 = (v40 + 32 * v48);
      v49[4] = v43;
      v49[5] = v44;
      v49[6] = v45;
      v49[7] = v46;
      v39 = v117;
    }

    while (a1 != v10);

    v10 = v111;
LABEL_22:
    v121 = v40;
    v51 = v114;
    MEMORY[0x28223BE20](v50);
    v102[-2] = &v121;
    v102[-1] = v51;
    v54 = v53 + 63;
    v55 = v54 >> 6;
    if (v56 <= 0xD || (v63 = 8 * (v54 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      MEMORY[0x28223BE20](isStackAllocationSafe);
      v58 = v102 - ((v57 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v58, v57);
      v59 = v55;
      v60 = v115;
      v61 = sub_222C1020C(v58, v59, v40, v51);
      v115 = v60;
      if (!v60)
      {
        v62 = v61;

        goto LABEL_25;
      }

LABEL_80:
      v101 = v115;
      swift_willThrow();

      __break(1u);
LABEL_81:

      result = MEMORY[0x223DCA8C0](v51, -1, -1);
      __break(1u);
      return result;
    }

    v51 = swift_slowAlloc();
    bzero(v51, v63);
    v64 = v55;
    v65 = v115;
    sub_222C12DA4(v51, v64, &v122);
    v115 = v65;
    if (v65)
    {
      goto LABEL_81;
    }

    v62 = v122;

    MEMORY[0x223DCA8C0](v51, -1, -1);

LABEL_25:
    v33 = v62;
    a1 = v107;
    v34 = v112 + 1;
    __swift_destroy_boxed_opaque_existential_0Tm(v123);
    v18 = v106;
  }

  while (v34 != v105);
LABEL_31:
  if (v110)
  {
    v66 = a1;
    v67 = 0;
    v68 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v116 = *(v119 + 72);
    v107 = v68;
    v112 = v66 + v68;
    v118 = v33 + 56;
    v69 = MEMORY[0x277D84F90];
    v114 = v33;
    while (1)
    {
      v117 = v69;
      sub_222C12DD0(v112 + v116 * v67, v10, type metadata accessor for PlusContactSuggestion);
      if (!*(v33 + 16) || (v70 = (v10 + *(v120 + 24)), v71 = *v70, v72 = v70[1], v73 = v70[2], v74 = v70[3], sub_222C952FC(), sub_222C9452C(), v75 = sub_222C9534C(), v76 = -1 << *(v33 + 32), v77 = v75 & ~v76, ((*(v118 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0))
      {
LABEL_33:
        v10 = v111;
        sub_222C12E38(v111, type metadata accessor for PlusContactSuggestion);
        v69 = v117;
        goto LABEL_34;
      }

      v78 = v33;
      v79 = ~v76;
      v80 = *(v78 + 48);
      while (1)
      {
        v81 = (v80 + 32 * v77);
        v82 = v81[2];
        v83 = v81[3];
        v84 = *v81 == v71 && v81[1] == v72;
        if (!v84 && (sub_222C951FC() & 1) == 0)
        {
          goto LABEL_39;
        }

        if (v83)
        {
          break;
        }

        if (!v74)
        {
          goto LABEL_52;
        }

LABEL_39:
        v77 = (v77 + 1) & v79;
        if (((*(v118 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      if (!v74)
      {
        goto LABEL_39;
      }

      v85 = v82 == v73 && v83 == v74;
      if (!v85 && (sub_222C951FC() & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_52:
      v10 = v111;
      sub_222C12F00(v111, v103, type metadata accessor for PlusContactSuggestion);
      v69 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v69;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222B4C6E8(0, *(v69 + 16) + 1, 1);
        v69 = v122;
      }

      v88 = *(v69 + 16);
      v87 = *(v69 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_222B4C6E8((v87 > 1), v88 + 1, 1);
        v69 = v122;
      }

      *(v69 + 16) = v88 + 1;
      sub_222C12F00(v103, v69 + v107 + v88 * v116, type metadata accessor for PlusContactSuggestion);
LABEL_34:
      ++v67;
      v33 = v114;
      if (v67 == v110)
      {
        goto LABEL_58;
      }
    }
  }

  v69 = MEMORY[0x277D84F90];
LABEL_58:

  a1 = *(v69 + 16);
  if (a1)
  {
    v51 = 0;
    v89 = MEMORY[0x277D84F90];
    while (v51 < *(v69 + 16))
    {
      v90 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v10 = *(v119 + 72);
      v91 = v113;
      sub_222C12DD0(v69 + v90 + v10 * v51, v113, type metadata accessor for PlusContactSuggestion);
      v92 = v115;
      v93 = sub_222C0DD40(v91, v109);
      if (v92)
      {

        sub_222C12E38(v113, type metadata accessor for PlusContactSuggestion);

        __break(1u);
        goto LABEL_80;
      }

      v115 = 0;
      if (v93)
      {
        sub_222C12F00(v113, v108, type metadata accessor for PlusContactSuggestion);
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v123[0] = v89;
        if ((v94 & 1) == 0)
        {
          sub_222B4C6E8(0, *(v89 + 16) + 1, 1);
          v89 = v123[0];
        }

        v96 = *(v89 + 16);
        v95 = *(v89 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_222B4C6E8((v95 > 1), v96 + 1, 1);
          v89 = v123[0];
        }

        *(v89 + 16) = v96 + 1;
        sub_222C12F00(v108, v89 + v90 + v96 * v10, type metadata accessor for PlusContactSuggestion);
      }

      else
      {
        sub_222C12E38(v113, type metadata accessor for PlusContactSuggestion);
      }

      if (a1 == ++v51)
      {
        goto LABEL_71;
      }
    }

    goto LABEL_76;
  }

  v89 = MEMORY[0x277D84F90];
LABEL_71:

  v97 = sub_222C942FC();
  v98 = sub_222C94A3C();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 134217984;
    *(v99 + 4) = *(v89 + 16);

    _os_log_impl(&dword_222B39000, v97, v98, "%ld candidates marked as nominated", v99, 0xCu);
    MEMORY[0x223DCA8C0](v99, -1, -1);
  }

  else
  {
  }

  return v89;
}

uint64_t sub_222C0DD40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = v3 + 32;
  v5 = -*(v3 + 16);
  v6 = -1;
  while (1)
  {
    v7 = v5 + v6;
    if (v5 + v6 == -1)
    {
      return v7 == -1;
    }

    if (++v6 >= *(v3 + 16))
    {
      break;
    }

    v8 = result + 40;
    sub_222B43E3C(result, v12);
    v9 = v13;
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v11 = (*(v10 + 24))(a1, v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    result = v8;
    if (v11)
    {
      return v7 == -1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C0DE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_222C0DE80(a1, a2, a3, a4);
  return v8;
}

void *sub_222C0DE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AdaptiveContactSuggestionNominator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026DA0, &unk_222CA0980);
  v9 = sub_222C944EC();
  MEMORY[0x223DC9330](v9);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  v4[2] = 91;
  v4[3] = 0xE100000000000000;
  v4[8] = a3;
  v4[9] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 5);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v4[4] = a2;
  return v4;
}

uint64_t AdaptiveContactSuggestionNominator.__allocating_init<A>(candidateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  v10 = sub_222BBA148();
  v11 = swift_allocObject();
  sub_222C0DE80(v9, v10, a2, a3);
  (*(v6 + 8))(a1, a2);
  return v11;
}

void *sub_222C0E090(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_retain_n();
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223DC9B30](v3, a1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v2 = sub_222C94C6C();
          goto LABEL_3;
        }

        v5 = *(a1 + 8 * v3 + 32);

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_25;
        }
      }

      v7 = sub_222C0E2AC(v5);

      v8 = *(v7 + 2);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (!*(v7 + 2))
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_222B4ACA4(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (!*(v7 + 2))
        {
LABEL_5:

          if (v8)
          {
            goto LABEL_30;
          }

          goto LABEL_6;
        }
      }

      v13 = (v4[3] >> 1) - v4[2];
      type metadata accessor for PlusContactSuggestion(0);
      if (v13 < v8)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v8)
      {
        v14 = v4[2];
        v15 = __OFADD__(v14, v8);
        v16 = v14 + v8;
        if (v15)
        {
          goto LABEL_32;
        }

        v4[2] = v16;
      }

LABEL_6:
      ++v3;
      if (v6 == v2)
      {
        goto LABEL_27;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_27:

  return v4;
}

char *sub_222C0E2AC(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v55 - v6;
  v8 = type metadata accessor for PlusContactSuggestion(0);
  v65 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v56 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v55 - v11;
  MEMORY[0x28223BE20](v12);
  v61 = &v55 - v13;
  MEMORY[0x28223BE20](v14);
  v57 = &v55 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = v1[8];
  v20 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v19);
  v67[0] = a1;
  v63 = (*(v20 + 24))(v67, v19, v20);
  v62 = sub_222C0D10C(v63);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v21 = sub_222C9431C();
    __swift_project_value_buffer(v21, qword_280FE2340);

    v22 = sub_222C942FC();
    v23 = sub_222C94A3C();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v2;
    v58 = v8;
    v59 = v2;
    if (v24)
    {
      v2 = v23;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v67[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_222B437C0(v25[2], v25[3], v67);
      *(v26 + 12) = 2080;
      v29 = UsoEntity_common_Person.convertUSOPersonToString()();
      countAndFlagsBits = v29.value._countAndFlagsBits;
      if (v29.value._object)
      {
        object = v29.value._object;
      }

      else
      {
        countAndFlagsBits = 0x3E726F7272453CLL;
        object = 0xE700000000000000;
      }

      v31 = sub_222B437C0(countAndFlagsBits, object, v67);
      v25 = v59;

      *(v26 + 14) = v31;
      _os_log_impl(&dword_222B39000, v22, v2, "%s Updating nomination status for candidates with query=%s:", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v27, -1, -1);
      v32 = v26;
      v8 = v58;
      MEMORY[0x223DCA8C0](v32, -1, -1);
    }

    v55 = a1;
    v33 = v63;
    v60 = *(v63 + 16);
    if (v60)
    {
      v34 = 0;
      v35 = (v65 + 48);
      v66 = MEMORY[0x277D84F90];
      while (v34 < *(v33 + 16))
      {
        a1 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v2 = *(v65 + 72);
        sub_222C12DD0(v33 + a1 + v2 * v34, v18, type metadata accessor for PlusContactSuggestion);
        sub_222C0EBB8(v18, v62, v25, v7);
        sub_222C12E38(v18, type metadata accessor for PlusContactSuggestion);
        if ((*v35)(v7, 1, v8) == 1)
        {
          sub_222B4FCD4(v7, &qword_27D025A88, &unk_222C9A0C0);
        }

        else
        {
          v36 = v18;
          v37 = v4;
          v38 = v57;
          sub_222C12F00(v7, v57, type metadata accessor for PlusContactSuggestion);
          sub_222C12F00(v38, v61, type metadata accessor for PlusContactSuggestion);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_222B4ACA4(0, v66[2] + 1, 1, v66);
          }

          v40 = v66[2];
          v39 = v66[3];
          if (v40 >= v39 >> 1)
          {
            v66 = sub_222B4ACA4((v39 > 1), v40 + 1, 1, v66);
          }

          v41 = v66;
          v66[2] = v40 + 1;
          sub_222C12F00(v61, v41 + a1 + v40 * v2, type metadata accessor for PlusContactSuggestion);
          v4 = v37;
          v18 = v36;
          v8 = v58;
          v25 = v59;
        }

        ++v34;
        v33 = v63;
        if (v60 == v34)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v66 = MEMORY[0x277D84F90];
LABEL_19:
    v60 = 0;

    v42 = v25[8];
    v4 = v25[9];
    __swift_project_boxed_opaque_existential_1(v25 + 5, v42);
    v67[0] = v55;
    v43 = v66;
    (*(v4 + 32))(v67, v66, v42, v4);
    v63 = v43[2];
    if (!v63)
    {
      break;
    }

    v18 = 0;
    v61 = MEMORY[0x277D84F90];
    while (v18 < v43[2])
    {
      v44 = v64;
      v7 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v2 = *(v65 + 72);
      sub_222C12DD0(v43 + v7 + v2 * v18, v64, type metadata accessor for PlusContactSuggestion);
      v45 = v8;
      a1 = *(v44 + *(v8 + 36));
      if (*(a1 + 16) && (sub_222C952FC(), sub_222C9452C(), v46 = sub_222C9534C(), v4 = a1 + 56, v47 = -1 << *(a1 + 32), v48 = v46 & ~v47, ((*(a1 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0))
      {
        v62 = v7;
        v49 = ~v47;
        while (1)
        {
          v50 = *(*(a1 + 48) + v48);
          if (v50 > 2 && v50 != 4)
          {
            break;
          }

          v7 = sub_222C951FC();

          if (v7)
          {
            goto LABEL_33;
          }

          v48 = (v48 + 1) & v49;
          if (((*(v4 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

LABEL_33:
        sub_222C12F00(v64, v56, type metadata accessor for PlusContactSuggestion);
        v51 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C6E8(0, *(v51 + 16) + 1, 1);
          v51 = v68;
        }

        v8 = v45;
        v43 = v66;
        v4 = v62;
        a1 = *(v51 + 16);
        v53 = *(v51 + 24);
        v7 = a1 + 1;
        if (a1 >= v53 >> 1)
        {
          sub_222B4C6E8((v53 > 1), a1 + 1, 1);
          v51 = v68;
        }

        *(v51 + 16) = v7;
        v61 = v51;
        sub_222C12F00(v56, v51 + v4 + a1 * v2, type metadata accessor for PlusContactSuggestion);
      }

      else
      {
LABEL_21:
        sub_222C12E38(v64, type metadata accessor for PlusContactSuggestion);
        v8 = v45;
        v43 = v66;
      }

      if (++v18 == v63)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v61 = MEMORY[0x277D84F90];
LABEL_39:

  return v61;
}

uint64_t sub_222C0EBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v42 - v8;
  v50 = type metadata accessor for PlusContactSuggestion(0);
  v9 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = 0;
  v18 = *(a2 + 16);
  do
  {
    v19 = v17;
    if (v18 == v17)
    {
      break;
    }

    ++v17;
  }

  while ((_s28SiriPrivateLearningInference21PlusContactSuggestionV2eeoiySbAC_ACtFZ_0(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, a1) & 1) == 0);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v20 = sub_222C9431C();
  __swift_project_value_buffer(v20, qword_280FE2340);
  v49 = v16;
  sub_222C12DD0(a1, v16, type metadata accessor for PlusContactSuggestion);
  sub_222C12DD0(a1, v13, type metadata accessor for PlusContactSuggestion);
  v21 = v52;
  sub_222C12DD0(a1, v52, type metadata accessor for PlusContactSuggestion);

  v22 = sub_222C942FC();
  v23 = sub_222C94A3C();

  if (os_log_type_enabled(v22, v23))
  {
    v47 = v18 != v19;
    v24 = swift_slowAlloc();
    v46 = v13;
    v25 = v24;
    v48 = swift_slowAlloc();
    v58 = v48;
    *v25 = 136316162;
    *(v25 + 4) = sub_222B437C0(*(a3 + 16), *(a3 + 24), &v58);
    *(v25 + 12) = 2080;
    v45 = v23;
    v26 = v49;
    v27 = v50;
    v28 = &v49[*(v50 + 24)];
    v29 = *(v28 + 1);
    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    v54 = *v28;
    v55 = v29;
    v56 = v31;
    v57 = v30;

    v44 = v22;
    v43 = ContactReference.description.getter();
    v33 = v32;

    sub_222C12E38(v26, type metadata accessor for PlusContactSuggestion);
    v34 = sub_222B437C0(v43, v33, &v58);

    *(v25 + 14) = v34;
    *(v25 + 22) = 2048;
    v35 = *&v46[*(v27 + 40)];
    sub_222C12E38(v46, type metadata accessor for PlusContactSuggestion);
    *(v25 + 24) = v35;
    *(v25 + 32) = 1024;
    v36 = v52;
    LODWORD(v34) = PlusContactSuggestion.isNominated.getter() & 1;
    sub_222C12E38(v36, type metadata accessor for PlusContactSuggestion);
    *(v25 + 34) = v34;
    *(v25 + 38) = 1024;
    *(v25 + 40) = v47;
    v37 = v44;
    _os_log_impl(&dword_222B39000, v44, v45, "%s    Candidate %s, Score: %f, Nominated: %{BOOL}d -> %{BOOL}d", v25, 0x2Cu);
    v38 = v48;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v38, -1, -1);
    MEMORY[0x223DCA8C0](v25, -1, -1);
  }

  else
  {
    sub_222C12E38(v21, type metadata accessor for PlusContactSuggestion);

    sub_222C12E38(v13, type metadata accessor for PlusContactSuggestion);
    sub_222C12E38(v49, type metadata accessor for PlusContactSuggestion);
    v27 = v50;
  }

  v39 = v51;
  sub_222C0F0FC(v18 != v19, a1, v51);
  v40 = *(v9 + 48);
  if (v40(v39, 1, v27) == 1)
  {
    sub_222C12DD0(a1, v53, type metadata accessor for PlusContactSuggestion);
    if (v40(v39, 1, v27) != 1)
    {
      sub_222B4FCD4(v39, &qword_27D025A88, &unk_222C9A0C0);
    }
  }

  else
  {
    sub_222C12F00(v39, v53, type metadata accessor for PlusContactSuggestion);
  }

  return (*(v9 + 56))(v53, 0, 1, v27);
}

uint64_t sub_222C0F0FC@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v89 = a3;
  v5 = sub_222C9367C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v78 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v78 - v16;
  MEMORY[0x28223BE20](v18);
  v82 = &v78 - v19;
  MEMORY[0x28223BE20](v20);
  v86 = &v78 - v21;
  v22 = type metadata accessor for PlusContactSuggestion(0);
  v87 = v11;
  v88 = v22;
  v23 = *(v22 + 36);
  v85 = a2;
  v24 = *(a2 + v23);
  if (*(v24 + 16))
  {
    v81 = v14;
    v83 = v6;
    sub_222C952FC();
    sub_222C9452C();
    v25 = sub_222C9534C();
    v26 = -1 << *(v24 + 32);
    v27 = v25 & ~v26;
    if ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
    {
      v79 = v17;
      v80 = v8;
      v84 = v5;
      v28 = ~v26;
      v29 = a1;
      while (1)
      {
        v30 = *(*(v24 + 48) + v27);
        if (v30 > 2 && v30 != 4)
        {
          break;
        }

        v31 = sub_222C951FC();

        v29 = a1;
        if (v31)
        {
          goto LABEL_20;
        }

        v27 = (v27 + 1) & v28;
        if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          v6 = v83;
          v5 = v84;
          v11 = v87;
          if (a1)
          {
            goto LABEL_13;
          }

          goto LABEL_21;
        }
      }

LABEL_20:
      v55 = v83;
      v54 = v84;
      if (v29)
      {
        goto LABEL_21;
      }

      v59 = v79;
      (*(v83 + 56))(v79, 1, 1, v84);

      v87 = sub_222C11B7C(&unk_2836081C0, v24);
      v60 = v59;
      v61 = v81;
      sub_222B5551C(v60, v81);
      v62 = *(v55 + 48);
      if (v62(v61, 1, v54) == 1)
      {
        v63 = v55;
        v64 = v61;
        v65 = *(v63 + 16);
        v65(v80, v85, v54);
        if (v62(v64, 1, v54) != 1)
        {
          sub_222B4FCD4(v64, &unk_27D026290, &qword_222C96B40);
        }

        v67 = v83;
        v66 = v84;
      }

      else
      {
        (*(v55 + 32))(v80, v61, v54);
        v65 = *(v55 + 16);
        v66 = v54;
        v67 = v55;
      }

      v40 = v88;
      v41 = v89;
      v68 = *(v85 + v88[5]);
      v69 = (v85 + v88[6]);
      v71 = *v69;
      v70 = v69[1];
      v72 = *(v85 + v88[7]);
      v73 = *(v85 + v88[8]);
      v74 = *(v85 + v88[10]);
      v75 = *(v85 + v88[11]);
      v65(v89, v80, v66);
      *&v41[v40[5]] = v68;
      v76 = &v41[v40[6]];
      *v76 = v71;
      *(v76 + 1) = v70;
      *(v76 + 2) = 0;
      *(v76 + 3) = 0;
      swift_retain_n();

      sub_222C17488(50, v72);
      *&v41[v40[7]] = v77;
      *&v41[v40[8]] = v73;
      *&v41[v40[9]] = v87;
      *&v41[v40[10]] = v74;
      v52 = sub_222C17748(0x32uLL, v75);

      (*(v67 + 8))(v80, v84);
      v53 = v79;
      goto LABEL_30;
    }

    v6 = v83;
    v11 = v87;
    if (a1)
    {
LABEL_13:
      v32 = v86;
      (*(v6 + 56))(v86, 1, 1, v5);

      v81 = sub_222C701CC(&unk_283608198, v24);
      v33 = v32;
      v34 = v82;
      sub_222B5551C(v33, v82);
      v35 = *(v6 + 48);
      if (v35(v34, 1, v5) == 1)
      {
        v83 = v6;
        v36 = *(v6 + 16);
        v36(v11, v85, v5);
        if (v35(v34, 1, v5) != 1)
        {
          sub_222B4FCD4(v34, &unk_27D026290, &qword_222C96B40);
        }

        v37 = v5;
        v38 = v83;
        v39 = v11;
      }

      else
      {
        (*(v6 + 32))(v11, v34, v5);
        v36 = *(v6 + 16);
        v37 = v5;
        v38 = v6;
        v39 = v11;
      }

      v40 = v88;
      v41 = v89;
      v42 = *(v85 + v88[5]);
      v43 = (v85 + v88[6]);
      v45 = *v43;
      v44 = v43[1];
      v46 = *(v85 + v88[7]);
      v47 = *(v85 + v88[8]);
      v48 = *(v85 + v88[10]);
      v49 = *(v85 + v88[11]);
      v84 = v37;
      v36(v89, v39, v37);
      *&v41[v40[5]] = v42;
      v50 = &v41[v40[6]];
      *v50 = v45;
      *(v50 + 1) = v44;
      *(v50 + 2) = 0;
      *(v50 + 3) = 0;
      swift_retain_n();

      sub_222C17488(50, v46);
      *&v41[v40[7]] = v51;
      *&v41[v40[8]] = v47;
      *&v41[v40[9]] = v81;
      *&v41[v40[10]] = v48;
      v52 = sub_222C17748(0x32uLL, v49);

      (*(v38 + 8))(v87, v84);
      v53 = v86;
LABEL_30:
      sub_222B4FCD4(v53, &unk_27D026290, &qword_222C96B40);
      *&v41[v40[11]] = v52;
      return (*(*(v40 - 1) + 56))(v41, 0, 1, v40);
    }
  }

  else if (a1)
  {
    goto LABEL_13;
  }

LABEL_21:
  v56 = v89;
  v57 = *(*(v88 - 1) + 56);

  return v57(v56, 1, 1);
}

void *AdaptiveContactSuggestionNominator.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  return v0;
}

uint64_t AdaptiveContactSuggestionNominator.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t *sub_222C0F9C8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v53 = result;
  v5 = *(a3 + 16);
  if (!v5)
  {
LABEL_70:
    v52 = 0;
LABEL_71:

    return sub_222C10C50(v53, a2, v52, v4);
  }

  v6 = 0;
  v52 = 0;
  v55 = *(a3 + 16);
  v56 = a3 + 32;
  v66 = a4 + 56;
LABEL_5:
  if (v6 < v5)
  {
    v7 = (v56 + 56 * v6);
    v8 = v7[1];
    v72 = *v7;
    v73 = v8;
    v74 = v7[2];
    v75 = *(v7 + 24);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_73;
    }

    v10 = *(&v72 + 1);
    v11 = v72;
    sub_222C952FC();
    sub_222B554C0(&v72, v67);
    v76 = v10;
    sub_222C9452C();
    v12 = sub_222C9534C();
    v13 = -1 << *(v4 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v66 + 8 * (v14 >> 6))) == 0)
    {
      result = sub_222B55A80(&v72);
      goto LABEL_4;
    }

    v57 = v6;
    v65 = ~v13;
    v17 = *(&v73 + 1);
    *(&v63 + 1) = v74;
    v64 = v73;
    *&v63 = *(&v74 + 1);
    v60 = v75;
    if (v75)
    {
      v18 = 0x656E696665646E75;
    }

    else
    {
      v18 = 0x6C7070612E6D6F63;
    }

    v19 = 0xEF636973754D2E65;
    if (v75)
    {
      v19 = 0xE900000000000064;
    }

    v58 = v19;
    v59 = v18;
    v62 = v11;
    while (1)
    {
      v20 = *(v4 + 48) + 56 * v14;
      v22 = *(v20 + 16);
      v21 = *(v20 + 32);
      v23 = *v20;
      v71 = *(v20 + 48);
      v69 = v22;
      v70 = v21;
      v68 = v23;
      if (v23 != __PAIR128__(v76, v11) && (sub_222C951FC() & 1) == 0)
      {
        goto LABEL_15;
      }

      v25 = *(&v69 + 1);
      v24 = v69;
      v26 = v70;
      if (*(&v69 + 1) == 1)
      {
        break;
      }

      if (v17 == 1)
      {
        sub_222B554C0(&v68, v67);
        sub_222B4FDCC(v24, v25, v26, *(&v26 + 1));
        v31 = *(&v63 + 1);
        v30 = v64;
        v32 = v63;
        sub_222B4FDCC(v64, 1, *(&v63 + 1), v63);
        sub_222B4FDCC(v24, v25, v26, *(&v26 + 1));

LABEL_37:
        sub_222B4FE78(v24, v25, v26, *(&v26 + 1));
        v33 = v30;
        v34 = v17;
        v35 = v31;
        v36 = v32;
        goto LABEL_56;
      }

      if (*(&v69 + 1))
      {
        if (!v17)
        {
          sub_222B554C0(&v68, v67);
          sub_222B4FDCC(v24, v25, v26, *(&v26 + 1));
          v38 = *(&v63 + 1);
          v39 = v63;
          sub_222B4FDCC(v64, 0, *(&v63 + 1), v63);
          sub_222B4FDCC(v24, v25, v26, *(&v26 + 1));
          v46 = v64;
          v47 = 0;
LABEL_54:
          v48 = v38;
          v49 = v39;
          goto LABEL_55;
        }

        if (v69 != __PAIR128__(v17, v64) && (sub_222C951FC() & 1) == 0)
        {
          sub_222B554C0(&v68, v67);
          sub_222B4FDCC(v24, v25, v26, *(&v26 + 1));
          v38 = *(&v63 + 1);
          v37 = v64;
          v39 = v63;
          sub_222B4FDCC(v64, v17, *(&v63 + 1), v63);
          v40 = v24;
          v41 = v25;
          goto LABEL_45;
        }
      }

      else if (v17)
      {
        sub_222B554C0(&v68, v67);
        sub_222B4FDCC(v24, 0, v26, *(&v26 + 1));
        v38 = *(&v63 + 1);
        v37 = v64;
        v39 = v63;
        sub_222B4FDCC(v64, v17, *(&v63 + 1), v63);
        v40 = v24;
        v41 = 0;
LABEL_45:
        v43 = *(&v26 + 1);
        v42 = v26;
LABEL_53:
        sub_222B4FDCC(v40, v41, v42, v43);
        v46 = v37;
        v47 = v17;
        goto LABEL_54;
      }

      if (!*(&v26 + 1))
      {
        v39 = v63;
        if (v63)
        {
          sub_222B554C0(&v68, v67);
          sub_222B4FDCC(v24, v25, v26, 0);
          v38 = *(&v63 + 1);
          v37 = v64;
          sub_222B4FDCC(v64, v17, *(&v63 + 1), v63);
          v40 = v24;
          v41 = v25;
          v42 = v26;
          v43 = 0;
          goto LABEL_53;
        }

        sub_222B554C0(&v68, v67);
        sub_222B4FDCC(v24, v25, v26, 0);
        v45 = *(&v63 + 1);
        sub_222B4FDCC(v64, v17, *(&v63 + 1), 0);
        sub_222B4FDCC(v24, v25, v26, 0);
        v44 = 0;
LABEL_62:
        sub_222B4FE78(v64, v17, v45, v44);

LABEL_21:
        sub_222B4FE78(v24, v25, v26, *(&v26 + 1));
        v4 = a4;
        v11 = v62;
        goto LABEL_22;
      }

      if (!v63)
      {
        sub_222B554C0(&v68, v67);
        sub_222B4FDCC(v24, v25, v26, *(&v26 + 1));
        sub_222B4FDCC(v64, v17, *(&v63 + 1), 0);
        sub_222B4FDCC(v24, v25, v26, *(&v26 + 1));
        v46 = v64;
        v47 = v17;
        v48 = *(&v63 + 1);
        v49 = 0;
LABEL_55:
        sub_222B4FE78(v46, v47, v48, v49);

        v33 = v24;
        v34 = v25;
        v36 = *(&v26 + 1);
        v35 = v26;
LABEL_56:
        sub_222B4FE78(v33, v34, v35, v36);
        v4 = a4;
        v11 = v62;
LABEL_57:
        sub_222B55A80(&v68);
        goto LABEL_15;
      }

      if (__PAIR128__(v26, *(&v26 + 1)) == v63)
      {
        sub_222B554C0(&v68, v67);
        sub_222B4FDCC(v24, v25, *(&v63 + 1), v63);
        sub_222B4FDCC(v64, v17, *(&v63 + 1), v63);
        sub_222B4FDCC(v24, v25, *(&v63 + 1), v63);
        v45 = *(&v63 + 1);
        v44 = v63;
        goto LABEL_62;
      }

      v54 = sub_222C951FC();
      sub_222B554C0(&v68, v67);
      sub_222B4FDCC(v24, v25, v26, *(&v26 + 1));
      sub_222B4FDCC(v64, v17, *(&v63 + 1), v63);
      sub_222B4FDCC(v24, v25, v26, *(&v26 + 1));
      sub_222B4FE78(v64, v17, *(&v63 + 1), v63);

      sub_222B4FE78(v24, v25, v26, *(&v26 + 1));
      v4 = a4;
      v11 = v62;
      if ((v54 & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_22:
      if (v71 == 2)
      {
        sub_222B55A80(&v68);
        if (v60 == 2)
        {
          goto LABEL_66;
        }

        goto LABEL_15;
      }

      if (v60 == 2)
      {
        goto LABEL_57;
      }

      if (v71)
      {
        v27 = 0x656E696665646E75;
      }

      else
      {
        v27 = 0x6C7070612E6D6F63;
      }

      if (v71)
      {
        v28 = 0xE900000000000064;
      }

      else
      {
        v28 = 0xEF636973754D2E65;
      }

      if (v27 == v59 && v28 == v58)
      {

        sub_222B55A80(&v68);
LABEL_66:
        result = sub_222B55A80(&v72);
        v50 = v53[v15];
        v53[v15] = v50 | v16;
        if ((v50 & v16) != 0)
        {
          goto LABEL_64;
        }

        v9 = __OFADD__(v52++, 1);
        v5 = v55;
        v6 = v57;
        if (v9)
        {
          __break(1u);
          goto LABEL_70;
        }

LABEL_4:
        if (v6 == v5)
        {
          goto LABEL_71;
        }

        goto LABEL_5;
      }

      v29 = sub_222C951FC();

      sub_222B55A80(&v68);
      if (v29)
      {
        goto LABEL_66;
      }

LABEL_15:
      v14 = (v14 + 1) & v65;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if ((*(v66 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        result = sub_222B55A80(&v72);
LABEL_64:
        v5 = v55;
        v6 = v57;
        goto LABEL_4;
      }
    }

    if (v17 != 1)
    {
      sub_222B554C0(&v68, v67);
      sub_222B4FDCC(v24, 1, v26, *(&v26 + 1));
      v31 = *(&v63 + 1);
      v30 = v64;
      v32 = v63;
      sub_222B4FDCC(v64, v17, *(&v63 + 1), v63);
      goto LABEL_37;
    }

    sub_222B554C0(&v68, v67);
    sub_222B4FDCC(v24, 1, v26, *(&v26 + 1));
    sub_222B4FDCC(v64, 1, *(&v63 + 1), v63);
    v25 = 1;
    goto LABEL_21;
  }

  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

unint64_t *sub_222C1020C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a3 + 16);
  v25 = result;
  v26 = a3 + 32;
  v33 = a4 + 56;
  v27 = v6;
LABEL_2:
  v24 = v4;
  if (v5 == v6)
  {
LABEL_28:

    return sub_222C10EB0(v25, a2, v24, a4);
  }

LABEL_6:
  if (v5 < v6)
  {
    if (__OFADD__(v5, 1))
    {
      goto LABEL_30;
    }

    v7 = (v26 + 32 * v5);
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[3];
    v30 = v5 + 1;
    v31 = v7[2];
    v29 = v5 + 1;
    sub_222C952FC();

    sub_222C9452C();
    v11 = sub_222C9534C();
    v12 = -1 << *(a4 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & *(v33 + 8 * (v13 >> 6))) == 0)
    {
LABEL_4:

      v6 = v27;
      v5 = v30;
      goto LABEL_5;
    }

    v32 = ~v12;
    v16 = *(a4 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v13);
      v19 = v17[2];
      v18 = v17[3];
      v20 = *v17 == v9 && v17[1] == v8;
      if (v20 || (sub_222C951FC() & 1) != 0)
      {
        if (v18)
        {
          if (v10)
          {
            v21 = v19 == v31 && v18 == v10;
            if (v21 || (sub_222C951FC() & 1) != 0)
            {
LABEL_24:

              v22 = v25[v14];
              v25[v14] = v22 | v15;
              v6 = v27;
              v5 = v30;
              if ((v22 & v15) == 0)
              {
                v4 = v24 + 1;
                if (!__OFADD__(v24, 1))
                {
                  goto LABEL_2;
                }

                __break(1u);
                goto LABEL_28;
              }

LABEL_5:
              if (v29 == v6)
              {
                goto LABEL_28;
              }

              goto LABEL_6;
            }
          }
        }

        else if (!v10)
        {
          goto LABEL_24;
        }
      }

      v13 = (v13 + 1) & v32;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if ((*(v33 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_222C1043C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025690, &qword_222C9B8F0);
  result = sub_222C94CFC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_222C952FC();

    sub_222C9452C();
    result = sub_222C9534C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222C10660(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025648, &qword_222C9B8E0);
  result = sub_222C94CFC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_222C952FC();
    sub_222C9452C();

    result = sub_222C9534C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222C10994(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025650, &unk_222C98A70);
  result = sub_222C94CFC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_222C952FC();
    sub_222C9452C();

    result = sub_222C9534C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222C10C50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025660, &unk_222CA0990);
  result = sub_222C94CFC();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = *(a4 + 48) + 56 * (v13 | (v11 << 6));
    v18 = *v16;
    v17 = *(v16 + 16);
    v19 = *(v16 + 32);
    v37 = *(v16 + 48);
    v35 = v17;
    v36 = v19;
    v34 = v18;
    sub_222C952FC();
    sub_222B554C0(&v34, &v33);
    sub_222C9452C();
    result = sub_222C9534C();
    v20 = -1 << *(v6 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v6 + 48) + 56 * v23;
    v29 = v34;
    v30 = v35;
    v31 = v36;
    *(v28 + 48) = v37;
    *(v28 + 16) = v30;
    *(v28 + 32) = v31;
    *v28 = v29;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222C10EB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025688, &unk_222C98A90);
  result = sub_222C94CFC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 32 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[3];
    v31 = v16[2];
    sub_222C952FC();

    sub_222C9452C();
    result = sub_222C9534C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 32 * v23);
    *v28 = v17;
    v28[1] = v18;
    v28[2] = v31;
    v28[3] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222C110F0(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v79[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v79[0] = a1;
    v70 = *(a1 + 16);
    if (v70)
    {
      v78 = (a2 + 56);
      v3 = a1 + 32;
      v71 = a1;

      v4 = 0;
      v76 = 0x8000000222CA9400;
      v77 = v2;
      v72 = v3;
      v75 = 0x8000000222CA93E0;
      while (1)
      {
        v5 = *(v4 + v3);
        v74 = (v4 + 1);
        sub_222C952FC();
        sub_222C9452C();

        v6 = sub_222C9534C();
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v78[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_4:
        v4 = v74;
        v2 = v77;
        v3 = v72;
        if (v74 == v70)
        {
LABEL_73:

          return v2;
        }
      }

      v73 = ~v7;
      while (1)
      {
        v11 = *(*(v77 + 48) + v8);
        if (v11 > 3)
        {
          if (*(*(v77 + 48) + v8) > 5u)
          {
            if (v11 == 6)
            {
              v16 = 0xD000000000000013;
              v17 = v75;
              if (v5 > 3)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v16 = 0xD000000000000012;
              v17 = v76;
              if (v5 > 3)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
            if (v11 == 4)
            {
              v16 = 0x7972617262696CLL;
            }

            else
            {
              v16 = 0xD000000000000011;
            }

            if (v11 == 4)
            {
              v17 = 0xE700000000000000;
            }

            else
            {
              v17 = 0x8000000222CA93C0;
            }

            if (v5 > 3)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v12 = 0x6974636572726F63;
          if (v11 == 2)
          {
            v12 = 0x6574616E696D6F6ELL;
          }

          v13 = 0xEA00000000006E6FLL;
          if (v11 == 2)
          {
            v13 = 0xE900000000000064;
          }

          v14 = 0x656D7269666E6F63;
          if (!*(*(v77 + 48) + v8))
          {
            v14 = 0x754D6E69616D6F64;
          }

          v15 = 0xEB00000000636973;
          if (*(*(v77 + 48) + v8))
          {
            v15 = 0xE900000000000064;
          }

          if (*(*(v77 + 48) + v8) <= 1u)
          {
            v16 = v14;
          }

          else
          {
            v16 = v12;
          }

          if (*(*(v77 + 48) + v8) <= 1u)
          {
            v17 = v15;
          }

          else
          {
            v17 = v13;
          }

          if (v5 > 3)
          {
LABEL_35:
            v18 = 0xD000000000000013;
            if (v5 != 6)
            {
              v18 = 0xD000000000000012;
            }

            v19 = v76;
            if (v5 == 6)
            {
              v19 = v75;
            }

            v20 = 0x7972617262696CLL;
            if (v5 == 4)
            {
              v21 = 0xE700000000000000;
            }

            else
            {
              v20 = 0xD000000000000011;
              v21 = 0x8000000222CA93C0;
            }

            if (v5 <= 5)
            {
              v22 = v20;
            }

            else
            {
              v22 = v18;
            }

            if (v5 <= 5)
            {
              v23 = v21;
            }

            else
            {
              v23 = v19;
            }

            if (v16 != v22)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          }
        }

        if (v5 > 1)
        {
          if (v5 == 2)
          {
            v27 = 0x6574616E696D6F6ELL;
          }

          else
          {
            v27 = 0x6974636572726F63;
          }

          if (v5 == 2)
          {
            v23 = 0xE900000000000064;
          }

          else
          {
            v23 = 0xEA00000000006E6FLL;
          }

          if (v16 != v27)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v24 = 0x754D6E69616D6F64;
          v23 = 0xEB00000000636973;
          if (v5)
          {
            v24 = 0x656D7269666E6F63;
            v23 = 0xE900000000000064;
          }

          if (v16 != v24)
          {
            goto LABEL_56;
          }
        }

LABEL_55:
        if (v17 == v23)
        {

LABEL_69:
          v28 = v74;
          v79[1] = v74;
          v29 = v77;
          v30 = *(v77 + 32);
          v68 = ((1 << v30) + 63) >> 6;
          v31 = 8 * v68;
          v32 = v72;
          if ((v30 & 0x3Fu) > 0xD)
          {
            goto LABEL_152;
          }

          while (1)
          {
            v69 = &v67;
            MEMORY[0x28223BE20](v26);
            v34 = &v67 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
            memcpy(v34, v78, v33);
            v35 = *(v29 + 16);
            v36 = *&v34[8 * v9] & ~v10;
            v70 = v34;
            *&v34[8 * v9] = v36;
            v73 = v35 - 1;
            v8 = v71;
            v37 = *(v71 + 16);
            if (v28 == v37)
            {
              v9 = v77;
LABEL_72:
              v2 = sub_222C10660(v70, v68, v73, v9);
              goto LABEL_73;
            }

            v9 = v77;
LABEL_79:
            if (v28 < v37)
            {
              break;
            }

            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            v63 = v31;

            v64 = v63;
            if (!swift_stdlib_isStackAllocationSafe())
            {
              v65 = swift_slowAlloc();
              memcpy(v65, v78, v64);
              v66 = sub_222C1242C(v65, v68, v29, v8, v79);

              MEMORY[0x223DCA8C0](v65, -1, -1);

              return v66;
            }

            v28 = v74;
          }

          v39 = *(v28 + v32);
          v74 = (v28 + 1);
          sub_222C952FC();
          v29 = 0xD000000000000011;
          sub_222C9452C();

          v40 = sub_222C9534C();
          v41 = -1 << *(v9 + 32);
          v42 = v40 & ~v41;
          v43 = v42 >> 6;
          v44 = 1 << v42;
          if (((1 << v42) & v78[v42 >> 6]) == 0)
          {
LABEL_76:
            v8 = v71;
            v32 = v72;
            goto LABEL_77;
          }

          v45 = ~v41;
          while (2)
          {
            v46 = *(*(v9 + 48) + v42);
            if (v46 > 3)
            {
              if (*(*(v9 + 48) + v42) > 5u)
              {
                if (v46 == 6)
                {
                  v51 = 0xD000000000000013;
                  v52 = v75;
                  if (v39 <= 3)
                  {
                    goto LABEL_127;
                  }
                }

                else
                {
                  v51 = 0xD000000000000012;
                  v52 = v76;
                  if (v39 <= 3)
                  {
                    goto LABEL_127;
                  }
                }
              }

              else
              {
                if (v46 == 4)
                {
                  v51 = 0x7972617262696CLL;
                }

                else
                {
                  v51 = 0xD000000000000011;
                }

                if (v46 == 4)
                {
                  v52 = 0xE700000000000000;
                }

                else
                {
                  v52 = 0x8000000222CA93C0;
                }

                if (v39 <= 3)
                {
                  goto LABEL_127;
                }
              }
            }

            else
            {
              v47 = 0x6974636572726F63;
              if (v46 == 2)
              {
                v47 = 0x6574616E696D6F6ELL;
              }

              v48 = 0xEA00000000006E6FLL;
              if (v46 == 2)
              {
                v48 = 0xE900000000000064;
              }

              v49 = 0x754D6E69616D6F64;
              if (*(*(v9 + 48) + v42))
              {
                v49 = 0x656D7269666E6F63;
              }

              v50 = 0xEB00000000636973;
              if (*(*(v9 + 48) + v42))
              {
                v50 = 0xE900000000000064;
              }

              if (*(*(v9 + 48) + v42) <= 1u)
              {
                v51 = v49;
              }

              else
              {
                v51 = v47;
              }

              if (*(*(v9 + 48) + v42) <= 1u)
              {
                v52 = v50;
              }

              else
              {
                v52 = v48;
              }

              if (v39 <= 3)
              {
LABEL_127:
                if (v39 > 1)
                {
                  if (v39 == 2)
                  {
                    v60 = 0x6574616E696D6F6ELL;
                  }

                  else
                  {
                    v60 = 0x6974636572726F63;
                  }

                  if (v39 == 2)
                  {
                    v58 = 0xE900000000000064;
                  }

                  else
                  {
                    v58 = 0xEA00000000006E6FLL;
                  }

                  if (v51 == v60)
                  {
LABEL_131:
                    if (v52 == v58)
                    {

LABEL_144:
                      v61 = v70[v43];
                      v70[v43] = v61 & ~v44;
                      v8 = v71;
                      v32 = v72;
                      if ((v61 & v44) != 0)
                      {
                        v28 = v74;
                        v62 = v73 - 1;
                        v9 = v77;
                        if (__OFSUB__(v73, 1))
                        {
                          goto LABEL_151;
                        }

                        --v73;
                        if (!v62)
                        {

                          v2 = MEMORY[0x277D84FA0];
                          goto LABEL_73;
                        }

LABEL_78:
                        v37 = *(v8 + 16);
                        if (v28 == v37)
                        {
                          goto LABEL_72;
                        }

                        goto LABEL_79;
                      }

                      v9 = v77;
LABEL_77:
                      v28 = v74;
                      goto LABEL_78;
                    }
                  }
                }

                else
                {
                  v59 = 0x754D6E69616D6F64;
                  v58 = 0xEB00000000636973;
                  if (v39)
                  {
                    v59 = 0x656D7269666E6F63;
                    v58 = 0xE900000000000064;
                  }

                  if (v51 == v59)
                  {
                    goto LABEL_131;
                  }
                }

LABEL_132:
                v10 = sub_222C951FC();

                if (v10)
                {
                  goto LABEL_144;
                }

                v42 = (v42 + 1) & v45;
                v43 = v42 >> 6;
                v9 = v77;
                v44 = 1 << v42;
                if ((v78[v42 >> 6] & (1 << v42)) == 0)
                {
                  goto LABEL_76;
                }

                continue;
              }
            }

            break;
          }

          v53 = 0xD000000000000011;
          v54 = 0xD000000000000013;
          if (v39 != 6)
          {
            v54 = 0xD000000000000012;
          }

          v55 = v76;
          if (v39 == 6)
          {
            v55 = v75;
          }

          v29 = 0xD000000000000011;
          if (v39 == 4)
          {
            v53 = 0x7972617262696CLL;
          }

          v56 = 0xE700000000000000;
          if (v39 != 4)
          {
            v56 = 0x8000000222CA93C0;
          }

          if (v39 <= 5)
          {
            v57 = v53;
          }

          else
          {
            v57 = v54;
          }

          if (v39 <= 5)
          {
            v58 = v56;
          }

          else
          {
            v58 = v55;
          }

          if (v51 == v57)
          {
            goto LABEL_131;
          }

          goto LABEL_132;
        }

LABEL_56:
        v25 = sub_222C951FC();

        if (v25)
        {
          goto LABEL_69;
        }

        v8 = (v8 + 1) & v73;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if ((v78[v8 >> 6] & (1 << v8)) == 0)
        {
          goto LABEL_4;
        }
      }
    }
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_222C11B7C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v63[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v63[0] = a1;
  v57 = *(a1 + 16);
  if (v57)
  {
    v3 = 0x6574616E696D6F6ELL;
    v62 = (a2 + 56);
    v4 = a1 + 32;
    v58 = a1;

    v5 = 0;
    v61 = v2;
    v59 = v4;
    while (1)
    {
      v6 = *(v4 + v5);
      v60 = v5 + 1;
      sub_222C952FC();
      v7 = v3;
      sub_222C9452C();

      v8 = sub_222C9534C();
      v9 = -1 << *(v2 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if (((1 << v10) & v62[v10 >> 6]) != 0)
      {
        break;
      }

LABEL_4:
      v5 = v60;
      v3 = v7;
      v4 = v59;
      if (v60 == v57)
      {
        goto LABEL_48;
      }
    }

    v13 = ~v9;
    while (1)
    {
      v14 = *(*(v2 + 48) + v10);
      if (v14 <= 1)
      {
        if (*(*(v2 + 48) + v10))
        {
          v15 = 0x68506E69616D6F64;
        }

        else
        {
          v15 = 0x654D6E69616D6F64;
        }

        if (*(*(v2 + 48) + v10))
        {
          v16 = 0xEF6C6C6143656E6FLL;
        }

        else
        {
          v16 = 0xEE00736567617373;
        }

        if (v6 <= 1)
        {
LABEL_36:
          v19 = 0x654D6E69616D6F64;
          v20 = 0xEE00736567617373;
          if (v6)
          {
            v19 = 0x68506E69616D6F64;
            v20 = 0xEF6C6C6143656E6FLL;
          }

          goto LABEL_38;
        }
      }

      else if (v14 == 2)
      {
        v15 = 0x656D7269666E6F63;
        v16 = 0xE900000000000064;
        if (v6 <= 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = v7;
        }

        else
        {
          v15 = 0x6974636572726F63;
        }

        if (v14 == 3)
        {
          v16 = 0xE900000000000064;
        }

        else
        {
          v16 = 0xEA00000000006E6FLL;
        }

        if (v6 <= 1)
        {
          goto LABEL_36;
        }
      }

      if (v6 == 3)
      {
        v17 = v7;
      }

      else
      {
        v17 = 0x6974636572726F63;
      }

      v18 = 0xEA00000000006E6FLL;
      if (v6 == 3)
      {
        v18 = 0xE900000000000064;
      }

      if (v6 == 2)
      {
        v19 = 0x656D7269666E6F63;
      }

      else
      {
        v19 = v17;
      }

      if (v6 == 2)
      {
        v20 = 0xE900000000000064;
      }

      else
      {
        v20 = v18;
      }

LABEL_38:
      if (v15 == v19 && v16 == v20)
      {

LABEL_45:
        v24 = v60;
        v23 = v61;
        v63[1] = v60;
        v25 = *(v61 + 32);
        v54 = ((1 << v25) + 63) >> 6;
        v26 = 8 * v54;
        v27 = v58;
        if ((v25 & 0x3Fu) > 0xD)
        {
          goto LABEL_104;
        }

        while (2)
        {
          v55 = &v53;
          MEMORY[0x28223BE20](v22);
          v29 = &v53 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
          memcpy(v29, v62, v28);
          v30 = *(v23 + 16);
          *&v29[8 * v11] &= ~v12;
          v56 = v29;
          v57 = v30 - 1;
          v31 = *(v27 + 16);
          if (v24 == v31)
          {
LABEL_47:
            v2 = sub_222C10994(v56, v54, v57, v23);
LABEL_48:

            return v2;
          }

          v12 = 0xEA00000000006E6FLL;
          v11 = 0xE900000000000064;
          v10 = 0x6974636572726F63;
LABEL_54:
          if (v24 >= v31)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            v49 = v26;

            v50 = v49;
            if (swift_stdlib_isStackAllocationSafe())
            {

              v24 = v60;
              continue;
            }

            v51 = swift_slowAlloc();
            memcpy(v51, v62, v50);
            v52 = sub_222C12930(v51, v54, v23, v10, v63);

            MEMORY[0x223DCA8C0](v51, -1, -1);

            return v52;
          }

          break;
        }

        v33 = *(v59 + v24);
        v60 = v24 + 1;
        sub_222C952FC();
        sub_222C9452C();

        v34 = sub_222C9534C();
        v35 = -1 << *(v23 + 32);
        v36 = v34 & ~v35;
        v37 = v36 >> 6;
        v38 = 1 << v36;
        if (((1 << v36) & v62[v36 >> 6]) == 0)
        {
          v27 = v58;
          v10 = 0x6974636572726F63;
LABEL_52:
          v24 = v60;
          goto LABEL_53;
        }

        v39 = ~v35;
        while (1)
        {
          v40 = *(*(v61 + 48) + v36);
          if (v40 <= 1)
          {
            if (*(*(v61 + 48) + v36))
            {
              v41 = 0x68506E69616D6F64;
            }

            else
            {
              v41 = 0x654D6E69616D6F64;
            }

            if (*(*(v61 + 48) + v36))
            {
              v10 = 0xEF6C6C6143656E6FLL;
            }

            else
            {
              v10 = 0xEE00736567617373;
            }

            if (v33 <= 1)
            {
LABEL_87:
              v44 = 0x654D6E69616D6F64;
              v45 = 0xEE00736567617373;
              if (v33)
              {
                v44 = 0x68506E69616D6F64;
                v45 = 0xEF6C6C6143656E6FLL;
              }

              goto LABEL_89;
            }
          }

          else if (v40 == 2)
          {
            v41 = 0x656D7269666E6F63;
            v10 = 0xE900000000000064;
            if (v33 <= 1)
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v40 == 3)
            {
              v41 = v7;
            }

            else
            {
              v41 = 0x6974636572726F63;
            }

            if (v40 == 3)
            {
              v10 = 0xE900000000000064;
            }

            else
            {
              v10 = 0xEA00000000006E6FLL;
            }

            if (v33 <= 1)
            {
              goto LABEL_87;
            }
          }

          if (v33 == 3)
          {
            v42 = v7;
          }

          else
          {
            v42 = 0x6974636572726F63;
          }

          if (v33 == 3)
          {
            v43 = 0xE900000000000064;
          }

          else
          {
            v43 = 0xEA00000000006E6FLL;
          }

          if (v33 == 2)
          {
            v44 = 0x656D7269666E6F63;
          }

          else
          {
            v44 = v42;
          }

          if (v33 == 2)
          {
            v45 = 0xE900000000000064;
          }

          else
          {
            v45 = v43;
          }

LABEL_89:
          if (v41 == v44 && v10 == v45)
          {

LABEL_95:
            v47 = v56[v37];
            v56[v37] = v47 & ~v38;
            v27 = v58;
            v12 = 0xEA00000000006E6FLL;
            if ((v47 & v38) == 0)
            {
              v11 = 0xE900000000000064;
              goto LABEL_100;
            }

            v48 = v57 - 1;
            v11 = 0xE900000000000064;
            v24 = v60;
            v23 = v61;
            if (__OFSUB__(v57, 1))
            {
              goto LABEL_103;
            }

            v10 = 0x6974636572726F63;
            --v57;
            if (!v48)
            {

              v2 = MEMORY[0x277D84FA0];
              goto LABEL_48;
            }

LABEL_53:
            v31 = *(v27 + 16);
            if (v24 == v31)
            {
              goto LABEL_47;
            }

            goto LABEL_54;
          }

          v46 = sub_222C951FC();

          if (v46)
          {
            goto LABEL_95;
          }

          v36 = (v36 + 1) & v39;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          v12 = 0xEA00000000006E6FLL;
          v11 = 0xE900000000000064;
          if ((v62[v36 >> 6] & (1 << v36)) == 0)
          {
            v27 = v58;
LABEL_100:
            v10 = 0x6974636572726F63;
            v23 = v61;
            goto LABEL_52;
          }
        }
      }

      v21 = sub_222C951FC();

      if (v21)
      {
        goto LABEL_45;
      }

      v10 = (v10 + 1) & v13;
      v11 = v10 >> 6;
      v2 = v61;
      v12 = 1 << v10;
      if ((v62[v10 >> 6] & (1 << v10)) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  return v2;
}

uint64_t sub_222C1242C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v36 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 == v9)
  {
LABEL_2:

    return sub_222C10660(v36, a2, v38, a3);
  }

  v10 = a5;
  v39 = a3 + 56;
  while (2)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_76:
      __break(1u);
      break;
    }

    if (v8 >= v9)
    {
      goto LABEL_76;
    }

    v11 = *(v7 + v8 + 32);
    v10[1] = v8 + 1;
    sub_222C952FC();
    sub_222C9452C();

    result = sub_222C9534C();
    v12 = -1 << *(a3 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & *(v39 + 8 * (v13 >> 6))) == 0)
    {
      goto LABEL_4;
    }

    v16 = ~v12;
    while (1)
    {
      v17 = *(*(a3 + 48) + v13);
      if (v17 <= 3)
      {
        break;
      }

      if (*(*(a3 + 48) + v13) > 5u)
      {
        if (v17 == 6)
        {
          v22 = 0xD000000000000013;
          v23 = 0x8000000222CA93E0;
          if (v11 > 3)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v22 = 0xD000000000000012;
          v23 = 0x8000000222CA9400;
          if (v11 > 3)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        if (v17 == 4)
        {
          v22 = 0x7972617262696CLL;
        }

        else
        {
          v22 = 0xD000000000000011;
        }

        if (v17 == 4)
        {
          v23 = 0xE700000000000000;
        }

        else
        {
          v23 = 0x8000000222CA93C0;
        }

        if (v11 > 3)
        {
          goto LABEL_37;
        }
      }

LABEL_54:
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v32 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v32 = 0x6974636572726F63;
        }

        if (v11 == 2)
        {
          v29 = 0xE900000000000064;
        }

        else
        {
          v29 = 0xEA00000000006E6FLL;
        }

        if (v22 == v32)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v30 = 0x754D6E69616D6F64;
        v29 = 0xEB00000000636973;
        if (v11)
        {
          v30 = 0x656D7269666E6F63;
          v29 = 0xE900000000000064;
        }

        if (v22 == v30)
        {
          goto LABEL_58;
        }
      }

LABEL_59:
      v31 = sub_222C951FC();

      if (v31)
      {
        goto LABEL_71;
      }

      v13 = (v13 + 1) & v16;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if ((*(v39 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        v10 = a5;
        goto LABEL_4;
      }
    }

    v18 = 0x6974636572726F63;
    if (v17 == 2)
    {
      v18 = 0x6574616E696D6F6ELL;
    }

    v19 = 0xEA00000000006E6FLL;
    if (v17 == 2)
    {
      v19 = 0xE900000000000064;
    }

    v20 = 0x754D6E69616D6F64;
    if (*(*(a3 + 48) + v13))
    {
      v20 = 0x656D7269666E6F63;
    }

    v21 = 0xEB00000000636973;
    if (*(*(a3 + 48) + v13))
    {
      v21 = 0xE900000000000064;
    }

    if (*(*(a3 + 48) + v13) <= 1u)
    {
      v22 = v20;
    }

    else
    {
      v22 = v18;
    }

    if (*(*(a3 + 48) + v13) <= 1u)
    {
      v23 = v21;
    }

    else
    {
      v23 = v19;
    }

    if (v11 <= 3)
    {
      goto LABEL_54;
    }

LABEL_37:
    v24 = 0xD000000000000011;
    v25 = 0xD000000000000013;
    if (v11 != 6)
    {
      v25 = 0xD000000000000012;
    }

    v26 = 0x8000000222CA9400;
    if (v11 == 6)
    {
      v26 = 0x8000000222CA93E0;
    }

    if (v11 == 4)
    {
      v24 = 0x7972617262696CLL;
    }

    v27 = 0x8000000222CA93C0;
    if (v11 == 4)
    {
      v27 = 0xE700000000000000;
    }

    if (v11 <= 5)
    {
      v28 = v24;
    }

    else
    {
      v28 = v25;
    }

    if (v11 <= 5)
    {
      v29 = v27;
    }

    else
    {
      v29 = v26;
    }

    if (v22 != v28)
    {
      goto LABEL_59;
    }

LABEL_58:
    if (v23 != v29)
    {
      goto LABEL_59;
    }

LABEL_71:
    v10 = a5;
    v33 = v36[v14];
    v36[v14] = v33 & ~v15;
    if ((v33 & v15) == 0)
    {
      goto LABEL_4;
    }

    v34 = v38 - 1;
    if (!__OFSUB__(v38, 1))
    {
      --v38;
      if (!v34)
      {
        return MEMORY[0x277D84FA0];
      }

LABEL_4:
      v7 = *v10;
      v8 = v10[1];
      v9 = *(*v10 + 16);
      if (v8 == v9)
      {
        goto LABEL_2;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_222C12930(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v33 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 == v9)
  {
LABEL_2:

    return sub_222C10994(v31, a2, v33, a3);
  }

  v10 = a5;
  v34 = a3 + 56;
  while (2)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      break;
    }

    if (v8 >= v9)
    {
      goto LABEL_47;
    }

    v11 = *(v7 + v8 + 32);
    v10[1] = v8 + 1;
    sub_222C952FC();
    sub_222C9452C();

    result = sub_222C9534C();
    v12 = -1 << *(a3 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & *(v34 + 8 * (v13 >> 6))) == 0)
    {
      goto LABEL_4;
    }

    v16 = ~v12;
    while (1)
    {
      v17 = *(*(a3 + 48) + v13);
      if (v17 <= 1)
      {
        v18 = v17 == 0;
        v19 = *(*(a3 + 48) + v13) ? 0x68506E69616D6F64 : 0x654D6E69616D6F64;
        v20 = 0xEF6C6C6143656E6FLL;
        v21 = 0xEE00736567617373;
      }

      else
      {
        if (v17 == 2)
        {
          v19 = 0x656D7269666E6F63;
          v22 = 0xE900000000000064;
          if (v11 > 1)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }

        v18 = v17 == 3;
        v19 = v17 == 3 ? 0x6574616E696D6F6ELL : 0x6974636572726F63;
        v20 = 0xEA00000000006E6FLL;
        v21 = 0xE900000000000064;
      }

      if (v18)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      if (v11 > 1)
      {
LABEL_23:
        v23 = 0x6974636572726F63;
        if (v11 == 3)
        {
          v23 = 0x6574616E696D6F6ELL;
        }

        v24 = 0xEA00000000006E6FLL;
        if (v11 == 3)
        {
          v24 = 0xE900000000000064;
        }

        if (v11 == 2)
        {
          v25 = 0x656D7269666E6F63;
        }

        else
        {
          v25 = v23;
        }

        if (v11 == 2)
        {
          v26 = 0xE900000000000064;
        }

        else
        {
          v26 = v24;
        }

        goto LABEL_36;
      }

LABEL_34:
      v25 = 0x654D6E69616D6F64;
      v26 = 0xEE00736567617373;
      if (v11)
      {
        v25 = 0x68506E69616D6F64;
        v26 = 0xEF6C6C6143656E6FLL;
      }

LABEL_36:
      if (v19 == v25 && v22 == v26)
      {
        break;
      }

      v27 = sub_222C951FC();

      if (v27)
      {
        goto LABEL_42;
      }

      v13 = (v13 + 1) & v16;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if ((*(v34 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        v10 = a5;
        goto LABEL_4;
      }
    }

LABEL_42:
    v10 = a5;
    v28 = v31[v14];
    v31[v14] = v28 & ~v15;
    if ((v28 & v15) == 0)
    {
      goto LABEL_4;
    }

    v29 = v33 - 1;
    if (!__OFSUB__(v33, 1))
    {
      --v33;
      if (!v29)
      {
        return MEMORY[0x277D84FA0];
      }

LABEL_4:
      v7 = *v10;
      v8 = v10[1];
      v9 = *(*v10 + 16);
      if (v8 == v9)
      {
        goto LABEL_2;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}