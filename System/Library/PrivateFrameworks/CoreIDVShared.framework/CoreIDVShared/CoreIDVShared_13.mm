void sub_225AD5D60(uint64_t *a1@<X8>)
{
  v2 = 1196901185;
  if (!*v1)
  {
    v2 = 0x647261646E617473;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ISO18013DictionaryEncodingStrategy.cborEncoderStrategy.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D138, &qword_225CE4850);
    v3 = swift_allocBox();
    v5 = v4;
    v6 = *MEMORY[0x277CF3980];
    v7 = sub_225CCD3D4();
    v15 = *(*(v7 - 8) + 104);
    (v15)((v7 - 8), v5, v6, v7);
    *a1 = v3;
    v8 = *MEMORY[0x277CF3978];
    v9 = a1;
    v10 = v7;
    v11 = v15;
  }

  else
  {
    v12 = *MEMORY[0x277CF3980];
    v13 = sub_225CCD3D4();
    v11 = *(*(v13 - 8) + 104);
    v10 = v13;
    v9 = a1;
    v8 = v12;
  }

  return v11(v9, v8, v10);
}

uint64_t sub_225AD5ECC@<X0>(char *a4@<X8>)
{
  v5 = sub_225CCF5D4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t ISO18013DictionaryEncodingStrategy.rawValue.getter()
{
  if (*v0)
  {
    return 0x4164656966696E75;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_225AD5F78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4164656966696E75;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = 0x8000000225D0B8A0;
  }

  else
  {
    v4 = 0xED00007373656363;
  }

  if (*a2)
  {
    v5 = 0x4164656966696E75;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = 0xED00007373656363;
  }

  else
  {
    v6 = 0x8000000225D0B8A0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AD6030()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AD60C4(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225AD6144()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225AD61E0(unint64_t *a1@<X8>)
{
  v2 = 0x8000000225D0B8A0;
  v3 = 0xD000000000000011;
  if (*v1)
  {
    v3 = 0x4164656966696E75;
    v2 = 0xED00007373656363;
  }

  *a1 = v3;
  a1[1] = v2;
}

void (*CBOREncoder.presentmentType.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = sub_225CCF454();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 88) = v8;
  CBOREncoder.presentmentType.getter((v5 + 96));
  return sub_225AD6324;
}

void (*CBOREncoder.codingKeyFormat.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = sub_225CCF454();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 88) = v8;
  CBOREncoder.codingKeyFormat.getter((v5 + 96));
  return sub_225AD6418;
}

uint64_t sub_225AD6448@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  if (qword_27D739F68 != -1)
  {
    swift_once();
  }

  v4 = sub_225CCF454();
  v5 = __swift_project_value_buffer(v4, qword_27D73D108);
  v6 = a1();
  if (!*(v6 + 16) || (v7 = sub_2259F1C5C(v5), (v8 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_2259CB810(*(v6 + 56) + 32 * v7, v12);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = v11;
LABEL_9:
  *a2 = v10;
  return result;
}

uint64_t sub_225AD653C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  v7 = sub_225CCF454();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  if (qword_27D739F68 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_27D73D108);
  (*(v8 + 16))(v10, v12, v7);
  v17 = &type metadata for ISO18013PresentmentType;
  v16[0] = v11;
  v13 = a5(v15);
  sub_225A0528C(v16, v10);
  return v13(v15, 0);
}

void (*CBORDecoder.presentmentType.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = sub_225CCF454();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 88) = v8;
  CBORDecoder.presentmentType.getter((v5 + 96));
  return sub_225AD677C;
}

void sub_225AD6794(uint64_t a1, char a2, uint64_t (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  if (a2)
  {
    if (qword_27D739F68 != -1)
    {
      swift_once();
    }

    v7 = v4[10];
    v6 = v4[11];
    v8 = v4[9];
    v9 = __swift_project_value_buffer(v8, qword_27D73D108);
    (*(v7 + 16))(v6, v9, v8);
    v16 = &type metadata for ISO18013PresentmentType;
    v15[0] = v5;
    v10 = a3(v4);
    sub_225A0528C(v15, v6);
    v10(v4, 0);
  }

  else
  {
    if (qword_27D739F68 != -1)
    {
      swift_once();
    }

    v11 = v4[10];
    v6 = v4[11];
    v12 = v4[9];
    v13 = __swift_project_value_buffer(v12, qword_27D73D108);
    (*(v11 + 16))(v6, v13, v12);
    v16 = &type metadata for ISO18013PresentmentType;
    v15[0] = v5;
    v14 = a3(v4 + 4);
    sub_225A0528C(v15, v6);
    v14(v4 + 4, 0);
  }

  free(v6);

  free(v4);
}

uint64_t sub_225AD6968@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  if (qword_27D739F70 != -1)
  {
    swift_once();
  }

  v4 = sub_225CCF454();
  v5 = __swift_project_value_buffer(v4, qword_27D73D120);
  v6 = a1();
  if (!*(v6 + 16) || (v7 = sub_2259F1C5C(v5), (v8 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_2259CB810(*(v6 + 56) + 32 * v7, v12);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = v11;
LABEL_9:
  *a2 = v10;
  return result;
}

uint64_t sub_225AD6A5C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  v7 = sub_225CCF454();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  if (qword_27D739F70 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_27D73D120);
  (*(v8 + 16))(v10, v12, v7);
  v17 = &type metadata for ISO18013CodingKeyFormat;
  v16[0] = v11;
  v13 = a5(v15);
  sub_225A0528C(v16, v10);
  return v13(v15, 0);
}

uint64_t sub_225AD6BD8(char *a1, uint64_t (*a2)(_BYTE *))
{
  v4 = sub_225CCF454();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  if (qword_27D739F70 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27D73D120);
  (*(v5 + 16))(v7, v9, v4);
  v14 = &type metadata for ISO18013CodingKeyFormat;
  v13[0] = v8;
  v10 = a2(v12);
  sub_225A0528C(v13, v7);
  return v10(v12, 0);
}

void (*CBORDecoder.codingKeyFormat.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = sub_225CCF454();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 88) = v8;
  CBORDecoder.codingKeyFormat.getter((v5 + 96));
  return sub_225AD6E10;
}

void sub_225AD6E28(uint64_t a1, char a2, uint64_t (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  if (a2)
  {
    if (qword_27D739F70 != -1)
    {
      swift_once();
    }

    v7 = v4[10];
    v6 = v4[11];
    v8 = v4[9];
    v9 = __swift_project_value_buffer(v8, qword_27D73D120);
    (*(v7 + 16))(v6, v9, v8);
    v16 = &type metadata for ISO18013CodingKeyFormat;
    v15[0] = v5;
    v10 = a3(v4);
    sub_225A0528C(v15, v6);
    v10(v4, 0);
  }

  else
  {
    if (qword_27D739F70 != -1)
    {
      swift_once();
    }

    v11 = v4[10];
    v6 = v4[11];
    v12 = v4[9];
    v13 = __swift_project_value_buffer(v12, qword_27D73D120);
    (*(v11 + 16))(v6, v13, v12);
    v16 = &type metadata for ISO18013CodingKeyFormat;
    v15[0] = v5;
    v14 = a3(v4 + 4);
    sub_225A0528C(v15, v6);
    v14(v4 + 4, 0);
  }

  free(v6);

  free(v4);
}

unint64_t sub_225AD6FE4()
{
  result = qword_27D73D140;
  if (!qword_27D73D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D140);
  }

  return result;
}

unint64_t sub_225AD703C()
{
  result = qword_27D73D148;
  if (!qword_27D73D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D148);
  }

  return result;
}

unint64_t sub_225AD7094()
{
  result = qword_27D73D150;
  if (!qword_27D73D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D150);
  }

  return result;
}

void *keypath_get_3Tm@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, _BYTE *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t RFC8152SigStructure.init(protected:externalAdditionalAuthenticationData:payload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

double RFC8152SigStructure.init(algorithm:payload:encoder:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28, &unk_225CE4AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  sub_225B2C828(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30, &qword_225CD4610);
  sub_2259DB480();
  v11 = sub_225CCD3F4();
  v13 = v12;

  if (v5)
  {
    sub_2259BEF00(a2, a3);
  }

  else
  {
    *a5 = v11;
    *(a5 + 8) = v13;
    result = 0.0;
    *(a5 + 16) = xmmword_225CD4150;
    *(a5 + 32) = a2;
    *(a5 + 40) = a3;
  }

  return result;
}

uint64_t RFC8152SigStructure.protected.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t RFC8152SigStructure.protected.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t RFC8152SigStructure.externalAdditionalAuthenticationData.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t RFC8152SigStructure.externalAdditionalAuthenticationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RFC8152SigStructure.payload.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB710(v1, *(v0 + 40));
  return v1;
}

uint64_t RFC8152SigStructure.payload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RFC8152SigStructure.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v14 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
  sub_225CCF8B4();
  if (!v2)
  {
    v10 = v6;
    __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
    sub_2259CB710(v3, v4);
    sub_2259D9454();
    sub_225CCF8C4();
    sub_2259BEF00(v3, v4);
    v8 = v14;
    v11 = v14;
    __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
    sub_2259CB710(v8, v5);
    sub_225CCF8C4();
    sub_2259BEF00(v11, v5);
    __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
    sub_2259CB710(v10, v7);
    sub_225CCF8C4();
    sub_2259BEF00(v10, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_225AD7678(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225AD76CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

double RFC8152MACStructure.init(algorithm:payload:encoder:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28, &unk_225CE4AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  sub_225B2C828(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30, &qword_225CD4610);
  sub_2259DB480();
  v11 = sub_225CCD3F4();
  v13 = v12;

  if (v5)
  {
    sub_2259BEF00(a2, a3);
  }

  else
  {
    *a5 = v11;
    *(a5 + 8) = v13;
    result = 0.0;
    *(a5 + 16) = xmmword_225CD4150;
    *(a5 + 32) = a2;
    *(a5 + 40) = a3;
  }

  return result;
}

uint64_t RFC8152MACStructure.protected.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t RFC8152MACStructure.protected.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t RFC8152MACStructure.externalAdditionalAuthenticationData.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t RFC8152MACStructure.externalAdditionalAuthenticationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RFC8152MACStructure.payload.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB710(v1, *(v0 + 40));
  return v1;
}

uint64_t RFC8152MACStructure.payload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RFC8152MACStructure.init(protected:externalAdditionalAuthenticationData:payload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t RFC8152MACStructure.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v14 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
  sub_225CCF8B4();
  if (!v2)
  {
    v10 = v6;
    __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
    sub_2259CB710(v3, v4);
    sub_2259D9454();
    sub_225CCF8C4();
    sub_2259BEF00(v3, v4);
    v8 = v14;
    v11 = v14;
    __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
    sub_2259CB710(v8, v5);
    sub_225CCF8C4();
    sub_2259BEF00(v11, v5);
    __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
    sub_2259CB710(v10, v7);
    sub_225CCF8C4();
    sub_2259BEF00(v10, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t AnyCodable.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_225CCD0B4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for AnyCodable(0);

  return swift_storeEnumTagMultiPayload();
}

{
  sub_225AD9AE8(a1, a2, type metadata accessor for ISO23220.BirthDate);
  type metadata accessor for AnyCodable(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for AnyCodable(uint64_t a1)
{
  result = qword_27D73D220;
  if (!qword_27D73D220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnyCodable.init(value:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for AnyCodable(0);

  return swift_storeEnumTagMultiPayload();
}

{
  *a2 = a1;
  type metadata accessor for AnyCodable(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t AnyCodable.init(value:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for AnyCodable(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t AnyCodable.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  return sub_225AD7D68(a1, a2, a4);
}

{
  return sub_225AD7D68(a1, a2, a4);
}

uint64_t sub_225AD7D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for AnyCodable(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t AnyCodable.init(value:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  type metadata accessor for AnyCodable(0);

  return swift_storeEnumTagMultiPayload();
}

{
  *a2 = *a1;
  type metadata accessor for AnyCodable(0);

  return swift_storeEnumTagMultiPayload();
}

{
  *a2 = *a1;
  type metadata accessor for AnyCodable(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_225AD7E54(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    sub_2259F18D4(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = sub_225AD7FBC(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225AD7FBC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_2259F18D4(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225AD80F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCodable(0);
  v58 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1A8, &qword_225CE4E70);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v10);
  v15 = (&v51 - v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = a2;
  v54 = v7;
  v16 = 0;
  v52 = a1;
  v17 = *(a1 + 64);
  v51 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v22 = &qword_27D73D1B0;
  v23 = &qword_225CE4E78;
  while (v20)
  {
    v56 = (v20 - 1) & v20;
    v24 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v30 = *(*(v52 + 48) + 8 * v24);
    v31 = v57;
    sub_225AD8A9C(*(v52 + 56) + *(v58 + 72) * v24, v57);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v33 = *(v32 + 48);
    *v12 = v30;
    sub_225AD9AE8(v31, v12 + v33, type metadata accessor for AnyCodable);
    (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    v27 = v54;
LABEL_17:
    sub_2259D88EC(v12, v15, &qword_27D73D1A8, &qword_225CE4E70);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v35 = (*(*(v34 - 8) + 48))(v15, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return 1;
    }

    v37 = *(v34 + 48);
    v38 = *v15;
    sub_225AD9AE8(v15 + v37, v27, type metadata accessor for AnyCodable);
    v39 = v53;
    v40 = sub_2259F1900(v38);
    if ((v41 & 1) == 0)
    {
      sub_225ADAAD4(v27, type metadata accessor for AnyCodable);
      return 0;
    }

    v42 = v36;
    v43 = *(v39 + 56) + *(v58 + 72) * v40;
    v44 = v23;
    v45 = v21;
    v46 = v22;
    v47 = v15;
    v48 = v57;
    sub_225AD8A9C(v43, v57);
    v55 = _s13CoreIDVShared10AnyCodableO2eeoiySbAC_ACtFZ_0(v48, v27);
    v49 = v48;
    v15 = v47;
    v22 = v46;
    v21 = v45;
    v23 = v44;
    sub_225ADAAD4(v49, type metadata accessor for AnyCodable);
    result = sub_225ADAAD4(v27, type metadata accessor for AnyCodable);
    v20 = v56;
    if ((v55 & 1) == 0)
    {
      return v42;
    }
  }

  if (v21 <= v16 + 1)
  {
    v25 = v16 + 1;
  }

  else
  {
    v25 = v21;
  }

  v26 = v25 - 1;
  v27 = v54;
  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v28 >= v21)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
      (*(*(v50 - 8) + 56))(v12, 1, 1, v50);
      v56 = 0;
      v16 = v26;
      goto LABEL_17;
    }

    v29 = *(v51 + 8 * v28);
    ++v16;
    if (v29)
    {
      v56 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v16 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225AD856C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCodable(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1D8, &qword_225CE4E88);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v50 = a2;
  v51 = (&v48 - v15);
  v16 = 0;
  v49 = a1;
  v17 = *(a1 + 64);
  v48 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v53 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v16 << 6);
    v23 = v52;
LABEL_16:
    v28 = (*(v49 + 48) + 16 * v22);
    v29 = *v28;
    v30 = v28[1];
    sub_225AD8A9C(*(v49 + 56) + *(v5 + 72) * v22, v10);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8, &qword_225CE4E98);
    v32 = *(v31 + 48);
    *v23 = v29;
    v23[1] = v30;
    sub_225AD9AE8(v10, v23 + v32, type metadata accessor for AnyCodable);
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);

LABEL_17:
    v33 = v51;
    sub_2259D88EC(v23, v51, &qword_27D73D1D8, &qword_225CE4E88);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8, &qword_225CE4E98);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = v5;
    v38 = *(v34 + 48);
    v40 = *v33;
    v39 = v33[1];
    sub_225AD9AE8(v33 + v38, v8, type metadata accessor for AnyCodable);
    v41 = v50;
    v42 = sub_2259F18D4(v40, v39);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      sub_225ADAAD4(v8, type metadata accessor for AnyCodable);
      return 0;
    }

    v45 = *(v41 + 56);
    v5 = v37;
    sub_225AD8A9C(v45 + *(v37 + 72) * v42, v10);
    v46 = _s13CoreIDVShared10AnyCodableO2eeoiySbAC_ACtFZ_0(v10, v8);
    sub_225ADAAD4(v10, type metadata accessor for AnyCodable);
    result = sub_225ADAAD4(v8, type metadata accessor for AnyCodable);
    v20 = v53;
    if ((v46 & 1) == 0)
    {
      return v36;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  v23 = v52;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8, &qword_225CE4E98);
      (*(*(v47 - 8) + 56))(v23, 1, 1, v47);
      v53 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v48 + 8 * v26);
    ++v16;
    if (v27)
    {
      v53 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnyCodable.BOOLValue.getter()
{
  v1 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v0, v3);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v3;
  }

  sub_225ADAAD4(v3, type metadata accessor for AnyCodable);
  return 2;
}

uint64_t sub_225AD8A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCodable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AnyCodable.intValue.getter()
{
  v1 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v3;
  }

  sub_225ADAAD4(v3, type metadata accessor for AnyCodable);
  return 0;
}

uint64_t AnyCodable.uintValue.getter()
{
  v1 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return *v3;
  }

  sub_225ADAAD4(v3, type metadata accessor for AnyCodable);
  return 0;
}

unint64_t AnyCodable.floatValue.getter()
{
  v1 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_225AD8A9C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v5 = *v3;
  }

  else
  {
    sub_225ADAAD4(v3, type metadata accessor for AnyCodable);
    v5 = 0;
  }

  return v5 | ((EnumCaseMultiPayload != 3) << 32);
}

uint64_t AnyCodable.doubleValue.getter()
{
  v1 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    return *v3;
  }

  sub_225ADAAD4(v3, type metadata accessor for AnyCodable);
  return 0;
}

uint64_t AnyCodable.dateValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v7 = sub_225CCD0B4();
    v8 = *(v7 - 8);
    (*(v8 + 32))(a1, v6, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    sub_225ADAAD4(v6, type metadata accessor for AnyCodable);
    v10 = sub_225CCD0B4();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t AnyCodable.birthDateValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_225AD9AE8(v6, a1, type metadata accessor for ISO23220.BirthDate);
    v7 = 0;
  }

  else
  {
    sub_225ADAAD4(v6, type metadata accessor for AnyCodable);
    v7 = 1;
  }

  v8 = type metadata accessor for ISO23220.BirthDate(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t AnyCodable.stringValue.getter()
{
  v1 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    return *v3;
  }

  sub_225ADAAD4(v3, type metadata accessor for AnyCodable);
  return 0;
}

uint64_t AnyCodable.arrayValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_225AD8A9C(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result == 8)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_225ADAAD4(v6, type metadata accessor for AnyCodable);
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t AnyCodable.dictValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_225AD8A9C(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result == 9)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_225ADAAD4(v6, type metadata accessor for AnyCodable);
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t AnyCodable.integerKeyedDictValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_225AD8A9C(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result == 10)
  {
    v8 = *v6;
  }

  else
  {
    result = sub_225ADAAD4(v6, type metadata accessor for AnyCodable);
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t AnyCodable.dataValue.getter()
{
  v1 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 11)
  {
    return *v3;
  }

  sub_225ADAAD4(v3, type metadata accessor for AnyCodable);
  return 0;
}

uint64_t AnyCodable.init(value:)@<X0>(float *a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  type metadata accessor for AnyCodable(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t AnyCodable.init(value:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  type metadata accessor for AnyCodable(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t AnyCodable.init(value:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ISO23220.BirthDate(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCD0B4();
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnyCodable(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_dynamicCast())
  {
    *v13 = v19;
  }

  else if (swift_dynamicCast())
  {
    v14 = *(&v19 + 1);
    *v13 = v19;
    *(v13 + 1) = v14;
  }

  else if (swift_dynamicCast())
  {
    *v13 = v19;
  }

  else if (swift_dynamicCast())
  {
    *v13 = v19;
  }

  else if (swift_dynamicCast())
  {
    *v13 = v19;
  }

  else if (swift_dynamicCast())
  {
    *v13 = v19;
  }

  else if (swift_dynamicCast())
  {
    (*(v18 + 32))(v13, v9, v7);
  }

  else if (swift_dynamicCast())
  {
    sub_225AD9AE8(v6, v13, type metadata accessor for ISO23220.BirthDate);
  }

  else if (swift_dynamicCast())
  {
    *v13 = v19;
  }

  else if (swift_dynamicCast())
  {
    *v13 = v19;
  }

  else if (swift_dynamicCast())
  {
    *v13 = v19;
  }

  else
  {
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(a1);
      v15 = 1;
      return (*(v11 + 56))(a2, v15, 1, v10);
    }

    *v13 = v19;
  }

  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_225AD9AE8(v13, a2, type metadata accessor for AnyCodable);
  v15 = 0;
  return (*(v11 + 56))(a2, v15, 1, v10);
}

uint64_t sub_225AD9AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AnyCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D160, &unk_225CE4E60);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = v23 - v4;
  v5 = type metadata accessor for ISO23220.BirthDate(0);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v25 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  v10 = sub_225CCD0B4();
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v32;
  sub_225CCFC84();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v23[1] = v12;
    v23[2] = v9;
    v32 = a1;
    v24 = v15;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v19 = sub_225CCF964();
    v20 = v24;
    *v24 = v19 & 1;
    v21 = v32;
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_0(v31);
    sub_225AD9AE8(v20, v18, type metadata accessor for AnyCodable);
    v17 = v21;
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

unint64_t sub_225ADA404()
{
  result = qword_27D73D168;
  if (!qword_27D73D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D168);
  }

  return result;
}

uint64_t sub_225ADA458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_225ADA4A0()
{
  result = qword_27D73D178;
  if (!qword_27D73D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D178);
  }

  return result;
}

unint64_t sub_225ADA4F4()
{
  result = qword_27D73D180;
  if (!qword_27D73D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D180);
  }

  return result;
}

uint64_t AnyCodable.encode(to:)(void *a1)
{
  v2 = v1;
  v17 = type metadata accessor for ISO23220.BirthDate(0);
  MEMORY[0x28223BE20](v17);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCD0B4();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  sub_225AD8A9C(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v19 = *v11;
        __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
        sub_225ADAB88();
      }

      else
      {
        if (EnumCaseMultiPayload != 10)
        {
          v16 = v11[1];
          v19 = *v11;
          v15 = v19;
          v20 = v16;
          __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
          sub_2259D9454();
          sub_225CCFA34();
          sub_2259BEF00(v15, v16);
          return __swift_destroy_boxed_opaque_existential_0(v21);
        }

        v19 = *v11;
        __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
        sub_225ADAB34();
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_225AD9AE8(v11, v5, type metadata accessor for ISO23220.BirthDate);
        __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
        sub_225ADA458(&qword_27D73D188, type metadata accessor for ISO23220.BirthDate, &protocol conformance descriptor for ISO23220.BirthDate);
        sub_225CCFA34();
        sub_225ADAAD4(v5, type metadata accessor for ISO23220.BirthDate);
        return __swift_destroy_boxed_opaque_existential_0(v21);
      }

      if (EnumCaseMultiPayload == 7)
      {
        __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
        sub_225CCF9D4();
LABEL_23:

        return __swift_destroy_boxed_opaque_existential_0(v21);
      }

      v19 = *v11;
      __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
      sub_225ADABDC();
    }

    sub_225CCFA34();
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
      sub_225CCFA04();
    }

    else if (EnumCaseMultiPayload == 4)
    {
      __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
      sub_225CCF9F4();
    }

    else
    {
      v14 = v18;
      (*(v18 + 32))(v8, v11, v6);
      __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
      sub_225ADA458(&qword_27D73BE18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
      sub_225CCFA34();
      (*(v14 + 8))(v8, v6);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
      sub_225CCFA14();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
      sub_225CCFA24();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
    sub_225CCF9E4();
  }

  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_225ADAAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_225ADAB34()
{
  result = qword_27D73D190;
  if (!qword_27D73D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D190);
  }

  return result;
}

unint64_t sub_225ADAB88()
{
  result = qword_27D73D198;
  if (!qword_27D73D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D198);
  }

  return result;
}

unint64_t sub_225ADABDC()
{
  result = qword_27D73D1A0;
  if (!qword_27D73D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D1A0);
  }

  return result;
}

id sub_225ADAC30()
{
  v1 = v0;
  v2 = type metadata accessor for ISO23220.BirthDate(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCD0B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_225AD8A9C(v1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload != 9)
      {
        if (EnumCaseMultiPayload != 10)
        {
          v21 = *v11;
          v22 = v11[1];
          v23 = sub_225CCCF74();
          sub_2259BEF00(v21, v22);
          return v23;
        }

        v25 = *v11;
        IntegerKeyedAnyCodableDictionary.asNSDictionary()();

        sub_2259D8718(0, &qword_281059A70, 0x277CCABB0);
        sub_2259D8718(0, &qword_281059A68, 0x277D82BB8);
        sub_225ADF99C();
        v15 = sub_225CCE2B4();
        goto LABEL_22;
      }

      sub_225ADE054(*v11);

      sub_2259D8718(0, &qword_281059A68, 0x277D82BB8);
      v16 = sub_225CCE2B4();
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v14 = sub_225CCE444();

          return v14;
        }

        v25 = *v11;
        AnyCodableArray.asNSArray()();

        sub_2259D8718(0, &qword_281059A68, 0x277D82BB8);
        v15 = sub_225CCE7F4();
LABEL_22:
        v16 = v15;

        return v16;
      }

      sub_225AD9AE8(v11, v4, type metadata accessor for ISO23220.BirthDate);
      v16 = sub_225CCCAA4();
      sub_225ADAAD4(v4, type metadata accessor for ISO23220.BirthDate);
    }

    return v16;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v17 = *v11;
      v18 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v19) = v17;
      return [v18 initWithFloat_];
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    else
    {
      (*(v6 + 32))(v8, v11, v5);
      v20 = sub_225CCD034();
      (*(v6 + 8))(v8, v5);
      return v20;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    }

    else
    {
      return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    }
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }
}

uint64_t AnyCodableArray.asNSArray()()
{
  v1 = type metadata accessor for AnyCodable(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v11 = MEMORY[0x277D84F90];
    sub_225CCF394();
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_225AD8A9C(v8, v4);
      sub_225ADAC30();
      sub_225ADAAD4(v4, type metadata accessor for AnyCodable);
      sub_225CCF364();
      sub_225CCF3A4();
      sub_225CCF3B4();
      sub_225CCF374();
      v8 += v9;
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t IntegerKeyedAnyCodableDictionary.asNSDictionary()()
{
  v1 = type metadata accessor for AnyCodable(0);
  v55 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v54 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1A8, &qword_225CE4E70);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v58 = (&v54 - v10);
  v11 = *v0;

  v12 = sub_225B2DE9C(MEMORY[0x277D84F90]);
  v13 = 0;
  v15 = v11 + 64;
  v14 = *(v11 + 64);
  v56 = v11;
  v57 = v9;
  v16 = 1 << *(v11 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v60 = v4;
  while (v18)
  {
    v22 = v13;
LABEL_15:
    v25 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v26 = v25 | (v22 << 6);
    v27 = *(*(v56 + 48) + 8 * v26);
    v28 = v54;
    sub_225AD8A9C(*(v56 + 56) + *(v55 + 72) * v26, v54);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0, &qword_225CE4E78);
    v30 = *(v29 + 48);
    *v9 = v27;
    sub_225AD9AE8(v28, v9 + v30, type metadata accessor for AnyCodable);
    (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
    v24 = v22;
LABEL_16:
    v31 = v58;
    sub_2259D88EC(v9, v58, &qword_27D73D1A8, &qword_225CE4E70);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0, &qword_225CE4E78);
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
    {

      return v12;
    }

    v33 = v31;
    v34 = *v31;
    sub_225AD9AE8(v33 + *(v32 + 48), v60, type metadata accessor for AnyCodable);
    v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v36 = sub_225ADAC30();
    v59 = v24;
    if ((v12 & 0xC000000000000001) != 0)
    {
      if (v12 < 0)
      {
        v37 = v12;
      }

      else
      {
        v37 = v12 & 0xFFFFFFFFFFFFFF8;
      }

      v38 = sub_225CCF144();
      if (__OFADD__(v38, 1))
      {
        goto LABEL_38;
      }

      v12 = sub_225ACD7B8(v37, v38 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v12;
    v41 = sub_2259F1E3C(v35);
    v42 = *(v12 + 16);
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_37;
    }

    v45 = v40;
    if (*(v12 + 24) >= v44)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v48 = v60;
        v12 = v61;
        if (v40)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_225A44D40();
        v48 = v60;
        v12 = v61;
        if (v45)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_225A41C8C(v44, isUniquelyReferenced_nonNull_native);
      v46 = sub_2259F1E3C(v35);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_40;
      }

      v41 = v46;
      v48 = v60;
      v12 = v61;
      if (v45)
      {
LABEL_4:
        v20 = *(v12 + 56);
        v21 = *(v20 + 8 * v41);
        *(v20 + 8 * v41) = v36;

        sub_225ADAAD4(v48, type metadata accessor for AnyCodable);
        goto LABEL_5;
      }
    }

    *(v12 + 8 * (v41 >> 6) + 64) |= 1 << v41;
    *(*(v12 + 48) + 8 * v41) = v35;
    *(*(v12 + 56) + 8 * v41) = v36;
    sub_225ADAAD4(v48, type metadata accessor for AnyCodable);
    v49 = *(v12 + 16);
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      goto LABEL_39;
    }

    *(v12 + 16) = v51;
LABEL_5:
    v13 = v59;
    v9 = v57;
  }

  if (v19 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0, &qword_225CE4E78);
      (*(*(v52 - 8) + 56))(v9, 1, 1, v52);
      v18 = 0;
      goto LABEL_16;
    }

    v18 = *(v15 + 8 * v22);
    ++v13;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_2259D8718(0, &qword_281059A70, 0x277CCABB0);
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

__n128 AnyCodable.value.getter@<Q0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_225AD8A9C(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        a1[3] = type metadata accessor for ISO23220.BirthDate(0);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        sub_225AD9AE8(v6, boxed_opaque_existential_1, type metadata accessor for ISO23220.BirthDate);
        return result;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v11 = *v6;
        v12 = v6[1];
        a1[3] = MEMORY[0x277D837D0];
        *a1 = v11;
        a1[1] = v12;
        return result;
      }

      v9 = *v6;
      v10 = &type metadata for AnyCodableArray;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v9 = *v6;
      v10 = &type metadata for AnyCodableDictionary;
    }

    else
    {
      if (EnumCaseMultiPayload != 10)
      {
        a1[3] = MEMORY[0x277CC9318];
        result = *v6;
        *a1 = *v6;
        return result;
      }

      v9 = *v6;
      v10 = &type metadata for IntegerKeyedAnyCodableDictionary;
    }

LABEL_22:
    a1[3] = v10;
    *a1 = v9;
    return result;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = *v6;
      a1[3] = MEMORY[0x277D839B0];
      *a1 = v13;
      return result;
    }

    v9 = *v6;
    if (EnumCaseMultiPayload == 1)
    {
      v10 = MEMORY[0x277D83B88];
    }

    else
    {
      v10 = MEMORY[0x277D83E88];
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 3)
  {
    result.n128_u32[0] = *v6;
    a1[3] = MEMORY[0x277D83A90];
    *a1 = result.n128_u32[0];
  }

  else if (EnumCaseMultiPayload == 4)
  {
    result.n128_u64[0] = *v6;
    a1[3] = MEMORY[0x277D839F8];
    *a1 = result.n128_u64[0];
  }

  else
  {
    v15 = sub_225CCD0B4();
    a1[3] = v15;
    v16 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v15 - 8) + 32))(v16, v6, v15);
  }

  return result;
}

uint64_t AnyCodable.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ISO23220.BirthDate(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCD0B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnyCodable(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v32 - v16);
  sub_225AD8A9C(v2, &v32 - v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v25 = *v17;
        MEMORY[0x22AA6E420](9);
        sub_225ADE8CC(a1, v25);
      }

      else
      {
        if (EnumCaseMultiPayload != 10)
        {
          v30 = *v17;
          v31 = v17[1];
          MEMORY[0x22AA6E420](11);
          sub_225CCCFB4();
          return sub_2259BEF00(v30, v31);
        }

        v24 = *v17;
        MEMORY[0x22AA6E420](10);
        sub_225ADE4E8(a1, v24);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_225AD9AE8(v17, v6, type metadata accessor for ISO23220.BirthDate);
        MEMORY[0x22AA6E420](6);
        sub_225CCCB74();
        sub_225ADA458(&qword_27D73D1B8, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
        sub_225CCE354();
        return sub_225ADAAD4(v6, type metadata accessor for ISO23220.BirthDate);
      }

      if (EnumCaseMultiPayload == 7)
      {
        MEMORY[0x22AA6E420](7);
        sub_225CCE5B4();
      }

      v26 = *v17;
      MEMORY[0x22AA6E420](8);
      MEMORY[0x22AA6E420](*(v26 + 16));
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = v26 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v29 = *(v12 + 72);
        do
        {
          sub_225AD8A9C(v28, v15);
          AnyCodable.hash(into:)(a1);
          sub_225ADAAD4(v15, type metadata accessor for AnyCodable);
          v28 += v29;
          --v27;
        }

        while (v27);
      }
    }
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      MEMORY[0x22AA6E420](3);
      return sub_225CCFC04();
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v22 = *v17;
      MEMORY[0x22AA6E420](4);
      v23 = 0.0;
      if (v22 != 0.0)
      {
        v23 = v22;
      }

      return MEMORY[0x22AA6E450](*&v23);
    }

    else
    {
      (*(v8 + 32))(v10, v17, v7);
      MEMORY[0x22AA6E420](5);
      sub_225ADA458(&qword_27D73D1C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_225CCE354();
      return (*(v8 + 8))(v10, v7);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v19 = *v17;
    if (EnumCaseMultiPayload == 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    MEMORY[0x22AA6E420](v20);
    return MEMORY[0x22AA6E420](v19);
  }

  else
  {
    MEMORY[0x22AA6E420](0);
    return sub_225CCFBF4();
  }
}

uint64_t AnyCodable.hashValue.getter()
{
  sub_225CCFBD4();
  AnyCodable.hash(into:)(v1);
  return sub_225CCFC24();
}

uint64_t sub_225ADBF18()
{
  sub_225CCFBD4();
  AnyCodable.hash(into:)(v1);
  return sub_225CCFC24();
}

uint64_t sub_225ADBF5C()
{
  sub_225CCFBD4();
  AnyCodable.hash(into:)(v1);
  return sub_225CCFC24();
}

uint64_t AnyCodableArray.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for AnyCodable(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (!v2)
  {
    v17 = a2;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = sub_225CCF894();
    v10 = MEMORY[0x277D84F90];
    if ((v9 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_0(v15, v16);
        sub_225ADA458(&qword_27D73C0D0, type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
        sub_225CCF884();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_225B2A4CC(0, v10[2] + 1, 1, v10);
        }

        v12 = v10[2];
        v11 = v10[3];
        if (v12 >= v11 >> 1)
        {
          v10 = sub_225B2A4CC((v11 > 1), v12 + 1, 1, v10);
        }

        v10[2] = v12 + 1;
        sub_225AD9AE8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, type metadata accessor for AnyCodable);
        __swift_project_boxed_opaque_existential_1(v15, v16);
      }

      while ((sub_225CCF894() & 1) == 0);
    }

    __swift_destroy_boxed_opaque_existential_0(v15);
    *v17 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void *AnyCodableArray.encode(to:)(void *a1)
{
  v13 = type metadata accessor for AnyCodable(0);
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_225CCFCC4();
  v9 = *(v7 + 16);
  if (!v9)
  {
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  v10 = 0;
  while (v10 < *(v7 + 16))
  {
    sub_225AD8A9C(v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v6);
    __swift_mutable_project_boxed_opaque_existential_0(v12, v12[3]);
    sub_225ADA458(&qword_27D73C0E8, type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
    sub_225CCF8C4();
    if (v2)
    {
      sub_225ADAAD4(v6, type metadata accessor for AnyCodable);
      return __swift_destroy_boxed_opaque_existential_0(v12);
    }

    ++v10;
    result = sub_225ADAAD4(v6, type metadata accessor for AnyCodable);
    if (v9 == v10)
    {
      return __swift_destroy_boxed_opaque_existential_0(v12);
    }
  }

  __break(1u);
  return result;
}

uint64_t AnyCodableArray.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for AnyCodable(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  result = MEMORY[0x22AA6E420](*(*v1 + 16));
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_225AD8A9C(v10, v6);
      AnyCodable.hash(into:)(a1);
      result = sub_225ADAAD4(v6, type metadata accessor for AnyCodable);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t AnyCodableArray.hashValue.getter()
{
  v1 = type metadata accessor for AnyCodable(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_225AD8A9C(v7, v4);
      AnyCodable.hash(into:)(v11);
      sub_225ADAAD4(v4, type metadata accessor for AnyCodable);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  return sub_225CCFC24();
}

uint64_t sub_225ADC658()
{
  v1 = type metadata accessor for AnyCodable(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_225AD8A9C(v7, v4);
      AnyCodable.hash(into:)(v11);
      sub_225ADAAD4(v4, type metadata accessor for AnyCodable);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  return sub_225CCFC24();
}

uint64_t GenericCodingKeys.stringValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GenericCodingKeys.stringValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

CoreIDVShared::GenericCodingKeys __swiftcall GenericCodingKeys.init(stringValue:)(CoreIDVShared::GenericCodingKeys stringValue)
{
  *(v1 + 8) = stringValue.stringValue._object;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *v1 = stringValue.stringValue._countAndFlagsBits;
  return stringValue;
}

uint64_t GenericCodingKeys.intValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void __swiftcall GenericCodingKeys.init(intValue:)(CoreIDVShared::GenericCodingKeys_optional *__return_ptr retstr, Swift::Int intValue)
{
  retstr->value.stringValue._countAndFlagsBits = sub_225CCF824();
  retstr->value.stringValue._object = v4;
  retstr->value.intValue.value = intValue;
  retstr->value.intValue.is_nil = 0;
}

uint64_t sub_225ADC8F0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_225ADC920@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_225ADC944(uint64_t a1)
{
  v2 = sub_225ADF52C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225ADC980(uint64_t a1)
{
  v2 = sub_225ADF52C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnyCodableDictionary.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for AnyCodable(0);
  v51 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1C8, &qword_225CE4E80);
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ADF52C();
  v12 = v59;
  sub_225CCFCA4();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v48 = v8;
  v49 = v6;
  v59 = 0;
  v43 = a1;
  v14 = sub_225B2D5A0(MEMORY[0x277D84F90]);
  v50 = v9;
  v15 = sub_225CCF6F4();
  v16 = v15;
  v17 = v11;
  v47 = *(v15 + 16);
  if (!v47)
  {
    v21 = v52;
LABEL_21:
    (*(v21 + 8))(v17, v50);

    v42 = v43;
    *v44 = v14;
    return __swift_destroy_boxed_opaque_existential_0(v42);
  }

  v18 = 0;
  v19 = (v15 + 56);
  v20 = v49;
  v21 = v52;
  v45 = v15;
  v46 = v11;
  while (v18 < *(v16 + 16))
  {
    v53 = v19;
    v54 = v18;
    v23 = *(v19 - 3);
    v22 = *(v19 - 2);
    v24 = *v19;
    v25 = *(v19 - 1);
    v55 = v23;
    v56 = v22;
    v57 = v25;
    v58 = v24;
    sub_225ADA458(&qword_27D73C0D0, type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
    swift_bridgeObjectRetain_n();
    v26 = v48;
    v27 = v59;
    sub_225CCF6E4();
    v59 = v27;
    if (v27)
    {
      (*(v21 + 8))(v46, v50);

      swift_bridgeObjectRelease_n();
      a1 = v43;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    sub_225AD9AE8(v26, v20, type metadata accessor for AnyCodable);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v14;
    v30 = sub_2259F18D4(v23, v22);
    v31 = v14[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    if (v14[3] >= v33)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = v51;
        if (v29)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_225A44EA4();
        v37 = v51;
        if (v34)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_225A41F00(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_2259F18D4(v23, v22);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_27;
      }

      v30 = v35;
      v37 = v51;
      if (v34)
      {
LABEL_5:

        v14 = v55;
        v20 = v49;
        sub_225ADF580(v49, v55[7] + *(v37 + 72) * v30);
        goto LABEL_6;
      }
    }

    v14 = v55;
    v55[(v30 >> 6) + 8] |= 1 << v30;
    v38 = (v14[6] + 16 * v30);
    *v38 = v23;
    v38[1] = v22;
    v20 = v49;
    sub_225AD9AE8(v49, v14[7] + *(v37 + 72) * v30, type metadata accessor for AnyCodable);
    v39 = v14[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_26;
    }

    v14[2] = v41;
LABEL_6:
    v18 = v54 + 1;
    v19 = v53 + 32;
    v17 = v46;
    v21 = v52;
    v16 = v45;
    if (v47 == v54 + 1)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

uint64_t AnyCodableDictionary.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v54 = type metadata accessor for AnyCodable(0);
  v51 = *(v54 - 8);
  v6 = MEMORY[0x28223BE20](v54);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1D8, &qword_225CE4E88);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v55 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E0, &qword_225CE4E90);
  v48 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v16 = &v48 - v15;
  v17 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ADF52C();

  v56 = v16;
  result = sub_225CCFCE4();
  v19 = 0;
  v21 = v17 + 64;
  v20 = *(v17 + 64);
  v52 = v17;
  v53 = v8;
  v22 = *(v17 + 32);
  v23 = v14;
  v24 = 1 << v22;
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v20;
  v27 = (v24 + 63) >> 6;
  v49 = v14;
  if ((v25 & v20) != 0)
  {
    while (1)
    {
      v62 = v3;
      v28 = v19;
LABEL_13:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v31 | (v28 << 6);
      v33 = (*(v52 + 48) + 16 * v32);
      v34 = *v33;
      v35 = v33[1];
      v36 = v50;
      sub_225AD8A9C(*(v52 + 56) + *(v51 + 72) * v32, v50);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8, &qword_225CE4E98);
      v38 = *(v37 + 48);
      v39 = v55;
      *v55 = v34;
      v39[1] = v35;
      v40 = v39;
      sub_225AD9AE8(v36, v39 + v38, type metadata accessor for AnyCodable);
      (*(*(v37 - 8) + 56))(v40, 0, 1, v37);

      v30 = v28;
      v23 = v49;
LABEL_14:
      sub_2259D88EC(v40, v23, &qword_27D73D1D8, &qword_225CE4E88);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8, &qword_225CE4E98);
      if ((*(*(v41 - 8) + 48))(v23, 1, v41) == 1)
      {

        return (*(v48 + 8))(v56, v57);
      }

      v42 = *v23;
      v43 = v23[1];
      v44 = v23 + *(v41 + 48);
      v45 = v53;
      sub_225AD9AE8(v44, v53, type metadata accessor for AnyCodable);
      v58 = v42;
      v59 = v43;
      v60 = 0;
      v61 = 1;
      sub_225ADA458(&qword_27D73C0E8, type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
      v46 = v62;
      sub_225CCF7E4();
      v3 = v46;
      if (v46)
      {
        break;
      }

      result = sub_225ADAAD4(v45, type metadata accessor for AnyCodable);
      v19 = v30;
      if (!v26)
      {
        goto LABEL_5;
      }
    }

    sub_225ADAAD4(v45, type metadata accessor for AnyCodable);
    return (*(v48 + 8))(v56, v57);
  }

  else
  {
LABEL_5:
    if (v27 <= v19 + 1)
    {
      v29 = v19 + 1;
    }

    else
    {
      v29 = v27;
    }

    v30 = v29 - 1;
    while (1)
    {
      v28 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v28 >= v27)
      {
        v62 = v3;
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8, &qword_225CE4E98);
        v40 = v55;
        (*(*(v47 - 8) + 56))(v55, 1, 1, v47);
        v26 = 0;
        goto LABEL_14;
      }

      v26 = *(v21 + 8 * v28);
      ++v19;
      if (v26)
      {
        v62 = v3;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t IntegerKeyedAnyCodableDictionary.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for AnyCodable(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v58 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1C8, &qword_225CE4E80);
  v51 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ADF52C();
  v12 = v53;
  sub_225CCFCA4();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v49 = v8;
  v53 = 0;
  v43 = a1;
  v52 = sub_225B2DFBC(MEMORY[0x277D84F90]);
  v50 = v9;
  v14 = sub_225CCF6F4();
  v15 = *(v14 + 16);
  v16 = v11;
  if (v15)
  {
    v17 = 0;
    v18 = (v14 + 56);
    v19 = v51;
    v20 = v49;
    v46 = v4;
    v47 = v14;
    v48 = v16;
    v45 = v15;
    while (v17 < *(v14 + 16))
    {
      if ((*v18 & 1) == 0)
      {
        v22 = *(v18 - 2);
        v21 = *(v18 - 1);
        v54 = *(v18 - 3);
        v55 = v22;
        v56 = v21;
        v57 = 0;
        sub_225ADA458(&qword_27D73C0D0, type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);

        v23 = v53;
        sub_225CCF6E4();
        v53 = v23;
        if (v23)
        {
          (*(v19 + 8))(v48, v50);

          a1 = v43;
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }

        v24 = v3;

        sub_225AD9AE8(v20, v58, type metadata accessor for AnyCodable);
        v25 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v25;
        v28 = sub_2259F1900(v21);
        v29 = *(v25 + 16);
        v30 = (v27 & 1) == 0;
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          goto LABEL_25;
        }

        v32 = v27;
        if (*(v25 + 24) >= v31)
        {
          v35 = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_225A450FC();
            v35 = v49;
          }

          v3 = v24;
        }

        else
        {
          sub_225A42278(v31, isUniquelyReferenced_nonNull_native);
          v33 = sub_2259F1900(v21);
          if ((v32 & 1) != (v34 & 1))
          {
            goto LABEL_27;
          }

          v28 = v33;
          v3 = v24;
          v35 = v49;
        }

        v36 = v54;
        v37 = v46;
        v52 = v54;
        if (v32)
        {
          sub_225ADF580(v58, v54[7] + *(v46 + 72) * v28);
        }

        else
        {
          v54[(v28 >> 6) + 8] |= 1 << v28;
          *(v36[6] + 8 * v28) = v21;
          sub_225AD9AE8(v58, v36[7] + *(v37 + 72) * v28, type metadata accessor for AnyCodable);
          v38 = v36[2];
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            goto LABEL_26;
          }

          v36[2] = v40;
        }

        v19 = v51;
        v14 = v47;
        v16 = v48;
        v15 = v45;
        v20 = v35;
      }

      ++v17;
      v18 += 32;
      if (v15 == v17)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_225CCFAC4();
    __break(1u);
  }

  else
  {
    v19 = v51;
LABEL_22:

    (*(v19 + 8))(v16, v50);
    v41 = v43;
    *v44 = v52;
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  return result;
}

uint64_t IntegerKeyedAnyCodableDictionary.encode(to:)(void *a1)
{
  v2 = v1;
  v45 = type metadata accessor for AnyCodable(0);
  v43 = *(v45 - 8);
  v4 = MEMORY[0x28223BE20](v45);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1A8, &qword_225CE4E70);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (&v40 - v10);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E0, &qword_225CE4E90);
  v40 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v40 - v12;
  v14 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ADF52C();

  v47 = v13;
  result = sub_225CCFCE4();
  v16 = 0;
  v18 = v14 + 64;
  v17 = *(v14 + 64);
  v44 = v14;
  v19 = 1 << *(v14 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v41 = v11;
  if ((v20 & v17) != 0)
  {
    while (1)
    {
      v23 = v16;
LABEL_12:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v26 | (v23 << 6);
      v28 = *(*(v44 + 48) + 8 * v27);
      v29 = v42;
      sub_225AD8A9C(*(v44 + 56) + *(v43 + 72) * v27, v42);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0, &qword_225CE4E78);
      v31 = *(v30 + 48);
      v32 = v46;
      *v46 = v28;
      sub_225AD9AE8(v29, v32 + v31, type metadata accessor for AnyCodable);
      (*(*(v30 - 8) + 56))(v32, 0, 1, v30);
      v25 = v23;
      v33 = v32;
      v11 = v41;
LABEL_13:
      sub_2259D88EC(v33, v11, &qword_27D73D1A8, &qword_225CE4E70);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0, &qword_225CE4E78);
      if ((*(*(v34 - 8) + 48))(v11, 1, v34) == 1)
      {

        return (*(v40 + 8))(v47, v48);
      }

      v35 = *v11;
      sub_225AD9AE8(v11 + *(v34 + 48), v49, type metadata accessor for AnyCodable);
      v50 = v35;
      v50 = sub_225CCF824();
      v51 = v36;
      v52 = v35;
      v53 = 0;
      sub_225ADA458(&qword_27D73C0E8, type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
      v37 = v54;
      sub_225CCF7E4();
      v54 = v37;
      if (v37)
      {
        break;
      }

      sub_225ADAAD4(v49, type metadata accessor for AnyCodable);

      v16 = v25;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    sub_225ADAAD4(v49, type metadata accessor for AnyCodable);

    (*(v40 + 8))(v47, v48);
  }

  else
  {
LABEL_5:
    if (v22 <= v16 + 1)
    {
      v24 = v16 + 1;
    }

    else
    {
      v24 = v22;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0, &qword_225CE4E78);
        v39 = v46;
        (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
        v33 = v39;
        v21 = 0;
        goto LABEL_13;
      }

      v21 = *(v18 + 8 * v23);
      ++v16;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_225ADDEF4(uint64_t (*a1)(void *, uint64_t))
{
  v3 = *v1;
  sub_225CCFBD4();
  a1(v5, v3);
  return sub_225CCFC24();
}

uint64_t sub_225ADDF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_225CCFBD4();
  a3(v7, v5);
  return sub_225CCFC24();
}

uint64_t sub_225ADDFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_225CCFBD4();
  a4(v8, v6);
  return sub_225CCFC24();
}

void *sub_225ADE054(uint64_t a1)
{
  v2 = type metadata accessor for AnyCodable(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B370, &qword_225CE5350);
  result = sub_225CCF554();
  v5 = 0;
  v31 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v27 = result + 8;
  v28 = result;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(v31 + 56);
      v18 = (*(v31 + 48) + 16 * v16);
      v19 = v18[1];
      v32 = *v18;
      v20 = v29;
      sub_225AD8A9C(v17 + *(v30 + 72) * v16, v29);

      v21 = sub_225ADAC30();
      sub_225ADAAD4(v20, type metadata accessor for AnyCodable);
      result = v28;
      *(v27 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v22 = (result[6] + 16 * v16);
      *v22 = v32;
      v22[1] = v19;
      *(result[7] + 8 * v16) = v21;
      v23 = result[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      result[2] = v25;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_225ADE270(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v21 = v6;
  v22 = v2;
LABEL_6:
  if (v5)
  {
    v24 = v8;
    v10 = v9;
LABEL_12:
    v11 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v10 << 6)));
    v5 &= v5 - 1;

    sub_225CCE5B4();

    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    for (i = 0; v15; v17 = result ^ v19)
    {
      v19 = v17;
LABEL_21:
      v15 &= v15 - 1;

      sub_225CCE5B4();

      sub_225CCFBF4();
      result = sub_225CCFC24();
    }

    while (1)
    {
      v20 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        MEMORY[0x22AA6E420](v17);

        result = sub_225CCFC24();
        v8 = result ^ v24;
        v9 = v10;
        v6 = v21;
        v2 = v22;
        goto LABEL_6;
      }

      v15 = *(v12 + 8 * v20);
      ++i;
      if (v15)
      {
        v19 = v17;
        i = v20;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {

        return MEMORY[0x22AA6E420](v8);
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        v24 = v8;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225ADE4E8(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = type metadata accessor for AnyCodable(0);
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1A8, &qword_225CE4E70);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v32 - v10);
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v35 = a2;

  v18 = 0;
  v33 = v9;
  v37 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v19 << 6);
      v24 = *(*(v35 + 48) + 8 * v23);
      sub_225AD8A9C(*(v35 + 56) + *(v34 + 72) * v23, v5);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0, &qword_225CE4E78);
      v26 = *(v25 + 48);
      v9 = v33;
      *v33 = v24;
      sub_225AD9AE8(v5, &v9[v26], type metadata accessor for AnyCodable);
      (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
      v21 = v19;
LABEL_13:
      sub_2259D88EC(v9, v11, &qword_27D73D1A8, &qword_225CE4E70);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0, &qword_225CE4E78);
      if ((*(*(v27 - 8) + 48))(v11, 1, v27) == 1)
      {
        break;
      }

      v28 = *v11;
      sub_225AD9AE8(v11 + *(v27 + 48), v5, type metadata accessor for AnyCodable);
      v29 = *(v36 + 48);
      v38[2] = *(v36 + 32);
      v38[3] = v29;
      v39 = *(v36 + 64);
      v30 = *(v36 + 16);
      v38[0] = *v36;
      v38[1] = v30;
      MEMORY[0x22AA6E420](v28);
      AnyCodable.hash(into:)(v38);
      sub_225ADAAD4(v5, type metadata accessor for AnyCodable);
      result = sub_225CCFC24();
      v18 = v21;
      v37 ^= result;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x22AA6E420](v37);
  }

  else
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0, &qword_225CE4E78);
        (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_225ADE8CC(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v3 = type metadata accessor for AnyCodable(0);
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1D8, &qword_225CE4E88);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v41 = a2;

  v17 = 0;
  v18 = 0;
  v43 = v8;
  v19 = &qword_225CE4E98;
  if (v14)
  {
    while (1)
    {
      v44 = v17;
      v20 = v18;
LABEL_13:
      v23 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v24 = v23 | (v20 << 6);
      v25 = (*(v41 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = v45;
      sub_225AD8A9C(*(v41 + 56) + *(v40 + 72) * v24, v45);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8, v19);
      v30 = *(v29 + 48);
      v31 = v43;
      *v43 = v26;
      v31[1] = v27;
      v32 = v31;
      sub_225AD9AE8(v28, v31 + v30, type metadata accessor for AnyCodable);
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);

      v22 = v20;
      v33 = v19;
      v34 = v32;
      v17 = v44;
LABEL_14:
      sub_2259D88EC(v34, v10, &qword_27D73D1D8, &qword_225CE4E88);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8, v33);
      if ((*(*(v35 - 8) + 48))(v10, 1, v35) == 1)
      {
        break;
      }

      v36 = v45;
      sub_225AD9AE8(&v10[*(v35 + 48)], v45, type metadata accessor for AnyCodable);
      v37 = *(v42 + 48);
      v46[2] = *(v42 + 32);
      v46[3] = v37;
      v47 = *(v42 + 64);
      v38 = *(v42 + 16);
      v46[0] = *v42;
      v46[1] = v38;
      sub_225CCE5B4();

      AnyCodable.hash(into:)(v46);
      sub_225ADAAD4(v36, type metadata accessor for AnyCodable);
      result = sub_225CCFC24();
      v17 ^= result;
      v18 = v22;
      v19 = v33;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x22AA6E420](v17);
  }

  else
  {
LABEL_5:
    if (v15 <= v18 + 1)
    {
      v21 = v18 + 1;
    }

    else
    {
      v21 = v15;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v15)
      {
        v33 = v19;
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8, v19);
        v34 = v43;
        (*(*(v39 - 8) + 56))(v43, 1, 1, v39);
        v14 = 0;
        goto LABEL_14;
      }

      v14 = *(v11 + 8 * v20);
      ++v18;
      if (v14)
      {
        v44 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s13CoreIDVShared10AnyCodableO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v81 = a1;
  v3 = type metadata accessor for ISO23220.BirthDate(0);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCD0B4();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AnyCodable(0);
  v8 = MEMORY[0x28223BE20](v7);
  v79 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v77 = (&v70 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v76 = (&v70 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v75 = (&v70 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v70 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v80 = &v70 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v78 = &v70 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v70 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v70 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v70 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v70 - v33);
  MEMORY[0x28223BE20](v32);
  v36 = &v70 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D230, &qword_225CE5348);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v40 = &v70 - v39;
  v41 = (&v70 + *(v38 + 56) - v39);
  sub_225AD8A9C(v81, &v70 - v39);
  sub_225AD8A9C(a2, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v52 = v80;
        sub_225AD8A9C(v40, v80);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          sub_225ADAAD4(v52, type metadata accessor for ISO23220.BirthDate);
          goto LABEL_40;
        }

        v53 = v72;
        sub_225AD9AE8(v41, v72, type metadata accessor for ISO23220.BirthDate);
        v51 = MEMORY[0x22AA6B2F0](v52, v53);
        sub_225ADAAD4(v53, type metadata accessor for ISO23220.BirthDate);
        sub_225ADAAD4(v52, type metadata accessor for ISO23220.BirthDate);
LABEL_46:
        sub_225ADAAD4(v40, type metadata accessor for AnyCodable);
        return v51 & 1;
      }

      if (EnumCaseMultiPayload == 7)
      {
        sub_225AD8A9C(v40, v18);
        v45 = *v18;
        v44 = v18[1];
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          if (v45 == *v41 && v44 == v41[1])
          {
          }

          else
          {
            v69 = sub_225CCF934();

            if ((v69 & 1) == 0)
            {
              sub_225ADAAD4(v40, type metadata accessor for AnyCodable);
              goto LABEL_41;
            }
          }

          sub_225ADAAD4(v40, type metadata accessor for AnyCodable);
          v51 = 1;
          return v51 & 1;
        }

        goto LABEL_39;
      }

      v56 = v75;
      sub_225AD8A9C(v40, v75);
      v57 = *v56;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v49 = sub_225AB7DB8(v57, *v41);
        goto LABEL_38;
      }

LABEL_39:

      goto LABEL_40;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v54 = v76;
      sub_225AD8A9C(v40, v76);
      v55 = *v54;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_39;
      }

      v49 = sub_225AD856C(v55, *v41);
    }

    else
    {
      if (EnumCaseMultiPayload != 10)
      {
        v63 = v79;
        sub_225AD8A9C(v40, v79);
        v64 = *v63;
        v65 = v63[1];
        if (swift_getEnumCaseMultiPayload() != 11)
        {
          sub_2259BEF00(v64, v65);
          goto LABEL_40;
        }

        v66 = *v41;
        v67 = v41[1];
        v51 = sub_2259D8228(v64, v65, *v41, v67);
        sub_2259BEF00(v66, v67);
        sub_2259BEF00(v64, v65);
        goto LABEL_46;
      }

      v47 = v77;
      sub_225AD8A9C(v40, v77);
      v48 = *v47;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_39;
      }

      v49 = sub_225AD80F0(v48, *v41);
    }

LABEL_38:
    v51 = v49;

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_225AD8A9C(v40, v28);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v46 = *v28 == *v41;
        goto LABEL_33;
      }

      goto LABEL_40;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_225AD8A9C(v40, v25);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v46 = *v25 == *v41;
        goto LABEL_33;
      }

      goto LABEL_40;
    }

    v58 = v78;
    sub_225AD8A9C(v40, v78);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      (*(v73 + 8))(v58, v74);
      goto LABEL_40;
    }

    v60 = v73;
    v59 = v74;
    v61 = v71;
    (*(v73 + 32))(v71, v41, v74);
    v51 = sub_225CCD084();
    v62 = *(v60 + 8);
    v62(v61, v59);
    v62(v58, v59);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_225AD8A9C(v40, v34);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v43 = *v34;
LABEL_32:
        v46 = v43 == *v41;
LABEL_33:
        v51 = v46;
        goto LABEL_46;
      }
    }

    else
    {
      sub_225AD8A9C(v40, v31);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v43 = *v31;
        goto LABEL_32;
      }
    }

    goto LABEL_40;
  }

  sub_225AD8A9C(v40, v36);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_40:
    sub_2259CB640(v40, &qword_27D73D230, &qword_225CE5348);
LABEL_41:
    v51 = 0;
    return v51 & 1;
  }

  v50 = *v36 ^ *v41;
  sub_225ADAAD4(v40, type metadata accessor for AnyCodable);
  v51 = v50 ^ 1;
  return v51 & 1;
}

unint64_t sub_225ADF52C()
{
  result = qword_27D73D1D0;
  if (!qword_27D73D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D1D0);
  }

  return result;
}

uint64_t sub_225ADF580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCodable(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_225ADF630()
{
  result = qword_27D73D1F8;
  if (!qword_27D73D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D1F8);
  }

  return result;
}

unint64_t sub_225ADF688()
{
  result = qword_27D73D200;
  if (!qword_27D73D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D200);
  }

  return result;
}

unint64_t sub_225ADF6E0()
{
  result = qword_27D73D208;
  if (!qword_27D73D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D208);
  }

  return result;
}

unint64_t sub_225ADF738()
{
  result = qword_27D73D210;
  if (!qword_27D73D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D210);
  }

  return result;
}

unint64_t sub_225ADF790()
{
  result = qword_27D73D218;
  if (!qword_27D73D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D218);
  }

  return result;
}

uint64_t sub_225ADF7E4(uint64_t a1)
{
  result = sub_225CCD0B4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ISO23220.BirthDate(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_225ADF8E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_225ADF928(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_225ADF99C()
{
  result = qword_27D73D238;
  if (!qword_27D73D238)
  {
    sub_2259D8718(255, &qword_281059A70, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D238);
  }

  return result;
}

uint64_t sub_225ADFA1C()
{
  type metadata accessor for CertUsageMapper();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D240, &unk_225CE5390);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = result;
  off_28105AEE0 = v0;
  return result;
}

uint64_t static CertUsageMapper.sharedInstance.getter()
{
  if (qword_28105AED8 != -1)
  {
    swift_once();
  }
}

void CertUsageMapper.registerMapping(forType:usage:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(v2 + 16);
  v7 = *(a2 + 16);
  os_unfair_lock_lock((v6 + 24));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + 16);
  *(v6 + 16) = 0x8000000000000000;
  sub_2259F6128(v4, v5, v7);
  sub_225A046A0(v4, v5, v7, a1, isUniquelyReferenced_nonNull_native);
  *(v6 + 16) = v9;

  os_unfair_lock_unlock((v6 + 24));
}

void CertUsageMapper.mapping(forType:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 6);
  sub_225ADFC0C(&v5[4], a1, a2);

  os_unfair_lock_unlock(v5 + 6);
}

unint64_t sub_225ADFC0C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16))
  {
    result = sub_2259F1900(a2);
    if (v5)
    {
      v6 = *(v4 + 56) + 24 * result;
      v7 = *v6;
      v8 = *(v6 + 8);
      *a3 = *v6;
      *(a3 + 8) = v8;
      v9 = *(v6 + 16);
      *(a3 + 16) = v9;
      return sub_2259F6128(v7, v8, v9);
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = -1;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t CertUsageMapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

CoreIDVShared::CoreIDVAssetBundle::CertificateType_optional __swiftcall CoreIDVAssetBundle.CertificateType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CoreIDVAssetBundle.CertificateType.rawValue.getter()
{
  v1 = 0x6F52726575737369;
  v2 = 0xD00000000000001ELL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_225ADFE18()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225ADFEE8(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225ADFFA4()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225AE007C(unint64_t *a1@<X8>)
{
  v2 = 0xEB0000000073746FLL;
  v3 = 0x6F52726575737369;
  v4 = 0x8000000225D0B8E0;
  v5 = 0xD00000000000001ELL;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x8000000225D0B900;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000225D0B8C0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t CoreIDVAssetBundle.version.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CoreIDVAssetBundle.terminalAuthRoots.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t CoreIDVAssetBundle.issuerRoots.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t CoreIDVAssetBundle.appleIssuerRoots.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t CoreIDVAssetBundle.appleIssuerWebPresentmentRoots.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

unint64_t sub_225AE0188()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x6F52726575737369;
  v4 = 0xD00000000000001ELL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_225AE0230@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225AE2948(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225AE0264(uint64_t a1)
{
  v2 = sub_225AE05B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AE02A0(uint64_t a1)
{
  v2 = sub_225AE05B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoreIDVAssetBundle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D248, &qword_225CE53A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  v24 = *(v1 + 24);
  v19 = *(v1 + 32);
  v20 = v7;
  v18 = *(v1 + 40);
  v17 = *(v1 + 48);
  LODWORD(v7) = *(v1 + 56);
  v14 = *(v1 + 64);
  v15 = *(v1 + 72);
  v16 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AE05B8();
  sub_225CCFCE4();
  LOBYTE(v22) = 0;
  v8 = v21;
  sub_225CCF784();
  if (!v8)
  {
    v9 = v18;
    v10 = v19;
    v11 = v17;
    v22 = v20;
    v23 = v24;
    v25 = 1;
    sub_225AE060C();

    sub_225CCF774();

    v22 = v10;
    v23 = v9;
    v25 = 2;

    sub_225CCF774();

    v22 = v11;
    v23 = v16;
    v25 = 3;

    sub_225CCF774();

    v22 = v14;
    v23 = v15;
    v25 = 4;

    sub_225CCF774();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_225AE05B8()
{
  result = qword_27D73D250;
  if (!qword_27D73D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D250);
  }

  return result;
}

unint64_t sub_225AE060C()
{
  result = qword_27D73D258;
  if (!qword_27D73D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D258);
  }

  return result;
}

uint64_t CoreIDVAssetBundle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D260, &qword_225CE53A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AE05B8();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v31) = 0;
  *&v26 = sub_225CCF684();
  *(&v26 + 1) = v9;
  LOBYTE(v27) = 1;
  sub_225AE0B24();
  sub_225CCF674();
  v25 = v31;
  v43 = v32;
  LOBYTE(v27) = 2;
  sub_225CCF674();
  v24 = v31;
  v23 = v32;
  LOBYTE(v27) = 3;
  sub_225CCF674();
  v22 = v31;
  v21 = v32;
  v44 = 4;
  sub_225CCF674();
  (*(v6 + 8))(v8, v5);
  v20 = v41;
  HIDWORD(v19) = v42;
  v10 = v26;
  v27 = v26;
  v11 = *(&v26 + 1);
  v12 = v25;
  *&v28 = v25;
  v13 = v43;
  BYTE8(v28) = v43;
  v14 = v24;
  *&v29 = v24;
  v15 = v23;
  BYTE8(v29) = v23;
  *v30 = v22;
  v30[8] = v21;
  *&v30[16] = v41;
  v30[24] = v42;
  v16 = *v30;
  a2[2] = v29;
  a2[3] = v16;
  v17 = v28;
  *a2 = v27;
  a2[1] = v17;
  *(a2 + 57) = *&v30[9];
  sub_225AE0B78(&v27, &v31);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v31 = v10;
  v32 = v11;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v36 = v15;
  v37 = v22;
  v38 = v21;
  v39 = v20;
  v40 = BYTE4(v19);
  return sub_225AE0BB0(&v31);
}

unint64_t sub_225AE0B24()
{
  result = qword_27D73D268;
  if (!qword_27D73D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D268);
  }

  return result;
}

uint64_t sub_225AE0C20()
{
  if (*v0)
  {
    return 0x656469727265766FLL;
  }

  else
  {
    return 0x6369666974726563;
  }
}

uint64_t sub_225AE0C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369666974726563 && a2 == 0xEC00000073657461;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xEF746C7561666544)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225AE0D58(uint64_t a1)
{
  v2 = sub_225AE0FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AE0D94(uint64_t a1)
{
  v2 = sub_225AE0FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoreIDVAssetCertificates.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D270, &qword_225CE53B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AE0FA4();

  sub_225CCFCE4();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570, &qword_225CE53B8);
  sub_225AE120C(&qword_27D73D280, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_225CCF7E4();

  if (!v2)
  {
    v11 = 1;
    sub_225CCF794();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_225AE0FA4()
{
  result = qword_27D73D278;
  if (!qword_27D73D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D278);
  }

  return result;
}

uint64_t CoreIDVAssetCertificates.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D288, &qword_225CE53C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AE0FA4();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570, &qword_225CE53B8);
  v12[15] = 0;
  sub_225AE120C(&qword_281059B60, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_225CCF6E4();
  v9 = v13;
  v12[14] = 1;
  v10 = sub_225CCF694();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225AE120C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D73E570, &qword_225CE53B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

CoreIDVShared::CoreIDVAsset::deviceType_optional __swiftcall CoreIDVAsset.deviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

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

uint64_t CoreIDVAsset.deviceType.rawValue.getter()
{
  if (*v0)
  {
    return 0x534F6863746177;
  }

  else
  {
    return 5459817;
  }
}

uint64_t sub_225AE1340(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x534F6863746177;
  }

  else
  {
    v3 = 5459817;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x534F6863746177;
  }

  else
  {
    v5 = 5459817;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AE13E0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AE145C(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225AE14C4()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AE153C@<X0>(char *a2@<X8>)
{
  v3 = sub_225CCF5D4();

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

void sub_225AE159C(uint64_t *a1@<X8>)
{
  v2 = 5459817;
  if (*v1)
  {
    v2 = 0x534F6863746177;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_225AE15D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  if (v2 != 1)
  {
    v4 = 0x534F6863746177;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 5459817;
  if (*a2 != 1)
  {
    v8 = 0x534F6863746177;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225AE16C8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AE1764(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225AE17EC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

unint64_t sub_225AE1884@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225AE2B08(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_225AE18B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 5459817;
  if (v2 != 1)
  {
    v5 = 0x534F6863746177;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_225AE190C()
{
  v1 = 5459817;
  if (*v0 != 1)
  {
    v1 = 0x534F6863746177;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

unint64_t sub_225AE1960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225AE2B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225AE1988(uint64_t a1)
{
  v2 = sub_225AE1DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AE19C4(uint64_t a1)
{
  v2 = sub_225AE1DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoreIDVAsset.base.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 73);
  v3 = *(v10 + 9);
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_225AE0B78(v8, &v7);
}

uint64_t CoreIDVAsset.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  CoreIDVAsset.init(from:)(a1);
  return v2;
}

uint64_t CoreIDVAsset.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D290, &qword_225CE53C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AE1DBC();
  sub_225CCFCA4();
  if (v2)
  {
    type metadata accessor for CoreIDVAsset();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_225AE1E34();
    sub_225CCF6E4();
    v8 = v12[0];
    *(v1 + 48) = v11[7];
    *(v1 + 64) = v8;
    *(v1 + 73) = *(v12 + 9);
    v9 = v11[6];
    *(v1 + 16) = v11[5];
    *(v1 + 32) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D2A8, &qword_225CE53D0);
    v13 = 1;
    sub_225AE22D8(&qword_27D73D2B0, sub_225AE1E34, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_225CCF674();
    *(v1 + 96) = *&v11[0];
    v13 = 2;
    sub_225CCF674();
    (*(v5 + 8))(v7, v4);
    *(v1 + 104) = *&v11[0];
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

unint64_t sub_225AE1DBC()
{
  result = qword_27D73D298;
  if (!qword_27D73D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D298);
  }

  return result;
}

unint64_t sub_225AE1E34()
{
  result = qword_27D73D2A0;
  if (!qword_27D73D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2A0);
  }

  return result;
}

void *CoreIDVAsset.deinit()
{

  return v0;
}

uint64_t CoreIDVAsset.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225AE1F88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D2B8, &qword_225CE53D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AE1DBC();
  sub_225CCFCE4();
  v9 = *(v3 + 32);
  v10 = *(v3 + 64);
  v25 = *(v3 + 48);
  v26[0] = v10;
  *(v26 + 9) = *(v3 + 73);
  v11 = *(v3 + 32);
  v24[0] = *(v3 + 16);
  v24[1] = v11;
  v21 = v9;
  v22 = v25;
  v23[0] = *(v3 + 64);
  *(v23 + 9) = *(v3 + 73);
  v20 = v24[0];
  v19 = 0;
  sub_225AE0B78(v24, &v15);
  sub_225AE2284();
  sub_225CCF7E4();
  if (v2)
  {
    v17 = v22;
    *v18 = v23[0];
    *&v18[9] = *(v23 + 9);
    v16 = v21;
    v15 = v20;
    sub_225AE0BB0(&v15);
  }

  else
  {
    v17 = v22;
    *v18 = v23[0];
    *&v18[9] = *(v23 + 9);
    v16 = v21;
    v15 = v20;
    sub_225AE0BB0(&v15);
    v14 = *(v3 + 96);
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D2A8, &qword_225CE53D0);
    sub_225AE22D8(&qword_27D73D2C8, sub_225AE2284, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_225CCF774();
    v14 = *(v3 + 104);
    HIBYTE(v13) = 2;
    sub_225CCF774();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_225AE2284()
{
  result = qword_27D73D2C0;
  if (!qword_27D73D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2C0);
  }

  return result;
}

uint64_t sub_225AE22D8(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73D2A8, &qword_225CE53D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225AE2360()
{
  result = qword_27D73D2D0;
  if (!qword_27D73D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2D0);
  }

  return result;
}

unint64_t sub_225AE23B8()
{
  result = qword_27D73D2D8;
  if (!qword_27D73D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2D8);
  }

  return result;
}

uint64_t sub_225AE240C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CoreIDVAsset();
  v5 = swift_allocObject();
  result = CoreIDVAsset.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_225AE24AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_225AE24F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_225AE2634()
{
  result = qword_27D73D2E0;
  if (!qword_27D73D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2E0);
  }

  return result;
}

unint64_t sub_225AE268C()
{
  result = qword_27D73D2E8;
  if (!qword_27D73D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2E8);
  }

  return result;
}

unint64_t sub_225AE26E4()
{
  result = qword_27D73D2F0;
  if (!qword_27D73D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2F0);
  }

  return result;
}

unint64_t sub_225AE273C()
{
  result = qword_27D73D2F8;
  if (!qword_27D73D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2F8);
  }

  return result;
}

unint64_t sub_225AE2794()
{
  result = qword_27D73D300;
  if (!qword_27D73D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D300);
  }

  return result;
}

unint64_t sub_225AE27EC()
{
  result = qword_27D73D308;
  if (!qword_27D73D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D308);
  }

  return result;
}

unint64_t sub_225AE2844()
{
  result = qword_27D73D310;
  if (!qword_27D73D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D310);
  }

  return result;
}

unint64_t sub_225AE289C()
{
  result = qword_27D73D318;
  if (!qword_27D73D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D318);
  }

  return result;
}

unint64_t sub_225AE28F4()
{
  result = qword_27D73D320;
  if (!qword_27D73D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D320);
  }

  return result;
}

uint64_t sub_225AE2948(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000225D0B8C0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F52726575737369 && a2 == 0xEB0000000073746FLL || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D0B8E0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000225D0B900 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_225CCF934();

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

unint64_t sub_225AE2B08(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t CBOREncodedCBOR.init(value:tag:encoder:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = 24;
  v12 = *(type metadata accessor for CBOREncodedCBOR(0, a4, a5, a6) + 48);
  v13 = *(a4 - 8);
  (*(v13 + 16))(&a7[v12], a1, a4);
  if (a2)
  {
    v14 = sub_225CCD3E4();
    if (v7)
    {
LABEL_3:
      v16 = *(v13 + 8);
      v16(a1, a4);

      return (v16)(&a7[v12], a4);
    }
  }

  else
  {
    v14 = sub_225CCD3F4();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v18 = v14;
  v19 = v15;
  (*(v13 + 8))(a1, a4);

  *(a7 + 1) = v18;
  *(a7 + 2) = v19;
  return result;
}

uint64_t CBOREncodedCBOR.init(_:dataValue:decoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v22 = a7;
  v21 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a8 = 24;
  *(a8 + 1) = v16;
  *(a8 + 2) = v17;
  sub_2259CB710(v16, v17);
  sub_225CCD364();
  sub_2259BEF00(a2, a3);

  if (v8)
  {
    return sub_2259BEF00(a2, a3);
  }

  v19 = type metadata accessor for CBOREncodedCBOR(0, a5, a6, v22);
  return (*(v21 + 32))(&a8[*(v19 + 48)], v15, a5);
}

uint64_t Base64URLEncodedCBOR.init(value:encoder:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v10 = *(type metadata accessor for Base64URLEncodedCBOR(0, a3, a4, a5) + 44);
  v11 = *(a3 - 8);
  (*(v11 + 16))(&a6[v10], a1, a3);
  v12 = sub_225CCD3F4();
  if (v6)
  {
    v14 = *(v11 + 8);
    v14(a1, a3);

    return (v14)(&a6[v10], a3);
  }

  else
  {
    v20 = v12;
    v19 = v13;
    sub_225CCCF84();
    sub_2259D8654();
    sub_225CCF064();

    sub_225CCF064();

    v16 = sub_225CCF064();
    v18 = v17;

    sub_2259BEF00(v20, v19);
    (*(v11 + 8))(a1, a3);

    *a6 = v16;
    *(a6 + 1) = v18;
  }

  return result;
}

uint64_t Base64URLEncodedString.dataValue.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t Base64URLEncodedString.stringValue.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Base64URLEncodedString.init(dataValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  sub_2259CB710(a1, a2);
  sub_225CCCF84();
  sub_2259D8654();
  sub_225CCF064();

  sub_225CCF064();

  v6 = sub_225CCF064();
  v8 = v7;
  sub_2259BEF00(a1, a2);

  a3[2] = v6;
  a3[3] = v8;
  return result;
}

uint64_t Base64URLEncodedString.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC84();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v5 = sub_225CCF954();
    v7 = v6;
    v16 = v5;
    sub_2259D8654();
    sub_225CCF064();
    sub_225CCF064();

    v8 = sub_225CCE5D4();

    v9 = v8 & 3;
    if (v8 <= 0)
    {
      v9 = -(-v8 & 3);
    }

    if (v9 >= 1)
    {
      v10 = sub_225CCE6D4();
      MEMORY[0x22AA6CE70](v10);
    }

    v11 = sub_225CCCF04();
    v13 = v12;
    sub_2259CB6FC(v11, v12);

    if (v13 >> 60 == 15)
    {

      sub_225CCF2D4();
      swift_allocError();
      sub_225CCF264();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      sub_2259B97A8(v11, v13);
      __swift_destroy_boxed_opaque_existential_0(v15);
      *a2 = v11;
      a2[1] = v13;
      a2[2] = v16;
      a2[3] = v7;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t Base64URLEncodedString.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  __swift_mutable_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_225CCF9D4();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_225AE3624(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  __swift_mutable_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_225CCF9D4();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t Base64URLEncodedCBOR.stringValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Base64URLEncodedCBOR.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v30 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[6] = v8;
  v11 = type metadata accessor for Base64URLEncodedCBOR(0, v9, v8, v10);
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC84();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = v13;
  v28 = a1;
  v25 = v11;
  v26 = v7;
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_225AE3AC0();
  sub_225CCF9B4();
  v15 = v32;
  v16 = v33;
  v17 = v35;
  v18 = v27;
  *v27 = v34;
  v18[1] = v17;
  sub_225CCD3A4();
  swift_allocObject();
  v24[1] = v17;

  sub_225CCD394();
  v19 = v26;
  sub_225CCD364();
  v20 = v28;
  sub_2259BEF00(v15, v16);

  v21 = v25;
  v22 = v27;
  (*(v30 + 32))(v27 + *(v25 + 44), v19, a2);
  __swift_destroy_boxed_opaque_existential_0(v36);
  v23 = v29;
  (*(v29 + 16))(v31, v22, v21);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return (*(v23 + 8))(v22, v21);
}

unint64_t sub_225AE3AC0()
{
  result = qword_27D73D328;
  if (!qword_27D73D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D328);
  }

  return result;
}

void *sub_225AE3B14(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v62 = a4;
  *&v63 = a2;
  *(&v63 + 1) = a3;
  v5 = sub_225CCF2C4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D4E0, &qword_225CE6048);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_225CCF2D4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  *&v65[0] = a1;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
  v23 = swift_dynamicCast();
  v24 = *(v16 + 56);
  if (v23)
  {
    v25 = v11;
    v61 = v9;
    v26 = v5;
    v24(v14, 0, 1, v15);
    v27 = *(v16 + 32);
    v27(v21, v14, v15);
    v58 = *(v16 + 16);
    v58(v19, v21, v15);
    v28 = (*(v16 + 88))(v19, v15);
    v29 = *MEMORY[0x277D84160];
    v59 = v16 + 16;
    v60 = v21;
    v56 = v5;
    v57 = v6;
    if (v28 == v29)
    {
      (*(v16 + 96))(v19, v15);
      v30 = *v19;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D741FA0, &qword_225CF1600);
      v32 = *(v6 + 32);
      v33 = v25;
      v32(v25, v19 + *(v31 + 48), v26);
      *(swift_allocObject() + 16) = v30;

      v34 = sub_225AE7578;
    }

    else if (v28 == *MEMORY[0x277D84170])
    {
      (*(v16 + 96))(v19, v15);
      v36 = *v19;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D741FA0, &qword_225CF1600);
      v38 = *(v6 + 32);
      v33 = v25;
      v38(v25, v19 + *(v37 + 48), v26);
      *(swift_allocObject() + 16) = v36;

      v34 = sub_225AE7554;
    }

    else if (v28 == *MEMORY[0x277D84158])
    {
      (*(v16 + 96))(v19, v15);
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D4E8, &qword_225CE6050) + 48);
      sub_2259A9C20(v19, v65);
      v40 = *(v6 + 32);
      v33 = v25;
      v40(v25, v19 + v39, v26);
      sub_2259A9C20(v65, v64);
      v41 = swift_allocObject();
      sub_2259A9C20(v64, v41 + 16);

      v34 = sub_225AE754C;
    }

    else
    {
      if (v28 != *MEMORY[0x277D84168])
      {
        a1 = swift_allocError();
        v27(v53, v21, v15);
        (*(v16 + 8))(v19, v15);
        return a1;
      }

      (*(v16 + 96))(v19, v15);
      v42 = *(v6 + 32);
      v33 = v25;
      v42(v25, v19, v5);
      v34 = sub_225AE63B8;
    }

    v43 = v34;
    v55 = v33;
    __swift_project_boxed_opaque_existential_1(v62, v62[3]);
    *&v64[0] = sub_225CCFC64();
    v44 = sub_225CCF2A4();
    sub_225A8495C(v44);
    v65[0] = v63;

    MEMORY[0x22AA6CE70](8250, 0xE200000000000000);
    v45 = sub_225CCF2B4();
    MEMORY[0x22AA6CE70](v45);

    swift_allocError();
    v46 = v60;
    v58(v47, v60, v15);
    v48 = v61;
    sub_225CCF294();
    a1 = v43(v48);

    v49 = *(v57 + 8);
    v50 = v48;
    v51 = v56;
    v49(v50, v56);
    v49(v55, v51);
    (*(v16 + 8))(v46, v15);
  }

  else
  {
    v24(v14, 1, 1, v15);
    sub_2259CB640(v14, &qword_27D73D4E0, &qword_225CE6048);
    v35 = a1;
  }

  return a1;
}

uint64_t Base64URLEncodedCBOR.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  __swift_mutable_project_boxed_opaque_existential_0(v6, v6[3]);
  sub_225CCF9D4();
  if (v2)
  {
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000033, 0x8000000225D1BE10);
    v4 = sub_225CCFD24();
    MEMORY[0x22AA6CE70](v4);

    sub_225AE433C(v2, 0, 0xE000000000000000, a1);

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

void *sub_225AE433C(void *a1, uint64_t a2, void (*a3)(void, void), void *a4)
{
  v51 = a2;
  v52 = a3;
  v6 = sub_225CCF314();
  v53 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D4D0, &qword_225CE6038);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  v15 = sub_225CCF324();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  *&v57[0] = a1;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
  v23 = swift_dynamicCast();
  v24 = *(v16 + 56);
  if (v23)
  {
    v50 = v9;
    v25 = v6;
    v24(v14, 0, 1, v15);
    v26 = *(v16 + 32);
    v26(v21, v14, v15);
    v49 = *(v16 + 16);
    v49(v19, v21, v15);
    v27 = (*(v16 + 88))(v19, v15);
    if (v27 == *MEMORY[0x277D841A8])
    {
      v28 = *(v16 + 96);
      v48 = v27;
      v28(v19, v15);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D4D8, &qword_225CE6040);
      v29 = *(v47 + 48);
      sub_2259B9624(v19, v57);
      v30 = *(v53 + 32);
      v46 = v25;
      v30(v11, &v19[v29], v25);
      __swift_project_boxed_opaque_existential_1(a4, a4[3]);
      v56 = sub_225CCFCB4();
      v31 = sub_225CCF2A4();
      sub_225A8495C(v31);
      v54 = v51;
      v55 = v52;

      MEMORY[0x22AA6CE70](8250, 0xE200000000000000);
      v32 = sub_225CCF2B4();
      v34 = v33;
      v52 = *(v53 + 8);
      v35 = v11;
      v36 = v46;
      v52(v35, v46);
      MEMORY[0x22AA6CE70](v32, v34);

      swift_allocError();
      v49(v37, v21, v15);
      v38 = v50;
      sub_225CCF294();
      a1 = swift_allocError();
      v40 = v39;
      v41 = *(v47 + 48);
      sub_2259CB810(v57, v39);
      (*(v53 + 16))(v40 + v41, v38, v36);
      (*(v16 + 104))(v40, v48, v15);
      v52(v38, v36);
      __swift_destroy_boxed_opaque_existential_0(v57);
      (*(v16 + 8))(v21, v15);
    }

    else
    {
      a1 = swift_allocError();
      v26(v43, v21, v15);
      (*(v16 + 8))(v19, v15);
    }
  }

  else
  {
    v24(v14, 1, 1, v15);
    sub_2259CB640(v14, &qword_27D73D4D0, &qword_225CE6038);
    v42 = a1;
  }

  return a1;
}

uint64_t CBOREncodedCBOR.dataValue.getter()
{
  v1 = *(v0 + 8);
  sub_2259CB710(v1, *(v0 + 16));
  return v1;
}

uint64_t CBOREncodedCBOR.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v30 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CBOREncodedCBOR(0, v9, v10, v11);
  v29 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  *(&v25 - v13) = 24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v35;
  sub_225CCFC84();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = a3;
  v28 = v14;
  v35 = v8;
  v26 = v12;
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_2259D94A8();
  sub_225CCF9B4();
  v16 = v32;
  v17 = v33;
  v18 = v28;
  *(v28 + 1) = v32;
  *(v18 + 2) = v17;
  sub_225CCD3A4();
  swift_allocObject();
  sub_2259CB710(v16, v17);
  sub_225CCD394();
  v19 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC94();
  sub_225CCD384();
  v20 = v35;
  sub_225CCD364();
  sub_2259BEF00(v16, v17);

  v21 = v26;
  v22 = v28;
  (*(v30 + 32))(&v28[*(v26 + 48)], v20, a2);
  __swift_destroy_boxed_opaque_existential_0(v34);
  v23 = v29;
  (*(v29 + 16))(v31, v22, v21);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return (*(v23 + 8))(v22, v21);
}

uint64_t CBOREncodedCBOR.encode(to:)(void *a1, uint64_t a2)
{
  v4 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  v10 = *(v4 + 8);
  v11 = *(v4 + 16);
  __swift_mutable_project_boxed_opaque_existential_0(v12, v12[3]);
  sub_2259CB710(v7, v6);
  sub_225AE4E54();
  sub_225CCFA34();
  sub_2259BEF00(v10, v11);
  if (v3)
  {
    sub_225CCF204();

    v8 = sub_225CCFD24();
    MEMORY[0x22AA6CE70](v8);

    sub_225AE433C(v3, 0xD00000000000002ELL, 0x8000000225D1BE80, a1);

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t TaggedCBOR.init(data:tag:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

unint64_t sub_225AE4E54()
{
  result = qword_27D73D330;
  if (!qword_27D73D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D330);
  }

  return result;
}

uint64_t static CBOREncodedCBOR<>.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != *a2 || !sub_2259D8228(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  type metadata accessor for CBOREncodedCBOR(0, a3, a4, a5);
  return sub_225CCE3C4() & 1;
}

uint64_t CBOREncodedCBOR<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x22AA6E420](*v3);
  sub_225CCCFB4();
  return sub_225CCE354();
}

uint64_t CBOREncodedCBOR<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_225CCFBD4();
  CBOREncodedCBOR<>.hash(into:)(v5, a1, a2);
  return sub_225CCFC24();
}

uint64_t sub_225AE506C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_225CCFBD4();
  CBOREncodedCBOR<>.hash(into:)(v6, a2, v4);
  return sub_225CCFC24();
}

uint64_t BigUIntCBOR.value.getter()
{
  v1 = *(v0 + 8);
  sub_2259CB710(v1, *(v0 + 16));
  return v1;
}

uint64_t BigUIntCBOR.description.getter()
{
  sub_225B34448(*(v0 + 8), *(v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259CB764();
  v1 = sub_225CCE384();

  return v1;
}

uint64_t BigUIntCBOR.init(value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 2;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t BigUIntCBOR.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_2259D94A8();
  sub_225CCF9B4();
  __swift_destroy_boxed_opaque_existential_0(v8);
  *a2 = 2;
  a2[1] = v6;
  a2[2] = v7;
  sub_2259CB710(v6, v7);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2259BEF00(v6, v7);
}

uint64_t BigUIntCBOR.encode(to:)(void *a1)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259CB710(v4, v5);
  sub_225CCFCD4();
  __swift_mutable_project_boxed_opaque_existential_0(v7, v7[3]);
  sub_225AE4E54();
  sub_225CCFA34();
  sub_2259BEF00(v4, v5);
  if (v2)
  {
    sub_225AE433C(v2, 0xD000000000000032, 0x8000000225D1BEB0, a1);
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t BigUIntCBOR.hash(into:)(uint64_t a1)
{
  MEMORY[0x22AA6E420](*v1);

  return sub_225CCCFB4();
}

uint64_t BigUIntCBOR.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  sub_225CCCFB4();
  return sub_225CCFC24();
}

uint64_t sub_225AE54C0()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  sub_225CCCFB4();
  return sub_225CCFC24();
}

uint64_t sub_225AE5524(uint64_t a1)
{
  MEMORY[0x22AA6E420](*v1);

  return sub_225CCCFB4();
}

uint64_t sub_225AE5578()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  sub_225CCCFB4();
  return sub_225CCFC24();
}

uint64_t sub_225AE55FC()
{
  sub_225B34448(*(v0 + 8), *(v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259CB764();
  v1 = sub_225CCE384();

  return v1;
}

uint64_t TaggedCBOR.data.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t TaggedCBOR.encode(to:)(void *a1)
{
  v13 = sub_225CCD454();
  v11[0] = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259CB710(v6, v7);
  sub_225CCFCD4();
  sub_225AE6484();
  v11[1] = v6;
  v11[2] = v7;
  sub_2259D9454();
  sub_225CCEEE4();
  if (v2)
  {
    sub_225AE433C(v2, 0xD00000000000001ALL, 0x8000000225D1BEF0, a1);
    swift_willThrow();
  }

  else
  {
    v8 = v11[0];
    sub_225CCD434();
    __swift_mutable_project_boxed_opaque_existential_0(v12, v12[3]);
    sub_225AA29A8();
    v9 = v13;
    sub_225CCFA34();
    (*(v8 + 8))(v5, v9);
  }

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t ISO8601DateString.dateValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_225CCD0B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ISO8601DateString.stringValue.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISO8601DateString(0) + 20));

  return v1;
}

uint64_t ISO8601DateString.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_225CCD0B4();
  v31 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ISO8601DateString(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v34;
  sub_225CCFC84();
  if (!v12)
  {
    v34 = a1;
    v28 = v11;
    v29 = v6;
    v30 = v8;
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    v15 = sub_225CCF954();
    v17 = v16;
    v18 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v19 = sub_225CCE444();
    v20 = [v18 dateFromString_];

    if (v20)
    {
      v21 = v29;
      sub_225CCD094();

      v22 = v30;
      v23 = *(v31 + 32);
      v24 = v21;
      v25 = v3;
      v23(v30, v24, v3);
      v26 = v28;
      v27 = &v28[*(v9 + 20)];
      *v27 = v15;
      v27[1] = v17;
      v23(v26, v22, v25);
      __swift_destroy_boxed_opaque_existential_0(v33);
      sub_225AE651C(v26, v32);
      v13 = v34;
      return __swift_destroy_boxed_opaque_existential_0(v13);
    }

    sub_225CCF2D4();
    swift_allocError();
    sub_225CCF264();
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v33);
    a1 = v34;
  }

  v13 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t FailableDecodable.result.getter@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v4 = sub_225CCFC34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t FailableDecodable.init(result:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v5 = sub_225CCFC34();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

uint64_t FailableDecodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v16 = a4;
  v9 = type metadata accessor for FailableDecodable(0, a2, a3, a5);
  v14 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15[-1] - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_225CCFC84();
  if (!v5)
  {
    MEMORY[0x28223BE20](v12);
    *(&v14 - 4) = a2;
    *(&v14 - 3) = a3;
    *(&v14 - 2) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_225AE5FF0(sub_225AE6598, v11);
    __swift_destroy_boxed_opaque_existential_0(v15);
    (*(v14 + 32))(v16, v11, v9);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225AE5F68(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_225CCF9B4();
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_225AE5FF0@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_225CCFC34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t sub_225AE61C4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = sub_225CCF2D4();
  v7 = swift_allocError();
  v9 = v8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D741FA0, &qword_225CF1600) + 48);
  *v9 = a2;
  v11 = sub_225CCF2C4();
  (*(*(v11 - 8) + 16))(&v9[v10], a1, v11);
  (*(*(v6 - 8) + 104))(v9, *a3, v6);
  return v7;
}

uint64_t sub_225AE62BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCF2D4();
  v5 = swift_allocError();
  v7 = v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D4E8, &qword_225CE6050) + 48);
  sub_225A32940(a2, v7);
  v9 = sub_225CCF2C4();
  (*(*(v9 - 8) + 16))(v7 + v8, a1, v9);
  (*(*(v4 - 8) + 104))(v7, *MEMORY[0x277D84158], v4);
  return v5;
}

uint64_t sub_225AE63B8(uint64_t a1)
{
  v2 = sub_225CCF2D4();
  v3 = swift_allocError();
  v5 = v4;
  v6 = sub_225CCF2C4();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D84168], v2);
  return v3;
}

unint64_t sub_225AE6484()
{
  result = qword_27D73AC58;
  if (!qword_27D73AC58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D73AC58);
  }

  return result;
}

uint64_t type metadata accessor for ISO8601DateString(uint64_t a1)
{
  result = qword_27D73D440;
  if (!qword_27D73D440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_225AE651C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO8601DateString(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_225AE6608()
{
  result = qword_27D73D338[0];
  if (!qword_27D73D338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D73D338);
  }

  return result;
}

uint64_t sub_225AE665C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225AE66A4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_225AE66FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225AE677C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_225AE6900(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_225AE6B50(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225AE6BD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xC)
  {
    v7 = 12;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
      if (v5 > 0xC)
      {
        return (*(v4 + 48))((v15 + v6 + 16) & ~v6);
      }

      v16 = *(v15 + 8) >> 60;
      if (((4 * v16) & 0xC) != 0)
      {
        return 16 - ((4 * v16) & 0xC | (v16 >> 2));
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_225AE6D78(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xC)
  {
    v8 = 12;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v7 > 0xC)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 16) & ~v9);
  }

  else if (a2 > 0xC)
  {
    *v19 = a2 - 13;
    v19[1] = 0;
  }

  else
  {
    *v19 = 0;
    v19[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }
}

uint64_t sub_225AE6FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225AE7038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_225AE7098(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225AE70EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_225AE7174(uint64_t a1)
{
  result = sub_225CCD0B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225AE71E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  result = sub_225CCFC34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225AE727C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_225AE7394(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t JWSSignedJSON.init(payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memset(&v11[7], 0, 64);
  *(a5 + 89) = *&v11[16];
  *(a5 + 105) = *&v11[32];
  *(a5 + 121) = *&v11[48];
  *(a5 + 136) = 0uLL;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 73) = *v11;
  v8 = *(type metadata accessor for JWSSignedJSON(0, a2, a3, a4) + 60);
  v9 = *(a2 - 8);
  (*(v9 + 16))(a5 + v8, a1, a2);
  *a5 = 0;
  *(a5 + 8) = 0xE000000000000000;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0xE000000000000000;
  result = (*(v9 + 8))(a1, a2);
  *(a5 + 32) = 0;
  *(a5 + 40) = 0xE000000000000000;
  return result;
}

uint64_t JWSSignedJSON.setKid(_:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  result = (*(v9 + 24))(v8, v9);
  if (!v2)
  {
    v49 = 0;
    v12 = result;
    v13 = v11;
    v14 = sub_225CCCF74();
    sub_2259BEF00(v12, v13);
    v15 = DigestSha256(v14);

    if (v15)
    {
      v16 = sub_225CCCFA4();
      v18 = v17;

      v47 = sub_225CCCF84();
      v48 = v19;
      v45 = 43;
      v46 = 0xE100000000000000;
      v43 = 45;
      v44 = 0xE100000000000000;
      sub_2259D8654();
      v20 = sub_225CCF064();
      v22 = v21;

      v47 = v20;
      v48 = v22;
      v45 = 47;
      v46 = 0xE100000000000000;
      v43 = 95;
      v44 = 0xE100000000000000;
      v23 = sub_225CCF064();
      v25 = v24;

      v47 = v23;
      v48 = v25;
      v45 = 61;
      v46 = 0xE100000000000000;
      v43 = 0;
      v44 = 0xE000000000000000;
      v26 = sub_225CCF064();
      v28 = v27;
      sub_2259BEF00(v16, v18);

      *(v3 + 80) = v26;
      *(v3 + 88) = v28;
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
      v30 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v32 = v31;
      v33 = sub_225CCE954();
      v34 = *(v33 - 8);
      (*(v34 + 56))(v7, 1, 1, v33);
      LODWORD(v33) = (*(v34 + 48))(v7, 1, v33);
      sub_2259CB640(v7, &unk_27D73B050, &unk_225CD3AD0);
      if (v33)
      {
        v35 = 1140;
      }

      else
      {
        v35 = 23;
      }

      v36 = sub_225B2C374(v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v36;
      sub_225B2C4A0(v30, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v47);

      v38 = v47;
      v39 = sub_225B29AA0(0, 1, 1, v29);
      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_225B29AA0((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      v42 = &v39[56 * v41];
      *(v42 + 4) = 0xD000000000000039;
      *(v42 + 5) = 0x8000000225D1BF50;
      *(v42 + 6) = 0xD000000000000020;
      *(v42 + 7) = 0x8000000225D1BF90;
      *(v42 + 8) = 0x5F2864694B746573;
      *(v42 + 9) = 0xEA0000000000293ALL;
      *(v42 + 10) = 167;
      *v32 = v35;
      *(v32 + 8) = v39;
      *(v32 + 16) = 0xD000000000000039;
      *(v32 + 24) = 0x8000000225D1BF50;
      *(v32 + 32) = v38;
      *(v32 + 40) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

Swift::Void __swiftcall JWSSignedJSON.setNonce(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v1[13] = countAndFlagsBits;
  v1[14] = object;
  v4 = v1[12];
  if (!v4)
  {
    v4 = MEMORY[0x277D84F90];
    v1[12] = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_225B29BC8(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_225B29BC8((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 0x65636E6F6ELL;
  *(v7 + 5) = 0xE500000000000000;
  v1[12] = v4;
}

uint64_t JWSSignedJSON.sign(_:)(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225AE7C84, 0, 0);
}

uint64_t sub_225AE7C84()
{
  v59 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 80))(&v58, v4, v5);
  *(v1 + 72) = v58;
  v6 = sub_225AEF938(v2);
  v0[42] = v6;
  v0[43] = v7;
  if (v7 >> 60 == 15)
  {
LABEL_5:
    v18 = v0[41];
    v19 = MEMORY[0x277D84F90];
    v20 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v22 = v21;
    v23 = sub_225CCE954();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v18, 1, 1, v23);
    LODWORD(v23) = (*(v24 + 48))(v18, 1, v23);
    sub_2259CB640(v18, &unk_27D73B050, &unk_225CD3AD0);
    if (v23)
    {
      v25 = 1141;
    }

    else
    {
      v25 = 23;
    }

    v26 = sub_225B2C374(v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v26;
    sub_225B2C4A0(v20, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v58);

    v28 = v58;
    v29 = sub_225B29AA0(0, 1, 1, v19);
    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_225B29AA0((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[56 * v31];
    *(v32 + 4) = 0xD00000000000003DLL;
    *(v32 + 5) = 0x8000000225D1BFC0;
    *(v32 + 6) = 0xD000000000000020;
    *(v32 + 7) = 0x8000000225D1BF90;
    *(v32 + 8) = 0x293A5F286E676973;
    *(v32 + 9) = 0xE800000000000000;
    *(v32 + 10) = 216;
    *v22 = v25;
    *(v22 + 8) = v29;
    *(v22 + 16) = 0xD00000000000003DLL;
    *(v22 + 24) = 0x8000000225D1BFC0;
    *(v22 + 32) = v28;
    *(v22 + 40) = 0;
    swift_willThrow();

    v51 = v0[1];
    goto LABEL_16;
  }

  v55 = v6;
  v56 = v7;
  v8 = sub_225CCCF74();
  v9 = DigestSha256(v8);

  if (!v9)
  {
    sub_2259B97A8(v55, v56);
    goto LABEL_5;
  }

  v10 = v0[37];
  v11 = sub_225CCCFA4();
  v13 = v12;

  v0[44] = v11;
  v0[45] = v13;
  v14 = v3[3];
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v10, v14);
  v16 = (*(v15 + 32))(v11, v13, v14, v15);
  v0[46] = v16;
  v0[47] = v17;
  v33 = v16;
  v53 = v0[39];
  v54 = v0[37];
  v52 = v17;
  v0[15] = sub_225CCCF84();
  v0[16] = v34;
  v0[17] = 43;
  v0[18] = 0xE100000000000000;
  v0[19] = 45;
  v0[20] = 0xE100000000000000;
  sub_2259D8654();
  v35 = sub_225CCF064();
  v37 = v36;

  v0[21] = v35;
  v0[22] = v37;
  v0[23] = 47;
  v0[24] = 0xE100000000000000;
  v0[25] = 95;
  v0[26] = 0xE100000000000000;
  v38 = sub_225CCF064();
  v40 = v39;

  v0[27] = v38;
  v0[28] = v40;
  v0[29] = 61;
  v0[30] = 0xE100000000000000;
  v0[31] = 0;
  v0[32] = 0xE000000000000000;
  v41 = sub_225CCF064();
  v43 = v42;

  *(v53 + 32) = v41;
  *(v53 + 40) = v43;
  v44 = v3[3];
  v45 = v3[4];
  __swift_project_boxed_opaque_existential_1(v54, v44);
  v46 = (*(v45 + 64))(v44, v45);
  if (v46)
  {
    v47 = v3[3];
    v48 = v3[4];
    __swift_project_boxed_opaque_existential_1(v0[37], v47);
    v57 = (*(v48 + 72) + **(v48 + 72));
    v49 = swift_task_alloc();
    v0[48] = v49;
    *v49 = v0;
    v49[1] = sub_225AE86C4;

    return v57(v47, v48);
  }

  sub_2259B97A8(v55, v56);
  sub_2259BEF00(v33, v52);
  sub_2259BEF00(v11, v13);

  v51 = v0[1];
LABEL_16:

  return v51();
}

uint64_t sub_225AE86C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[49] = a1;
  v4[50] = a2;
  v4[51] = v2;

  if (v2)
  {
    v5 = sub_225AE8918;
  }

  else
  {
    v5 = sub_225AE87DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225AE87DC()
{
  v1 = v0[50];
  if (v1 >> 60 == 15)
  {
    v2 = v0[46];
    v3 = v0[47];
    v5 = v0[44];
    v4 = v0[45];
    sub_2259B97A8(v0[42], v0[43]);
    sub_2259BEF00(v2, v3);
    sub_2259BEF00(v5, v4);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v0[49];
    v10 = v0[46];
    v9 = v0[47];
    v11 = v0[44];
    v18 = v0[45];
    v12 = v0[42];
    v13 = v0[43];
    v6 = sub_225CCCF84();
    v7 = v14;
    sub_2259B97A8(v12, v13);
    sub_2259BEF00(v10, v9);
    sub_2259BEF00(v11, v18);
    sub_2259B97A8(v8, v1);
  }

  v15 = v0[39];

  *(v15 + 56) = v6;
  *(v15 + 64) = v7;

  v16 = v0[1];

  return v16();
}

uint64_t sub_225AE8918()
{
  v44 = v0;
  sub_2259BEF00(v0[46], v0[47]);
  v1 = v0[51];
  v2 = v1;
  v3 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v37 = v4;
  swift_getErrorValue();
  v5 = v0[13];
  v6 = v1;
  sub_225B21FAC(v5, &v38);

  v7 = v39;
  if (v39)
  {
    v35 = v41;
    v36 = v38;
    v8 = v42;
    v33 = v43;
    v34 = v40;
  }

  else
  {
    v0[34] = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v10 = v0[35];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v12 = [v10 code];
      v13 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v13;
      *(inited + 40) = v12;
      v8 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v14 = v1;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v7 = MEMORY[0x277D84F90];
      v33 = v1;
    }

    else
    {
      v15 = v0[40];
      v0[36] = v1;
      v16 = v1;
      v17 = sub_225CCE954();
      v18 = swift_dynamicCast();
      v19 = *(v17 - 8);
      (*(v19 + 56))(v15, v18 ^ 1u, 1, v17);
      LODWORD(v19) = (*(v19 + 48))(v15, 1, v17);
      sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = 23;
      }

      v36 = v20;
      v7 = MEMORY[0x277D84F90];
      v8 = sub_225B2C374(MEMORY[0x277D84F90]);
      v21 = v1;
      v35 = 0x8000000225D1C000;
      v33 = v1;
      v34 = 0xD00000000000002FLL;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v8;
  sub_225B2C4A0(v3, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v38);

  v32 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_225B29AA0(0, *(v7 + 2) + 1, 1, v7);
  }

  v24 = *(v7 + 2);
  v23 = *(v7 + 3);
  if (v24 >= v23 >> 1)
  {
    v7 = sub_225B29AA0((v23 > 1), v24 + 1, 1, v7);
  }

  v26 = v0[44];
  v25 = v0[45];
  v27 = v0[42];
  v31 = v0[43];

  *(v7 + 2) = v24 + 1;
  v28 = &v7[56 * v24];
  *(v28 + 4) = 0xD00000000000002FLL;
  *(v28 + 5) = 0x8000000225D1C000;
  *(v28 + 6) = 0xD000000000000020;
  *(v28 + 7) = 0x8000000225D1BF90;
  *(v28 + 8) = 0x293A5F286E676973;
  *(v28 + 9) = 0xE800000000000000;
  *(v28 + 10) = 226;
  *v37 = v36;
  *(v37 + 8) = v7;
  *(v37 + 16) = v34;
  *(v37 + 24) = v35;
  *(v37 + 32) = v32;
  *(v37 + 40) = v33;
  swift_willThrow();

  sub_2259BEF00(v26, v25);
  sub_2259B97A8(v27, v31);

  v29 = v0[1];

  return v29();
}

unint64_t sub_225AE8D94(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_225AE8DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE8E58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225AE8EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE8F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE8FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225AE8DE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225AE9018(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225AE906C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t JWSSignedJSON.JWSType.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_225CCF5D4();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_225AE9134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE91A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225AE9214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE9284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t JWSSignedJSON.JWSContentType.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_225CCF5D4();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_225AE946C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE94E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225AE954C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE95BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t JWSSignedJSON.JWSCritical.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_225CCF5D4();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t JWSSignedJSON.JWSCritical.rawValue.getter()
{
  v1 = 0x64657461657263;
  if (*v0 != 1)
  {
    v1 = 1953259891;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E6F6ELL;
  }
}

uint64_t sub_225AE97DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE9850(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225AE98BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE992C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE99A8@<X0>(uint64_t *a1@<X8>)
{
  result = JWSSignedJSON.JWSCritical.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_225AE9AA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_225AE9AF8(unsigned __int8 a1)
{
  v1 = 6777953;
  v2 = 0x64657461657263;
  if (a1 != 6)
  {
    v2 = 1953259891;
  }

  v3 = 1953067619;
  if (a1 != 4)
  {
    v3 = 0x65636E6F6ELL;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 7371124;
  if (a1 != 2)
  {
    v4 = 7959651;
  }

  if (a1)
  {
    v1 = 6580587;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_225AE9BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE9C30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225AE9C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE9D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE9D94@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(*a1, a1[1], a2[2], a2[3], a2[4]);
  *a4 = result;
  return result;
}

uint64_t sub_225AE9DF0@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, a1[2], a1[3], a1[4]);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_225AE9E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225AE9AF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225AE9E70@<X0>(_BYTE *a2@<X8>)
{
  result = sub_225AF2AB4();
  *a2 = result;
  return result;
}

uint64_t sub_225AE9EA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225AE9EF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_225AE9F4C(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = v2[6];
  v5 = v2[8];

  JWSSignedJSON.JWSCritical.init(rawValue:)(&v7);
  if (v7 > 1u)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

uint64_t JWSSignedJSON.DIPJWSProtectedHeader.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  v28 = a2[3];
  v29 = v4;
  v27 = v5;
  type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader.CodingKeys(255, v4, v28, v5);
  swift_getWitnessTable();
  v6 = sub_225CCF7F4();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = *v2;
  v10 = *(v2 + 1);
  v25 = *(v2 + 2);
  v26 = v10;
  v11 = *(v2 + 3);
  v12 = *(v2 + 4);
  v13 = *(v2 + 6);
  v23[6] = *(v2 + 5);
  v24 = v11;
  v23[3] = v13;
  v14 = *(v2 + 8);
  v23[4] = *(v2 + 7);
  v23[5] = v12;
  v15 = *(v2 + 9);
  v23[1] = v14;
  v23[2] = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v6;
  sub_225CCFCE4();
  LOBYTE(v32) = v9;
  v33 = 0;
  sub_225AF20F8();
  v17 = v31;
  sub_225CCF7E4();
  if (v17)
  {
    return (*(v30 + 8))(v8, v6);
  }

  v19 = v27;
  v20 = v28;
  v22 = v29;
  v21 = v30;
  LOBYTE(v32) = 1;
  sub_225CCF734();
  LOBYTE(v32) = 2;
  type metadata accessor for JWSSignedJSON.JWSType(0, v22, v20, v19);
  swift_getWitnessTable();
  sub_225CCF7E4();
  LOBYTE(v32) = 3;
  type metadata accessor for JWSSignedJSON.JWSContentType(0, v22, v20, v19);
  swift_getWitnessTable();
  sub_225CCF7E4();
  v32 = v24;
  v33 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_225A325B0(&qword_281059B28, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_225CCF774();
  LOBYTE(v32) = 5;
  sub_225CCF734();
  LOBYTE(v32) = 6;
  sub_225CCF734();
  LOBYTE(v32) = 7;
  sub_225CCF734();
  return (*(v21 + 8))(v8, v16);
}

uint64_t JWSSignedJSON.DIPJWSProtectedHeader.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v50 = a5;
  type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v52 = sub_225CCF714();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v10 = &v43 - v9;
  v11 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v53 = v10;
  v12 = v54;
  sub_225CCFCA4();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(v63);
  }

  else
  {
    v13 = v51;
    v49 = a2;
    v54 = a4;
    LOBYTE(v55) = 0;
    sub_225AF217C();
    v14 = v52;
    sub_225CCF6E4();
    v15 = LOBYTE(v60[0]);
    LOBYTE(v60[0]) = 1;
    v47 = sub_225CCF624();
    v46 = v15;
    v48 = v16;
    v17 = v49;
    v18 = a3;
    v19 = v54;
    type metadata accessor for JWSSignedJSON.JWSType(0, v49, a3, v54);
    LOBYTE(v60[0]) = 2;
    swift_getWitnessTable();
    sub_225CCF6E4();
    type metadata accessor for JWSSignedJSON.JWSContentType(0, v17, a3, v19);
    LOBYTE(v60[0]) = 3;
    swift_getWitnessTable();
    sub_225CCF6E4();
    v20 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    LOBYTE(v55) = 4;
    sub_225A325B0(&qword_281059B18, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_225CCF674();
    v21 = v60[0];
    LOBYTE(v60[0]) = 5;
    v22 = sub_225CCF624();
    v24 = v23;
    LOBYTE(v60[0]) = 6;
    v25 = sub_225CCF624();
    v27 = v26;
    v45 = v25;
    v61 = 7;
    v28 = sub_225CCF624();
    v29 = *(v20 + 8);
    v30 = v28;
    v44 = v28;
    v31 = v14;
    v33 = v32;
    v29(v53, v31);
    LOBYTE(v20) = v46;
    LOBYTE(v55) = v46;
    DWORD1(v55) = *&v62[3];
    *(&v55 + 1) = *v62;
    v34 = v22;
    v43 = v22;
    v35 = v48;
    *(&v55 + 1) = v47;
    *&v56 = v48;
    *(&v56 + 1) = v21;
    *&v57 = v34;
    *(&v57 + 1) = v24;
    *&v58 = v45;
    *(&v58 + 1) = v27;
    *&v59 = v30;
    *(&v59 + 1) = v33;
    v36 = v57;
    v37 = v59;
    v38 = v50;
    v50[3] = v58;
    v38[4] = v37;
    v39 = v55;
    v38[1] = v56;
    v38[2] = v36;
    *v38 = v39;
    v40 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader(0, v49, v18, v54);
    v41 = *(v40 - 8);
    (*(v41 + 16))(v60, &v55, v40);
    __swift_destroy_boxed_opaque_existential_0(v63);
    LOBYTE(v60[0]) = v20;
    *(v60 + 1) = *v62;
    HIDWORD(v60[0]) = *&v62[3];
    v60[1] = v47;
    v60[2] = v35;
    v60[3] = v21;
    v60[4] = v43;
    v60[5] = v24;
    v60[6] = v45;
    v60[7] = v27;
    v60[8] = v44;
    v60[9] = v33;
    return (*(v41 + 8))(v60, v40);
  }
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.x5c.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.uam.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.uam.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_225AEAB10(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225AEAB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AEABD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225AEAC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AEACB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AEAD24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225AEAB10(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_225AEAD60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2259AE2B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_225AEADAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225AEAB10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225AEADE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225AEAE34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void JWSSignedJSON.DIPJWSUnprotectedHeader.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.encode(to:)(void *a1, void *a2)
{
  type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader.CodingKeys(255, a2[2], a2[3], a2[4]);
  swift_getWitnessTable();
  v4 = sub_225CCF7F4();
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  v8 = *v2;
  v7 = v2[1];
  v12[1] = v2[2];
  v12[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_225CCFCE4();
  v17 = v8;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_225A325B0(&qword_281059B28, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  v9 = v14;
  sub_225CCF774();
  if (v9)
  {

    return (*(v13 + 8))(v6, v4);
  }

  else
  {
    v11 = v13;

    v15 = 1;
    sub_225CCF734();
    return (*(v11 + 8))(v6, v4);
  }
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v18 = a5;
  type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = sub_225CCF714();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCA4();
  if (!v5)
  {
    v11 = v8;
    v12 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    v20 = 0;
    sub_225A325B0(&qword_281059B18, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_225CCF674();
    v13 = v21;
    v19 = 1;
    v15 = sub_225CCF624();
    v17 = v16;
    (*(v11 + 8))(v10, v7);
    *v12 = v13;
    v12[1] = v15;
    v12[2] = v17;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t JWSSignedJSON.unprotectedHeader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
}

__n128 JWSSignedJSON.unprotectedHeader.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  v1[3] = v4;
  v1[4].n128_u64[0] = v2;
  return result;
}

uint64_t JWSSignedJSON.protectedHeader.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(v2 + 88);
  v4 = *(v2 + 120);
  v11 = *(v2 + 104);
  v12 = v4;
  v13 = *(v2 + 136);
  v5 = v13;
  v10[0] = *(v2 + 72);
  v6 = v10[0];
  v10[1] = v3;
  a2[2] = v11;
  a2[3] = v4;
  a2[4] = v5;
  *a2 = v6;
  a2[1] = v3;
  v7 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader(0, a1[2], a1[3], a1[4]);
  return (*(*(v7 - 8) + 16))(&v9, v10, v7);
}

__n128 JWSSignedJSON.protectedHeader.setter(__n128 *a1, void *a2)
{
  v11 = a1[2];
  v12 = a1[3];
  v3 = a1[4];
  v9 = *a1;
  v10 = a1[1];
  v4 = *(v2 + 88);
  v5 = *(v2 + 120);
  v14[2] = *(v2 + 104);
  v14[3] = v5;
  v14[4] = *(v2 + 136);
  v6 = *(v2 + 72);
  v14[1] = v4;
  v13 = v3;
  v14[0] = v6;
  v7 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader(0, a2[2], a2[3], a2[4]);
  (*(*(v7 - 8) + 8))(v14, v7);
  *(v2 + 88) = v10;
  *(v2 + 104) = v11;
  *(v2 + 120) = v12;
  result = v13;
  *(v2 + 136) = v13;
  *(v2 + 72) = v9;
  return result;
}

__n128 JWSSignedJSON.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for JWSSignedJSON(0, a2, a3, a4);
  (*(*(a2 - 8) + 32))(a5 + *(v8 + 60), a1 + *(v8 + 60), a2);
  v9 = *(a1 + 8);
  *a5 = *a1;
  *(a5 + 8) = v9;
  *(a5 + 16) = *(a1 + 16);
  v10 = *(a1 + 40);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 40) = v10;
  v11 = *(a1 + 64);
  *(a5 + 48) = *(a1 + 48);
  *(a5 + 64) = v11;
  *(a5 + 72) = *(a1 + 72);
  result = *(a1 + 88);
  v13 = *(a1 + 104);
  v14 = *(a1 + 120);
  *(a5 + 136) = *(a1 + 136);
  *(a5 + 120) = v14;
  *(a5 + 104) = v13;
  *(a5 + 88) = result;
  return result;
}

uint64_t JWSSignedJSON.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v194 = a5;
  v213 = sub_225CCF2D4();
  v208 = *(v213 - 8);
  v9 = MEMORY[0x28223BE20](v213);
  v207 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v206 = &v192 - v12;
  v199 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v195 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v197 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v198 = &v192 - v18;
  MEMORY[0x28223BE20](v17);
  v196 = &v192 - v19;
  type metadata accessor for JWSSignedJSON.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v20 = sub_225CCF714();
  v203 = *(v20 - 8);
  v204 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v192 - v21;
  v212 = a4;
  v200 = type metadata accessor for JWSSignedJSON(0, a2, a3, a4);
  v193 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v211 = (&v192 - v23);
  v24 = a1[3];
  v209 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v205 = v22;
  v25 = v210;
  sub_225CCFCA4();
  v201 = a3;
  v202 = a2;
  if (v25)
  {
    LODWORD(v203) = 0;
    LODWORD(v205) = 0;
    LODWORD(v204) = 0;
    *&v222[0] = v25;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    v28 = v206;
    v29 = v213;
    if (swift_dynamicCast())
    {

      v31 = v207;
      v30 = v208;
      (*(v208 + 32))(v207, v28, v29);
      v32 = swift_allocError();
      (*(v30 + 16))(v33, v31, v29);
      v196 = "ed to hash the public key";
      v197 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v210 = swift_allocError();
      v35 = v34;
      swift_getErrorValue();
      v36 = v223;
      v37 = v32;
      sub_225B21FAC(v36, &v224);

      v38 = *(&v224 + 1);
      v206 = 0x8000000225D1C050;
      if (*(&v224 + 1))
      {
        v198 = v224;
        v194 = *(&v225 + 1);
        v195 = v225;
        v40 = *(&v226 + 1);
        v39 = v226;
      }

      else
      {
        *&v224 = v32;
        v50 = v32;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v51 = *&v221[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_225CD30F0;
          *(v52 + 32) = 20;
          v53 = [v51 code];
          v54 = MEMORY[0x277D83BF8];
          *(v52 + 64) = MEMORY[0x277D83B88];
          *(v52 + 72) = v54;
          *(v52 + 40) = v53;
          v39 = sub_225B2C374(v52);
          swift_setDeallocating();
          sub_2259CB640(v52 + 32, &qword_27D73B060, &unk_225CD3AE0);
          swift_deallocClassInstance();

          v55 = v32;
          v194 = 0;
          v195 = 0;
          v38 = MEMORY[0x277D84F90];
          v198 = 120;
        }

        else
        {
          *&v224 = v32;
          v64 = v32;
          v65 = sub_225CCE954();
          v66 = v198;
          v67 = swift_dynamicCast();
          v68 = *(v65 - 8);
          (*(v68 + 56))(v66, v67 ^ 1u, 1, v65);
          LODWORD(v65) = (*(v68 + 48))(v66, 1, v65);
          sub_2259CB640(v66, &unk_27D73B050, &unk_225CD3AD0);
          if (v65)
          {
            v69 = 120;
          }

          else
          {
            v69 = 23;
          }

          v198 = v69;
          v38 = MEMORY[0x277D84F90];
          v39 = sub_225B2C374(MEMORY[0x277D84F90]);
          v70 = v32;
          v194 = 0x8000000225D1C050;
          v195 = 0xD000000000000011;
        }

        v40 = v32;
      }

      v71 = v196 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v224 = v39;
      sub_225B2C4A0(v197, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v224);

      v73 = v224;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_225B29AA0(0, *(v38 + 2) + 1, 1, v38);
      }

      v75 = *(v38 + 2);
      v74 = *(v38 + 3);
      if (v75 >= v74 >> 1)
      {
        v38 = sub_225B29AA0((v74 > 1), v75 + 1, 1, v38);
      }

      *(v38 + 2) = v75 + 1;
      v76 = &v38[56 * v75];
      v77 = v206;
      *(v76 + 4) = 0xD000000000000011;
      *(v76 + 5) = v77;
      *(v76 + 6) = 0xD000000000000020;
      *(v76 + 7) = v71;
      *(v76 + 8) = 0x6F72662874696E69;
      *(v76 + 9) = 0xEB00000000293A6DLL;
      *(v76 + 10) = 126;
      *v35 = v198;
      v78 = v194;
      v79 = v195;
      *(v35 + 8) = v38;
      *(v35 + 16) = v79;
      *(v35 + 24) = v78;
      *(v35 + 32) = v73;
      *(v35 + 40) = v40;
      swift_willThrow();
      (*(v208 + 8))(v207, v213);
      v80 = *&v222[0];
    }

    else
    {

      v213 = 0x8000000225D1C030;
      v207 = "ed to hash the public key";
      v41 = v25;
      v208 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v42 = swift_allocError();
      v44 = v43;
      swift_getErrorValue();
      v45 = v229;
      v46 = v25;
      sub_225B21FAC(v45, &v224);

      v47 = *(&v224 + 1);
      v210 = v42;
      if (*(&v224 + 1))
      {
        v206 = v224;
        v197 = *(&v225 + 1);
        v198 = v225;
        v49 = *(&v226 + 1);
        v48 = v226;
      }

      else
      {
        *&v224 = v25;
        v56 = v25;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v57 = *&v222[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_225CD30F0;
          *(v58 + 32) = 20;
          v59 = [v57 code];
          v60 = MEMORY[0x277D83BF8];
          *(v58 + 64) = MEMORY[0x277D83B88];
          *(v58 + 72) = v60;
          *(v58 + 40) = v59;
          v48 = sub_225B2C374(v58);
          swift_setDeallocating();
          sub_2259CB640(v58 + 32, &qword_27D73B060, &unk_225CD3AE0);
          swift_deallocClassInstance();

          v61 = v25;
          v197 = 0;
          v198 = 0;
          v47 = MEMORY[0x277D84F90];
          v206 = 1139;
        }

        else
        {
          *&v224 = v25;
          v81 = v25;
          v82 = sub_225CCE954();
          v83 = v197;
          v84 = swift_dynamicCast();
          v85 = *(v82 - 8);
          (*(v85 + 56))(v83, v84 ^ 1u, 1, v82);
          LODWORD(v82) = (*(v85 + 48))(v83, 1, v82);
          sub_2259CB640(v83, &unk_27D73B050, &unk_225CD3AD0);
          if (v82)
          {
            v86 = 1139;
          }

          else
          {
            v86 = 23;
          }

          v206 = v86;
          v47 = MEMORY[0x277D84F90];
          v48 = sub_225B2C374(MEMORY[0x277D84F90]);
          v87 = v25;
          v197 = v213;
          v198 = 0xD00000000000001BLL;
        }

        v49 = v25;
      }

      v88 = v207 | 0x8000000000000000;
      v89 = swift_isUniquelyReferenced_nonNull_native();
      *&v224 = v48;
      sub_225B2C4A0(v208, sub_225B2AC40, 0, v89, &v224);

      v90 = v224;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_225B29AA0(0, *(v47 + 2) + 1, 1, v47);
      }

      v92 = *(v47 + 2);
      v91 = *(v47 + 3);
      if (v92 >= v91 >> 1)
      {
        v47 = sub_225B29AA0((v91 > 1), v92 + 1, 1, v47);
      }

      *(v47 + 2) = v92 + 1;
      v93 = &v47[56 * v92];
      v94 = v213;
      *(v93 + 4) = 0xD00000000000001BLL;
      *(v93 + 5) = v94;
      *(v93 + 6) = 0xD000000000000020;
      *(v93 + 7) = v88;
      *(v93 + 8) = 0x6F72662874696E69;
      *(v93 + 9) = 0xEB00000000293A6DLL;
      *(v93 + 10) = 129;
      *v44 = v206;
      v95 = v197;
      v96 = v198;
      *(v44 + 8) = v47;
      *(v44 + 16) = v96;
      *(v44 + 24) = v95;
      *(v44 + 32) = v90;
      *(v44 + 40) = v49;
      swift_willThrow();
      v80 = v25;
    }

    result = __swift_destroy_boxed_opaque_existential_0(v209);
    v98 = v211;
    v99 = v212;
    if (v203)
    {

      if ((v205 & 1) == 0)
      {
        if (!v204)
        {
          return result;
        }

LABEL_39:
        v100 = 0;
        v101 = 0;
        goto LABEL_40;
      }
    }

    else if ((v205 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_38:
    if ((v204 & 1) == 0)
    {
      return result;
    }

    goto LABEL_39;
  }

  v26 = v203;
  type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader(0, a2, a3, v212);
  LOBYTE(v222[0]) = 0;
  swift_getWitnessTable();
  sub_225CCF6E4();
  v62 = v225;
  v63 = v211;
  v211[3] = v224;
  v63[8] = v62;
  LOBYTE(v224) = 1;
  v106 = sub_225CCF684();
  *v63 = v106;
  v63[1] = v107;
  v108 = v107;
  LOBYTE(v224) = 2;
  v210 = sub_225CCF684();
  v63[2] = v210;
  v63[3] = v109;
  v192 = v109;
  LOBYTE(v224) = 3;
  v110 = sub_225CCF684();
  v112 = v111;
  (*(v26 + 8))(v205, v204);
  v63[4] = v110;
  v63[5] = v112;
  v213 = v106;
  *&v222[0] = v106;
  *(&v222[0] + 1) = v108;
  v208 = v108;
  *&v221[0] = 45;
  *(&v221[0] + 1) = 0xE100000000000000;
  *&v216 = 43;
  *(&v216 + 1) = 0xE100000000000000;
  v113 = sub_2259D8654();
  *&v222[0] = sub_225CCF064();
  *(&v222[0] + 1) = v114;
  *&v221[0] = 95;
  *(&v221[0] + 1) = 0xE100000000000000;
  *&v216 = 47;
  *(&v216 + 1) = 0xE100000000000000;
  v115 = sub_225CCF064();
  v117 = v116;

  *&v224 = v115;
  *(&v224 + 1) = v117;

  v118 = sub_225CCE5D4();

  v119 = v118 & 3;
  if (v118 <= 0)
  {
    v119 = -(-v118 & 3);
  }

  if (v119 >= 1)
  {
    v120 = sub_225CCE6D4();
    MEMORY[0x22AA6CE70](v120);
  }

  v121 = sub_225CCCF04();
  v123 = v122;
  sub_2259CB6FC(v121, v122);

  if (v123 >> 60 == 15)
  {
    *&v224 = 0;
    *(&v224 + 1) = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000045, 0x8000000225D1C070);
    MEMORY[0x22AA6CE70](v213, v208);
    v124 = *(&v224 + 1);
    v125 = v224;
    v213 = 0x8000000225D1BF90;
    v126 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v210 = swift_allocError();
    v128 = v127;
    v129 = sub_225CCE954();
    v130 = *(v129 - 8);
    v131 = v196;
    (*(v130 + 56))(v196, 1, 1, v129);
    LODWORD(v129) = (*(v130 + 48))(v131, 1, v129);
    sub_2259CB640(v131, &unk_27D73B050, &unk_225CD3AD0);
    if (v129)
    {
      LOWORD(v113) = 120;
    }

    else
    {
      LOWORD(v113) = 23;
    }

    v132 = MEMORY[0x277D84F90];
    v133 = sub_225B2C374(MEMORY[0x277D84F90]);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    *&v224 = v133;
    sub_225B2C4A0(v126, sub_225B2AC40, 0, v134, &v224);

    v135 = v224;
    v136 = sub_225B29AA0(0, 1, 1, v132);
    v138 = *(v136 + 2);
    v137 = *(v136 + 3);
    v123 = v138 + 1;
    if (v138 >= v137 >> 1)
    {
LABEL_90:
      v136 = sub_225B29AA0((v137 > 1), v123, 1, v136);
    }

    *(v136 + 2) = v123;
    v139 = &v136[56 * v138];
    *(v139 + 4) = v125;
    *(v139 + 5) = v124;
    *(v139 + 6) = 0xD000000000000020;
    *(v139 + 7) = v213;
    *(v139 + 8) = 0x6F72662874696E69;
    *(v139 + 9) = 0xEB00000000293A6DLL;
    *(v139 + 10) = 134;
    *v128 = v113;
    *(v128 + 8) = v136;
    *(v128 + 16) = v125;
    *(v128 + 24) = v124;
    *(v128 + 32) = v135;
    *(v128 + 40) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v209);
    v101 = 0;
    v100 = 0;
    goto LABEL_56;
  }

  sub_2259B97A8(v121, v123);
  v140 = sub_225CCC994();
  swift_allocObject();
  v124 = sub_225CCC984();
  v128 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader(0, v202, v201, v212);
  swift_getWitnessTable();
  sub_225CCC974();
  v203 = v140;
  v204 = v113;
  v205 = 0;
  v206 = v121;
  v207 = v123;

  v141 = v211;
  *(v211 + 72) = v224;
  v125 = *(&v225 + 1);
  *(v141 + 11) = v225;
  *(v141 + 12) = v125;
  v142 = v227;
  *(v141 + 104) = v226;
  *(v141 + 120) = v142;
  *(v141 + 136) = v228;
  if (v125)
  {
    v213 = *(v125 + 16);
    if (v213)
    {
      v135 = 0;
      v208 = v128 - 8;
      v138 = (v125 + 40);
      while (1)
      {
        v137 = *(v125 + 16);
        if (v135 >= v137)
        {
          __break(1u);
          goto LABEL_90;
        }

        v123 = *(v138 - 1);
        v113 = *v138;
        v143 = *(v211 + 88);
        v144 = *(v211 + 120);
        v221[2] = *(v211 + 104);
        v221[3] = v144;
        v221[4] = *(v211 + 136);
        v221[0] = *(v211 + 72);
        v221[1] = v143;
        v145 = *(v211 + 88);
        v146 = *(v211 + 120);
        v218 = *(v211 + 104);
        v219 = v146;
        v220 = *(v211 + 136);
        v216 = *(v211 + 72);
        v217 = v145;

        v147 = *(v128 - 8);
        (*(v147 + 16))(&v214, v221, v128);
        sub_225AE9F4C(v123, v113);
        v124 = v148;
        v222[2] = v218;
        v222[3] = v219;
        v222[4] = v220;
        v222[0] = v216;
        v222[1] = v217;
        (*(v147 + 8))(v222, v128);
        if (!v124)
        {
          break;
        }

        ++v135;

        v138 += 2;
        if (v213 == v135)
        {
          goto LABEL_66;
        }
      }

      *&v216 = 0;
      *(&v216 + 1) = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD000000000000044, 0x8000000225D1C100);
      MEMORY[0x22AA6CE70](v123, v113);

      v160 = *(&v216 + 1);
      v161 = v216;
      v213 = 0x8000000225D1BF90;
      v179 = MEMORY[0x277D84F90];
      v180 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v210 = swift_allocError();
      v165 = v181;
      v182 = sub_225CCE954();
      v183 = *(v182 - 8);
      v184 = v196;
      (*(v183 + 56))(v196, 1, 1, v182);
      LODWORD(v182) = (*(v183 + 48))(v184, 1, v182);
      sub_2259CB640(v184, &unk_27D73B050, &unk_225CD3AD0);
      if (v182)
      {
        v169 = 120;
      }

      else
      {
        v169 = 23;
      }

      v185 = sub_225B2C374(v179);
      v186 = swift_isUniquelyReferenced_nonNull_native();
      *&v216 = v185;
      sub_225B2C4A0(v180, sub_225B2AC40, 0, v186, &v216);

      v172 = v216;
      v173 = sub_225B29AA0(0, 1, 1, v179);
      v188 = *(v173 + 2);
      v187 = *(v173 + 3);
      if (v188 >= v187 >> 1)
      {
        v173 = sub_225B29AA0((v187 > 1), v188 + 1, 1, v173);
      }

      *(v173 + 2) = v188 + 1;
      v176 = &v173[56 * v188];
      *(v176 + 4) = v161;
      *(v176 + 5) = v160;
      *(v176 + 6) = 0xD000000000000020;
      *(v176 + 7) = v213;
      *(v176 + 8) = 0x6F72662874696E69;
      *(v176 + 9) = 0xEB00000000293A6DLL;
      v177 = 142;
      goto LABEL_85;
    }
  }

LABEL_66:
  *&v221[0] = v210;
  *(&v221[0] + 1) = v192;
  *&v216 = 45;
  *(&v216 + 1) = 0xE100000000000000;
  v214 = 43;
  v215 = 0xE100000000000000;
  *&v221[0] = sub_225CCF064();
  *(&v221[0] + 1) = v149;
  *&v216 = 95;
  *(&v216 + 1) = 0xE100000000000000;
  v214 = 47;
  v215 = 0xE100000000000000;
  v150 = sub_225CCF064();
  v152 = v151;

  *&v222[0] = v150;
  *(&v222[0] + 1) = v152;

  v153 = sub_225CCE5D4();

  v154 = v153 & 3;
  if (v153 <= 0)
  {
    v154 = -(-v153 & 3);
  }

  if (v154 >= 1)
  {
    v155 = sub_225CCE6D4();
    MEMORY[0x22AA6CE70](v155);
  }

  v156 = sub_225CCCF04();
  v158 = v157;
  sub_2259CB6FC(v156, v157);

  v159 = v195;
  if (v158 >> 60 == 15)
  {
    *&v222[0] = 0;
    *(&v222[0] + 1) = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000003CLL, 0x8000000225D1C0C0);
    MEMORY[0x22AA6CE70](v210, v192);
    v160 = *(&v222[0] + 1);
    v161 = *&v222[0];
    v213 = 0x8000000225D1BF90;
    v162 = MEMORY[0x277D84F90];
    v163 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v210 = swift_allocError();
    v165 = v164;
    v166 = sub_225CCE954();
    v167 = *(v166 - 8);
    v168 = v196;
    (*(v167 + 56))(v196, 1, 1, v166);
    LODWORD(v166) = (*(v167 + 48))(v168, 1, v166);
    sub_2259CB640(v168, &unk_27D73B050, &unk_225CD3AD0);
    if (v166)
    {
      v169 = 120;
    }

    else
    {
      v169 = 23;
    }

    v170 = sub_225B2C374(v162);
    v171 = swift_isUniquelyReferenced_nonNull_native();
    *&v222[0] = v170;
    sub_225B2C4A0(v163, sub_225B2AC40, 0, v171, v222);

    v172 = *&v222[0];
    v173 = sub_225B29AA0(0, 1, 1, v162);
    v175 = *(v173 + 2);
    v174 = *(v173 + 3);
    if (v175 >= v174 >> 1)
    {
      v173 = sub_225B29AA0((v174 > 1), v175 + 1, 1, v173);
    }

    *(v173 + 2) = v175 + 1;
    v176 = &v173[56 * v175];
    *(v176 + 4) = v161;
    *(v176 + 5) = v160;
    *(v176 + 6) = 0xD000000000000020;
    *(v176 + 7) = v213;
    *(v176 + 8) = 0x6F72662874696E69;
    *(v176 + 9) = 0xEB00000000293A6DLL;
    v177 = 149;
LABEL_85:
    *(v176 + 10) = v177;
    *v165 = v169;
    *(v165 + 8) = v173;
    *(v165 + 16) = v161;
    *(v165 + 24) = v160;
    *(v165 + 32) = v172;
    *(v165 + 40) = 0;
    swift_willThrow();
    sub_2259B97A8(v206, v207);
    __swift_destroy_boxed_opaque_existential_0(v209);
    v100 = 0;
    v101 = 1;
LABEL_56:
    v99 = v212;
    goto LABEL_58;
  }

  sub_2259B97A8(v156, v158);
  swift_allocObject();
  sub_225CCC984();
  v178 = v205;
  sub_225CCC974();
  v99 = v212;
  if (!v178)
  {

    v98 = v211;
    (*(v199 + 32))(v211 + *(v200 + 60), v159, v202);
    JWSSignedJSON.verify()();
    if (!v189)
    {
      sub_2259B97A8(v156, v158);
      sub_2259B97A8(v206, v207);
      v190 = v193;
      v191 = v200;
      (*(v193 + 16))(v194, v98, v200);
      __swift_destroy_boxed_opaque_existential_0(v209);
      return (*(v190 + 8))(v98, v191);
    }

    sub_2259B97A8(v156, v158);
    sub_2259B97A8(v206, v207);
    __swift_destroy_boxed_opaque_existential_0(v209);
    v101 = 1;
    v100 = 1;
    goto LABEL_59;
  }

  sub_2259B97A8(v206, v207);
  sub_2259B97A8(v156, v158);

  __swift_destroy_boxed_opaque_existential_0(v209);
  v100 = 0;
  v101 = 1;
LABEL_58:
  v98 = v211;
LABEL_59:

LABEL_40:

  if (v101)
  {
    v102 = *(v98 + 88);
    v103 = *(v98 + 120);
    v226 = *(v98 + 104);
    v227 = v103;
    v228 = *(v98 + 136);
    v224 = *(v98 + 72);
    v225 = v102;
    v104 = v202;
    v105 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader(0, v202, v201, v99);
    result = (*(*(v105 - 8) + 8))(&v224, v105);
    if ((v100 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v104 = v202;
    if (!v100)
    {
      return result;
    }
  }

  return (*(v199 + 8))(v98 + *(v200 + 60), v104);
}