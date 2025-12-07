uint64_t static MapStyle._standard(elevation:emphasis:pointsOfInterest:showsTraffic:showsHiking:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v9 = *a3;
  v8 = a3[1];
  if (a5)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  *a6 = v6;
  *(a6 + 8) = v7;
  *(a6 + 16) = v9;
  *(a6 + 24) = v8;
  *(a6 + 32) = v10 & 0xFFFE | a4 & 1;
  *(a6 + 40) = 0;
  *(a6 + 48) = 1;
  *(a6 + 56) = xmmword_213D99630;
  *(a6 + 72) = 0;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0u;
  *(a6 + 104) = 0u;
  *(a6 + 120) = 0u;
  *(a6 + 136) = 2;
  *(a6 + 144) = 0;
}

id sub_213D7AAB0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CD4F50]);

  v7 = [v6 initWithElevationStyle:v1 emphasisStyle:v2];
  if (v3)
  {
    v8 = objc_allocWithZone(MEMORY[0x277CD4F10]);
    type metadata accessor for MKPointOfInterestCategory(0);
    v9 = sub_213D919EC();
    v10 = [v8 initIncludingCategories_];
  }

  else
  {
    if (!v4)
    {

      v12 = 0;
      goto LABEL_6;
    }

    v11 = objc_allocWithZone(MEMORY[0x277CD4F10]);
    type metadata accessor for MKPointOfInterestCategory(0);
    v9 = sub_213D919EC();
    v10 = [v11 initExcludingCategories_];
  }

  v12 = v10;

LABEL_6:
  [v7 setPointOfInterestFilter_];

  [v7 setShowsTraffic_];
  return v7;
}

id sub_213D7AC08()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = objc_allocWithZone(MEMORY[0x277CD4E00]);

  v6 = [v5 initWithElevationStyle_];
  if (v1)
  {
    v7 = objc_allocWithZone(MEMORY[0x277CD4F10]);
    type metadata accessor for MKPointOfInterestCategory(0);
    v8 = sub_213D919EC();
    v9 = [v7 initIncludingCategories_];
  }

  else
  {
    if (!v3)
    {

      v11 = 0;
      goto LABEL_6;
    }

    v10 = objc_allocWithZone(MEMORY[0x277CD4F10]);
    type metadata accessor for MKPointOfInterestCategory(0);
    v8 = sub_213D919EC();
    v9 = [v10 initExcludingCategories_];
  }

  v11 = v9;

LABEL_6:
  [v6 setPointOfInterestFilter_];

  [v6 setShowsTraffic_];
  return v6;
}

uint64_t sub_213D7AD58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 146))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213D7ADC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 146) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 146) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_213D7AE7C()
{
  result = qword_27C8ED2D0[0];
  if (!qword_27C8ED2D0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED2C8, &qword_213D9C7D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8ED2D0);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_213D7AEFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_213D7AF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_213D7AFB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_213D7B010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_213D7B088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213D7B0E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_213D7B150()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277CD4E10]);

  return [v2 initWithElevationStyle_];
}

id sub_213D7B19C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 57);
  v6 = objc_allocWithZone(MEMORY[0x277CD4F90]);
  v7 = *v0;
  v10[1] = v0[1];
  v10[0] = v7;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v8 = [v6 initWithCartographicConfiguration_];
  [v8 setShowsTraffic_];
  [v8 setShowsHiking_];
  return v8;
}

double sub_213D7B24C()
{
  xmmword_27C8ED230 = 0uLL;
  *&xmmword_27C8ED240 = 0;
  *(&xmmword_27C8ED240 + 1) = MEMORY[0x277D84F90];
  LOWORD(xmmword_27C8ED250) = 0;
  *(&xmmword_27C8ED250 + 1) = 0;
  LOBYTE(xmmword_27C8ED260) = 1;
  *(&xmmword_27C8ED260 + 8) = xmmword_213D99630;
  qword_27C8ED278 = 0;
  LOBYTE(xmmword_27C8ED280) = 0;
  result = 0.0;
  *(&xmmword_27C8ED280 + 8) = 0u;
  *(&xmmword_27C8ED290 + 8) = 0u;
  *(&xmmword_27C8ED2A0 + 8) = 0u;
  qword_27C8ED2B8 = 2;
  word_27C8ED2C0 = 0;
  return result;
}

uint64_t sub_213D7B2A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C8E99F0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_27C8ED280;
  v11[6] = xmmword_27C8ED290;
  v11[7] = xmmword_27C8ED2A0;
  v2 = xmmword_27C8ED2A0;
  v11[8] = unk_27C8ED2B0;
  v3 = xmmword_27C8ED250;
  v4 = xmmword_27C8ED240;
  v11[2] = xmmword_27C8ED250;
  v11[3] = xmmword_27C8ED260;
  v5 = xmmword_27C8ED260;
  v6 = unk_27C8ED270;
  v11[4] = unk_27C8ED270;
  v11[5] = xmmword_27C8ED280;
  v7 = xmmword_27C8ED230;
  v11[0] = xmmword_27C8ED230;
  v11[1] = xmmword_27C8ED240;
  *(a1 + 96) = xmmword_27C8ED290;
  *(a1 + 112) = v2;
  *(a1 + 128) = unk_27C8ED2B0;
  *(a1 + 32) = v3;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v1;
  v12 = word_27C8ED2C0;
  *(a1 + 144) = word_27C8ED2C0;
  *a1 = v7;
  *(a1 + 16) = v4;
  return sub_213D1E0AC(v11, v10);
}

uint64_t sub_213D7B398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_213D91C7C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for MapSelectionManagerBox(0, v14);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_213D7B444@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v51 = *(a1[3] - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v44 - v6;
  v52 = v7;
  v8 = sub_213D91C7C();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v44 - v11;
  v12 = *(a1 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v53 = a1[2];
  v19 = sub_213D91C7C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v24 = *(v12 + 16);
  v24(v18, v2, a1, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *(v20 + 32);
    v25(v23, v18, v19);
    return (v25)(v54, v23, v19);
  }

  v27 = v54;
  v28 = *(v12 + 8);
  v28(v18, a1);
  (v24)(v15, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v30 = v48;
    v29 = v49;
    v31 = v50;
    (*(v49 + 32))(v48, v15, v50);
    v32 = v47;
    (*(v29 + 16))(v47, v30, v31);
    v34 = v51;
    v33 = v52;
    if ((*(v51 + 48))(v32, 1, v52) == 1)
    {
      v35 = *(v29 + 8);
      v35(v30, v31);
      v35(v32, v31);
    }

    else
    {
      v36 = v46;
      v37 = v32;
      v38 = *(v34 + 32);
      v38(v46, v37, v33);
      (*(a1[5] + 16))(&v55, v33);
      (*(v29 + 8))(v30, v31);
      if (!v55)
      {
        v38(v45, v36, v33);
        v42 = v53;
        v43 = swift_dynamicCast();
        v39 = *(*(v42 - 8) + 56);
        if (v43)
        {
          v40 = v27;
          v41 = 0;
        }

        else
        {
          v40 = v27;
          v41 = 1;
        }

        return v39(v40, v41, 1);
      }

      (*(v34 + 8))(v36, v33);
    }
  }

  else
  {
    v28(v15, a1);
  }

  v39 = *(*(v53 - 8) + 56);
  v40 = v27;
  v41 = 1;
  return v39(v40, v41, 1);
}

uint64_t sub_213D7B980@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 24);
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213D91C7C();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v32 = &v30 - v12;
  v13 = *(a1 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v30 - v19;
  v21 = *(v13 + 16);
  v21(&v30 - v19, v3, a1, v18);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    *a2 = *v20;
    return result;
  }

  v31 = a2;
  v23 = *(v13 + 8);
  v23(v20, a1);
  (v21)(v16, v3, a1);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    result = v23(v16, a1);
    goto LABEL_7;
  }

  v25 = v32;
  v24 = v33;
  v26 = v34;
  (*(v33 + 32))(v32, v16, v34);
  (*(v24 + 16))(v10, v25, v26);
  v27 = v35;
  if ((*(v35 + 48))(v10, 1, v6) == 1)
  {
    v28 = *(v24 + 8);
    v28(v25, v26);
    result = (v28)(v10, v26);
LABEL_7:
    *v31 = 0;
    return result;
  }

  v29 = v30;
  (*(v27 + 32))(v30, v10, v6);
  (*(*(a1 + 40) + 16))(v6);
  (*(v27 + 8))(v29, v6);
  return (*(v24 + 8))(v25, v26);
}

uint64_t sub_213D7BD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_213D91C7C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for MapSelectionManagerBox(0, v14);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_213D7BDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v8 = sub_213D91C7C();
    return (*(*(v8 - 8) + 32))(a2, v7, v8);
  }

  else
  {
    (*(v4 + 8))(v7, a1);
    return (*(*(*(a1 + 24) - 8) + 56))(a2, 1, 1);
  }
}

BOOL sub_213D7BF40(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = *(v3 + 16);
  v10(&v15 - v8, v1, a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v3 + 8);
  v12(v9, a1);
  if (EnumCaseMultiPayload == 1)
  {
    return 1;
  }

  (v10)(v5, v1, a1);
  v13 = swift_getEnumCaseMultiPayload() == 2;
  v12(v5, a1);
  return v13;
}

uint64_t sub_213D7C0AC@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result & 1;
  return result;
}

BOOL sub_213D7C0E0(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = *(v3 + 16);
  v10(&v15 - v8, v1, a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v3 + 8);
  v12(v9, a1);
  if (!EnumCaseMultiPayload)
  {
    return 1;
  }

  (v10)(v5, v1, a1);
  v13 = swift_getEnumCaseMultiPayload() == 2;
  v12(v5, a1);
  return v13;
}

uint64_t sub_213D7C248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v13 = *v12;
  v14 = *(v5 + 16);
  v14(&v23 - v10, v3, a2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *(v5 + 8);
  if (EnumCaseMultiPayload)
  {
    v16(v11, a2);
  }

  else
  {
    v16(v3, a2);
    v16(v11, a2);
    *v3 = v13;
    swift_storeEnumTagMultiPayload();
    v17 = v13;
  }

  (v14)(v7, v3, a2);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return (v16)(v7, a2);
  }

  v16(v3, a2);
  v16(v7, a2);
  v18 = *(a2 + 24);
  v24 = v13;
  v19 = *(a2 + 40);
  v20 = *(v19 + 24);
  v21 = v13;
  v20(&v24, v18, v19);
  (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_213D7C498(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = sub_213D91C7C();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v24 - v5;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](v7);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = *(v6 + 16);
  v16(&v24 - v14, v2, a2, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *(v6 + 8);
  if (EnumCaseMultiPayload == 1)
  {
    v18(v2, a2);
    v18(v15, a2);
    v19 = v26;
    (*(v27 + 16))(v2, v26, v4);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v18(v15, a2);
    v19 = v26;
  }

  (v16)(v11, v2, a2);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return (v18)(v11, a2);
  }

  v18(v2, a2);
  v18(v11, a2);
  (*(v27 + 16))(v24, v19, v4);
  v20 = *(a2 + 24);
  v21 = v25;
  v22 = swift_dynamicCast();
  (*(*(v20 - 8) + 56))(v21, v22 ^ 1u, 1, v20);
  swift_storeEnumTagMultiPayload();
  return (*(v6 + 32))(v2, v21, a2);
}

uint64_t _s15_MapKit_SwiftUI0A9SelectionV2eeoiySbACyxG_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v32 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v30[0] = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[1] = v5;
  v7 = type metadata accessor for MapSelection.Storage(0, v6, v5, v5);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = v30 - v16;
  v19 = *(v18 + 48);
  v20 = *(v8 + 16);
  v20(v30 - v16, v33, v7, v15);
  (v20)(&v17[v19], v34, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v20)(v10, v17, v7);
    v21 = *v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *&v17[v19];
      if (v21)
      {
        if (v22)
        {
          v23 = v21;
          v24 = [v23 isEqual_];

          if (v24)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
        if (!v22)
        {
LABEL_16:
          v25 = 1;
          goto LABEL_17;
        }

        v21 = 0;
      }

LABEL_15:
      v25 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    (v20)(v13, v17, v7);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = v32;
      v27 = v30[0];
      (*(v32 + 32))(v30[0], &v17[v19], a3);
      v25 = sub_213D918DC();
      v28 = *(v26 + 8);
      v28(v27, a3);
      v28(v13, a3);
      goto LABEL_17;
    }

    (*(v32 + 8))(v13, a3);
  }

  v25 = 0;
  v8 = v31;
  v7 = TupleTypeMetadata2;
LABEL_17:
  (*(v8 + 8))(v17, v7);
  return v25 & 1;
}

void sub_213D7CC1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v12, a2, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v10;
    MEMORY[0x21604F190](1);
    sub_213D91FDC();
    if (v13)
    {
      v14 = v13;
      sub_213D91C6C();
    }
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    MEMORY[0x21604F190](0);
    sub_213D918BC();
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_213D7CDFC(uint64_t a1)
{
  sub_213D91FBC();
  sub_213D7CC1C(v3, a1);
  return sub_213D91FFC();
}

uint64_t MapSelection.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for MapSelection.Storage(0, v7, *(a1 + 24), x3_0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, v5, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 8))(v12, v8);
    v13 = *(v7 - 8);
    v14 = 1;
  }

  else
  {
    v13 = *(v7 - 8);
    (*(v13 + 32))(a2, v12, v7);
    v14 = 0;
  }

  return (*(v13 + 56))(a2, v14, 1, v7);
}

uint64_t MapSelection.feature.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v4 = v3;
  v6 = type metadata accessor for MapSelection.Storage(0, *(a1 + 16), *(a1 + 24), a2);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v12 - v9);
  (*(v7 + 16))(&v12 - v9, v4, v6, v8);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    *a3 = *v10;
  }

  else
  {
    *a3 = 0;
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t MapSelection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 32))(a4, a1, a2);
  type metadata accessor for MapSelection.Storage(0, a2, a3, v6);

  return swift_storeEnumTagMultiPayload();
}

uint64_t MapSelection.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = *a1;
  type metadata accessor for MapSelection.Storage(0, a2, a3, a4);

  return swift_storeEnumTagMultiPayload();
}

void MapSelection.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MapSelection.Storage(0, *(a2 + 16), *(a2 + 24), a4);

  sub_213D7CC1C(a1, v5);
}

uint64_t MapSelection.hashValue.getter(uint64_t a1)
{
  sub_213D91FBC();
  v3 = type metadata accessor for MapSelection.Storage(0, *(a1 + 16), *(a1 + 24), v2);
  sub_213D7CC1C(v5, v3);
  return sub_213D91FFC();
}

uint64_t sub_213D7D354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_213D91FBC();
  a4(v7, a2);
  return sub_213D91FFC();
}

uint64_t sub_213D7D3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v121 = a1;
  v122 = a2;
  v110 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v97 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v101 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v105 = &v96 - v12;
  v119 = v11;
  v118 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v103 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v108 = &v96 - v16;
  MEMORY[0x28223BE20](v17);
  v114 = &v96 - v18;
  v109 = *(a3 - 8);
  MEMORY[0x28223BE20](v19);
  v96 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_213D91C7C();
  v111 = swift_getTupleTypeMetadata2();
  v100 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v104 = &v96 - v22;
  v116 = *(v21 - 8);
  MEMORY[0x28223BE20](v23);
  v102 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v107 = &v96 - v26;
  MEMORY[0x28223BE20](v27);
  v113 = &v96 - v28;
  v115 = a3;
  v123[0] = a3;
  v123[1] = a4;
  v106 = a4;
  v98 = a5;
  v123[2] = a5;
  v123[3] = a6;
  v99 = a6;
  v29 = type metadata accessor for MapSelectionManagerBox(0, v123);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v96 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = (&v96 - v37);
  v39 = swift_getTupleTypeMetadata2();
  v120 = *(v39 - 8);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v96 - v41;
  v44 = *(v43 + 48);
  v117 = v30;
  v45 = *(v30 + 16);
  v45(&v96 - v41, v121, v29, v40);
  (v45)(&v42[v44], v122, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v45)(v35, v42, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v47 = v116;
        v48 = *(v116 + 32);
        v49 = v113;
        v48(v113, v35, v21);
        v50 = &v42[v44];
        v51 = v107;
        v48(v107, v50, v21);
        v52 = *(v111 + 48);
        v53 = v104;
        v54 = v49;
        v55 = v51;
        v56 = *(v47 + 16);
        v56(v104, v54, v21);
        v122 = v52;
        v56(&v53[v52], v55, v21);
        v57 = *(v109 + 48);
        if (v57(v53, 1, v115) == 1)
        {
          v58 = *(v47 + 8);
          v58(v55, v21);
          v58(v113, v21);
          if (v57(&v53[v122], 1, v115) == 1)
          {
            v59 = v53;
            v60 = v21;
LABEL_13:
            v58(v59, v60);
LABEL_14:
            v74 = 1;
LABEL_35:
            v75 = v117;
            goto LABEL_36;
          }

          goto LABEL_23;
        }

        v78 = v102;
        v56(v102, v53, v21);
        v79 = v122;
        v80 = v115;
        if (v57(&v53[v122], 1, v115) == 1)
        {
          v81 = *(v116 + 8);
          v81(v107, v21);
          v81(v113, v21);
          (*(v109 + 8))(v78, v80);
LABEL_23:
          (*(v100 + 8))(v53, v111);
          goto LABEL_31;
        }

        v87 = v109;
        v88 = v96;
        (*(v109 + 32))(v96, &v53[v79], v80);
        v74 = sub_213D918DC();
        v89 = v80;
        v90 = *(v87 + 8);
        v90(v88, v89);
        v91 = *(v116 + 8);
        v91(v107, v21);
        v91(v113, v21);
        v92 = &v124;
LABEL_34:
        v90(*(v92 - 32), v89);
        v91(v53, v21);
        goto LABEL_35;
      }

      (*(v116 + 8))(v35, v21);
    }

    else
    {
      (v45)(v32, v42, v29);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v62 = v118;
        v63 = v119;
        v64 = *(v118 + 32);
        v65 = v114;
        v64(v114, v32, v119);
        v66 = &v42[v44];
        v67 = v108;
        v64(v108, v66, v63);
        v68 = *(TupleTypeMetadata2 + 48);
        v69 = *(v62 + 16);
        v53 = v105;
        v69(v105, v65, v63);
        v122 = v68;
        v69(&v53[v68], v67, v63);
        v70 = *(v110 + 48);
        v71 = v106;
        if (v70(v53, 1, v106) == 1)
        {
          v58 = *(v118 + 8);
          v72 = v67;
          v73 = v119;
          v58(v72, v119);
          v58(v114, v73);
          if (v70(&v53[v122], 1, v71) == 1)
          {
            v59 = v53;
            v60 = v73;
            goto LABEL_13;
          }
        }

        else
        {
          v82 = v103;
          v83 = v71;
          v21 = v119;
          v69(v103, v53, v119);
          v84 = v122;
          v85 = v83;
          if (v70(&v53[v122], 1, v83) != 1)
          {
            v93 = v110;
            v94 = v97;
            v89 = v85;
            (*(v110 + 32))(v97, &v53[v84], v85);
            v74 = sub_213D918DC();
            v90 = *(v93 + 8);
            v90(v94, v89);
            v91 = *(v118 + 8);
            v91(v108, v21);
            v91(v114, v21);
            v92 = &v125;
            goto LABEL_34;
          }

          v86 = *(v118 + 8);
          v86(v108, v21);
          v86(v114, v21);
          (*(v110 + 8))(v82, v85);
        }

        (*(v101 + 8))(v53, TupleTypeMetadata2);
        goto LABEL_31;
      }

      (*(v118 + 8))(v32, v119);
    }
  }

  else
  {
    (v45)(v38, v42, v29);
    v61 = *v38;
    if (!swift_getEnumCaseMultiPayload())
    {
      v76 = *&v42[v44];
      if (v61)
      {
        if (v76)
        {
          v77 = v61;
          v74 = [v77 isEqual_];

          goto LABEL_35;
        }
      }

      else
      {
        if (!v76)
        {
          goto LABEL_14;
        }

        v61 = 0;
      }

LABEL_31:
      v74 = 0;
      goto LABEL_35;
    }
  }

  v74 = 0;
  v75 = v120;
  v29 = v39;
LABEL_36:
  (*(v75 + 8))(v42, v29);
  return v74 & 1;
}

uint64_t (*sub_213D7DFD4(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  sub_213D7EC1C(a1, a2, a3);
  sub_213D90C1C();
  if (!v5)
  {
    return 0;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  return sub_213D7EC8C;
}

double View.mapFeatureSelectionDisabled(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_213D9130C();

  return result;
}

double sub_213D7E11C@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213D7EC1C(a2, a3, a4);
  sub_213D90C1C();
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_213D7E16C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_213D7EC70;
    *(v4 + 24) = v3;
  }

  v5 = sub_213CD4E28(v1, v2);
  sub_213D7EC1C(v5, v6, v7);
  return sub_213D90C2C();
}

uint64_t sub_213D7E230@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_213D7E264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D7E2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MapSelection.Storage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213D7E354(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_213D7E46C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

unint64_t sub_213D7E63C()
{
  result = qword_27C8ED360[0];
  if (!qword_27C8ED360[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED358, &qword_213D9CA38);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8ED360);
  }

  return result;
}

void sub_213D7E6A0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_213D7E718();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_213D7E718()
{
  if (!qword_27C8ED3E8[0])
  {
    v0 = sub_213D91C7C();
    if (!v1)
    {
      atomic_store(v0, qword_27C8ED3E8);
    }
  }
}

void sub_213D7E768(uint64_t a1)
{
  sub_213D7E718();
  if (v1 <= 0x3F)
  {
    sub_213D91C7C();
    if (v2 <= 0x3F)
    {
      sub_213D91C7C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_213D7E7F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (!*(*(*(a3 + 16) - 8) + 84))
  {
    ++v3;
  }

  if (*(v4 + 84))
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = *(v4 + 64) + 1;
  }

  if (v3 > v5)
  {
    v5 = v3;
  }

  v6 = 8;
  if (v5 > 8)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_32;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v11 < 2)
    {
LABEL_32:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_32;
  }

LABEL_21:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 254;
}

void sub_213D7E99C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = *(*(a4 + 24) - 8);
  if (!*(*(*(a4 + 16) - 8) + 84))
  {
    ++v5;
  }

  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (v5 > v7)
  {
    v7 = v5;
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_46:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_46;
          }
        }

LABEL_43:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_32:
      a1[v7] = -a2;
      return;
    }

LABEL_31:
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_31;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_32;
  }
}

unint64_t sub_213D7EC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED470;
  if (!qword_27C8ED470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED470);
  }

  return result;
}

BOOL sub_213D7EC90(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return MKMapRectEqualToRect(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16);
}

void MapCircle.init(center:radius:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

void MapCircle.init(mapRect:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 1;
}

void MapCircle.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 coordinate];
  v5 = v4;
  v7 = v6;
  [a1 radius];
  v9 = v8;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
}

uint64_t static MapCircle._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v40 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v27 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED478, &qword_213D9CBA0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v27 - v13);
  v27 = a3;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  (*(v11 + 16))(v14, a1, v10);
  if (v12 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v15 = *v14;
  (*(v11 + 8))(v14, v10);
  v16 = v28;
  sub_213D90C3C();
  if (v7 != 4)
  {
    goto LABEL_5;
  }

  v17 = *v9;
  (*(v6 + 8))(v9, v5);
  v18 = *(v16 + *(type metadata accessor for _MapContentInputs(0) + 28));
  v29 = 1;
  v30 = v15;
  v31 = v17;
  v32 = v18;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, 28);
  v35[28] = -1;
  v36 = 0;
  v37 = -1;
  v38 = 0;
  v39 = 1;
  v19 = sub_213CDB9F8();
  sub_213D7FEB0(v19, v20, v21);
  v22 = sub_213D903EC();
  MEMORY[0x28223BE20](v22);
  *(&v27 - 4) = v23;
  sub_213CD8390(v23, v24, v25);
  return sub_213D90F7C();
}

double sub_213D7F0D8()
{
  v173 = *MEMORY[0x277D85DE8];
  v123 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v123);
  v2 = &v117[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = type metadata accessor for MapContentList.Item(0);
  v127 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v117[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v128 = &v117[-v5];
  v142 = sub_213D90C0C();
  v6 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v152 = &v117[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v153 = &v117[-v9];
  MEMORY[0x28223BE20](v10);
  v150 = &v117[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v117[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v117[-v17];
  v19 = sub_213D9100C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v146 = &v117[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v154 = &v117[-v23];
  Value = AGGraphGetValue();
  v136 = v25;
  v26 = *Value;
  v119 = *(Value + 16);
  v120 = v26;
  v118 = *(Value + 32);
  v144 = v0;
  LODWORD(Value) = *(v0 + 8);
  v27 = *MEMORY[0x277CEF7D0];
  v155 = v19;
  v126 = v2;
  v151 = v20;
  if (Value == v27)
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    v28 = *(v15 + 48);
    sub_213D90FFC();
    v18[v28] = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_213CD8330(v14, &qword_27C8EA920, &unk_213D96380);
    }
  }

  else
  {
    v29 = AGGraphGetValue();
    v30 = v6;
    v32 = v31;
    v33 = *(v15 + 48);
    (*(v20 + 16))(v14, v29, v19);
    v34 = v32 & 1;
    v6 = v30;
    v14[v33] = v34;
    (*(v16 + 56))(v14, 0, 1, v15);
    sub_213CF3968(v14, v18);
  }

  v133 = v18[*(v15 + 48)];
  v121 = *(v151 + 32);
  v122 = v151 + 32;
  v121(v154, v18, v155);
  v35 = v144;
  v36 = v142;
  v37 = AGGraphGetValue();
  v38 = *(v6 + 16);
  v39 = v150;
  v38(v150, v37, v36);
  v40 = sub_213D90A7C();
  v156 = *(v6 + 8);
  v156(v39, v36);
  v41 = *(v35 + 16);
  v145 = (v40 | v41) == 0;
  if (v40 && v41)
  {

    v145 = sub_213D9147C();
  }

  v143 = v41;
  v149 = v40;
  v42 = AGGraphGetValue();
  v43 = v38(v39, v42, v36);
  sub_213D4F17C(v43, v44, v45);
  sub_213D90C1C();
  v156(v39, v36);
  v141 = v165;
  v159 = v165;
  v160 = v166;
  v140 = v167;
  v161 = v167;
  v138 = *(&v166 + 1);
  v139 = v166;
  v46 = *(v35 + 48);
  v137 = v46;
  if (v46)
  {
    v47 = *(v35 + 56);
    v48 = *(v35 + 40);
    v49 = *(v35 + 32);
    v162[0] = *(v35 + 24);
    v162[1] = v49;
    v162[2] = v48;
    v162[3] = v46;
    v162[4] = v47;
    sub_213D1E3A4(&v159, &v165);

    v50 = MEMORY[0x21604D700](&v159, v162);

    sub_213D1E400(&v159);
    v51 = v50 ^ 1;
  }

  else
  {

    v51 = 1;
  }

  v130 = v51;
  v52 = AGGraphGetValue();
  v53 = v38(v39, v52, v36);
  sub_213D4F1D0(v53, v54, v55);
  sub_213D90C1C();
  v156(v39, v36);
  v56 = AGGraphGetValue();
  v57 = v153;
  v38(v153, v56, v36);
  v58 = sub_213D67A84(&v165, v57);
  v60 = *(v35 + 64);
  v61 = *(v35 + 72);
  v148 = v58;
  LODWORD(v153) = v59;
  v135 = v60;
  v134 = v61;
  if (v61 == 255)
  {
    goto LABEL_16;
  }

  if ((v59 & 1) == 0)
  {
    if ((v61 & 1) == 0)
    {
      v147 = v38;
      v62 = v58;
      sub_213D2BCD4(v58, 0);
      sub_213D4F40C(v60, v61);
      v63 = sub_213D9147C();
      goto LABEL_18;
    }

LABEL_16:
    v129 = 1;
    goto LABEL_19;
  }

  if ((v61 & 1) == 0)
  {
    goto LABEL_16;
  }

  v147 = v38;
  v62 = v58;
  sub_213D2BCD4(v58, 1);
  sub_213D4F40C(v60, v61);
  v63 = MEMORY[0x21604E890](v62, v60);
LABEL_18:
  v64 = v60;
  v65 = v63;
  sub_213D4F3F4(v64, v61);
  sub_213CE2B28(v62, v153 & 1);
  v129 = v65 ^ 1;
  v38 = v147;
LABEL_19:
  v66 = AGGraphGetValue();
  v67 = v152;
  v68 = v38(v152, v66, v36);
  sub_213D4F224(v68, v69, v70);
  sub_213D90C1C();
  v156(v67, v36);
  if (v164)
  {
    sub_213D1E2DC(&v163, &v165);
  }

  else
  {
    v71 = AGGraphGetValue();
    v72 = v38(v39, v71, v36);
    v73 = MEMORY[0x21604DD60](v72);
    v156(v39, v36);
    *(&v166 + 1) = MEMORY[0x277CDF6A8];
    *&v167 = MEMORY[0x277CDF6A0];
    *&v165 = v73;
    if (v164)
    {
      sub_213CD8330(&v163, &qword_27C8EBF98, &qword_213D9E670);
    }
  }

  v74 = AGGraphGetValue();
  v38(v39, v74, v36);
  v75 = sub_213D67A84(&v165, v39);
  v77 = *(v35 + 80);
  v78 = *(v35 + 88);
  v147 = v75;
  LODWORD(v152) = v76;
  v132 = v77;
  v131 = v78;
  if (v78 != 255)
  {
    if (v76)
    {
      if (v78)
      {
        v79 = v75;
        sub_213D2BCD4(v75, 1);
        sub_213D4F40C(v77, v78);
        v80 = MEMORY[0x21604E890](v79, v77);
LABEL_30:
        v82 = v77;
        v83 = v80;
        sub_213D4F3F4(v82, v78);
        sub_213CE2B28(v79, v152 & 1);
        v81 = v83 ^ 1;
        goto LABEL_31;
      }
    }

    else if ((v78 & 1) == 0)
    {
      v79 = v75;
      sub_213D2BCD4(v75, 0);
      sub_213D4F40C(v77, v78);
      v80 = sub_213D9147C();
      goto LABEL_30;
    }
  }

  v81 = 1;
LABEL_31:
  v84 = AGGraphGetValue();
  v85 = v150;
  v86 = v38(v150, v84, v36);
  sub_213D4F278(v86, v87, v88);
  sub_213D90C1C();
  v156(v85, v36);
  v89 = v165;
  if ((*(v35 + 104) | v136) & 1 | ((v145 & 1) == 0) | v130 & 1 | v129 & 1 | v133 & 1 || (v81 & 1) != 0 || v165 != *(v35 + 96) || !AGGraphGetOutputValue())
  {
    LODWORD(v150) = *(v35 + 12) + 1;
    *(v35 + 12) = v150;
    LOBYTE(v163) = v118;
    v168 = v159;
    v169 = v160;
    v90 = v153 & 1;
    v158 = v153 & 1;
    v91 = v152 & 1;
    v157 = v152 & 1;
    v165 = v120;
    v166 = v119;
    LOBYTE(v167) = v118;
    v92 = v148;
    *(&v167 + 1) = v149;
    *&v170 = v161;
    *(&v170 + 1) = v148;
    LOBYTE(v171) = v153 & 1;
    v93 = v147;
    *(&v171 + 1) = v147;
    LOBYTE(v172) = v152 & 1;
    v156 = v89;
    *(&v172 + 1) = v89;
    v94 = v151;
    (*(v151 + 16))(v146, v154, v155);
    v95 = v170;
    v96 = v126;
    v126[4] = v169;
    v96[5] = v95;
    v97 = v172;
    v96[6] = v171;
    v96[7] = v97;
    v98 = v166;
    *v96 = v165;
    v96[1] = v98;
    v99 = v168;
    v96[2] = v167;
    v96[3] = v99;
    swift_storeEnumTagMultiPayload();

    sub_213D1E3A4(&v159, &v163);
    sub_213D2BCD4(v92, v90);
    sub_213D2BCD4(v93, v91);
    v100 = sub_213D80048(&v165, &v163);
    sub_213CDF60C(v100, v101, v102);
    sub_213D9101C();
    v103 = v163;
    if (!v163)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_213D94520;
      *(v103 + 32) = 0;
      *(v103 + 72) = 0;
    }

    v105 = v124;
    v104 = v125;
    *v124 = v103;
    v106 = v155;
    v121(v105 + *(v104 + 28), v146, v155);
    *(v105 + 2) = v150;
    sub_213CF39D8(v96, v105 + *(v104 + 24), type metadata accessor for MapContentList.Item.Content);
    v107 = v105;
    v108 = v128;
    sub_213CF39D8(v107, v128, type metadata accessor for MapContentList.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
    v109 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_213D94520;
    sub_213D4F304(v108, v110 + v109);
    *&v163 = sub_213D71A68(v110);
    *(&v163 + 1) = v111;
    AGGraphSetOutputValue();
    sub_213D2BCE0(&v165);
    sub_213D4F398(v108);
    (*(v94 + 8))(v154, v106);

    sub_213D4F3F4(v132, v131);
    sub_213D4F3F4(v135, v134);

    *(v35 + 96) = v156;
  }

  else
  {
    (*(v151 + 8))(v154, v155);
    sub_213D4F3F4(v132, v131);
    sub_213D4F3F4(v135, v134);

    *(v35 + 96) = v89;
  }

  *(v35 + 104) = 0;
  v112 = v152 & 1;
  v113 = v148;
  *(v35 + 80) = v147;
  *(v35 + 88) = v112;
  *(v35 + 72) = v153 & 1;
  v114 = v149;
  result = *&v141;
  *(v35 + 24) = v141;
  v116 = v138;
  *(v35 + 40) = v139;
  *(v35 + 48) = v116;
  *(v35 + 56) = v140;
  *(v35 + 64) = v113;
  *(v35 + 16) = v114;
  return result;
}

unint64_t sub_213D7FEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED480;
  if (!qword_27C8ED480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED480);
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

uint64_t initializeBufferWithCopyOfBuffer for MapCircle.LocationArea(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_213D7FF58(uint64_t a1, unsigned int a2)
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

uint64_t sub_213D7FFA0(uint64_t result, unsigned int a2, unsigned int a3)
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

BOOL MKMapRectEqualToRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 != a5 || a2 != a6)
  {
    return 0;
  }

  if (a4 == a8)
  {
    return a3 == a7;
  }

  return 0;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_213D800A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213D800EC(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_213D80164@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t static MapInteractionModes.all.getter@<X0>(void *a1@<X8>)
{
  if (qword_27C8E99F8 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_27C8ED488;
  return result;
}

uint64_t sub_213D80248()
{
  result = _MKLinkedOnOrAfterReleaseSet();
  v1 = 3;
  if (result)
  {
    v1 = 15;
  }

  qword_27C8ED488 = v1;
  return result;
}

BOOL sub_213D802CC(void *a1, uint64_t *a2)
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

void *sub_213D802FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_213D80328@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

unint64_t sub_213D80420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED490;
  if (!qword_27C8ED490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED490);
  }

  return result;
}

unint64_t sub_213D80478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED498;
  if (!qword_27C8ED498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED498);
  }

  return result;
}

unint64_t sub_213D804D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED4A0;
  if (!qword_27C8ED4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED4A0);
  }

  return result;
}

unint64_t sub_213D80528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED4A8;
  if (!qword_27C8ED4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED4A8);
  }

  return result;
}

double View.mapItemDetailSheet(isPresented:item:displaysMap:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v9;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  v13 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4B0, &qword_213D9D090);
  sub_213D8180C(&qword_27C8ED4B8, &qword_27C8ED4B0, &qword_213D9D090, sub_213D807B8);
  sub_213D9140C();

  return result;
}

unint64_t sub_213D806D8()
{
  result = qword_27C8ED4C0;
  if (!qword_27C8ED4C0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED4C8, &qword_213D9D098);
    sub_213D80764(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED4C0);
  }

  return result;
}

unint64_t sub_213D80764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED4D0;
  if (!qword_27C8ED4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED4D0);
  }

  return result;
}

unint64_t sub_213D807B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED4D8;
  if (!qword_27C8ED4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED4D8);
  }

  return result;
}

double View.mapItemDetailSheet(item:displaysMap:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v12 = a3;
  swift_retain_n();
  swift_retain_n();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4E0, &qword_213D9D0A0);
  sub_213D9161C();
  v14 = swift_allocObject();
  *(v14 + 16) = v20;
  *(v14 + 24) = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = a4;
  v15 = v22;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4B0, &qword_213D9D090);
  sub_213D81790(v16, v17, v18);
  sub_213D8180C(&qword_27C8ED4B8, &qword_27C8ED4B0, &qword_213D9D090, sub_213D807B8);
  sub_213D9141C();

  return result;
}

double View.mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5;
  v16 = a4;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4F0, &qword_213D9D0A8);
  v18 = sub_213D8180C(&qword_27C8ED4F8, &qword_27C8ED4F0, &qword_213D9D0A8, sub_213D81890);
  sub_213CD4F08(a1, a2, a3, a6, 4, sub_213D825BC, v15, a7, v17, a8, v18);

  return result;
}

double View.mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:arrowEdge:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5;
  v16 = a4;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4F0, &qword_213D9D0A8);
  v18 = sub_213D8180C(&qword_27C8ED4F8, &qword_27C8ED4F0, &qword_213D9D0A8, sub_213D81890);
  sub_213CD4F08(a1, a2, a3, a6, a7, sub_213D825BC, v15, a8, v17, a9, v18);

  return result;
}

double sub_213D80CA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  LOBYTE(v14) = a3;
  *(&v14 + 1) = a4;
  memset(v15, 0, 24);
  v15[24] = a5;
  v16[0] = a1;
  v16[1] = a2;
  v17 = a3;
  v18 = a4;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = a5;
  v7 = a4;

  sub_213D82434(&v13, v23);
  sub_213D8246C(v16);
  v8 = sub_213D908DC();
  v9 = sub_213D911DC();
  *v24 = *v15;
  *&v24[9] = *&v15[9];
  v10 = v14;
  *a6 = v13;
  *(a6 + 16) = v10;
  result = *v24;
  v12 = *&v24[16];
  *(a6 + 32) = *v24;
  *(a6 + 48) = v12;
  *(a6 + 64) = v8;
  *(a6 + 72) = v9;
  return result;
}

double View.mapItemDetailPopover(item:displaysMap:attachmentAnchor:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v11 = a3;
  swift_retain_n();
  swift_retain_n();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4E0, &qword_213D9D0A0);
  sub_213D9161C();
  v13 = v22[1];
  v14 = v22[2];
  v15 = swift_allocObject();
  *(v15 + 16) = v22[0];
  *(v15 + 24) = v13;
  *(v15 + 32) = v14;
  *(v15 + 40) = a4;
  v16 = v14;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4F0, &qword_213D9D0A8);
  sub_213D81790(v17, v18, v19);
  sub_213D8180C(&qword_27C8ED4F8, &qword_27C8ED4F0, &qword_213D9D0A8, sub_213D81890);
  sub_213CD4FD0(v22, a5, 4);

  return result;
}

double View.mapItemDetailPopover(item:displaysMap:attachmentAnchor:arrowEdge:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, unsigned int a6)
{
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v12 = a3;
  swift_retain_n();
  swift_retain_n();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4E0, &qword_213D9D0A0);
  sub_213D9161C();
  v14 = v24[1];
  v15 = v24[2];
  v16 = swift_allocObject();
  *(v16 + 16) = v24[0];
  *(v16 + 24) = v14;
  *(v16 + 32) = v15;
  *(v16 + 40) = a4;
  v17 = v15;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4F0, &qword_213D9D0A8);
  sub_213D81790(v18, v19, v20);
  sub_213D8180C(&qword_27C8ED4F8, &qword_27C8ED4F0, &qword_213D9D0A8, sub_213D81890);
  sub_213CD4FD0(v24, a5, a6);

  return result;
}

double sub_213D811A0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v12 = 0uLL;
  LOBYTE(v13) = 0;
  *(&v13 + 1) = 0;
  *v14 = a1;
  *&v14[8] = a2;
  *&v14[16] = a3;
  v14[24] = a4;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v17 = 0;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v6 = a3;

  sub_213D82434(&v12, v22);
  sub_213D8246C(v15);
  v7 = sub_213D908DC();
  v8 = sub_213D911DC();
  *v23 = *v14;
  *&v23[9] = *&v14[9];
  v9 = v13;
  *a5 = v12;
  *(a5 + 16) = v9;
  result = *v23;
  v11 = *&v23[16];
  *(a5 + 32) = *v23;
  *(a5 + 48) = v11;
  *(a5 + 64) = v7;
  *(a5 + 72) = v8;
  return result;
}

uint64_t sub_213D8125C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED590, &qword_213D9D3E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_213D812D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED598, &qword_213D9D3E8);
  MEMORY[0x28223BE20](v2);
  v4 = v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5A0, &qword_213D9D3F0);
  MEMORY[0x28223BE20](v5);
  v7 = v15 - v6;
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9)
  {
    sub_213D9173C();
    sub_213D9063C();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5A8, &qword_213D9D3F8);
    (*(*(v10 - 8) + 16))(v4, a1, v10);
    v11 = &v4[*(v2 + 36)];
    v12 = v15[1];
    *v11 = v15[0];
    *(v11 + 1) = v12;
    *(v11 + 2) = v15[2];
    sub_213D822B0(v4, v7);
    swift_storeEnumTagMultiPayload();
    sub_213D824B4(&qword_27C8ED5B0, &qword_27C8ED5A8, &qword_213D9D3F8);
    sub_213D82320();
    sub_213D90E5C();
    return sub_213D823C4(v4);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5A8, &qword_213D9D3F8);
    (*(*(v14 - 8) + 16))(v7, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_213D824B4(&qword_27C8ED5B0, &qword_27C8ED5A8, &qword_213D9D3F8);
    sub_213D82320();
    return sub_213D90E5C();
  }
}

uint64_t sub_213D81598()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_213D91FBC();
  if (v2 == 1)
  {
    MEMORY[0x21604F190](1);
    MEMORY[0x21604F190](v1);
  }

  else
  {
    MEMORY[0x21604F190](0);
    MEMORY[0x21604F1B0](v1);
  }

  return sub_213D91FFC();
}

uint64_t sub_213D81614()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    MEMORY[0x21604F190](1);
    return MEMORY[0x21604F190](v1);
  }

  else
  {
    MEMORY[0x21604F190](0);
    return MEMORY[0x21604F1B0](v1);
  }
}

uint64_t sub_213D8166C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_213D91FBC();
  if (v3 == 1)
  {
    MEMORY[0x21604F190](1);
    MEMORY[0x21604F190](v2);
  }

  else
  {
    MEMORY[0x21604F190](0);
    MEMORY[0x21604F1B0](v2);
  }

  return sub_213D91FFC();
}

uint64_t sub_213D8170C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5D8, &qword_213D9D418);
  return sub_213D915FC();
}

unint64_t sub_213D81790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED4E8;
  if (!qword_27C8ED4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED4E8);
  }

  return result;
}

uint64_t sub_213D8180C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_213D806D8();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213D81890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED500;
  if (!qword_27C8ED500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED500);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

void *sub_213D8192C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 48);
  v7 = *(v1 + 32);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5D8, &qword_213D9D418);
  result = MEMORY[0x21604E7B0](&v6, v4);
  *a1 = v6;
  return result;
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

void sub_213D819E4(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ([v3 _hasMUID] && objc_msgSend(v3, sel__muid))
  {

    v3 = [v3 _muid];
    v4 = 0;
  }

  else
  {

    v4 = 1;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
}

id sub_213D81B40(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapItemDetailView.Coordinator();
  return objc_msgSendSuper2(&v4, sel_dealloc);
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

uint64_t sub_213D81BFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_213D81C58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_213D81CD0(id result)
{
  if (*(v1 + 8))
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CD4E90]) initWithMapItem:*(v1 + 24) displaysMap:*(v1 + 56)];
LABEL_5:
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5C0, &qword_213D9D400);
    sub_213D9116C();
    [v8 setDelegate_];

    return v8;
  }

  if (*(v1 + 40))
  {
    v9 = *(v1 + 32);
    v3 = *(v1 + 48);

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5C8, &qword_213D9D408);
    v5 = v1;
    MEMORY[0x21604E7B0](&v10, v4);
    v6 = v10;
    v7 = [objc_allocWithZone(MEMORY[0x277CD4E90]) initWithMapItem:v10 displaysMap:*(v5 + 56)];

    v2 = v7;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_213D81E28(uint64_t *a1)
{
  if (a1[1])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5D0, &qword_213D9D410);
    sub_213D915FC();
LABEL_5:

    return;
  }

  if (a1[5])
  {
    v1 = a1[6];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5C8, &qword_213D9D408);
    sub_213D915FC();

    goto LABEL_5;
  }

  __break(1u);
}

void sub_213D81F60()
{
  v1 = v0[1];
  v10 = *v0;
  v11 = v1;
  v12[0] = v0[2];
  *(v12 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5C0, &qword_213D9D400);
  sub_213D9116C();
  v2 = v9;
  v3 = swift_allocObject();
  *(v3 + 57) = *(v12 + 9);
  v4 = v12[0];
  v3[2] = v11;
  v3[3] = v4;
  v3[1] = v10;
  v5 = &v2[OBJC_IVAR____TtCV15_MapKit_SwiftUIP33_88864655A4452E6E3BB4AF822A3E769217MapItemDetailView11Coordinator_didRequestDismissal];
  v6 = *&v2[OBJC_IVAR____TtCV15_MapKit_SwiftUIP33_88864655A4452E6E3BB4AF822A3E769217MapItemDetailView11Coordinator_didRequestDismissal];
  v7 = *&v2[OBJC_IVAR____TtCV15_MapKit_SwiftUIP33_88864655A4452E6E3BB4AF822A3E769217MapItemDetailView11Coordinator_didRequestDismissal + 8];
  *v5 = sub_213D8242C;
  v5[1] = v3;
  sub_213D82434(&v10, v8);
  sub_213CCE520(v6, v7);
}

id sub_213D82040@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for MapItemDetailView.Coordinator()) init];
  *a1 = result;
  return result;
}

unint64_t sub_213D820A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED578;
  if (!qword_27C8ED578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED578);
  }

  return result;
}

unint64_t sub_213D820FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED580;
  if (!qword_27C8ED580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED580);
  }

  return result;
}

uint64_t sub_213D8216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D8225C(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_213D821D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D8225C(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_213D82234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213D8225C(a1, a2, a3);
  sub_213D9114C();
  __break(1u);
}

unint64_t sub_213D8225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED588;
  if (!qword_27C8ED588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED588);
  }

  return result;
}

uint64_t sub_213D822B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED598, &qword_213D9D3E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_213D82320()
{
  result = qword_27C8ED5B8;
  if (!qword_27C8ED5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED598, &qword_213D9D3E8);
    sub_213D824B4(&qword_27C8ED5B0, &qword_27C8ED5A8, &qword_213D9D3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED5B8);
  }

  return result;
}

uint64_t sub_213D823C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED598, &qword_213D9D3E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213D824B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213D82508()
{
  result = qword_27C8ED5E8;
  if (!qword_27C8ED5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27C8ED5F0, &unk_213D9D430);
    sub_213D824B4(&qword_27C8ED5B0, &qword_27C8ED5A8, &qword_213D9D3F8);
    sub_213D82320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED5E8);
  }

  return result;
}

uint64_t sub_213D825D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213D82624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213D82678(uint64_t a1)
{
  if (qword_27C8E99C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27C8F7320;
  if (*(qword_27C8F7320 + 16) && (v3 = sub_213CE20E8(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = sub_213D82788(a1);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = qword_27C8F7320;
    qword_27C8F7320 = 0x8000000000000000;
    sub_213D8D20C(v5, a1, isUniquelyReferenced_nonNull_native);
    qword_27C8F7320 = v8;
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_213D82788(uint64_t a1)
{
  result = AGTupleCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v6 = AGTupleElementType();
      _mapContentProtocolDescriptor();
      v7 = swift_conformsToProtocol();
      if (v7)
      {
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_213D6F6B4(0, *(v4 + 2) + 1, 1, v4);
        }

        v10 = *(v4 + 2);
        v9 = *(v4 + 3);
        if (v10 >= v9 >> 1)
        {
          v4 = sub_213D6F6B4((v9 > 1), v10 + 1, 1, v4);
        }

        *(v4 + 2) = v10 + 1;
        v5 = &v4[24 * v10];
        *(v5 + 4) = v3;
        *(v5 + 5) = v6;
        *(v5 + 6) = v8;
      }

      ++v3;
    }

    while (v2 != v3);
    return v4;
  }

  return result;
}

uint64_t static TupleMapContent._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v47 = a1;
  v49 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for _MapContentOutputs(0);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for MultiPreferenceCombinerVisitor(0);
  MEMORY[0x28223BE20](v43);
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v42);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TupleMapContent(255, a3, v12, v13);
  v14 = sub_213D9057C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  List = type metadata accessor for TupleMapContent.MakeList(0, a3, v18, v19);
  v41 = *(List - 8);
  MEMORY[0x28223BE20](List);
  v22 = &v40 - v21;
  v23 = sub_213D82678(a3);
  (*(v15 + 16))(v17, v47, v14);
  v45 = a2;
  sub_213CDDF50(a2, v11, type metadata accessor for _MapContentInputs);
  sub_213D82E58(v17, v11, 0, MEMORY[0x277D84F90], a3, v22);
  v47 = v23;
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(List + 32);
    v26 = (v47 + 48);
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      v26 += 3;
      *&v22[v25] = AGTupleElementOffset();
      sub_213CD72E4(v22, v27, v28, List, &off_28263E8D8);
      --v24;
    }

    while (v24);
  }

  v29 = *&v22[*(List + 36)];
  v30 = *(v29 + 16);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v48 = MEMORY[0x277D84F90];

    sub_213D4E8D4(0, v30, 0);
    v31 = v48;
    v32 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v47 = v29;
    v33 = v29 + v32;
    v34 = *(v40 + 72);
    do
    {
      sub_213CDDF50(v33, v8, type metadata accessor for _MapContentOutputs);
      v48 = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_213D4E8D4((v35 > 1), v36 + 1, 1);
        v31 = v48;
      }

      *(v31 + 16) = v36 + 1;
      sub_213CDEA2C(v8, v31 + v32 + v36 * v34, type metadata accessor for _MapContentOutputs);
      v33 += v34;
      --v30;
    }

    while (v30);
  }

  v37 = v44;
  v38 = *(v43 + 20);
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  *v37 = v31;
  sub_213D83A08();
  sub_213D90F2C();
  sub_213CDDF50(v37 + v38, v46, type metadata accessor for _MapContentOutputs);
  sub_213D83CD8(v37, type metadata accessor for MultiPreferenceCombinerVisitor);
  return (*(v41 + 8))(v22, List);
}

uint64_t sub_213D82E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for TupleMapContent(255, a5, a3, a4);
  v12 = sub_213D9057C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  List = type metadata accessor for TupleMapContent.MakeList(0, a5, v13, v14);
  result = sub_213CDEA2C(a2, a6 + List[7], type metadata accessor for _MapContentInputs);
  *(a6 + List[8]) = a3;
  *(a6 + List[9]) = a4;
  return result;
}

uint64_t static TupleMapContent._mapContentCount(inputs:)(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TupleMapContent.CountContents(0, a2, v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  v13 = sub_213D82678(a2);
  sub_213CDDF50(a1, v6, type metadata accessor for _MapContentInputs);
  sub_213CDEA2C(v6, v12, type metadata accessor for _MapContentInputs);
  v14 = &v12[*(v9 + 28)];
  *v14 = 0;
  v14[8] = 0;
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = (v13 + 48);
    do
    {
      sub_213CD72E4(v12, *(v16 - 1), *v16, v9, &off_28263E8C8);
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  v17 = *&v12[*(v9 + 28)];
  (*(v10 + 8))(v12, v9);
  return v17;
}

uint64_t sub_213D83120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v53 = *MEMORY[0x277D85DE8];
  v44 = sub_213D9057C();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = &v39 - v7;
  v9 = type metadata accessor for _MapContentOutputs(0);
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39 = &v39 - v12;
  v13 = type metadata accessor for _MapContentInputs(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v4 + *(a2 + 28);
  sub_213CDDF50(v17, v16, type metadata accessor for _MapContentInputs);
  v18 = *(v17 + *(v14 + 36));
  v41 = a2;
  v19 = *(a2 + 16);
  v47 = sub_213D83584(v18);
  v48 = v20;
  v49 = v21;
  v23 = type metadata accessor for TupleMapContent.ChildTraits(0, v19, v21, v22);
  v51 = v23;
  WitnessTable = swift_getWitnessTable();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8E9FF8, &unk_213D94800);
  sub_213CDDDA4(&v47, sub_213CDE810, v50, v23, MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v25);

  *&v16[*(v14 + 36)] = v46;
  v26 = v19;
  v28 = v39;
  v27 = v40;
  v29 = v4;
  v32 = type metadata accessor for TupleMapContent(0, v26, v30, v31);
  sub_213CDF810(v4, v32);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  sub_213CDF770(OffsetAttribute2, v8);
  (*(v43 + 32))(v8, v16, a3);
  (*(v42 + 8))(v8, v44);
  sub_213CDDF50(v28, v27, type metadata accessor for _MapContentOutputs);
  v34 = *(v41 + 36);
  v35 = *(v4 + v34);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_213D6F7D0(0, v35[2] + 1, 1, v35);
  }

  v37 = v35[2];
  v36 = v35[3];
  if (v37 >= v36 >> 1)
  {
    v35 = sub_213D6F7D0((v36 > 1), v37 + 1, 1, v35);
  }

  sub_213D83CD8(v28, type metadata accessor for _MapContentOutputs);
  sub_213D83CD8(v16, type metadata accessor for _MapContentInputs);
  v35[2] = v37 + 1;
  result = sub_213CDEA2C(v27, v35 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v37, type metadata accessor for _MapContentOutputs);
  *(v29 + v34) = v35;
  return result;
}

uint64_t sub_213D83584(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_213D94520;
  *(v2 + 32) = -1;
  *(v2 + 72) = 0;
  return a1;
}

uint64_t sub_213D835EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = *MEMORY[0x277CEF7D0];
  v5 = sub_213D9100C();
  v6 = v5;
  if (v4 == v2)
  {
    v7 = *(v5 - 8);
    v8 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v12 = *(v6 - 8);
    (*(v12 + 16))(a2, Value, v6);
    v7 = v12;
    v8 = 0;
  }

  v10 = *(v7 + 56);

  return v10(a2, v8, 1, v6);
}

uint64_t sub_213D83724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA180, &qword_213D94A40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  sub_213D835EC(a1, v20 - v10);
  v12 = sub_213D9100C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) == 1)
  {
    sub_213D90FFC();
    if (v14(v11, 1, v12) != 1)
    {
      sub_213CDF4FC(v11);
    }
  }

  else
  {
    (*(v13 + 32))(a3, v11, v12);
  }

  (*(v13 + 16))(v8, a3, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  v20[0] = a2;
  v21 = 0;
  v15 = sub_213D71C7C(v8, v20);
  sub_213CDF5B8(v20);
  v16 = sub_213CDF4FC(v8);
  v20[0] = v15;
  sub_213CDF60C(v16, v17, v18);
  return sub_213D9102C();
}

void sub_213D83948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + *(a2 + 28));
  if (v5[1] & 1) != 0 || (v6 = *v5, v7 = (*(a4 + 40))(v4, a3, a4), (v8))
  {
    v9 = 0;
    v10 = 1;
LABEL_6:
    *v5 = v9;
    *(v5 + 8) = v10;
    return;
  }

  v9 = v6 + v7;
  if (!__OFADD__(v6, v7))
  {
    v10 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_213D83A08()
{
  result = qword_27C8ED700[0];
  if (!qword_27C8ED700[0])
  {
    type metadata accessor for MultiPreferenceCombinerVisitor(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8ED700);
  }

  return result;
}

uint64_t sub_213D83A78(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_213D83AE8(uint64_t a1)
{
  type metadata accessor for _MapContentInputs(319);
  if (v1 <= 0x3F)
  {
    sub_213D83B94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213D83B94()
{
  if (!qword_27C8ED808[0])
  {
    v0 = sub_213D91C7C();
    if (!v1)
    {
      atomic_store(v0, qword_27C8ED808);
    }
  }
}

void sub_213D83BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TupleMapContent(255, *(a1 + 16), a3, a4);
  sub_213D9057C();
  if (v4 <= 0x3F)
  {
    type metadata accessor for _MapContentInputs(319);
    if (v5 <= 0x3F)
    {
      sub_213CF6624(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213D83CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D83D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213D83D74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213D83DBC(uint64_t result, int a2, int a3)
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

uint64_t sub_213D83E18(uint64_t a1)
{
  v27 = a1;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = *(type metadata accessor for MapUserLocationButtonConfig(0) + 28);
  v13 = *MEMORY[0x277CDF440];
  (*(v3 + 104))(v11, *MEMORY[0x277CDF440], v2);
  v14 = sub_213D9050C();
  v26 = *(v3 + 8);
  v26(v11, v2);
  v15 = *(v3 + 16);
  v16 = (v3 + 88);
  if ((v14 & 1) == 0)
  {
    v15(v5, v1 + v12, v2);
    v22 = (*v16)(v5, v2);
    if (v22 == *MEMORY[0x277CDF418] || v22 == *MEMORY[0x277CDF438] || v22 == v13)
    {
      return 1;
    }

    v25 = v22 == *MEMORY[0x277CDF420] || v22 == *MEMORY[0x277CDF410];
    v8 = v5;
    if (!v25)
    {
      goto LABEL_26;
    }

    return 2;
  }

  v15(v8, v27, v2);
  v17 = (*v16)(v8, v2);
  if (v17 == *MEMORY[0x277CDF418] || v17 == *MEMORY[0x277CDF438] || v17 == v13)
  {
    return 1;
  }

  if (v17 == *MEMORY[0x277CDF420] || v17 == *MEMORY[0x277CDF410])
  {
    return 2;
  }

LABEL_26:
  v26(v8, v2);
  return 1;
}

uint64_t sub_213D840AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213D90C0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213CE2C28(v2, &v14 - v9, &qword_27C8EC550, &qword_213D94A80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213D90A6C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213D91BDC();
    v13 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_213D842AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MapUserLocationButton(0);
  sub_213CE2C28(v1 + *(v10 + 20), v9, &qword_27C8EBAF0, &qword_213D9A2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213D9051C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213D91BDC();
    v13 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_213D844B4()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for MapUserLocationButton(0) + 24);
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_213D91BDC();
    v8 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    j__swift_release(v6);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_213D84608()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for MapUserLocationButton(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_213D91BDC();
    v7 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_213D84760()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for MapUserLocationButton(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_213D91BDC();
    v7 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t MapUserLocationButton.init(scope:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for MapUserLocationButton(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a3 + v6[7];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a3 + v6[8];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a3 + v6[9];
  result = swift_getKeyPath();
  *v11 = result;
  v11[8] = 0;
  v13 = a3 + v6[10];
  *v13 = a1;
  v13[8] = a2 & 1;
  return result;
}

uint64_t MapUserLocationButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED910, &qword_213D9D7D8);
  MEMORY[0x28223BE20](v54);
  v44 = &v42 - v2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED918, &qword_213D9D7E0);
  MEMORY[0x28223BE20](v51);
  v53 = &v42 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  MEMORY[0x28223BE20](v52);
  v43 = &v42 - v4;
  v5 = type metadata accessor for MapControlsConfig(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213D9051C();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_213D90A6C();
  v11 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for MapUserLocationButtonConfig(0);
  v50 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = sub_213D84760();
  sub_213D840AC(v13);
  sub_213D842AC(v10);
  v20 = sub_213D844B4();
  if (v19 == 3)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  v22 = v18;
  v15[1] = v21;
  v23 = v45;
  (*(v11 + 32))(&v15[*(v45 + 24)], v13, v46);
  v24 = v49;
  (*(v47 + 32))(&v15[*(v23 + 28)], v10, v48);
  *&v15[*(v23 + 32)] = v20;
  *v15 = 1;
  sub_213D859B4(v15, v18);
  v25 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = v6[7];
  v27 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v27 - 8) + 56))(v24 + v26, 1, 1, v27);
  v28 = v6[8];
  sub_213D85B40(v18, v24 + v28, type metadata accessor for MapUserLocationButtonConfig);
  (*(v50 + 56))(v24 + v28, 0, 1, v23);
  v29 = v6[9];
  v30 = type metadata accessor for MapCompassConfig(0);
  (*(*(v30 - 8) + 56))(v24 + v29, 1, 1, v30);
  *(v24 + v6[10]) = 2;
  *(v24 + v6[11]) = 2;
  *(v24 + v6[12]) = 2;
  if (sub_213D84608())
  {
    v31 = sub_213D9149C();
    v32 = v43;
    sub_213D85B40(v24, &v43[*(v52 + 36)], type metadata accessor for MapControlsConfig);
    *v32 = v31;
    v33 = &qword_27C8EA1B8;
    v34 = &qword_213D94B50;
    sub_213CE2C28(v32, v53, &qword_27C8EA1B8, &qword_213D94B50);
  }

  else
  {
    v35 = type metadata accessor for _MapUserLocationButton(0);
    v32 = v44;
    sub_213D85B40(v18, &v44[*(v35 + 20)], type metadata accessor for MapUserLocationButtonConfig);
    v36 = (v1 + *(type metadata accessor for MapUserLocationButton(0) + 40));
    v37 = *v36;
    v38 = *(v36 + 8);
    *v32 = swift_getKeyPath();
    *(v32 + 8) = 0;
    v39 = v32 + *(v35 + 24);
    *v39 = v37;
    *(v39 + 8) = v38;
    v40 = v53;
    *(v32 + *(v54 + 36)) = 257;
    v33 = &qword_27C8ED910;
    v34 = &qword_213D9D7D8;
    sub_213CE2C28(v32, v40, &qword_27C8ED910, &qword_213D9D7D8);
  }

  swift_storeEnumTagMultiPayload();
  sub_213CE189C();
  sub_213D85A38();
  sub_213D90E5C();
  sub_213CD8330(v32, v33, v34);
  sub_213D85AE0(v24, type metadata accessor for MapControlsConfig);
  return sub_213D85AE0(v22, type metadata accessor for MapUserLocationButtonConfig);
}

uint64_t sub_213D850AC()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v6 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_213D85200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D860D8(&qword_27C8ED970, &unk_213D9D8C4);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213D85280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D860D8(&qword_27C8ED970, &unk_213D9D8C4);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213D85300(uint64_t a1)
{
  sub_213D860D8(&qword_27C8ED970, &unk_213D9D8C4);
  sub_213D90E1C();
  __break(1u);
}

id sub_213D85344()
{
  v1 = v0;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_213D90A6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for _MapUserLocationButton(0);
  v11 = v0 + *(v10 + 24);
  if ((*(v11 + 8) & 1) == 0)
  {
    v12 = *v11;
    v13 = sub_213D850AC();
    if (*(v13 + 16) && (v14 = sub_213CE212C(v12), (v15 & 1) != 0))
    {
      sub_213CE2A1C(*(v13 + 56) + 8 * v14, v27);

      sub_213CE2A78(v27, v28);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        v18 = [objc_opt_self() userTrackingButtonWithMapView_];

        sub_213CE2AD4(v28);
        goto LABEL_8;
      }

      sub_213CE2AD4(v28);
    }

    else
    {
    }
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CD4F68]) init];
LABEL_8:
  v19 = v1 + *(v10 + 20);
  v20 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(v7 + 16))(v9, v19 + *(v20 + 24), v6);
  v21 = v18;
  [v21 setBackgroundStyle_];
  (*(v3 + 16))(v5, v19 + *(v20 + 28), v2);
  v22 = (*(v3 + 88))(v5, v2);
  if (v22 == *MEMORY[0x277CDF418] || v22 == *MEMORY[0x277CDF438] || v22 == *MEMORY[0x277CDF440])
  {
    goto LABEL_18;
  }

  v25 = 2;
  if (v22 != *MEMORY[0x277CDF420] && v22 != *MEMORY[0x277CDF410])
  {
    (*(v3 + 8))(v5, v2, 2);
LABEL_18:
    v25 = 1;
  }

  [v21 _setControlSize_];

  return v21;
}

id sub_213D85688(id a1)
{
  v2 = v1;
  v4 = sub_213D9051C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213D90A6C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _MapUserLocationButton(0);
  v13 = v1 + *(v12 + 24);
  if ((*(v13 + 8) & 1) == 0)
  {
    v28 = a1;
    v14 = *v13;
    v15 = sub_213D850AC();
    if (*(v15 + 16) && (v16 = sub_213CE212C(v14), (v17 & 1) != 0))
    {
      sub_213CE2A1C(*(v15 + 56) + 8 * v16, v29);

      sub_213CE2A78(v29, v30);
      Strong = swift_unknownObjectWeakLoadStrong();
      a1 = v28;
      [v28 setMapView_];

      sub_213CE2AD4(v30);
    }

    else
    {

      a1 = v28;
    }
  }

  v19 = v2 + *(v12 + 20);
  v20 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(v9 + 16))(v11, v19 + *(v20 + 24), v8);
  [a1 setBackgroundStyle_];
  (*(v5 + 16))(v7, v19 + *(v20 + 28), v4);
  v21 = (*(v5 + 88))(v7, v4);
  if (v21 == *MEMORY[0x277CDF418] || v21 == *MEMORY[0x277CDF438] || v21 == *MEMORY[0x277CDF440])
  {
    goto LABEL_19;
  }

  if (v21 != *MEMORY[0x277CDF420] && v21 != *MEMORY[0x277CDF410])
  {
    (*(v5 + 8))(v7, v4);
LABEL_19:
    v25 = 1;
    return [a1 _setControlSize_];
  }

  v25 = 2;
  return [a1 _setControlSize_];
}

uint64_t sub_213D859B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213D85A38()
{
  result = qword_27C8ED920;
  if (!qword_27C8ED920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED910, &qword_213D9D7D8);
    sub_213D860D8(&qword_27C8ED928, "e;GnTZ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED920);
  }

  return result;
}

uint64_t sub_213D85AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D85B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_213D85BEC(uint64_t a1)
{
  sub_213CE1CD4(319, &unk_27C8EBDF0, MEMORY[0x277CDDBB8]);
  if (v1 <= 0x3F)
  {
    sub_213CE1CD4(319, &qword_27C8EC520, MEMORY[0x277CDF450]);
    if (v2 <= 0x3F)
    {
      sub_213CE1D28(319, &qword_27C8EA208, &qword_27C8EA210, &unk_213D94C00);
      if (v3 <= 0x3F)
      {
        sub_213D86054(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_213D86054(319, &qword_27C8EA218, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_213CE1D28(319, &qword_27C8EA220, &qword_27C8EBE20, &qword_213D98750);
            if (v6 <= 0x3F)
            {
              sub_213D86054(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
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

unint64_t sub_213D85DBC()
{
  result = qword_27C8ED940;
  if (!qword_27C8ED940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED948, "ؿ");
    sub_213CE189C();
    sub_213D85A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED940);
  }

  return result;
}

void sub_213D85E70(uint64_t a1)
{
  sub_213D86054(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MapUserLocationButtonConfig(319);
    if (v2 <= 0x3F)
    {
      sub_213D86054(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213D85F7C(uint64_t a1)
{
  sub_213D90A6C();
  if (v1 <= 0x3F)
  {
    sub_213D9051C();
    if (v2 <= 0x3F)
    {
      sub_213D86054(319, &qword_27C8EA248, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213D86054(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_213D860D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _MapUserLocationButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213D8611C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_213D904DC())
  {
    v5 = type metadata accessor for MapUserLocationButtonConfig(0);
    if (sub_213D90A2C() & 1) != 0 && (sub_213D9050C())
    {
      v6 = *(v5 + 32);
      v7 = *&a2[v6];
      if (*&a1[v6])
      {
        if (v7)
        {

          v8 = sub_213D9147C();

          if (v8)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

id sub_213D8622C(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    sub_213D9193C();

    v8 = sub_213D9190C();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

void sub_213D862DC(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_213D9193C();
    v6 = *&a1[OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped];
    v7 = a1;
    v9 = sub_213D9190C();
  }

  else
  {
    v6 = *&a1[OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped];
    v8 = a1;
    v9 = 0;
  }

  [v6 *a4];
}

id sub_213D86620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapPolyline.CocoaWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MapPolyline.init(coordinates:contourStyle:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2)
  {
    v3 = 257;
  }

  else
  {
    v3 = 1;
  }

  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t MapPolyline.init(points:contourStyle:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

id MapPolyline.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MapPolyline.CocoaWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped] = a1;
  v7.receiver = v5;
  v7.super_class = v4;
  result = objc_msgSendSuper2(&v7, sel_init);
  *a2 = result;
  *(a2 + 8) = 0x8000;
  return result;
}

void MapPolyline.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 polyline];
  v5 = type metadata accessor for MapPolyline.CocoaWrapper();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = v4;
  v8 = objc_msgSendSuper2(&v9, sel_init);

  *a2 = v8;
  *(a2 + 8) = 0x8000;
}

uint64_t static MapPolyline._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v38 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v27 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED980, &qword_213D9D9A8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v27 - v13);
  v27 = a3;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  (*(v11 + 16))(v14, a1, v10);
  if (v12 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v15 = *v14;
  (*(v11 + 8))(v14, v10);
  v16 = v28;
  sub_213D90C3C();
  if (v7 != 4)
  {
    goto LABEL_5;
  }

  v17 = *v9;
  (*(v6 + 8))(v9, v5);
  v18 = *(v16 + *(type metadata accessor for _MapContentInputs(0) + 28));
  v29 = 1;
  v30 = v15;
  v31 = v17;
  v32 = v18;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, 28);
  v35[28] = -1;
  v36 = 0;
  v37 = 1;
  v19 = sub_213CDB9F8();
  sub_213D87690(v19, v20, v21);
  v22 = sub_213D903EC();
  MEMORY[0x28223BE20](v22);
  *(&v27 - 4) = v23;
  sub_213CD8438(v23, v24, v25);
  return sub_213D90F7C();
}

double sub_213D86AF0()
{
  v139 = *MEMORY[0x277D85DE8];
  v100 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v100);
  v103 = v99 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for MapContentList.Item(0);
  v104 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = (v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v105 = v99 - v4;
  v5 = sub_213D90C0C();
  v128 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v124 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v129 = v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v99 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v99 - v14;
  v16 = sub_213D9100C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v118 = v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v126 = v99 - v20;
  Value = AGGraphGetValue();
  v110 = v22;
  v23 = *Value;
  v24 = *(Value + 8);
  v116 = v0;
  v25 = *(v0 + 8);
  v26 = *MEMORY[0x277CEF7D0];
  v127 = v16;
  v121 = v24;
  v120 = v23;
  v122 = v17;
  if (v25 == v26)
  {
    v27 = v24;
    v28 = v23;
    (*(v13 + 56))(v11, 1, 1, v12);
    v29 = *(v12 + 48);
    sub_213D1E7B8(v28, v27);
    sub_213D90FFC();
    v15[v29] = 0;
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_213CF3B08(v11);
    }
  }

  else
  {
    sub_213D1E7B8(v23, v24);
    v30 = AGGraphGetValue();
    v32 = v31;
    v33 = v16;
    v34 = *(v12 + 48);
    (*(v17 + 16))(v11, v30, v33);
    v11[v34] = v32 & 1;
    (*(v13 + 56))(v11, 0, 1, v12);
    sub_213CF3968(v11, v15);
  }

  v107 = v15[*(v12 + 48)];
  v99[0] = *(v122 + 32);
  v99[1] = v122 + 32;
  (v99[0])(v126, v15, v127);
  v35 = v116;
  v36 = AGGraphGetValue();
  v37 = v128;
  v38 = v129;
  v39 = *(v128 + 16);
  v39(v129, v36, v5);
  v40 = sub_213D90A7C();
  v43 = *(v37 + 8);
  v41 = v37 + 8;
  v42 = v43;
  v43(v38, v5);
  v44 = *(v35 + 16);
  v117 = (v40 | v44) == 0;
  v125 = v40;
  if (v40 && v44)
  {

    v117 = sub_213D9147C();
  }

  v45 = AGGraphGetValue();
  v46 = v129;
  v47 = (v39)(v129, v45, v5);
  sub_213D4F17C(v47, v48, v49);
  sub_213D90C1C();
  v42(v46, v5);
  v115 = v135;
  v130 = v135;
  v131 = *v136;
  v114 = *&v136[16];
  v132 = *&v136[16];
  v112 = *&v136[8];
  v113 = *v136;
  v50 = *(v35 + 48);
  v128 = v41;
  v119 = v44;
  v111 = v50;
  if (v50)
  {
    v51 = *(v35 + 56);
    v52 = *(v35 + 40);
    v53 = *(v35 + 32);
    v133[0] = *(v35 + 24);
    v133[1] = v53;
    v133[2] = v52;
    v133[3] = v50;
    v133[4] = v51;
    sub_213D1E3A4(&v130, &v135);

    v54 = MEMORY[0x21604D700](&v130, v133);

    sub_213D1E400(&v130);
    v106 = v54 ^ 1;
  }

  else
  {

    v106 = 1;
  }

  v55 = AGGraphGetValue();
  v56 = v129;
  v57 = (v39)(v129, v55, v5);
  sub_213D4F1D0(v57, v58, v59);
  sub_213D90C1C();
  v42(v56, v5);
  v60 = AGGraphGetValue();
  v61 = v124;
  v39(v124, v60, v5);
  v62 = sub_213D67A84(&v135, v61);
  v64 = *(v35 + 64);
  v65 = *(v35 + 72);
  v124 = v62;
  v123 = v63;
  v109 = v64;
  v108 = v65;
  if (v65 != 255)
  {
    if (v63)
    {
      if (v65)
      {
        v66 = v62;
        sub_213D2BCD4(v62, 1);
        sub_213D4F40C(v64, v65);
        v67 = MEMORY[0x21604E890](v66, v64);
LABEL_18:
        v69 = v67;
        sub_213D4F3F4(v64, v65);
        sub_213CE2B28(v124, v123 & 1);
        v68 = v69 ^ 1;
        goto LABEL_19;
      }
    }

    else if ((v65 & 1) == 0)
    {
      sub_213D2BCD4(v62, 0);
      sub_213D4F40C(v64, v65);
      v67 = sub_213D9147C();
      goto LABEL_18;
    }
  }

  v68 = 1;
LABEL_19:
  v70 = AGGraphGetValue();
  v71 = v129;
  v72 = (v39)(v129, v70, v5);
  sub_213D4F278(v72, v73, v74);
  sub_213D90C1C();
  v42(v71, v5);
  v75 = v135;
  if ((*(v35 + 88) | v110) & 1 | ((v117 & 1) == 0) | v106 & 1 | v107 & 1 || (v68 & 1) != 0 || v135 != *(v35 + 80) || !AGGraphGetOutputValue())
  {
    v76 = v131;
    *&v136[8] = v130;
    LODWORD(v128) = *(v35 + 12) + 1;
    *(v35 + 12) = v128;
    *&v136[24] = v76;
    v77 = v123 & 1;
    LOBYTE(v134[0]) = v123 & 1;
    v78 = v120;
    *&v135 = v120;
    v79 = v121;
    WORD4(v135) = v121;
    v80 = v124;
    *v136 = v125;
    *&v136[40] = v132;
    *&v137 = v124;
    BYTE8(v137) = v123 & 1;
    v129 = v75;
    v138 = v75;
    v81 = v122;
    (*(v122 + 16))(v118, v126, v127);
    v82 = *&v136[32];
    v83 = v103;
    *(v103 + 2) = *&v136[16];
    *(v83 + 48) = v82;
    *(v83 + 64) = v137;
    *(v83 + 80) = v138;
    v84 = *v136;
    *v83 = v135;
    *(v83 + 16) = v84;
    swift_storeEnumTagMultiPayload();
    sub_213D1E7B8(v78, v79);

    sub_213D1E3A4(&v130, v134);
    sub_213D2BCD4(v80, v77);
    v85 = sub_213D87A90(&v135, v134);
    sub_213CDF60C(v85, v86, v87);
    sub_213D9101C();
    v88 = v134[0];
    if (!v134[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_213D94520;
      *(v88 + 32) = 0;
      *(v88 + 72) = 0;
    }

    v90 = v101;
    v89 = v102;
    *v101 = v88;
    v91 = v127;
    (v99[0])(v90 + *(v89 + 28), v118, v127);
    *(v90 + 8) = v128;
    sub_213CF39D8(v83, v90 + *(v89 + 24), type metadata accessor for MapContentList.Item.Content);
    v92 = v105;
    sub_213CF39D8(v90, v105, type metadata accessor for MapContentList.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
    v93 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_213D94520;
    sub_213D4F304(v92, v94 + v93);
    v134[0] = sub_213D71A68(v94);
    v134[1] = v95;
    AGGraphSetOutputValue();
    sub_213D87AC8(&v135);
    sub_213D1E6A0(v120, v121);
    sub_213D4F398(v92);
    (*(v81 + 8))(v126, v91);

    sub_213D4F3F4(v109, v108);

    *(v35 + 80) = v129;
  }

  else
  {
    (*(v122 + 8))(v126, v127);
    sub_213D1E6A0(v120, v121);
    sub_213D4F3F4(v109, v108);

    *(v35 + 80) = v75;
  }

  *(v35 + 88) = 0;
  v96 = v124;
  *(v35 + 72) = v123 & 1;
  result = *&v115;
  *(v35 + 24) = v115;
  v98 = v112;
  *(v35 + 40) = v113;
  *(v35 + 48) = v98;
  *(v35 + 56) = v114;
  *(v35 + 64) = v96;
  *(v35 + 16) = v125;
  return result;
}

unint64_t sub_213D87690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED988;
  if (!qword_27C8ED988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED988);
  }

  return result;
}

uint64_t sub_213D87714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 10))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (*(a1 + 8) & 0xFE | (*(a1 + 8) >> 15) | (*(a1 + 8) >> 1) & 0x3F00) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_213D8777C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_213D8781C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213D87878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_213D878FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED990;
  if (!qword_27C8ED990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED990);
  }

  return result;
}

BOOL sub_213D87950(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 < 0)
  {
    if (v5 < 0)
    {
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
      sub_213D1E7B8(v4, v5);
      sub_213D1E7B8(v2, v3);
      v8 = sub_213D91C5C();
      sub_213D1E6A0(v2, v3);
      sub_213D1E6A0(v4, v5);
      return v8 & 1;
    }

LABEL_7:
    sub_213D1E7B8(*a2, *(a2 + 8));
    sub_213D1E7B8(v2, v3);
    sub_213D1E6A0(v2, v3);
    sub_213D1E6A0(v4, v5);
    return 0;
  }

  if (v5 < 0)
  {
    goto LABEL_7;
  }

  sub_213D1E7B8(*a2, *(a2 + 8));
  sub_213D1E7B8(v2, v3);
  v6 = sub_213D6798C(v2, v3 & 1, v4, v5 & 1);
  sub_213D1E6A0(v2, v3);
  sub_213D1E6A0(v4, v5);
  return v6 && ((v5 ^ v3) & 0x100) == 0;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_213D87B1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213D87B64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213D87BE0@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for MapPitchToggleConfig(0);
  sub_213D90A5C();
  v3 = *(v2 + 28);
  v4 = *MEMORY[0x277CDF440];
  v5 = sub_213D9051C();
  v6 = *(*(v5 - 8) + 104);
  v6(&a1[v3], v4, v5);
  a1[1] = 2;
  *&a1[*(v2 + 32)] = 0;
  *a1 = 0;
  (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  v7 = type metadata accessor for MapControlsConfig(0);
  v8 = &a1[v7[5]];
  v9 = sub_213D90D6C();
  v10 = type metadata accessor for MapScaleViewConfig(0);
  v6(&v8[*(v10 + 28)], v4, v5);
  *(v8 + 1) = v9;
  *v8 = 1;
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = &a1[v7[6]];
  v12 = type metadata accessor for MapUserLocationButtonConfig(0);
  sub_213D90A5C();
  v6(&v11[*(v12 + 28)], v4, v5);
  v11[1] = 2;
  *&v11[*(v12 + 32)] = 0;
  *v11 = 0;
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = &a1[v7[7]];
  v14 = type metadata accessor for MapCompassConfig(0);
  v6(v13 + *(v14 + 24), v4, v5);
  *v13 = 1;
  result = (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  *&a1[v7[8]] = 512;
  *&a1[v7[9]] = 512;
  *&a1[v7[10]] = 2;
  return result;
}

uint64_t sub_213D87E70()
{
  v0 = type metadata accessor for MapControlsConfig(0);
  __swift_allocate_value_buffer(v0, qword_27C8F7348);
  v1 = __swift_project_value_buffer(v0, qword_27C8F7348);
  v2 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[5];
  v4 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = v0[6];
  v6 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = v0[7];
  v8 = type metadata accessor for MapCompassConfig(0);
  result = (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + v0[8]) = 2;
  *(v1 + v0[9]) = 2;
  *(v1 + v0[10]) = 2;
  return result;
}

uint64_t sub_213D88010()
{
  v0 = type metadata accessor for MapControlsConfig(0);
  __swift_allocate_value_buffer(v0, qword_27C8F7360);
  v1 = __swift_project_value_buffer(v0, qword_27C8F7360);
  return sub_213D87BE0(v1);
}

uint64_t sub_213D88080@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MapControlsConfig(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_213CEE7C8(v7, a4);
}

uint64_t sub_213D880E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D8BB80(&qword_27C8EDAC8, type metadata accessor for MapControlsConfig, &unk_213D9DFE0);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_213D88190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D8BCC0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void *sub_213D881F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213D73334(a1, a2, a3);

  return sub_213D90C1C();
}

uint64_t sub_213D8823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213CE2CE4(a1, a2, a3);
  sub_213D90C1C();
  return v4;
}

uint64_t sub_213D88278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213CE2C90(a1, a2, a3);
  sub_213D90C1C();
  return v4;
}

uint64_t sub_213D882B4(uint64_t a1)
{
  v3 = type metadata accessor for MapControlsConfig(0);
  MEMORY[0x28223BE20](v3);
  sub_213CEE7C8(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213D9156C();
  return sub_213D8BBC8(a1, type metadata accessor for MapControlsConfig);
}

uint64_t sub_213D88368(uint64_t a1)
{
  v2 = type metadata accessor for MapControlsConfig(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_213CEE7C8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAB8, &qword_213D9E0C0);
  sub_213D9158C();
  return sub_213D8BBC8(a1, type metadata accessor for MapControlsConfig);
}

uint64_t sub_213D88420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for MapControlsConfig(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = v9[7];
  v14 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v14 - 8) + 56))(&v11[v13], 1, 1, v14);
  v15 = v9[8];
  v16 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v16 - 8) + 56))(&v11[v15], 1, 1, v16);
  v17 = v9[9];
  v18 = type metadata accessor for MapCompassConfig(0);
  (*(*(v18 - 8) + 56))(&v11[v17], 1, 1, v18);
  *&v11[v9[10]] = 2;
  *&v11[v9[11]] = 2;
  *&v11[v9[12]] = 2;
  sub_213D882B4(v11);
  v20 = type metadata accessor for _MapControlsModifier(0, a2, a3, v19);
  return (*(*(a2 - 8) + 32))(&a4[*(v20 + 36)], a1, a2);
}

uint64_t sub_213D8862C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v48 = a3;
  v4 = type metadata accessor for MapControlsConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_213D90EAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA80, &qword_213D9E058);
  v36 = sub_213D908CC();
  v47 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = *(a2 + 16);
  v43 = &v35 - v7;
  v44 = v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA88, &qword_213D9E060);
  sub_213D908CC();
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA90, &qword_213D9E068);
  v8 = sub_213D908CC();
  v9 = *(a2 + 24);
  v41 = v9;
  v42 = MEMORY[0x277CE0868];
  v10 = sub_213CEDCEC(&qword_27C8EDA98, &qword_27C8EDA88, &qword_213D9E060, MEMORY[0x277CE0868]);
  v60 = v9;
  v61 = v10;
  v11 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v15 = sub_213D8BA40(WitnessTable, v13, v14);
  v58 = WitnessTable;
  v59 = v15;
  v37 = v11;
  v16 = swift_getWitnessTable();
  v17 = sub_213CEDCEC(&qword_27C8EDAA8, &qword_27C8EDA90, &qword_213D9E068, MEMORY[0x277CE07C8]);
  v56 = v16;
  v57 = v17;
  v38 = v8;
  v39 = swift_getWitnessTable();
  v40 = sub_213D90E4C();
  v18 = sub_213D908CC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v35 - v23;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAB8, &qword_213D9E0C0);
  v25 = v35;
  v26 = v45;
  sub_213D9157C();
  v27 = swift_getWitnessTable();
  v28 = v43;
  sub_213D9130C();

  sub_213D8BBC8(v25, type metadata accessor for MapControlsConfig);
  v49 = v44;
  v50 = v41;
  v51 = v26;
  sub_213D9173C();
  v29 = sub_213CEDCEC(&qword_27C8EDAB0, &qword_27C8EDA80, &qword_213D9E058, v42);
  v54 = v27;
  v55 = v29;
  v30 = v36;
  v31 = swift_getWitnessTable();
  sub_213D912CC();
  (*(v47 + 8))(v28, v30);
  v32 = swift_getWitnessTable();
  v52 = v31;
  v53 = v32;
  swift_getWitnessTable();
  sub_213D4CEAC();
  v33 = *(v19 + 8);
  v33(v21, v18);
  sub_213D4CEAC();
  return (v33)(v24, v18);
}

uint64_t sub_213D88B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v44 = a3;
  v52 = a4;
  v42 = type metadata accessor for _MapControlsModifier(0, a2, a3, a5);
  v7 = *(v42 - 8);
  v49 = *(v7 + 64);
  MEMORY[0x28223BE20](v42);
  v47 = v40 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA88, &qword_213D9E060);
  v41 = a2;
  v9 = sub_213D908CC();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  v12 = sub_213D908CC();
  v50 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v43 = v40 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA90, &qword_213D9E068);
  v14 = sub_213D908CC();
  v51 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v46 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v48 = v40 - v17;
  swift_getKeyPath();
  v59[0] = 1;
  v18 = a1;
  v19 = v44;
  sub_213D9130C();

  v20 = sub_213CEDCEC(&qword_27C8EDA98, &qword_27C8EDA88, &qword_213D9E060, MEMORY[0x277CE0868]);
  v57 = v19;
  v58 = v20;
  v40[1] = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v22 = v43;
  sub_213D9142C();
  (*(v45 + 8))(v11, v9);
  v23 = v47;
  v24 = v42;
  (*(v7 + 16))(v47, v18, v42);
  v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v41;
  *(v26 + 24) = v19;
  v27 = (*(v7 + 32))(v26 + v25, v23, v24);
  v30 = sub_213D8BA40(v27, v28, v29);
  v55 = WitnessTable;
  v56 = v30;
  v31 = swift_getWitnessTable();
  sub_213D8BB2C(v31, v32, v33);
  sub_213D8BB80(&qword_27C8EDAC8, type metadata accessor for MapControlsConfig, &unk_213D9DFE0);
  v34 = v46;
  sub_213D9137C();

  (*(v50 + 8))(v22, v12);
  v35 = sub_213CEDCEC(&qword_27C8EDAA8, &qword_27C8EDA90, &qword_213D9E068, MEMORY[0x277CE07C8]);
  v53 = v31;
  v54 = v35;
  swift_getWitnessTable();
  v36 = v48;
  v37 = v34;
  sub_213D4CEAC();
  v38 = *(v51 + 8);
  v38(v37, v14);
  sub_213D4CEAC();
  return (v38)(v36, v14);
}

uint64_t sub_213D890F8(uint64_t a1)
{
  v2 = type metadata accessor for MapControlsConfig(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213CEE7C8(a1, v4);
  return sub_213D88368(v4);
}

uint64_t View.mapControls<A>(_:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a5;
  MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _MapControlsModifier(0, v12, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v20 - v17;
  a1(v16);
  sub_213D88420(v11, a4, a6, v18);
  MEMORY[0x21604E600](v18, a3, v14, v20);
  return (*(v15 + 8))(v18, v14);
}

double View.mapControlVisibility(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_213D9130C();

  return result;
}

void sub_213D8937C(uint64_t a1)
{
  sub_213D8A210(319, &qword_27C8EDA28, type metadata accessor for MapControlsConfig, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213D89434(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_213D90A6C();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = *(sub_213D9051C() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v9 <= v12)
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 - 1;
  if (v12 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = *(v10 + 84);
  }

  v17 = v16 - 1;
  if (v16 - 1 <= v15)
  {
    v18 = v14 - 1;
  }

  else
  {
    v18 = v16 - 1;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(*(a3 + 16) - 8);
  v21 = *(v20 + 84);
  v22 = *(v7 + 80);
  v23 = *(v7 + 64);
  v24 = *(v10 + 80);
  v25 = *(v10 + 64);
  v26 = *(v20 + 80);
  v27 = *(v20 + 64);
  if (v21 <= v19)
  {
    v28 = v19;
  }

  else
  {
    v28 = *(v20 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v54 = v6;
  v29 = v25 + 7;
  v30 = ((v25 + 7 + ((v23 + v24 + ((v22 + 2) & ~v22)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v31 = v30 + (v24 | 7);
  v32 = ((v24 + 2) & ~v24) + v25 + ((v30 + v24 + ((((v24 + 16) & ~v24) + v25 + (v24 | 7 | v22) + (v31 & ~(v24 | 7))) & ~(v24 | 7 | v22))) & ~v24);
  v33 = ((v32 + 13) & 0xFFFFFFFFFFFFFFF8) + v26 + 8;
  v34 = a2 - v28;
  if (a2 > v28)
  {
    v35 = v33 & ~v26;
    v36 = v35 + v27;
    v37 = 8 * (v35 + v27);
    if (v36 > 3)
    {
      goto LABEL_22;
    }

    v39 = ((v34 + ~(-1 << v37)) >> v37) + 1;
    if (HIWORD(v39))
    {
      v38 = *(a1 + v36);
      if (!v38)
      {
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    if (v39 > 0xFF)
    {
      v38 = *(a1 + v36);
      if (!*(a1 + v36))
      {
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    if (v39 >= 2)
    {
LABEL_22:
      v38 = *(a1 + v36);
      if (!*(a1 + v36))
      {
        goto LABEL_42;
      }

LABEL_29:
      v40 = (v38 - 1) << v37;
      if (v36 > 3)
      {
        v40 = 0;
      }

      if (v36)
      {
        if (v36 <= 3)
        {
          v41 = v36;
        }

        else
        {
          v41 = 4;
        }

        if (v41 > 2)
        {
          if (v41 == 3)
          {
            v42 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v42 = *a1;
          }
        }

        else if (v41 == 1)
        {
          v42 = *a1;
        }

        else
        {
          v42 = *a1;
        }
      }

      else
      {
        v42 = 0;
      }

      return v28 + (v42 | v40) + 1;
    }
  }

LABEL_42:
  if (v19 < v21)
  {
    v43 = *(v20 + 48);

    return v43((a1 + v33) & ~v26, v21);
  }

  if (v18 < 0x7FFFFFFE)
  {
    v49 = *((a1 + v32 + 13) & 0xFFFFFFFFFFFFFFF8);
    if (v49 >= 0xFFFFFFFF)
    {
      LODWORD(v49) = -1;
    }

    if ((v49 + 1) >= 2)
    {
      return v49;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v45 = ~v24;
    if (v15 < v17)
    {
      v46 = ((a1 + v31) & ~(v24 | 7));
      if (v12 > 0xFE)
      {
        v48 = (*(v11 + 48))((v24 + ((v46 + 9) & 0xFFFFFFFFFFFFFFF8) + 8) & v45);
LABEL_62:
        v51 = v48 != 0;
        result = (v48 - 1);
        if (result != 0 && v51)
        {
          return result;
        }

        return 0;
      }

      v47 = *v46;
      if (v47 >= 2)
      {
        v48 = ((v47 + 2147483646) & 0x7FFFFFFF) + 1;
        goto LABEL_62;
      }

      return 0;
    }

    if (v9 == v14)
    {
      v50 = (*(v8 + 48))((a1 + v22 + 2) & ~v22, v9, v54);
    }

    else
    {
      v52 = (((a1 + v22 + 2) & ~v22) + v23 + v24) & v45;
      if (v12 == v14)
      {
        v50 = (*(v11 + 48))(v52);
      }

      else
      {
        v53 = *((v29 + v52) & 0xFFFFFFFFFFFFFFF8);
        if (v53 >= 0xFFFFFFFF)
        {
          LODWORD(v53) = -1;
        }

        if ((v53 + 1) >= 2)
        {
          v50 = v53;
        }

        else
        {
          v50 = 0;
        }
      }
    }

    if (v50 >= 2)
    {
      return v50 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_213D898BC(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v65 = sub_213D90A6C();
  v7 = *(v65 - 8);
  v67 = v7;
  v8 = *(v7 + 84);
  v9 = *(sub_213D9051C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v8 <= v11)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 - 1;
  if (v11 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = *(v9 + 84);
  }

  v16 = v15 - 1;
  if (v15 - 1 <= v14)
  {
    v17 = v13 - 1;
  }

  else
  {
    v17 = v15 - 1;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(*(a4 + 16) - 8);
  v20 = *(v19 + 84);
  v21 = *(v7 + 80);
  v22 = *(v7 + 64);
  v23 = *(v9 + 80);
  v24 = *(v9 + 64);
  v25 = *(v19 + 80);
  if (v20 <= v18)
  {
    v26 = v18;
  }

  else
  {
    v26 = *(v19 + 84);
  }

  v27 = v24 + 7;
  v28 = ((v24 + 7 + ((v22 + v23 + ((v21 + 2) & ~v21)) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v29 = v23 | 7;
  v30 = ((v23 + 16) & ~v23) + v24;
  v31 = v28 + (v23 | 7);
  v32 = ((v23 + 2) & ~v23) + v24 + ((v28 + v23 + ((v30 + (v23 | 7 | v21) + (v31 & ~(v23 | 7))) & ~(v23 | 7 | v21))) & ~v23);
  v33 = ((v32 + 13) & 0xFFFFFFFFFFFFFFF8) + v25 + 8;
  v34 = (v33 & ~v25) + *(v19 + 64);
  v35 = a3 >= v26;
  v36 = a3 - v26;
  if (v36 != 0 && v35)
  {
    if (v34 <= 3)
    {
      v41 = ((v36 + ~(-1 << (8 * v34))) >> (8 * v34)) + 1;
      if (HIWORD(v41))
      {
        v37 = 4;
      }

      else
      {
        if (v41 < 0x100)
        {
          v42 = 1;
        }

        else
        {
          v42 = 2;
        }

        if (v41 >= 2)
        {
          v37 = v42;
        }

        else
        {
          v37 = 0;
        }
      }
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = a1;
  if (v26 < a2)
  {
    v39 = ~v26 + a2;
    if (v34 >= 4)
    {
      bzero(v38, v34);
      *v38 = v39;
      v40 = 1;
      if (v37 > 1)
      {
        goto LABEL_26;
      }

      goto LABEL_73;
    }

    v40 = (v39 >> (8 * v34)) + 1;
    if (v34)
    {
      v43 = v39 & ~(-1 << (8 * v34));
      bzero(v38, v34);
      if (v34 != 3)
      {
        if (v34 == 2)
        {
          *v38 = v43;
          if (v37 > 1)
          {
            goto LABEL_26;
          }
        }

        else
        {
          *v38 = v39;
          if (v37 > 1)
          {
LABEL_26:
            if (v37 == 2)
            {
              *(v38 + v34) = v40;
            }

            else
            {
              *(v38 + v34) = v40;
            }

            return;
          }
        }

LABEL_73:
        if (v37)
        {
          *(v38 + v34) = v40;
        }

        return;
      }

      *v38 = v43;
      *(v38 + 2) = BYTE2(v43);
    }

    if (v37 > 1)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

  if (v37 > 1)
  {
    if (v37 != 2)
    {
      *(a1 + v34) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *(a1 + v34) = 0;
  }

  else if (v37)
  {
    *(a1 + v34) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  if (v18 < v20)
  {
    v44 = *(v19 + 56);

    v44((a1 + v33) & ~v25, a2, v20);
    return;
  }

  if (v18 < a2)
  {
    v45 = (v32 + 13) & 0xFFFFFFF8;
    v46 = (v45 + 8);
    if (v45 == -8)
    {
      return;
    }

    v47 = ~v18 + a2;
    v48 = a1;
LABEL_54:
    bzero(v48, v46);
    *a1 = v47;
    return;
  }

  if (v17 <= 0x7FFFFFFD)
  {
    v53 = ((a1 + v32 + 13) & 0xFFFFFFFFFFFFFFF8);
    if (a2 <= 0x7FFFFFFE)
    {
      *v53 = a2;
      return;
    }

    v59 = a2 - 0x7FFFFFFF;
    goto LABEL_93;
  }

  if (v17 < a2)
  {
    v49 = (v32 + 6);
    if (v49 <= 3)
    {
      v50 = ~(-1 << (8 * (v32 + 6)));
    }

    else
    {
      v50 = -1;
    }

    if (v32 != -6)
    {
      v51 = v50 & (~v17 + a2);
      if (v49 <= 3)
      {
        v52 = v32 + 6;
      }

      else
      {
        v52 = 4;
      }

      bzero(v38, v49);
      if (v52 > 2)
      {
        if (v52 == 3)
        {
          *v38 = v51;
          *(v38 + 2) = BYTE2(v51);
        }

        else
        {
          *v38 = v51;
        }
      }

      else if (v52 == 1)
      {
        *v38 = v51;
      }

      else
      {
        *v38 = v51;
      }
    }

    return;
  }

  v54 = ~v23;
  if (v14 < v16)
  {
    v55 = ((a1 + v31) & ~v29);
    if (v16 < a2)
    {
      if (v30 <= 3)
      {
        v56 = ~(-1 << (8 * v30));
      }

      else
      {
        v56 = -1;
      }

      if (!v30)
      {
        return;
      }

      v57 = v56 & (a2 - v15);
      if (v30 <= 3)
      {
        v58 = v30;
      }

      else
      {
        v58 = 4;
      }

      bzero(((v38 + v31) & ~v29), v30);
      if (v58 <= 2)
      {
        if (v58 == 1)
        {
LABEL_91:
          *v55 = v57;
          return;
        }

LABEL_118:
        *v55 = v57;
        return;
      }

      goto LABEL_121;
    }

    if (a2 >= v15)
    {
      if (v30 <= 3)
      {
        v62 = ~(-1 << (8 * v30));
      }

      else
      {
        v62 = -1;
      }

      if (!v30)
      {
        return;
      }

      v57 = v62 & (a2 - v15);
      if (v30 <= 3)
      {
        v58 = v30;
      }

      else
      {
        v58 = 4;
      }

      bzero(((v38 + v31) & ~v29), v30);
      if (v58 <= 2)
      {
        if (v58 == 1)
        {
          goto LABEL_91;
        }

        goto LABEL_118;
      }

LABEL_121:
      if (v58 == 3)
      {
        *v55 = v57;
        v55[2] = BYTE2(v57);
      }

      else
      {
        *v55 = v57;
      }

      return;
    }

    if (v11 <= 0xFE)
    {
      *v55 = a2 + 2;
      return;
    }

    v63 = *(v10 + 56);
    v64 = (v23 + ((v55 + 9) & 0xFFFFFFFFFFFFFFF8) + 8) & v54;
    v60 = a2 + 1;
    goto LABEL_126;
  }

  if (v14 < a2)
  {
    if (!v28)
    {
      return;
    }

    v47 = a2 - v13;
LABEL_120:
    v48 = a1;
    v46 = v28;
    goto LABEL_54;
  }

  v47 = a2 - v13;
  if (a2 >= v13)
  {
    if (!v28)
    {
      return;
    }

    goto LABEL_120;
  }

  v60 = a2 + 1;
  if (v8 != v13)
  {
    if (v11 == v13)
    {
      v63 = *(v10 + 56);
      v64 = (((a1 + v21 + 2) & ~v21) + v22 + v23) & v54;
LABEL_126:

      v63(v64, v60);
      return;
    }

    v53 = ((v27 + ((((a1 + v21 + 2) & ~v21) + v22 + v23) & v54)) & 0xFFFFFFFFFFFFFFF8);
    if (a2 <= 0x7FFFFFFD)
    {
      *v53 = v60;
      return;
    }

    v59 = a2 - 2147483646;
LABEL_93:
    *v53 = 0;
    *v53 = v59;
    return;
  }

  v61 = *(v67 + 56);

  v61((a1 + v21 + 2) & ~v21, v60, v8, v65);
}

uint64_t type metadata accessor for MapControlsConfig(uint64_t a1)
{
  result = qword_27C8EDA30;
  if (!qword_27C8EDA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_213D8A024(uint64_t a1)
{
  sub_213D8A210(319, &qword_27C8EDA40, type metadata accessor for MapPitchToggleConfig, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_213D8A210(319, &qword_27C8EDA48, type metadata accessor for MapScaleViewConfig, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_213D8A210(319, &qword_27C8EDA50, type metadata accessor for MapUserLocationButtonConfig, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_213D8A210(319, &qword_27C8EDA58, type metadata accessor for MapCompassConfig, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_213CF3CE4(319, &qword_27C8EDA60, &type metadata for MapZoomStepperConfig);
          if (v5 <= 0x3F)
          {
            sub_213CF3CE4(319, &qword_27C8EDA68, &type metadata for MapPitchSliderConfig);
            if (v6 <= 0x3F)
            {
              sub_213CF3CE4(319, &qword_27C8EDA70, &type metadata for MapLocationCompassConfig);
              if (v7 <= 0x3F)
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

void sub_213D8A210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_213D8A2C8(uint64_t a1, uint64_t a2)
{
  v91 = a1;
  v92 = a2;
  v2 = type metadata accessor for MapCompassConfig(0);
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v75 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD0, &unk_213D9DF50);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v75 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAD0, &qword_213D9E0C8);
  MEMORY[0x28223BE20](v78);
  v81 = &v75 - v6;
  v7 = type metadata accessor for MapUserLocationButtonConfig(0);
  v85 = *(v7 - 8);
  v86 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC8, &unk_213D98580);
  MEMORY[0x28223BE20](v9 - 8);
  v82 = &v75 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAD8, &qword_213D9E0D0);
  MEMORY[0x28223BE20](v84);
  v87 = &v75 - v11;
  v12 = type metadata accessor for MapScaleViewConfig(0);
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x28223BE20](v12);
  v83 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAE0, &unk_213D9DF40);
  MEMORY[0x28223BE20](v14 - 8);
  v88 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAE0, &qword_213D9E0D8);
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  v19 = type metadata accessor for MapPitchToggleConfig(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD8, &unk_213D98590);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v75 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAE8, &unk_213D9E0E0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v75 - v27;
  v30 = *(v29 + 56);
  sub_213CE2C28(v91, &v75 - v27, &qword_27C8EBAD8, &unk_213D98590);
  sub_213CE2C28(v92, &v28[v30], &qword_27C8EBAD8, &unk_213D98590);
  v31 = *(v20 + 48);
  if (v31(v28, 1, v19) == 1)
  {
    if (v31(&v28[v30], 1, v19) == 1)
    {
      sub_213CD8330(v28, &qword_27C8EBAD8, &unk_213D98590);
      goto LABEL_8;
    }

LABEL_6:
    v32 = &qword_27C8EDAE8;
    v33 = &unk_213D9E0E0;
    v34 = v28;
LABEL_27:
    sub_213CD8330(v34, v32, v33);
    return 0;
  }

  sub_213CE2C28(v28, v25, &qword_27C8EBAD8, &unk_213D98590);
  if (v31(&v28[v30], 1, v19) == 1)
  {
    sub_213D8BBC8(v25, type metadata accessor for MapPitchToggleConfig);
    goto LABEL_6;
  }

  sub_213D8BC28(&v28[v30], v22, type metadata accessor for MapPitchToggleConfig);
  v35 = sub_213CE2948(v25, v22);
  sub_213D8BBC8(v22, type metadata accessor for MapPitchToggleConfig);
  sub_213D8BBC8(v25, type metadata accessor for MapPitchToggleConfig);
  sub_213CD8330(v28, &qword_27C8EBAD8, &unk_213D98590);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v36 = type metadata accessor for MapControlsConfig(0);
  v37 = v36[5];
  v38 = *(v16 + 48);
  v39 = v91;
  sub_213CE2C28(v91 + v37, v18, &unk_27C8EBAE0, &unk_213D9DF40);
  v40 = v92;
  sub_213CE2C28(v92 + v37, &v18[v38], &unk_27C8EBAE0, &unk_213D9DF40);
  v41 = v90;
  v42 = *(v89 + 48);
  if (v42(v18, 1, v90) == 1)
  {
    if (v42(&v18[v38], 1, v41) == 1)
    {
      sub_213CD8330(v18, &unk_27C8EBAE0, &unk_213D9DF40);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v47 = v88;
  sub_213CE2C28(v18, v88, &unk_27C8EBAE0, &unk_213D9DF40);
  if (v42(&v18[v38], 1, v41) == 1)
  {
    sub_213D8BBC8(v47, type metadata accessor for MapScaleViewConfig);
LABEL_16:
    v32 = &qword_27C8EDAE0;
    v33 = &qword_213D9E0D8;
LABEL_26:
    v34 = v18;
    goto LABEL_27;
  }

  v48 = v83;
  sub_213D8BC28(&v18[v38], v83, type metadata accessor for MapScaleViewConfig);
  if (*v47 != *v48 || (sub_213D904DC() & 1) == 0 || (sub_213D90D4C() & 1) == 0)
  {
    sub_213D8BBC8(v48, type metadata accessor for MapScaleViewConfig);
    sub_213D8BBC8(v47, type metadata accessor for MapScaleViewConfig);
    v32 = &unk_27C8EBAE0;
    v33 = &unk_213D9DF40;
    goto LABEL_26;
  }

  v49 = sub_213D9050C();
  sub_213D8BBC8(v48, type metadata accessor for MapScaleViewConfig);
  sub_213D8BBC8(v47, type metadata accessor for MapScaleViewConfig);
  sub_213CD8330(v18, &unk_27C8EBAE0, &unk_213D9DF40);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v43 = v36[6];
  v44 = *(v84 + 48);
  v18 = v87;
  sub_213CE2C28(v39 + v43, v87, &qword_27C8EBAC8, &unk_213D98580);
  sub_213CE2C28(v40 + v43, &v18[v44], &qword_27C8EBAC8, &unk_213D98580);
  v45 = v86;
  v46 = *(v85 + 48);
  if (v46(v18, 1, v86) == 1)
  {
    if (v46(&v18[v44], 1, v45) == 1)
    {
      sub_213CD8330(v18, &qword_27C8EBAC8, &unk_213D98580);
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v50 = v82;
  sub_213CE2C28(v18, v82, &qword_27C8EBAC8, &unk_213D98580);
  if (v46(&v18[v44], 1, v45) == 1)
  {
    sub_213D8BBC8(v50, type metadata accessor for MapUserLocationButtonConfig);
LABEL_25:
    v32 = &qword_27C8EDAD8;
    v33 = &qword_213D9E0D0;
    goto LABEL_26;
  }

  v52 = &v18[v44];
  v53 = v77;
  sub_213D8BC28(v52, v77, type metadata accessor for MapUserLocationButtonConfig);
  v54 = sub_213D8611C(v50, v53);
  sub_213D8BBC8(v53, type metadata accessor for MapUserLocationButtonConfig);
  sub_213D8BBC8(v50, type metadata accessor for MapUserLocationButtonConfig);
  sub_213CD8330(v18, &qword_27C8EBAC8, &unk_213D98580);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v55 = v36[7];
  v56 = *(v78 + 48);
  v57 = v81;
  sub_213CE2C28(v39 + v55, v81, &qword_27C8EBAD0, &unk_213D9DF50);
  v58 = v40 + v55;
  v59 = v57;
  sub_213CE2C28(v58, v57 + v56, &qword_27C8EBAD0, &unk_213D9DF50);
  v60 = v80;
  v61 = *(v79 + 48);
  if (v61(v57, 1, v80) == 1)
  {
    if (v61(v57 + v56, 1, v60) == 1)
    {
      sub_213CD8330(v57, &qword_27C8EBAD0, &unk_213D9DF50);
      goto LABEL_33;
    }

    goto LABEL_42;
  }

  v71 = v76;
  sub_213CE2C28(v59, v76, &qword_27C8EBAD0, &unk_213D9DF50);
  if (v61(v59 + v56, 1, v60) == 1)
  {
    sub_213D8BBC8(v71, type metadata accessor for MapCompassConfig);
LABEL_42:
    v32 = &qword_27C8EDAD0;
    v33 = &qword_213D9E0C8;
    v34 = v59;
    goto LABEL_27;
  }

  v72 = v59 + v56;
  v73 = v75;
  sub_213D8BC28(v72, v75, type metadata accessor for MapCompassConfig);
  if (*v71 != *v73 || (sub_213D904DC() & 1) == 0)
  {
    sub_213D8BBC8(v73, type metadata accessor for MapCompassConfig);
    sub_213D8BBC8(v71, type metadata accessor for MapCompassConfig);
    v32 = &qword_27C8EBAD0;
    v33 = &unk_213D9DF50;
    v34 = v59;
    goto LABEL_27;
  }

  v74 = sub_213D9050C();
  sub_213D8BBC8(v73, type metadata accessor for MapCompassConfig);
  sub_213D8BBC8(v71, type metadata accessor for MapCompassConfig);
  sub_213CD8330(v59, &qword_27C8EBAD0, &unk_213D9DF50);
  if ((v74 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v62 = v36[8];
  v63 = *(v39 + v62);
  v64 = *(v40 + v62);
  if (v63 == 2)
  {
    if (v64 != 2)
    {
      return 0;
    }
  }

  else if (v64 == 2 || ((v64 ^ v63) & 1) != 0 || (sub_213D904DC() & 1) == 0)
  {
    return 0;
  }

  v65 = v36[9];
  v66 = *(v39 + v65);
  v67 = *(v40 + v65);
  if (v66 == 2)
  {
    if (v67 != 2)
    {
      return 0;
    }
  }

  else if (v67 == 2 || ((v67 ^ v66) & 1) != 0 || (sub_213D904DC() & 1) == 0)
  {
    return 0;
  }

  v68 = v36[10];
  v69 = *(v39 + v68);
  v70 = *(v40 + v68);
  if (v69 != 2)
  {
    return v70 != 2 && ((v70 ^ v69) & 1) == 0 && (sub_213D904DC() & 1) != 0;
  }

  return v70 == 2;
}

uint64_t sub_213D8AFA0(uint64_t a1, void (*a2)(double))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD0, &unk_213D9DF50);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC8, &unk_213D98580);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAE0, &unk_213D9DF40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD8, &unk_213D98590);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  v23 = type metadata accessor for MapControlsConfig(0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v24);
  sub_213CE2C28(v26, v19, &qword_27C8EBAD8, &unk_213D98590);
  v27 = type metadata accessor for MapPitchToggleConfig(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v19, 1, v27) == 1)
  {
    sub_213CE2C28(a1, v22, &qword_27C8EBAD8, &unk_213D98590);
    if (v29(v19, 1, v27) != 1)
    {
      sub_213CD8330(v19, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D8BC28(v19, v22, type metadata accessor for MapPitchToggleConfig);
    (*(v28 + 56))(v22, 0, 1, v27);
  }

  sub_213D4A7D0(v22, a1, &qword_27C8EBAD8, &unk_213D98590);
  sub_213CE2C28(&v26[v23[5]], v14, &unk_27C8EBAE0, &unk_213D9DF40);
  v30 = type metadata accessor for MapScaleViewConfig(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v33 = v32(v14, 1, v30);
  v35 = v59;
  v34 = v60;
  if (v33 == 1)
  {
    v36 = v56;
    sub_213CE2C28(a1 + v23[5], v56, &unk_27C8EBAE0, &unk_213D9DF40);
    if (v32(v14, 1, v30) != 1)
    {
      sub_213CD8330(v14, &unk_27C8EBAE0, &unk_213D9DF40);
    }
  }

  else
  {
    v37 = v56;
    sub_213D8BC28(v14, v56, type metadata accessor for MapScaleViewConfig);
    (*(v31 + 56))(v37, 0, 1, v30);
    v36 = v37;
  }

  sub_213D4A7D0(v36, a1 + v23[5], &unk_27C8EBAE0, &unk_213D9DF40);
  v38 = v57;
  sub_213CE2C28(&v26[v23[6]], v57, &qword_27C8EBAC8, &unk_213D98580);
  v39 = type metadata accessor for MapUserLocationButtonConfig(0);
  v40 = *(v39 - 8);
  v41 = *(v40 + 48);
  if (v41(v38, 1, v39) == 1)
  {
    v42 = v38;
    v43 = v58;
    sub_213CE2C28(a1 + v23[6], v58, &qword_27C8EBAC8, &unk_213D98580);
    if (v41(v42, 1, v39) != 1)
    {
      sub_213CD8330(v42, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    v44 = v38;
    v43 = v58;
    sub_213D8BC28(v44, v58, type metadata accessor for MapUserLocationButtonConfig);
    (*(v40 + 56))(v43, 0, 1, v39);
  }

  sub_213D4A7D0(v43, a1 + v23[6], &qword_27C8EBAC8, &unk_213D98580);
  sub_213CE2C28(&v26[v23[7]], v35, &qword_27C8EBAD0, &unk_213D9DF50);
  v45 = type metadata accessor for MapCompassConfig(0);
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  if (v47(v35, 1, v45) == 1)
  {
    sub_213CE2C28(a1 + v23[7], v34, &qword_27C8EBAD0, &unk_213D9DF50);
    if (v47(v35, 1, v45) != 1)
    {
      sub_213CD8330(v35, &qword_27C8EBAD0, &unk_213D9DF50);
    }
  }

  else
  {
    sub_213D8BC28(v35, v34, type metadata accessor for MapCompassConfig);
    (*(v46 + 56))(v34, 0, 1, v45);
  }

  sub_213D4A7D0(v34, a1 + v23[7], &qword_27C8EBAD0, &unk_213D9DF50);
  v48 = v23[8];
  v49 = *&v26[v48];
  if (v49 == 2)
  {
    v49 = *(a1 + v48);
  }

  *(a1 + v48) = v49;
  v50 = v23[9];
  v51 = *&v26[v50];
  if (v51 == 2)
  {
    v51 = *(a1 + v50);
  }

  *(a1 + v50) = v51;
  v52 = *&v26[v23[10]];
  result = sub_213D8BBC8(v26, type metadata accessor for MapControlsConfig);
  v54 = v23[10];
  if (v52 == 2)
  {
    v52 = *(a1 + v54);
  }

  *(a1 + v54) = v52;
  return result;
}

uint64_t sub_213D8B784(char *a1, char a2)
{
  v4 = sub_213D90A6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  (*(v5 + 16))(&v20 - v10, a1, v4, v9);
  sub_213D90A3C();
  sub_213D8BB80(&qword_27C8EDA78, MEMORY[0x277CDDBB8], MEMORY[0x277CDDBC0]);
  v12 = sub_213D918DC();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    v13(a1, v4);
    v13(v11, v4);
    return 2;
  }

  sub_213D90A1C();
  v15 = sub_213D918DC();
  v13(v7, v4);
  if (v15)
  {
    v13(a1, v4);
    v16 = v11;
LABEL_7:
    v13(v16, v4);
    return 1;
  }

  sub_213D90A4C();
  v17 = sub_213D918DC();
  v13(v7, v4);
  v13(v11, v4);
  if (v17)
  {
    v16 = a1;
    goto LABEL_7;
  }

  if (_MKLinkedOnOrAfterReleaseSet())
  {
    v18 = sub_213D9171C();
    v13(a1, v4);
    if (v18)
    {
      v19 = 2;
      goto LABEL_13;
    }
  }

  else
  {
    v13(a1, v4);
  }

  v19 = 1;
LABEL_13:
  if (a2)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_213D8BA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EDAA0;
  if (!qword_27C8EDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDAA0);
  }

  return result;
}

uint64_t sub_213D8BAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _MapControlsModifier(0, *(v4 + 16), *(v4 + 24), a4);

  return sub_213D890F8(a1);
}

unint64_t sub_213D8BB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EDAC0;
  if (!qword_27C8EDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDAC0);
  }

  return result;
}

uint64_t sub_213D8BB80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213D8BBC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D8BC28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_213D8BCC0()
{
  result = qword_27C8EDAF0;
  if (!qword_27C8EDAF0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBE20, &qword_213D98750);
    sub_213CE30F4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDAF0);
  }

  return result;
}

__n128 (*CLLocationCoordinate2D.animatableData.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_213D8BD7C;
}

__n128 sub_213D8BD7C(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

unint64_t sub_213D8BD90()
{
  result = qword_27C8EDAF8;
  if (!qword_27C8EDAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDB00, &qword_213D9E1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDAF8);
  }

  return result;
}

__n128 sub_213D8BDF4@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_213D8BE00(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_213D8BE0C(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_213D8BE3C;
}

double View.mapScrollEdgeEffectViewInteractionDisabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_213D9130C();

  return result;
}

uint64_t sub_213D8BEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213D8BFF0(a1, a2, a3);
  sub_213D90C1C();
  return v4;
}

void *sub_213D8BEF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213D8BFF0(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

unint64_t sub_213D8BF8C()
{
  result = qword_27C8EDB10;
  if (!qword_27C8EDB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDB08, &qword_213D9E288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDB10);
  }

  return result;
}

unint64_t sub_213D8BFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EDB18;
  if (!qword_27C8EDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDB18);
  }

  return result;
}

uint64_t sub_213D8C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D8C0C4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_213D8C0C4()
{
  result = qword_27C8EDB20;
  if (!qword_27C8EDB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBE78, qword_213D98778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDB20);
  }

  return result;
}

id sub_213D8C140()
{
  v1 = *&v0[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_hostView];
  [v1 layoutSubviews];
  [v1 sizeThatFits_];
  v3 = v2;
  v5 = v4;
  [v0 setBounds_];
  [v1 setFrame_];
  v6 = *&v0[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
  v7 = *&v0[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint + 8];
  [v0 frame];
  [v0 setCenterOffset_];
  v19 = *&v0[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_accessoryAnchorPoint];
  [v0 frame];
  v11.f64[1] = v10;
  __asm { FMOV            V0.2D, #0.5 }

  v17 = vnegq_f64(vsubq_f64(vmulq_f64(v11, _Q0), vmulq_f64(v19, v11)));

  return [v0 setAccessoryOffset_];
}

id sub_213D8C2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView] = 0;
  v7 = &v3[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
  sub_213D917CC();
  *v7 = v8;
  *(v7 + 1) = v9;
  v10 = &v4[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_accessoryAnchorPoint];
  sub_213D917CC();
  *v10 = v11;
  *(v10 + 1) = v12;
  v20 = sub_213D915DC();
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB48, &qword_213D9E318));
  v14 = sub_213D907EC();
  sub_213D9080C();
  *&v4[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_hostView] = v14;
  v15 = v14;
  if (a3)
  {
    v16 = sub_213D9190C();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v4;
  v19.super_class = type metadata accessor for SwiftUIAnnotationView();
  v17 = objc_msgSendSuper2(&v19, sel_initWithAnnotation_reuseIdentifier_, a1, v16);

  swift_unknownObjectRelease();
  return v17;
}

id sub_213D8C5C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SwiftUIAnnotationView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_213D8C664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_213CD8330(a1, &qword_27C8EBF38, &qword_213D98B80);
    v5 = sub_213CE212C(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_213D1BDD8();
        v10 = v13;
      }

      sub_213CE2A78(*(v10 + 56) + 8 * v8, &v15);
      sub_213D1BAC8(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_213CD8330(&v15, &qword_27C8EBF38, &qword_213D98B80);
  }

  else
  {
    sub_213CE2A78(a1, &v15);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_213D8D498(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t View.mapScope(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 1;
  v9[0] = a1;
  v9[1] = swift_getKeyPath();
  v10 = 0;
  sub_213CE2C28(v7, v6, &qword_27C8EDB50, &qword_213D9E348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB50, &qword_213D9E348);
  sub_213D9156C();
  sub_213CD8330(v7, &qword_27C8EDB50, &qword_213D9E348);
  MEMORY[0x21604E600](v9, a2, &type metadata for MapScopeModifier, a3);
  return sub_213D8C9E4(v9);
}

uint64_t sub_213D8C858()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v6 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_213D8C9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213CE2BD0(a1, a2, a3);
  sub_213D90C1C();
  return v4;
}

unint64_t sub_213D8CA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EDB58;
  if (!qword_27C8EDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDB58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI9NamespaceV2IDV_08_MapKit_aB00E13ViewReferenceVtSg(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213D8CA84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_213D8CAE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_213D8CB70(uint64_t a1, uint64_t a2)
{
  sub_213CE2C28(a1, v8, &qword_27C8EDB50, &qword_213D9E348);
  if (v9[8])
  {
    sub_213CD8330(v8, &qword_27C8EDB50, &qword_213D9E348);
  }

  else
  {
    sub_213CED608(v8, v10, &unk_27C8EB340, &qword_213D97480);
    v7 = a2;
    v3 = v10[0];
    sub_213CE2C28(v10, v8, &unk_27C8EB340, &qword_213D97480);
    sub_213CE2A78(v9, v6);
    v6[8] = 0;
    sub_213CE2C28(v6, v5, &qword_27C8EBF38, &qword_213D98B80);

    sub_213D8C664(v5, v3);
    sub_213CD8330(v6, &qword_27C8EBF38, &qword_213D98B80);
    sub_213CD8330(v10, &unk_27C8EB340, &qword_213D97480);
    return v7;
  }

  return a2;
}

uint64_t sub_213D8CCAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v3 = *a2, v4 = sub_213CE212C(*a2), (v5 & 1) != 0))
  {
    sub_213CE2A1C(*(v2 + 56) + 8 * v4, &v8);
    sub_213CE2A78(&v8, v11);
    v8 = v3;
    sub_213CE2A1C(v11, &v9);
    v10 = 0;
    sub_213CE2C28(&v8, v7, &qword_27C8EDB50, &qword_213D9E348);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB60, &qword_213D9E500);
    sub_213D9158C();
    sub_213CD8330(&v8, &qword_27C8EDB50, &qword_213D9E348);
    return sub_213CE2AD4(v11);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
    sub_213CE2C28(&v8, v7, &qword_27C8EDB50, &qword_213D9E348);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB60, &qword_213D9E500);
    sub_213D9158C();
    return sub_213CD8330(&v8, &qword_27C8EDB50, &qword_213D9E348);
  }
}

uint64_t sub_213D8CDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v7 = sub_213D8C858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB60, &qword_213D9E500);
  sub_213D9157C();
  v8 = sub_213D8CB70(v14, v7);

  sub_213CD8330(v14, &qword_27C8EDB50, &qword_213D9E348);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB68, &qword_213D9E508);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB70, &qword_213D9E510) + 36));
  *v10 = KeyPath;
  v10[1] = v8;
  sub_213D8D194(v3, v14);
  v11 = swift_allocObject();
  sub_213D8D1CC(v14, v11 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB78, &qword_213D9E518);
  v13 = (a2 + *(result + 36));
  *v13 = sub_213D8D204;
  v13[1] = v11;
  return result;
}

unint64_t sub_213D8CF64()
{
  result = sub_213D1DC64(MEMORY[0x277D84F90]);
  qword_27C8F7318 = result;
  return result;
}

uint64_t sub_213D8CF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D8D870(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_213D8CFF0@<X0>(void *a1@<X8>)
{
  if (qword_27C8E9790 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27C8F7318;
}

uint64_t sub_213D8D060(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  sub_213D8DA64(v3, sub_213D8D8C4, 0, isUniquelyReferenced_nonNull_native, &v6);
  result = swift_bridgeObjectRelease_n();
  *a1 = v6;
  return result;
}

unint64_t sub_213D8D20C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_213CE20E8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_213D18F84(v14, a3 & 1);
      result = sub_213CE20E8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_213D91F8C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_213D1BC7C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

_OWORD *sub_213D8D358(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_213CE2158(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_213D1BF54();
      v8 = v16;
      goto LABEL_8;
    }

    sub_213D19490(v13, a3 & 1);
    v8 = sub_213CE2158(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_213D91F8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_213CEB34C(a1, v19);
  }

  else
  {
    sub_213D8D5B8(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_213D8D498(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_213CE212C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_213D1BDD8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_213D191F4(v14, a3 & 1);
    v9 = sub_213CE212C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_213D91F8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * v9;

    return sub_213D8D68C(a1, v20);
  }

  else
  {

    return sub_213D8D620(v9, a2, a1, v19);
  }
}

_OWORD *sub_213D8D5B8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_213CEB34C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_213D8D620(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_213CE2A78(a3, a4[7] + 8 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_213D8D6D4()
{
  result = qword_27C8EDB88;
  if (!qword_27C8EDB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDB78, &qword_213D9E518);
    sub_213D8D78C();
    sub_213CEDCEC(&qword_27C8EDBB0, &qword_27C8EDBB8, &qword_213D9E550, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDB88);
  }

  return result;
}

unint64_t sub_213D8D78C()
{
  result = qword_27C8EDB90;
  if (!qword_27C8EDB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDB70, &qword_213D9E510);
    sub_213CEDCEC(&qword_27C8EDB98, &qword_27C8EDB68, &qword_213D9E508, MEMORY[0x277CE04B0]);
    sub_213CEDCEC(&qword_27C8EDBA0, &qword_27C8EDBA8, &qword_213D9E548, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDB90);
  }

  return result;
}

unint64_t sub_213D8D870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EDBC0;
  if (!qword_27C8EDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDBC0);
  }

  return result;
}

uint64_t sub_213D8D8C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_213CE2A1C((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

uint64_t sub_213D8D8F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = (v8 << 9) | (8 * __clz(__rbit64(v7)));
    v14 = *(*(v3 + 48) + v13);
    sub_213CE2A1C(*(v3 + 56) + v13, v19);
    v21 = v14;
    sub_213CE2A78(v19, &v22);
    v23 = 0;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    v15 = v1[5];
    result = sub_213CED608(&v21, v19, &qword_27C8EDBC8, &qword_213D9E5D8);
    v17 = v20;
    if (v20)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      sub_213CED608(v19, v18, &qword_27C8EDBD0, &unk_213D9E5E0);
      v15(v18);
      result = sub_213CD8330(v18, &qword_27C8EDBD0, &unk_213D9E5E0);
    }

    *(a1 + 16) = v17;
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v12 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 1;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_213D8DA64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_213D8D8F4(&v42);
  if (v44)
  {
    goto LABEL_16;
  }

  v12 = v42;
  sub_213CE2A78(&v43, v41);
  v13 = *a5;
  v14 = sub_213CE212C(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_213D191F4(v19, a4 & 1);
    v14 = sub_213CE212C(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v14 = sub_213D91F8C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = v14;
    sub_213D1BDD8();
    v14 = v24;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 8 * v14;
    sub_213CE2A1C(*(*a5 + 56) + 8 * v14, &v40);
    sub_213CE2AD4(v41);
    sub_213D8D68C(&v40, *(v22 + 56) + v23);
LABEL_15:
    sub_213D8D8F4(&v42);
    if (v44)
    {
LABEL_16:
      sub_213CDE778(v45);

      return;
    }

    v20 = 1;
    while (1)
    {
      v12 = v42;
      sub_213CE2A78(&v43, v41);
      v30 = *a5;
      v31 = sub_213CE212C(v12);
      v33 = *(v30 + 16);
      v34 = (v32 & 1) == 0;
      v18 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v18)
      {
        goto LABEL_26;
      }

      a4 = v32;
      if (*(v30 + 24) < v35)
      {
        sub_213D191F4(v35, 1);
        v31 = sub_213CE212C(v12);
        if ((a4 & 1) != (v36 & 1))
        {
          goto LABEL_8;
        }
      }

      if (a4)
      {
        v28 = *a5;
        v29 = 8 * v31;
        sub_213CE2A1C(*(*a5 + 56) + 8 * v31, &v40);
        sub_213CE2AD4(v41);
        sub_213D8D68C(&v40, *(v28 + 56) + v29);
      }

      else
      {
        v37 = *a5;
        *(*a5 + 8 * (v31 >> 6) + 64) |= 1 << v31;
        *(v37[6] + 8 * v31) = v12;
        sub_213CE2A78(v41, v37[7] + 8 * v31);
        v38 = v37[2];
        v18 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v18)
        {
          goto LABEL_27;
        }

        v37[2] = v39;
      }

      sub_213D8D8F4(&v42);
      if (v44)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_13:
  v25 = *a5;
  *(*a5 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v25[6] + 8 * v14) = v12;
  sub_213CE2A78(v41, v25[7] + 8 * v14);
  v26 = v25[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v25[2] = v27;
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
}

double sub_213D8DD6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  sub_213D4F17C(a1, a2, a3);
  sub_213D90C1C();
  result = v8;
  *a4 = v6;
  *(a4 + 1) = v7;
  a4[2] = v8;
  *(a4 + 3) = v9;
  *(a4 + 4) = v10;
  return result;
}

void *sub_213D8DDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213D4F1D0(a1, a2, a3);

  return sub_213D90C1C();
}

void *sub_213D8DE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213D4F224(a1, a2, a3);

  return sub_213D90C1C();
}

uint64_t sub_213D8DE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213D4F278(a1, a2, a3);
  sub_213D90C1C();
  return v4;
}

double sub_213D8DE9C()
{
  sub_213D9054C();
  result = *&v1;
  xmmword_27C8EDBD8 = v1;
  unk_27C8EDBE8 = v2;
  qword_27C8EDBF8 = v3;
  return result;
}

uint64_t sub_213D8DEF8@<X0>(void *a1@<X8>)
{
  if (qword_27C8E9A18 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v3 = *(&xmmword_27C8EDBD8 + 1);
  v2 = unk_27C8EDBE8;
  v4 = qword_27C8EDBF0;
  v5 = qword_27C8EDBF8;
  *a1 = xmmword_27C8EDBD8;
  a1[1] = v3;
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t sub_213D8DF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D8EBCC(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_213D8DFE8(uint64_t a1)
{
  result = sub_213D9149C();
  qword_27C8EDC18 = MEMORY[0x277CE0F78];
  unk_27C8EDC20 = MEMORY[0x277CE0F60];
  qword_27C8EDC00 = result;
  return result;
}

uint64_t sub_213D8E020@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27C8E9A20 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_213D1E22C(&qword_27C8EDC00, v2);
}

double sub_213D8E090()
{
  qword_27C8EDC48 = 0;
  result = 0.0;
  xmmword_27C8EDC28 = 0u;
  unk_27C8EDC38 = 0u;
  return result;
}

uint64_t sub_213D8E0A8@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27C8E9A28 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_213D8EB1C(&xmmword_27C8EDC28, v2);
}

id sub_213D8E118()
{
  result = [objc_opt_self() _defaultOverlayLevel];
  qword_27C8EDC50 = result;
  return result;
}

uint64_t sub_213D8E14C@<X0>(void *a1@<X8>)
{
  if (qword_27C8E9A30 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_27C8EDC50;
  return result;
}

uint64_t sub_213D8E1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D8EC20();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t MapContent.stroke<A>(_:lineWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC58, &qword_213D9E5F0);
  v12 = sub_213D908CC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v20 - v14;
  KeyPath = swift_getKeyPath();
  *(&v24 + 1) = a3;
  v25 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_213D74C28(KeyPath, &v23, a2);

  __swift_destroy_boxed_opaque_existential_1(&v23);
  v18 = swift_getKeyPath();
  sub_213D9054C();
  v21[0] = v23;
  v21[1] = v24;
  v22 = v25;
  v20[2] = a4;
  v20[3] = &off_281655AC0;
  swift_getWitnessTable();
  sub_213D74C28(v18, v21, v12);

  sub_213D1E400(&v23);
  return (*(v13 + 8))(v15, v12);
}

double sub_213D8E438(uint64_t a1)
{
  sub_213D1E22C(a1, v6);
  v1 = sub_213D1E22C(v6, &v5);
  sub_213D4F1D0(v1, v2, v3);
  sub_213D90C2C();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

double sub_213D8E498@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  sub_213D4F17C(a1, a2, a3);
  sub_213D90C1C();
  result = v8;
  *a4 = v6;
  *(a4 + 1) = v7;
  a4[2] = v8;
  *(a4 + 3) = v9;
  *(a4 + 4) = v10;
  return result;
}

uint64_t sub_213D8E500(void *a1, uint64_t a2, uint64_t a3)
{
  sub_213D4F17C(a1, a2, a3);

  return sub_213D90C2C();
}

uint64_t MapContent.stroke(lineWidth:)(uint64_t a1, double a2)
{
  KeyPath = swift_getKeyPath();
  sub_213D9054C();
  v5[0] = v7[0];
  v5[1] = v7[1];
  v6 = v8;
  sub_213D74C28(KeyPath, v5, a1);

  return sub_213D1E400(v7);
}

uint64_t MapContent.stroke<A>(_:style:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22[1] = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC58, &qword_213D9E5F0);
  v13 = sub_213D908CC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v22 - v15;
  KeyPath = swift_getKeyPath();
  *(&v24 + 1) = a4;
  v25 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  sub_213D74C28(KeyPath, &v23, a3);

  __swift_destroy_boxed_opaque_existential_1(&v23);
  v19 = swift_getKeyPath();
  v20 = a2[1];
  v23 = *a2;
  v24 = v20;
  v25 = *(a2 + 4);
  v22[2] = a5;
  v22[3] = &off_281655AC0;
  swift_getWitnessTable();
  sub_213D74C28(v19, &v23, v13);

  return (*(v14 + 8))(v16, v13);
}

double MapContent.strokeStyle(style:)(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  sub_213D74C28(KeyPath, v7, a2);

  return result;
}

uint64_t MapContent.foregroundStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v12[3] = a3;
  v12[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_213D74C28(KeyPath, v12, a2);

  return sub_213D8E9D0(v12);
}

uint64_t sub_213D8E970(uint64_t a1)
{
  sub_213D8EB1C(a1, v6);
  v1 = sub_213D8EB1C(v6, &v5);
  sub_213D4F224(v1, v2, v3);
  sub_213D90C2C();
  return sub_213D8E9D0(v6);
}

uint64_t sub_213D8E9D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF98, &qword_213D9E670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double MapContent.mapOverlayLevel(level:)(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = a1;
  sub_213D74C28(KeyPath, &v6, a2);

  return result;
}

uint64_t get_witness_table_15_MapKit_SwiftUI0A7ContentRzl0cD008ModifiedE0VyxAA022_EnvironmentKeyWritingaE8ModifierVyAC11StrokeStyleVGGAaBHpxAaBHD1__AjA01_aeJ0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_213D908CC();
  return swift_getWitnessTable();
}

uint64_t sub_213D8EB1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF98, &qword_213D9E670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_213D8EBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EDC78;
  if (!qword_27C8EDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDC78);
  }

  return result;
}

unint64_t sub_213D8EC20()
{
  result = qword_27C8E9AA8;
  if (!qword_27C8E9AA8)
  {
    type metadata accessor for MKOverlayLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9AA8);
  }

  return result;
}

double View.lookAroundViewer(isPresented:initialScene:allowsNavigation:showsRoadLabels:pointsOfInterest:onDismiss:)(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, char a5, char a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *a7;
  v15 = a7[1];
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 25) = a6;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;

  v17 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDC80, &qword_213D9E830);
  sub_213D8EF34();
  sub_213D9134C();

  return result;
}

uint64_t sub_213D8ED94@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for LookAroundPreview(0) + 36);
  *(a6 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC018, &qword_213D993F0);
  swift_storeEnumTagMultiPayload();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = a1;
  *(a6 + 24) = a2;
  *(a6 + 25) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  *(a6 + 48) = 0;
  v13 = a1;

  LOBYTE(a5) = sub_213D911DC();
  *(a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDC98, &qword_213D9E838) + 36)) = a5;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDC80, &qword_213D9E830) + 36);
  v15 = *MEMORY[0x277CDF3C0];
  v16 = sub_213D904FC();
  v19 = *(v16 - 8);
  (*(v19 + 104))(a6 + v14, v15, v16);
  v17 = *(v19 + 56);

  return v17(a6 + v14, 0, 1, v16);
}

unint64_t sub_213D8EF34()
{
  result = qword_27C8EDC88;
  if (!qword_27C8EDC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC80, &qword_213D9E830);
    sub_213D8EFC0();
    sub_213D8F0A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDC88);
  }

  return result;
}

unint64_t sub_213D8EFC0()
{
  result = qword_27C8EDC90;
  if (!qword_27C8EDC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC98, &qword_213D9E838);
    sub_213D8F04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDC90);
  }

  return result;
}

unint64_t sub_213D8F04C()
{
  result = qword_27C8EDCA0;
  if (!qword_27C8EDCA0)
  {
    type metadata accessor for LookAroundPreview(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDCA0);
  }

  return result;
}

unint64_t sub_213D8F0A4()
{
  result = qword_27C8EDCA8;
  if (!qword_27C8EDCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDCB0, &qword_213D9E840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDCA8);
  }

  return result;
}

double View.lookAroundViewer(isPresented:scene:allowsNavigation:showsRoadLabels:pointsOfInterest:onDismiss:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6, char a7, char a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *a9;
  v19 = a9[1];
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(v20 + 32) = a6;
  *(v20 + 40) = a7;
  *(v20 + 41) = a8;
  *(v20 + 48) = v18;
  *(v20 + 56) = v19;

  v21 = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDC80, &qword_213D9E830);
  sub_213D8EF34();
  sub_213D9134C();

  return result;
}

uint64_t sub_213D8F248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(type metadata accessor for LookAroundPreview(0) + 36);
  *(a8 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC018, &qword_213D993F0);
  swift_storeEnumTagMultiPayload();
  *a8 = a1;
  *(a8 + 8) = a2 | 0x8000000000000000;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 25) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  *(a8 + 48) = 0;
  v17 = a3;

  LOBYTE(a7) = sub_213D911DC();
  *(a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDC98, &qword_213D9E838) + 36)) = a7;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDC80, &qword_213D9E830) + 36);
  v19 = *MEMORY[0x277CDF3C0];
  v20 = sub_213D904FC();
  v23 = *(v20 - 8);
  (*(v23 + 104))(a8 + v18, v19, v20);
  v21 = *(v23 + 56);

  return v21(a8 + v18, 0, 1, v20);
}

uint64_t MapLocationCompass.init(scope:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  result = swift_getKeyPath();
  *(a3 + 32) = result;
  *(a3 + 40) = 0;
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t MapLocationCompass.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDCB8, &unk_213D9E8D0);
  MEMORY[0x28223BE20](v35);
  v3 = &v30[-v2];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  MEMORY[0x28223BE20](v36);
  v33 = &v30[-v4];
  v5 = type metadata accessor for MapControlsConfig(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_213D90C0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = *v1;
  v31 = *(v1 + 8);
  v12 = v1[2];
  v34 = *(v1 + 24);
  v13 = v1[4];
  if (*(v1 + 40) == 1)
  {
    v14 = v1[4];
  }

  else
  {

    sub_213D91BDC();
    v15 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v13, 0);
    (*(v9 + 8))(v11, v8);
    v14 = v41;
  }

  if (v14 == 3)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  v17 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = v5[5];
  v19 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v19 - 8) + 56))(&v7[v18], 1, 1, v19);
  v20 = v5[6];
  v21 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v21 - 8) + 56))(&v7[v20], 1, 1, v21);
  v22 = v5[7];
  v23 = type metadata accessor for MapCompassConfig(0);
  (*(*(v23 - 8) + 56))(&v7[v22], 1, 1, v23);
  *&v7[v5[8]] = 2;
  *&v7[v5[9]] = 2;
  *&v7[v5[10]] = (v16 << 8) | 1;
  if (!v34)
  {

    sub_213D91BDC();
    v26 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v12, 0);
    (*(v9 + 8))(v11, v8);
    if (v40 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    v27 = sub_213D9149C();
    v28 = v33;
    sub_213CEE7C8(v7, v33 + *(v36 + 36));
    *v28 = v27;
    sub_213CEE82C(v28, v3);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDCC0, &unk_213D9E908);
    sub_213CE189C();
    sub_213D8F9E0();
    sub_213D90E5C();
    sub_213CEE89C(v28);
    return sub_213CEE76C(v7);
  }

  if (v12)
  {
    goto LABEL_11;
  }

LABEL_9:
  KeyPath = swift_getKeyPath();
  v39 = 0;
  v25 = v31;
  v38 = v31;
  *v3 = KeyPath;
  v3[8] = 0;
  *(v3 + 2) = v32;
  v3[24] = v25;
  v3[25] = 1;
  v3[26] = v16;
  *(v3 + 27) = 257;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDCC0, &unk_213D9E908);
  sub_213CE189C();
  sub_213D8F9E0();
  sub_213D90E5C();
  return sub_213CEE76C(v7);
}

unint64_t sub_213D8F9E0()
{
  result = qword_27C8EDCC8;
  if (!qword_27C8EDCC8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDCC0, &unk_213D9E908);
    sub_213D8FA6C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDCC8);
  }

  return result;
}

unint64_t sub_213D8FA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EDCD0;
  if (!qword_27C8EDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDCD0);
  }

  return result;
}

uint64_t sub_213D8FAE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_213D8FB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_213D8FB88()
{
  result = qword_27C8EDCD8;
  if (!qword_27C8EDCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDCE0, &qword_213D9EA48);
    sub_213CE189C();
    sub_213D8F9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDCD8);
  }

  return result;
}

uint64_t sub_213D8FC98(double a1)
{
  v1 = sub_213D9029C();
  __swift_allocate_value_buffer(v1, qword_27C8E9770);
  v2 = __swift_project_value_buffer(v1, qword_27C8E9770);
  *v2 = _s15_MapKit_SwiftUI19ResourceBundleClassCMa_0();
  v3 = *MEMORY[0x277CC9120];
  v4 = *(*(v1 - 8) + 104);

  return v4(v2, v3, v1);
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27C8F7308 == -1)
  {
    if (qword_27C8F7310)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27C8F7310)
    {
      return _availability_version_check();
    }
  }

  if (qword_27C8F7300 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27C8F72F4 > a3)
      {
        return 1;
      }

      if (dword_27C8F72F4 >= a3)
      {
        return dword_27C8F72F8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27C8F7310;
  if (qword_27C8F7310)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27C8F7310 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21604F540](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27C8F72F4, &dword_27C8F72F8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x282123658](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}