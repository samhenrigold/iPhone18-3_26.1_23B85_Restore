unint64_t sub_24E8DCE18()
{
  result = qword_27F220EF8;
  if (!qword_27F220EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EF0, &qword_24F965228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F00, &unk_24F965230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F08, &unk_24FA35B50);
    sub_24E8DCF30();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220EF8);
  }

  return result;
}

unint64_t sub_24E8DCF30()
{
  result = qword_27F220F10;
  if (!qword_27F220F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F08, &unk_24FA35B50);
    sub_24E8DCFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220F10);
  }

  return result;
}

unint64_t sub_24E8DCFBC()
{
  result = qword_27F220F18;
  if (!qword_27F220F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220F18);
  }

  return result;
}

unint64_t sub_24E8DD010()
{
  result = qword_27F220F38;
  if (!qword_27F220F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215598, &qword_24F945EF0);
    sub_24E8E01C8(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220F38);
  }

  return result;
}

uint64_t sub_24E8DD110(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 7);
  v11 = *(v2 + 8);
  v10 = *(v2 + 9);
  v15[0] = *(v2 + 2);
  v4 = v15[0];
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v8;
  v15[5] = v9;
  v15[6] = v11;
  v15[7] = v10;
  v12 = *(type metadata accessor for GSKOnboardingView(0, v15) - 8);
  return a2(a1, &v2[(*(v12 + 80) + 80) & ~*(v12 + 80)], v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_24E8DD1EC()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v7;
  v11[7] = v8;
  v9 = *(type metadata accessor for GSKOnboardingView(0, v11) - 8);
  return sub_24E8D96D0(v0 + ((*(v9 + 80) + 80) & ~*(v9 + 80)), v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_24E8DD354@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v57 = a4;
  v56 = a3;
  v59 = a2;
  LODWORD(v58) = a1;
  v62 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520, &qword_24F9423F0);
  v13 = sub_24F924038();
  v84 = a8;
  v85 = sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
  v52 = v13;
  WitnessTable = swift_getWitnessTable();
  v65 = sub_24F924B98();
  v14 = sub_24F924038();
  v54 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v53 = &v48 - v18;
  v80 = a6;
  v81 = a8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = a6;
  v81 = a8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = a5;
  v81 = OpaqueTypeMetadata2;
  v64 = OpaqueTypeMetadata2;
  v82 = a7;
  v83 = OpaqueTypeConformance2;
  v63 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  v51 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v49 = &v48 - v25;
  v61 = sub_24F924E38();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v27 = &v48 - v26;
  v55 = &v48;
  v28 = a5;
  v66 = a5;
  v67 = a6;
  v29 = a7;
  v68 = a7;
  v69 = a8;
  v70 = v56;
  v71 = v57;
  sub_24F924C88();
  if (v58)
  {
    v30 = swift_checkMetadataState();
    v58 = v27;
    v31 = v63;
    v32 = v28;
    sub_24F926218();
    v80 = v28;
    v81 = v30;
    v82 = a7;
    v83 = v31;
    v27 = v58;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = v49;
    sub_24E7896B8();
    v35 = *(v51 + 8);
    v35(v23, v21);
    sub_24E7896B8();
    v36 = swift_getWitnessTable();
    v72 = v29;
    v73 = v36;
    v37 = swift_getWitnessTable();
    sub_24ECCCBA0(v23, v21, v14, v33, v37);
    v35(v23, v21);
    v35(v34, v21);
  }

  else
  {
    v32 = v28;
    sub_24F926308();
    v38 = swift_getWitnessTable();
    v78 = a7;
    v79 = v38;
    v39 = swift_getWitnessTable();
    v40 = v53;
    sub_24E7896B8();
    v41 = *(v54 + 8);
    v41(v16, v14);
    sub_24E7896B8();
    v80 = v32;
    v81 = v64;
    v82 = v29;
    v83 = v63;
    v42 = swift_getOpaqueTypeConformance2();
    sub_24ECCCC98(v16, v21, v14, v42, v39);
    v41(v16, v14);
    v41(v40, v14);
  }

  v80 = v32;
  v81 = v64;
  v82 = v29;
  v83 = v63;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = swift_getWitnessTable();
  v76 = v29;
  v77 = v44;
  v45 = swift_getWitnessTable();
  v74 = v43;
  v75 = v45;
  v46 = v61;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v60 + 8))(v27, v46);
}

uint64_t sub_24E8DDB04@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v24 = a1;
  v26 = a4;
  v25 = sub_24F924C18();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v28 = a3;
  v22[1] = MEMORY[0x277CDEA38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v22 - v18;
  v24(v17);
  sub_24F924C08();
  sub_24F9265B8();
  (*(v23 + 8))(v7, v25);
  (*(v8 + 8))(v11, a2);
  v27 = a2;
  v28 = a3;
  swift_getOpaqueTypeConformance2();
  sub_24E7896B8();
  v20 = *(v13 + 8);
  v20(v15, OpaqueTypeMetadata2);
  sub_24E7896B8();
  return (v20)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_24E8DDDCC@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520, &qword_24F9423F0);
  v9 = sub_24F924038();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  a1(v14);
  v17 = [objc_opt_self() systemBackgroundColor];
  v28 = sub_24F926BF8();
  v18 = sub_24F925828();
  sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v18)
  {
    sub_24F925848();
  }

  v19 = v24;
  sub_24F926098();

  (*(v6 + 8))(v8, a2);
  v20 = sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
  v26 = v19;
  v27 = v20;
  swift_getWitnessTable();
  sub_24E7896B8();
  v21 = *(v10 + 8);
  v21(v12, v9);
  sub_24E7896B8();
  return (v21)(v16, v9);
}

uint64_t sub_24E8DE0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xD000000000000012;
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F78, &qword_24F975950);
  MEMORY[0x25304CAF0](v11, v4);
  if (!v11[0])
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F80, &qword_24F965348);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v10 != 2 || v9)
  {
    sub_24E8E0E18(v9, v10);
LABEL_7:
    v5 = "SignIn.Error.Offline.Message";
    goto LABEL_8;
  }

  v5 = "SignIn.Error.Title";
  v3 = 0xD00000000000001ALL;
LABEL_8:
  v6._object = (v5 | 0x8000000000000000);
  v6._countAndFlagsBits = v3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  return localizedString(_:comment:)(v6, v7)._countAndFlagsBits;
}

uint64_t sub_24E8DE1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xD00000000000001ALL;
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F78, &qword_24F975950);
  MEMORY[0x25304CAF0](v11, v4);
  if (!v11[0])
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F80, &qword_24F965348);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v10 != 2 || v9)
  {
    sub_24E8E0E18(v9, v10);
LABEL_7:
    v5 = "-scoreboard_shelf";
    goto LABEL_8;
  }

  v5 = "Alert.GenericError.Message";
  v3 = 0xD00000000000001CLL;
LABEL_8:
  v6._object = (v5 | 0x8000000000000000);
  v6._countAndFlagsBits = v3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  return localizedString(_:comment:)(v6, v7)._countAndFlagsBits;
}

double sub_24E8DE2DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_24E8DE0F4(a2, a3, a4);
  sub_24F92B7F8();

  v7 = a4;
  v8 = sub_24F92B7E8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;

  v11 = a4;
  v12 = sub_24F92B7E8();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v10;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  sub_24F9271A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F68, &qword_24F965340);
  sub_24E602068(&qword_27F220F70, &qword_27F220F68, &qword_24F965340, MEMORY[0x277CE04B0]);
  sub_24E600AEC();
  sub_24F926908();

  return result;
}

void sub_24E8DE520(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v9[1] = a1;
  v9[2] = a2;
  v9[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F78, &qword_24F975950);
  MEMORY[0x25304CAF0](v9, v5);
  if (v9[0] && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F80, &qword_24F965348), swift_dynamicCast()) && (v8 != 2 || v7 != 2))
  {
    sub_24E8E0E18(v7, v8);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a4 = v6;
}

uint64_t sub_24E8DE5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E8DE1E8(a1, a2, a3);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

void sub_24E8DE65C(uint64_t a1, _BYTE *a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v14[0] = v2[2];
  v4 = v14[0];
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = v9;
  v14[6] = v11;
  v14[7] = v10;
  v12 = *(type metadata accessor for GSKOnboardingView(0, v14) - 8);
  sub_24E8DB0A4(a1, a2, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_24E8DE784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v15[0] = v2[2];
  v4 = v15[0];
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v8;
  v15[5] = v9;
  v15[6] = v11;
  v15[7] = v10;
  v12 = *(type metadata accessor for GSKOnboardingView(0, v15) - 8);
  return sub_24E8DB388(a1, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, a2, v11, v10);
}

uint64_t sub_24E8DE858(uint64_t *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v13[0] = v1[2];
  v3 = v13[0];
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v13[7] = v10;
  v11 = *(type metadata accessor for GSKOnboardingView(0, v13) - 8);
  return sub_24E8DC830(a1, v1 + ((*(v11 + 80) + 80) & ~*(v11 + 80)), v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm_16()
{
  v1 = v0[2];
  v92[0] = v0[1];
  v92[1] = v1;
  v2 = v0[4];
  v92[2] = v0[3];
  v92[3] = v2;
  v3 = type metadata accessor for GSKOnboardingView(0, v92);
  v4 = *(*(v3 - 1) + 80);
  v5 = v0 + ((v4 + 80) & ~v4);

  if (*(v5 + 6))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 3);
  }

  if (*(v5 + 14))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 11);
  }

  v6 = &v5[v3[34]];
  v7 = type metadata accessor for HeaderPresentation(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    v9 = (*(v8 - 1) + 48);
    v90 = *v9;
    if ((*v9)(v6, 1, v8))
    {
      goto LABEL_19;
    }

    v10 = &v6[v8[5]];
    v11 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      goto LABEL_8;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v66 = sub_24F9289E8();
          (*(*(v66 - 8) + 8))(v10, v66);
          goto LABEL_8;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_8:
          v12 = &v6[v8[7]];
          v13 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v15 = sub_24F928388();
              (*(*(v15 - 8) + 8))(v12, v15);
            }
          }

          v16 = &v6[v8[10]];
          if (*(v16 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1(v16);
          }

LABEL_19:
          v17 = &v6[v7[5]];
          if (v90(v17, 1, v8))
          {
            goto LABEL_36;
          }

          v18 = &v17[v8[5]];
          v19 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
          if ((*(*(v19 - 8) + 48))(v18, 1, v19))
          {
            goto LABEL_21;
          }

          v22 = swift_getEnumCaseMultiPayload();
          if (v22 > 2)
          {
            if (v22 != 3)
            {
              if (v22 == 4)
              {
                v68 = sub_24F9289E8();
                (*(*(v68 - 8) + 8))(v18, v68);
                goto LABEL_21;
              }

              if (v22 != 5)
              {
LABEL_21:
                v20 = &v17[v8[7]];
                v21 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
                if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
                {
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                  }

                  else
                  {
                    v23 = sub_24F928388();
                    (*(*(v23 - 8) + 8))(v20, v23);
                  }
                }

                v24 = &v17[v8[10]];
                if (*(v24 + 3))
                {
                  __swift_destroy_boxed_opaque_existential_1(v24);
                }

LABEL_36:
                v25 = &v6[v7[6]];
                if (v90(v25, 1, v8))
                {
                  goto LABEL_53;
                }

                v26 = &v25[v8[5]];
                v27 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                if ((*(*(v27 - 8) + 48))(v26, 1, v27))
                {
                  goto LABEL_38;
                }

                v30 = swift_getEnumCaseMultiPayload();
                if (v30 > 2)
                {
                  if (v30 != 3)
                  {
                    if (v30 == 4)
                    {
                      v69 = sub_24F9289E8();
                      (*(*(v69 - 8) + 8))(v26, v69);
                      goto LABEL_38;
                    }

                    if (v30 != 5)
                    {
LABEL_38:
                      v28 = &v25[v8[7]];
                      v29 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
                      if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
                      {
                        if (swift_getEnumCaseMultiPayload() == 1)
                        {
                        }

                        else
                        {
                          v31 = sub_24F928388();
                          (*(*(v31 - 8) + 8))(v28, v31);
                        }
                      }

                      v32 = &v25[v8[10]];
                      if (*(v32 + 3))
                      {
                        __swift_destroy_boxed_opaque_existential_1(v32);
                      }

LABEL_53:
                      v33 = &v6[v7[7]];
                      if (v33[56] == 1)
                      {
                      }

                      else if (!v33[56])
                      {

                        if (*(v33 + 5))
                        {
                          __swift_destroy_boxed_opaque_existential_1(v33 + 2);
                        }
                      }

                      v34 = &v6[v7[8]];
                      v35 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
                      if ((*(*(v35 - 8) + 48))(v34, 1, v35))
                      {
                        goto LABEL_59;
                      }

                      v45 = swift_getEnumCaseMultiPayload();
                      if (v45 == 2)
                      {
LABEL_131:

                        goto LABEL_59;
                      }

                      if (v45 != 1)
                      {
                        if (v45)
                        {
                          goto LABEL_59;
                        }

                        v46 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                        if ((*(*(v46 - 8) + 48))(v34, 1, v46))
                        {
                          goto LABEL_59;
                        }

                        v47 = swift_getEnumCaseMultiPayload();
                        if (v47 > 2)
                        {
                          if (v47 != 3)
                          {
                            if (v47 == 4)
                            {
                              v88 = sub_24F9289E8();
                              (*(*(v88 - 8) + 8))(v34, v88);
                              goto LABEL_59;
                            }

                            if (v47 != 5)
                            {
                              goto LABEL_59;
                            }
                          }

                          goto LABEL_131;
                        }

                        if (v47)
                        {
                          if (v47 == 1)
                          {
                            v86 = sub_24F9289E8();
                            v87 = *(v86 - 8);
                            if (!(*(v87 + 48))(v34, 1, v86))
                            {
                              (*(v87 + 8))(v34, v86);
                            }

                            if (!*&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24])
                            {
                              goto LABEL_59;
                            }
                          }

                          else if (v47 != 2)
                          {
                            goto LABEL_59;
                          }

                          goto LABEL_131;
                        }

                        v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
LABEL_150:
                        v82 = &v34[v76];
                        v83 = type metadata accessor for JSColor(0);
                        if (!(*(*(v83 - 8) + 48))(v82, 1, v83))
                        {
                          v84 = sub_24F928388();
                          (*(*(v84 - 8) + 8))(v82, v84);
                        }

                        goto LABEL_59;
                      }

                      v48 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                      v49 = *(*(v48 - 8) + 48);
                      if (v49(v34, 1, v48))
                      {
LABEL_81:
                        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
                        v51 = &v34[*(v50 + 48)];
                        if (!v49(v51, 1, v48))
                        {
                          v52 = swift_getEnumCaseMultiPayload();
                          if (v52 <= 2)
                          {
                            switch(v52)
                            {
                              case 0:

                                v70 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48)];
                                v71 = type metadata accessor for JSColor(0);
                                if (!(*(*(v71 - 8) + 48))(v70, 1, v71))
                                {
                                  v72 = sub_24F928388();
                                  (*(*(v72 - 8) + 8))(v70, v72);
                                }

                                goto LABEL_149;
                              case 1:
                                v77 = sub_24F9289E8();
                                v78 = *(v77 - 8);
                                if (!(*(v78 + 48))(v51, 1, v77))
                                {
                                  (*(v78 + 8))(v51, v77);
                                }

                                if (!*&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24])
                                {
                                  goto LABEL_149;
                                }

                                break;
                              case 2:
                                break;
                              default:
                                goto LABEL_149;
                            }

LABEL_143:

                            goto LABEL_149;
                          }

                          switch(v52)
                          {
                            case 3:
                              goto LABEL_143;
                            case 4:
                              v81 = sub_24F9289E8();
                              (*(*(v81 - 8) + 8))(v51, v81);
                              break;
                            case 5:
                              goto LABEL_143;
                          }
                        }

LABEL_149:
                        v76 = *(v50 + 80);
                        goto LABEL_150;
                      }

                      v53 = swift_getEnumCaseMultiPayload();
                      if (v53 > 2)
                      {
                        if (v53 != 3)
                        {
                          if (v53 == 4)
                          {
                            v85 = sub_24F9289E8();
                            (*(*(v85 - 8) + 8))(v34, v85);
                            goto LABEL_81;
                          }

                          if (v53 != 5)
                          {
                            goto LABEL_81;
                          }
                        }
                      }

                      else
                      {
                        if (!v53)
                        {

                          v73 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48)];
                          v74 = type metadata accessor for JSColor(0);
                          if (!(*(*(v74 - 8) + 48))(v73, 1, v74))
                          {
                            v75 = sub_24F928388();
                            (*(*(v75 - 8) + 8))(v73, v75);
                          }

                          goto LABEL_81;
                        }

                        if (v53 == 1)
                        {
                          v79 = sub_24F9289E8();
                          v80 = *(v79 - 8);
                          if (!(*(v80 + 48))(v34, 1, v79))
                          {
                            (*(v80 + 8))(v34, v79);
                          }

                          if (*&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24])
                          {
                          }

                          goto LABEL_81;
                        }

                        if (v53 != 2)
                        {
                          goto LABEL_81;
                        }
                      }

                      goto LABEL_81;
                    }
                  }
                }

                else
                {
                  if (!v30)
                  {

                    v60 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48)];
                    v61 = type metadata accessor for JSColor(0);
                    if (!(*(*(v61 - 8) + 48))(v60, 1, v61))
                    {
                      v62 = sub_24F928388();
                      (*(*(v62 - 8) + 8))(v60, v62);
                    }

                    goto LABEL_38;
                  }

                  if (v30 == 1)
                  {
                    v67 = sub_24F9289E8();
                    v91 = *(v67 - 8);
                    if (!(*(v91 + 48))(v26, 1, v67))
                    {
                      (*(v91 + 8))(v26, v67);
                    }

                    if (*&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24])
                    {
                    }

                    goto LABEL_38;
                  }

                  if (v30 != 2)
                  {
                    goto LABEL_38;
                  }
                }

                goto LABEL_38;
              }
            }
          }

          else
          {
            if (!v22)
            {

              v57 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48)];
              v58 = type metadata accessor for JSColor(0);
              if (!(*(*(v58 - 8) + 48))(v57, 1, v58))
              {
                v59 = sub_24F928388();
                (*(*(v59 - 8) + 8))(v57, v59);
              }

              goto LABEL_21;
            }

            if (v22 == 1)
            {
              v65 = sub_24F9289E8();
              v89 = *(v65 - 8);
              if (!(*(v89 + 48))(v18, 1, v65))
              {
                (*(v89 + 8))(v18, v65);
              }

              if (*&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24])
              {
              }

              goto LABEL_21;
            }

            if (v22 != 2)
            {
              goto LABEL_21;
            }
          }

          goto LABEL_21;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v54 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48)];
        v55 = type metadata accessor for JSColor(0);
        if (!(*(*(v55 - 8) + 48))(v54, 1, v55))
        {
          v56 = sub_24F928388();
          (*(*(v56 - 8) + 8))(v54, v56);
        }

        goto LABEL_8;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v63 = sub_24F9289E8();
        v64 = *(v63 - 8);
        if (!(*(v64 + 48))(v10, 1, v63))
        {
          (*(v64 + 8))(v10, v63);
        }

        if (*&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24])
        {
        }

        goto LABEL_8;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

LABEL_59:

  v36 = v3[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = sub_24F925218();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(&v5[v36], 1, v37))
    {
      (*(v38 + 8))(&v5[v36], v37);
    }
  }

  else
  {
  }

  v39 = v3[41];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = sub_24F925218();
    v41 = *(v40 - 8);
    if (!(*(v41 + 48))(&v5[v39], 1, v40))
    {
      (*(v41 + 8))(&v5[v39], v40);
    }
  }

  else
  {
  }

  v42 = v3[42];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = sub_24F923E98();
    (*(*(v43 - 8) + 8))(&v5[v42], v43);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E8DFFC8(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v9 = *(v1 + 8);
  v8 = *(v1 + 9);
  v13[0] = *(v1 + 2);
  v2 = v13[0];
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v9;
  v13[7] = v8;
  v10 = *(type metadata accessor for GSKOnboardingView(0, v13) - 8);
  return a1(&v1[(*(v10 + 80) + 80) & ~*(v10 + 80)], v2, v3, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_24E8E0114()
{
  result = qword_27F220F58;
  if (!qword_27F220F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F30, &qword_24F965248);
    sub_24E8E01C8(&qword_27F220F60, type metadata accessor for DefaultPageHeaderView, &unk_24F9DD8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220F58);
  }

  return result;
}

uint64_t sub_24E8E01C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E8E0210(uint64_t a1)
{
  v2 = type metadata accessor for HeaderPresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E8E026C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8E02E4(uint64_t *a1, __n128 a2)
{
  v4 = a1[3];
  v5 = a1[7];
  sub_24F92C0E8();
  sub_24F924038();
  sub_24F924E38();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F923428();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EE8, &qword_24F965220);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EF0, &qword_24F965228);
  sub_24E8DCE18();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F20, &qword_24F965240);
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F220F28, &qword_27F220F20, &qword_24F965240, MEMORY[0x277CE01C8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F30, &qword_24F965248);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F188, &unk_24F965250);
  sub_24F924038();
  type metadata accessor for OnboardingButtonPlatter(255, v4, v5, v2);
  sub_24F92C4A8();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  swift_getWitnessTable();
  sub_24F923428();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24F924278();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720, qword_24F9A8F70);
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F21A718, &qword_27F21A720, qword_24F9A8F70, MEMORY[0x277CE06A8]);
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520, &qword_24F9423F0);
  sub_24F924038();
  sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  sub_24F924B98();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  sub_24F924E38();
  sub_24F926DC8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220ED8, &qword_24F992060);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F220EE0, &qword_27F220ED8, &qword_24F992060, MEMORY[0x277CDF728]);
  swift_getOpaqueTypeMetadata2();
  sub_24E8E01C8(&qword_27F21F480, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  swift_getOpaqueTypeConformance2();
  sub_24F924288();
  swift_getWitnessTable();
  sub_24F924288();
  sub_24F923E98();
  swift_getWitnessTable();
  sub_24E8E01C8(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215598, &qword_24F945EF0);
  swift_getOpaqueTypeConformance2();
  sub_24E8DD010();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroy_41Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24E8E0E18(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_24E8E0E2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F68, &qword_24F965340);
  sub_24E602068(&qword_27F220F70, &qword_27F220F68, &qword_24F965340, MEMORY[0x277CE04B0]);
  sub_24E600AEC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PlayTogetherGroup.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24E8E0F58()
{
  v28 = type metadata accessor for Player(0);
  v1 = *(v28 - 1);
  MEMORY[0x28223BE20](v28);
  v3 = (&v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - v5;
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v35 = MEMORY[0x277D84F90];
    sub_24F457D54(0, v7, 0);
    v8 = v35;
    v9 = v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v26 = *(v1 + 72);
    do
    {
      v10 = v27;
      sub_24E70D960(v9, v27);
      sub_24E70D960(v10, v3);
      v11 = v3[1];
      v33 = *v3;
      v34 = v11;

      v12 = sub_24F37B534();
      v32 = v13;
      sub_24E71BF38(v10);

      v14 = v3[3];
      v31 = v3[2];
      v15 = *(v3 + v28[11]);
      v16 = *(v3 + v28[12]);
      v17 = *(v3 + v28[20]);
      v29 = *(v3 + v28[21]);
      v30 = v17;

      sub_24E71BF38(v3);
      v35 = v8;
      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24F457D54((v18 > 1), v19 + 1, 1);
        v8 = v35;
      }

      *(v8 + 16) = v19 + 1;
      v20 = v8 + 72 * v19;
      v21 = v34;
      *(v20 + 32) = v33;
      *(v20 + 40) = v21;
      v22 = v31;
      v23 = v32;
      *(v20 + 48) = v12;
      *(v20 + 56) = v23;
      *(v20 + 64) = v22;
      *(v20 + 72) = v14;
      *(v20 + 80) = v15;
      *(v20 + 88) = v16;
      LOBYTE(v22) = v29;
      *(v20 + 96) = v30;
      *(v20 + 97) = v22;
      v9 += v26;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_24E8E1198()
{
  if (*v0)
  {
    return 0x73726579616C70;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_24E8E11C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73726579616C70 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E8E129C(uint64_t a1)
{
  v2 = sub_24E8E14F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E8E12D8(uint64_t a1)
{
  v2 = sub_24E8E14F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayTogetherGroup.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F88, &unk_24F965350);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E8E14F4();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
    sub_24E76B8D4(&qword_27F21BC30, &qword_27F213E28, &protocol conformance descriptor for Player, MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_24E8E14F4()
{
  result = qword_27F220F90;
  if (!qword_27F220F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220F90);
  }

  return result;
}

uint64_t PlayTogetherGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F98, &qword_24F965360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E8E14F4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  v16 = 1;
  sub_24E76B8D4(&qword_27F2196A8, &qword_27F213E38, &protocol conformance descriptor for Player, MEMORY[0x277D83978]);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E8E17F8()
{
  result = qword_27F220FA0;
  if (!qword_27F220FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220FA0);
  }

  return result;
}

unint64_t sub_24E8E1850()
{
  result = qword_27F220FA8;
  if (!qword_27F220FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220FA8);
  }

  return result;
}

unint64_t sub_24E8E18A8()
{
  result = qword_27F220FB0;
  if (!qword_27F220FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220FB0);
  }

  return result;
}

unint64_t sub_24E8E18FC(uint64_t a1, uint64_t a2)
{
  v47[7] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = v37 - v5;
  v39 = type metadata accessor for GSKTabChangeAction(0);
  MEMORY[0x28223BE20](v39);
  v43 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v40 = v37 - v8;
  v9 = type metadata accessor for StoreTab(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v47[0] = a1;
  sub_24E8E28B4(&qword_27F220FB8, type metadata accessor for FlowAuthorityProvider, &protocol conformance descriptor for FlowAuthorityProvider);
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E65864C(a1 + 16, v47);
  swift_getKeyPath();
  v46[0] = a1;
  sub_24F91FD88();

  v14 = *(a1 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__tabs);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v37[1] = v2;
    v38 = v4;
    v46[0] = MEMORY[0x277D84F90];

    sub_24F4580E8(0, v15, 0);
    v16 = v46[0];
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v37[0] = v14;
    v18 = v14 + v17;
    v19 = *(v10 + 72);
    do
    {
      sub_24E8E28FC(v18, v12, type metadata accessor for StoreTab);
      v21 = *v12;
      v20 = v12[1];
      sub_24E8E2880(*v12, v20);
      sub_24E8E2964(v12, type metadata accessor for StoreTab);
      v46[0] = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_24F4580E8((v22 > 1), v23 + 1, 1);
        v16 = v46[0];
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      v18 += v19;
      --v15;
    }

    while (v15);

    v4 = v38;
  }

  MEMORY[0x28223BE20](v13);
  v37[-2] = v47;
  result = sub_24E8E2610(sub_24E8E29D8, &v37[-4], v16);
  if ((v26 & 1) != 0 || result < 1)
  {
    sub_24E6585F8(v47);
  }

  else if (result > *(v16 + 16))
  {
    __break(1u);
  }

  else
  {
    v27 = (v16 + 16 + 16 * result);
    v28 = *v27;
    v29 = v27[1];
    sub_24E8E2880(*v27, v29);

    v30 = v40;
    v31 = v42;
    sub_24F928F28();
    v32 = v39;
    v33 = v43;
    sub_24F928A98();
    *v33 = v28;
    *(v33 + 8) = v29;
    *(v33 + 16) = MEMORY[0x277D84F90];
    *(v33 + 24) = 0;
    v46[3] = v32;
    v46[4] = sub_24E8E28B4(&qword_27F2162B0, type metadata accessor for GSKTabChangeAction, &protocol conformance descriptor for GSKTabChangeAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
    sub_24E8E28FC(v33, boxed_opaque_existential_1, type metadata accessor for GSKTabChangeAction);
    v36 = v44;
    v35 = v45;
    (*(v45 + 104))(v44, *MEMORY[0x277D21E18], v4);
    sub_24F929288();

    (*(v35 + 8))(v36, v4);
    sub_24E8E2964(v33, type metadata accessor for GSKTabChangeAction);
    (*(v41 + 8))(v30, v31);
    sub_24E6585F8(v47);
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  return result;
}

uint64_t sub_24E8E1ECC(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v38 - v4;
  v38 = type metadata accessor for GSKTabChangeAction(0);
  MEMORY[0x28223BE20](v38);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = &v38 - v7;
  v8 = type metadata accessor for StoreTab(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v49[0] = a1;
  sub_24E8E28B4(&qword_27F220FB8, type metadata accessor for FlowAuthorityProvider, &protocol conformance descriptor for FlowAuthorityProvider);
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E65864C(a1 + 16, v49);
  swift_getKeyPath();
  v48[0] = a1;
  sub_24F91FD88();

  v13 = *(a1 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__tabs);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v49[7] = v2;
    v48[0] = MEMORY[0x277D84F90];

    sub_24F4580E8(0, v14, 0);
    v15 = v48[0];
    v16 = *(v9 + 80);
    v47 = v13;
    v17 = v13 + ((v16 + 32) & ~v16);
    v18 = *(v9 + 72);
    do
    {
      sub_24E8E28FC(v17, v11, type metadata accessor for StoreTab);
      v20 = *v11;
      v19 = v11[1];
      sub_24E8E2880(*v11, v19);
      sub_24E8E2964(v11, type metadata accessor for StoreTab);
      v48[0] = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_24F4580E8((v21 > 1), v22 + 1, 1);
        v15 = v48[0];
      }

      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v17 += v18;
      --v14;
    }

    while (v14);
  }

  MEMORY[0x28223BE20](v12);
  *(&v38 - 2) = v49;
  result = sub_24E8E2610(sub_24E8E2894, (&v38 - 4), v15);
  if (v25)
  {
    goto LABEL_12;
  }

  v26 = result + 1;
  if (!__OFADD__(result, 1))
  {
    if (v26 < *(v15 + 16))
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        v27 = v15 + 16 * v26;
        v28 = *(v27 + 32);
        v29 = *(v27 + 40);
        sub_24E8E2880(v28, v29);

        v30 = v39;
        v31 = v41;
        sub_24F928F28();
        v32 = v38;
        v33 = v42;
        sub_24F928A98();
        *v33 = v28;
        *(v33 + 8) = v29;
        *(v33 + 16) = MEMORY[0x277D84F90];
        *(v33 + 24) = 0;
        v48[3] = v32;
        v48[4] = sub_24E8E28B4(&qword_27F2162B0, type metadata accessor for GSKTabChangeAction, &protocol conformance descriptor for GSKTabChangeAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
        sub_24E8E28FC(v33, boxed_opaque_existential_1, type metadata accessor for GSKTabChangeAction);
        v36 = v43;
        v35 = v44;
        v37 = v46;
        (*(v44 + 104))(v43, *MEMORY[0x277D21E18], v46);
        sub_24F929288();

        (*(v35 + 8))(v36, v37);
        sub_24E8E2964(v33, type metadata accessor for GSKTabChangeAction);
        (*(v40 + 8))(v30, v31);
        sub_24E6585F8(v49);
        return __swift_destroy_boxed_opaque_existential_1(v48);
      }

      goto LABEL_14;
    }

LABEL_12:
    sub_24E6585F8(v49);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_24E8E24A0(__int128 *a1, uint64_t a2)
{
  StoreTab.Identifier.rawValue.getter();
  sub_24F92C7F8();
  v3 = MEMORY[0x253052150](v5, a2);
  sub_24E6585F8(v5);
  return v3 & 1;
}

uint64_t sub_24E8E2524(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for LeaderboardEntry(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_24E8E2610(uint64_t (*a1)(__int128 *, double), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v11 = *(v7 + 16 * v6);
    v8 = sub_24E8E2880(v11, *(&v11 + 1));
    v9 = a1(&v11, v8);
    sub_24E8E29C4(v11, *(&v11 + 1));
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_24E8E26D0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_24F92C738();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x253052270](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v12 = v8;
    v9 = a1(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_24E8E27EC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 40)
  {
    v8 = a1(i, a2);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

double sub_24E8E2880(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
  }

  return result;
}

uint64_t sub_24E8E28B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E8E28FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8E2964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E8E29C4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
  }

  return result;
}

unint64_t sub_24E8E2A08()
{
  result = qword_27F21A4D8;
  if (!qword_27F21A4D8)
  {
    type metadata accessor for AchievementRecordingsDataIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4D8);
  }

  return result;
}

uint64_t sub_24E8E2A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return sub_24E8E2B18(a2, a3);
}

uint64_t sub_24E8E2B18(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for RecordingAssociation(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218918, &unk_24F949780);
  v2[8] = swift_task_alloc();
  v2[9] = *(type metadata accessor for PhotosAsset(0) - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FC0, &qword_24F965638);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for Achievement(0);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E8E2D2C, 0, 0);
}

uint64_t sub_24E8E2D2C()
{
  *(v0 + 144) = sub_24E60BBE8(MEMORY[0x277D84F90]);
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_24E8E2DCC;

  return sub_24F6F8018();
}

uint64_t sub_24E8E2DCC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {

    v4 = sub_24E8E39D4;
  }

  else
  {
    v4 = sub_24E8E2EE8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t sub_24E8E2EE8()
{
  if (v0[20])
  {
    v1 = v0[2];
    v2 = sub_24E60B818(MEMORY[0x277D84F90]);
    result = type metadata accessor for AchievementRecordingsDataIntent(0);
    v4 = *(v1 + *(result + 20));
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v33 = v0[15];
      v34 = v0[17];
      v32 = v4 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      while (1)
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }

        v9 = v0[16];
        v8 = v0[17];
        v10 = *(v33 + 72);
        sub_24E8E3AA0(v32 + v10 * v6, v8, type metadata accessor for Achievement);
        v11 = *v8;
        v12 = *(v34 + 8);
        sub_24E8E3B78(v8, v9, type metadata accessor for Achievement);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        result = sub_24E76D644(v11, v12);
        v15 = v2[2];
        v16 = (v14 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_27;
        }

        v19 = v14;
        if (v2[3] < v18)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

        v25 = result;
        sub_24E8AF608();
        result = v25;
        v21 = v0[16];
        if (v19)
        {
LABEL_4:
          v7 = result;

          result = sub_24E8E3BE0(v21, v2[7] + v7 * v10, type metadata accessor for Achievement);
          goto LABEL_5;
        }

LABEL_13:
        v2[(result >> 6) + 8] |= 1 << result;
        v22 = (v2[6] + 16 * result);
        *v22 = v11;
        v22[1] = v12;
        result = sub_24E8E3B78(v21, v2[7] + result * v10, type metadata accessor for Achievement);
        v23 = v2[2];
        v17 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v17)
        {
          goto LABEL_28;
        }

        v2[2] = v24;
LABEL_5:
        if (v5 == ++v6)
        {
          goto LABEL_17;
        }
      }

      sub_24E89BEEC(v18, isUniquelyReferenced_nonNull_native);
      result = sub_24E76D644(v11, v12);
      if ((v19 & 1) != (v20 & 1))
      {

        return sub_24F92CF88();
      }

LABEL_12:
      v21 = v0[16];
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

LABEL_17:
    v0[22] = v2;
    v26 = v0[2];
    v27 = *v26;
    v28 = v26[1];
    v29 = swift_task_alloc();
    v0[23] = v29;
    *v29 = v0;
    v29[1] = sub_24E8E32B8;

    return PhotosAssetManager.fetchRecordingsForAchievements(gameBundleID:)(v27, v28);
  }

  else
  {

    v30 = sub_24E60BBE8(MEMORY[0x277D84F90]);

    v31 = v0[1];

    return v31(v30);
  }
}

uint64_t sub_24E8E32B8(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_24E8E33B8, 0, 0);
}

void sub_24E8E33B8()
{
  v1 = 0;
  v58 = v0[13];
  v59 = v0[22];
  v53 = v0[9];
  v54 = v0[12];
  v55 = v0[24];
  v56 = v0[5];
  v57 = v0[4];
  v2 = -1;
  v3 = -1 << *(v55 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v55 + 64);
  v51 = v0[15];
  v52 = (63 - v3) >> 6;
  v5 = v0[18];
  while (1)
  {
    if (!v4)
    {
      if (v52 <= v1 + 1)
      {
        v8 = v1 + 1;
      }

      else
      {
        v8 = v52;
      }

      v9 = v8 - 1;
      while (1)
      {
        v7 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v7 >= v52)
        {
          v47 = v0[12];
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FC8, &unk_24F965640);
          (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
          v4 = 0;
          goto LABEL_15;
        }

        v4 = *(v55 + 64 + 8 * v7);
        ++v1;
        if (v4)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v7 = v1;
LABEL_14:
    v11 = v0[11];
    v10 = v0[12];
    v12 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v13 = v12 | (v7 << 6);
    v14 = (*(v55 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24E8E3AA0(*(v55 + 56) + *(v53 + 72) * v13, v11, type metadata accessor for PhotosAsset);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FC8, &unk_24F965640);
    v18 = *(v17 + 48);
    *v10 = v16;
    *(v54 + 8) = v15;
    sub_24E8E3B78(v11, v10 + v18, type metadata accessor for PhotosAsset);
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);

    v9 = v7;
LABEL_15:
    v19 = v0[13];
    sub_24E8E3B08(v0[12], v19);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FC8, &unk_24F965640);
    if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
    {
      break;
    }

    v21 = v0[13];
    v22 = *v21;
    v23 = *(v58 + 8);
    sub_24E8E3B78(v21 + *(v20 + 48), v0[10], type metadata accessor for PhotosAsset);
    if (*(v59 + 16) && (v24 = sub_24E76D644(v22, v23), (v25 & 1) != 0))
    {
      v26 = v9;
      sub_24E8E3AA0(*(v59 + 56) + *(v51 + 72) * v24, v0[8], type metadata accessor for Achievement);
      v27 = 0;
    }

    else
    {
      v26 = v9;
      v27 = 1;
    }

    v28 = v0[10];
    v30 = v0[7];
    v29 = v0[8];
    v31 = v0[6];
    (*(v51 + 56))(v29, v27, 1, v0[14]);
    sub_24E8E3AA0(v28, v30, type metadata accessor for PhotosAsset);
    sub_24E6E2E98(v29, v30 + *(v57 + 20));
    sub_24E8E3B78(v30, v31, type metadata accessor for RecordingAssociation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v5;
    v33 = sub_24E76D644(v22, v23);
    v35 = v5[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_37;
    }

    v39 = v34;
    if (v5[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = v33;
        sub_24E8AFD6C();
        v33 = v49;
      }
    }

    else
    {
      sub_24E89C998(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_24E76D644(v22, v23);
      if ((v39 & 1) != (v40 & 1))
      {

        sub_24F92CF88();
        return;
      }
    }

    v41 = v0[10];
    v42 = v0[8];
    v43 = v0[6];
    if (v39)
    {
      v6 = v33;

      v5 = v60;
      sub_24E8E3BE0(v43, v60[7] + *(v56 + 72) * v6, type metadata accessor for RecordingAssociation);
      sub_24E8B986C(v42);
      sub_24E76316C(v41);
      v1 = v26;
    }

    else
    {
      v5 = v60;
      v60[(v33 >> 6) + 8] |= 1 << v33;
      v44 = (v60[6] + 16 * v33);
      *v44 = v22;
      v44[1] = v23;
      sub_24E8E3B78(v43, v60[7] + *(v56 + 72) * v33, type metadata accessor for RecordingAssociation);
      sub_24E8B986C(v42);
      sub_24E76316C(v41);
      v45 = v60[2];
      v37 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v37)
      {
        goto LABEL_38;
      }

      v60[2] = v46;
      v1 = v26;
    }
  }

  v50 = v0[1];

  v50(v5);
}

uint64_t sub_24E8E39D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E8E3AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8E3B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FC0, &qword_24F965638);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8E3B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8E3BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double View.withDebugMetricsOverlay(using:)(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FD0, &qword_24F965650);
  sub_24F926F28();
  v7 = v9;
  v6 = v10;
  v9 = a1;
  v10 = v7;
  v11 = v6;
  MEMORY[0x25304C420](&v9, a2, &type metadata for DebugMetricsOverlayViewModifier, a3);

  return result;
}

uint64_t sub_24E8E3CF0(void *a1)
{
  sub_24F924038();
  sub_24E8E3D54();
  return swift_getWitnessTable();
}

unint64_t sub_24E8E3D54()
{
  result = qword_27F220FD8;
  if (!qword_27F220FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220FD8);
  }

  return result;
}

uint64_t sub_24E8E3DD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  MEMORY[0x28223BE20](v12);
  v52 = &v46 - v13;
  MEMORY[0x28223BE20](v14);
  v54 = &v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v53 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - v26;
  if (sub_24F737A14())
  {
    v49 = v27;
    v50 = a3;
    v58 = a1;
    v59 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221000, &qword_24F965720);
    sub_24F926F58();
    v28 = v55;
    v29 = v56;
    v30 = v57;
    v48 = v57;
    v51 = sub_24F928FD8();
    sub_24F929298();
    v55 = v28;
    v56 = v29;
    v57 = v30;
    v47 = *(v17 + 16);
    v47(v24, v21, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221008, &unk_24F965728);
    sub_24E602068(&qword_27F221010, &qword_27F221008, &unk_24F965728, &unk_24F962BA8);
    sub_24F929238();
    v31 = *(v17 + 8);
    v31(v21, v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8, &qword_24F9C34B0);
    v32 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v33 = swift_allocObject();
    v48 = v24;
    v34 = v47;
    v47((v33 + v32), v24, v16);
    v35 = v53;
    sub_24F929298();
    v34(v21, v33 + v32, v16);
    swift_setDeallocating();
    v31((v33 + v32), v16);
    swift_deallocClassInstance();
    sub_24F929228();
    v31(v21, v16);
    v36 = v54;
    v34(v54, v35, v16);
    (*(v17 + 56))(v36, 0, 1, v16);
    v37 = v52;
    sub_24E8E4574(v36, v52);
    v38 = *(v17 + 48);
    if (v38(v37, 1, v16) != 1)
    {
      sub_24E8E45E4(v54);
      v31(v53, v16);
      v31(v48, v16);
      v27 = v49;
      (*(v17 + 32))(v49, v37, v16);
      goto LABEL_11;
    }

    v27 = v49;
    sub_24F929298();
    sub_24E8E45E4(v54);
    v31(v53, v16);
    v31(v48, v16);
    if (v38(v37, 1, v16) != 1)
    {
      v39 = v37;
LABEL_8:
      sub_24E8E45E4(v39);
    }
  }

  else
  {
    (*(v17 + 56))(v11, 1, 1, v16);
    sub_24E8E4574(v11, v8);
    v40 = *(v17 + 48);
    if (v40(v8, 1, v16) != 1)
    {
      sub_24E8E45E4(v11);
      (*(v17 + 32))(v27, v8, v16);
      goto LABEL_11;
    }

    sub_24F928FD8();
    sub_24F929298();
    sub_24E8E45E4(v11);
    if (v40(v8, 1, v16) != 1)
    {
      v39 = v8;
      goto LABEL_8;
    }
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8, &qword_24F9C34B0);
  v41 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v42 = swift_allocObject();
  v43 = *(v17 + 16);
  v43(v42 + v41, v27, v16);
  sub_24F928FD8();
  sub_24F929298();
  v43(v21, (v42 + v41), v16);
  swift_setDeallocating();
  v44 = *(v17 + 8);
  v44(v42 + v41, v16);
  swift_deallocClassInstance();
  sub_24F929228();
  v44(v21, v16);
  return (v44)(v27, v16);
}

uint64_t sub_24E8E448C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FE0, &unk_24F965700);
  sub_24F928FD8();
  sub_24E602068(&qword_27F220FE8, &qword_27F220FE0, &unk_24F965700, MEMORY[0x277CE04B0]);
  return sub_24F925EB8();
}

uint64_t sub_24E8E4574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8E45E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E8E464C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220FE0, &unk_24F965700);
  sub_24F928FD8();
  sub_24E602068(&qword_27F220FE8, &qword_27F220FE0, &unk_24F965700, MEMORY[0x277CE04B0]);
  return swift_getOpaqueTypeConformance2();
}

double sub_24E8E46F4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = a3[3];
    v13 = a3[4];
    v14 = __swift_project_boxed_opaque_existential_1(a3, v12);
    sub_24E8E5FE4(v8, v14, a4, a5, v11, v12, v13);
  }

  return result;
}

double sub_24E8E47A0(uint64_t a1, uint64_t a2)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v7[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E601704(v7, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 40) = 0;
  }

  return result;
}

void sub_24E8E49A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_24E8E62F8(a1, &v71);
  v5 = *(&v72 + 1);
  if (!*(&v72 + 1))
  {
    sub_24E601704(&v71, &qword_27F221020, &qword_24F9657B8);
    return;
  }

  v6 = v73;
  __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
  v7 = (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(&v71);
  if (!v7)
  {
    return;
  }

  if (v7 >> 62)
  {
    v8 = sub_24F92C738();
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_5:
      *&v71 = MEMORY[0x277D84F90];
      sub_24F45814C(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
LABEL_52:
        __break(1u);
        return;
      }

      v9 = v71;
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = 0;
        do
        {
          v11 = MEMORY[0x253052270](v10, v7);
          v12 = *(v11 + 16);
          v13 = *(v11 + 24);

          swift_unknownObjectRelease();
          *&v71 = v9;
          v15 = *(v9 + 16);
          v14 = *(v9 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_24F45814C((v14 > 1), v15 + 1, 1);
            v9 = v71;
          }

          ++v10;
          *(v9 + 16) = v15 + 1;
          v16 = v9 + 16 * v15;
          *(v16 + 32) = v12;
          *(v16 + 40) = v13;
        }

        while (v8 != v10);
      }

      else
      {
        v17 = v7 + 32;
        do
        {
          v18 = *(*v17 + 16);
          v19 = *(*v17 + 24);
          *&v71 = v9;
          v20 = *(v9 + 16);
          v21 = *(v9 + 24);

          if (v20 >= v21 >> 1)
          {
            sub_24F45814C((v21 > 1), v20 + 1, 1);
            v9 = v71;
          }

          *(v9 + 16) = v20 + 1;
          v22 = v9 + 16 * v20;
          *(v22 + 32) = v18;
          *(v22 + 40) = v19;
          v17 += 8;
          --v8;
        }

        while (v8);
      }

      goto LABEL_20;
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_20:
  v23 = sub_24F45D9F8(v9);

  v25 = sub_24EDD4478(v24, v23);

  if ((v25 & 1) == 0)
  {
    v26 = *(v4 + 48);

    v28 = sub_24EBE053C(v23, v26, v27);
    v29 = *(v4 + 48);
    if (*(v23 + 16) <= *(v29 + 16) >> 3)
    {
      *&v71 = *(v4 + 48);

      sub_24F7A6B7C(v23);
      v66 = v71;
    }

    else
    {

      v66 = sub_24F7A7450(v23, v29);
    }

    if (v28[2] <= *(v23 + 16) >> 3)
    {
      *&v71 = v23;

      sub_24F7A6B7C(v28);

      v65 = v71;
    }

    else
    {

      v65 = sub_24F7A7450(v28, v23);
    }

    v30 = 0;
    v31 = 1 << *(v66 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v66 + 56);
    v34 = (v31 + 63) >> 6;
    v35 = v4;
    if (v33)
    {
      while (1)
      {
        v36 = v30;
LABEL_35:
        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v38 = (*(v66 + 48) + ((v36 << 10) | (16 * v37)));
        v39 = *v38;
        v40 = v38[1];
        ObjectType = swift_getObjectType();
        *&v71 = v39;
        *(&v71 + 1) = v40;
        v42 = *(a3 + 56);

        v42(&v71, ObjectType, a3);
        v44 = v43;

        v45 = swift_getObjectType();
        v4 = v35;
        (*(v44 + 80))(v35, v45, v44);
        swift_unknownObjectRelease();
        if (!v33)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
LABEL_31:
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v36 >= v34)
      {
        break;
      }

      v33 = *(v66 + 56 + 8 * v36);
      ++v30;
      if (v33)
      {
        v30 = v36;
        goto LABEL_35;
      }
    }

    v46 = 0;
    v47 = 1 << *(v65 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v65 + 56);
    v50 = (v47 + 63) >> 6;
    for (i = v50; v49; v50 = i)
    {
      v51 = v46;
LABEL_45:
      v52 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v53 = (*(v65 + 48) + ((v51 << 10) | (16 * v52)));
      v54 = *v53;
      v55 = v53[1];
      v56 = swift_getObjectType();
      *&v71 = v54;
      *(&v71 + 1) = v55;
      v57 = *(a3 + 56);

      v57(&v71, v56, a3);
      v59 = v58;

      v67 = swift_getObjectType();
      v60 = swift_allocObject();
      swift_weakInit();
      sub_24E8E62F8(a1, &v71);
      v61 = swift_allocObject();
      v62 = v72;
      *(v61 + 16) = v71;
      *(v61 + 32) = v62;
      *(v61 + 48) = v73;
      *(v61 + 56) = v60;
      *(v61 + 64) = a2;
      *(v61 + 72) = a3;
      v63 = *(v59 + 72);

      swift_unknownObjectRetain();
      v63(v4, sub_24E8E63F0, v61, v67, v59);

      swift_unknownObjectRelease();
    }

    while (1)
    {
      v51 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v51 >= v50)
      {

        *(v4 + 48) = v23;
        goto LABEL_48;
      }

      v49 = *(v65 + 56 + 8 * v51);
      ++v46;
      if (v49)
      {
        v46 = v51;
        goto LABEL_45;
      }
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_48:
}

void *sub_24E8E4FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 16))(v24, ObjectType, a2);
  if (!(v27 >> 60))
  {
    if (LOBYTE(v24[0]) == 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v27 >> 60 != 8 || ((v12 = v26 | v28, v13 = v24[3] | v24[2] | v24[1], v27 != 0x8000000000000000) || v12 | v24[0] | v25 | v13) && (v27 != 0x8000000000000000 || v24[0] != 4 || v12 | v25 | v13))
  {
    sub_24E88D2AC(v24);
LABEL_10:
    sub_24E8E62F8(a3, &v19);
    if (v20)
    {
      sub_24E612C80(&v19, v21);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        v16 = v22;
        v17 = v23;
        v18 = __swift_project_boxed_opaque_existential_1(v21, v22);
        sub_24E8E5374(v18, a5, a6, v15, v16, v17);
      }

      return __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      return sub_24E601704(&v19, &qword_27F221020, &qword_24F9657B8);
    }
  }

  return result;
}

void sub_24E8E5164(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v7 = *(v4 + 56);
  v6 = v4 + 56;
  v5 = v7;
  v8 = 1 << *(*(v2 + 48) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v23 = *(v2 + 48);

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = (*(v23 + 48) + ((v13 << 10) | (16 * v14)));
      v16 = *v15;
      v17 = v15[1];
      ObjectType = swift_getObjectType();
      v25[0] = v16;
      v25[1] = v17;
      v19 = *(a2 + 56);

      v19(v25, ObjectType, a2);
      v21 = v20;

      v22 = swift_getObjectType();
      (*(v21 + 80))(v24, v22, v21);
      swift_unknownObjectRelease();
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v6 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  *(v24 + 48) = MEMORY[0x277D84FA0];
}

uint64_t sub_24E8E5300()
{

  sub_24E883630(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24E8E5374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  (*(a6 + 16))(&v17, a5, a6);
  if (v18)
  {
    sub_24E612B0C(&v17, v19);
    v15 = sub_24E8E5560(v14, a2, a3, a5, a6);
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        sub_24E8E596C(v14, v19, a2, a3, a4, a5, a6);
      }

      else
      {
        sub_24E8E5FE4(0, v14, a2, a3, a4, a5, a6);
      }
    }

    else if (v15)
    {
      sub_24E8E5CA8(v14, v19, a2, a3, a4, a5, a6);
    }

    else
    {
      sub_24E8E572C(v14, v19, a2, a3, a4, a5, a6);
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_24E601704(&v17, &qword_27F2129B0, &unk_24F945320);
  }

  return (*(v11 + 8))(v14, a5);
}

uint64_t sub_24E8E5560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v13 = (*(a5 + 24))(a4, a5);
  if (v13 && (v14 = *(v13 + 121), , v14 == 1))
  {
    v15 = (*(a5 + 40))(a2, a3, a4, a5);
    if ((v16 & 1) != 0 || (v17 = v15, (v18 = (*(a5 + 8))(a4, a5)) == 0))
    {
      v22 = 3;
    }

    else
    {
      if (v18 >> 62)
      {
        v19 = sub_24F92C738();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17 >= v19 || v17 <= 0)
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      if (v17 == v19)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  (*(v9 + 8))(v12, a4);
  return v22;
}

uint64_t sub_24E8E572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25[3] = a6;
  v25[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
  type metadata accessor for JSIntentDispatcher();
  v14 = *(a5 + 16);
  sub_24F928FD8();
  sub_24F92A758();
  sub_24E643A9C(a2, &v24);
  v23[0] = 0xD00000000000001ELL;
  v23[1] = 0x800000024FA48C90;
  sub_24EB45E00(v23, v14, "GameStoreKit/CompleteMyBundleController.swift", 45, 2);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_24E615E00(v25, &v20);
  v16 = swift_allocObject();
  v16[2] = v15;
  sub_24E612C80(&v20, (v16 + 3));
  v16[8] = a3;
  v16[9] = a4;
  swift_allocObject();
  swift_weakInit();
  v17 = sub_24E74EC40();
  swift_unknownObjectRetain();

  v18 = sub_24F92BEF8();
  v21 = v17;
  v22 = MEMORY[0x277D225C0];
  *&v20 = v18;
  sub_24F92A958();

  sub_24E8E6460(v23);
  __swift_destroy_boxed_opaque_existential_1(&v20);

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_24E8E596C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v11 = *(a6 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  v15 = *(a7 + 32);
  if (v15(a6, a7))
  {
    type metadata accessor for OfferConfirmationAction(0);
    v16 = swift_dynamicCastClass();
    if (v16)
    {
LABEL_6:
      v17 = *(a7 + 24);
      v18 = v16;
      swift_retain_n();
      v19 = v17(a6, a7);
      type metadata accessor for PersonalizedOfferContext();
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;
      *(v20 + 32) = 1;

      sub_24E8E5FE4(v21, v14, a3, a4, v25, a6, a7);

      goto LABEL_11;
    }
  }

  if (v15(a6, a7))
  {
    type metadata accessor for OfferAction(0);
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      goto LABEL_6;
    }
  }

  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v22 = sub_24F92AAE8();
  __swift_project_value_buffer(v22, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A598();

  *(v25 + 40) = 0;
LABEL_11:

  return (*(v11 + 8))(v14, a6);
}

uint64_t sub_24E8E5CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v11 = *(a6 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  v15 = *(a7 + 32);
  if (v15(a6, a7))
  {
    type metadata accessor for OfferConfirmationAction(0);
    v16 = swift_dynamicCastClass();
    if (v16)
    {
LABEL_6:
      v17 = *(a7 + 24);
      v18 = v16;
      swift_retain_n();
      v19 = v17(a6, a7);
      type metadata accessor for PersonalizedOfferContext();
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;
      *(v20 + 32) = 2;

      sub_24E8E5FE4(v21, v14, a3, a4, v25, a6, a7);

      goto LABEL_11;
    }
  }

  if (v15(a6, a7))
  {
    type metadata accessor for OfferAction(0);
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      goto LABEL_6;
    }
  }

  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v22 = sub_24F92AAE8();
  __swift_project_value_buffer(v22, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A598();

  *(v25 + 40) = 0;
LABEL_11:

  return (*(v11 + 8))(v14, a6);
}

uint64_t sub_24E8E5FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28[3] = a6;
  v28[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a2, a6);
  *(a5 + 40) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_24E615E00(v28, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221018, &qword_24F9657B0);
    type metadata accessor for ProductPage(0);
    if (swift_dynamicCast())
    {
      v16 = v15 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v16 + 8);
        swift_getObjectType();
        sub_24EA80068();
        (*(*(v17 + 16) + 32))();

        swift_unknownObjectRelease();
      }

      ProductPresenter.reloadTopLockup()();
    }

    swift_unknownObjectRelease();
  }

  if (a1)
  {
    if (*(a1 + 32) > 1u)
    {
      if (*(a1 + 32) != 2)
      {
        return __swift_destroy_boxed_opaque_existential_1(v28);
      }

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v18 = sub_24F92CE08();

      if ((v18 & 1) == 0)
      {
        return __swift_destroy_boxed_opaque_existential_1(v28);
      }
    }

    v19 = (*(a7 + 24))(a6, a7);
    if (v19)
    {
      v20 = *(v19 + 24);
      v21 = *(v19 + 32);

      ObjectType = swift_getObjectType();
      v27[0] = v20;
      v27[1] = v21;
      (*(a4 + 56))(v27, ObjectType, a4);
      v24 = v23;

      v25 = swift_getObjectType();
      v27[0] = 0;
      v27[6] = 0x1000000000000000;
      (*(v24 + 64))(v27, v25, v24);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_24E8E62F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221020, &qword_24F9657B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8E6368()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E8E63A0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E8E6400()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t ProductDescription.__allocating_init(id:paragraph:developerAction:developerLinks:tags:numberOfTagRowsStandard:numberOfTagRowsAX:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a3;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 64) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0;
  sub_24E60169C(a1, &v32, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v33 + 1))
  {
    v18 = v33;
    *(v17 + 104) = v32;
    *(v17 + 120) = v18;
    *(v17 + 136) = v34;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v27 = a2;
    v28 = a4;
    v20 = a5;
    v21 = a7;
    v22 = v19;
    v23 = a6;
    v25 = v24;
    (*(v14 + 8))(v16, v13);
    v30 = v22;
    v31 = v25;
    a7 = v21;
    a5 = v20;
    a6 = v23;
    a2 = v27;
    a4 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  *(v17 + 16) = v29;
  *(v17 + 24) = a4;
  *(v17 + 32) = a2;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  return v17;
}

uint64_t ProductDescription.init(id:paragraph:developerAction:developerLinks:tags:numberOfTagRowsStandard:numberOfTagRowsAX:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v30 = a3;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + 96) = 0;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  sub_24E60169C(a1, &v33, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v28 = a2;
    v29 = a4;
    v20 = a5;
    v21 = a7;
    v22 = v19;
    v23 = a6;
    v25 = v24;
    (*(v16 + 8))(v18, v15);
    v31 = v22;
    v32 = v25;
    a7 = v21;
    a5 = v20;
    a6 = v23;
    a2 = v28;
    a4 = v29;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v26 = v37;
  *(v8 + 104) = v36;
  *(v8 + 120) = v26;
  *(v8 + 136) = v38;
  *(v8 + 16) = v30;
  *(v8 + 24) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  return v8;
}

double sub_24E8E68D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;

  return result;
}

double sub_24E8E6968(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;

  return result;
}

uint64_t sub_24E8E6A00(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F2129B0, &unk_24F945320);
  v3 = *a2;
  swift_beginAccess();
  sub_24E8E7708(v5, v3 + 72);
  return swift_endAccess();
}

uint64_t sub_24E8E6AC4(uint64_t a1)
{
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + 72);
  return swift_endAccess();
}

void *ProductDescription.deinit()
{

  sub_24E601704(v0 + 72, &qword_27F2129B0, &unk_24F945320);
  sub_24E6585F8(v0 + 104);
  return v0;
}

uint64_t ProductDescription.__deallocating_deinit()
{

  sub_24E601704(v0 + 72, &qword_27F2129B0, &unk_24F945320);
  sub_24E6585F8(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_24E8E6C68@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E8E6D44(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24E8E6CD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 72, a1, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24E8E6D44(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v83 = sub_24F91F6B8();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v86 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = &v77 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v77 - v10;
  v85 = sub_24F928388();
  v92 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v79 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = &v77 - v14;
  MEMORY[0x28223BE20](v15);
  v84 = &v77 - v16;
  MEMORY[0x28223BE20](v17);
  v90 = &v77 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v77 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v77 - v23;
  sub_24F929608();
  sub_24F928398();
  v91 = v5;
  v25 = *(v5 + 16);
  v26 = v100;
  v25(v11, v100, v4);
  v88 = v24;
  sub_24F929548();
  v27 = v93;
  v25(v93, v26, v4);
  sub_24F928398();
  v28 = v27;
  v29 = v90;
  v89 = v5 + 16;
  v25(v11, v28, v4);
  v30 = a1;
  type metadata accessor for RibbonBarItem(0);
  sub_24E8E79E4(&qword_27F221030, 255, type metadata accessor for RibbonBarItem, &protocol conformance descriptor for RibbonBarItem);
  v78 = v11;
  v31 = sub_24F92B698();
  sub_24F928398();
  v32 = sub_24F928348();
  if (v33)
  {
    *&v96 = v32;
    *(&v96 + 1) = v33;
    sub_24F92C7F8();
    v34 = v29;
    v35 = v85;
    v90 = *(v92 + 8);
    (v90)(v34, v85);
    v36 = v91;
  }

  else
  {
    v37 = v81;
    sub_24F91F6A8();
    v38 = sub_24F91F668();
    v39 = v31;
    v40 = v38;
    v80 = v39;
    v41 = v4;
    v43 = v42;
    (*(v82 + 8))(v37, v83);
    *&v96 = v40;
    *(&v96 + 1) = v43;
    v4 = v41;
    v36 = v91;
    v31 = v80;
    sub_24F92C7F8();
    v44 = v29;
    v35 = v85;
    v90 = *(v92 + 8);
    (v90)(v44, v85);
  }

  v45 = v84;
  sub_24F928398();
  v46 = v86;
  v25(v86, v100, v4);
  v47 = v87;
  v48 = sub_24F0151C0(v45, v46);
  if (v47)
  {

    v49 = *(v36 + 8);
    v49(v100, v4);
    (v90)(v30, v35);
    sub_24E601704(v99, &qword_27F235830, &qword_24F93B8C0);
    v49(v93, v4);
    sub_24E601704(v88, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v86 = v48;
    v87 = 0;
    v80 = v31;
    v50 = v30;
    type metadata accessor for Action(0);
    v84 = v25;
    v51 = v35;
    sub_24F928398();
    v52 = v100;
    v85 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v100);
    v53 = v35;
    v54 = v90;
    (v90)(v21, v53);
    sub_24F928398();
    v92 = v4;
    (v84)(v78, v52, v4);
    type metadata accessor for ProductPageLink();
    sub_24E8E79E4(&qword_27F221038, 255, type metadata accessor for ProductPageLink, &protocol conformance descriptor for ProductPageLink);
    v89 = sub_24F92B698();
    v55 = v77;
    sub_24F928398();
    v56 = sub_24F928258();
    v58 = v57;
    v54(v55, v51);
    v59 = 2;
    if ((v58 & 1) == 0)
    {
      v59 = v56;
    }

    v84 = v59;
    v60 = v79;
    v61 = v50;
    sub_24F928398();
    v62 = sub_24F928258();
    v64 = v63;
    v65 = v51;
    v54(v60, v51);
    if (v64)
    {
      v66 = 5;
    }

    else
    {
      v66 = v62;
    }

    type metadata accessor for ProductDescription();
    v35 = swift_allocObject();
    *(v35 + 64) = 0u;
    *(v35 + 80) = 0u;
    *(v35 + 96) = 0;
    sub_24E60169C(v99, &v96, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v97 + 1))
    {
      v67 = v97;
      *(v35 + 104) = v96;
      *(v35 + 120) = v67;
      *(v35 + 136) = v98;
    }

    else
    {
      v68 = v81;
      sub_24F91F6A8();
      v69 = sub_24F91F668();
      v71 = v70;
      (*(v82 + 8))(v68, v83);
      v94 = v69;
      v95 = v71;
      sub_24F92C7F8();
      sub_24E601704(&v96, &qword_27F235830, &qword_24F93B8C0);
    }

    v72 = v92;
    v73 = *(v91 + 8);
    v73(v100, v92);
    (v90)(v61, v65);
    sub_24E601704(v99, &qword_27F235830, &qword_24F93B8C0);
    v73(v93, v72);
    sub_24E601704(v88, &qword_27F213E68, &unk_24F93BC80);
    v74 = v89;
    *(v35 + 16) = v85;
    *(v35 + 24) = v74;
    v75 = v80;
    *(v35 + 32) = v86;
    *(v35 + 40) = v75;
    *(v35 + 48) = v84;
    *(v35 + 56) = v66;
  }

  return v35;
}

uint64_t sub_24E8E7708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8E77E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_24E8E7834@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 72, a2, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24E8E79E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t ArtworkLoadingCollectionElementsObserver.__allocating_init(componentTypeMappingProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_24E612C80(a1, v2 + 16);
  return v2;
}

uint64_t sub_24E8E7A9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ArtworkLoader();
  sub_24F928FD8();
  sub_24F92A758();
  v6 = v9[0];
  v9[3] = sub_24E8E7C80();
  v9[0] = a1;
  v7 = a1;
  tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)(v9, v6, a4, 1);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t ArtworkLoadingCollectionElementsObserver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_24E8E7B98(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  type metadata accessor for ArtworkLoader();
  sub_24F928FD8();
  sub_24F92A758();
  v5 = v9[0];
  sub_24E615E00(v10, v9);
  v8[3] = sub_24E8E7C80();
  v8[0] = a1;
  v6 = a1;
  tryToFetch(artworkFor:into:on:asPartOf:)(v9, v8, v5, a3);

  sub_24E8E800C(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

unint64_t sub_24E8E7C80()
{
  result = qword_27F221040;
  if (!qword_27F221040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F221040);
  }

  return result;
}

void sub_24E8E7CCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ItemLayoutContext(0) - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_24E8E7F4C(v11, v9);
      v13 = v3[5];
      v14 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v13);
      v15 = (*(v14 + 16))(v9, a2, v13, v14);
      if (v15)
      {
        v16 = v15;
        v17 = swift_conformsToProtocol2();
        if (v17)
        {
          v18 = v17;
          type metadata accessor for ArtworkLoader();
          sub_24F928FD8();
          sub_24F92A758();
          (*(v18 + 16))(v9, v19[1], a2, v16, v18);
        }
      }

      sub_24E8E7FB0(v9);
      v11 += v12;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_24E8E7F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemLayoutContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8E7FB0(uint64_t a1)
{
  v2 = type metadata accessor for ItemLayoutContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E8E800C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2171D0, &unk_24F980290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E8E8074(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_24F457B3C(0, v1, 0);
    v2 = v12;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24F457B3C((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_24E8E817C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_24F457B94(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24F457B94((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_24E612B0C(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_24E8E827C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24F92C738();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_24F45816C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x253052270](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_24F45816C((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for Action(0);
        v15 = sub_24E8EA140(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_24E612C80(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_24F45816C((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for Action(0);
        v15 = sub_24E8EA140(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_24E612C80(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_24E8E849C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24F92C738();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_24F45832C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x253052270](i, a1);
        type metadata accessor for MixedMediaLockup(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221090, &unk_24F965A18);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_24F45832C((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_24E8EA128(v11, (v3 + 48 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      type metadata accessor for MixedMediaLockup(0);
      do
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221090, &unk_24F965A18);
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_24F45832C((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_24E8EA128(v11, (v3 + 48 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E8E86A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_24F458498(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D83B88];
    v6 = MEMORY[0x277D83C10];
    do
    {
      v8 = *v4++;
      v7 = v8;
      v15 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_24F458498((v9 > 1), v10 + 1, 1);
        v2 = v15;
      }

      v13 = v5;
      v14 = v6;
      *&v12 = v7;
      *(v2 + 16) = v10 + 1;
      sub_24E612C80(&v12, v2 + 40 * v10 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_24E8E8794(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24F92C738();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_24F457A9C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x253052270](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_24F457A9C((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for ImpressionableArtwork(0);
        v15 = sub_24E8EA140(&qword_27F221088, type metadata accessor for ImpressionableArtwork, &protocol conformance descriptor for ImpressionableArtwork);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_24E612C80(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_24F457A9C((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for ImpressionableArtwork(0);
        v15 = sub_24E8EA140(&qword_27F221088, type metadata accessor for ImpressionableArtwork, &protocol conformance descriptor for ImpressionableArtwork);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_24E612C80(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E8E89B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_24F457B3C(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24F457B3C((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_24E8E8AB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v21 = MEMORY[0x277D84F90];
    sub_24F458880(0, v1, 0);
    v2 = v21;
    v4 = a1 + 72;
    do
    {
      sub_24E615E00(v4 - 40, v13);
      sub_24E614DB0(v4, v14);
      v14[2] = *(v4 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210A0, &unk_24F9FAD90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210A8, &qword_24F965A70);
      swift_dynamicCast();
      v21 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24F458880((v5 > 1), v6 + 1, 1);
        v2 = v21;
      }

      v4 += 64;
      *(v2 + 16) = v6 + 1;
      v7 = v2 + 88 * v6;
      v8 = v16;
      *(v7 + 32) = v15;
      *(v7 + 48) = v8;
      v9 = v17;
      v10 = v18;
      v11 = v19;
      *(v7 + 112) = v20;
      *(v7 + 80) = v10;
      *(v7 + 96) = v11;
      *(v7 + 64) = v9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_24E8E8C20(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24F92C738();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_24F458B1C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x253052270](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_24F458B1C((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for Artwork(0);
        v15 = &off_2861FE4D8;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_24E612C80(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_24F458B1C((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for Artwork(0);
        v15 = &off_2861FE4D8;
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_24E612C80(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E8E8DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_24F458C20(0, v1, 0);
    v4 = a1 + 56;
    v2 = v13;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DC8, &unk_24F93BA10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221098, &qword_24F965A28);
      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24F458C20((v5 > 1), v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = (v13 + 32 * v6);
      v7[4] = v9;
      v7[5] = v10;
      v7[6] = v11;
      v7[7] = v12;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_24E8E8F28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_24F458DE8(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221080, &qword_24F965A10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24F458DE8((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = (v12 + 48 * v6);
      v7[3] = v10;
      v7[4] = v11;
      v7[2] = v9;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_24E8E9070(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_24F458DE8(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221078, &unk_24F965A00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24F458DE8((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = (v12 + 48 * v6);
      v7[3] = v10;
      v7[4] = v11;
      v7[2] = v9;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_24E8E91C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_24F458EF0(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_24F458EF0((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for OneColumnGroup;
      v12 = &off_2861D1EC8;
      LOBYTE(v10) = v5;
      *(v2 + 16) = v8 + 1;
      sub_24E612C80(&v10, v2 + 40 * v8 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_24E8E92B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_24F458EF0(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 34);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_24F458EF0((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for TwoColumnGroup;
      v12 = &off_2861D1EE0;
      LOWORD(v10) = v5;
      BYTE2(v10) = v6;
      *(v2 + 16) = v8 + 1;
      sub_24E612C80(&v10, v2 + 40 * v8 + 32);
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_24E8E93AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_24F458EF0(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v13 = v2;
      v7 = *(v2 + 16);
      v8 = *(v2 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_24F458EF0((v8 > 1), v7 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for ThreeColumnGroup;
      v12 = &off_2861D1EB0;
      *&v10 = v5;
      *(v2 + 16) = v7 + 1;
      sub_24E612C80(&v10, v2 + 40 * v7 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_24E8E94A4(uint64_t a1)
{
  v2 = type metadata accessor for LinkPlatter(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24F457A9C(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_24E8EA068(v8, v5);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_24F457A9C((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_24E8EA140(&qword_27F21ACD0, type metadata accessor for LinkPlatter, &unk_24FA37FAC);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_24E8EA068(v5, boxed_opaque_existential_1);
      *(v7 + 16) = v11 + 1;
      sub_24E612C80(&v14, v7 + 40 * v11 + 32);
      sub_24E8EA0CC(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_24E8E966C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24F92C738();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_24F4581AC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x277D22A58];
      do
      {
        v7 = MEMORY[0x253052270](v5, a1);
        v19 = v3;
        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_24F4581AC((v8 > 1), v9 + 1, 1);
          v3 = v19;
        }

        ++v5;
        v17 = type metadata accessor for ArtworkView();
        v18 = v6;
        *&v16 = v7;
        *(v3 + 16) = v9 + 1;
        sub_24E612C80(&v16, v3 + 40 * v9 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = MEMORY[0x277D22A58];
      do
      {
        v12 = *v10;
        v19 = v3;
        v13 = *(v3 + 16);
        v14 = *(v3 + 24);
        v15 = v12;
        if (v13 >= v14 >> 1)
        {
          sub_24F4581AC((v14 > 1), v13 + 1, 1);
          v3 = v19;
        }

        v17 = type metadata accessor for ArtworkView();
        v18 = v11;
        *&v16 = v15;
        *(v3 + 16) = v13 + 1;
        sub_24E612C80(&v16, v3 + 40 * v13 + 32);
        ++v10;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_24E8E9838(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_24F92C738();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_24F457B94(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x253052270](i, a1);
        sub_24E69A5C4(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_24F457B94((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_24E612B0C(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_24E69A5C4(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_24F457B94((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_24E612B0C(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t CompoundActionImplementation.init()()
{
  sub_24F928FD8();

  return sub_24F92A218();
}

uint64_t CompoundActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F928AD8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928DD8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v3, v9);
  sub_24E8E827C(*(a1 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions));
  sub_24F928DC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221048, &qword_24F965990);
  v12 = sub_24F92A208();
  (*(v8 + 8))(v11, v7);
  return v12;
}

uint64_t sub_24E8E9C70(uint64_t *a1, uint64_t a2)
{
  v3 = sub_24F928AD8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928DD8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  (*(v4 + 16))(v6, v12 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v3, v9);
  sub_24E8E827C(*(v12 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions));
  sub_24F928DC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221048, &qword_24F965990);
  v13 = sub_24F92A208();
  (*(v8 + 8))(v11, v7);
  return v13;
}

uint64_t sub_24E8E9E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221048, &qword_24F965990);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E8E9EDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221048, &qword_24F965990);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CompoundActionImplementation(uint64_t a1)
{
  result = qword_27F221058;
  if (!qword_27F221058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E8E9FA4(uint64_t a1)
{
  sub_24E8EA010(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24E8EA010(uint64_t a1)
{
  if (!qword_27F221068)
  {
    sub_24F928FD8();
    v1 = sub_24F92A228();
    if (!v2)
    {
      atomic_store(v1, &qword_27F221068);
    }
  }
}

uint64_t sub_24E8EA068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkPlatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8EA0CC(uint64_t a1)
{
  v2 = type metadata accessor for LinkPlatter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_24E8EA128(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_24E8EA140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E8EA19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DD8, &unk_24F9411B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E8EA27C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DD8, &unk_24F9411B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for InlineButton(uint64_t a1)
{
  result = qword_27F2210B0;
  if (!qword_27F2210B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E8EA390(uint64_t a1)
{
  sub_24E66EC98(319);
  if (v1 <= 0x3F)
  {
    sub_24E8EA41C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E8EA41C(uint64_t a1)
{
  if (!qword_27F218180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22C070, &unk_24F947CB0);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F218180);
    }
  }
}

uint64_t sub_24E8EA49C@<X0>(unint64_t *a1@<X8>)
{
  v62 = a1;
  v1 = sub_24F924B38();
  v64 = *(v1 - 8);
  v65 = v1;
  MEMORY[0x28223BE20](v1);
  v63 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F9271D8();
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9241F8();
  v6 = *(v5 - 8);
  v59 = v5;
  v60 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InlineButton(0);
  v10 = v9 - 8;
  v57 = *(v9 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210C0, &qword_24F965AE0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210C8, &qword_24F965AE8);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  v23 = sub_24F9232F8();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = *(v10 + 28);
  v25 = v58;
  sub_24E60169C(v58 + v24, v68, qword_27F21B590, &unk_24F93BE30);
  sub_24E8EB054(v25, &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v27 = swift_allocObject();
  sub_24E8EB1F0(&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210D0, &qword_24F965AF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2210D8, &qword_24F965AF8);
  v29 = sub_24E8EB2C4();
  v66 = v28;
  v67 = v29;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  sub_24F9241E8();
  sub_24E602068(&qword_27F221108, &qword_27F2210C0, &qword_24F965AE0, MEMORY[0x277D7EB00]);
  sub_24E8EB434();
  v30 = v59;
  sub_24F926178();
  v31 = v8;
  v32 = v62;
  (*(v60 + 8))(v31, v30);
  (*(v16 + 8))(v18, v15);
  v22[*(v20 + 44)] = 0;
  v34 = v64;
  v33 = v65;
  v35 = *(v64 + 104);
  v36 = v61;
  v35(v61, *MEMORY[0x277CE0118], v65);
  v37 = v63;
  v35(v63, *MEMORY[0x277CE0128], v33);
  LOBYTE(v35) = sub_24F924B28();
  (*(v34 + 8))(v37, v33);
  sub_24E757EE8(v36);
  v38 = ((v35 & 1) == 0) | 0xC018000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v39 = sub_24F926D08();

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221110, &qword_24F965B10);
  sub_24E8EB48C(v22, v32 + v40[9]);
  *v32 = v38;
  v32[1] = v39;
  v41 = v32 + v40[10];

  *v41 = sub_24F923398() & 1;
  *(v41 + 1) = v42;
  v41[16] = v43 & 1;
  v44 = v32 + v40[11];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v45 = qword_27F24E488;
  v46 = sub_24F923398();
  v48 = v47;
  v50 = v49;
  v51 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221118, &qword_24F965B40) + 36);
  *v51 = v45;
  v51[8] = v46 & 1;
  *(v51 + 2) = v48;
  v51[24] = v50 & 1;
  LOBYTE(v45) = sub_24F923398();
  v53 = v52;
  LOBYTE(v48) = v54;

  sub_24E8EB504(v22);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221120, &qword_24F965B48);
  v56 = v32 + *(result + 36);
  *v56 = v45 & 1;
  *(v56 + 1) = v53;
  v56[16] = v48 & 1;
  return result;
}

uint64_t sub_24E8EAB78(uint64_t a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210D8, &qword_24F965AF8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0x4018000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221128, &qword_24F965B50);
  sub_24E8EAD88(a1, &v8[*(v9 + 44)]);
  sub_24F925898();
  v10 = sub_24F9258E8();

  KeyPath = swift_getKeyPath();
  v12 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210F0, &qword_24F965B00) + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  LOBYTE(KeyPath) = sub_24F9257F8();
  sub_24F923318();
  v13 = &v8[*(v6 + 36)];
  *v13 = KeyPath;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_24F9248B8();
  sub_24E8EB2C4();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v8, &qword_27F2210D8, &qword_24F965AF8);
}

uint64_t sub_24E8EAD88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214418, &qword_24F93CB90);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v33 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v30[-v8];
  v10 = (a1 + *(type metadata accessor for InlineButton(0) + 24));
  v11 = v10[1];
  v34 = *v10;
  v35 = v11;
  sub_24E600AEC();

  v12 = sub_24F925E18();
  v14 = v13;
  v16 = v15;
  v34 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F925C58();
  v19 = v18;
  v31 = v20;
  v32 = v21;
  sub_24E600B40(v12, v14, v16 & 1);

  v22 = sub_24F926DF8();
  LODWORD(v14) = sub_24F9251C8();
  v23 = v9 + *(v5 + 44);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v25 = *MEMORY[0x277CE13B8];
  v26 = sub_24F927748();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  *v23 = v14;
  *v9 = v22;
  v27 = v33;
  sub_24E60169C(v9, v33, &qword_27F214418, &qword_24F93CB90);
  *a2 = v17;
  *(a2 + 8) = v19;
  LOBYTE(v22) = v31 & 1;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v32;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221130, &qword_24F965B88);
  sub_24E60169C(v27, a2 + *(v28 + 48), &qword_27F214418, &qword_24F93CB90);
  sub_24E5FD138(v17, v19, v22);

  sub_24E601704(v9, &qword_27F214418, &qword_24F93CB90);
  sub_24E601704(v27, &qword_27F214418, &qword_24F93CB90);
  sub_24E600B40(v17, v19, v22);
}

uint64_t sub_24E8EB054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8EB0B8()
{
  v1 = type metadata accessor for InlineButton(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F924C48();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = (v0 + v2 + *(v1 + 20));
  if (v4[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return swift_deallocObject();
}

uint64_t sub_24E8EB1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8EB254()
{
  v1 = *(type metadata accessor for InlineButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24E8EAB78(v2);
}

unint64_t sub_24E8EB2C4()
{
  result = qword_27F2210E0;
  if (!qword_27F2210E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2210D8, &qword_24F965AF8);
    sub_24E8EB350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2210E0);
  }

  return result;
}

unint64_t sub_24E8EB350()
{
  result = qword_27F2210E8;
  if (!qword_27F2210E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2210F0, &qword_24F965B00);
    sub_24E602068(&qword_27F2210F8, &qword_27F221100, &qword_24F965B08, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2210E8);
  }

  return result;
}

unint64_t sub_24E8EB434()
{
  result = qword_27F212838;
  if (!qword_27F212838)
  {
    sub_24F9241F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212838);
  }

  return result;
}

uint64_t sub_24E8EB48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210C8, &qword_24F965AE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8EB504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210C8, &qword_24F965AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E8EB578()
{
  result = qword_27F221138;
  if (!qword_27F221138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221120, &qword_24F965B48);
    sub_24E8EB604();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221138);
  }

  return result;
}

unint64_t sub_24E8EB604()
{
  result = qword_27F221140;
  if (!qword_27F221140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221118, &qword_24F965B40);
    sub_24E602068(&qword_27F221148, &qword_27F221110, &qword_24F965B10, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221140);
  }

  return result;
}

Swift::String __swiftcall String.removingNQML(configuration:)(GameStoreKit::NqmlConfiguration *configuration)
{
  v1 = *&configuration->listItemStyle.super.isa;
  listItemBullet = configuration->listItemBullet;
  v25 = v1;
  v26 = *&configuration->orderedListItemBulletFormat._object;
  v2 = *&configuration->font.super.isa;
  newline = configuration->newline;
  v23 = v2;
  v3 = type metadata accessor for RemovingNQMLStringGenerator();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_accumulator];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_didParseEverything] = 1;
  v6 = objc_allocWithZone(ASKNQMLParser);

  sub_24E8EB83C(&newline, v21);
  v7 = sub_24F92B098();

  v8 = [v6 initWithString_];

  *&v4[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] = v8;
  v9 = &v4[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_configuration];
  *v9 = newline;
  v10 = v26;
  v12 = v23;
  v11 = listItemBullet;
  v9[3] = v25;
  v9[4] = v10;
  v9[1] = v12;
  v9[2] = v11;
  v20.receiver = v4;
  v20.super_class = v3;
  v13 = [(GameStoreKit::NqmlConfiguration *)&v20 init];
  [*(&v13->newline._countAndFlagsBits + OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser) setDelegate_];
  v14 = sub_24E8EB9E0();
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t sub_24E8EB898()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F221150);
  __swift_project_value_buffer(v4, qword_27F221150);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24E8EB9E0()
{
  v1 = sub_24F91EAA8();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v0 + OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser) parse];
  v6 = (v0 + OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_accumulator);
  swift_beginAccess();
  v7 = v6[1];
  v12[1] = *v6;
  v12[2] = v7;

  sub_24F91EA68();
  sub_24E600AEC();
  v8 = sub_24F92C538();
  v10 = v9;
  (*(v2 + 8))(v5, v1);

  *v6 = v8;
  v6[1] = v10;

  return v8;
}

id sub_24E8EBD38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemovingNQMLStringGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E8EBE1C(uint64_t a1)
{
  if (qword_27F20FFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F221150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v6[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E857CC8(v6);
  sub_24F92A5A8();

  *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_didParseEverything) = 0;
  return result;
}

unint64_t sub_24E8EBFEC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_accumulator);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_24F26D234(v4, v5);
  v8 = v7;

  if (!v8)
  {
    goto LABEL_10;
  }

  if (sub_24F92AF18())
  {

LABEL_9:
    sub_24E8EC218();
    sub_24F92BC98();
    goto LABEL_10;
  }

  result = sub_24F26DAFC(v6, v8);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
    return result;
  }

  v10 = result;

  v11 = (v10 - 14) <= 0xFFFFFFFB && (v10 - 8232) >= 2;
  if (!v11 || v10 == 133)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (qword_27F210F40 != -1)
  {
    swift_once();
  }

  v13 = a1;
  v12 = a2;
  if (qword_27F39DBA0)
  {
    v14 = qword_27F39DBA0;
    v15 = sub_24F92B098();
    v16 = sub_24F92B228();

    v17 = sub_24F92B098();
    v18 = [v14 stringByReplacingMatchesInString:v15 options:0 range:0 withTemplate:{v16, v17}];

    v13 = sub_24F92B0D8();
    v12 = v19;
  }

  swift_beginAccess();
  MEMORY[0x253050C20](v13, v12);
  swift_endAccess();
}

unint64_t sub_24E8EC218()
{
  result = qword_27F2211F0;
  if (!qword_27F2211F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2211F0);
  }

  return result;
}

uint64_t AppShowcaseLockupViewLayout.init(metrics:iconView:wordmarkView:titleText:descriptionText:offerButton:offerText:crossLinkTitleText:crossLinkSubtitleText:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = type metadata accessor for AppShowcaseLockupViewLayout(0);
  sub_24E8EC434(a1, a9 + *(v18 + 48));
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F922268();
  sub_24E60169C(a3, a9 + 40, &qword_27F229780, &unk_24F965BB0);
  sub_24E615E00(a4, a9 + 80);
  sub_24E615E00(a5, a9 + 120);
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  sub_24F922268();
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  sub_24E601704(a3, &qword_27F229780, &unk_24F965BB0);
  sub_24E8EC4B8(a1);
  sub_24E612C80(a7, a9 + 200);
  v19 = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = v19;
  *(a9 + 272) = *(a8 + 32);
  v20 = *(a10 + 16);
  *(a9 + 280) = *a10;
  *(a9 + 296) = v20;
  *(a9 + 312) = *(a10 + 32);
  __swift_destroy_boxed_opaque_existential_1(a6);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_24E8EC434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8EC4B8(uint64_t a1)
{
  v2 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppShowcaseLockupViewLayout.Metrics.init(isCenterAligned:iconSize:wordmarkSpace:titleSpace:titleWithWordmarkSpace:descriptionSpace:descriptionBottomBufferSpace:offerLabelSpace:offerLabelBottomBufferSpace:offerButtonSize:crossLinkTitleSpace:crossLinkTitleWithWordmarkSpace:crossLinkSubtitleSpace:)@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16)
{
  *a9 = a1;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  sub_24E612C80(a2, a9 + 24);
  v23 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  v24 = v23[7];
  v25 = sub_24F922628();
  v26 = *(*(v25 - 8) + 32);
  v26(a9 + v24, a3, v25);
  sub_24E612C80(a4, a9 + v23[8]);
  v26(a9 + v23[9], a5, v25);
  v26(a9 + v23[10], a6, v25);
  v26(a9 + v23[11], a7, v25);
  v26(a9 + v23[12], a8, v25);
  v27 = (a9 + v23[13]);
  *v27 = a12;
  v27[1] = a13;
  sub_24E612C80(a14, a9 + v23[14]);
  sub_24E612C80(a15, a9 + v23[15]);
  v28 = a9 + v23[16];

  return sub_24E612C80(a16, v28);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.wordmarkSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));

  return sub_24E612C80(a1, v1 + 24);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 28);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 28);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.titleWithWordmarkSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 32);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.descriptionSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 36);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.descriptionSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 36);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.descriptionBottomBufferSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 40);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.descriptionBottomBufferSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 40);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerLabelSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 44);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerLabelSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 44);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerLabelBottomBufferSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 48);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerLabelBottomBufferSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 48);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  v6 = (v2 + *(result + 52));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppShowcaseLockupViewLayout.Metrics.crossLinkTitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 56);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.crossLinkTitleWithWordmarkSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 60);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.crossLinkSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 64);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t AppShowcaseLockupViewLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppShowcaseLockupViewLayout(0) + 48);

  return sub_24E8EC434(v3, a1);
}

double AppShowcaseLockupViewLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_24F92CDB8();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
  v22 = a2;
  *&v21[1] = a3;
  sub_24F922288();
  v21[0] = v9;
  v10 = v3 + *(type metadata accessor for AppShowcaseLockupViewLayout(0) + 48);
  v11 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  v12 = sub_24F922628();
  v13 = MEMORY[0x277D22798];
  sub_24F9223C8();
  sub_24F9223C8();
  sub_24E60169C((v3 + 5), &v25, &qword_27F229780, &unk_24F965BB0);
  if (v26)
  {
    sub_24E612C80(&v25, v27);
    __swift_project_boxed_opaque_existential_1(v27, v28);
    if ((sub_24F922238() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v10 + 3, *(v10 + 6));
      sub_24F9220E8();
      sub_24F9223A8();
      (*(v23 + 8))(v8, v24);
    }

    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_24E601704(&v25, &qword_27F229780, &unk_24F965BB0);
  }

  v28 = v12;
  v29 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  v15 = sub_24F922238();
  v16 = 48;
  if (v15)
  {
    v16 = 40;
  }

  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, &v10[*(v11 + v16)], v12);
  __swift_project_boxed_opaque_existential_1(v27, v28);
  sub_24F9220E8();
  sub_24F9223A8();
  v21[0] = v10;
  v17 = v24;
  v18 = *(v23 + 8);
  v18(v8, v24);
  __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  if ((sub_24F922238() & 1) == 0)
  {
    sub_24F9220E8();
    sub_24F9223A8();
    v18(v8, v17);
  }

  __swift_project_boxed_opaque_existential_1(v3 + 20, v3[23]);
  v19 = v22;
  sub_24F922298();
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v19;
}

uint64_t AppShowcaseLockupViewLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v201 = a1;
  v191 = a2;
  v190 = sub_24F9221D8();
  v12 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v170 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v169 - v15;
  v193 = sub_24F922868();
  v200 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v194 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_24F922888();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v169 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v198 = &v169 - v20;
  v183 = sub_24F92CDB8();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_24F922848();
  v202 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v23 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v179 = &v169 - v25;
  v204 = sub_24F9227F8();
  v26 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v203 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24F922838();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v7 + *(type metadata accessor for AppShowcaseLockupViewLayout(0) + 48);
  v185 = v29;
  v33 = *(v29 + 104);
  v34 = MEMORY[0x277D22858];
  if (!*v32)
  {
    v34 = MEMORY[0x277D22848];
  }

  v35 = *v34;
  v186 = v28;
  v33(v31, v35, v28);
  sub_24E60169C((v7 + 5), &v218, &qword_27F229780, &unk_24F965BB0);
  v36 = MEMORY[0x277D85048];
  v199 = v7;
  v206 = v31;
  v207 = v32;
  v189 = v12;
  v195 = v16;
  v205 = v26;
  v184 = v23;
  if (!v219)
  {
    sub_24E601704(&v218, &qword_27F229780, &unk_24F965BB0);
    goto LABEL_7;
  }

  sub_24E612C80(&v218, &v221);
  __swift_project_boxed_opaque_existential_1(&v221, v222);
  if (sub_24F922238())
  {
    __swift_destroy_boxed_opaque_existential_1(&v221);
    v26 = v205;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740, &unk_24F965BC0);
    v177 = v202[9];
    v37 = (*(v202 + 80) + 32) & ~*(v202 + 80);
    v178 = 2 * v177;
    v38 = swift_allocObject();
    v39.n128_u64[1] = 6;
    *(v38 + 16) = xmmword_24F9479A0;
    v180 = v38;
    v40 = v38 + v37;
    v39.n128_u64[0] = *(v32 + 2);
    v222 = v36;
    v223 = MEMORY[0x277D225F8];
    v221 = v39.n128_u64[0];
    *&v218 = MEMORY[0x277D84F90];
    v175 = sub_24E8EF510(v39);
    v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
    v176 = sub_24E8EF568();
    v41 = v203;
    v42 = v204;
    sub_24F92C6A8();
    v172 = v40;
    v7 = v199;
    sub_24F922818();
    v192 = *(v26 + 8);
    v192(v41, v42);
    __swift_destroy_boxed_opaque_existential_1(&v221);
    v43 = v7[13];
    v44 = v7[14];
    v45 = __swift_project_boxed_opaque_existential_1(v7 + 10, v43);
    v222 = v43;
    v223 = *(v44 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v221);
    (*(*(v43 - 8) + 16))(boxed_opaque_existential_1, v45, v43);
    v174 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
    v47 = *(v174 + 28);
    v48 = sub_24F922628();
    v219 = v48;
    v220 = MEMORY[0x277D22798];
    v49 = __swift_allocate_boxed_opaque_existential_1(&v218);
    v50 = *(v48 - 8);
    v171 = *(v50 + 16);
    v173 = v50 + 16;
    v171(v49, &v207[v47], v48);
    *&v215 = MEMORY[0x277D84F90];
    sub_24F92C6A8();
    sub_24F922818();
    v192(v41, v42);
    __swift_destroy_boxed_opaque_existential_1(&v218);
    __swift_destroy_boxed_opaque_existential_1(&v221);
    v51 = v7[18];
    v52 = v7[19];
    v53 = __swift_project_boxed_opaque_existential_1(v7 + 15, v51);
    v222 = v51;
    v223 = *(v52 + 8);
    v54 = __swift_allocate_boxed_opaque_existential_1(&v221);
    v55 = v53;
    v56 = MEMORY[0x277D22798];
    (*(*(v51 - 8) + 16))(v54, v55, v51);
    v57 = *(v174 + 36);
    v219 = v48;
    v220 = v56;
    v58 = __swift_allocate_boxed_opaque_existential_1(&v218);
    v171(v58, &v207[v57], v48);
    *&v215 = MEMORY[0x277D84F90];
    sub_24F92C6A8();
    sub_24F922818();
    v59 = v42;
    v60 = v207;
    v192(v41, v59);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740, &unk_24F965BC0);
  v192 = v202[9];
  v61 = (*(v202 + 80) + 32) & ~*(v202 + 80);
  v62 = swift_allocObject();
  v63.n128_u64[1] = 8;
  *(v62 + 16) = xmmword_24F93FC20;
  v180 = v62;
  v177 = v62 + v61;
  v63.n128_u64[0] = *(v32 + 2);
  v219 = v36;
  v220 = MEMORY[0x277D225F8];
  *&v218 = v63.n128_u64[0];
  *&v215 = MEMORY[0x277D84F90];
  v64 = sub_24E8EF510(v63);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
  v178 = sub_24E8EF568();
  v66 = v203;
  v67 = v204;
  v196 = v64;
  sub_24F92C6A8();
  sub_24F922818();
  v68 = v205 + 8;
  v176 = *(v205 + 8);
  v176(v66, v67);
  __swift_destroy_boxed_opaque_existential_1(&v218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260, &qword_24F965BD0);
  v174 = v68;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_24F93DE60;
  sub_24F9227E8();
  *&v218 = v69;
  v175 = v65;
  sub_24F92C6A8();
  v70 = v192;
  sub_24F922818();
  v71 = v176;
  v176(v66, v67);
  v173 = 2 * v70;
  v72 = v7[13];
  v73 = v7[14];
  v74 = __swift_project_boxed_opaque_existential_1(v7 + 10, v72);
  v219 = v72;
  v220 = *(v73 + 8);
  v75 = __swift_allocate_boxed_opaque_existential_1(&v218);
  (*(*(v72 - 8) + 16))(v75, v74, v72);
  v76 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  *&v215 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v71(v66, v67);
  __swift_destroy_boxed_opaque_existential_1(&v218);
  v77 = v7[18];
  v78 = v7[19];
  v79 = __swift_project_boxed_opaque_existential_1(v7 + 15, v77);
  v219 = v77;
  v80 = *(v78 + 8);
  v60 = v207;
  v220 = v80;
  v81 = __swift_allocate_boxed_opaque_existential_1(&v218);
  (*(*(v77 - 8) + 16))(v81, v79, v77);
  v82 = *(v76 + 36);
  v48 = sub_24F922628();
  v216 = v48;
  v83 = MEMORY[0x277D22798];
  v217 = MEMORY[0x277D22798];
  v84 = __swift_allocate_boxed_opaque_existential_1(&v215);
  (*(*(v48 - 8) + 16))(v84, &v60[v82], v48);
  *&v212 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v176(v66, v67);
  v56 = v83;
  __swift_destroy_boxed_opaque_existential_1(&v215);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(&v218);
  __swift_destroy_boxed_opaque_existential_1(&v221);
  sub_24F922628();
  v222 = v48;
  v223 = v56;
  v85 = __swift_allocate_boxed_opaque_existential_1(&v221);
  __swift_project_boxed_opaque_existential_1(v7 + 25, v7[28]);
  v86 = sub_24F922238();
  v87 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  v88 = v87;
  v89 = *(*(v48 - 8) + 16);
  v90 = 48;
  if (v86)
  {
    v90 = 40;
  }

  v91 = &v60[*(v87 + v90)];
  v192 = v85;
  v89(v85, v91, v48);
  __swift_project_boxed_opaque_existential_1(v7 + 25, v7[28]);
  v92 = sub_24F922238();
  v93 = v7;
  v196 = v88;
  if (v92)
  {
    v94 = v195;
    v95 = v205;
    v96 = v180;
  }

  else
  {
    v97 = v60;
    v98 = v93[28];
    v99 = v93[29];
    v100 = __swift_project_boxed_opaque_existential_1(v93 + 25, v98);
    v219 = v98;
    v220 = *(v99 + 8);
    v101 = __swift_allocate_boxed_opaque_existential_1(&v218);
    (*(*(v98 - 8) + 16))(v101, v100, v98);
    v102 = *(v88 + 44);
    v216 = v48;
    v217 = v56;
    v103 = __swift_allocate_boxed_opaque_existential_1(&v215);
    v104.n128_f64[0] = v89(v103, &v97[v102], v48);
    *&v212 = MEMORY[0x277D84F90];
    sub_24E8EF510(v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
    sub_24E8EF568();
    v105 = v203;
    v106 = v204;
    sub_24F92C6A8();
    v107 = v179;
    sub_24F922818();
    v95 = v205;
    (*(v205 + 8))(v105, v106);
    __swift_destroy_boxed_opaque_existential_1(&v215);
    __swift_destroy_boxed_opaque_existential_1(&v218);
    v108 = v180;
    v110 = *(v180 + 2);
    v109 = *(v180 + 3);
    if (v110 >= v109 >> 1)
    {
      v108 = sub_24E6179D8((v109 > 1), v110 + 1, 1, v180);
    }

    v94 = v195;
    *(v108 + 2) = v110 + 1;
    v111 = v107;
    v96 = v108;
    (v202[4])(&v108[((*(v202 + 80) + 32) & ~*(v202 + 80)) + v202[9] * v110], v111, v197);
  }

  __swift_project_boxed_opaque_existential_1(&v221, v222);
  v112 = v181;
  sub_24F9220E8();
  v113 = sub_24F9223A8();
  v114 = (*(v182 + 8))(v112, v183);
  v114.n128_f64[0] = v113 + *&v207[*(v196 + 52) + 8];
  v219 = MEMORY[0x277D85048];
  v220 = MEMORY[0x277D225F8];
  *&v218 = v114.n128_u64[0];
  *&v215 = MEMORY[0x277D84F90];
  v115 = sub_24E8EF510(v114);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
  sub_24E8EF568();
  v117 = v203;
  v183 = v116;
  v118 = v204;
  v192 = v115;
  sub_24F92C6A8();
  v119 = v184;
  sub_24F922818();
  v182 = *(v95 + 8);
  (v182)(v117, v118);
  __swift_destroy_boxed_opaque_existential_1(&v218);
  v121 = *(v96 + 2);
  v120 = *(v96 + 3);
  v122 = v96;
  v205 = v95 + 8;
  if (v121 >= v120 >> 1)
  {
    v122 = sub_24E6179D8((v120 > 1), v121 + 1, 1, v96);
  }

  *(v122 + 2) = v121 + 1;
  v123 = (*(v202 + 80) + 32) & ~*(v202 + 80);
  (v202[4])(&v122[v123 + v202[9] * v121], v119, v197);
  v124 = *MEMORY[0x277D22868];
  v125 = *(v200 + 104);
  v126 = *MEMORY[0x277D22868];
  v200 += 104;
  v202 = v125;
  (v125)(v194, v126, v193);
  v197 = sub_24F922418();
  v219 = v197;
  v220 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v218);
  sub_24F922408();
  v127 = v198;
  sub_24F922878();
  sub_24F9227D8();
  v224.origin.x = a3;
  v224.origin.y = a4;
  v224.size.width = a5;
  v224.size.height = a6;
  Width = CGRectGetWidth(v224);
  v129 = sub_24F922148();
  *v130 = Width;
  v129(&v218, 0);
  sub_24F922158();
  v131 = sub_24F9221B8();
  sub_24F922BF8();
  v131(&v218, 0);
  v132 = sub_24F9221B8();
  sub_24F922BC8();
  v132(&v218, 0);
  v133 = v199;
  sub_24E60169C((v199 + 30), &v215, &unk_27F22B200, &unk_24F9674C0);
  if (v216)
  {
    sub_24E612C80(&v215, &v218);
    sub_24E60169C((v133 + 35), &v212, &unk_27F22B200, &unk_24F9674C0);
    if (v213)
    {
      v134 = v133;
      sub_24E612C80(&v212, &v215);
      __swift_project_boxed_opaque_existential_1(&v218, v219);
      if (sub_24F9221E8())
      {
        __swift_project_boxed_opaque_existential_1(&v215, v216);
        if (sub_24F9221E8())
        {
          sub_24E60169C((v133 + 5), &v209, &qword_27F229780, &unk_24F965BB0);
          LODWORD(v184) = v124;
          if (v210)
          {
            sub_24E612C80(&v209, &v212);
            __swift_project_boxed_opaque_existential_1(&v212, v213);
            if ((sub_24F922238() & 1) == 0)
            {
              __swift_project_boxed_opaque_existential_1(&v212, v213);
              sub_24F922218();
              CGRectGetMaxY(v226);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740, &unk_24F965BC0);
              v151 = swift_allocObject();
              *(v151 + 16) = xmmword_24F93A400;
              v181 = v151;
              v180 = (v151 + v123);
              v152 = v219;
              v153 = v220;
              v154 = __swift_project_boxed_opaque_existential_1(&v218, v219);
              v210 = v152;
              v211 = *(v153 + 8);
              v155 = __swift_allocate_boxed_opaque_existential_1(&v209);
              (*(*(v152 - 8) + 16))(v155, v154, v152);
              v208 = MEMORY[0x277D84F90];
              v156 = v203;
              v157 = v204;
              sub_24F92C6A8();
              v145 = v206;
              sub_24F922818();
              v158 = v182;
              (v182)(v156, v157);
              __swift_destroy_boxed_opaque_existential_1(&v209);
              v160 = v216;
              v159 = v217;
              v161 = __swift_project_boxed_opaque_existential_1(&v215, v216);
              v210 = v160;
              v211 = *(v159 + 8);
              v162 = __swift_allocate_boxed_opaque_existential_1(&v209);
              (*(*(v160 - 8) + 16))(v162, v161, v160);
              v208 = MEMORY[0x277D84F90];
              sub_24F92C6A8();
              sub_24F922818();
              v158(v156, v157);
              __swift_destroy_boxed_opaque_existential_1(&v209);
              goto LABEL_34;
            }

            __swift_destroy_boxed_opaque_existential_1(&v212);
          }

          else
          {
            sub_24E601704(&v209, &qword_27F229780, &unk_24F965BB0);
          }

          __swift_project_boxed_opaque_existential_1(v133, v133[3]);
          sub_24F922218();
          CGRectGetMaxY(v225);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740, &unk_24F965BC0);
          v138 = swift_allocObject();
          *(v138 + 16) = xmmword_24F93A400;
          v181 = v138;
          v180 = (v138 + v123);
          v139 = v219;
          v140 = v220;
          v141 = __swift_project_boxed_opaque_existential_1(&v218, v219);
          v213 = v139;
          v214 = *(v140 + 8);
          v142 = __swift_allocate_boxed_opaque_existential_1(&v212);
          (*(*(v139 - 8) + 16))(v142, v141, v139);
          *&v209 = MEMORY[0x277D84F90];
          v143 = v203;
          v144 = v204;
          sub_24F92C6A8();
          v145 = v206;
          sub_24F922818();
          v146 = v182;
          (v182)(v143, v144);
          __swift_destroy_boxed_opaque_existential_1(&v212);
          v147 = v216;
          v148 = v217;
          v149 = __swift_project_boxed_opaque_existential_1(&v215, v216);
          v213 = v147;
          v214 = *(v148 + 8);
          v150 = __swift_allocate_boxed_opaque_existential_1(&v212);
          (*(*(v147 - 8) + 16))(v150, v149, v147);
          *&v209 = MEMORY[0x277D84F90];
          sub_24F92C6A8();
          sub_24F922818();
          v146(v143, v144);
LABEL_34:
          __swift_destroy_boxed_opaque_existential_1(&v212);
          __swift_project_boxed_opaque_existential_1(v134 + 20, v134[23]);
          sub_24F922218();
          CGRectGetMinY(v227);
          v228.origin.x = a3;
          v228.origin.y = a4;
          v228.size.width = a5;
          v228.size.height = a6;
          CGRectGetMinX(v228);
          v229.origin.x = a3;
          v229.origin.y = a4;
          v229.size.width = a5;
          v229.size.height = a6;
          CGRectGetWidth(v229);
          (v202)(v194, v184, v193);
          v213 = v197;
          v214 = MEMORY[0x277D226F0];
          __swift_allocate_boxed_opaque_existential_1(&v212);
          sub_24F922408();
          v163 = v169;
          sub_24F922878();
          v164 = v170;
          sub_24F9227D8();
          v136 = v189;
          v165 = v190;
          (*(v189 + 8))(v164, v190);
          v166 = *(v187 + 8);
          v167 = v163;
          v168 = v188;
          v166(v167, v188);
          v166(v198, v168);
          (*(v185 + 8))(v145, v186);
          __swift_destroy_boxed_opaque_existential_1(&v215);
          __swift_destroy_boxed_opaque_existential_1(&v218);
          v135 = v165;
          v94 = v195;
          goto LABEL_30;
        }
      }

      (*(v187 + 8))(v198, v188);
      (*(v185 + 8))(v206, v186);
      __swift_destroy_boxed_opaque_existential_1(&v215);
    }

    else
    {
      (*(v187 + 8))(v198, v188);
      (*(v185 + 8))(v206, v186);
      sub_24E601704(&v212, &unk_27F22B200, &unk_24F9674C0);
    }

    __swift_destroy_boxed_opaque_existential_1(&v218);
  }

  else
  {
    (*(v187 + 8))(v127, v188);
    (*(v185 + 8))(v206, v186);
    sub_24E601704(&v215, &unk_27F22B200, &unk_24F9674C0);
  }

  v135 = v190;
  v136 = v189;
LABEL_30:
  (*(v136 + 32))(v191, v94, v135);
  return __swift_destroy_boxed_opaque_existential_1(&v221);
}

unint64_t sub_24E8EF510(__n128 a1)
{
  result = qword_27F22B210;
  if (!qword_27F22B210)
  {
    sub_24F9227F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B210);
  }

  return result;
}

unint64_t sub_24E8EF568()
{
  result = qword_27F22B220;
  if (!qword_27F22B220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F235750, &qword_24F98AA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B220);
  }

  return result;
}

uint64_t sub_24E8EF610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E8EF6D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E8EF774(uint64_t a1)
{
  sub_24E8EFB54(319, &qword_27F237A20, MEMORY[0x277D22640]);
  if (v1 <= 0x3F)
  {
    sub_24E8EF898(319, &qword_27F2297B0, &unk_27F235730, &unk_24F947310);
    if (v2 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F2297C0, MEMORY[0x277D226F8]);
      if (v3 <= 0x3F)
      {
        sub_24E8EF898(319, &qword_27F221208, &qword_27F221210, &unk_24F9ACE10);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AppShowcaseLockupViewLayout.Metrics(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E8EF898(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24F92C4A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24E8EF900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F922628();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E8EF9C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F922628();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E8EFA64(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_24E8EFB54(319, &qword_27F237A40, MEMORY[0x277D226C0]);
    if (v2 <= 0x3F)
    {
      sub_24F922628();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E8EFB54(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24E8EFBC4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24E8EFD08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for PlayerSuggestionView(uint64_t a1)
{
  result = qword_27F221228;
  if (!qword_27F221228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E8EFE84(uint64_t a1)
{
  type metadata accessor for GameActivityPlayersDraft(319);
  if (v1 <= 0x3F)
  {
    sub_24E8EFFD4(319, &qword_27F221238, type metadata accessor for ChallengesPlayerInviteType, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Player(319);
        if (v4 <= 0x3F)
        {
          sub_24E8EFFD4(319, &qword_27F21FB48, type metadata accessor for GameActivityDraftGameInfo, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E8EFFD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for PlayerSuggestionView.PlayTogetherType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlayerSuggestionView.PlayTogetherType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24E8F019C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24E8F01B8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_24E8F01FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for PlayerSuggestionView(0);
  v66 = *(v3 - 8);
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221250, &qword_24F965DA0);
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v53 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v10 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D8, &qword_24F939730);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221258, &qword_24F965DA8);
  MEMORY[0x28223BE20](v16 - 8);
  v67 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = &v53 - v19;
  if ((*(a1 + 32) & 1) != 0 || !*(*(a1 + 8) + 16))
  {
    (*(v13 + 56))(&v53 - v19, 1, 1, v12, v20);
  }

  else
  {
    v62 = v10;
    v22 = *(a1 + 24);
    if (v22)
    {
      v73 = *(a1 + 16);
      v74 = v22;
      sub_24E600AEC();

      v55 = sub_24F925E18();
      v54 = v23;
      v58 = v12;
      v59 = v24;
      v26 = v25;
      sub_24F9258F8();
      v27 = v54;
      v28 = sub_24F925C98();
      v60 = v29;
      v61 = v28;
      v56 = v30;
      v32 = v31;
      v57 = v31;

      v33 = v26 & 1;
      v12 = v58;
      sub_24E600B40(v55, v27, v33);

      v73 = v61;
      v74 = v60;
      v59 = v4;
      v34 = v21;
      v35 = v56 & 1;
      v75 = v56 & 1;
      v76 = v32;
      v36 = v63;
      v37 = v64;
      sub_24F9268B8();
      v38 = v35;
      v21 = v34;
      v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_24E600B40(v61, v60, v38);

      v39 = v62;
      (*(v62 + 32))(v15, v36, v37);
      (*(v39 + 56))(v15, 0, 1, v37);
    }

    else
    {
      (*(v62 + 56))(v15, 1, 1, v64, v20);
    }

    sub_24E8F1588(v15, v21);
    (*(v13 + 56))(v21, 0, 1, v12, v40);
  }

  v65 = v21;
  v73 = *(a1 + 8);
  sub_24E8F22F4(a1, v5, type metadata accessor for PlayerSuggestionView);
  v41 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v42 = swift_allocObject();
  sub_24E8F235C(v5, v42 + v41, type metadata accessor for PlayerSuggestionView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221260, &qword_24F965DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221268, &qword_24F965DB8);
  sub_24E602068(&qword_27F221270, &qword_27F221260, &qword_24F965DB0, MEMORY[0x277D83980]);
  sub_24E8F1D84();
  sub_24E8F222C(&qword_27F2212E0, type metadata accessor for ChallengesPlayerInviteType, &unk_24FA3A778);
  v43 = v68;
  sub_24F927238();
  v44 = v67;
  sub_24E60169C(v21, v67, &qword_27F221258, &qword_24F965DA8);
  v45 = v69;
  v46 = v70;
  v47 = *(v69 + 16);
  v48 = v71;
  v47(v71, v43, v70);
  v49 = v72;
  sub_24E60169C(v44, v72, &qword_27F221258, &qword_24F965DA8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212E8, &qword_24F965DE8);
  v47((v49 + *(v50 + 48)), v48, v46);
  v51 = *(v45 + 8);
  v51(v43, v46);
  sub_24E601704(v65, &qword_27F221258, &qword_24F965DA8);
  v51(v48, v46);
  return sub_24E601704(v44, &qword_27F221258, &qword_24F965DA8);
}

uint64_t sub_24E8F0910@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E8F22F4(a1, &v8[v6[9]], type metadata accessor for ChallengesPlayerInviteType);
  v9 = *a2;
  v10 = sub_24F8E1DE8(*a2);
  v11 = a2[6];
  v22 = a2[5];
  v12 = type metadata accessor for PlayerSuggestionView(0);
  sub_24E8F22F4(a2 + v12[9], &v8[v6[12]], type metadata accessor for Player);
  sub_24E8F2274(a2 + v12[10], &v8[v6[13]]);
  v13 = *(a2 + v12[11]);
  v14 = *(a2 + v12[12]);
  *v8 = swift_getKeyPath();
  v8[40] = 0;
  v15 = v6[7];
  *&v8[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  v16 = &v8[v6[8]];
  v24 = 0;

  sub_24F926F28();
  v17 = v26;
  *v16 = v25;
  *(v16 + 1) = v17;
  v8[v6[10]] = v10 & 1;
  v18 = &v8[v6[11]];
  *v18 = v22;
  *(v18 + 1) = v11;
  v8[v6[14]] = v13;
  v8[v6[15]] = v14;
  v19 = &v8[v6[16]];
  *v19 = sub_24E8F22E4;
  v19[1] = v9;
  sub_24E8F0D0C(v23);
  return sub_24E8F23C4(v8, type metadata accessor for PlayTogetherPlayerSelectionRow);
}

uint64_t sub_24E8F0B44(uint64_t a1)
{
  v2 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E8F22F4(a1, v7, type metadata accessor for ChallengesPlayerInviteType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0, &qword_24FA3ACB0) + 48);
      sub_24E8F235C(v7, v4, type metadata accessor for Player);
      v10 = sub_24F4A443C(v4);
      sub_24E8F23C4(v4, type metadata accessor for Player);
      sub_24E601704(&v7[v9], &qword_27F2212F8, &unk_24F965E50);
    }

    else
    {
      v14 = *v7;
      v10 = sub_24F4A47F0(*v7);
    }
  }

  else
  {
    v11 = *v7;
    v12 = *(v7 + 1);
    v13 = *(v7 + 2);
    v17[0] = v11;
    v17[1] = v12;
    v17[2] = v13;
    v10 = sub_24F4A4148(v17);
  }

  return v10 & 1;
}

uint64_t sub_24E8F0D0C@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221290, &qword_24F965DC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212A0, &qword_24F965DD8);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = sub_24F925838();
  sub_24F923318();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_24E8F22F4(v3, v11, type metadata accessor for PlayTogetherPlayerSelectionRow);
  v21 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212B8, &qword_24F965DE0) + 36)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = sub_24F925858();
  sub_24F923318();
  v23 = &v11[*(v9 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = sub_24E8F1F9C();
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221298, &qword_24F965DD0);
  v54 = v9;
  v55 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_24E8F20E4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2212D0, &unk_24F9A6C60);
  v32 = sub_24E8F2138();
  v54 = v5;
  v55 = &type metadata for IsDebugFocusOverlayEnabled;
  v56 = v31;
  v57 = OpaqueTypeConformance2;
  v58 = v30;
  v59 = v32;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();
  (*(v6 + 8))(v8, v5);
  sub_24E601704(v11, &qword_27F2212A0, &qword_24F965DD8);
  v33 = sub_24F925838();
  sub_24F923318();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221288, &qword_24F965DC0) + 36);
  *v42 = v33;
  *(v42 + 8) = v35;
  *(v42 + 16) = v37;
  *(v42 + 24) = v39;
  *(v42 + 32) = v41;
  *(v42 + 40) = 0;
  v43 = sub_24F925858();
  sub_24F923318();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221268, &qword_24F965DB8);
  v53 = a1 + *(result + 36);
  *v53 = v43;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_24E8F1098@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221300, &unk_24F9C5380);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221308, &unk_24F965E60);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = sub_24F925838();
  sub_24F923318();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_24E60169C(v3, v11, &qword_27F221310, &unk_24F9C52B0);
  v21 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221318, &unk_24F965E70) + 36)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = sub_24F925858();
  sub_24F923318();
  v23 = &v11[*(v9 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = sub_24E8F2424();
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221378, &qword_24F965E98);
  v54 = v9;
  v55 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_24E8F20E4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221380, &qword_24F965EA0);
  v32 = sub_24E8F2824();
  v54 = v5;
  v55 = &type metadata for IsDebugFocusOverlayEnabled;
  v56 = v31;
  v57 = OpaqueTypeConformance2;
  v58 = v30;
  v59 = v32;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();
  (*(v6 + 8))(v8, v5);
  sub_24E601704(v11, &qword_27F221308, &unk_24F965E60);
  v33 = sub_24F925838();
  sub_24F923318();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221390, &qword_24F965EA8) + 36);
  *v42 = v33;
  *(v42 + 8) = v35;
  *(v42 + 16) = v37;
  *(v42 + 24) = v39;
  *(v42 + 32) = v41;
  *(v42 + 40) = 0;
  v43 = sub_24F925858();
  sub_24F923318();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221398, &qword_24F965EB0);
  v53 = a1 + *(result + 36);
  *v53 = v43;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_24E8F1420()
{
  v0 = sub_24F925068();
  MEMORY[0x28223BE20](v0);
  sub_24F924C98();
  sub_24E8F222C(&qword_27F2150C0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_24F92D1D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221240, &qword_24F965D98);
  sub_24E602068(&qword_27F221248, &qword_27F221240, &qword_24F965D98, MEMORY[0x277CE14C0]);
  return sub_24F9233F8();
}

uint64_t sub_24E8F1588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D8, &qword_24F939730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8F15F8()
{
  v1 = type metadata accessor for PlayerSuggestionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v31 = v1;
  v4 = v3 + *(v1 + 36);

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v34 = sub_24F9289E8();
  v32 = *(v34 - 8);
  v33 = *(v32 + 8);
  v33(v4 + v6);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v7 = v4 + v5[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle(0);
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v32 + 48))(v7 + v11, 1, v34))
      {
        (v33)(v7 + v11, v34);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v32 + 48))(v12 + v13, 1, v34))
      {
        (v33)(v12 + v13, v34);
      }
    }
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v14 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game(0);
    (v33)(v14 + v16[18], v34);
    v17 = v16[19];
    if (!(*(v32 + 48))(v14 + v17, 1, v34))
    {
      (v33)(v14 + v17, v34);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game(0);
    (v33)(v21 + v23[18], v34);
    v24 = v23[19];
    if (!(*(v32 + 48))(v21 + v24, 1, v34))
    {
      (v33)(v21 + v24, v34);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  v28 = v3 + *(v31 + 40);
  v29 = type metadata accessor for GameActivityDraftGameInfo(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {

    (v33)(v28 + *(v29 + 28), v34);
  }

  return swift_deallocObject();
}

uint64_t sub_24E8F1D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PlayerSuggestionView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_24E8F0910(a1, v6, a2);
}

unint64_t sub_24E8F1D84()
{
  result = qword_27F221278;
  if (!qword_27F221278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221268, &qword_24F965DB8);
    sub_24E8F1E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221278);
  }

  return result;
}

unint64_t sub_24E8F1E10()
{
  result = qword_27F221280;
  if (!qword_27F221280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221288, &qword_24F965DC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221290, &qword_24F965DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221298, &qword_24F965DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2212A0, &qword_24F965DD8);
    sub_24E8F1F9C();
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2212D0, &unk_24F9A6C60);
    sub_24E8F2138();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221280);
  }

  return result;
}

unint64_t sub_24E8F1F9C()
{
  result = qword_27F2212A8;
  if (!qword_27F2212A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2212A0, &qword_24F965DD8);
    sub_24E8F2028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2212A8);
  }

  return result;
}

unint64_t sub_24E8F2028()
{
  result = qword_27F2212B0;
  if (!qword_27F2212B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2212B8, &qword_24F965DE0);
    sub_24E8F222C(&qword_27F2212C0, type metadata accessor for PlayTogetherPlayerSelectionRow, &unk_24FA03E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2212B0);
  }

  return result;
}

unint64_t sub_24E8F20E4()
{
  result = qword_27F2212C8;
  if (!qword_27F2212C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2212C8);
  }

  return result;
}

unint64_t sub_24E8F2138()
{
  result = qword_27F2212D8;
  if (!qword_27F2212D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2212D0, &unk_24F9A6C60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2212A0, &qword_24F965DD8);
    sub_24E8F1F9C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2212D8);
  }

  return result;
}

uint64_t sub_24E8F222C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E8F2274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8F22F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8F235C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8F23C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E8F2424()
{
  result = qword_27F221320;
  if (!qword_27F221320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221308, &unk_24F965E60);
    sub_24E8F24B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221320);
  }

  return result;
}

unint64_t sub_24E8F24B0()
{
  result = qword_27F221328;
  if (!qword_27F221328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221318, &unk_24F965E70);
    sub_24E8F253C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221328);
  }

  return result;
}

unint64_t sub_24E8F253C()
{
  result = qword_27F221330;
  if (!qword_27F221330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221310, &unk_24F9C52B0);
    sub_24E8F25C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221330);
  }

  return result;
}

unint64_t sub_24E8F25C8()
{
  result = qword_27F221338;
  if (!qword_27F221338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221340, &unk_24F9A6C70);
    sub_24E8F2654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221338);
  }

  return result;
}

unint64_t sub_24E8F2654()
{
  result = qword_27F221348;
  if (!qword_27F221348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221350, &unk_24F965E80);
    sub_24E8F26E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221348);
  }

  return result;
}

unint64_t sub_24E8F26E0()
{
  result = qword_27F221358;
  if (!qword_27F221358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221360, &unk_24F9A6C80);
    sub_24E8F276C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221358);
  }

  return result;
}

unint64_t sub_24E8F276C()
{
  result = qword_27F221368;
  if (!qword_27F221368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221370, &qword_24F965E90);
    sub_24E66C1E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221368);
  }

  return result;
}

unint64_t sub_24E8F2824()
{
  result = qword_27F221388;
  if (!qword_27F221388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221380, &qword_24F965EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221308, &unk_24F965E60);
    sub_24E8F2424();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221388);
  }

  return result;
}

uint64_t TopShelfNamedAttribute.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TopShelfNamedAttribute.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *TopShelfNamedAttribute.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v44 = v2;
  v42 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v41 = sub_24F92AC28();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = a1;
  sub_24F928398();
  v17 = sub_24F928348();
  v19 = v18;
  v22 = *(v10 + 8);
  v20 = v10 + 8;
  v21 = v22;
  v22(v15, v9);
  if (!v19)
  {
    v41 = v20;
    v24 = 1701667182;
    v45 = v16;
    v25 = 0xE400000000000000;
    goto LABEL_5;
  }

  v38 = v17;
  sub_24F928398();
  sub_24F9282B8();
  v21(v12, v9);
  v23 = v41;
  if ((*(v45 + 6))(v7, 1, v41) == 1)
  {
    v41 = v20;
    v24 = 0x7365756C6176;
    v45 = v16;

    sub_24E8F2EE8(v7);
    v25 = 0xE600000000000000;
LABEL_5:
    v26 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v27 = v24;
    v27[1] = v25;
    v27[2] = v42;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D22530], v26);
    swift_willThrow();
    v28 = sub_24F9285B8();
    (*(*(v28 - 8) + 8))(v43, v28);
    v21(v45, v9);
    type metadata accessor for TopShelfNamedAttribute();
    v29 = v44;
    swift_deallocPartialClassInstance();
    return v29;
  }

  v30 = v39;
  (*(v45 + 4))(v39, v7, v23);
  v29 = v44;
  v44[2] = v38;
  v29[3] = v19;
  v31 = v30;
  v32 = v40;
  v33 = sub_24F92ABB8();
  if (!v32)
  {
    v34 = v33;
    v35 = sub_24F9285B8();
    (*(*(v35 - 8) + 8))(v43, v35);
    v21(v16, v9);
    (*(v45 + 1))(v31, v23);
    v29[4] = v34;
    return v29;
  }

  type metadata accessor for TopShelfNamedAttribute();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t sub_24E8F2E6C()
{
  result = qword_27F2213B8;
  if (!qword_27F2213B8)
  {
    sub_24F92AC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2213B8);
  }

  return result;
}

uint64_t sub_24E8F2EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E8F2F50@<X0>(uint64_t *a2@<X8>)
{
  result = sub_24F928348();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t TopShelfNamedAttribute.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TopShelfNamedAttribute.deinit()
{

  return v0;
}

uint64_t TopShelfNamedAttribute.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24E8F302C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TopShelfNamedAttribute();
  v7 = swift_allocObject();
  result = TopShelfNamedAttribute.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t GenericAccountPageIntent.init(url:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0xD000000000000018;
  *(a2 + 1) = 0x800000024F965F20;
  v4 = *(type metadata accessor for GenericAccountPageIntent(0) + 20);
  v5 = sub_24F91F4A8();
  v6 = *(*(v5 - 8) + 32);

  return v6(&a2[v4], a1, v5);
}

uint64_t type metadata accessor for GenericAccountPageIntent(uint64_t a1)
{
  result = qword_27F2213D8;
  if (!qword_27F2213D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericAccountPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GenericAccountPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenericAccountPageIntent(0) + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall GenericAccountPageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    type metadata accessor for GenericAccountPageIntent(0);
    v5 = isa;
    v8 = sub_24F91F398();
    v7 = [v2 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v8, v6}];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E8F3370()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24E8F3478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E8F34F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E8F35B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E8F3654(uint64_t a1)
{
  result = sub_24F91F4A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t EditorialLink.__allocating_init(id:descriptionText:summaryText:clickAction:linkPresentationEnabled:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v32 = a2;
  v33 = a3;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_24E60169C(a1, &v36, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v37 + 1))
  {
    v19 = v37;
    *(v18 + 64) = v36;
    *(v18 + 80) = v19;
    *(v18 + 96) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v30 = a8;
    v31 = a4;
    v21 = a5;
    v22 = a7;
    v23 = v20;
    v24 = a6;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v34 = v23;
    v35 = v26;
    a7 = v22;
    a5 = v21;
    a6 = v24;
    a8 = v30;
    a4 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(a8, v18 + OBJC_IVAR____TtC12GameStoreKit13EditorialLink_impressionMetrics);
  v27 = v33;
  *(v18 + 16) = v32;
  *(v18 + 24) = v27;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 56) = a6;
  *(v18 + 48) = a7 & 1;
  return v18;
}

uint64_t EditorialLink.init(id:descriptionText:summaryText:clickAction:linkPresentationEnabled:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v9 = v8;
  v33 = a2;
  v34 = a3;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v37, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v31 = a8;
    v32 = a4;
    v21 = a5;
    v22 = a7;
    v23 = v20;
    v24 = a6;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v35 = v23;
    v36 = v26;
    a7 = v22;
    a5 = v21;
    a6 = v24;
    a8 = v31;
    a4 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v27 = v41;
  *(v9 + 64) = v40;
  *(v9 + 80) = v27;
  *(v9 + 96) = v42;
  sub_24E65E0D4(a8, v9 + OBJC_IVAR____TtC12GameStoreKit13EditorialLink_impressionMetrics);
  v28 = v34;
  *(v9 + 16) = v33;
  *(v9 + 24) = v28;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  *(v9 + 56) = a6;
  *(v9 + 48) = a7 & 1;
  return v9;
}

uint64_t EditorialLink.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  EditorialLink.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t EditorialLink.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  v64 = sub_24F9285B8();
  v55 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v57 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = v50 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24F928388();
  v14 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v50 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v50 - v20;
  sub_24F928398();
  v22 = sub_24F928348();
  if (v23)
  {
    v59 = v22;
    v60 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v25 = v10;
    v27 = v26;
    (*(v11 + 8))(v13, v25);
    v59 = v24;
    v60 = v27;
  }

  sub_24F92C7F8();
  v28 = *(v14 + 8);
  v50[1] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v51 = v28;
  v28(v21, v56);
  v29 = v62;
  *(v3 + 64) = v61;
  *(v3 + 80) = v29;
  *(v3 + 96) = v63;
  sub_24F929608();
  sub_24F928398();
  v50[0] = a1;
  v30 = *(v55 + 16);
  v31 = v58;
  v32 = v64;
  v30(v53, v58, v64);
  v33 = v52;
  sub_24F929548();
  sub_24E65E0D4(v33, v3 + OBJC_IVAR____TtC12GameStoreKit13EditorialLink_impressionMetrics);
  v34 = v57;
  v30(v57, v31, v32);
  v35 = v50[0];
  sub_24F928398();
  v36 = sub_24F928348();
  v38 = v37;
  v39 = v56;
  v40 = v51;
  v51(v18, v56);
  *(v3 + 16) = v36;
  *(v3 + 24) = v38;
  sub_24F928398();
  v41 = sub_24F928348();
  v43 = v42;
  v40(v18, v39);
  *(v3 + 32) = v41;
  *(v3 + 40) = v43;
  type metadata accessor for Action(0);
  sub_24F928398();
  v44 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v34);
  v40(v18, v39);
  *(v3 + 56) = v44;
  v45 = v54;
  v46 = v35;
  sub_24F928398();
  LODWORD(v53) = sub_24F928278();
  v47 = *(v55 + 8);
  v48 = v64;
  v47(v58, v64);
  v40(v46, v39);
  v40(v45, v39);
  v47(v57, v48);
  *(v3 + 48) = v53 & 1;
  return v3;
}

uint64_t EditorialLink.descriptionText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EditorialLink.summaryText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24E8F40F0@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 56) && (type metadata accessor for ExternalUrlAction(0), (v3 = swift_dynamicCastClass()) != 0))
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url;
    v6 = sub_24F91F4A8();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a1, v4 + v5, v6);
    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = sub_24F91F4A8();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a1;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t EditorialLink.deinit()
{

  sub_24E6585F8(v0 + 64);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13EditorialLink_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t EditorialLink.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 64);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13EditorialLink_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

unint64_t sub_24E8F4360()
{
  result = qword_27F2213E8;
  if (!qword_27F2213E8)
  {
    type metadata accessor for EditorialLink(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2213E8);
  }

  return result;
}

uint64_t type metadata accessor for EditorialLink(uint64_t a1)
{
  result = qword_27F2213F0;
  if (!qword_27F2213F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E8F4424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for EditorialLink(0);
  v7 = swift_allocObject();
  result = EditorialLink.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_24E8F44E0(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24E8F46AC@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = a5;
  v78 = a4;
  v102 = a6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v91);
  v81 = &v72 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221408, &qword_24F966248);
  MEMORY[0x28223BE20](v86);
  v87 = &v72 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221410, &qword_24F966250);
  MEMORY[0x28223BE20](v100);
  v93 = &v72 - v11;
  v88 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v88);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v72 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221418, &unk_24F9F1930);
  MEMORY[0x28223BE20](v82);
  v85 = (&v72 - v16);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10, &unk_24F94BD90);
  MEMORY[0x28223BE20](v83);
  v77 = (&v72 - v17);
  v74 = type metadata accessor for JSColor(0);
  MEMORY[0x28223BE20](v74);
  v73 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  v75 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550, &unk_24F9EC960);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v72 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v25 - 8);
  v76 = &v72 - v26;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221420, &qword_24F966258);
  MEMORY[0x28223BE20](v94);
  v84 = &v72 - v27;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221428, &qword_24F966260);
  MEMORY[0x28223BE20](v96);
  v99 = &v72 - v28;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221430, &qword_24F966268);
  MEMORY[0x28223BE20](v89);
  v92 = &v72 - v29;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221438, &qword_24F966270);
  MEMORY[0x28223BE20](v97);
  v95 = &v72 - v30;
  v90 = type metadata accessor for InviteFriendsCardConfiguration.VisualView(0);
  MEMORY[0x28223BE20](v90);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221440, &unk_24F966278);
  v101 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v98 = &v72 - v34;
  if (sub_24E92D030(a1, a2, a3))
  {
    if (a1 == 12)
    {
      if (a3 == 5)
      {
        v52 = a2 + *(type metadata accessor for InviteFriendsCard(0) + 32);
        v53 = type metadata accessor for CommonCardAttributes(0);
        sub_24E60169C(v52 + *(v53 + 68), v24, &qword_27F21F550, &unk_24F9EC960);
        v54 = (*(v75 + 48))(v24, 1, v19);
        v45 = v98;
        if (v54 == 1)
        {
          sub_24E601704(v24, &qword_27F21F550, &unk_24F9EC960);
          v55 = type metadata accessor for ColorGroup(0);
          v56 = v76;
          (*(*(v55 - 8) + 56))(v76, 1, 1, v55);
        }

        else
        {
          sub_24E8F6344(v24, v21, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
          v63 = v73;
          sub_24E8F6C4C(v21, v73, type metadata accessor for JSColor);
          v56 = v76;
          if (qword_27F20FEE0 != -1)
          {
            swift_once();
          }

          ColorGrouping.colorGroup(for:)(*(v63 + *(v74 + 24)));
          sub_24E8F63AC(v63, type metadata accessor for JSColor);
          sub_24E8F63AC(v24, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
        }

        v36 = v33;
        v64 = sub_24F926C98();
        v65 = sub_24F927618();
        v67 = v66;
        v68 = v77;
        v69 = v77 + *(v83 + 36);
        sub_24F594764(v56, 0, v69);
        v70 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CE0, &unk_24F93E7D0) + 36));
        *v70 = v65;
        v70[1] = v67;
        *v68 = v64;
        sub_24E60169C(v68, v85, &qword_27F214A10, &unk_24F94BD90);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
        sub_24E63D150();
        sub_24E63D098();
        v62 = v84;
        sub_24F924E28();
        sub_24E601704(v68, &qword_27F214A10, &unk_24F94BD90);
        sub_24E601704(v56, &qword_27F2190D8, &unk_24F94BD70);
        v35 = v102;
      }

      else
      {
        v59 = sub_24F926C98();
        v60 = sub_24F925808();
        v61 = v85;
        *v85 = v59;
        *(v61 + 8) = v60;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
        sub_24E63D150();
        sub_24E63D098();
        v62 = v84;
        sub_24F924E28();
        v35 = v102;
        v36 = v33;
        v45 = v98;
      }

      sub_24E60169C(v62, v92, &qword_27F221420, &qword_24F966258);
      swift_storeEnumTagMultiPayload();
      sub_24E8F62FC(&qword_27F221450, type metadata accessor for InviteFriendsCardConfiguration.VisualView, &unk_24F9662C8);
      sub_24E8F61F8();
      v71 = v95;
      sub_24F924E28();
      sub_24E60169C(v71, v99, &qword_27F221438, &qword_24F966270);
      swift_storeEnumTagMultiPayload();
      sub_24E8F613C();
      sub_24E8F6088(&qword_27F221460, &qword_27F221410, &qword_24F966250, sub_24E701970);
      sub_24F924E28();
      sub_24E601704(v71, &qword_27F221438, &qword_24F966270);
      sub_24E601704(v62, &qword_27F221420, &qword_24F966258);
    }

    else if (a1 == 11)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
      (*(*(v49 - 8) + 56))(v13, dword_24F96635C[a3], 5, v49);
      v50 = v80;
      sub_24E8F6C4C(v13, v80, type metadata accessor for CardContentBackgroundStyle);
      sub_24E8F6344(v50, v87, type metadata accessor for CardContentBackgroundStyle);
      swift_storeEnumTagMultiPayload();
      sub_24E8F62FC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
      sub_24E701970();
      v51 = v93;
      sub_24F924E28();
      sub_24E60169C(v51, v99, &qword_27F221410, &qword_24F966250);
      swift_storeEnumTagMultiPayload();
      sub_24E8F613C();
      sub_24E8F6088(&qword_27F221460, &qword_27F221410, &qword_24F966250, sub_24E701970);
      v45 = v98;
      sub_24F924E28();
      sub_24E601704(v51, &qword_27F221410, &qword_24F966250);
      sub_24E8F63AC(v50, type metadata accessor for CardContentBackgroundStyle);
      v35 = v102;
      v36 = v33;
    }

    else
    {
      v35 = v102;
      v36 = v33;
      if (a1 == 2)
      {
        v37 = type metadata accessor for InviteFriendsCard(0);
        sub_24E8F6344(a2 + *(v37 + 36), v32, type metadata accessor for InviteFriendsCardAvatars);
        v38 = v90;
        v32[*(v90 + 20)] = a3;
        v39 = &v32[*(v38 + 24)];
        *v39 = swift_getKeyPath();
        v39[8] = 0;
        v40 = &v32[*(v38 + 28)];
        type metadata accessor for CardSafeArea(0);
        sub_24E8F62FC(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
        *v40 = sub_24F923598();
        v40[8] = v41 & 1;
        sub_24E8F6344(v32, v92, type metadata accessor for InviteFriendsCardConfiguration.VisualView);
        swift_storeEnumTagMultiPayload();
        sub_24E8F62FC(&qword_27F221450, type metadata accessor for InviteFriendsCardConfiguration.VisualView, &unk_24F9662C8);
        sub_24E8F61F8();
        v42 = v95;
        sub_24F924E28();
        sub_24E60169C(v42, v99, &qword_27F221438, &qword_24F966270);
        swift_storeEnumTagMultiPayload();
        sub_24E8F613C();
        sub_24E8F6088(&qword_27F221460, &qword_27F221410, &qword_24F966250, sub_24E701970);
        v43 = v98;
        sub_24F924E28();
        sub_24E601704(v42, &qword_27F221438, &qword_24F966270);
        v44 = v32;
        v45 = v43;
        sub_24E8F63AC(v44, type metadata accessor for InviteFriendsCardConfiguration.VisualView);
      }

      else
      {
        v57 = v81;
        sub_24E923990(a1, a2, a3, v78, v79, v81);
        sub_24E60169C(v57, v87, &qword_27F214A20, &unk_24F94D670);
        swift_storeEnumTagMultiPayload();
        sub_24E8F62FC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E701970();
        v58 = v93;
        sub_24F924E28();
        sub_24E60169C(v58, v99, &qword_27F221410, &qword_24F966250);
        swift_storeEnumTagMultiPayload();
        sub_24E8F613C();
        sub_24E8F6088(&qword_27F221460, &qword_27F221410, &qword_24F966250, sub_24E701970);
        v45 = v98;
        sub_24F924E28();
        sub_24E601704(v58, &qword_27F221410, &qword_24F966250);
        sub_24E601704(v57, &qword_27F214A20, &unk_24F94D670);
      }
    }

    sub_24E8F6284(v45, v35);
    return (*(v101 + 56))(v35, 0, 1, v36);
  }

  else
  {
    v46 = v102;
    v47 = *(v101 + 56);

    return v47(v46, 1, 1, v33);
  }
}

float64_t sub_24E8F5750@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v53 = a1;
  v56 = a3;
  v4 = sub_24F924848();
  v57.f64[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InviteFriendsCardAvatars(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for InviteFriendsCardAvatarsView(0);
  MEMORY[0x28223BE20](v54);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221490, &qword_24F966318);
  MEMORY[0x28223BE20](v55);
  v13 = &v51 - v12;
  sub_24E8F6344(a2, v9, type metadata accessor for InviteFriendsCardAvatars);
  v14 = type metadata accessor for InviteFriendsCardConfiguration.VisualView(0);
  v15 = *(a2 + v14[5]);
  *&v58.f64[0] = v15;
  v52 = v4;
  if (v15 > 4)
  {
  }

  else
  {
    v16 = sub_24F92CE08();

    if ((v16 & 1) == 0)
    {
      sub_24F923998();
      v18 = v17;
      goto LABEL_8;
    }
  }

  v19 = a2 + v14[6];
  v20 = *v19;
  if (*(v19 + 8) == 1)
  {
    v18 = *v19;
  }

  else
  {

    sub_24F92BDC8();
    v21 = sub_24F9257A8();
    sub_24F921FD8();

    v4 = v52;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v20, 0);
    (*(*&v57.f64[0] + 8))(v6, v4);
    v18 = *&v60;
  }

LABEL_8:
  v22 = a2 + v14[7];
  v23 = *v22;
  v24 = *(v22 + 8);

  v25 = v23;
  if ((v24 & 1) == 0)
  {
    sub_24F92BDC8();
    v26 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(*&v57.f64[0] + 8))(v6, v4);
    v25 = v60;
  }

  swift_getKeyPath();
  *&v60 = v25;
  sub_24E8F62FC(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v27 = v25[1].f64[1];
  v28 = v25[2].f64[1];

  v30 = v18 - (v27 + dbl_24F966378[*&v58.f64[0]] + v28 + dbl_24F966378[*&v58.f64[0]]);
  if (v30 < 0.0)
  {
    v30 = 0.0;
  }

  *&v29 = v30 / 264.0;
  v53 = v29;
  v31 = v30 / 264.0 * -100.0;
  v32 = v30 / 264.0 * 40.0;
  v33 = v30 / 264.0 * 96.0;
  sub_24E8F6C4C(v9, v11, type metadata accessor for InviteFriendsCardAvatars);
  v34 = &v11[*(v54 + 20)];
  v35 = *&v53;
  v36 = vmulq_n_f64(xmmword_24F9661A0, *&v53);
  v37 = vmulq_n_f64(xmmword_24F9661B0, *&v53);
  *v34 = v37.f64[0];
  *(v34 + 24) = v36;
  *(v34 + 8) = v37;
  v38 = vmulq_n_f64(xmmword_24F9661C0, v35);
  v39 = vmulq_n_f64(xmmword_24F9661D0, v35);
  *(v34 + 56) = v39;
  *(v34 + 40) = v38;
  *(v34 + 9) = v31;
  *(v34 + 10) = v32;
  *(v34 + 11) = *&v39.f64[1];
  *(v34 + 12) = v33;
  *(v34 + 104) = vdupq_lane_s64(*&v38.f64[0], 0);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E8F6C4C(v11, v13, type metadata accessor for InviteFriendsCardAvatarsView);
  v40 = &v13[*(v55 + 36)];
  v41 = v65;
  *(v40 + 4) = v64;
  *(v40 + 5) = v41;
  *(v40 + 6) = v66;
  v42 = v61;
  *v40 = v60;
  *(v40 + 1) = v42;
  v43 = v63;
  *(v40 + 2) = v62;
  *(v40 + 3) = v43;

  if ((v24 & 1) == 0)
  {
    sub_24F92BDC8();
    v44 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(*&v57.f64[0] + 8))(v6, v52);
    v23 = v59;
  }

  swift_getKeyPath();
  v59 = v23;
  sub_24F91FD88();

  v45 = &dbl_24F966378[*&v58.f64[0]];
  v46 = v23[1];
  v57 = v23[2];
  v58 = v46;

  v47 = vld1q_dup_f64(v45);
  v58 = vaddq_f64(v58, v47);
  v57 = vaddq_f64(v57, v47);
  LOBYTE(v45) = sub_24F925808();
  v48 = v56;
  sub_24E8F6CB4(v13, v56);
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221498, &qword_24F966348) + 36);
  *v49 = v45;
  *(v49 + 24) = v57;
  result = v58.f64[0];
  *(v49 + 8) = v58;
  *(v49 + 40) = 0;
  return result;
}

uint64_t sub_24E8F5F20@<X0>(uint64_t a1@<X0>, float64_t (**a2)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24E8F6344(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsCardConfiguration.VisualView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_24E8F6C4C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for InviteFriendsCardConfiguration.VisualView);
  *a2 = sub_24E8F6BC4;
  a2[1] = v7;
  return result;
}

uint64_t type metadata accessor for InviteFriendsCardConfiguration.VisualView(uint64_t a1)
{
  result = qword_27F221468;
  if (!qword_27F221468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E8F6088(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24E8F62FC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E8F613C()
{
  result = qword_27F221448;
  if (!qword_27F221448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221438, &qword_24F966270);
    sub_24E8F62FC(&qword_27F221450, type metadata accessor for InviteFriendsCardConfiguration.VisualView, &unk_24F9662C8);
    sub_24E8F61F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221448);
  }

  return result;
}

unint64_t sub_24E8F61F8()
{
  result = qword_27F221458;
  if (!qword_27F221458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221420, &qword_24F966258);
    sub_24E63D150();
    sub_24E63D098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221458);
  }

  return result;
}

uint64_t sub_24E8F6284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221440, &unk_24F966278);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8F62FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E8F6344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8F63AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E8F6420(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for InviteFriendsCardAvatars(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 24) + 8);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24E8F64F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  result = type metadata accessor for InviteFriendsCardAvatars(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

void sub_24E8F65AC(uint64_t a1, __n128 a2)
{
  type metadata accessor for InviteFriendsCardAvatars(319);
  if (v2 <= 0x3F)
  {
    sub_24E79CAE4();
    if (v3 <= 0x3F)
    {
      sub_24E7268F0(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E8F6694(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E8F6710()
{
  result = qword_27F221488;
  if (!qword_27F221488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221440, &unk_24F966278);
    sub_24E8F613C();
    sub_24E8F6088(&qword_27F221460, &qword_27F221410, &qword_24F966250, sub_24E701970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221488);
  }

  return result;
}

uint64_t sub_24E8F67E4()
{
  v1 = type metadata accessor for InviteFriendsCardConfiguration.VisualView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for PlayerAvatar(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for PlayerAvatar.Overlay(0);
  v6 = *(*(v5 - 8) + 48);
  if (!v6(v2 + v4, 1, v5) && !swift_getEnumCaseMultiPayload())
  {
    v7 = sub_24F9289E8();
    (*(*(v7 - 8) + 8))(v2 + v4, v7);
  }

  v8 = (v2 + *(v3 + 24));
  if (v8[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v9 = type metadata accessor for InviteFriendsCardAvatars(0);
  v10 = v2 + v9[5];

  v11 = *(v3 + 20);
  if (!v6(v10 + v11, 1, v5) && !swift_getEnumCaseMultiPayload())
  {
    v12 = sub_24F9289E8();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  v13 = (v10 + *(v3 + 24));
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v14 = v2 + v9[6];

  v15 = *(v3 + 20);
  if (!v6(v14 + v15, 1, v5) && !swift_getEnumCaseMultiPayload())
  {
    v16 = sub_24F9289E8();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
  }

  v17 = (v14 + *(v3 + 24));
  if (v17[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  v18 = v2 + v9[7];

  v19 = *(v3 + 20);
  if (!v6(v18 + v19, 1, v5) && !swift_getEnumCaseMultiPayload())
  {
    v20 = sub_24F9289E8();
    (*(*(v20 - 8) + 8))(v18 + v19, v20);
  }

  v21 = (v18 + *(v3 + 24));
  if (v21[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v22 = v2 + v9[8];

  v23 = *(v3 + 20);
  if (!v6(v22 + v23, 1, v5) && !swift_getEnumCaseMultiPayload())
  {
    v24 = sub_24F9289E8();
    (*(*(v24 - 8) + 8))(v22 + v23, v24);
  }

  v25 = (v22 + *(v3 + 24));
  if (v25[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  sub_24E62A5EC(*(v2 + *(v1 + 24)), *(v2 + *(v1 + 24) + 8));

  return swift_deallocObject();
}

float64_t sub_24E8F6BC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InviteFriendsCardConfiguration.VisualView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E8F5750(a1, v6, a2);
}

uint64_t sub_24E8F6C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8F6CB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221490, &qword_24F966318);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8F6D68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214B0, &qword_24F9663B8);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - v1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214B8, &unk_24F9663C0);
  v3 = swift_allocObject();
  *(v3 + ((*(*v3 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  result = sub_24E8F76AC(v2, v3 + *(*v3 + *MEMORY[0x277D841D0] + 16));
  qword_27F39B0B8 = v3;
  return result;
}

uint64_t sub_24E8F6E9C()
{
  v0 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471F0, &unk_24FA2D8D0);
  v4 = swift_allocObject();
  *(v4 + ((*(*v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  result = sub_24E8F771C(v2, v4 + *(*v4 + *MEMORY[0x277D841D0] + 16));
  qword_27F39B0C0 = v4;
  return result;
}

uint64_t sub_24E8F7000(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0, &unk_24F948490);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E8F8EBC(a1, v9, type metadata accessor for DataIntentCacheBusterStreamState);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return sub_24E8F8F24(v9, type metadata accessor for DataIntentCacheBusterStreamState);
  }

  sub_24E8F8F24(a1, type metadata accessor for DataIntentCacheBusterStreamState);
  v12 = sub_24E802CE0(&unk_2861BFC70);
  v16[1] = v1;
  v13 = MEMORY[0x28223BE20](v12);
  v16[-4] = v14;
  v16[-3] = &unk_24F9663B0;
  v16[-2] = 0;
  LOWORD(v16[-1]) = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3, v13);
  sub_24F92B928();

  return (*(v11 + 56))(a1, 0, 1, v10);
}

uint64_t sub_24E8F72CC()
{
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E7F0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "ContinuePlayingDataIntent: UpdateListener signaled an update, clearing cache", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  if (qword_27F20FFB8 != -1)
  {
    swift_once();
  }

  v5 = qword_27F39B0B8;
  v6 = *(*qword_27F39B0B8 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*qword_27F39B0B8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_27F39B0B8 + v7));
  sub_24E8F7644(v5 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214B0, &qword_24F9663B8);
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock((v5 + v7));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24E8F749C(void *a1, uint64_t a2)
{
  sub_24E8F7644(a1);
  *a1 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214B0, &qword_24F9663B8);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_24E8F7504(void *a1, uint64_t a2)
{
  sub_24E8F7644(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214C0, &qword_24F966448);
  *a1 = a2;

  sub_24F91F618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214B0, &qword_24F9663B8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24E8F758C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return sub_24E8F7EC0(a2, a3);
}

uint64_t sub_24E8F7644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214B0, &qword_24F9663B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E8F76AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214B0, &qword_24F9663B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8F771C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E8F7794()
{
  result = qword_27F215230;
  if (!qword_27F215230)
  {
    type metadata accessor for ContinuePlayingDataIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215230);
  }

  return result;
}

uint64_t sub_24E8F77EC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = type metadata accessor for GamesRecentlyPlayedDataIntent(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E8F7880, 0, 0);
}

uint64_t sub_24E8F7880()
{
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  *(v0 + 56) = __swift_project_value_buffer(v1, qword_27F39E7F0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "ContinuePlayingDataIntent: Fetching games...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214C8, &unk_24F966458);
  *(v0 + 64) = sub_24F92A9E8();
  if (qword_27F20FFB8 != -1)
  {
    swift_once();
  }

  v5 = qword_27F39B0B8;
  *(v0 + 72) = qword_27F39B0B8;
  v6 = *v5;
  v7 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v7;
  v8 = *(v6 + 48);
  *(v0 + 112) = v8;
  v9 = (v8 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v9));
  sub_24E8F8EA0((v5 + v7));
  os_unfair_lock_unlock((v5 + v9));
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);
  v12 = *(v0 + 24);
  v13 = type metadata accessor for ContinuePlayingDataIntent(0);
  v14 = *(v12 + *(v13 + 24));
  v15 = *(v12 + *(v13 + 20));
  sub_24E8F8EBC(v12, v10, type metadata accessor for Player);
  *(v10 + v11[5]) = v14;
  *(v10 + v11[6]) = v15;
  *(v10 + v11[7]) = 0;
  v16 = swift_task_alloc();
  *(v0 + 88) = v16;
  *v16 = v0;
  v16[1] = sub_24E8F7B2C;
  v17 = *(v0 + 48);
  v18 = *(v0 + 32);

  return sub_24E6483AC(v17, v18);
}

uint64_t sub_24E8F7B2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_24E8F7E34;
  }

  else
  {
    v4 = sub_24E8F7C40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24E8F7C40()
{

  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 96);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_24E5DD000, v1, v2, "ContinuePlayingDataIntent: Got %ld games", v5, 0xCu);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = (*(v0 + 112) + 3) & 0x1FFFFFFFCLL;
  *(swift_task_alloc() + 16) = v6;
  os_unfair_lock_lock((v9 + v10));
  sub_24E8F8F84((v9 + v8));
  if (v7)
  {
    v11 = (*(v0 + 72) + ((*(v0 + 112) + 3) & 0x1FFFFFFFCLL));

    os_unfair_lock_unlock(v11);
  }

  else
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 48);
    os_unfair_lock_unlock((*(v0 + 72) + ((*(v0 + 112) + 3) & 0x1FFFFFFFCLL)));

    *(v0 + 16) = v12;
    sub_24F92A9C8();

    sub_24E8F8F24(v13, type metadata accessor for GamesRecentlyPlayedDataIntent);

    v14 = *(v0 + 8);
    v15 = *(v0 + 96);

    v14(v15);
  }
}

uint64_t sub_24E8F7E34()
{
  v1 = *(v0 + 48);

  sub_24E8F8F24(v1, type metadata accessor for GamesRecentlyPlayedDataIntent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E8F7EC0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_24F91F648();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214B0, &qword_24F9663B8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E8F7FD4, 0, 0);
}

uint64_t sub_24E8F7FD4()
{
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[12] = __swift_project_value_buffer(v1, qword_27F39E7F0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "ContinuePlayingDataIntent: Performing intent...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  if (qword_27F20FFB8 != -1)
  {
    swift_once();
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = qword_27F39B0B8;
  v8 = *(*qword_27F39B0B8 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*qword_27F39B0B8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_27F39B0B8 + v9));
  sub_24E8F8E30(v7 + v8, v5);
  os_unfair_lock_unlock((v7 + v9));
  sub_24E8F8E30(v5, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v30 = sub_24F9220B8();
      v31 = sub_24F92BD98();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_24E5DD000, v30, v31, "ContinuePlayingDataIntent: Data not cached.", v32, 2u);
        MEMORY[0x2530542D0](v32, -1, -1);
      }

      v24 = swift_task_alloc();
      v0[13] = v24;
      *v24 = v0;
      v25 = sub_24E8F85C4;
      goto LABEL_21;
    }

    v11 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[5];
    v15 = v0[6];
    v16 = *v11;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214C0, &qword_24F966448);
    (*(v15 + 32))(v12, &v11[*(v17 + 48)], v14);
    sub_24F91F618();
    sub_24F91F558();
    v19 = v18;
    v20 = *(v15 + 8);
    v0[19] = v20;
    v0[20] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v13, v14);
    if (v19 > 30.0)
    {

      v21 = sub_24F9220B8();
      v22 = sub_24F92BD98();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_24E5DD000, v21, v22, "ContinuePlayingDataIntent: Data is cached but is too old, fetching new data.", v23, 2u);
        MEMORY[0x2530542D0](v23, -1, -1);
      }

      v24 = swift_task_alloc();
      v0[21] = v24;
      *v24 = v0;
      v25 = sub_24E8F8AA8;
LABEL_21:
      v24[1] = v25;
      v34 = v0[3];
      v33 = v0[4];

      return sub_24E8F77EC(v34, v33);
    }

    v35 = sub_24F9220B8();
    v36 = sub_24F92BD98();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[11];
    v39 = v0[8];
    v40 = v0[5];
    if (v37)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_24E5DD000, v35, v36, "ContinuePlayingDataIntent: Data is cached and within its TTL, returning.", v41, 2u);
      MEMORY[0x2530542D0](v41, -1, -1);
    }

    v20(v39, v40);
    sub_24E8F7644(v38);

    v42 = v0[1];

    return v42(v16);
  }

  else
  {
    v0[16] = *v0[10];
    v26 = sub_24F9220B8();
    v27 = sub_24F92BD98();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_24E5DD000, v26, v27, "ContinuePlayingDataIntent: Data is mid-fetch, waiting for completion...", v28, 2u);
      MEMORY[0x2530542D0](v28, -1, -1);
    }

    v29 = swift_task_alloc();
    v0[17] = v29;
    *v29 = v0;
    v29[1] = sub_24E8F8874;

    return MEMORY[0x282180668](v0 + 2);
  }
}

uint64_t sub_24E8F85C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_24E8F87E4;
  }

  else
  {
    v4 = sub_24E8F86D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E8F86D8(uint64_t a1)
{
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "ContinuePlayingDataIntent: Data is now cached, returning.", v6, 2u);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  sub_24E8F7644(v5);
  v7 = v1[14];

  v8 = v1[1];

  return v8(v7);
}

uint64_t sub_24E8F87E4()
{
  sub_24E8F7644(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E8F8874()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24E8F8D94;
  }

  else
  {
    v2 = sub_24E8F8988;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8F8988(uint64_t a1)
{
  v2 = v1[2];
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "ContinuePlayingDataIntent: Data finished fetching, returning.", v7, 2u);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  sub_24E8F7644(v6);

  v8 = v1[1];

  return v8(v2);
}

uint64_t sub_24E8F8AA8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_24E8F8CF0;
  }

  else
  {
    v4 = sub_24E8F8BBC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E8F8BBC(uint64_t a1)
{
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[19];
  v6 = v1[11];
  v7 = v1[8];
  v8 = v1[5];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "ContinuePlayingDataIntent: New data fetched and cached, returning.", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v5(v7, v8);
  sub_24E8F7644(v6);
  v10 = v1[22];

  v11 = v1[1];

  return v11(v10);
}

uint64_t sub_24E8F8CF0()
{
  v1 = *(v0 + 88);
  (*(v0 + 152))(*(v0 + 64), *(v0 + 40));
  sub_24E8F7644(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E8F8D94()
{
  v1 = *(v0 + 88);

  sub_24E8F7644(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E8F8E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214B0, &qword_24F9663B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8F8EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8F8F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *SelectionHandlerCollectionElementsObserver.__allocating_init(presenter:componentHeightCache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  swift_weakInit();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  swift_beginAccess();
  swift_weakAssign();

  return v7;
}

void *SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_weakInit();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  swift_beginAccess();
  swift_weakAssign();

  return v4;
}

double sub_24E8F9124(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_24E8F9174(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_24E8F9204;
}

void sub_24E8F9204(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_24E8F9284(void *a1, char *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v43 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v42 = sub_24F91FA78();
  v13 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44[0] = a1;
  sub_24E8E7C80();
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214D0, &qword_24F966468);
  if (swift_dynamicCast())
  {
    sub_24E612C80(&v49, v46);
    v17 = v47;
    v18 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v18 + 8))(&v49, a2, a4, v17, v18);
    v19 = v49;
    if (v49)
    {
      v21 = *(v5 + 32);
      ObjectType = swift_getObjectType();
      v23 = type metadata accessor for ItemLayoutContext(0);
      (*(v21 + 8))(&a2[*(v23 + 20)], 0, 1, ObjectType, v21);
      if ((v19 & 2) == 0)
      {
LABEL_4:
        if ((v19 & 4) == 0)
        {
          return __swift_destroy_boxed_opaque_existential_1(v46);
        }

        goto LABEL_12;
      }
    }

    else if ((v49 & 2) == 0)
    {
      goto LABEL_4;
    }

    v24 = *a2;
    v25 = &a2[*(type metadata accessor for ItemLayoutContext(0) + 32)];
    v26 = type metadata accessor for ShelfLayoutContext(0);
    MEMORY[0x253045380](v24, *&v25[*(v26 + 20)]);
    v27 = sub_24F91F9D8();
    (*(v13 + 8))(v15, v42);
    [v43 deselectItemAtIndexPath:v27 animated:1];

    if ((v19 & 4) == 0)
    {
      return __swift_destroy_boxed_opaque_existential_1(v46);
    }

LABEL_12:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BF8, &qword_24F93B820);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_24F93DE60;
      type metadata accessor for ItemLayoutContext(0);
      swift_getKeyPath();
      sub_24F928A48();

      sub_24F92C7F8();
      *(&v50 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0, &qword_24F9664A0);
      v51 = sub_24E8F9A28();
      *&v49 = v28;
      ComponentHeightCache.invalidate(items:)(&v49);

      if (*(&v50 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1(&v49);
      }
    }

    v29 = *(v5 + 24);
    v30 = swift_getObjectType();
    v31 = type metadata accessor for ItemLayoutContext(0);
    ReloadableItemPagePresenter.reloadItem(_:)(&a2[*(v31 + 20)], v30, v29);
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_24E601704(&v49, &qword_27F2214D8, &qword_24F966470);
  type metadata accessor for AdvertRotationControllerProvider();
  sub_24F928EF8();
  if (!v46[0])
  {
    goto LABEL_18;
  }

  v20 = AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a4);

  if (!v20)
  {
    goto LABEL_18;
  }

  v41 = v9;
  swift_beginAccess();
  sub_24E8F997C(v20 + 48, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221090, &unk_24F965A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_24E601704(v44, &qword_27F2171D0, &unk_24F980290);
    v9 = v41;
LABEL_18:
    v33 = type metadata accessor for ItemLayoutContext(0);
    (*(v10 + 16))(v12, &a2[*(v33 + 20)], v9);
    goto LABEL_19;
  }

  sub_24E612C80(v44, &v49);
  sub_24E615E00(&v49, v46);
  sub_24F928A78();

  __swift_destroy_boxed_opaque_existential_1(&v49);
  v9 = v41;
LABEL_19:
  v34 = *(v5 + 32);
  v35 = swift_getObjectType();
  (*(v34 + 8))(v12, 0, 1, v35, v34);
  v36 = *a2;
  v37 = &a2[*(type metadata accessor for ItemLayoutContext(0) + 32)];
  v38 = type metadata accessor for ShelfLayoutContext(0);
  MEMORY[0x253045380](v36, *&v37[*(v38 + 20)]);
  v39 = sub_24F91F9D8();
  (*(v13 + 8))(v15, v42);
  [v43 deselectItemAtIndexPath:v39 animated:1];

  return (*(v10 + 8))(v12, v9);
}