uint64_t sub_225C1B030(uint64_t a1, uint64_t a2)
{
  v3 = sub_225CCD564();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v7 = sub_225CCD694();
  (*(*(v7 - 8) + 8))(a1, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t HashDigest.serialize(into:)()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_225CCD544();
  v7 = v0;
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_225C1B288(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCD5B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlgorithmIdentifier(0);
  sub_225C1B644(&qword_27D740560, &protocol conformance descriptor for AlgorithmIdentifier);
  result = sub_225CCD7A4();
  if (!v2)
  {
    v9 = (a2 + *(type metadata accessor for HashDigest(0) + 20));
    v10 = *v9;
    v11 = v9[1];
    sub_2259CB710(*v9, v11);
    sub_2259F4494(v10, v11);
    sub_225CCD594();
    sub_225CCD7A4();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_225C1B428()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_225CCD544();
  v7 = v0;
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

BOOL HashDigest.equalsHash(of:)(uint64_t a1, unint64_t a2)
{
  v4 = AlgorithmIdentifier.hash(_:)(a1, a2);
  if (v3)
  {
    return 0;
  }

  v7 = v4;
  v8 = v5;
  v9 = type metadata accessor for HashDigest(0);
  v10 = sub_2259D8228(*(v2 + *(v9 + 20)), *(v2 + *(v9 + 20) + 8), v7, v8);
  sub_2259BEF00(v7, v8);
  return v10;
}

uint64_t sub_225C1B5D0(uint64_t a1)
{
  result = type metadata accessor for AlgorithmIdentifier(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225C1B644(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AlgorithmIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double Logotype.subjectLogo.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_225C1B6D0(v2, v3, v4);
}

double sub_225C1B6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    return sub_225C1B6E0(a1, a2, a3);
  }

  return result;
}

double sub_225C1B6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

__n128 Logotype.subjectLogo.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_225C1B76C(*v1, v1[1], v1[2]);
  result = v4;
  *v1 = v4;
  v1[2] = v2;
  return result;
}

void sub_225C1B76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    sub_225C1B77C(a1, a2, a3);
  }
}

void sub_225C1B77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

double Logotype.init(derEncoded:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_225CCD564();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v9 = sub_225CCD694();
  (*(*(v9 - 8) + 8))(a1, v9);
  (*(v6 + 8))(v8, v5);
  if (!v2)
  {
    v11 = v13;
    result = *&v12;
    *a2 = v12;
    *(a2 + 16) = v11;
  }

  return result;
}

double sub_225C1B990@<D0>(uint64_t a2@<X8>)
{
  v4 = sub_225CCD534();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6A898], v4);
  sub_225CCD7C4();
  (*(v5 + 8))(v7, v4);
  if (!v2)
  {
    v9 = v11;
    result = *&v10;
    *a2 = v10;
    *(a2 + 16) = v9;
  }

  return result;
}

double sub_225C1BAF8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_225CCD694();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return LogotypeInfo.init(derEncoded:)(v6, a2);
}

double sub_225C1BBCC@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = sub_225CCD564();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v10 = sub_225CCD694();
  (*(*(v10 - 8) + 8))(a1, v10);
  (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    v12 = v14;
    result = *&v13;
    *a3 = v13;
    *(a3 + 16) = v12;
  }

  return result;
}

uint64_t Logotype.serialize(into:)()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = *v0;
  v5 = *(v0 + 16);
  sub_225CCD544();
  v7[2] = v7[0];
  v8 = v5;
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_225C1BEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_225CCD534();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 != 1)
  {
    v12[1] = a2;
    v12[2] = a3;
    v12[3] = a4;
    (*(v8 + 104))(v11, *MEMORY[0x277D6A898], v7);
    sub_225C1C25C();
    sub_225CCD794();
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_225C1C004()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = *v0;
  v5 = *(v0 + 16);
  sub_225CCD544();
  v7[2] = v7[0];
  v8 = v5;
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

double Logotype.logotypeTuples.getter()
{
  if (*(v0 + 8) >= 2uLL)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared13LogotypeImageVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared12LogotypeInfoOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225C1C194(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_225C1C1FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_225C1C25C()
{
  result = qword_27D740570;
  if (!qword_27D740570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740570);
  }

  return result;
}

double LogotypeData.image.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_225C1B6E0(v2, v3, v4);
}

__n128 LogotypeData.image.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_225C1B77C(*v1, v1[1], v1[2]);
  result = v4;
  *v1 = v4;
  v1[2] = v2;
  return result;
}

double LogotypeData.init(derEncoded:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_225CCD564();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v9 = sub_225CCD694();
  (*(*(v9 - 8) + 8))(a1, v9);
  (*(v6 + 8))(v8, v5);
  if (!v2)
  {
    v11 = v13;
    result = *&v12;
    *a2 = v12;
    *(a2 + 16) = v11;
  }

  return result;
}

void sub_225C1C4F4(uint64_t a2@<X8>)
{
  sub_225C1CAF8();
  sub_225CCD724();
  if (v2)
  {

    v4 = 0;
    v5 = 0uLL;
  }

  else
  {
    v4 = v6;
    v5 = v7;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
}

double sub_225C1C57C@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = sub_225CCD564();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v10 = sub_225CCD694();
  (*(*(v10 - 8) + 8))(a1, v10);
  (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    v12 = v14;
    result = *&v13;
    *a3 = v13;
    *(a3 + 16) = v12;
  }

  return result;
}

uint64_t LogotypeData.serialize(into:)()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = *v0;
  v5 = *(v0 + 16);
  sub_225CCD544();
  v7[2] = v7[0];
  v8 = v5;
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

void sub_225C1C850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_225C1CAA4();
    sub_225CCD7A4();
  }
}

uint64_t sub_225C1C8C8()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = *v0;
  v5 = *(v0 + 16);
  sub_225CCD544();
  v7[2] = v7[0];
  v8 = v5;
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_225C1C9E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_225C1CA40(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_225C1CAA4()
{
  result = qword_27D740578;
  if (!qword_27D740578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740578);
  }

  return result;
}

unint64_t sub_225C1CAF8()
{
  result = qword_27D740580;
  if (!qword_27D740580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740580);
  }

  return result;
}

uint64_t LogotypeDetails.mediaType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LogotypeDetails.mediaType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LogotypeDetails.logotypes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

__n128 LogotypeDetails.init(derEncoded:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_225CCD564();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v9 = sub_225CCD694();
  (*(*(v9 - 8) + 8))(a1, v9);
  (*(v6 + 8))(v8, v5);
  if (!v2)
  {
    result = v12;
    *a2 = v11[1];
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t sub_225C1CDF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = sub_225CCD564();
  v37 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = sub_225CCD704();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD744();
  v38 = a1;
  v14 = v39;
  result = sub_225CCD754();
  if (!v14)
  {
    v16 = v10;
    v17 = v37;
    v35 = v13;
    v39 = v11;
    type metadata accessor for HashDigest(0);
    sub_225CCD544();
    sub_225C1E180(&qword_27D7405B0, type metadata accessor for HashDigest, &protocol conformance descriptor for HashDigest);
    v18 = sub_225CCD7D4();
    v19 = *(v17 + 8);
    v20 = v3;
    v19(v9, v3);
    v21 = v6;
    sub_225CCD544();
    v22 = v16;
    v23 = sub_225CCD7D4();
    v19(v21, v20);
    if (*(v18 + 16) == *(v23 + 16))
    {
      v24 = sub_2259D7494(v18, v23, sub_225C1D268);

      v26 = v35;
      result = MEMORY[0x22AA6BF30](v25);
      v29 = v39;
      if (__OFSUB__(v27 >> 1, v28))
      {
        __break(1u);
      }

      else
      {
        v30 = sub_225CCE594();
        v32 = v31;
        swift_unknownObjectRelease();
        v33 = sub_225C1D2CC(v24);

        result = (*(v29 + 8))(v26, v22);
        v34 = v36;
        *v36 = v30;
        v34[1] = v32;
        v34[2] = v33;
      }
    }

    else
    {

      sub_225CCD6E4();
      sub_225C1E180(&qword_27D7405B8, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
      swift_allocError();
      sub_225CCD6C4();
      swift_willThrow();
      return (*(v39 + 8))(v35, v16);
    }
  }

  return result;
}

uint64_t sub_225C1D268@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x22AA6BF30]();
  if (__OFSUB__(v3 >> 1, v4))
  {
    __break(1u);
  }

  else
  {
    v5 = sub_225CCE594();
    v7 = v6;
    result = swift_unknownObjectRelease();
    *a1 = v5;
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_225C1D2CC(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACD0, &qword_225CD4288);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACC0, &qword_225CD4278);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2259D5590(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_225A0DE54(v11, v4, &qword_27D73ACD0, &qword_225CD4288);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2259D5590((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_225C1E1C8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

__n128 sub_225C1D4F4@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = sub_225CCD564();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v10 = sub_225CCD694();
  (*(*(v10 - 8) + 8))(a1, v10);
  (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    result = v13;
    *a3 = v12[1];
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t LogotypeDetails.serialize(into:)()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  sub_225CCD544();
  v8 = v5;
  v9 = *(v0 + 1);
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_225C1D7C8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v76 = a2;
  v70 = a4;
  v75 = a3;
  v72 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACC0, &qword_225CD4278);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v61 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v79 = &v61 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v81 = &v61 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  v15 = type metadata accessor for HashDigest(0);
  v80 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_225CCD564();
  v71 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - v22;
  v24 = sub_225CCD704();
  v74 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v61 - v28;

  v30 = v77;
  result = sub_225CCD714();
  if (!v30)
  {
    v77 = v14;
    v63 = v17;
    v64 = v23;
    v75 = v27;
    v62 = v21;
    v65 = v18;
    sub_225CCD7A4();
    v67 = 0;
    v32 = *(v74 + 8);
    v66 = v24;
    v32(v29, v24);
    v33 = v70;
    v34 = *(v70 + 16);
    v35 = MEMORY[0x277D84F90];
    v61 = v34;
    if (v34)
    {
      v82 = MEMORY[0x277D84F90];
      sub_2259D55F4(0, v34, 0);
      v35 = v82;
      v36 = v33 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
      v76 = *(v69 + 72);
      v37 = v34;
      v38 = v81;
      v39 = v63;
      v78 = v4;
      do
      {
        v40 = v77;
        sub_225A0DE54(v36, v77, &qword_27D73ACC0, &qword_225CD4278);
        sub_225A0DE54(v40, v38, &qword_27D73ACC0, &qword_225CD4278);
        v41 = *(v4 + 48);
        v42 = v38;
        v43 = *(v38 + v41);
        v44 = *(v38 + v41 + 8);
        v45 = v79;
        v46 = &v79[v41];
        sub_2259D8888(v42, v79);
        *v46 = v43;
        *(v46 + 1) = v44;
        sub_2259D87C8(v45, v39);
        sub_225C1E118(v45);
        sub_225C1E118(v40);
        v82 = v35;
        v48 = *(v35 + 16);
        v47 = *(v35 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_2259D55F4((v47 > 1), v48 + 1, 1);
          v39 = v63;
          v35 = v82;
        }

        *(v35 + 16) = v48 + 1;
        sub_2259D8888(v39, v35 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v48);
        v36 += v76;
        --v37;
        v4 = v78;
        v38 = v81;
      }

      while (v37);
    }

    v82 = v35;
    v49 = v64;
    sub_225CCD544();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740588, &qword_225CFB2E8);
    sub_2259F6F50(&qword_27D740590, &qword_27D740588, &qword_225CFB2E8);
    sub_225C1E180(&qword_27D740598, type metadata accessor for HashDigest, &protocol conformance descriptor for HashDigest);
    v50 = v67;
    sub_225CCD774();
    v51 = v65;
    if (v50)
    {
      (*(v71 + 8))(v49, v65);
    }

    else
    {
      v52 = v71 + 8;
      v79 = *(v71 + 8);
      (v79)(v49, v65);

      v53 = MEMORY[0x277D84F90];
      if (v61)
      {
        v71 = v52;
        v78 = v4;
        v82 = MEMORY[0x277D84F90];
        v54 = v61;
        sub_2259D55B0(0, v61, 0);
        v53 = v82;
        v55 = v68;
        v56 = v70 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
        v80 = *(v69 + 72);
        v81 = (v74 + 32);
        do
        {
          v57 = v73;
          sub_225A0DE54(v56, v73, &qword_27D73ACC0, &qword_225CD4278);
          sub_225A0DE54(v57, v55, &qword_27D73ACC0, &qword_225CD4278);
          sub_225CCD714();
          sub_225C1E118(v57);
          sub_2259D882C(v55);
          v82 = v53;
          v59 = *(v53 + 16);
          v58 = *(v53 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_2259D55B0((v58 > 1), v59 + 1, 1);
            v55 = v68;
            v53 = v82;
          }

          *(v53 + 16) = v59 + 1;
          (*(v74 + 32))(v53 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v59, v75, v66);
          v56 += v80;
          --v54;
        }

        while (v54);
        v51 = v65;
      }

      v82 = v53;
      v60 = v62;
      sub_225CCD544();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7405A0, &unk_225CFB640);
      sub_2259F6F50(&qword_27D7405A8, &qword_27D7405A0, &unk_225CFB640);
      sub_225CCD774();
      (v79)(v60, v51);
    }
  }

  return result;
}

uint64_t sub_225C1DFEC()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  sub_225CCD544();
  v8 = v5;
  v9 = *(v0 + 1);
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_225C1E118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACC0, &qword_225CD4278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225C1E180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225C1E1C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACC0, &qword_225CD4278);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void Logotype.readerMetadata.getter(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - v4;
  v6 = sub_225CCCEA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB48, &qword_225CF29B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACC0, &qword_225CD4278);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = &v53 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACD0, &qword_225CD4288);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  v23 = v1[1];
  if (v23 >= 2)
  {
    v54 = v22;
    v55 = v20;
    v53 = v9;
    v56 = v7;
    v57 = v6;
    v60 = v23;
    v61 = a1;
    v26 = *v1;
    v27 = v1[2];
    v28 = *(v27 + 16);
    v58 = v5;
    v59 = v26;
    sub_225C1B6E0(v26, v23, v27);
    if (v28)
    {
      v29 = 0;
      while (1)
      {
        if (v29 >= *(v27 + 16))
        {
          __break(1u);
          return;
        }

        sub_225C1E838(v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v29, v17);
        v30 = &v17[*(v13 + 48)];
        v32 = *v30;
        v31 = *(v30 + 1);
        v65 = v32;
        v66 = v31;
        v63 = 0x2F2F3A7370747468;
        v64 = 0xE800000000000000;
        v33 = sub_225CCD1C4();
        (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
        sub_2259D8654();
        sub_225CCF074();
        v35 = v34;
        sub_2259CB640(v12, &qword_27D73DB48, &qword_225CF29B0);
        if ((v35 & 1) == 0)
        {
          break;
        }

        ++v29;
        sub_2259CB640(v17, &qword_27D73ACC0, &qword_225CD4278);
        if (v28 == v29)
        {
          goto LABEL_10;
        }
      }

      v37 = v62;
      sub_225C1E1C8(v17, v62);
      v38 = (v37 + *(v13 + 48));
      v39 = *v38;
      v40 = v38[1];
      v41 = v54;
      v42 = &v54[*(v55 + 48)];
      sub_2259D8888(v37, v54);
      *v42 = v39;
      *(v42 + 1) = v40;
      sub_2259D882C(v41);
      v43 = v58;
      sub_225CCCE84();

      v45 = v56;
      v44 = v57;
      if ((*(v56 + 48))(v43, 1, v57) == 1)
      {
        sub_225C1B76C(v59, v60, v27);
        sub_2259CB640(v43, &unk_27D73E090, &qword_225CD8ED0);
        goto LABEL_11;
      }

      v46 = *(v45 + 32);
      v47 = v53;
      v46(v53, v43, v44);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7405C0, &qword_225CFB2F0);
      v49 = v61;
      v50 = &v61[*(v48 + 48)];
      v46(v61, v47, v44);
      v51 = v60;

      v52 = v59;
      sub_225C1B76C(v59, v51, v27);
      *v50 = v52;
      v50[1] = v51;
      (*(*(v48 - 8) + 56))(v49, 0, 1, v48);
    }

    else
    {
LABEL_10:
      sub_225C1B76C(v59, v60, v27);
LABEL_11:
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7405C0, &qword_225CFB2F0);
      (*(*(v36 - 8) + 56))(v61, 1, 1, v36);
    }
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7405C0, &qword_225CFB2F0);
    v25 = *(*(v24 - 8) + 56);

    v25(a1, 1, 1, v24);
  }
}

uint64_t sub_225C1E838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACC0, &qword_225CD4278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double LogotypeImage.imageDetails.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

__n128 LogotypeImage.imageDetails.setter(uint64_t *a1)
{
  v3 = *a1;

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  return result;
}

__n128 LogotypeImage.init(derEncoded:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_225CCD564();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v9 = sub_225CCD694();
  (*(*(v9 - 8) + 8))(a1, v9);
  (*(v6 + 8))(v8, v5);
  if (!v2)
  {
    result = v12;
    *a2 = v11[1];
    *(a2 + 8) = result;
  }

  return result;
}

__n128 sub_225C1EB04@<Q0>(uint64_t a2@<X8>)
{
  sub_225C1F078();
  sub_225CCD724();
  if (!v2)
  {
    result = v6;
    *a2 = v5;
    *(a2 + 8) = v6;
  }

  return result;
}

__n128 sub_225C1EB74@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = sub_225CCD564();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v10 = sub_225CCD694();
  (*(*(v10 - 8) + 8))(a1, v10);
  (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    result = v13;
    *a3 = v12[1];
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t LogotypeImage.serialize(into:)()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  sub_225CCD544();
  v8 = v5;
  v9 = *(v0 + 1);
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_225C1EE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_225C1F024();

  sub_225CCD7A4();
}

uint64_t sub_225C1EEF8()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  sub_225CCD544();
  v8 = v5;
  v9 = *(v0 + 1);
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_225C1F024()
{
  result = qword_27D7405C8;
  if (!qword_27D7405C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7405C8);
  }

  return result;
}

unint64_t sub_225C1F078()
{
  result = qword_27D7405D0;
  if (!qword_27D7405D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7405D0);
  }

  return result;
}

double LogotypeInfo.init(derEncoded:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740538, &qword_225CFB048);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v62 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v69 = v54 - v6;
  v75 = sub_225CCD694();
  v72 = *(v75 - 8);
  v7 = MEMORY[0x28223BE20](v75);
  v60 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = v54 - v9;
  v10 = sub_225CCD5E4();
  v11 = *(v10 - 8);
  v64 = v10;
  v65 = v11;
  MEMORY[0x28223BE20](v10);
  v71 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCD674();
  v67 = *(v13 - 8);
  v68 = v13;
  MEMORY[0x28223BE20](v13);
  v66 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCD5F4();
  v70 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_225CCD564();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v54 - v23;
  v25 = a1;
  sub_225CCD664();
  v26 = sub_225CCD554();
  v29 = *(v19 + 8);
  v27 = v19 + 8;
  v28 = v29;
  v29(v24, v18);
  if (v26)
  {
    sub_225CCD664();
    sub_225CCD6E4();
    sub_225C1F964();
    swift_allocError();
    sub_225CCD6D4();
    v28(v24, v18);
    swift_willThrow();
    (*(v72 + 8))(v25, v75);
    return result;
  }

  v54[0] = v22;
  v54[1] = v27;
  v55 = v28;
  v56 = v18;
  v31 = v69;
  v57 = v17;
  v58 = v15;
  v32 = v72;
  v33 = v66;
  v34 = v25;
  sub_225CCD684();
  v36 = v67;
  v35 = v68;
  if ((*(v67 + 88))(v33, v68) != *MEMORY[0x277D6A9A8])
  {
    (*(v36 + 8))(v33, v35);
    sub_225CCD6E4();
    sub_225C1F964();
    swift_allocError();
    sub_225CCD6C4();
    swift_willThrow();
    (*(v32 + 8))(v34, v75);
    return result;
  }

  (*(v36 + 96))(v33, v35);
  (*(v70 + 32))(v57, v33, v58);
  sub_225CCD5C4();
  v37 = v31;
  sub_225CCD5D4();
  v38 = *(v32 + 48);
  v39 = v31;
  v40 = v75;
  if (v38(v39, 1, v75) == 1)
  {
    v41 = v37;
    v42 = v64;
    v43 = v65;
LABEL_11:
    sub_225C1F9BC(v41);
    sub_225CCD6E4();
    sub_225C1F964();
    swift_allocError();
    sub_225CCD6C4();
    swift_willThrow();
    (*(v32 + 8))(v34, v40);
    (*(v43 + 8))(v71, v42);
    goto LABEL_12;
  }

  v44 = v63;
  (*(v32 + 32))(v63, v37, v40);
  v41 = v62;
  sub_225CCD5D4();
  v45 = v38(v41, 1, v40);
  v43 = v65;
  if (v45 != 1)
  {
    (*(v32 + 8))(v44, v40);
    v42 = v64;
    goto LABEL_11;
  }

  sub_225C1F9BC(v41);
  v46 = v60;
  (*(v32 + 16))(v60, v44, v40);
  v47 = v44;
  v48 = v54[0];
  sub_225CCD544();
  v49 = v61;
  sub_225CCD7F4();
  if (!v49)
  {
    v51 = *(v32 + 8);
    v51(v34, v40);
    v55(v48, v56);
    v51(v46, v40);
    v51(v47, v40);
    (*(v43 + 8))(v71, v64);
    (*(v70 + 8))(v57, v58);
    v52 = v74;
    result = *&v73;
    v53 = v59;
    *v59 = v73;
    *(v53 + 2) = v52;
    return result;
  }

  v50 = *(v32 + 8);
  v50(v34, v40);
  v55(v48, v56);
  v50(v46, v40);
  v50(v47, v40);
  (*(v43 + 8))(v71, v64);
LABEL_12:
  (*(v70 + 8))(v57, v58);
  return result;
}

double LogotypeInfo.data.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_225C1B6E0(v2, v3, v4);
}

unint64_t sub_225C1F964()
{
  result = qword_27D7405B8;
  if (!qword_27D7405B8)
  {
    sub_225CCD6E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7405B8);
  }

  return result;
}

uint64_t sub_225C1F9BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740538, &qword_225CFB048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LogotypeInfo.serialize(into:)()
{
  v1 = sub_225CCD534();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 2);
  v7 = *v0;
  v8 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D6A898], v1);
  sub_225C1FB70();
  sub_225CCD794();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_225C1FB70()
{
  result = qword_27D7405D8;
  if (!qword_27D7405D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7405D8);
  }

  return result;
}

uint64_t sub_225C1FBC4()
{
  v1 = sub_225CCD534();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 2);
  v7 = *v0;
  v8 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D6A898], v1);
  sub_225C1FB70();
  sub_225CCD794();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_225C1FD0C(uint64_t a1)
{
  v2 = sub_225C1FE98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225C1FD48(uint64_t a1)
{
  v2 = sub_225C1FE98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderExternalData.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7405E0, &qword_225CFB450);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225C1FE98();
  sub_225CCFCE4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_225C1FE98()
{
  result = qword_27D7405E8;
  if (!qword_27D7405E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7405E8);
  }

  return result;
}

uint64_t sub_225C1FF14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7405E0, &qword_225CFB450);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225C1FE98();
  sub_225CCFCE4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_225C2004C()
{
  result = qword_27D7405F0;
  if (!qword_27D7405F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7405F0);
  }

  return result;
}

unint64_t sub_225C200A4()
{
  result = qword_27D7405F8;
  if (!qword_27D7405F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7405F8);
  }

  return result;
}

uint64_t ReaderAuthenticationAllowableElements.documentTypes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ReaderAuthenticationAllowableElements.elements.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

CoreIDVShared::ReaderAuthenticationAllowableElements __swiftcall ReaderAuthenticationAllowableElements.init(documentTypes:elements:)(Swift::OpaquePointer documentTypes, Swift::OpaquePointer elements)
{
  v2->_rawValue = documentTypes._rawValue;
  v2[1]._rawValue = elements._rawValue;
  result.elements = elements;
  result.documentTypes = documentTypes;
  return result;
}

double ReaderAuthenticationAllowableElements.init(derEncoded:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_225CCD564();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v9 = sub_225CCD694();
  (*(*(v9 - 8) + 8))(a1, v9);
  (*(v6 + 8))(v8, v5);
  if (!v2)
  {
    result = *&v11;
    *a2 = v11;
  }

  return result;
}

uint64_t sub_225C20388@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v3 = sub_225CCD534();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *MEMORY[0x277D6A898];
  v11 = *(v4 + 104);
  v11(&v18 - v8, v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  v20 = a1;
  v12 = v21;
  sub_225CCD7B4();
  if (v12)
  {
    return (*(v4 + 8))(v9, v3);
  }

  v14 = v9;
  v15 = *(v4 + 8);
  v15(v14, v3);
  v21 = v22;
  v11(v7, v10, v3);
  sub_225CCD7B4();
  result = (v15)(v7, v3);
  v16 = v22;
  v17 = v19;
  *v19 = v21;
  v17[1] = v16;
  return result;
}

uint64_t sub_225C205C8@<X0>(void *a2@<X8>)
{
  v36 = a2;
  v3 = sub_225CCD704();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v35 - v8;
  v10 = sub_225CCD564();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  v14 = sub_225CCD7E4();
  if (v2)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v16 = v14;
  v41 = v9;
  (*(v11 + 8))(v13, v10);
  v17 = *(v16 + 16);
  if (v17)
  {
    v35[1] = 0;
    v40 = v7;
    v42 = MEMORY[0x277D84F90];
    sub_2259D52A4(0, v17, 0);
    v18 = v42;
    v20 = *(v4 + 16);
    v19 = v4 + 16;
    v21 = *(v19 + 64);
    v35[0] = v16;
    v22 = v16 + ((v21 + 32) & ~v21);
    v38 = *(v19 + 56);
    v39 = v20;
    v37 = (v19 - 8);
    v23 = v41;
    do
    {
      v24 = v39;
      v39(v23, v22, v3);
      v25 = v40;
      v26 = v19;
      v24(v40, v23, v3);
      v27 = MEMORY[0x22AA6CDC0](v25);
      v29 = v28;
      v30 = v23;
      v31 = v3;
      (*v37)(v30, v3);
      v42 = v18;
      v33 = *(v18 + 16);
      v32 = *(v18 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2259D52A4((v32 > 1), v33 + 1, 1);
        v18 = v42;
      }

      *(v18 + 16) = v33 + 1;
      v34 = v18 + 16 * v33;
      *(v34 + 32) = v27;
      *(v34 + 40) = v29;
      v22 += v38;
      --v17;
      v3 = v31;
      v19 = v26;
      v23 = v41;
    }

    while (v17);

    *v36 = v18;
  }

  else
  {

    *v36 = MEMORY[0x277D84F90];
  }

  return result;
}

double sub_225C208F4@<D0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{
  v6 = sub_225CCD564();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v10 = sub_225CCD694();
  (*(*(v10 - 8) + 8))(a1, v10);
  (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    result = *&v12;
    *a3 = v12;
  }

  return result;
}

uint64_t ReaderAuthenticationAllowableElements.serialize(into:)()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_225CCD544();
  v7 = *v0;
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_225C20BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_225CCD534();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_225CCD564();
  v28 = *(v31 - 8);
  v9 = MEMORY[0x28223BE20](v31);
  v24 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = *MEMORY[0x277D6A898];
  v14 = *(v6 + 104);
  v23 = v5;
  v14(v8, v13, v5);
  sub_225CCD524();
  v25 = a2;
  v26 = a3;
  v29 = a2;
  v30 = a3;
  v15 = v27;
  sub_225CCD784();
  if (v15)
  {
    return (*(v28 + 8))(v12, v31);
  }

  v17 = v12;
  v18 = *(v28 + 8);
  v19 = v31;
  v18(v17, v31);
  v14(v8, v13, v23);
  v20 = v24;
  v21 = sub_225CCD524();
  MEMORY[0x28223BE20](v21);
  v22 = v26;
  *(&v23 - 2) = v25;
  *(&v23 - 1) = v22;
  sub_225CCD784();
  return (v18)(v20, v19);
}

uint64_t sub_225C20E80(uint64_t a1, uint64_t a2)
{
  v21 = sub_225CCD704();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD564();
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v18 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v17[0] = v8;
    v17[1] = a1;
    v22 = MEMORY[0x277D84F90];
    sub_2259D55B0(0, v10, 0);
    v11 = v22;
    v20 = v5 + 32;
    v12 = a2 + 40;
    while (1)
    {

      sub_225CCD714();
      if (v2)
      {
      }

      v22 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2259D55B0((v13 > 1), v14 + 1, 1);
        v11 = v22;
      }

      *(v11 + 16) = v14 + 1;
      (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, v21);
      v12 += 16;
      if (!--v10)
      {
        v8 = v17[0];
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v22 = v11;
    v16 = v18;
    sub_225CCD544();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7405A0, &unk_225CFB640);
    sub_225C2153C();
    sub_225CCD774();
    (*(v19 + 8))(v16, v8);
  }
}

uint64_t sub_225C2112C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = sub_225CCD704();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCD564();
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v19 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v18[0] = v9;
    v18[1] = a1;
    v23 = MEMORY[0x277D84F90];
    sub_2259D55B0(0, v11, 0);
    v12 = v23;
    v21 = v6 + 32;
    v13 = a3 + 40;
    while (1)
    {

      sub_225CCD714();
      if (v3)
      {
      }

      v23 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2259D55B0((v14 > 1), v15 + 1, 1);
        v12 = v23;
      }

      *(v12 + 16) = v15 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v8, v22);
      v13 += 16;
      if (!--v11)
      {
        v9 = v18[0];
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v23 = v12;
    v17 = v19;
    sub_225CCD544();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7405A0, &unk_225CFB640);
    sub_225C2153C();
    sub_225CCD774();
    (*(v20 + 8))(v17, v9);
  }
}

uint64_t sub_225C213D8()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_225CCD544();
  v7 = *v0;
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_225C2153C()
{
  result = qword_27D7405A8;
  if (!qword_27D7405A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7405A0, &unk_225CFB640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7405A8);
  }

  return result;
}

uint64_t ReaderAuthenticationLocalizedRelyingPartyNamePair.localeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReaderAuthenticationLocalizedRelyingPartyNamePair.localeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReaderAuthenticationLocalizedRelyingPartyNamePair.localizedName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReaderAuthenticationLocalizedRelyingPartyNamePair.localizedName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

CoreIDVShared::ReaderAuthenticationLocalizedRelyingPartyNamePair __swiftcall ReaderAuthenticationLocalizedRelyingPartyNamePair.init(localeIdentifier:localizedName:)(Swift::String localeIdentifier, Swift::String localizedName)
{
  *v2 = localeIdentifier;
  v2[1] = localizedName;
  result.localizedName = localizedName;
  result.localeIdentifier = localeIdentifier;
  return result;
}

uint64_t static ReaderAuthenticationLocalizedRelyingPartyNamePair.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_225CCF934(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_225CCF934();
    }
  }

  return result;
}

double ReaderAuthenticationLocalizedRelyingPartyNamePair.init(derEncoded:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_225CCD564();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v9 = sub_225CCD694();
  (*(*(v9 - 8) + 8))(a1, v9);
  (*(v6 + 8))(v8, v5);
  if (!v2)
  {
    result = *&v13;
    v11 = v14;
    v12 = v15;
    *a2 = v13;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return result;
}

uint64_t sub_225C21940@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740538, &qword_225CFB048);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v36 - v4;
  v5 = sub_225CCD564();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  v7 = sub_225CCD574();
  v39 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  sub_225CCD744();
  v41 = a1;
  v16 = v42;
  result = sub_225CCD754();
  if (!v16)
  {
    v37 = v10;
    v42 = v15;
    v18 = v39;
    v19 = v40;
    sub_225CCD744();
    sub_225CCD754();
    v20 = v13;
    sub_225CCD5D4();
    v21 = sub_225CCD694();
    v22 = (*(*(v21 - 8) + 48))(v19, 1, v21);
    sub_225C1F9BC(v19);
    v23 = (v18 + 8);
    if (v22 == 1)
    {
      v25 = v18 + 16;
      v24 = *(v18 + 16);
      v26 = v37;
      v27 = v42;
      v24(v37, v42, v7);
      v41 = MEMORY[0x22AA6CDB0](v26);
      v29 = v28;
      v24(v26, v20, v7);
      v30 = MEMORY[0x22AA6CDB0](v26);
      v32 = v31;
      v33 = *(v25 - 8);
      v33(v20, v7);
      result = (v33)(v27, v7);
      v34 = v38;
      *v38 = v41;
      v34[1] = v29;
      v34[2] = v30;
      v34[3] = v32;
    }

    else
    {
      sub_225CCD6E4();
      sub_225C1F964();
      swift_allocError();
      sub_225CCD6C4();
      swift_willThrow();
      v35 = *v23;
      (*v23)(v13, v7);
      return (v35)(v42, v7);
    }
  }

  return result;
}

double sub_225C21D44@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = sub_225CCD564();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225CCD7F4();
  v10 = sub_225CCD694();
  (*(*(v10 - 8) + 8))(a1, v10);
  (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    result = *&v14;
    v12 = v15;
    v13 = v16;
    *a3 = v14;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
  }

  return result;
}

uint64_t ReaderAuthenticationLocalizedRelyingPartyNamePair.serialize(into:)()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = *v0;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_225CCD544();
  v8[2] = v8[0];
  v9 = v6;
  v10 = v5;
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_225C22020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v9 = sub_225CCD574();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;

  MEMORY[0x22AA6BDC0](a2, a3);
  sub_225CCD7A4();
  if (v5)
  {
    return (*(v10 + 8))(v15, v9);
  }

  v17 = *(v10 + 8);
  v17(v15, v9);

  MEMORY[0x22AA6BDC0](v19, a5);
  sub_225CCD7A4();
  return (v17)(v13, v9);
}

uint64_t sub_225C221E8()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = *v0;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_225CCD544();
  v8[2] = v8[0];
  v9 = v6;
  v10 = v5;
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

uint64_t ReaderAuthenticationLocalizedRelyingPartyNames.localizedNames.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *ReaderAuthenticationLocalizedRelyingPartyNames.dictionary.getter()
{
  v1 = *v0;
  v2 = MEMORY[0x22AA6CB30](*(*v0 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v25 = *(v1 + 16);
  if (!v25)
  {
    return v2;
  }

  v3 = 0;
  v4 = (v1 + 56);
  while (v3 < *(v1 + 16))
  {
    v7 = *(v4 - 3);
    v6 = *(v4 - 2);
    v9 = *(v4 - 1);
    v8 = *v4;

    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_2259F18D4(v7, v6);
    v13 = v2[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_18;
    }

    v17 = v12;
    if (v2[3] < v16)
    {
      sub_225A43098(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_2259F18D4(v7, v6);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v11;
    sub_225A45904();
    v11 = v23;
    if (v17)
    {
LABEL_3:
      v5 = (v2[7] + 16 * v11);
      *v5 = v9;
      v5[1] = v8;

      goto LABEL_4;
    }

LABEL_12:
    v2[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v2[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    v20 = (v2[7] + 16 * v11);
    *v20 = v9;
    v20[1] = v8;

    v21 = v2[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_19;
    }

    v2[2] = v22;
LABEL_4:
    ++v3;
    v4 += 4;
    if (v25 == v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

void __swiftcall ReaderAuthenticationLocalizedRelyingPartyNames.preferredLocalization(preferredLanguages:)(CoreIDVShared::ReaderAuthenticationLocalizedRelyingPartyNamePair_optional *__return_ptr retstr, Swift::OpaquePointer preferredLanguages)
{
  v3 = retstr;
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5)
  {
    v30 = MEMORY[0x277D84F90];
    sub_2259D52A4(0, v5, 0);
    v6 = (v4 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v10 = *(v30 + 16);
      v9 = *(v30 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_2259D52A4((v9 > 1), v10 + 1, 1);
      }

      *(v30 + 16) = v10 + 1;
      v11 = v30 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 4;
      --v5;
    }

    while (v5);
    v3 = retstr;
  }

  v12 = objc_opt_self();
  v13 = sub_225CCE7F4();

  v14 = sub_225CCE7F4();
  v15 = [v12 preferredLocalizationsFromArray:v13 forPreferences:v14];

  v16 = sub_225CCE814();
  v17 = ReaderAuthenticationLocalizedRelyingPartyNames.dictionary.getter();
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = (v16 + 40);
    while (v19 < *(v16 + 16))
    {
      if (v17[2])
      {
        v22 = *(v20 - 1);
        v21 = *v20;

        v23 = sub_2259F18D4(v22, v21);
        if (v24)
        {
          v25 = v23;

          v26 = (v17[7] + 16 * v25);
          v27 = *v26;
          v28 = v26[1];

          v3->value.localeIdentifier._countAndFlagsBits = v22;
          v3->value.localeIdentifier._object = v21;
          v3->value.localizedName._countAndFlagsBits = v27;
          v3->value.localizedName._object = v28;
          return;
        }
      }

      ++v19;
      v20 += 2;
      if (v18 == v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    v3->value.localeIdentifier = 0u;
    v3->value.localizedName = 0u;
  }
}

uint64_t ReaderAuthenticationLocalizedRelyingPartyNames.init(derEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_225CCD564();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225C22D94();
  v9 = sub_225CCD7E4();
  if (v2)
  {
    v10 = sub_225CCD694();
    (*(*(v10 - 8) + 8))(a1, v10);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v12 = v9;
    v13 = sub_225CCD694();
    (*(*(v13 - 8) + 8))(a1, v13);
    result = (*(v6 + 8))(v8, v5);
    *a2 = v12;
  }

  return result;
}

uint64_t sub_225C22974@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_225CCD564();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  sub_225C22D94();
  v9 = sub_225CCD7E4();
  if (v2)
  {
    v10 = sub_225CCD694();
    (*(*(v10 - 8) + 8))(a1, v10);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v12 = v9;
    v13 = sub_225CCD694();
    (*(*(v13 - 8) + 8))(a1, v13);
    result = (*(v6 + 8))(v8, v5);
    *a2 = v12;
  }

  return result;
}

uint64_t ReaderAuthenticationLocalizedRelyingPartyNames.serialize(into:)()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = *v0;

  sub_225CCD544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740608, &qword_225CFB740);
  sub_225C22DE8();
  sub_225C22E4C();
  sub_225CCD774();
  (*(v2 + 8))(v4, v1);
}

uint64_t sub_225C22C54()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = *v0;

  sub_225CCD544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740608, &qword_225CFB740);
  sub_225C22DE8();
  sub_225C22E4C();
  sub_225CCD774();
  (*(v2 + 8))(v4, v1);
}

unint64_t sub_225C22D94()
{
  result = qword_27D740600;
  if (!qword_27D740600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740600);
  }

  return result;
}

unint64_t sub_225C22DE8()
{
  result = qword_27D740610;
  if (!qword_27D740610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D740608, &qword_225CFB740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740610);
  }

  return result;
}

unint64_t sub_225C22E4C()
{
  result = qword_27D740618;
  if (!qword_27D740618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740618);
  }

  return result;
}

void sub_225C22F5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_225CCCEA4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v7, a2);
  v10 = __swift_project_value_buffer(v5, a2);
  if (qword_28105B8B8 != -1)
  {
    swift_once();
  }

  v11 = qword_28105E338;
  v12 = sub_225CCE444();
  v13 = sub_225CCE444();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (v14)
  {
    sub_225CCCE34();

    (*(v6 + 32))(v10, v9, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_225C2311C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_225CCCEA4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_225C23FD4()
{
  v1[6] = v0;
  v2 = sub_225CCD954();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C240A0, 0, 0);
}

uint64_t sub_225C240A0()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_archivedTokenCache);
  v0[11] = v1;
  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_2259CB6FC(v3, v2);
  os_unfair_lock_unlock((v1 + 32));
  if (v2 >> 60 == 15)
  {
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_225C241C4;

    return sub_225C24748();
  }

  else
  {

    v6 = v0[1];

    return v6(v3, v2);
  }
}

uint64_t sub_225C241C4(void *a1)
{
  *(*v2 + 104) = v1;

  if (v1)
  {
    v4 = sub_225C244D4;
  }

  else
  {

    v4 = sub_225C242E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225C242E0()
{
  v1 = v0[11];
  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_2259CB6FC(v3, v2);
  os_unfair_lock_unlock((v1 + 32));
  if (v2 >> 60 == 15)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[8];
    v7 = off_28105B918;
    v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v9));
    (*(v6 + 16))(v4, &v7[v8], v5);
    os_unfair_lock_unlock(&v7[v9]);
    v10 = sub_225CCD934();
    v11 = sub_225CCED04();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[8];
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2259A7000, v10, v11, "RTCReporter: No archived session token available", v16, 2u);
      MEMORY[0x22AA6F950](v16, -1, -1);
    }

    (*(v15 + 8))(v13, v14);
    v3 = 0;
    v2 = 0xF000000000000000;
  }

  v17 = v0[1];

  return v17(v3, v2);
}

uint64_t sub_225C244D4()
{
  v24 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v3 + 16))(v2, &v5[v6], v4);
  os_unfair_lock_unlock(&v5[v7]);
  v8 = v1;
  v9 = sub_225CCD934();
  v10 = sub_225CCED14();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_225CCFB24();
    v20 = sub_2259BE198(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2259A7000, v9, v10, "RTCReporter: Failed to initialize session for token archiving: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);

    (*(v14 + 8))(v13, v15);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v21 = v0[1];

  return v21(0, 0xF000000000000000);
}

uint64_t sub_225C24748()
{
  *(v1 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C247E4, 0, 0);
}

uint64_t sub_225C247E4(uint64_t a1, uint64_t a2)
{
  v33 = v2;
  v3 = *(v2[3] + OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_sessionStatus);
  v2[5] = v3;
  KeyPath = swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_225C29E30;
  *(v5 + 24) = KeyPath;

  os_unfair_lock_lock(v3 + 7);
  sub_225C29E38(&v3[4], &v31);
  os_unfair_lock_unlock(v3 + 7);

  v6 = v31;
  v2[6] = v31;
  v7 = v32;

  if (v7)
  {
    if (v7 == 1)
    {

      v8 = v2[1];

      return v8(v6);
    }

    else
    {
      v14 = v2[4];
      v15 = MEMORY[0x277D84F90];
      v16 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v18 = v17;
      v19 = sub_225CCE954();
      v20 = *(v19 - 8);
      (*(v20 + 56))(v14, 1, 1, v19);
      v21 = (*(v20 + 48))(v14, 1, v19);
      sub_2259CB640(v14, &unk_27D73B050, &unk_225CD3AD0);
      v22 = sub_225B2C374(v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v22;
      sub_225B2C4A0(v16, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v31);

      v24 = v31;
      v25 = sub_225B29AA0(0, 1, 1, v15);
      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_225B29AA0((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[56 * v27];
      *(v28 + 4) = 0xD00000000000002FLL;
      *(v28 + 5) = 0x8000000225D26980;
      *(v28 + 6) = 0xD00000000000002DLL;
      *(v28 + 7) = 0x8000000225D26930;
      *(v28 + 8) = 0x6E6F6973736573;
      *(v28 + 9) = 0xE700000000000000;
      *(v28 + 10) = 277;
      if (v21)
      {
        v29 = 107;
      }

      else
      {
        v29 = 23;
      }

      *v18 = v29;
      *(v18 + 8) = v25;
      *(v18 + 16) = 0xD00000000000002FLL;
      *(v18 + 24) = 0x8000000225D26980;
      *(v18 + 32) = v24;
      *(v18 + 40) = 0;
      swift_willThrow();

      v30 = v2[1];

      return v30();
    }
  }

  else
  {
    v10 = swift_task_alloc();
    v2[7] = v10;
    v11 = sub_2259D8718(0, &qword_27D740658, 0x277D43FE0);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    *v10 = v2;
    v10[1] = sub_225C24C18;
    v13 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v2 + 2, v6, v11, v12, v13);
  }
}

uint64_t sub_225C24C18()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_225C24E24;
  }

  else
  {
    v2 = sub_225C24D2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_225C24D2C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock(v2 + 7);
  sub_225C29EA4(&v2[4]);
  if (v1)
  {
    v4 = (v0[5] + 28);

    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = v0[6];
    os_unfair_lock_unlock((v0[5] + 28));
    sub_225C29E88(v5, 0);

    v6 = v0[1];

    v6(v3);
  }
}

uint64_t sub_225C24E24()
{
  sub_225C29E88(*(v0 + 48), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C24E94(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  sub_225C29EF4(a1, a2);
  swift_getAtKeyPath();
  sub_225C29E88(a1, v3);
  return v6;
}

uint64_t sub_225C24EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = v17;
  v8[24] = v18;
  v8[22] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v8[25] = swift_task_alloc();
  v13 = sub_225CCD954();
  v8[26] = v13;
  v8[27] = *(v13 - 8);
  v8[28] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[29] = v14;
  *v14 = v8;
  v14[1] = sub_225C25064;

  return sub_225C25830(a5, a6, a7, a8);
}

uint64_t sub_225C25064(uint64_t a1)
{
  v3 = *v2;
  v3[15] = v2;
  v3[16] = a1;
  v3[17] = v1;
  v3[30] = v1;

  if (v1)
  {
    v4 = sub_225C2534C;
  }

  else
  {
    v4 = sub_225C25180;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225C25180()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v2 + 16))(v1, &v4[v5], v3);
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2259A7000, v7, v8, "RTCReporter: Successfully established session with RTC", v9, 2u);
    MEMORY[0x22AA6F950](v9, -1, -1);
  }

  v10 = v0[16];
  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[26];
  v14 = v0[22];

  (*(v12 + 8))(v11, v13);
  *v14 = v10;

  v15 = v0[1];

  return v15();
}

uint64_t sub_225C2534C()
{
  v46 = v0;
  v1 = v0[30];
  v2 = v1;
  v3 = sub_225B2C248(MEMORY[0x277D84F90]);
  swift_getErrorValue();
  v4 = v0[13];
  v5 = v1;
  sub_225B21FAC(v4, &v40);

  v6 = v41;
  if (v41)
  {
    v39 = v40;
    v37 = v42;
    v38 = v43;
    v7 = v44;
    v1 = v45;
  }

  else
  {
    v8 = v0[30];
    v0[19] = v8;
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    v10 = swift_dynamicCast();
    v11 = v0[30];
    if (v10)
    {
      v12 = v0[20];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v14 = [v12 code];
      v15 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v15;
      *(inited + 40) = v14;
      v7 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v16 = v11;
      v37 = 0;
      v38 = 0;
      v6 = MEMORY[0x277D84F90];
      v39 = 555;
    }

    else
    {
      v17 = v0[25];
      v0[21] = v11;
      v18 = v11;
      v19 = sub_225CCE954();
      v20 = swift_dynamicCast();
      v21 = *(v19 - 8);
      (*(v21 + 56))(v17, v20 ^ 1u, 1, v19);
      LODWORD(v21) = (*(v21 + 48))(v17, 1, v19);
      sub_2259CB640(v17, &unk_27D73B050, &unk_225CD3AD0);
      if (v21)
      {
        v22 = 555;
      }

      else
      {
        v22 = 23;
      }

      v39 = v22;
      v6 = MEMORY[0x277D84F90];
      v7 = sub_225B2C374(MEMORY[0x277D84F90]);
      v23 = v11;
      v37 = 0xD000000000000029;
      v38 = 0x8000000225D269B0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v7;
  sub_225B2C4A0(v3, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v40);

  v36 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_225B29AA0(0, *(v6 + 2) + 1, 1, v6);
  }

  v26 = *(v6 + 2);
  v25 = *(v6 + 3);
  if (v26 >= v25 >> 1)
  {
    v6 = sub_225B29AA0((v25 > 1), v26 + 1, 1, v6);
  }

  v35 = v0[30];
  v34 = v0[23];

  *(v6 + 2) = v26 + 1;
  v27 = &v6[56 * v26];
  *(v27 + 4) = 0xD000000000000029;
  *(v27 + 5) = 0x8000000225D269B0;
  *(v27 + 6) = 0xD00000000000002DLL;
  *(v27 + 7) = 0x8000000225D26930;
  *(v27 + 8) = 0xD000000000000041;
  *(v27 + 9) = 0x8000000225D269E0;
  *(v27 + 10) = 302;
  sub_2259CB5EC();
  v28 = swift_allocError();
  *v29 = v39;
  *(v29 + 8) = v6;
  *(v29 + 16) = v37;
  *(v29 + 24) = v38;
  *(v29 + 32) = v36;
  *(v29 + 40) = v1;

  v30 = v1;
  v34(v28);

  swift_allocError();
  *v31 = v39;
  *(v31 + 8) = v6;
  *(v31 + 16) = v37;
  *(v31 + 24) = v38;
  *(v31 + 32) = v36;
  *(v31 + 40) = v1;
  swift_willThrow();

  v32 = v0[1];

  return v32();
}

uint64_t sub_225C25830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740660, &qword_225CFB980);
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v7 = sub_225CCD954();
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C259B0, 0, 0);
}

uint64_t sub_225C259B0()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = off_28105B918;
  *(v0 + 264) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 272) = v6;
  v7 = *(v5 + 48);
  *(v0 + 320) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 280) = v9;
  *(v0 + 288) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v35 = v6;
  v33 = v9;
  v9(v1, &v4[v6], v2);
  v34 = v8;
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "RTCReporter: initializeRTCSession called", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 256);
  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v16 = *(v0 + 176);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);

  v20 = *(v15 + 8);
  *(v0 + 296) = v20;
  v20(v13, v14);
  sub_225C268B8(v19, v18, v17, v16);
  *(v0 + 304) = v21;
  *(v0 + 312) = 0;
  v37 = v21;
  v22 = *(v0 + 248);
  v23 = *(v0 + 224);
  sub_225CCD4E4();
  os_unfair_lock_lock(&v4[v34]);
  v33(v22, &v4[v35], v23);
  os_unfair_lock_unlock(&v4[v34]);
  v24 = sub_225CCD934();
  v25 = sub_225CCED04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2259A7000, v24, v25, "RTCReporter: Session lock enter", v26, 2u);
    MEMORY[0x22AA6F950](v26, -1, -1);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 208);
  v36 = *(v0 + 216);
  v30 = *(v0 + 200);

  v20(v27, v28);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_225C25E44;
  swift_continuation_init();
  *(v0 + 136) = v30;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740668, &qword_225CFB988);
  sub_225CCE914();
  (*(v29 + 32))(boxed_opaque_existential_1, v36, v30);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_225C27A74;
  *(v0 + 104) = &block_descriptor_10;
  [v37 startConfigurationWithCompletionHandler_];
  (*(v29 + 8))(boxed_opaque_existential_1, v30);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_225C25E44()
{

  return MEMORY[0x2822009F8](sub_225C25F24, 0, 0);
}

uint64_t sub_225C25F24()
{
  v55 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {
    v51 = *(v0 + 280);
    v2 = *(v0 + 264);
    v3 = *(v0 + 272);
    v4 = *(v0 + 240);
    v5 = *(v0 + 224);
    v6 = (*(v0 + 320) + 3) & 0x1FFFFFFFCLL;
    v7 = *(*(v0 + 184) + OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_startTime);
    v8 = *(*v7 + *MEMORY[0x277D841D0] + 16);
    v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v7 + v9));
    sub_2259CB640(v7 + v8, &unk_27D73FD00, &qword_225CDC6E0);
    _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
    v10 = sub_225CCD0B4();
    (*(*(v10 - 8) + 56))(v7 + v8, 0, 1, v10);
    os_unfair_lock_unlock((v7 + v9));
    os_unfair_lock_lock((v2 + v6));
    v51(v4, v2 + v3, v5);
    os_unfair_lock_unlock((v2 + v6));

    v11 = sub_225CCD934();
    v12 = sub_225CCED04();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 296);
    v53 = *(v0 + 240);
    v15 = &OBJC_INSTANCE_METHODS__TtP13CoreIDVShared52IdentityDocumentProviderExtensionUIDelegateInterface_;
    v16 = *(v0 + 224);
    if (v13)
    {
      v52 = *(v0 + 296);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v54[0] = v18;
      *v17 = 136315138;
      v19 = MEMORY[0x22AA6D060](v1, MEMORY[0x277D84F70] + 8);
      v21 = v20;

      v22 = v19;
      v15 = &OBJC_INSTANCE_METHODS__TtP13CoreIDVShared52IdentityDocumentProviderExtensionUIDelegateInterface_;
      v23 = sub_2259BE198(v22, v21, v54);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_2259A7000, v11, v12, "RTCReporter: Retrieved backends: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AA6F950](v18, -1, -1);
      MEMORY[0x22AA6F950](v17, -1, -1);

      v52(v53, v16);
    }

    else
    {

      v14(v53, v16);
    }

    if (qword_27D739F88 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 224), qword_27D73DA70);

    v43 = sub_225CCD934();
    v44 = sub_225CCED34();

    if (os_log_type_enabled(v43, v44))
    {
      v46 = *(v0 + 168);
      v45 = *(v0 + 176);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54[0] = v48;
      *v47 = v15[27];
      *(v47 + 4) = sub_2259BE198(v46, v45, v54);
      _os_log_impl(&dword_2259A7000, v43, v44, "Initiating RTC reporting for subject: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AA6F950](v48, -1, -1);
      MEMORY[0x22AA6F950](v47, -1, -1);
    }

    v49 = *(v0 + 8);
    v50 = *(v0 + 304);

    return v49(v50);
  }

  else
  {
    v24 = *(v0 + 192);
    v25 = MEMORY[0x277D84F90];
    v26 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v24, 1, 1, v29);
    v31 = (*(v30 + 48))(v24, 1, v29);
    sub_2259CB640(v24, &unk_27D73B050, &unk_225CD3AD0);
    v32 = sub_225B2C374(v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54[0] = v32;
    sub_225B2C4A0(v26, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v54);

    v34 = v54[0];
    v35 = sub_225B29AA0(0, 1, 1, v25);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
    }

    v38 = *(v0 + 304);
    *(v35 + 2) = v37 + 1;
    v39 = &v35[56 * v37];
    *(v39 + 4) = 0xD000000000000046;
    *(v39 + 5) = 0x8000000225D26A70;
    *(v39 + 6) = 0xD00000000000002DLL;
    *(v39 + 7) = 0x8000000225D26930;
    *(v39 + 8) = 0xD00000000000002DLL;
    *(v39 + 9) = 0x8000000225D26AC0;
    *(v39 + 10) = 342;
    if (v31)
    {
      v40 = 555;
    }

    else
    {
      v40 = 23;
    }

    *v28 = v40;
    *(v28 + 8) = v35;
    *(v28 + 16) = 0xD000000000000046;
    *(v28 + 24) = 0x8000000225D26A70;
    *(v28 + 32) = v34;
    *(v28 + 40) = 0;
    swift_willThrow();

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_225C265A0(uint64_t a1, uint64_t a2)
{
  sub_225C29E88(*a1, *(a1 + 8));
  *a1 = a2;
  *(a1 + 8) = 0;
}

uint64_t sub_225C265F0()
{
  v1 = v0;
  if (qword_27D739F88 != -1)
  {
    swift_once();
  }

  v2 = sub_225CCD954();
  __swift_project_value_buffer(v2, qword_27D73DA70);
  v3 = sub_225CCD934();
  v4 = sub_225CCED04();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2259A7000, v3, v4, "RTCReporter: deinit", v5, 2u);
    MEMORY[0x22AA6F950](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_samplingUUID;
  v7 = sub_225CCD124();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  return v1;
}

uint64_t sub_225C26740()
{
  sub_225C265F0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityAnalyticsReporter(uint64_t a1)
{
  result = qword_27D740638;
  if (!qword_27D740638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_225C267EC(uint64_t a1)
{
  result = sub_225CCD124();
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

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared25IdentityAnalyticsReporterC13SessionStatus33_8EC95EFE494D44D075F1BFC7A6BCDA4BLLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void sub_225C268B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v150 = a3;
  v151 = a4;
  v152 = a1;
  v153 = a2;
  v161 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v145 = &v144 - v7;
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v149 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v147 = &v144 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v148 = &v144 - v15;
  MEMORY[0x28223BE20](v14);
  v146 = &v144 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080, &unk_225CEF1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73D0;
  if (!*MEMORY[0x277D44030])
  {
    __break(1u);
    goto LABEL_51;
  }

  *(inited + 32) = sub_225CCE474();
  *(inited + 40) = v18;
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  v20 = sub_2259D8718(0, &qword_281059A70, 0x277CCABB0);
  *(inited + 72) = v20;
  *(inited + 48) = v19;
  if (!*MEMORY[0x277D44040])
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(inited + 80) = sub_225CCE474();
  *(inited + 88) = v21;
  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  *(inited + 120) = v20;
  *(inited + 96) = v22;
  if (!*MEMORY[0x277D44080])
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(inited + 128) = sub_225CCE474();
  *(inited + 136) = v23;
  v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  *(inited + 168) = v20;
  *(inited + 144) = v24;
  if (!*MEMORY[0x277D44010])
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(inited + 176) = sub_225CCE474();
  *(inited + 184) = v25;
  v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 216) = v20;
  *(inited + 192) = v26;
  if (!*MEMORY[0x277D44028])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  *(inited + 224) = sub_225CCE474();
  *(inited + 232) = v27;
  v28 = [objc_opt_self() mainBundle];
  v29 = [v28 bundleIdentifier];

  if (v29)
  {
    v19 = sub_225CCE474();
    v31 = v30;

    v32 = (inited + 240);
    *(inited + 264) = MEMORY[0x277D837D0];
    if (v31)
    {
      *v32 = v19;
      goto LABEL_11;
    }
  }

  else
  {
    v32 = (inited + 240);
    *(inited + 264) = MEMORY[0x277D837D0];
  }

  *v32 = 0;
  v31 = 0xE000000000000000;
LABEL_11:
  *(inited + 248) = v31;
  if (!*MEMORY[0x277D44070])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  *(inited + 272) = sub_225CCE474();
  *(inited + 280) = v33;
  v34 = OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_samplingUUID;
  v35 = sub_225CCD124();
  *(inited + 312) = v35;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 288));
  (*(*(v35 - 8) + 16))(boxed_opaque_existential_1, v4 + v34, v35);
  v37 = sub_225B2C92C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090, &unk_225CD7610);
  swift_arrayDestroy();
  v38 = [objc_opt_self() newHierarchyTokenFromParentToken_];
  v154 = v8;
  v155 = v9;
  if (!v38)
  {
    v149 = v5;
    goto LABEL_30;
  }

  v39 = v38;
  v156 = v37;
  v40 = objc_opt_self();
  *&v159 = 0;
  v41 = [v40 archivedDataWithRootObject:v39 requiringSecureCoding:0 error:&v159];
  v42 = v159;
  if (v41)
  {
    v43 = sub_225CCCFA4();
    v45 = v44;

    v19 = *(v4 + OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_archivedTokenCache);
    MEMORY[0x28223BE20](v46);
    *(&v144 - 2) = v43;
    *(&v144 - 1) = v45;
    os_unfair_lock_lock(v19 + 8);
    sub_225C29F28(&v19[4]);
    if (v5)
    {
LABEL_59:
      os_unfair_lock_unlock(v19 + 8);

      __break(1u);
      return;
    }

    v144 = v39;
    v149 = 0;
    os_unfair_lock_unlock(v19 + 8);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v47 = off_28105B918;
    v48 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v19 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
    os_unfair_lock_lock((v19 + off_28105B918));
    v49 = v155;
    v50 = &v47[v48];
    v51 = v146;
    (*(v155 + 16))(v146, v50, v8);
    v52 = (v19 + v47);
    v53 = v51;
    os_unfair_lock_unlock(v52);
    v54 = sub_225CCD934();
    v55 = sub_225CCED04();
    if (os_log_type_enabled(v54, v55))
    {
      v19 = v8;
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2259A7000, v54, v55, "RTCReporter: Successfully archived session token during initialization", v56, 2u);
      MEMORY[0x22AA6F950](v56, -1, -1);
      sub_2259BEF00(v43, v45);

      (*(v49 + 8))(v53, v19);
    }

    else
    {
      sub_2259BEF00(v43, v45);

      (*(v49 + 8))(v53, v8);
    }

    v39 = v144;
  }

  else
  {
    v57 = v42;
    v58 = sub_225CCCCC4();

    v5 = v58;
    swift_willThrow();
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v59 = off_28105B918;
    v60 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v61 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v61));
    v62 = &v59[v60];
    v63 = v149;
    (*(v9 + 16))(v149, v62, v8);
    os_unfair_lock_unlock(&v59[v61]);
    v64 = v58;
    v65 = sub_225CCD934();
    v66 = v8;
    v67 = sub_225CCED14();

    if (os_log_type_enabled(v65, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v159 = v69;
      *v68 = 136315138;
      swift_getErrorValue();
      v70 = sub_225CCFB24();
      v19 = sub_2259BE198(v70, v71, &v159);

      *(v68 + 4) = v19;
      _os_log_impl(&dword_2259A7000, v65, v67, "RTCReporter: Failed to archive session token during initialization: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x22AA6F950](v69, -1, -1);
      MEMORY[0x22AA6F950](v68, -1, -1);

      (*(v155 + 8))(v149, v154);
    }

    else
    {

      (*(v9 + 8))(v63, v66);
    }

    v149 = 0;
  }

  if (!*MEMORY[0x277D44058])
  {
    __break(1u);
    goto LABEL_59;
  }

  v72 = sub_225CCE474();
  v74 = v73;
  v160 = sub_2259D8718(0, &qword_27D740658, 0x277D43FE0);
  *&v159 = v39;
  sub_2259B9624(&v159, v158);
  v75 = v156;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v157 = v75;
  sub_225A03F40(v158, v72, v74, isUniquelyReferenced_nonNull_native);

  v37 = v157;
LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD68, &unk_225CF90E0);
  v77 = swift_initStackObject();
  *(v77 + 16) = xmmword_225CD4890;
  if (!*MEMORY[0x277D44090])
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  *(v77 + 32) = sub_225CCE474();
  *(v77 + 40) = v78;
  v79 = v153;
  *(v77 + 48) = v152;
  *(v77 + 56) = v79;
  if (!*MEMORY[0x277D44098])
  {
    goto LABEL_57;
  }

  *(v77 + 64) = sub_225CCE474();
  *(v77 + 72) = v80;
  v81 = v151;
  *(v77 + 80) = v150;
  *(v77 + 88) = v81;

  v82 = sub_225B2E928(v77);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD70, &unk_225CDC620);
  swift_arrayDestroy();

  sub_225BE11E0(v83);
  v156 = v37;

  sub_225BE171C(v82);
  v84 = objc_allocWithZone(MEMORY[0x277D43FE0]);
  v85 = sub_225CCE2B4();

  v86 = sub_225CCE2B4();

  v87 = sub_225CCE7F4();
  v88 = [v84 initWithSessionInfo:v85 userInfo:v86 frameworksToCheck:v87];

  if (v88)
  {
    v89 = v154;
    v90 = v155;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v91 = off_28105B918;
    v92 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v93 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v93));
    v94 = &v91[v92];
    v95 = v148;
    (*(v90 + 16))(v148, v94, v89);
    os_unfair_lock_unlock(&v91[v93]);

    v96 = sub_225CCD934();
    v97 = sub_225CCED04();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      *&v159 = v152;
      *v98 = 136315394;
      v153 = v88;

      v99 = sub_225CCE2E4();
      v101 = v100;

      v102 = sub_2259BE198(v99, v101, &v159);

      *(v98 + 4) = v102;
      *(v98 + 12) = 2080;
      v103 = sub_225CCE2E4();
      v105 = v104;

      v106 = sub_2259BE198(v103, v105, &v159);

      *(v98 + 14) = v106;
      _os_log_impl(&dword_2259A7000, v96, v97, "RTCReporter: Initialized new session with sessionInfo: %s, userInfo: %s", v98, 0x16u);
      v107 = v152;
      swift_arrayDestroy();
      MEMORY[0x22AA6F950](v107, -1, -1);
      MEMORY[0x22AA6F950](v98, -1, -1);

      (*(v155 + 8))(v148, v154);
    }

    else
    {

      (*(v90 + 8))(v95, v89);
    }
  }

  else
  {
    v153 = 0;
    v108 = v154;
    v109 = v155;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v110 = off_28105B918;
    v111 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v112 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v112));
    v113 = &v110[v111];
    v114 = v147;
    (*(v109 + 16))(v147, v113, v108);
    os_unfair_lock_unlock(&v110[v112]);

    v115 = sub_225CCD934();
    v116 = sub_225CCED14();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&v159 = v118;
      *v117 = 136315394;

      v119 = sub_225CCE2E4();
      v121 = v120;

      v122 = sub_2259BE198(v119, v121, &v159);

      *(v117 + 4) = v122;
      *(v117 + 12) = 2080;
      v123 = sub_225CCE2E4();
      v125 = v124;

      v126 = sub_2259BE198(v123, v125, &v159);

      *(v117 + 14) = v126;
      _os_log_impl(&dword_2259A7000, v115, v116, "Failed to create a reporting session with sessionInfo: %s, userInfo: %s", v117, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA6F950](v118, -1, -1);
      MEMORY[0x22AA6F950](v117, -1, -1);

      (*(v155 + 8))(v147, v154);
    }

    else
    {

      (*(v109 + 8))(v114, v108);
    }

    v154 = 0x8000000225D26B20;
    v155 = 0x8000000225D26930;
    v127 = MEMORY[0x277D84F90];
    v128 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v130 = v129;
    v131 = sub_225CCE954();
    v132 = *(v131 - 8);
    v133 = v145;
    (*(v132 + 56))(v145, 1, 1, v131);
    LODWORD(v131) = (*(v132 + 48))(v133, 1, v131);
    sub_2259CB640(v133, &unk_27D73B050, &unk_225CD3AD0);
    if (v131)
    {
      v134 = 555;
    }

    else
    {
      v134 = 23;
    }

    v135 = sub_225B2C374(v127);
    v136 = swift_isUniquelyReferenced_nonNull_native();
    *&v159 = v135;
    sub_225B2C4A0(v128, sub_225B2AC40, 0, v136, &v159);

    v137 = v159;
    v138 = sub_225B29AA0(0, 1, 1, v127);
    v140 = *(v138 + 2);
    v139 = *(v138 + 3);
    if (v140 >= v139 >> 1)
    {
      v138 = sub_225B29AA0((v139 > 1), v140 + 1, 1, v138);
    }

    *(v138 + 2) = v140 + 1;
    v141 = &v138[56 * v140];
    *(v141 + 4) = 0xD000000000000022;
    *(v141 + 5) = 0x8000000225D26AF0;
    v142 = v155;
    *(v141 + 6) = 0xD00000000000002DLL;
    *(v141 + 7) = v142;
    v143 = v154;
    *(v141 + 8) = 0xD000000000000029;
    *(v141 + 9) = v143;
    *(v141 + 10) = 383;
    *v130 = v134;
    *(v130 + 8) = v138;
    *(v130 + 16) = 0xD000000000000022;
    *(v130 + 24) = 0x8000000225D26AF0;
    *(v130 + 32) = v137;
    *(v130 + 40) = 0;
    swift_willThrow();
  }
}

uint64_t sub_225C27A74(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_225CCE814();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740660, &qword_225CFB980);
  return sub_225CCE934();
}

uint64_t sub_225C27AF0(uint64_t a1)
{
  v2[52] = a1;
  v2[53] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v2[54] = swift_task_alloc();
  v3 = sub_225CCD1C4();
  v2[55] = v3;
  v2[56] = *(v3 - 8);
  v2[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB40, &unk_225CFB910);
  v2[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  v2[59] = swift_task_alloc();
  v4 = sub_225CCD0B4();
  v2[60] = v4;
  v2[61] = *(v4 - 8);
  v2[62] = swift_task_alloc();
  v5 = sub_225CCD954();
  v2[63] = v5;
  v2[64] = *(v5 - 8);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C27D48, 0, 0);
}

uint64_t sub_225C27D48()
{
  v56 = v0;
  v55 = *MEMORY[0x277D85DE8];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 528);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v4 = off_28105B918;
  *(v0 + 536) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 544) = v6;
  v7 = *(v5 + 48);
  *(v0 + 608) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 552) = v9;
  *(v0 + 560) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "RTCReporter: Inside of sendEvent", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 528);
  v14 = *(v0 + 504);
  v15 = *(v0 + 512);
  v16 = *(v0 + 480);
  v17 = *(v0 + 488);
  v18 = *(v0 + 472);
  v19 = *(v0 + 416);

  v20 = *(v15 + 8);
  *(v0 + 568) = v20;
  v20(v13, v14);
  *(v0 + 368) = v19;

  sub_225C29348(v18);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_2259CB640(*(v0 + 472), &unk_27D73FD00, &qword_225CDC6E0);
  }

  else
  {
    v22 = *(v0 + 488);
    v21 = *(v0 + 496);
    v23 = *(v0 + 480);
    (*(v22 + 32))(v21, *(v0 + 472), v23);
    sub_225CCD074();
    v54 = MEMORY[0x277D839F8];
    v53[0] = v24;
    sub_225C29AFC(v53, 0x436465646E756F72, 0xEF5354746E65696CLL, (v0 + 312));
    sub_2259CB640(v0 + 312, &qword_27D740648, &unk_225CFB920);
    (*(v22 + 8))(v21, v23);
  }

  v25 = *(v0 + 456);
  v26 = *(v0 + 464);
  v27 = *(v0 + 440);
  v28 = *(v0 + 448);
  sub_225CCD1B4();
  sub_225CCD1A4();
  (*(v28 + 8))(v25, v27);
  v29 = sub_225CCD194();
  v30 = *(v29 - 8);
  v31 = (*(v30 + 48))(v26, 1, v29);
  v32 = *(v0 + 464);
  if (v31 == 1)
  {
    v33 = &qword_27D73DB40;
    v34 = &unk_225CFB910;
    v35 = *(v0 + 464);
  }

  else
  {
    v36 = sub_225CCD184();
    v38 = v37;
    (*(v30 + 8))(v32, v29);
    v54 = MEMORY[0x277D837D0];
    v53[0] = v36;
    v53[1] = v38;
    sub_225C29AFC(v53, 0x656C61636F4CLL, 0xE600000000000000, (v0 + 280));
    v33 = &qword_27D740648;
    v34 = &unk_225CFB920;
    v35 = v0 + 280;
  }

  sub_2259CB640(v35, v33, v34);
  v39 = *(*(v0 + 424) + OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_startTime);
  v40 = *(*v39 + *MEMORY[0x277D841D0] + 16);
  v41 = (*(*v39 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v39 + v41));
  sub_225C296A0(v39 + v40, v53);
  os_unfair_lock_unlock((v39 + v41));
  v54 = MEMORY[0x277D83B88];
  sub_225C29AFC(v53, 0x446E6F6973736573, 0xEF6E6F6974617275, (v0 + 248));
  sub_2259CB640(v0 + 248, &qword_27D740648, &unk_225CFB920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D640, &qword_225CE7158);
  result = swift_initStackObject();
  *(result + 16) = xmmword_225CD73B0;
  v43 = *MEMORY[0x277D43FF0];
  if (!*MEMORY[0x277D43FF0])
  {
    __break(1u);
    goto LABEL_18;
  }

  v44 = result;
  *(result + 32) = v43;
  v45 = MEMORY[0x277D84C58];
  *(result + 64) = MEMORY[0x277D84C58];
  *(result + 40) = 2;
  v46 = *MEMORY[0x277D44008];
  if (!*MEMORY[0x277D44008])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(result + 72) = v46;
  *(result + 104) = v45;
  *(result + 80) = 200;
  v47 = *MEMORY[0x277D44000];
  if (!*MEMORY[0x277D44000])
  {
LABEL_19:
    __break(1u);
    return result;
  }

  *(result + 112) = v47;
  v48 = *(v0 + 368);
  *(result + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740650, &unk_225CFB930);
  *(v44 + 120) = v48;
  v49 = v43;
  v50 = v46;
  v51 = v47;
  *(v0 + 576) = sub_225B2E194(v44);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D648, &unk_225CE7160);
  swift_arrayDestroy();
  v52 = swift_task_alloc();
  *(v0 + 584) = v52;
  *v52 = v0;
  v52[1] = sub_225C28394;

  return sub_225C24748();
}

uint64_t sub_225C28394(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 592) = a1;
  *(v3 + 600) = v1;

  if (v1)
  {

    v4 = sub_225C28E74;
  }

  else
  {
    v4 = sub_225C284E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225C284E8()
{
  v85 = v0;
  v84 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 592);
  sub_225BE19E4(*(v0 + 576));
  v2 = sub_225CCE2B4();

  *(v0 + 408) = 0;
  v3 = [v1 sendMessageWithDictionary:v2 error:v0 + 408];

  v4 = *(v0 + 408);
  if (v3)
  {
    v5 = qword_27D739F88;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 504), qword_27D73DA70);

    v7 = sub_225CCD934();
    v8 = sub_225CCED34();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v78 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_2259BE198(0x797469746E656469, 0xE800000000000000, &v78);
      *(v9 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF98, &qword_225CD76B0);
      v11 = sub_225CCE2E4();
      v13 = sub_2259BE198(v11, v12, &v78);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_2259A7000, v7, v8, "subject: %{public}s event: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);
    }

    v14 = *(v0 + 592);
    v15 = *(v0 + 552);
    v16 = *(v0 + 544);
    v17 = *(v0 + 536);
    v18 = *(v0 + 520);
    v19 = *(v0 + 504);
    v20 = (*(v0 + 608) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v17 + v20));
    v15(v18, v17 + v16, v19);
    os_unfair_lock_unlock((v17 + v20));
    v21 = v14;

    v22 = sub_225CCD934();
    v23 = sub_225CCED04();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 592);
    v26 = *(v0 + 568);
    v27 = *(v0 + 520);
    v77 = *(v0 + 504);
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v78 = v29;
      *v28 = 136315394;
      v30 = [v25 getReportingSessionID];
      v73 = v27;
      v75 = v26;
      v31 = sub_225CCE474();
      v33 = v32;

      v34 = sub_2259BE198(v31, v33, &v78);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      type metadata accessor for CFString(0);
      sub_225C29DD8();
      v35 = sub_225CCE2E4();
      v37 = v36;

      v38 = sub_2259BE198(v35, v37, &v78);

      *(v28 + 14) = v38;
      _os_log_impl(&dword_2259A7000, v22, v23, "RTCReporter: Message delivered to RTC with sessionIdentifier: %s payload: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA6F950](v29, -1, -1);
      MEMORY[0x22AA6F950](v28, -1, -1);

      v75(v73, v77);
    }

    else
    {

      v26(v27, v77);
    }

    v49 = *(v0 + 8);
  }

  else
  {
    v39 = *(v0 + 592);
    v40 = v4;

    v41 = sub_225CCCCC4();

    swift_willThrow();
    v42 = v41;
    v43 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v76 = v44;
    swift_getErrorValue();
    v45 = *(v0 + 352);
    v46 = v41;
    sub_225B21FAC(v45, &v78);

    v47 = v79;
    if (v79)
    {
      v72 = v80;
      v74 = v78;
      v48 = v82;
      v70 = v83;
      v71 = v81;
    }

    else
    {
      *(v0 + 384) = v41;
      v50 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v51 = *(v0 + 392);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v53 = [v51 code];
        v54 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v54;
        *(inited + 40) = v53;
        v48 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v55 = v41;
        v71 = 0;
        v72 = 0;
        v47 = MEMORY[0x277D84F90];
        v74 = 659;
      }

      else
      {
        v56 = *(v0 + 432);
        *(v0 + 400) = v41;
        v57 = v41;
        v58 = sub_225CCE954();
        v59 = swift_dynamicCast();
        v60 = *(v58 - 8);
        (*(v60 + 56))(v56, v59 ^ 1u, 1, v58);
        LODWORD(v60) = (*(v60 + 48))(v56, 1, v58);
        sub_2259CB640(v56, &unk_27D73B050, &unk_225CD3AD0);
        if (v60)
        {
          v61 = 659;
        }

        else
        {
          v61 = 23;
        }

        v74 = v61;
        v47 = MEMORY[0x277D84F90];
        v48 = sub_225B2C374(MEMORY[0x277D84F90]);
        v62 = v41;
        v71 = 0x8000000225D26900;
        v72 = 0xD00000000000002BLL;
      }

      v70 = v41;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v48;
    sub_225B2C4A0(v43, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v78);

    v69 = v78;
    v64 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_225B29AA0(0, *(v47 + 2) + 1, 1, v47);
    }

    v66 = *(v47 + 2);
    v65 = *(v47 + 3);
    if (v66 >= v65 >> 1)
    {
      v47 = sub_225B29AA0((v65 > 1), v66 + 1, 1, v47);
    }

    *(v47 + 2) = v66 + 1;
    v67 = &v47[56 * v66];
    *(v67 + 4) = 0xD00000000000002BLL;
    *(v67 + 5) = 0x8000000225D26900;
    *(v67 + 6) = 0xD00000000000002DLL;
    *(v67 + 7) = 0x8000000225D26930;
    *(v67 + 8) = 0xD000000000000013;
    *(v67 + 9) = 0x8000000225D26960;
    *(v67 + 10) = 426;
    *v76 = v74;
    *(v76 + 8) = v47;
    *(v76 + 16) = v72;
    *(v76 + 24) = v71;
    *(v76 + 32) = v69;
    *(v76 + 40) = v70;
    swift_willThrow();

    v49 = *(v0 + 8);
  }

  return v49();
}

uint64_t sub_225C28E74()
{
  v41 = v0;
  v40 = *MEMORY[0x277D85DE8];
  v1 = v0[75];
  v2 = v1;
  v3 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v33 = v4;
  swift_getErrorValue();
  v5 = v0[44];
  v6 = v1;
  sub_225B21FAC(v5, &v34);

  v7 = v35;
  if (v35)
  {
    v31 = v36;
    v32 = v34;
    v8 = v38;
    v29 = v39;
    v30 = v37;
  }

  else
  {
    v0[48] = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v10 = v0[49];
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
      v30 = 0;
      v31 = 0;
      v7 = MEMORY[0x277D84F90];
      v32 = 659;
    }

    else
    {
      v15 = v0[54];
      v0[50] = v1;
      v16 = v1;
      v17 = sub_225CCE954();
      v18 = swift_dynamicCast();
      v19 = *(v17 - 8);
      (*(v19 + 56))(v15, v18 ^ 1u, 1, v17);
      LODWORD(v19) = (*(v19 + 48))(v15, 1, v17);
      sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);
      if (v19)
      {
        v20 = 659;
      }

      else
      {
        v20 = 23;
      }

      v32 = v20;
      v7 = MEMORY[0x277D84F90];
      v8 = sub_225B2C374(MEMORY[0x277D84F90]);
      v21 = v1;
      v30 = 0x8000000225D26900;
      v31 = 0xD00000000000002BLL;
    }

    v29 = v1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v8;
  sub_225B2C4A0(v3, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v34);

  v28 = v34;
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

  *(v7 + 2) = v24 + 1;
  v25 = &v7[56 * v24];
  *(v25 + 4) = 0xD00000000000002BLL;
  *(v25 + 5) = 0x8000000225D26900;
  *(v25 + 6) = 0xD00000000000002DLL;
  *(v25 + 7) = 0x8000000225D26930;
  *(v25 + 8) = 0xD000000000000013;
  *(v25 + 9) = 0x8000000225D26960;
  *(v25 + 10) = 426;
  *v33 = v32;
  *(v33 + 8) = v7;
  *(v33 + 16) = v31;
  *(v33 + 24) = v30;
  *(v33 + 32) = v28;
  *(v33 + 40) = v29;
  swift_willThrow();

  v26 = v0[1];

  return v26();
}

uint64_t sub_225C29348@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_225CCD0B4();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_225CCCB74();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCD284();
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD244();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8, &unk_225CD4940);
  v10 = sub_225CCD264();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_225CD73B0;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x277CC9988], v10);
  v16(v15 + v12, *MEMORY[0x277CC9998], v10);
  v16(v15 + 2 * v12, *MEMORY[0x277CC9968], v10);
  sub_2259F4D58(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  sub_225CCD224();

  (*(v23 + 8))(v3, v24);
  sub_225CCD234();
  (*(v21 + 8))(v6, v22);
  return (*(v19 + 8))(v9, v20);
}

uint64_t sub_225C296A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_225CCD284();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCCB74();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_225CCD0B4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_225A94014(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    result = sub_2259CB640(v11, &unk_27D73FD00, &qword_225CDC6E0);
    v20 = 0;
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    sub_225CCD244();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8, &unk_225CD4940);
    v21 = sub_225CCD264();
    v22 = *(v21 - 8);
    v35 = v2;
    v23 = v22;
    v24 = *(v22 + 80);
    v33 = v5;
    v25 = (v24 + 32) & ~v24;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_225CD30F0;
    (*(v23 + 104))(v26 + v25, *MEMORY[0x277CC99A8], v21);
    sub_2259F4D58(v26);
    v34 = a2;
    swift_setDeallocating();
    (*(v23 + 8))(v26 + v25, v21);
    swift_deallocClassInstance();
    _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
    v27 = v36;
    v28 = v40;
    sub_225CCD214();
    a2 = v34;

    v29 = *(v13 + 8);
    v29(v16, v12);
    (*(v39 + 8))(v28, v33);
    v30 = sub_225CCCB34();
    LOBYTE(v28) = v31;
    (*(v37 + 8))(v27, v38);
    result = (v29)(v18, v12);
    if (v28)
    {
      v20 = 0;
    }

    else
    {
      v20 = v30;
    }
  }

  *a2 = v20;
  return result;
}

uint64_t sub_225C29AFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v31 = v12;
  v13 = sub_2259F18D4(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_225A40524(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_2259F18D4(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_225CCFAC4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v13;
    sub_225A43F18();
    v13 = v23;
    v20 = v31;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    v24 = a1[3];
    v25 = v13;
    v26 = __swift_mutable_project_boxed_opaque_existential_0(a1, v24);
    MEMORY[0x28223BE20](v26);
    v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v28);
    sub_225C29D04(v25, a2, a3, v28, v20, v24);

    result = __swift_destroy_boxed_opaque_existential_0(a1);
    *a4 = 0u;
    a4[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  v20 = v31;
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 32 * v13;
  sub_2259B9624((v20[7] + 32 * v13), a4);
  result = sub_2259B9624(a1, (v20[7] + v21));
LABEL_11:
  *v6 = v20;
  return result;
}

_OWORD *sub_225C29D04(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_2259B9624(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t sub_225C29DD8()
{
  result = qword_27D73A9C8;
  if (!qword_27D73A9C8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73A9C8);
  }

  return result;
}

uint64_t sub_225C29E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

void sub_225C29E88(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_225C29EA4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_225C29E88(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = 1;
  return v3;
}

id sub_225C29EF4(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_225C29F28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_2259B97A8(*a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 8) = v3;
  return sub_2259CB710(v4, v3);
}

uint64_t sub_225C2A158()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25[-v6];
  v8 = sub_225CCD124();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_225B2EA3C(&unk_283900578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740678, &qword_225CFBA10);
  swift_arrayDestroy();
  *(v1 + 24) = v12;
  sub_225CCD114();
  type metadata accessor for IdentityAnalyticsReporter(0);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_startTime;
  v15 = sub_225CCD0B4();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740680, &qword_225CFBA18);
  v16 = swift_allocObject();
  *(v16 + ((*(*v16 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_225A94CFC(v7, v16 + *(*v16 + *MEMORY[0x277D841D0] + 16));
  *(v13 + v14) = v16;
  v17 = OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_archivedTokenCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740688, &qword_225CFBA20);
  v18 = swift_allocObject();
  *(v18 + 32) = 0;
  *(v18 + 16) = xmmword_225CD3100;
  *(v13 + v17) = v18;
  v19 = OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_sessionStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740690, &qword_225CFBA28);
  v20 = swift_allocObject();
  *(v20 + 28) = 0;
  *(v20 + 16) = 0;
  *(v20 + 24) = 2;
  *(v13 + v19) = v20;
  (*(v9 + 16))(v13 + OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_samplingUUID, v11, v8);
  v21 = sub_225CCE994();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v13;
  v22[5] = 0x74656C6C6177;
  v22[6] = 0xE600000000000000;
  v22[7] = 0x797469746E656469;
  v22[8] = 0xE800000000000000;
  v22[9] = sub_225C2A5C8;
  v22[10] = 0;

  sub_225C2CCE4(0, 0, v4, &unk_225CFBA30, v22);
  v23 = *(v13 + OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_sessionStatus);
  os_unfair_lock_lock(v23 + 7);
  sub_225C2CCC8(&v23[4]);
  os_unfair_lock_unlock(v23 + 7);

  (*(v9 + 8))(v11, v8);
  *(v1 + 16) = v13;
  return v1;
}

uint64_t sub_225C2A5C8(void *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v6 = off_28105B918;
  v7 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v8));
  (*(v3 + 16))(v5, &v6[v7], v2);
  os_unfair_lock_unlock(&v6[v8]);
  DIPLogError(_:message:log:)(a1, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_225C2A75C()
{
  type metadata accessor for IdentityProofingAnalyticsReporter();
  swift_allocObject();
  result = sub_225C2A158();
  qword_27D740670 = result;
  return result;
}

uint64_t static IdentityProofingAnalyticsReporter.shared.getter()
{
  if (qword_27D73A108 != -1)
  {
    swift_once();
  }
}

Swift::Void __swiftcall IdentityProofingAnalyticsReporter.trackEvent(eventType:pageTag:subType:buttonTag:accessibilitySet:productType:productSubType:issuer:referralSource:errorType:optInChoice:viewedLiveVideo:axFlowEnabled:analyticsSessionID:)(Swift::String eventType, Swift::String pageTag, Swift::String_optional subType, Swift::String_optional buttonTag, Swift::Bool_optional accessibilitySet, Swift::String_optional productType, Swift::String_optional productSubType, Swift::String_optional issuer, Swift::String_optional referralSource, Swift::String_optional errorType, Swift::Bool_optional optInChoice, Swift::Bool_optional viewedLiveVideo, Swift::Bool_optional axFlowEnabled, Swift::String_optional analyticsSessionID)
{
  object = buttonTag.value._object;
  countAndFlagsBits = buttonTag.value._countAndFlagsBits;
  v15 = subType.value._object;
  v16 = subType.value._countAndFlagsBits;
  v17 = pageTag._object;
  v18 = pageTag._countAndFlagsBits;
  v19 = eventType._object;
  v20 = eventType._countAndFlagsBits;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v21 - 8);
  v99 = &v97 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88, &unk_225CD7690);
  inited = swift_initStackObject();
  *(inited + 32) = 0x707954746E657665;
  v24 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v20;
  v25 = v24;
  *(inited + 56) = v19;
  *(inited + 72) = v24;
  *(inited + 80) = 0x67615465676170;
  *(inited + 120) = v24;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v18;
  *(inited + 104) = v17;

  v26 = sub_225B2CD9C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90, &qword_225CFB9A0);
  swift_arrayDestroy();
  if (v15)
  {
    v27 = v25;
    v105 = v25;
    v104.value._countAndFlagsBits = v16;
    v104.value._object = v15;
    sub_225A02EB0(&v104, &v102);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v26;
    v29 = __swift_mutable_project_boxed_opaque_existential_0(&v102, v103);
    MEMORY[0x28223BE20](v29);
    v31 = (&v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    sub_225C2BDCC(*v31, v31[1], 0x65707954627573, 0xE700000000000000, isUniquelyReferenced_nonNull_native, &v101);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v26 = v101;
    value = accessibilitySet.value;
    if (!object)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v27 = v25;
  value = accessibilitySet.value;
  if (object)
  {
LABEL_3:
    v105 = v27;
    v104.value._countAndFlagsBits = countAndFlagsBits;
    v104.value._object = object;
    sub_225A02EB0(&v104, &v102);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v26;
    v35 = __swift_mutable_project_boxed_opaque_existential_0(&v102, v103);
    MEMORY[0x28223BE20](v35);
    v37 = (&v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    sub_225C2BDCC(*v37, v37[1], 0x61546E6F74747562, 0xE900000000000067, v34, &v101);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v26 = v101;
  }

LABEL_4:
  if (value == 2)
  {
    v39 = v27;
  }

  else
  {
    if (value)
    {
      v40 = 1702195828;
    }

    else
    {
      v40 = 0x65736C6166;
    }

    v41 = 0xE500000000000000;
    if (value)
    {
      v41 = 0xE400000000000000;
    }

    v39 = v27;
    v105 = v27;
    v104.value._countAndFlagsBits = v40;
    v104.value._object = v41;
    sub_225A02EB0(&v104, &v102);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v26;
    v43 = v103;
    v44 = __swift_mutable_project_boxed_opaque_existential_0(&v102, v103);
    MEMORY[0x28223BE20](v44);
    v46 = &v97 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v46);
    sub_225C2C4EC(v46, 0xD000000000000010, 0x8000000225D263A0, v42, &v101, v43);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v26 = v101;
  }

  if (optInChoice.value != 2)
  {
    if (optInChoice.value)
    {
      v48 = 1702195828;
    }

    else
    {
      v48 = 0x65736C6166;
    }

    v49 = 0xE500000000000000;
    v105 = v39;
    if (optInChoice.value)
    {
      v49 = 0xE400000000000000;
    }

    v104.value._countAndFlagsBits = v48;
    v104.value._object = v49;
    sub_225A02EB0(&v104, &v102);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v26;
    v51 = v103;
    v52 = __swift_mutable_project_boxed_opaque_existential_0(&v102, v103);
    MEMORY[0x28223BE20](v52);
    v54 = &v97 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v54);
    sub_225C2C4EC(v54, 0x6F68436E6974706FLL, 0xEB00000000656369, v50, &v101, v51);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v26 = v101;
  }

  if (productType.value._object)
  {
    v105 = v39;
    v104 = productType;
    sub_225A02EB0(&v104, &v102);

    v56 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v26;
    v57 = __swift_mutable_project_boxed_opaque_existential_0(&v102, v103);
    MEMORY[0x28223BE20](v57);
    v59 = (&v97 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v60 + 16))(v59);
    sub_225C2BDCC(*v59, v59[1], 0x54746375646F7270, 0xEB00000000657079, v56, &v101);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v26 = v101;
  }

  if (productSubType.value._object)
  {
    v105 = v39;
    v104 = productSubType;
    sub_225A02EB0(&v104, &v102);

    v61 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v26;
    v62 = __swift_mutable_project_boxed_opaque_existential_0(&v102, v103);
    MEMORY[0x28223BE20](v62);
    v64 = (&v97 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v65 + 16))(v64);
    sub_225C2BDCC(*v64, v64[1], 0x53746375646F7270, 0xEE00657079546275, v61, &v101);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v26 = v101;
  }

  v66 = referralSource.value._countAndFlagsBits;
  if (issuer.value._object)
  {
    v105 = v39;
    v104 = issuer;
    sub_225A02EB0(&v104, &v102);

    v67 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v26;
    v68 = __swift_mutable_project_boxed_opaque_existential_0(&v102, v103);
    MEMORY[0x28223BE20](v68);
    v70 = (&v97 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v71 + 16))(v70);
    sub_225C2BDCC(*v70, v70[1], 0x726575737369, 0xE600000000000000, v67, &v101);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v26 = v101;
  }

  v72 = referralSource.value._object;
  if (!referralSource.value._object)
  {
    v73 = sub_225C2C940();
    if (!v72)
    {
      goto LABEL_29;
    }

    v66 = v73;
  }

  v105 = v39;
  v104.value._countAndFlagsBits = v66;
  v104.value._object = v72;
  sub_225A02EB0(&v104, &v102);

  v74 = swift_isUniquelyReferenced_nonNull_native();
  v101 = v26;
  v75 = __swift_mutable_project_boxed_opaque_existential_0(&v102, v103);
  MEMORY[0x28223BE20](v75);
  v77 = (&v97 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77);
  sub_225C2BDCC(*v77, v77[1], 0x6C61727265666572, 0xEE00656372756F53, v74, &v101);
  __swift_destroy_boxed_opaque_existential_0(&v102);
  v26 = v101;
LABEL_29:
  if (errorType.value._object)
  {
    v105 = v39;
    v104 = errorType;
    sub_225A02EB0(&v104, &v102);

    v79 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v26;
    v80 = __swift_mutable_project_boxed_opaque_existential_0(&v102, v103);
    MEMORY[0x28223BE20](v80);
    v82 = (&v97 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v83 + 16))(v82);
    sub_225C2BDCC(*v82, v82[1], 0x707954726F727265, 0xE900000000000065, v79, &v101);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v26 = v101;
  }

  v84 = MEMORY[0x277D839B0];
  if (viewedLiveVideo.value != 2)
  {
    v105 = MEMORY[0x277D839B0];
    LOBYTE(v104.value._countAndFlagsBits) = viewedLiveVideo.value;
    sub_225A02EB0(&v104, &v102);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v26;
    v86 = __swift_mutable_project_boxed_opaque_existential_0(&v102, v103);
    sub_225C2C394(*v86, 0x694C646577656976, 0xEF6F656469566576, v85, &v101);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v26 = v101;
  }

  if (axFlowEnabled.value != 2)
  {
    v105 = v84;
    LOBYTE(v104.value._countAndFlagsBits) = axFlowEnabled.value;
    sub_225A02EB0(&v104, &v102);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v26;
    v88 = __swift_mutable_project_boxed_opaque_existential_0(&v102, v103);
    sub_225C2C394(*v88, 0x6E45776F6C467861, 0xED000064656C6261, v87, &v101);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v26 = v101;
  }

  if (analyticsSessionID.value._object)
  {
    v105 = v39;
    v104 = analyticsSessionID;
    sub_225A02EB0(&v104, &v102);

    v89 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v26;
    v90 = __swift_mutable_project_boxed_opaque_existential_0(&v102, v103);
    MEMORY[0x28223BE20](v90);
    v92 = (&v97 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v93 + 16))(v92);
    sub_225C2BDCC(*v92, v92[1], 0xD000000000000012, 0x8000000225D26520, v89, &v101);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v26 = v101;
  }

  v94 = sub_225CCE994();
  v95 = v99;
  (*(*(v94 - 8) + 56))(v99, 1, 1, v94);
  v96 = swift_allocObject();
  v96[2] = 0;
  v96[3] = 0;
  v96[4] = v100;
  v96[5] = v26;

  sub_225AFBC30(0, 0, v95, &unk_225CFB9B0, v96);
}

uint64_t sub_225C2B67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_225CCD954();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C2B748, 0, 0);
}

uint64_t sub_225C2B748()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_225C2B7E4;
  v2 = *(v0 + 56);

  return sub_225C27AF0(v2);
}

uint64_t sub_225C2B7E4()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C2B928, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C2B928()
{
  v26 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[11];
  v23 = v0[10];
  v4 = v0[8];
  v3 = v0[9];
  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  v8 = *(v3 + 16);
  v8(v2, &v5[v6], v4);
  os_unfair_lock_unlock(&v5[v7]);
  DIPLogError(_:message:log:)(v1, 0xD00000000000001DLL, 0x8000000225D26C40);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v1);
  v24 = *(v3 + 8);
  v24(v2, v4);
  os_unfair_lock_lock(&v5[v7]);
  v8(v23, &v5[v6], v4);
  os_unfair_lock_unlock(&v5[v7]);
  v9 = v1;
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[8];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_225CCFB24();
    v20 = sub_2259BE198(v18, v19, &v25);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2259A7000, v10, v11, "Failed to send message to rtc, error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);
  }

  else
  {
  }

  v24(v14, v15);

  v21 = v0[1];

  return v21();
}

uint64_t IdentityProofingAnalyticsReporter.deinit()
{

  return v0;
}

uint64_t IdentityProofingAnalyticsReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

_OWORD *sub_225C2BC74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x277D83B88];
  v9 = *a5;
  v11 = sub_2259F18D4(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_225A02EB0(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_225A43F18();
    goto LABEL_7;
  }

  sub_225A40524(v14, a4 & 1);
  v20 = sub_2259F18D4(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_225CCFAC4();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D83B88]);
  sub_225C2C70C(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

_OWORD *sub_225C2BDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837D0];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_2259F18D4(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_225A02EB0(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_225A43F18();
    goto LABEL_7;
  }

  sub_225A40524(v16, a5 & 1);
  v22 = sub_2259F18D4(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_225CCFAC4();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_225C2C840(v13, a3, a4, *v26, v26[1], v19, v10);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_225C2BFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277CC9318];
  v29 = MEMORY[0x277CC9318];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_2259F18D4(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_225A02EB0(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_225A43F18();
    goto LABEL_7;
  }

  sub_225A40524(v16, a5 & 1);
  v22 = sub_2259F18D4(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_225CCFAC4();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_225C2C840(v13, a3, a4, *v26, v26[1], v19, v10);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_225C2C19C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  v29 = v10;
  *&v28 = a1;
  v11 = *a5;
  v13 = sub_2259F18D4(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_225A02EB0(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_225A43F18();
    goto LABEL_7;
  }

  sub_225A40524(v16, a4 & 1);
  v22 = sub_2259F18D4(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_225CCFAC4();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_225C2C790(v13, a2, a3, *v26, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_225C2C394(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_2259F18D4(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_225A02EB0(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_225A43F18();
    goto LABEL_7;
  }

  sub_225A40524(v14, a4 & 1);
  v20 = sub_2259F18D4(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_225CCFAC4();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D839B0]);
  sub_225C2C8BC(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

_OWORD *sub_225C2C4EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v31 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v13 = *a5;
  v15 = sub_2259F18D4(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
      return sub_225A02EB0(&v30, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_225A43F18();
    goto LABEL_7;
  }

  sub_225A40524(v18, a4 & 1);
  v24 = sub_2259F18D4(a2, a3);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_225CCFAC4();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v31);
  MEMORY[0x28223BE20](v26);
  v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  sub_225C29D04(v15, a2, a3, v28, v21, a6);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_225C2C70C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_225A02EB0(&v11, (a5[7] + 32 * a1));
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

_OWORD *sub_225C2C790(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_225A02EB0(&v15, (a5[7] + 32 * a1));
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

_OWORD *sub_225C2C840(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v14 = a7;
  *&v13 = a4;
  *(&v13 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a6[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  result = sub_225A02EB0(&v13, (a6[7] + 32 * a1));
  v10 = a6[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v12;
  }

  return result;
}

_OWORD *sub_225C2C8BC(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_225A02EB0(&v11, (a5[7] + 32 * a1));
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

uint64_t sub_225C2C940()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_225CCE474();
  v4 = v3;

  v5 = v2 == 0x6B6F6F6273736150 && v4 == 0xE800000000000000;
  if (v5 || (sub_225CCF934() & 1) != 0)
  {
    v6 = 0x74656C6C6177;
  }

  else
  {
    v8 = v2 == 0x6E65726566657250 && v4 == 0xEB00000000736563;
    if (!v8 && (sub_225CCF934() & 1) == 0)
    {
      if (v2 == 0x656764697242 && v4 == 0xE600000000000000)
      {
      }

      else
      {
        v10 = sub_225CCF934();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      return 0x7070416863746177;
    }

    v6 = 0x73676E6974746573;
  }

  return v6;
}

uint64_t sub_225C2CAD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2259FE39C;

  return sub_225C2B67C(a1, v4, v5, v7, v6);
}

uint64_t sub_225C2CBD4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2259FE39C;

  return sub_225C24EFC(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_225C2CCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_225A023C4(a3, v22 - v9);
  v11 = sub_225CCE994();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_225B4F198(v10);
  }

  else
  {
    sub_225CCE984();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_225CCE904();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_225CCE544() + 32;
      sub_225C31FEC();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_225B4F198(a3);

      return v20;
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

  sub_225B4F198(a3);
  sub_225C31FEC();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t WebPresentmentAnalyticsReporter.ThirdPartyAppResult.rawValue.getter()
{
  if (*v0)
  {
    return 0x656C6C65636E6163;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_225C2CFA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C6C65636E6163;
  }

  else
  {
    v3 = 0x73736563637573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x656C6C65636E6163;
  }

  else
  {
    v5 = 0x73736563637573;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_225C2D054()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225C2D0DC(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225C2D150()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225C2D1E0(uint64_t *a1@<X8>)
{
  v2 = 0x73736563637573;
  if (*v1)
  {
    v2 = 0x656C6C65636E6163;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t WebPresentmentAnalyticsReporter.QRScanResult.rawValue.getter()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_225C2D268(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F727265;
  }

  else
  {
    v3 = 0x73736563637573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F727265;
  }

  else
  {
    v5 = 0x73736563637573;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_225C2D30C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225C2D38C(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225C2D3F8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225C2D480(uint64_t *a1@<X8>)
{
  v2 = 0x73736563637573;
  if (*v1)
  {
    v2 = 0x726F727265;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_225C2D4DC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_225C2D570;

  return sub_225C23FD4();
}

uint64_t sub_225C2D570(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t WebPresentmentAnalyticsReporter.__allocating_init()()
{
  v0 = swift_allocObject();
  WebPresentmentAnalyticsReporter.init()();
  return v0;
}

uint64_t WebPresentmentAnalyticsReporter.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24[-v6];
  v8 = sub_225CCD124();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_225CCD114();
  type metadata accessor for IdentityAnalyticsReporter(0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_startTime;
  v14 = sub_225CCD0B4();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740680, &qword_225CFBA18);
  v15 = swift_allocObject();
  *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_225A94CFC(v7, v15 + *(*v15 + *MEMORY[0x277D841D0] + 16));
  *(v12 + v13) = v15;
  v16 = OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_archivedTokenCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740688, &qword_225CFBA20);
  v17 = swift_allocObject();
  *(v17 + 32) = 0;
  *(v17 + 16) = xmmword_225CD3100;
  *(v12 + v16) = v17;
  v18 = OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_sessionStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740690, &qword_225CFBA28);
  v19 = swift_allocObject();
  *(v19 + 28) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 2;
  *(v12 + v18) = v19;
  (*(v9 + 16))(v12 + OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_samplingUUID, v11, v8);
  v20 = sub_225CCE994();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v12;
  *(v21 + 40) = 0x74656C6C6177;
  *(v21 + 48) = 0xE600000000000000;
  strcpy((v21 + 56), "identityInApp");
  *(v21 + 70) = -4864;
  *(v21 + 72) = sub_225C2DAEC;
  *(v21 + 80) = 0;

  sub_225C2CCE4(0, 0, v4, &unk_225CFBA30, v21);
  v22 = *(v12 + OBJC_IVAR____TtC13CoreIDVShared25IdentityAnalyticsReporter_sessionStatus);
  os_unfair_lock_lock(v22 + 7);
  sub_225C2CCC8(&v22[4]);
  os_unfair_lock_unlock(v22 + 7);

  (*(v9 + 8))(v11, v8);
  *(v1 + 16) = v12;
  return v1;
}

uint64_t sub_225C2DAEC(void *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v6 = off_28105B918;
  v7 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v8));
  (*(v3 + 16))(v5, &v6[v7], v2);
  os_unfair_lock_unlock(&v6[v8]);
  DIPLogError(_:message:log:)(a1, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t WebPresentmentAnalyticsReporter.sendNotificationReceived()()
{
  v1[34] = v0;
  v2 = sub_225CCD954();
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C2DD40, 0, 0);
}

uint64_t sub_225C2DD40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88, &unk_225CD7690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73A0;
  *(inited + 32) = 0x707954746E657665;
  v2 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x6465766965636572;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 72) = v2;
  *(inited + 80) = 0x67615465676170;
  *(inited + 88) = 0xE700000000000000;
  strcpy((inited + 96), "notification");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 120) = v2;
  *(inited + 128) = 0x54746375646F7270;
  *(inited + 136) = 0xEB00000000657079;
  *(inited + 144) = 0x797469746E656469;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 168) = v2;
  *(inited + 176) = 0x5470704174736F68;
  *(inited + 216) = v2;
  *(inited + 184) = 0xEB00000000657079;
  *(inited + 192) = 6448503;
  *(inited + 200) = 0xE300000000000000;
  v3 = sub_225B2CD9C(inited);
  *(v0 + 304) = v3;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90, &qword_225CFB9A0);
  swift_arrayDestroy();
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = sub_225C2DF28;

  return sub_225C27AF0(v3);
}

uint64_t sub_225C2DF28()
{
  v2 = *v1;
  *(v2 + 320) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C2E06C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C2E06C()
{
  v24 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[36];
  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v4 + 16))(v2, &v5[v6], v3);
  os_unfair_lock_unlock(&v5[v7]);

  v8 = v1;
  v9 = sub_225CCD934();
  v10 = sub_225CCED04();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[40];
  v14 = v0[36];
  v13 = v0[37];
  v15 = v0[35];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_225CCFB24();
    v20 = sub_2259BE198(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2259A7000, v9, v10, "Failed to send notification received analytics, error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);

    (*(v14 + 8))(v13, v15);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v21 = v0[1];

  return v21();
}

uint64_t WebPresentmentAnalyticsReporter.sendNotificationOpened()()
{
  v1[22] = v0;
  v2 = sub_225CCD954();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C2E39C, 0, 0);
}

uint64_t sub_225C2E39C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88, &unk_225CD7690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0x707954746E657665;
  v2 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x64656E65706FLL;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = v2;
  *(inited + 80) = 0x67615465676170;
  *(inited + 120) = v2;
  *(inited + 88) = 0xE700000000000000;
  strcpy((inited + 96), "notification");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  v3 = sub_225B2CD9C(inited);
  *(v0 + 208) = v3;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90, &qword_225CFB9A0);
  swift_arrayDestroy();
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = sub_225C2E520;

  return sub_225C27AF0(v3);
}

uint64_t sub_225C2E520()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C2E664, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C2E664()
{
  v24 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[24];
  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v4 + 16))(v2, &v5[v6], v3);
  os_unfair_lock_unlock(&v5[v7]);

  v8 = v1;
  v9 = sub_225CCD934();
  v10 = sub_225CCED04();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[28];
  v14 = v0[24];
  v13 = v0[25];
  v15 = v0[23];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_225CCFB24();
    v20 = sub_2259BE198(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2259A7000, v9, v10, "Failed to send notification opened analytics, error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);

    (*(v14 + 8))(v13, v15);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v21 = v0[1];

  return v21();
}

uint64_t WebPresentmentAnalyticsReporter.sendQRScanInitiated()()
{
  v1[34] = v0;
  v2 = sub_225CCD954();
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C2E994, 0, 0);
}

uint64_t sub_225C2E994()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88, &unk_225CD7690);
  inited = swift_initStackObject();
  *(inited + 32) = 0x707954746E657665;
  *(inited + 16) = xmmword_225CD73A0;
  v2 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x6574616974696E69;
  *(inited + 56) = 0xE900000000000064;
  *(inited + 72) = v2;
  *(inited + 80) = 0x67615465676170;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = 0x52516E616373;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v2;
  *(inited + 128) = 0x54746375646F7270;
  *(inited + 136) = 0xEB00000000657079;
  *(inited + 144) = 0x797469746E656469;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 168) = v2;
  *(inited + 176) = 0x5470704174736F68;
  *(inited + 216) = v2;
  *(inited + 184) = 0xEB00000000657079;
  *(inited + 192) = 6448503;
  *(inited + 200) = 0xE300000000000000;
  v3 = sub_225B2CD9C(inited);
  *(v0 + 304) = v3;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90, &qword_225CFB9A0);
  swift_arrayDestroy();
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = sub_225C2EB74;

  return sub_225C27AF0(v3);
}

uint64_t sub_225C2EB74()
{
  v2 = *v1;
  *(v2 + 320) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C2ECB8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C2ECB8()
{
  v24 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[36];
  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v4 + 16))(v2, &v5[v6], v3);
  os_unfair_lock_unlock(&v5[v7]);

  v8 = v1;
  v9 = sub_225CCD934();
  v10 = sub_225CCED04();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[40];
  v14 = v0[36];
  v13 = v0[37];
  v15 = v0[35];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_225CCFB24();
    v20 = sub_2259BE198(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2259A7000, v9, v10, "Failed to send QR scan initiated analytics, error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);

    (*(v14 + 8))(v13, v15);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v21 = v0[1];

  return v21();
}

uint64_t WebPresentmentAnalyticsReporter.sendQRScanCompleted(result:)(_BYTE *a1)
{
  *(v2 + 176) = v1;
  v4 = sub_225CCD954();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 232) = *a1;

  return MEMORY[0x2822009F8](sub_225C2EFF4, 0, 0);
}

uint64_t sub_225C2EFF4()
{
  v1 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88, &unk_225CD7690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0x707954746E657665;
  v3 = MEMORY[0x277D837D0];
  v4 = 0x73736563637573;
  if (v1)
  {
    v4 = 0x726F727265;
  }

  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v4;
  v5 = 0xE500000000000000;
  if (!v1)
  {
    v5 = 0xE700000000000000;
  }

  *(inited + 56) = v5;
  *(inited + 72) = v3;
  *(inited + 80) = 0x67615465676170;
  *(inited + 120) = v3;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = 0x52516E616373;
  *(inited + 104) = 0xE600000000000000;
  v6 = sub_225B2CD9C(inited);
  *(v0 + 208) = v6;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90, &qword_225CFB9A0);
  swift_arrayDestroy();
  v7 = swift_task_alloc();
  *(v0 + 216) = v7;
  *v7 = v0;
  v7[1] = sub_225C2F18C;

  return sub_225C27AF0(v6);
}

uint64_t sub_225C2F18C()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C2F2D0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C2F2D0()
{
  v24 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[24];
  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v4 + 16))(v2, &v5[v6], v3);
  os_unfair_lock_unlock(&v5[v7]);

  v8 = v1;
  v9 = sub_225CCD934();
  v10 = sub_225CCED04();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[28];
  v14 = v0[24];
  v13 = v0[25];
  v15 = v0[23];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_225CCFB24();
    v20 = sub_2259BE198(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2259A7000, v9, v10, "Failed to send QR scan completed analytics, error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);

    (*(v14 + 8))(v13, v15);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v21 = v0[1];

  return v21();
}

uint64_t WebPresentmentAnalyticsReporter.sendAppPickerAppeared()()
{
  v1[34] = v0;
  v2 = sub_225CCD954();
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C2F600, 0, 0);
}

uint64_t sub_225C2F600()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88, &unk_225CD7690);
  inited = swift_initStackObject();
  *(inited + 32) = 0x707954746E657665;
  *(inited + 16) = xmmword_225CD73A0;
  v2 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000065;
  strcpy((inited + 48), "viewDidAppear");
  *(inited + 62) = -4864;
  *(inited + 72) = v2;
  *(inited + 80) = 0x67615465676170;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = 0x70417463656C6573;
  *(inited + 104) = 0xE900000000000070;
  *(inited + 120) = v2;
  *(inited + 128) = 0x54746375646F7270;
  *(inited + 136) = 0xEB00000000657079;
  *(inited + 144) = 0x797469746E656469;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 168) = v2;
  *(inited + 176) = 0x5470704174736F68;
  *(inited + 216) = v2;
  *(inited + 184) = 0xEB00000000657079;
  *(inited + 192) = 6448503;
  *(inited + 200) = 0xE300000000000000;
  v3 = sub_225B2CD9C(inited);
  *(v0 + 304) = v3;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90, &qword_225CFB9A0);
  swift_arrayDestroy();
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = sub_225C2F7F0;

  return sub_225C27AF0(v3);
}

uint64_t sub_225C2F7F0()
{
  v2 = *v1;
  *(v2 + 320) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C2F934, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C2F934()
{
  v24 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[36];
  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v4 + 16))(v2, &v5[v6], v3);
  os_unfair_lock_unlock(&v5[v7]);

  v8 = v1;
  v9 = sub_225CCD934();
  v10 = sub_225CCED04();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[40];
  v14 = v0[36];
  v13 = v0[37];
  v15 = v0[35];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_225CCFB24();
    v20 = sub_2259BE198(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2259A7000, v9, v10, "Failed to send app picker appeared analytics, error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);

    (*(v14 + 8))(v13, v15);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v21 = v0[1];

  return v21();
}

uint64_t WebPresentmentAnalyticsReporter.sendAppPickerOptionSelected(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = sub_225CCD954();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C2FC68, 0, 0);
}

uint64_t sub_225C2FC68()
{
  v1 = v0[29];
  v2 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88, &unk_225CD7690);
  inited = swift_initStackObject();
  *(inited + 32) = 0x707954746E657665;
  *(inited + 16) = xmmword_225CD73B0;
  v4 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x61546E6F74747562;
  *(inited + 56) = 0xE900000000000070;
  *(inited + 72) = v4;
  *(inited + 80) = 0x67615465676170;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = 0x70417463656C6573;
  *(inited + 104) = 0xE900000000000070;
  *(inited + 120) = v4;
  *(inited + 128) = 0x61546E6F74747562;
  *(inited + 168) = v4;
  *(inited + 136) = 0xE900000000000067;
  *(inited + 144) = v2;
  *(inited + 152) = v1;

  v5 = sub_225B2CD9C(inited);
  v0[34] = v5;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90, &qword_225CFB9A0);
  swift_arrayDestroy();
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_225C2FE0C;

  return sub_225C27AF0(v5);
}

uint64_t sub_225C2FE0C()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C2FF50, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C2FF50()
{
  v24 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[32];
  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v4 + 16))(v2, &v5[v6], v3);
  os_unfair_lock_unlock(&v5[v7]);

  v8 = v1;
  v9 = sub_225CCD934();
  v10 = sub_225CCED04();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[36];
  v14 = v0[32];
  v13 = v0[33];
  v15 = v0[31];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_225CCFB24();
    v20 = sub_2259BE198(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2259A7000, v9, v10, "Failed to send app picker option selected analytics, error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);

    (*(v14 + 8))(v13, v15);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v21 = v0[1];

  return v21();
}

uint64_t WebPresentmentAnalyticsReporter.sendAppPickerContinued()()
{
  v1[28] = v0;
  v2 = sub_225CCD954();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C30280, 0, 0);
}

uint64_t sub_225C30280()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88, &unk_225CD7690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = 0x707954746E657665;
  v2 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x61546E6F74747562;
  *(inited + 56) = 0xE900000000000070;
  *(inited + 72) = v2;
  *(inited + 80) = 0x67615465676170;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = 0x70417463656C6573;
  *(inited + 104) = 0xE900000000000070;
  *(inited + 120) = v2;
  *(inited + 128) = 0x61546E6F74747562;
  *(inited + 168) = v2;
  *(inited + 136) = 0xE900000000000067;
  *(inited + 144) = 0x65756E69746E6F63;
  *(inited + 152) = 0xE800000000000000;
  v3 = sub_225B2CD9C(inited);
  *(v0 + 256) = v3;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90, &qword_225CFB9A0);
  swift_arrayDestroy();
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_225C30420;

  return sub_225C27AF0(v3);
}

uint64_t sub_225C30420()
{
  v2 = *v1;
  *(v2 + 272) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C30564, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C30564()
{
  v24 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[30];
  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v4 + 16))(v2, &v5[v6], v3);
  os_unfair_lock_unlock(&v5[v7]);

  v8 = v1;
  v9 = sub_225CCD934();
  v10 = sub_225CCED04();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[34];
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[29];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_225CCFB24();
    v20 = sub_2259BE198(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2259A7000, v9, v10, "Failed to send app picker continued analytics, error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);

    (*(v14 + 8))(v13, v15);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v21 = v0[1];

  return v21();
}

uint64_t WebPresentmentAnalyticsReporter.sendThirdPartyAppCompleted(result:)(_BYTE *a1)
{
  *(v2 + 176) = v1;
  v4 = sub_225CCD954();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 232) = *a1;

  return MEMORY[0x2822009F8](sub_225C308A0, 0, 0);
}

uint64_t sub_225C308A0()
{
  v1 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88, &unk_225CD7690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0x707954746E657665;
  v3 = 0xE900000000000064;
  v4 = MEMORY[0x277D837D0];
  v5 = 0x73736563637573;
  if (v1)
  {
    v5 = 0x656C6C65636E6163;
  }

  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v5;
  if (!v1)
  {
    v3 = 0xE700000000000000;
  }

  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x67615465676170;
  *(inited + 120) = v4;
  *(inited + 88) = 0xE700000000000000;
  strcpy((inited + 96), "thirdPartyApp");
  *(inited + 110) = -4864;
  v6 = sub_225B2CD9C(inited);
  *(v0 + 208) = v6;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90, &qword_225CFB9A0);
  swift_arrayDestroy();
  v7 = swift_task_alloc();
  *(v0 + 216) = v7;
  *v7 = v0;
  v7[1] = sub_225C30A4C;

  return sub_225C27AF0(v6);
}

uint64_t sub_225C30A4C()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C30B90, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C30B90()
{
  v24 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[24];
  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v4 + 16))(v2, &v5[v6], v3);
  os_unfair_lock_unlock(&v5[v7]);

  v8 = v1;
  v9 = sub_225CCD934();
  v10 = sub_225CCED04();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[28];
  v14 = v0[24];
  v13 = v0[25];
  v15 = v0[23];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_225CCFB24();
    v20 = sub_2259BE198(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2259A7000, v9, v10, "Failed to send third party app completed analytics, error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);

    (*(v14 + 8))(v13, v15);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v21 = v0[1];

  return v21();
}

uint64_t WebPresentmentAnalyticsReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225C30E7C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_225C32038;

  return sub_225C23FD4();
}

uint64_t sub_225C30F10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_225A02E94;

  return WebPresentmentAnalyticsReporter.sendNotificationReceived()();
}

uint64_t sub_225C30FA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_225A02E94;

  return WebPresentmentAnalyticsReporter.sendNotificationOpened()();
}

uint64_t sub_225C31030()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_225A02E94;

  return WebPresentmentAnalyticsReporter.sendQRScanInitiated()();
}

uint64_t sub_225C310C0(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2259FE39C;

  return WebPresentmentAnalyticsReporter.sendQRScanCompleted(result:)(a1);
}

uint64_t sub_225C31158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_225A02E94;

  return WebPresentmentAnalyticsReporter.sendAppPickerAppeared()();
}

uint64_t sub_225C311E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return WebPresentmentAnalyticsReporter.sendAppPickerOptionSelected(bundleIdentifier:)(a1, a2);
}

uint64_t sub_225C31290()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_225A02E94;

  return WebPresentmentAnalyticsReporter.sendAppPickerContinued()();
}

uint64_t sub_225C31320(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A02E94;

  return WebPresentmentAnalyticsReporter.sendThirdPartyAppCompleted(result:)(a1);
}

unint64_t sub_225C313BC()
{
  result = qword_27D740698;
  if (!qword_27D740698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740698);
  }

  return result;
}

unint64_t sub_225C31414()
{
  result = qword_27D7406A0;
  if (!qword_27D7406A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7406A0);
  }

  return result;
}

uint64_t dispatch thunk of WebPresentmentAnalyticsReporting.archivedSessionToken.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225C31580;

  return v7(a1, a2);
}

uint64_t sub_225C31580(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of WebPresentmentAnalyticsReporting.sendNotificationReceived()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return v7(a1, a2);
}

uint64_t dispatch thunk of WebPresentmentAnalyticsReporting.sendNotificationOpened()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return v7(a1, a2);
}

uint64_t dispatch thunk of WebPresentmentAnalyticsReporting.sendQRScanInitiated()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return v7(a1, a2);
}

uint64_t dispatch thunk of WebPresentmentAnalyticsReporting.sendQRScanCompleted(result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2259FE39C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerAppeared()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return v7(a1, a2);
}

uint64_t dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerOptionSelected(bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A02E94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerContinued()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return v7(a1, a2);
}

uint64_t dispatch thunk of WebPresentmentAnalyticsReporting.sendThirdPartyAppCompleted(result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return v9(a1, a2, a3);
}

unint64_t sub_225C31FEC()
{
  result = qword_27D740658;
  if (!qword_27D740658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D740658);
  }

  return result;
}

uint64_t sub_225C320A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_225CCD954();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_225CCD8D4();
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  sub_225CCD944();
  return sub_225CCD8B4();
}

uint64_t sub_225C32180()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105ACB8);
  v5 = __swift_project_value_buffer(v4, qword_28105ACB8);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "configure.total";
  *(v5 + 24) = 15;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C32334()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105ABF0);
  v5 = __swift_project_value_buffer(v4, qword_28105ABF0);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "configure.loadConfig";
  *(v5 + 24) = 20;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C324E4()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AB18);
  v5 = __swift_project_value_buffer(v4, qword_28105AB18);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "configure.loadBootstrapConfig";
  *(v5 + 24) = 29;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C32694()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7406A8);
  v5 = __swift_project_value_buffer(v4, qword_27D7406A8);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "configure.loadAttributeConfig";
  *(v5 + 24) = 29;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C32844()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7406C0);
  v5 = __swift_project_value_buffer(v4, qword_27D7406C0);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "configure.workflow.fetch";
  *(v5 + 24) = 24;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C329F4()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7406D8);
  v5 = __swift_project_value_buffer(v4, qword_27D7406D8);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "configure.workflow.perso";
  *(v5 + 24) = 24;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C32BA4()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7406F0);
  v5 = __swift_project_value_buffer(v4, qword_27D7406F0);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "configure.loadClaimsAndPrefill";
  *(v5 + 24) = 30;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C32D54()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AAF0);
  v5 = __swift_project_value_buffer(v4, qword_28105AAF0);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "configure.verifyAccountStatus";
  *(v5 + 24) = 29;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C32F04()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740708);
  v5 = __swift_project_value_buffer(v4, qword_27D740708);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "configure.loadPregeneratedAssessment";
  *(v5 + 24) = 36;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C330B4()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740720);
  v5 = __swift_project_value_buffer(v4, qword_27D740720);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "performVerification.total";
  *(v5 + 24) = 25;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C33268()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740738);
  v5 = __swift_project_value_buffer(v4, qword_27D740738);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "performVerification.waitForBAA";
  *(v5 + 24) = 30;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C33418()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740750);
  v5 = __swift_project_value_buffer(v4, qword_27D740750);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "shareVerificationResult.total";
  *(v5 + 24) = 29;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C335CC()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740768);
  v5 = __swift_project_value_buffer(v4, qword_27D740768);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getVerificationResult.total";
  *(v5 + 24) = 27;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C33780()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740780);
  v5 = __swift_project_value_buffer(v4, qword_27D740780);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getVerificationResult.prepareSharingRequest";
  *(v5 + 24) = 43;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C33930()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740798);
  v5 = __swift_project_value_buffer(v4, qword_27D740798);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getVerificationResult.keysAndCertificates";
  *(v5 + 24) = 41;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C33AE0()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7407B0);
  v5 = __swift_project_value_buffer(v4, qword_27D7407B0);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getVerificationResult.waitForSetup";
  *(v5 + 24) = 34;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C33C90()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7407C8);
  v5 = __swift_project_value_buffer(v4, qword_27D7407C8);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getVerificationResult.waitForBAA";
  *(v5 + 24) = 32;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C33E40()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7407E0);
  v5 = __swift_project_value_buffer(v4, qword_27D7407E0);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getVerificationResult.fetchAssessment";
  *(v5 + 24) = 37;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C33FF0()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7407F8);
  v5 = __swift_project_value_buffer(v4, qword_27D7407F8);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getVerificationResult.fetchAssessmentProofing";
  *(v5 + 24) = 45;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C341A0()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740810);
  v5 = __swift_project_value_buffer(v4, qword_27D740810);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "identityProofing.fetchAssessment";
  *(v5 + 24) = 32;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C34350()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740828);
  v5 = __swift_project_value_buffer(v4, qword_27D740828);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getVerificationResult.sharingRegistration";
  *(v5 + 24) = 41;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C34500()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740840);
  v5 = __swift_project_value_buffer(v4, qword_27D740840);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getVerificationResult.buildSharingRequest";
  *(v5 + 24) = 41;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C346B0()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740858);
  v5 = __swift_project_value_buffer(v4, qword_27D740858);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "concludeVerification.total";
  *(v5 + 24) = 26;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C34864()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105ABD0);
  v5 = __swift_project_value_buffer(v4, qword_28105ABD0);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "configuration";
  *(v5 + 24) = 13;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C34A18()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740870);
  v5 = __swift_project_value_buffer(v4, qword_27D740870);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "attributeConfig";
  *(v5 + 24) = 15;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C34BC8()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740888);
  v5 = __swift_project_value_buffer(v4, qword_27D740888);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "workflowRecommendation";
  *(v5 + 24) = 22;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C34D7C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7408A0);
  v5 = __swift_project_value_buffer(v4, qword_27D7408A0);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "identityProofing";
  *(v5 + 24) = 16;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C34F30()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7408B8);
  v5 = __swift_project_value_buffer(v4, qword_27D7408B8);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "sharingRegistration";
  *(v5 + 24) = 19;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C350E4()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7408D0);
  v5 = __swift_project_value_buffer(v4, qword_27D7408D0);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "identitySharing";
  *(v5 + 24) = 15;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C35298()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7408E8);
  v5 = __swift_project_value_buffer(v4, qword_27D7408E8);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "identityProofingAndSharing";
  *(v5 + 24) = 26;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C35448()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740900);
  v5 = __swift_project_value_buffer(v4, qword_27D740900);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "inputValidation";
  *(v5 + 24) = 15;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C355FC()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740918);
  v5 = __swift_project_value_buffer(v4, qword_27D740918);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "topekaNonce";
  *(v5 + 24) = 11;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C357B0()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740930);
  v5 = __swift_project_value_buffer(v4, qword_27D740930);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "spNonce";
  *(v5 + 24) = 7;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C35964()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AD68);
  v5 = __swift_project_value_buffer(v4, qword_28105AD68);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "ord";
  *(v5 + 24) = 3;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C35B18()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AD50);
  v5 = __swift_project_value_buffer(v4, qword_28105AD50);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "otd";
  *(v5 + 24) = 3;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C35CCC()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740948);
  v5 = __swift_project_value_buffer(v4, qword_27D740948);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "old";
  *(v5 + 24) = 3;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C35E80()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740960);
  v5 = __swift_project_value_buffer(v4, qword_27D740960);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "pag";
  *(v5 + 24) = 3;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C36030()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AC50);
  v5 = __swift_project_value_buffer(v4, qword_28105AC50);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getProfile";
  *(v5 + 24) = 10;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C361E0()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105ACD8);
  v5 = __swift_project_value_buffer(v4, qword_28105ACD8);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getSTS";
  *(v5 + 24) = 6;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C36390()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AB60);
  v5 = __swift_project_value_buffer(v4, qword_28105AB60);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getStaticWorkflow";
  *(v5 + 24) = 17;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C36540()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AB88);
  v5 = __swift_project_value_buffer(v4, qword_28105AB88);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getStaticAssets";
  *(v5 + 24) = 15;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C366F0()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740978);
  v5 = __swift_project_value_buffer(v4, qword_27D740978);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getStaticTC";
  *(v5 + 24) = 11;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C368A0()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740990);
  v5 = __swift_project_value_buffer(v4, qword_27D740990);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "identityProofingV2";
  *(v5 + 24) = 18;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C36A50()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7409A8);
  v5 = __swift_project_value_buffer(v4, qword_27D7409A8);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "identityPendingAction";
  *(v5 + 24) = 21;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C36C00()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7409C0);
  v5 = __swift_project_value_buffer(v4, qword_27D7409C0);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "identityProofingUserConsent";
  *(v5 + 24) = 27;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C36DB0()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7409D8);
  v5 = __swift_project_value_buffer(v4, qword_27D7409D8);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "identityLivenessConfig";
  *(v5 + 24) = 22;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C36F60()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D7409F0);
  v5 = __swift_project_value_buffer(v4, qword_27D7409F0);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getRPEncryptionCertificate";
  *(v5 + 24) = 26;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C37110()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740A08);
  v5 = __swift_project_value_buffer(v4, qword_27D740A08);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "uploadAssets.request";
  *(v5 + 24) = 20;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C372C4()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740A20);
  v5 = __swift_project_value_buffer(v4, qword_27D740A20);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "identityReportConcern";
  *(v5 + 24) = 21;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C37474()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740A38);
  v5 = __swift_project_value_buffer(v4, qword_27D740A38);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getPendingCommands";
  *(v5 + 24) = 18;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C37624()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740A50);
  v5 = __swift_project_value_buffer(v4, qword_27D740A50);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getPassportIMQModel";
  *(v5 + 24) = 19;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C377D4()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740A68);
  v5 = __swift_project_value_buffer(v4, qword_27D740A68);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getPendingCommandsReady";
  *(v5 + 24) = 23;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C37984()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AD38);
  v5 = __swift_project_value_buffer(v4, qword_28105AD38);
  if (qword_28105AC38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E2F0);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "webRequest";
  *(v5 + 24) = 10;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C37B34()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740A80);
  v5 = __swift_project_value_buffer(v4, qword_27D740A80);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "loadInternalBundle";
  *(v5 + 24) = 18;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C37CE8()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740A98);
  v5 = __swift_project_value_buffer(v4, qword_27D740A98);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "fetchBAACert";
  *(v5 + 24) = 12;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C37E9C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740AB0);
  v5 = __swift_project_value_buffer(v4, qword_27D740AB0);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "fetchSEABAASCert";
  *(v5 + 24) = 16;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C38050()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AC98);
  v5 = __swift_project_value_buffer(v4, qword_28105AC98);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "fetchAssessment";
  *(v5 + 24) = 15;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C38204()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AAA0);
  v5 = __swift_project_value_buffer(v4, qword_28105AAA0);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "odnMypg";
  *(v5 + 24) = 7;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C383B8()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740AC8);
  v5 = __swift_project_value_buffer(v4, qword_27D740AC8);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "passkitRegistration";
  *(v5 + 24) = 19;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C3856C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740AE0);
  v5 = __swift_project_value_buffer(v4, qword_27D740AE0);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "decodeVerifiedClaim";
  *(v5 + 24) = 19;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C3871C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AD88);
  v5 = __swift_project_value_buffer(v4, qword_28105AD88);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "checkTrust";
  *(v5 + 24) = 10;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C388CC()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AA80);
  v5 = __swift_project_value_buffer(v4, qword_28105AA80);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "checkHSA2";
  *(v5 + 24) = 9;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C38A7C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AB38);
  v5 = __swift_project_value_buffer(v4, qword_28105AB38);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "checkHSA2.getAuthKitAccount";
  *(v5 + 24) = 27;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C38C2C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740AF8);
  v5 = __swift_project_value_buffer(v4, qword_27D740AF8);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "secItemCopyMatching";
  *(v5 + 24) = 19;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C38DDC()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740B10);
  v5 = __swift_project_value_buffer(v4, qword_27D740B10);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "createClientGUIDFactory";
  *(v5 + 24) = 23;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C38F8C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740B28);
  v5 = __swift_project_value_buffer(v4, qword_27D740B28);
  if (qword_28105AC40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E308);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "performVisionRequests";
  *(v5 + 24) = 21;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C3913C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AC18);
  v5 = __swift_project_value_buffer(v4, qword_28105AC18);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "warmup.deviceLocked";
  *(v5 + 24) = 19;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C392EC()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105ABB0);
  v5 = __swift_project_value_buffer(v4, qword_28105ABB0);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "warmup.deviceUnlocked";
  *(v5 + 24) = 21;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C3949C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AC78);
  v5 = __swift_project_value_buffer(v4, qword_28105AC78);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "warmup.assessment";
  *(v5 + 24) = 17;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C3964C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740B40);
  v5 = __swift_project_value_buffer(v4, qword_27D740B40);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "warmup.baa";
  *(v5 + 24) = 10;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C397FC()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_28105AAC8);
  v5 = __swift_project_value_buffer(v4, qword_28105AAC8);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "configure.tiberius.beforeConfigure";
  *(v5 + 24) = 34;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C399AC()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740B58);
  v5 = __swift_project_value_buffer(v4, qword_27D740B58);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "configure.tiberius.configure";
  *(v5 + 24) = 28;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C39B5C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740B70);
  v5 = __swift_project_value_buffer(v4, qword_27D740B70);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getVerificationResult.tiberius.fetchAssessment";
  *(v5 + 24) = 46;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C39D0C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740B88);
  v5 = __swift_project_value_buffer(v4, qword_27D740B88);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getVerificationResult.tiberius.callTopeka";
  *(v5 + 24) = 41;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C39EBC()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740BA0);
  v5 = __swift_project_value_buffer(v4, qword_27D740BA0);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "getVerificationResult.tiberius.topekaTimeout";
  *(v5 + 24) = 44;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 0;
  return result;
}

uint64_t sub_225C3A06C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740BB8);
  v5 = __swift_project_value_buffer(v4, qword_27D740BB8);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "fetchIdentityDynamicWorkflow.total";
  *(v5 + 24) = 34;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C3A220()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740BD0);
  v5 = __swift_project_value_buffer(v4, qword_27D740BD0);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "fetchIdentityDynamicWorkflow.request";
  *(v5 + 24) = 36;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C3A3D4()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740BE8);
  v5 = __swift_project_value_buffer(v4, qword_27D740BE8);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "fetchIdentityStaticWorkflow.total";
  *(v5 + 24) = 33;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C3A588()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740C00);
  v5 = __swift_project_value_buffer(v4, qword_27D740C00);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "fetchIdentityStaticWorkflow.request";
  *(v5 + 24) = 35;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C3A73C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740C18);
  v5 = __swift_project_value_buffer(v4, qword_27D740C18);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "fetchIdentityStaticAsset.total";
  *(v5 + 24) = 30;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C3A8F0()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740C30);
  v5 = __swift_project_value_buffer(v4, qword_27D740C30);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "fetchIdentityStaticAsset.request";
  *(v5 + 24) = 32;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C3AAA4()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740C48);
  v5 = __swift_project_value_buffer(v4, qword_27D740C48);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "fetchIdentityStaticTC.total";
  *(v5 + 24) = 27;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C3AC58()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740C60);
  v5 = __swift_project_value_buffer(v4, qword_27D740C60);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "fetchIdentityStaticTC.request";
  *(v5 + 24) = 29;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C3AE0C()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740C78);
  v5 = __swift_project_value_buffer(v4, qword_27D740C78);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "canRequestDocument.total";
  *(v5 + 24) = 24;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C3AFC0()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740C90);
  v5 = __swift_project_value_buffer(v4, qword_27D740C90);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "requestDocument.total";
  *(v5 + 24) = 21;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C3B174()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740CA8);
  v5 = __swift_project_value_buffer(v4, qword_27D740CA8);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "requestDocument.preAuthorization.validateRequest";
  *(v5 + 24) = 48;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}

uint64_t sub_225C3B328()
{
  v0 = sub_225CCD8D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config(0);
  __swift_allocate_value_buffer(v4, qword_27D740CC0);
  v5 = __swift_project_value_buffer(v4, qword_27D740CC0);
  if (qword_28105AD20 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28105E320);
  (*(v1 + 16))(v3, v6, v0);
  *v5 = sub_225CCE594();
  *(v5 + 8) = v7;
  *(v5 + 16) = "requestDocument.preAuthorization.createProposal";
  *(v5 + 24) = 47;
  *(v5 + 32) = 2;
  result = (*(v1 + 32))(v5 + *(v4 + 24), v3, v0);
  *(v5 + *(v4 + 28)) = 1;
  return result;
}