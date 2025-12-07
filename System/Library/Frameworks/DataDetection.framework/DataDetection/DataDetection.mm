uint64_t sub_237F78238(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F0, &qword_237F81878);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F8, &qword_237F81880);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2500, &qword_237F81888);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2508, &qword_237F81890);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_237F783F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F0, &qword_237F81878);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F8, &qword_237F81880);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2500, &qword_237F81888);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2508, &qword_237F81890);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_237F785B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 33);
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237F78658(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 33) = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237F78728(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2508, &qword_237F81890);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237F787E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2508, &qword_237F81890);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237F78894(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F0, &qword_237F81878);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F8, &qword_237F81880);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_237F789D0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F0, &qword_237F81878);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F8, &qword_237F81880);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_237F78B38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2510, &qword_237F81898);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237F78BF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2510, &qword_237F81898);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237F78CA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237F80F44();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237F78D50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237F80F44();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237F78DF8()
{
  v1 = type metadata accessor for DataDetector.Options(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25C0, &qword_237F81F30);
  v4 = *(v22 - 8);
  v5 = *(v4 + 80);
  v21 = *(v4 + 64);
  v6 = v0 + v3;
  v7 = sub_237F80F04();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = v1[5];
  v10 = sub_237F80F94();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v1[6];
  v13 = sub_237F80F34();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = v1[7];
  v16 = sub_237F80F44();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = (((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 16) & ~v5;

  (*(v4 + 8))(v0 + v18, v22);

  return MEMORY[0x2821FE8E8](v0, v18 + v21, v2 | v5 | 7);
}

uint64_t sub_237F7A1B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

BOOL sub_237F7A298(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_237F7A2C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_237F7A2F4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_237F7A3E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t DataDetector.Options.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_237F80F04();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for DataDetector.Options(0);
  v4 = v3[5];
  v5 = sub_237F80F94();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = sub_237F80F34();
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v3[7];
  v9 = sub_237F80F44();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
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

uint64_t sub_237F7A828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t DataDetector.Match.SemanticDetails.PhoneNumber.phoneNumber.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PhoneNumber.label.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.fullAddress.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.street.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.city.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.state.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.postalCode.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.region.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for DataDetector.Match.SemanticDetails.PostalAddress(0) + 44));

  return v1;
}

uint64_t sub_237F7ADAC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t DataDetector.Match.SemanticDetails.FlightNumber.airlineCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.ShipmentTrackingNumber.trackingNumber.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_237F7AF18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_237F7AF80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t DataDetector.Match.SemanticDetails.Measurement.measurement<A>(in:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a1;
  v6.n128_u64[0] = v4;

  return MEMORY[0x28211B708](v5, a2, v6);
}

uint64_t DataDetector.Match.SemanticDetails.AuthorizationCode.code.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _s13DataDetection0A8DetectorO5MatchV14HighlightStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_237F81114();
  MEMORY[0x2383E3210](v1);
  return sub_237F81134();
}

uint64_t sub_237F7B0C8(uint64_t a1)
{
  v2 = *v1;
  sub_237F81114();
  MEMORY[0x2383E3210](v2);
  return sub_237F81134();
}

uint64_t DataDetector.Match.SemanticDetails.LegalPersonIdentifier.regionCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DataDetector.Match.SemanticDetails.LegalPersonIdentifier(0) + 24);
  v4 = sub_237F80F44();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DataDetector.Match.SemanticDetails.PaymentIdentifier.PaymentSystem.hashValue.getter()
{
  sub_237F81114();
  MEMORY[0x2383E3210](0);
  return sub_237F81134();
}

uint64_t sub_237F7B230()
{
  sub_237F81114();
  MEMORY[0x2383E3210](0);
  return sub_237F81134();
}

uint64_t sub_237F7B29C(uint64_t a1)
{
  sub_237F81114();
  MEMORY[0x2383E3210](0);
  return sub_237F81134();
}

void *static DataDetector.Match.matchesFromResults(_:types:options:forAPIUse:originalString:rangeAdjuster:)(unint64_t a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for DataDetector.Options(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a4)
  {
    v19 = *a2 & 0xBBF;
  }

  else
  {
    v19 = *a2;
  }

  sub_237F7B4B0(a3, v18, type metadata accessor for DataDetector.Options);
  v23 = v19;
  v24 = v18;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v20 = sub_237F7DA80(sub_237F7E4BC, v22, a1);
  sub_237F7E4D4(v18);
  return v20;
}

uint64_t sub_237F7B4B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_237F7B518(id a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v344 = a4;
  v347 = a5;
  v354 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2510, &qword_237F81898);
  MEMORY[0x28223BE20](v8 - 8);
  v336 = (&v334 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F8, &qword_237F81880);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v338 = &v334 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v339 = &v334 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v343 = &v334 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v342 = &v334 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v334 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v334 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F0, &qword_237F81878);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v337 = &v334 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v341 = &v334 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v345 = &v334 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v340 = &v334 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v334 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v334 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v335 = &v334 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v334 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2508, &qword_237F81890);
  MEMORY[0x28223BE20](v43 - 8);
  v346 = &v334 - v44;
  v45 = sub_237F80ED4();
  MEMORY[0x28223BE20](v45);
  v48 = &v334 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a3;
  if (a2 == 1)
  {
    v50 = v46;
    v51 = [a1 type];
    v52 = sub_237F80FF4();
    v54 = v53;

    if (*MEMORY[0x277D040C8])
    {
      if (v52 == sub_237F80FF4() && v54 == v55)
      {

        if ((v49 & 0x200) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v86 = sub_237F81104();

        if ((v86 & 1) == 0 || (v49 & 0x200) == 0)
        {
LABEL_29:
          if ((v49 & 2) != 0)
          {
            v91 = [a1 url];
            if (v91)
            {
              v99 = v91;
              sub_237F80EB4();

              v100 = v347;
              (*(v50 + 32))(v347, v48, v45);
              v101 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v101 - 8) + 56))(v100, 0, 1, v101);
              return;
            }

            goto LABEL_40;
          }

LABEL_30:
          v91 = 0;
LABEL_40:
          v102 = type metadata accessor for DataDetector.Match.SemanticDetails(v91);
          v103 = *(*(v102 - 8) + 56);
          v104 = v102;
          v105 = v347;
          v106 = 1;
LABEL_41:

          v103(v105, v106, 1, v104);
          return;
        }
      }

      v351 = 0;
      v352 = 0;
      [a1 getMailValue:&v352 label:&v351];
      v57 = v352;
      if (v352)
      {
        v58 = v351;
        v59 = sub_237F80FF4();
        v61 = v87;
        if (v58)
        {
          v352 = 0;
          v353 = 0;
          v88 = v57;
          v89 = v58;
          v90 = v88;
          sub_237F80FE4();

          v66 = v352;
          v65 = v353;
          if (!v353)
          {
            v66 = 0;
          }

          goto LABEL_50;
        }

LABEL_49:
        v122 = v57;
        v66 = 0;
        v65 = 0;
LABEL_50:
        v123 = v347;
        *v347 = v59;
        v123[1] = v61;
        v123[2] = v66;
        v123[3] = v65;
        v124 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v124 - 8) + 56))(v123, 0, 1, v124);

        goto LABEL_51;
      }

      goto LABEL_225;
    }

    __break(1u);
    goto LABEL_228;
  }

  v56 = a1;
  if (a2 == 2 && (v49 & 1) != 0)
  {
    v351 = 0;
    v352 = 0;
    [a1 getPhoneValue:&v352 label:&v351];
    v57 = v352;
    if (v352)
    {
      v58 = v351;
      v59 = sub_237F80FF4();
      v61 = v60;
      if (v58)
      {
        v352 = 0;
        v353 = 0;
        v62 = v57;
        v63 = v58;
        v64 = v62;
        sub_237F80FE4();

        v66 = v352;
        v65 = v353;
        if (!v353)
        {
          v66 = 0;
        }

        goto LABEL_50;
      }

      goto LABEL_49;
    }

LABEL_225:
    v333 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
    (*(*(v333 - 8) + 56))(v347, 1, 1, v333);
    return;
  }

  if (a2 == 3 && (v49 & 4) != 0)
  {
    v67 = [a1 coreResult];
    MatchedString = DDResultGetMatchedString();

    if (MatchedString)
    {
      v69 = MatchedString;
      v70 = [a1 coreResult];
      CountryCode = DDResultGetCountryCode();

      if (CountryCode)
      {
        v72 = CountryCode;
      }

      v351 = 0;
      v352 = 0;
      v349 = 0;
      v350 = 0;
      v348 = 0;
      v73 = [v56 getStreet:&v352 city:&v351 state:&v350 zip:&v349 country:&v348];
      v74 = v348;
      v75 = v349;
      v76 = v350;
      v77 = v351;
      v78 = v352;
      if (v73)
      {
        if (CountryCode)
        {
          sub_237F80FF4();
          v79 = v74;
          v80 = v75;
          v81 = v76;
          v82 = v77;
          v83 = v78;
          v84 = v346;
          sub_237F80F54();
          v85 = sub_237F80F44();
          (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
        }

        else
        {
          v157 = sub_237F80F44();
          (*(*(v157 - 8) + 56))(v346, 1, 1, v157);
          v158 = v74;
          v159 = v75;
          v160 = v76;
          v161 = v77;
          v162 = v78;
        }

        v163 = v69;
        v164 = sub_237F81004();
        v341 = v165;
        v342 = v164;
        if (v78)
        {
          v352 = 0;
          v353 = 0;
          sub_237F80FE4();
          v166 = v352;
          if (!v353)
          {
            v166 = 0;
          }

          v339 = v166;
          v340 = v353;
          if (v77)
          {
LABEL_76:
            v352 = 0;
            v353 = 0;
            sub_237F80FE4();
            v167 = v352;
            if (!v353)
            {
              v167 = 0;
            }

            v337 = v167;
            v338 = v353;
            if (v76)
            {
LABEL_79:
              v352 = 0;
              v353 = 0;
              sub_237F80FE4();
              v168 = v352;
              v169 = v353;
              if (!v353)
              {
                v168 = 0;
              }

              v336 = v168;
              if (v75)
              {
                goto LABEL_82;
              }

              goto LABEL_88;
            }

LABEL_87:
            v336 = 0;
            v169 = 0;
            if (v75)
            {
LABEL_82:
              v352 = 0;
              v353 = 0;
              sub_237F80FE4();
              v170 = v353;
              if (v353)
              {
                v171 = v352;
              }

              else
              {
                v171 = 0;
              }

LABEL_89:
              v343 = v77;
              v344 = v76;
              v345 = v75;
              if (v74)
              {
                v352 = 0;
                v353 = 0;
                sub_237F80FE4();

                v172 = v353;
                v173 = v74;
                if (v353)
                {
                  v74 = v352;
                }

                else
                {
                  v74 = 0;
                }
              }

              else
              {

                v173 = 0;
                v172 = 0;
              }

              v174 = type metadata accessor for DataDetector.Match.SemanticDetails.PostalAddress(0);
              v175 = v347;
              sub_237F7AF80(v346, v347 + *(v174 + 40), &qword_27DEE2508, &qword_237F81890);
              v176 = v341;
              *v175 = v342;
              v175[1] = v176;
              v177 = v340;
              v175[2] = v339;
              v175[3] = v177;
              v178 = v338;
              v175[4] = v337;
              v175[5] = v178;
              v175[6] = v336;
              v175[7] = v169;
              v175[8] = v171;
              v175[9] = v170;
              v175[10] = v74;
              v175[11] = v172;
              v179 = (v175 + *(v174 + 44));
              v180 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
              *v179 = 0;
              v179[1] = 0;
              swift_storeEnumTagMultiPayload();
              (*(*(v180 - 8) + 56))(v175, 0, 1, v180);

              return;
            }

LABEL_88:
            v171 = 0;
            v170 = 0;
            goto LABEL_89;
          }
        }

        else
        {
          v339 = 0;
          v340 = 0;
          if (v77)
          {
            goto LABEL_76;
          }
        }

        v337 = 0;
        v338 = 0;
        if (v76)
        {
          goto LABEL_79;
        }

        goto LABEL_87;
      }

      v57 = v348;
      v117 = v75;
      v118 = v76;
      v119 = v77;
      v120 = v78;

      v121 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
      (*(*(v121 - 8) + 56))(v347, 1, 1, v121);

LABEL_51:
      return;
    }

    __break(1u);
    goto LABEL_230;
  }

  if (a2 == 4 && (v49 & 8) != 0)
  {
    v92 = [a1 type];
    v93 = sub_237F80FF4();
    v95 = v94;

    LOBYTE(v348) = 0;
    if (!*MEMORY[0x277D04190])
    {
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
      goto LABEL_232;
    }

    if (v93 == sub_237F80FF4() && v95 == v96)
    {
      v97 = v345;
    }

    else
    {
      v131 = sub_237F81104();

      if (v131)
      {
        v98 = v344;
        v97 = v345;
        goto LABEL_59;
      }

      if (!*MEMORY[0x277D040A0])
      {
LABEL_233:
        __break(1u);
        goto LABEL_234;
      }

      v194 = sub_237F80FF4();
      v97 = v345;
      if (v93 != v194 || v95 != v195)
      {
        v196 = sub_237F81104();

        v98 = v344;
        if ((v196 & 1) == 0)
        {
          sub_237F7AF18(v344, v38, &qword_27DEE24F0, &qword_237F81878);
          v197 = sub_237F80F04();
          v198 = *(v197 - 8);
          v336 = *(v198 + 48);
          v199 = 0;
          if (v336(v38, 1, v197) != 1)
          {
            v199 = sub_237F80EE4();
            (*(v198 + 8))(v38, v197);
          }

          v200 = type metadata accessor for DataDetector.Options(0);
          sub_237F7AF18(v344 + *(v200 + 20), v21, &qword_27DEE24F8, &qword_237F81880);
          v201 = sub_237F80F94();
          v202 = *(v201 - 8);
          v203 = 0;
          if ((*(v202 + 48))(v21, 1, v201) != 1)
          {
            v203 = sub_237F80F84();
            (*(v202 + 8))(v21, v201);
          }

          v352 = 0;
          v204 = [v56 dateFromReferenceDate:v199 referenceTimezone:v203 timezoneRef:&v352 allDayRef:&v348];

          v205 = v352;
          v346 = v352;
          if (v204)
          {
            sub_237F80EF4();
            v206 = v205;

            (*(v198 + 56))(v35, 0, 1, v197);
          }

          else
          {
            (*(v198 + 56))(v35, 1, 1, v197);
            v280 = v205;
          }

          v140 = v343;
          v97 = v345;
          v281 = v335;
          v282 = v336;
          sub_237F7AF80(v35, v335, &qword_27DEE24F0, &qword_237F81878);
          if (v282(v281, 1, v197) != 1)
          {
            v148 = sub_237F80EE4();
            (*(v198 + 8))(v281, v197);
            v142 = 0;
            v143 = 0;
            v209 = 0;
            v210 = 0;
            LODWORD(v344) = v348;
            if (v148)
            {
              goto LABEL_67;
            }

LABEL_118:
            v211 = sub_237F80F04();
            (*(*(v211 - 8) + 56))(v340, 1, 1, v211);
            v345 = 0;
            v142 = v209;
            v143 = v210;
            goto LABEL_121;
          }

          sub_237F80C34(v281, &qword_27DEE24F0, &qword_237F81878);
          v57 = 0;
          v155 = v346;
LABEL_70:
          v156 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
          (*(*(v156 - 8) + 56))(v347, 1, 1, v156);

          goto LABEL_51;
        }

LABEL_60:
        sub_237F7AF18(v98, v42, &qword_27DEE24F0, &qword_237F81878);
        v132 = sub_237F80F04();
        v133 = *(v132 - 8);
        v134 = 0;
        if ((*(v133 + 48))(v42, 1, v132) != 1)
        {
          v134 = sub_237F80EE4();
          (*(v133 + 8))(v42, v132);
        }

        v135 = type metadata accessor for DataDetector.Options(0);
        sub_237F7AF18(v98 + *(v135 + 20), v23, &qword_27DEE24F8, &qword_237F81880);
        v136 = sub_237F80F94();
        v137 = *(v136 - 8);
        v138 = (*(v137 + 48))(v23, 1, v136);
        v139 = 0;
        v140 = v343;
        if (v138 != 1)
        {
          v139 = sub_237F80F84();
          (*(v137 + 8))(v23, v136);
        }

        v351 = 0;
        v352 = 0;
        v349 = 0;
        v350 = 0;
        v141 = [v56 extractStartDate:&v352 startTimezone:&v351 endDate:&v350 endTimezone:&v349 allDayRef:&v348 referenceDate:v134 referenceTimezone:v139];

        v142 = v349;
        v143 = v350;
        v144 = v351;
        if (v141)
        {
          v145 = v352;
          if (v352)
          {
            v146 = v349;
            v147 = v143;
            v346 = v144;
            v148 = v145;
            LODWORD(v344) = v348;
LABEL_67:
            v149 = sub_237F80F04();
            v150 = *(v149 - 8);
            v151 = *(v150 + 56);
            v151(v97, 1, 1, v149);
            sub_237F80D0C(&qword_27DEE25F8, MEMORY[0x277CC9578], MEMORY[0x277CC95B0]);
            v345 = v148;
            sub_237F810F4();
            if ((*(v150 + 48))(v97, 1, v149) == 1)
            {
              v152 = v340;
              v153 = 1;
            }

            else
            {
              v212 = v142;
              v213 = v143;
              v214 = v340;
              (*(v150 + 32))(v340, v97, v149);
              v152 = v214;
              v143 = v213;
              v142 = v212;
              v153 = 0;
            }

            v151(v152, v153, 1, v149);
LABEL_121:
            v215 = sub_237F80F94();
            v216 = *(v215 - 8);
            v217 = *(v216 + 7);
            v218 = v346;
            if (v346 && (v217(v140, 1, 1, v215), sub_237F80D0C(&qword_27DEE25F0, MEMORY[0x277CC9A70], MEMORY[0x277CC9A98]), sub_237F810F4(), (*(v216 + 6))(v140, 1, v215) != 1))
            {
              v221 = v342;
              (*(v216 + 4))(v342, v140, v215);
              v219 = v221;
              v220 = 0;
            }

            else
            {
              v219 = v342;
              v220 = 1;
            }

            v217(v219, v220, 1, v215);
            if (v143)
            {
              v336 = v216;
              v343 = v142;
              v222 = sub_237F80F04();
              v223 = *(v222 - 8);
              v224 = *(v223 + 56);
              v225 = v143;
              v226 = v337;
              v224(v337, 1, 1, v222);
              sub_237F80D0C(&qword_27DEE25F8, MEMORY[0x277CC9578], MEMORY[0x277CC95B0]);
              v227 = v225;
              sub_237F810F4();
              if ((*(v223 + 48))(v226, 1, v222) == 1)
              {
                v228 = v341;
                v229 = 1;
              }

              else
              {
                v231 = v341;
                (*(v223 + 32))(v341, v226, v222);
                v228 = v231;
                v229 = 0;
              }

              v224(v228, v229, 1, v222);
              v218 = v346;
              v143 = v227;
              v142 = v343;
              v216 = v336;
            }

            else
            {
              v230 = sub_237F80F04();
              (*(*(v230 - 8) + 56))(v341, 1, 1, v230);
            }

            if (v142 && (v232 = v338, v217(v338, 1, 1, v215), sub_237F80D0C(&qword_27DEE25F0, MEMORY[0x277CC9A70], MEMORY[0x277CC9A98]), sub_237F810F4(), (*(v216 + 6))(v232, 1, v215) != 1))
            {
              v233 = v143;
              v237 = v339;
              (*(v216 + 4))(v339, v232, v215);
              v234 = v237;
              v235 = v237;
              v236 = 0;
            }

            else
            {
              v233 = v143;
              v234 = v339;
              v235 = v339;
              v236 = 1;
            }

            v217(v235, v236, 1, v215);
            v238 = v347;
            *v347 = v344;
            v239 = type metadata accessor for DataDetector.Match.SemanticDetails.CalendarEvent(0);
            sub_237F7AF80(v340, v238 + v239[5], &qword_27DEE24F0, &qword_237F81878);
            sub_237F7AF80(v342, v238 + v239[6], &qword_27DEE24F8, &qword_237F81880);
            sub_237F7AF80(v341, v238 + v239[7], &qword_27DEE24F0, &qword_237F81878);
            sub_237F7AF80(v234, v238 + v239[8], &qword_27DEE24F8, &qword_237F81880);
            v240 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v240 - 8) + 56))(v238, 0, 1, v240);

            return;
          }

          v207 = v349;
          if (v143)
          {
            v208 = v143;
            v346 = v144;
            LODWORD(v344) = v348;
            v209 = v142;
            v210 = v143;
            goto LABEL_118;
          }

          v57 = v207;
          v155 = v144;
        }

        else
        {
          v57 = v349;
          v154 = v143;
          v155 = v144;
        }

        goto LABEL_70;
      }
    }

    v98 = v344;

LABEL_59:

    goto LABEL_60;
  }

  if (a2 == 6 && (v49 & 0x80) != 0)
  {
    v351 = 0;
    v352 = 0;
    [a1 getMoneyAmount:&v352 currency:&v351];
    v107 = v351;
    if (!v351)
    {
      goto LABEL_225;
    }

    sub_237F80FF4();
    v57 = v107;
    v108 = v347;
    v109 = sub_237F80F74();
    v110 = MEMORY[0x2383E3190](v109, *&v352);
    v112 = v111;
    v114 = v113;

    v115 = v108 + *(type metadata accessor for DataDetector.Match.SemanticDetails.MoneyAmount(0) + 20);
    *v115 = v110;
    *(v115 + 1) = v112;
    *(v115 + 4) = v114;
    v116 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v116 - 8) + 56))(v108, 0, 1, v116);
    goto LABEL_51;
  }

  v125 = v46;
  v126 = [a1 type];
  v127 = sub_237F80FF4();
  v129 = v128;

  if (!*MEMORY[0x277D041B0])
  {
    goto LABEL_231;
  }

  if (v127 == sub_237F80FF4() && v129 == v130)
  {

    if ((v49 & 0x10) == 0)
    {
      goto LABEL_101;
    }
  }

  else
  {
    v181 = sub_237F81104();

    if ((v181 & 1) == 0 || (v49 & 0x10) == 0)
    {
LABEL_101:
      if (!*MEMORY[0x277D040D0])
      {
LABEL_232:
        __break(1u);
        goto LABEL_233;
      }

      if (v127 == sub_237F80FF4() && v129 == v193)
      {

        if ((v49 & 0x20) == 0)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v242 = sub_237F81104();

        if ((v242 & 1) == 0 || (v49 & 0x20) == 0)
        {
LABEL_142:
          if (!*MEMORY[0x277D04168])
          {
LABEL_234:
            __break(1u);
            goto LABEL_235;
          }

          if (v127 == sub_237F80FF4() && v129 == v253)
          {

            if ((v49 & 0x100) == 0)
            {
              goto LABEL_161;
            }
          }

          else
          {
            v254 = sub_237F81104();

            if ((v254 & 1) == 0 || (v49 & 0x100) == 0)
            {
LABEL_161:
              if (v127 == 1937012325 && v129 == 0xE400000000000000 || (sub_237F81104()) && (v49 & 0x200000) != 0)
              {

                v266 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
LABEL_198:
                swift_storeEnumTagMultiPayload();
                v103 = *(*(v266 - 8) + 56);
                v105 = v347;
                v106 = 0;
                v104 = v266;
                goto LABEL_41;
              }

              if (!*MEMORY[0x277D041B8])
              {
LABEL_235:
                __break(1u);
                goto LABEL_236;
              }

              if (v127 == sub_237F80FF4() && v129 == v277)
              {

                if ((v49 & 0x800) == 0)
                {
LABEL_185:
                  if (!*MEMORY[0x277D04048])
                  {
LABEL_236:
                    __break(1u);
                    goto LABEL_237;
                  }

                  if (v127 == sub_237F80FF4() && v129 == v286)
                  {

                    if ((v49 & 0x40000) == 0)
                    {
                      goto LABEL_199;
                    }
                  }

                  else
                  {
                    v291 = sub_237F81104();

                    if ((v291 & 1) == 0 || (v49 & 0x40000) == 0)
                    {
LABEL_199:
                      if (!*MEMORY[0x277D040B8])
                      {
LABEL_237:
                        __break(1u);
                        return;
                      }

                      if (v127 == sub_237F80FF4() && v129 == v297)
                      {

                        if ((v49 & 0x400000) == 0)
                        {
                          goto LABEL_225;
                        }
                      }

                      else
                      {
                        v298 = sub_237F81104();

                        if ((v298 & 1) == 0 || (v49 & 0x400000) == 0)
                        {
                          goto LABEL_225;
                        }
                      }

                      v351 = 0;
                      v352 = 0;
                      v350 = 0;
                      if (![a1 getDomesticIdentifier:&v352 type:&v351 countryCode:&v350])
                      {
                        goto LABEL_225;
                      }

                      v299 = v352;
                      if (!v352)
                      {
                        goto LABEL_225;
                      }

                      v300 = v351;
                      if (!v351)
                      {
                        goto LABEL_225;
                      }

                      v301 = v350;
                      if (!v350)
                      {
                        goto LABEL_225;
                      }

                      v302 = *MEMORY[0x277D040C0];
                      if (*MEMORY[0x277D040C0])
                      {
                        type metadata accessor for CFString(0);
                        sub_237F80D0C(&qword_27DEE25E8, type metadata accessor for CFString, &unk_237F81FFC);
                        v303 = v300;
                        v304 = v301;
                        v305 = v303;
                        v306 = v299;
                        v307 = v305;
                        v308 = v306;
                        v309 = v304;
                        v310 = v302;
                        v311 = sub_237F80FA4();

                        if (v311)
                        {
                          v312 = 0;

                          goto LABEL_222;
                        }
                      }

                      else
                      {
                        v313 = v351;
                        v314 = v301;
                        v315 = v313;
                        v316 = v299;
                        v317 = v315;
                        v318 = v316;
                        v319 = v314;
                      }

                      v320 = *MEMORY[0x277D04188];
                      if (!*MEMORY[0x277D04188] || (type metadata accessor for CFString(0), sub_237F80D0C(&qword_27DEE25E8, type metadata accessor for CFString, &unk_237F81FFC), v321 = v300, v322 = v320, v323 = sub_237F80FA4(), v322, v321, (v323 & 1) == 0))
                      {
                        v324 = *MEMORY[0x277D04148];
                        if (*MEMORY[0x277D04148])
                        {
                          type metadata accessor for CFString(0);
                          sub_237F80D0C(&qword_27DEE25E8, type metadata accessor for CFString, &unk_237F81FFC);
                          v325 = v324;
                          v326 = sub_237F80FA4();

                          v327 = v301;
                          if (v326)
                          {
                            v312 = 2;
                            goto LABEL_222;
                          }
                        }

                        else
                        {

                          v327 = v300;
                        }

                        goto LABEL_225;
                      }

                      v312 = 1;

LABEL_222:
                      v328 = sub_237F80FF4();
                      v330 = v329;
                      sub_237F80FF4();
                      type metadata accessor for DataDetector.Match.SemanticDetails.LegalPersonIdentifier(0);
                      v331 = v347;
                      sub_237F80F54();

                      *v331 = v328;
                      v331[1] = v330;
                      *(v331 + 16) = v312;
                      v332 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
                      swift_storeEnumTagMultiPayload();
                      (*(*(v332 - 8) + 56))(v331, 0, 1, v332);

                      return;
                    }
                  }

                  v292 = [a1 coreResult];
                  v285 = DDResultCopyAuthCode();

                  if (!v285)
                  {
                    goto LABEL_30;
                  }

LABEL_197:
                  v293 = sub_237F80FF4();
                  v295 = v294;

                  v296 = v347;
                  *v347 = v293;
                  v296[1] = v295;
                  v266 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
                  goto LABEL_198;
                }
              }

              else
              {
                v283 = sub_237F81104();

                if ((v283 & 1) == 0 || (v49 & 0x800) == 0)
                {
                  goto LABEL_185;
                }
              }

              v284 = [a1 coreResult];
              v285 = DDResultCopyUPIIdentifierValue();

              if (!v285)
              {
                goto LABEL_30;
              }

              goto LABEL_197;
            }
          }

          v351 = 0;
          v352 = 0;
          v255 = [a1 getPhysicalUnitValue:&v352 unit:&v351];
          a1 = v351;
          if (!v255)
          {
            v278 = v351;
            goto LABEL_175;
          }

          if (!v351)
          {
LABEL_175:
            v279 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
            (*(*(v279 - 8) + 56))(v347, 1, 1, v279);

            return;
          }

          v256 = v351;
          v257 = sub_237F80FD4();
          v258 = [v256 componentsSeparatedByString_];

          v259 = sub_237F81034();
          v260 = *(v259 + 16);
          if (!v260)
          {

            goto LABEL_175;
          }

          v346 = v256;
          v261 = 0;
          v52 = MEMORY[0x277D84F90];
          v351 = MEMORY[0x277D84F90];
LABEL_154:
          v262 = v259 + 40 + 16 * v261;
          while (v260 != v261)
          {
            if (v261 >= *(v259 + 16))
            {
              __break(1u);
            }

            ++v261;
            v263 = v262 + 16;

            v264 = sub_237F80FD4();
            v265 = DDDimensionFromUnitString();

            v262 = v263;
            if (v265)
            {
              MEMORY[0x2383E3110]();
              if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_237F81044();
              }

              sub_237F81054();
              v52 = v351;
              goto LABEL_154;
            }
          }

          if (!(v52 >> 62))
          {
            v287 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_192:
            v288 = v346;

            if (v287 > 0)
            {
              v289 = v347;
              *v347 = v352;
              v289[1] = v52;
              v290 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v290 - 8) + 56))(v289, 0, 1, v290);

              return;
            }

            goto LABEL_175;
          }

LABEL_228:
          v287 = sub_237F810E4();
          goto LABEL_192;
        }
      }

      v351 = 0;
      v352 = 0;
      [a1 getFlightNumber:&v352 airline:&v351];
      v243 = v352;
      if (v352)
      {
        v244 = v351;
        if (v351)
        {
          v245 = sub_237F80FF4();
          v247 = v246;
          v248 = v244;
          v249 = v243;
          v250 = [v249 integerValue];
          v251 = v347;
          *v347 = v245;
          v251[1] = v247;
          v251[2] = v250;
          v252 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v252 - 8) + 56))(v251, 0, 1, v252);

          return;
        }
      }

      goto LABEL_225;
    }
  }

  v351 = 0;
  v352 = 0;
  [a1 getTrackingNumber:&v352 carrier:&v351];
  v183 = v351;
  v182 = v352;
  if (v352 && v351)
  {
    v184 = a1;
    v185 = v183;
    v186 = v182;
    v187 = v185;
    v188 = v186;
    v189 = [a1 coreResult];
    ShipmentTrackingUrlString = DDResultGetShipmentTrackingUrlString();

    if (ShipmentTrackingUrlString)
    {
      v191 = ShipmentTrackingUrlString;

      sub_237F80FF4();
      v192 = v336;
      sub_237F80EC4();
    }

    else
    {

      v267 = *(v125 + 56);
      v192 = v336;
      v267(v336, 1, 1, v45);
    }

    v268 = sub_237F80FF4();
    v270 = v269;
    v271 = sub_237F80FF4();
    v273 = v272;

    v274 = v347;
    *v347 = v268;
    v274[1] = v270;
    v274[2] = v271;
    v274[3] = v273;
    v275 = type metadata accessor for DataDetector.Match.SemanticDetails.ShipmentTrackingNumber(0);
    sub_237F7AF80(v192, v274 + *(v275 + 24), &qword_27DEE2510, &qword_237F81898);
    v276 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v276 - 8) + 56))(v274, 0, 1, v276);
  }

  else
  {
    v187 = v351;
    v188 = v182;

    v241 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
    (*(*(v241 - 8) + 56))(v347, 1, 1, v241);
  }
}

void *sub_237F7DA80(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25D0, &qword_237F81F40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for DataDetector.Match(0);
  v25 = *(v30 - 8);
  v8 = MEMORY[0x28223BE20](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_237F810E4())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x277D84F90];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x2383E31C0](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_237F80C34(v7, &qword_27DEE25D0, &qword_237F81F40);
      }

      else
      {
        v18 = v24;
        sub_237F80A74(v7, v24, type metadata accessor for DataDetector.Match);
        sub_237F80A74(v18, v29, type metadata accessor for DataDetector.Match);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_237F7F21C(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_237F7F21C((v19 > 1), v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_237F80A74(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for DataDetector.Match);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_237F7DDC8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v61 = a7;
  v62 = a4;
  v63 = a6;
  v65 = a5;
  v68 = a2;
  v69 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F8, &qword_237F81880);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F0, &qword_237F81878);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25E0, &unk_237F81F50);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v61 - v17);
  v66 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
  v19 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = [v21 category];
  v23 = [v21 coreResult];
  LODWORD(v24) = DDResultHasProperties();

  v67 = v22;
  if (!v24)
  {
    goto LABEL_23;
  }

  if (v22 - 1 <= 1)
  {
    LOBYTE(v24) = 1;
    goto LABEL_23;
  }

  if (v22 != 4 || (v68 & 8) == 0)
  {
    v28 = [v21 type];
    v29 = sub_237F80FF4();
    v31 = v30;

    result = *MEMORY[0x277D04048];
    if (*MEMORY[0x277D04048])
    {
      if (v29 == sub_237F80FF4() && v31 == v33)
      {
LABEL_21:

        goto LABEL_22;
      }

      v39 = sub_237F81104();

      if (v39)
      {
LABEL_22:

        LOBYTE(v24) = 0;
        goto LABEL_23;
      }

      result = *MEMORY[0x277D040B8];
      if (*MEMORY[0x277D040B8])
      {
        if (v29 != sub_237F80FF4() || v31 != v40)
        {
          v60 = sub_237F81104();

          if (v60)
          {
            LOBYTE(v24) = 0;
          }

          else
          {
            LOBYTE(v24) = 2;
          }

          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v25 = [v21 coreResult];
  sub_237F7AF18(v69, v15, &qword_27DEE24F0, &qword_237F81878);
  v26 = sub_237F80F04();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v15, 1, v26) == 1)
  {
    sub_237F80C34(v15, &qword_27DEE24F0, &qword_237F81878);
    v24 = 0;
  }

  else
  {
    v24 = sub_237F80EE4();
    (*(v27 + 8))(v15, v26);
  }

  v34 = type metadata accessor for DataDetector.Options(0);
  sub_237F7AF18(v69 + *(v34 + 20), v12, &qword_27DEE24F8, &qword_237F81880);
  v35 = sub_237F80F94();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v12, 1, v35) == 1)
  {
    sub_237F80C34(v12, &qword_27DEE24F8, &qword_237F81880);
    v37 = 0;
  }

  else
  {
    v37 = sub_237F80F84();
    (*(v36 + 8))(v12, v35);
  }

  v38 = DDResultIsPastDate() == 0;

  LOBYTE(v24) = 2 * v38;
LABEL_23:
  v41 = [v21 urlificationRange];
  v43 = v42;
  v70 = v68;
  sub_237F7B518(v21, v67, &v70, v69, v18);
  if ((*(v19 + 48))(v18, 1, v66) == 1)
  {
    sub_237F80C34(v18, &qword_27DEE25E0, &unk_237F81F50);
    v44 = type metadata accessor for DataDetector.Match(0);
    return (*(*(v44 - 8) + 56))(a8, 1, 1, v44);
  }

  else
  {
    v45 = v18;
    v46 = v64;
    sub_237F80A74(v45, v64, type metadata accessor for DataDetector.Match.SemanticDetails);
    v47 = v65;
    if (v65)
    {
      v48 = v63;
      if (v63)
      {
        v49 = v61;

        v50 = sub_237F81094();
        if (v51)
        {
          v52 = sub_237F81094();
        }

        else
        {
          v52 = v48(v50);
        }

        v47 = v52;
        v55 = v53;
        v56 = v54;
        sub_237F80C24(v48, v49);
      }

      else
      {
        v47 = sub_237F81094();
        v55 = v57;
        v56 = v58;
      }
    }

    else
    {
      v55 = 0;
      v56 = 1;
    }

    v59 = type metadata accessor for DataDetector.Match(0);
    sub_237F80A74(v46, a8 + *(v59 + 28), type metadata accessor for DataDetector.Match.SemanticDetails);
    *a8 = v41;
    *(a8 + 8) = v43;
    *(a8 + 16) = v47;
    *(a8 + 24) = v55;
    *(a8 + 32) = v56 & 1;
    *(a8 + 33) = v24;
    return (*(*(v59 - 8) + 56))(a8, 0, 1, v59);
  }
}

uint64_t sub_237F7E4D4(uint64_t a1)
{
  v2 = type metadata accessor for DataDetector.Options(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237F7E530(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v44 = a1;
  v45 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25C0, &qword_237F81F30);
  v10 = *(v41 - 8);
  v42 = *(v10 + 64);
  MEMORY[0x28223BE20](v41);
  v12 = &v34 - v11;
  v13 = type metadata accessor for DataDetector.Options(0);
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  if (a2)
  {
    v19 = a3 & 0xBBF;
  }

  else
  {
    v19 = a3;
  }

  v35 = v19;
  sub_237F7B4B0(v45, &v34 - v17, type metadata accessor for DataDetector.Options);
  v45 = objc_opt_self();
  v36 = a6;
  v37 = a5;
  v43 = sub_237F80FD4();
  v20 = sub_237F80FD4();
  v40 = [v20 length];

  aBlock[0] = v19;
  v39 = sub_237F7F3F4(aBlock, v18);
  sub_237F7B4B0(v18, v16, type metadata accessor for DataDetector.Options);
  v21 = v12;
  v22 = v12;
  v23 = v41;
  (*(v10 + 16))(v21, v44, v41);
  v24 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v10 + 80) + v25 + 16) & ~*(v10 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v35;
  sub_237F80A74(v16, v27 + v24, type metadata accessor for DataDetector.Options);
  v28 = (v27 + v25);
  v29 = v36;
  *v28 = v37;
  v28[1] = v29;
  (*(v10 + 32))(v27 + v26, v22, v23);
  aBlock[4] = sub_237F80ADC;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237F7EB5C;
  aBlock[3] = &block_descriptor;
  v30 = _Block_copy(aBlock);

  v31 = v43;
  v32 = v39;
  [v45 scanString:v43 range:0 configuration:v40 completionBlock:{v39, v30}];
  _Block_release(v30);

  return sub_237F7E4D4(v18);
}

uint64_t sub_237F7E8AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DataDetector.Match(0);
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25C8, &qword_237F81F38);
  v27 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  v16 = type metadata accessor for DataDetector.Options(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237F7B4B0(a3, v18, type metadata accessor for DataDetector.Options);
  v30 = a2;
  v31 = v18;
  v32 = a4;
  v33 = a5;
  v34 = 0;
  v35 = 0;
  v19 = sub_237F7DA80(sub_237F80DF8, v29, a1);
  sub_237F7E4D4(v18);
  v20 = v19[2];
  if (v20)
  {
    v21 = *(v28 + 80);
    v26[1] = v19;
    v22 = v19 + ((v21 + 32) & ~v21);
    v23 = *(v28 + 72);
    v24 = (v27 + 8);
    do
    {
      sub_237F7B4B0(v22, v12, type metadata accessor for DataDetector.Match);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25C0, &qword_237F81F30);
      sub_237F81064();
      (*v24)(v15, v13);
      v22 += v23;
      --v20;
    }

    while (v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25C0, &qword_237F81F30);
  return sub_237F81074();
}

uint64_t sub_237F7EB5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_237F7F6E0();
  v3 = sub_237F81034();

  v2(v3);
}

uint64_t sub_237F7EC0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24[0] = a7;
  v24[1] = a6;
  v9 = v7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2518, &qword_237F818A0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v24 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = *a1;
  (*(v20 + 16))(v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v9, a3);
  v21 = sub_237F81014();
  v25 = a5;
  v26 = v19;
  v27 = a2;
  v28 = v21;
  v29 = v22;
  type metadata accessor for DataDetector.Match(0);
  (*(v14 + 104))(v17, *MEMORY[0x277D85778], v13);
  sub_237F81084();
}

void *StringProtocol.dataDetectorMatchesPrivateSync(_:options:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for DataDetector.Options(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = *a1;
  (*(v18 + 16))(&v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)], v5, a3);
  v19 = sub_237F81014();
  v21 = v20;
  sub_237F7B4B0(a2, v15, type metadata accessor for DataDetector.Options);
  v22 = objc_opt_self();
  v23 = sub_237F80FD4();
  v24 = sub_237F80FD4();
  v25 = [v24 length];

  v38 = v17;
  v26 = sub_237F7F3F4(&v38, v15);
  v27 = [v22 scanString:v23 range:0 configuration:{v25, v26}];

  sub_237F7F6E0();
  v28 = sub_237F81034();

  sub_237F7B4B0(v15, v12, type metadata accessor for DataDetector.Options);
  v32 = v17;
  v33 = v12;
  v34 = v19;
  v35 = v21;
  v36 = 0;
  v37 = 0;
  v29 = sub_237F7DA80(sub_237F80DF8, v31, v28);

  sub_237F7E4D4(v15);
  sub_237F7E4D4(v12);
  return v29;
}

uint64_t sub_237F7F0A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_237F80FA4();
}

uint64_t sub_237F7F1B4(uint64_t a1, uint64_t a2)
{
  sub_237F81114();
  swift_getWitnessTable();
  sub_237F80FB4();
  return sub_237F81134();
}

void *sub_237F7F21C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25D8, &qword_237F81F48);
  v10 = *(type metadata accessor for DataDetector.Match(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for DataDetector.Match(0) - 8);
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

id sub_237F7F3F4(void *a1, uint64_t a2)
{
  v4 = sub_237F80F24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2500, &qword_237F81888);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_237F80F34();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:(*a1 & 0xFFFFFFFFFFFFFDFCLL) == 0 passiveIntent:1];
  v16 = type metadata accessor for DataDetector.Options(0);
  sub_237F7AF18(a2 + *(v16 + 24), v10, &qword_27DEE2500, &qword_237F81888);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_237F80C34(v10, &qword_27DEE2500, &qword_237F81888);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(v5 + 104))(v7, *MEMORY[0x277CC9638], v4);
    sub_237F80F14();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    if (v18)
    {
      v19 = sub_237F80FD4();
    }

    else
    {
      v19 = 0;
    }

    [v15 setLanguage_];

    (*(v12 + 8))(v14, v11);
  }

  return v15;
}

unint64_t sub_237F7F6E0()
{
  result = qword_27DEE2520;
  if (!qword_27DEE2520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEE2520);
  }

  return result;
}

unint64_t sub_237F7F730()
{
  result = qword_27DEE2528;
  if (!qword_27DEE2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2528);
  }

  return result;
}

unint64_t sub_237F7F788()
{
  result = qword_27DEE2530;
  if (!qword_27DEE2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2530);
  }

  return result;
}

unint64_t sub_237F7F7E0()
{
  result = qword_27DEE2538;
  if (!qword_27DEE2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2538);
  }

  return result;
}

unint64_t sub_237F7F838()
{
  result = qword_27DEE2540;
  if (!qword_27DEE2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2540);
  }

  return result;
}

unint64_t sub_237F7F890()
{
  result = qword_27DEE2548;
  if (!qword_27DEE2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2548);
  }

  return result;
}

unint64_t sub_237F7F8E8()
{
  result = qword_27DEE2550;
  if (!qword_27DEE2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2550);
  }

  return result;
}

unint64_t sub_237F7F940()
{
  result = qword_27DEE2558;
  if (!qword_27DEE2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2558);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataDetector.MatchType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DataDetector.MatchType(uint64_t result, int a2, int a3)
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

void sub_237F7FA40(uint64_t a1)
{
  sub_237F8055C(319, &qword_27DEE2560, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_237F8055C(319, &qword_27DEE2568, MEMORY[0x277CC9A70]);
    if (v2 <= 0x3F)
    {
      sub_237F8055C(319, &qword_27DEE2570, MEMORY[0x277CC9640]);
      if (v3 <= 0x3F)
      {
        sub_237F8055C(319, &qword_27DEE2578, MEMORY[0x277CC9698]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_237F7FB8C(uint64_t a1)
{
  type metadata accessor for _NSRange(319);
  if (v1 <= 0x3F)
  {
    sub_237F7FC58(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DataDetector.Match.SemanticDetails(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237F7FC58(uint64_t a1)
{
  if (!qword_27DEE2580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE2588, &qword_237F81CA8);
    v1 = sub_237F810B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEE2580);
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

uint64_t sub_237F7FD88(uint64_t a1)
{
  result = type metadata accessor for DataDetector.Match.SemanticDetails.Link(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DataDetector.Match.SemanticDetails.PostalAddress(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DataDetector.Match.SemanticDetails.CalendarEvent(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for DataDetector.Match.SemanticDetails.MoneyAmount(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for DataDetector.Match.SemanticDetails.ShipmentTrackingNumber(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for DataDetector.Match.SemanticDetails.LegalPersonIdentifier(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_237F7FEAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237F7FF0C(uint64_t a1)
{
  result = sub_237F80ED4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_237F7FF98(uint64_t a1, int a2)
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

uint64_t sub_237F7FFE4(uint64_t result, int a2, int a3)
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

void sub_237F8005C(uint64_t a1)
{
  sub_237F80CBC(319, &qword_27DEE2590, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_237F8055C(319, &qword_27DEE2578, MEMORY[0x277CC9698]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237F80160(uint64_t a1)
{
  sub_237F8055C(319, &qword_27DEE2560, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_237F8055C(319, &qword_27DEE2568, MEMORY[0x277CC9A70]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_40Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_41Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

void sub_237F80344(uint64_t a1)
{
  sub_237F80F64();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Decimal(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_237F80404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_237F8044C(uint64_t result, int a2, int a3)
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

void sub_237F804C4(uint64_t a1)
{
  sub_237F8055C(319, &qword_27DEE2598, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_237F8055C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_237F810B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_237F80624(uint64_t a1)
{
  result = sub_237F80F44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s13DataDetection12DataDetectorO5MatchV14HighlightStyleOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13DataDetection12DataDetectorO5MatchV14HighlightStyleOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237F807F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_237F80840(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t _s13DataDetection12DataDetectorO5MatchV15SemanticDetailsO10InvitationVwet_0(unsigned int *a1, int a2)
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

_WORD *_s13DataDetection12DataDetectorO5MatchV15SemanticDetailsO10InvitationVwst_0(_WORD *result, int a2, int a3)
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

unint64_t sub_237F80968()
{
  result = qword_27DEE25A0;
  if (!qword_27DEE25A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE25A8, &qword_237F81ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE25A0);
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_237F809E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237F80A00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_237F80A2C(uint64_t a1, int a2)
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

uint64_t sub_237F80A4C(uint64_t result, int a2, int a3)
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

uint64_t sub_237F80A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237F80ADC(unint64_t a1)
{
  v3 = *(type metadata accessor for DataDetector.Options(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25C0, &qword_237F81F30);
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);

  return sub_237F7E8AC(a1, v6, v1 + v4, v7, v8);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237F80C24(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_237F80C34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_237F80CBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_237F80D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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