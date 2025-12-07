uint64_t sub_24E968B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v5 = type metadata accessor for CapsuleButtonContent.Symbol(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v82 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v76 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C78, &qword_24F943EE0);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v98 = &v76 - v14;
  MEMORY[0x28223BE20](v15);
  v89 = &v76 - v16;
  MEMORY[0x28223BE20](v17);
  v90 = &v76 - v18;
  MEMORY[0x28223BE20](v19);
  v81 = &v76 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v76 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v76 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v76 - v28;
  v92 = a1;
  sub_24E60169C(a1, v26, &qword_27F216C78, &qword_24F943EE0);
  v83 = *(v6 + 48);
  if (v83(v26, 1, v5) == 1)
  {
    sub_24E601704(v26, &qword_27F216C78, &qword_24F943EE0);
    v30 = 1;
  }

  else
  {
    sub_24E96B0D8(v26, v10);
    sub_24E96B0D8(v10, v29);
    v30 = 0;
  }

  v31 = *(v6 + 56);
  v97 = v29;
  v31(v29, v30, 1, v5);
  v32 = type metadata accessor for CapsuleButtonContent(0);
  v33 = v92;
  v34 = (v92 + *(v32 + 20));
  v35 = v34[1];
  if (v35)
  {
    v78 = v31;
    v79 = v6 + 56;
    v80 = a3;
    v108 = *v34;
    v109 = v35;
    sub_24E600AEC();

    v88 = sub_24F925E18();
    v87 = v36;
    v38 = v37;
    v96 = v39;
    v40 = type metadata accessor for OfferButtonDesign.Metrics(0);
    v41 = v93;
    *(&v86 + 1) = *(v93 + *(v40 + 40));
    *&v86 = swift_getKeyPath();
    v85 = *(v41 + *(v40 + 44));
    KeyPath = swift_getKeyPath();
    LOBYTE(v100) = v38 & 1;
    v99 = 0;
    v94 = v38 & 1;
    v84 = 0;
    v77 = sub_24F925868();
    sub_24E60169C(v33, v23, &qword_27F216C78, &qword_24F943EE0);
    v42 = v83;
    v43 = v83(v23, 1, v5);
    sub_24E601704(v23, &qword_27F216C78, &qword_24F943EE0);
    if (v43 == 1)
    {
      v44 = v33 + *(v32 + 24);
      v45 = v81;
      sub_24E60169C(v44, v81, &qword_27F216C78, &qword_24F943EE0);
      v42(v45, 1, v5);
      sub_24E601704(v45, &qword_27F216C78, &qword_24F943EE0);
    }

    sub_24F923318();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    LOBYTE(v108) = 0;
    v93 = v77;
    a3 = v80;
    v33 = v92;
    v31 = v78;
  }

  else
  {
    v88 = 0;
    v87 = 0;
    v96 = 0;
    v86 = 0uLL;
    KeyPath = 0;
    v85 = 0;
    v93 = 0;
    v84 = 0;
    v94 = 0;
    v47 = 0;
    v49 = 0;
    v51 = 0;
    v53 = 0;
    v42 = v83;
  }

  v54 = v33 + *(v32 + 24);
  v55 = v89;
  sub_24E60169C(v54, v89, &qword_27F216C78, &qword_24F943EE0);
  if (v42(v55, 1, v5) == 1)
  {
    sub_24E601704(v55, &qword_27F216C78, &qword_24F943EE0);
    v56 = 1;
    v57 = v90;
  }

  else
  {
    v58 = v55;
    v59 = v82;
    sub_24E96B0D8(v58, v82);
    v57 = v90;
    sub_24E96B0D8(v59, v90);
    v56 = 0;
  }

  v31(v57, v56, 1, v5);
  v60 = v98;
  sub_24E60169C(v97, v98, &qword_27F216C78, &qword_24F943EE0);
  v61 = v91;
  sub_24E60169C(v57, v91, &qword_27F216C78, &qword_24F943EE0);
  sub_24E60169C(v60, a3, &qword_27F216C78, &qword_24F943EE0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222C20, &qword_24F96BAC0);
  v63 = a3 + *(v62 + 48);
  v64 = v88;
  *&v100 = v88;
  v65 = a3;
  v66 = v87;
  *(&v100 + 1) = v87;
  *&v101 = v94;
  *(&v101 + 1) = v96;
  v67 = v86;
  v102 = v86;
  v68 = *(&v86 + 1);
  v69 = v84;
  *&v103 = v84;
  *(&v103 + 1) = KeyPath;
  v70 = v85;
  *&v104 = v85;
  *(&v104 + 1) = v93;
  *&v105 = v47;
  *(&v105 + 1) = v49;
  *&v106 = v51;
  *(&v106 + 1) = v53;
  v107 = 0;
  *(v63 + 112) = 0;
  v71 = v105;
  *(v63 + 64) = v104;
  *(v63 + 80) = v71;
  *(v63 + 96) = v106;
  v72 = v100;
  v73 = v101;
  v74 = v103;
  *(v63 + 32) = v102;
  *(v63 + 48) = v74;
  *v63 = v72;
  *(v63 + 16) = v73;
  sub_24E60169C(v61, v65 + *(v62 + 64), &qword_27F216C78, &qword_24F943EE0);
  sub_24E60169C(&v100, &v108, &qword_27F222C28, &qword_24F96BAC8);
  sub_24E601704(v57, &qword_27F216C78, &qword_24F943EE0);
  sub_24E601704(v97, &qword_27F216C78, &qword_24F943EE0);
  sub_24E601704(v61, &qword_27F216C78, &qword_24F943EE0);
  v108 = v64;
  v109 = v66;
  v110 = v94;
  v111 = v96;
  v112 = v67;
  v113 = v68;
  v114 = v69;
  v115 = KeyPath;
  v116 = v70;
  v117 = v93;
  v118 = v47;
  v119 = v49;
  v120 = v51;
  v121 = v53;
  v122 = 0;
  sub_24E601704(&v108, &qword_27F222C28, &qword_24F96BAC8);
  return sub_24E601704(v98, &qword_27F216C78, &qword_24F943EE0);
}

uint64_t sub_24E96943C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CA0, &qword_24F96BC48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  v8 = sub_24F923A38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24ECD08E4(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_24E601704(v7, &qword_27F222CA0, &qword_24F96BC48);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13[8] = 1;
  v13[0] = a4 & 1;
  sub_24F923A18();
  return (*(v9 + 8))(v11, v8);
}

void (*sub_24E9696A4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24E96972C(uint64_t a1)
{
  v2 = sub_24F9234D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927538();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  if (*(a1 + 8) == 3)
  {
LABEL_2:
    (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2);
    v16 = sub_24F9234C8();
    (*(v3 + 8))(v5, v2);
    if (v16)
    {
      v17 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    }

    else
    {
      v17 = sub_24F926C88();
    }

    v25 = v17;
    return sub_24F9238D8();
  }

  v18 = *(a1 + 1);
  if (v18 <= 5)
  {
    if (v18 != 1)
    {
      if (v18 != 3)
      {
        goto LABEL_2;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (v18 == 6)
    {
      (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2, v13);
      v21 = sub_24F9234C8();
      (*(v3 + 8))(v5, v2);
      if (v21)
      {
        sub_24F927438();
      }

      else
      {
        sub_24F927458();
      }

      return sub_24F9238D8();
    }

    if (v18 != 7)
    {
      if (v18 != 8)
      {
        goto LABEL_2;
      }

LABEL_13:
      v24[1] = sub_24F9251C8();
      return sub_24F9238D8();
    }
  }

  v19 = v12;
  (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2, v13);
  v20 = sub_24F9234C8();
  (*(v3 + 8))(v5, v2);
  if (v20)
  {
    sub_24F927438();
  }

  else
  {
    sub_24F927458();
  }

  (*(v7 + 16))(v10, v15, v19);
  v22 = sub_24F9238D8();
  (*(v7 + 8))(v15, v19);
  return v22;
}

id sub_24E969B2C(uint64_t a1, void *a2, void *a3)
{
  if (a2 != 3)
  {
    return sub_24E9534EC(a2, a3);
  }

  return result;
}

uint64_t sub_24E969B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CapsuleButton(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  if (*(v4 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v4 + v6));
  }

  v7 = *(v5 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F9234D8();
    (*(*(v8 - 8) + 8))(v4 + v6 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E969CF4@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for ProgressCapsuleButton(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_24E967438(v8, v3, v4, v5, v6, a1);
}

uint64_t objectdestroy_30Tm_0()
{
  v1 = *(v0 + 32);
  v11[0] = *(v0 + 16);
  v11[1] = v1;
  v2 = type metadata accessor for ProgressCapsuleButton(0, v11);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));

  if (*(v3 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  }

  v4 = v2[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F9234D8();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v2[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F923E98();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v2[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F9234F8();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  sub_24E62A5EC(*(v3 + v2[20]), *(v3 + v2[20] + 8));
  return swift_deallocObject();
}

uint64_t sub_24E96A034(char a1)
{
  v3 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v9[1] = v3;
  v4 = *(type metadata accessor for ProgressCapsuleButton(0, v9) - 8);
  v5 = (v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80)));
  v6 = *v5;
  v7 = *(v5 + 1);
  LOBYTE(v9[0]) = v6;
  *(&v9[0] + 1) = v7;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

uint64_t sub_24E96A100(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F923D48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E96A1C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F923D48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E96A284(uint64_t a1)
{
  result = sub_24F923D48();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E96A31C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C78, &qword_24F943EE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v15 = *(v14 - 8);
    v16 = a3[10];
LABEL_15:
    v9 = *(v15 + 48);
    v10 = a1 + v16;
    goto LABEL_16;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v15 = *(v17 - 8);
    v16 = a3[11];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v15 = *(v18 - 8);
    v16 = a3[12];
    goto LABEL_15;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348, &qword_24F950A78);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[14];

  return v20(v21, a2, v19);
}

uint64_t sub_24E96A580(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C78, &qword_24F943EE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[10];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348, &qword_24F950A78);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[14];

  return v19(v20, a2, a2, v18);
}

void sub_24E96A7C4(uint64_t a1)
{
  sub_24E965F50(319, &qword_27F222BD8, type metadata accessor for CapsuleButtonContent.Symbol, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24E96AA50(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24E96AA50(319, &qword_27F222BE0, &type metadata for OfferButtonPresenterViewTheme, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24E965F50(319, &qword_27F222B10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_24E965F50(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24E965F50(319, &qword_27F222BA0, MEMORY[0x277CDF450], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24E96AA50(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_24E965F50(319, &qword_27F21B360, type metadata accessor for OfferButtonDesign, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
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

void sub_24E96AA50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24E96AAA0(__n128 a1)
{
  sub_24F9217A8();
  sub_24F924C38();
  swift_getWitnessTable();
  sub_24E96BA4C(&qword_27F21A8C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222BA8, &unk_24F96B940);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219DB0, &qword_24F987E00);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  v1 = MEMORY[0x277CE0868];
  sub_24E602068(&qword_27F222BB0, &qword_27F222BA8, &unk_24F96B940, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_24E602068(&unk_27F236270, &qword_27F219DB0, &qword_24F987E00, v1);
  return swift_getWitnessTable();
}

uint64_t sub_24E96AC8C(void *a1)
{
  sub_24F924038();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v1 = sub_24F927128();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for CapsuleButton(255, v1, WitnessTable, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F255320, &unk_24F9397C0);
  sub_24F924038();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
  return swift_getWitnessTable();
}

uint64_t sub_24E96AE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  return sub_24E96972C(v5);
}

id sub_24E96AECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  sub_24E60169C(a1, a9, &qword_27F216C78, &qword_24F943EE0);
  v16 = type metadata accessor for CapsuleButtonContent(0);
  sub_24E60169C(a4, a9 + v16[6], &qword_27F216C78, &qword_24F943EE0);
  *(a9 + v16[9]) = 0x4010000000000000;
  v17 = v16[10];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  swift_storeEnumTagMultiPayload();
  v18 = v16[11];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v19 = v16[12];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  swift_storeEnumTagMultiPayload();
  v20 = a9 + v16[13];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v16[14];
  *(a9 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8, &unk_24F96B930);
  swift_storeEnumTagMultiPayload();
  v22 = (a9 + v16[5]);
  *v22 = a2;
  v22[1] = a3;
  *(a9 + v16[7]) = a5;
  v23 = (a9 + v16[8]);
  *v23 = a6;
  v23[1] = a7;
  v23[2] = a8;

  return sub_24E969B2C(a6, a7, a8);
}

uint64_t sub_24E96B0D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapsuleButtonContent.Symbol(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E96B14C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferButtonDesign.Size(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E96B1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E96B224()
{
  result = qword_27F222C38;
  if (!qword_27F222C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222BF0, &qword_24F96BA28);
    sub_24E96B3EC(&qword_27F222C40, &qword_27F222BE8, &qword_24F96BA20, sub_24E96B308);
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222C38);
  }

  return result;
}

unint64_t sub_24E96B308()
{
  result = qword_27F222C48;
  if (!qword_27F222C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222BF8, &qword_24F96BA30);
    sub_24E602068(&qword_27F222C50, &qword_27F222C58, &qword_24F96BB68, MEMORY[0x277CDF510]);
    sub_24E96B3EC(&qword_27F222C60, &qword_27F222C18, &qword_24F96BAB8, sub_24E96B470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222C48);
  }

  return result;
}

uint64_t sub_24E96B3EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24E96B470()
{
  result = qword_27F222C68;
  if (!qword_27F222C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222C10, &unk_24F96BAA8);
    sub_24E96B528();
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222C68);
  }

  return result;
}

unint64_t sub_24E96B528()
{
  result = qword_27F222C70;
  if (!qword_27F222C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222C08, &qword_24F96BA70);
    sub_24E602068(&qword_27F222C78, &qword_27F222C80, &qword_24F96BB70, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222C70);
  }

  return result;
}

unint64_t sub_24E96B610()
{
  result = qword_27F222C88;
  if (!qword_27F222C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222C30, &qword_24F96BB30);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222C88);
  }

  return result;
}

unint64_t sub_24E96B6D0()
{
  result = qword_27F222C90;
  if (!qword_27F222C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222C90);
  }

  return result;
}

uint64_t sub_24E96B724(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v35 = a1;
  v36 = a3;
  v16 = sub_24F923A38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v33[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222C98, &qword_24F96BC40);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v33[-v22];
  v24 = sub_24F923BB8();
  (*(*(v24 - 8) + 16))(v23, a5, v24);
  v25 = *(v21 + 44);
  sub_24E96BA4C(&qword_27F2195F8, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  sub_24F92BB88();
  sub_24F92BC08();
  if (*&v23[v25] != v38[0])
  {
    v26 = a4;
    v27 = (v17 + 16);
    v28 = a2;
    v29 = (v17 + 8);
    v30 = v28 & 1;
    v34 = v26 & 1;
    do
    {
      v31 = sub_24F92BC88();
      (*v27)(v19);
      v31(v38, 0);
      sub_24F92BC18();
      v39.origin.x = a6;
      v39.origin.y = a7;
      v39.size.width = a8;
      v39.size.height = a9;
      CGRectGetMidX(v39);
      v40.origin.x = a6;
      v40.origin.y = a7;
      v40.size.width = a8;
      v40.size.height = a9;
      CGRectGetMidY(v40);
      sub_24F9278A8();
      LOBYTE(v38[0]) = v30;
      v37 = v34;
      sub_24F923A28();
      (*v29)(v19, v16);
      sub_24F92BC08();
    }

    while (*&v23[v25] != v38[0]);
  }

  return sub_24E601704(v23, &qword_27F222C98, &qword_24F96BC40);
}

uint64_t sub_24E96BA4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E96BAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CA8, &qword_24F96BC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E96BB98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CA8, &qword_24F96BC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24E96BC80(uint64_t a1)
{
  sub_24E96BCF4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24E96BCF4(uint64_t a1)
{
  if (!qword_27F222CC0)
  {
    sub_24F925778();
    v1 = sub_24F923578();
    if (!v2)
    {
      atomic_store(v1, &qword_27F222CC0);
    }
  }
}

uint64_t sub_24E96BD70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CA8, &qword_24F96BC50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E96BE40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CA8, &qword_24F96BC50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E96BF10(uint64_t a1)
{
  sub_24E96BCF4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24E96BFA8(void *a1)
{
  v2 = sub_24F92B098();
  v5 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  v3 = v5;
  if (v5)
  {
    if (a1)
    {
      v4 = a1;
      [v5 setPresentingViewController_];
      [v5 present];

      v3 = v4;
    }
  }
}

uint64_t sub_24E96C080(uint64_t a1)
{
  v15 = sub_24F924848();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CD8, &qword_24F9D6900);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_24F925778();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, v7, &qword_27F222CD8, &qword_24F9D6900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_24F92BDC8();
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_24F925768();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24E96C314@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView(0);
  sub_24E600AEC();

  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_24E96C394(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24E96CD68(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_24E96CEF4(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView);
  v8 = v1;
  return sub_24F926F88();
}

uint64_t sub_24E96C4FC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v1 - 8);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v27 = &v27 - v4;
  v5 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F91F008();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = objc_opt_self();
  v20 = sub_24F92B098();
  v21 = [v19 linkWithBundleIdentifier_];

  if (v21)
  {
    v22 = [v21 flow];

    v23 = [v22 localizedButtonTitle];
    if (v23)
    {
      sub_24F92B0D8();
    }
  }

  sub_24F91F0B8();
  sub_24F91F018();
  v24 = v27;
  sub_24F91F488();
  sub_24E60169C(v24, v28, &qword_27F228530, &unk_24F93C6E0);
  sub_24E658540();
  sub_24F91F038();
  sub_24E70E058(v24);

  sub_24F91F0B8();
  sub_24F91F018();
  sub_24F91EE58();
  sub_24F91EE78();
  v25 = *(v7 + 8);
  v25(v9, v6);
  v25(v12, v6);
  sub_24F91EE78();
  v25(v15, v6);
  return (v25)(v18, v6);
}

uint64_t sub_24E96C8D4()
{
  v0 = sub_24F925778();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView(0);
  sub_24F76A084(v3);
  sub_24F925768();
  (*(v1 + 8))(v3, v0);
  return sub_24F923A58();
}

uint64_t sub_24E96C9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = sub_24F91F008();
  MEMORY[0x28223BE20](v6 - 8);
  sub_24E96C4FC(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24F925DF8();
  v10 = v9;
  v12 = v11;
  v20 = v13;
  KeyPath = swift_getKeyPath();
  sub_24E96CD68(v2, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_24E96CEF4(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView);
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CE0, &unk_24F96BD80) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CE8, &qword_24F987DE0);
  result = sub_24F923A78();
  *v17 = KeyPath;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v20;
  return result;
}

uint64_t sub_24E96CBCC()
{
  v1 = (type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CD8, &qword_24F9D6900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925778();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E96CCE8()
{
  type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView(0);

  return sub_24E96C8D4();
}

uint64_t sub_24E96CD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E96CDD0()
{
  v1 = *(type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CD8, &qword_24F9D6900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F925778();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E96CEF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E96CF5C()
{
  v1 = *(type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24E96C080(v2);
}

unint64_t sub_24E96CFC8()
{
  result = qword_27F222CF0;
  if (!qword_27F222CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222CE0, &unk_24F96BD80);
    sub_24E602068(&qword_27F222CF8, &qword_27F222CE8, &qword_24F987DE0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222CF0);
  }

  return result;
}

uint64_t LegacyAppStateControllerFactory.makeAppStateController(objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ASDPurchaseHistoryContext(0);
  sub_24F928EF8();
  if (v15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v14;
  }

  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  sub_24E69A5C4(0, &qword_27F222D10, 0x277CEE6F0);
  sub_24F92A758();
  v6 = v17;
  sub_24E69A5C4(0, &qword_27F2222A8, 0x277CEE620);
  sub_24F92A758();
  v7 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D18, &unk_24F96BD90);
  sub_24F92A758();
  sub_24F928EF8();
  if (v13)
  {
    v8 = 0;
  }

  else
  {
    v8 = v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D20, &qword_24F98FFC0);
  sub_24F928EF8();
  if (v12)
  {
    v9 = v12;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = (*(a3 + 16))(v18, v17, v16, &v14, v5, v8, v9, a2, a3);

  __swift_destroy_boxed_opaque_existential_1(&v14);
  return v10;
}

uint64_t LegacyAppStateController.__allocating_init(dataSources:transitionRules:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LegacyAppStateController.init(dataSources:transitionRules:)(a1, a2);
  return v4;
}

void LegacyAppStateController.init(dataSources:transitionRules:)(uint64_t a1, uint64_t a2)
{
  v51[0] = a2;
  *&v62 = sub_24F92BEE8();
  v55 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v54 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92BE88();
  v56 = *(v5 - 8);
  v57 = v56;
  MEMORY[0x28223BE20](v5);
  v6 = sub_24F927DC8();
  MEMORY[0x28223BE20](v6 - 8);
  *(v2 + 48) = MEMORY[0x277D84F98];
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v52 = "ContentPresenter.swift";
  sub_24F927DA8();
  v63 = MEMORY[0x277D84F90];
  v58 = sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  v60 = sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  v53 = *MEMORY[0x277D85260];
  v7 = v54;
  v55 = *(v55 + 104);
  v8 = v62;
  (v55)(v54);
  v61[8] = sub_24F92BF38();
  v52 = "chineAccessQueue";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20, &qword_24F977EA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v63 = v9;
  v51[1] = v5;
  sub_24F92C6A8();
  sub_24F927DA8();
  v10 = v7;
  v11 = v7;
  v12 = v53;
  v13 = v55;
  (v55)(v11, v53, v8);
  v14 = sub_24F92BF38();
  v15 = v61;
  v61[9] = v14;
  v57 = "ntroller.dataSourceRefreshQueue";
  sub_24F927DA8();
  v63 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  v13(v10, v12, v62);
  v16 = sub_24F92BF38();
  v17 = MEMORY[0x277D84F90];
  v15[10] = v16;
  v15[11] = v17;
  *(v15 + 96) = 0;
  v15[2] = a1;
  v18 = *(a1 + 16);

  if (v18)
  {
    v19 = 0;
    v20 = a1 + 32;
    v59 = v18 - 1;
    v21 = MEMORY[0x277D84F90];
    while (2)
    {
      v60 = v21;
      v22 = v19;
      while (1)
      {
        if (v22 >= *(a1 + 16))
        {
          goto LABEL_38;
        }

        v62 = *(v20 + 16 * v22);
        v19 = v22 + 1;
        ObjectType = swift_getObjectType();
        v24 = *(&v62 + 1);
        v25 = *(*(&v62 + 1) + 80);
        swift_unknownObjectRetain();
        if ((v25(ObjectType, v24) & 1) == 0)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v22;
        if (v18 == v19)
        {
          v21 = v60;
LABEL_13:
          v30 = 0;
          v61[3] = v21;
          v17 = MEMORY[0x277D84F90];
LABEL_14:
          v60 = v17;
          v31 = v30;
          while (v31 < *(a1 + 16))
          {
            v62 = *(v20 + 16 * v31);
            v30 = v31 + 1;
            v32 = swift_getObjectType();
            v33 = *(&v62 + 1);
            v34 = *(*(&v62 + 1) + 80);
            swift_unknownObjectRetain();
            if (v34(v32, v33))
            {
              v17 = v60;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v63 = v17;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_24F458390(0, *(v17 + 16) + 1, 1);
                v17 = v63;
              }

              v36 = v62;
              v38 = *(v17 + 16);
              v37 = *(v17 + 24);
              if (v38 >= v37 >> 1)
              {
                sub_24F458390((v37 > 1), v38 + 1, 1);
                v36 = v62;
                v17 = v63;
              }

              *(v17 + 16) = v38 + 1;
              *(v17 + 16 * v38 + 32) = v36;
              if (v59 != v31)
              {
                goto LABEL_14;
              }

              goto LABEL_26;
            }

            swift_unknownObjectRelease();
            ++v31;
            if (v18 == v30)
            {
              v17 = v60;
              goto LABEL_26;
            }
          }

          goto LABEL_39;
        }
      }

      v21 = v60;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v21;
      if ((v26 & 1) == 0)
      {
        sub_24F458390(0, *(v21 + 16) + 1, 1);
        v21 = v63;
      }

      v27 = v62;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_24F458390((v28 > 1), v29 + 1, 1);
        v27 = v62;
        v21 = v63;
      }

      *(v21 + 16) = v29 + 1;
      *(v21 + 16 * v29 + 32) = v27;
      if (v59 != v22)
      {
        continue;
      }

      goto LABEL_13;
    }
  }

  v15[3] = v17;
LABEL_26:
  v39 = 0;
  v40 = v61;
  v61[4] = v17;
  v41 = MEMORY[0x277D84F90];
LABEL_27:
  v42 = (a1 + 32 + 16 * v39);
  while (1)
  {
    if (v18 == v39)
    {

      v40[5] = v41;
      v40[7] = v51[0];
      LegacyAppStateController.loadDataSources()();
      return;
    }

    if (v39 >= *(a1 + 16))
    {
      break;
    }

    ++v39;
    v43 = v42 + 2;
    v44 = *v42;
    type metadata accessor for PurchaseHistoryAppStateDataSource();
    v45 = swift_dynamicCastClass();
    v42 = v43;
    if (v45)
    {
      v46 = *(v43 - 1);
      swift_unknownObjectRetain();
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v41;
      if ((v47 & 1) == 0)
      {
        sub_24F458390(0, *(v41 + 16) + 1, 1);
        v41 = v63;
      }

      v49 = *(v41 + 16);
      v48 = *(v41 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_24F458390((v48 > 1), v49 + 1, 1);
        v41 = v63;
      }

      *(v41 + 16) = v49 + 1;
      v50 = v41 + 16 * v49;
      *(v50 + 32) = v44;
      *(v50 + 40) = v46;
      v40 = v61;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

Swift::Void __swiftcall LegacyAppStateController.loadDataSources()()
{
  v1 = v0;
  v14 = 0;
  v2 = *(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v14;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_24E972228;
  *(v4 + 24) = v3;
  aBlock[4] = sub_24E97225C;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_32;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else if (v14 == 1)
  {
    v6 = *(v1 + 16);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = (v6 + 40);
      do
      {
        v9 = *v8;
        ObjectType = swift_getObjectType();
        v11 = *(v9 + 16);

        swift_unknownObjectRetain();
        v11(v1, &protocol witness table for LegacyAppStateController, ObjectType, v9);
        swift_unknownObjectRelease();
        v8 += 2;
        --v7;
      }

      while (v7);
    }

    v12 = swift_allocObject();
    swift_weakInit();

    LegacyAppStateController.refreshDataSources(completion:)(sub_24E9722D4, v12);
  }

  else
  {
  }
}

uint64_t LegacyAppStateController.stateMachine(forApp:)(uint64_t *a1)
{
  type metadata accessor for LegacyAppStateMachine(0);
  sub_24F92BF18();
  return v2;
}

uint64_t sub_24E96DDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X8>)
{
  swift_beginAccess();
  v13 = *(a1 + 48);
  if (*(v13 + 16) && (v14 = sub_24E7728F0(a2, a3), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
    *a6 = v16;
  }

  else
  {
    v40 = v6;
    swift_endAccess();
    v18 = *(a1 + 56);
    type metadata accessor for LegacyAppStateMachine(0);
    v19 = swift_allocObject();
    *(v19 + 160) = MEMORY[0x277D84F90];
    *(v19 + 184) = 0;
    swift_unknownObjectWeakInit();
    v20 = objc_allocWithZone(MEMORY[0x277CCAC60]);

    *(v19 + 192) = [v20 init];
    v21 = a2;
    v22 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
    v23 = sub_24F91F648();
    (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
    v24 = (v19 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine_redownloadBuyParams);
    *v24 = 0;
    v24[1] = 0;
    *(v19 + 16) = v21;
    *(v19 + 24) = a3;
    v25 = a4[1];
    *(v19 + 32) = *a4;
    *(v19 + 48) = v25;
    v26 = a4[3];
    *(v19 + 64) = a4[2];
    *(v19 + 80) = v26;
    v27 = a5[1];
    *(v19 + 96) = *a5;
    *(v19 + 112) = v27;
    v28 = a5[3];
    *(v19 + 128) = a5[2];
    *(v19 + 144) = v28;
    *(v19 + 168) = v18;
    swift_beginAccess();
    *(v19 + 184) = &protocol witness table for LegacyAppStateController;
    swift_unknownObjectWeakAssign();

    sub_24E8B9478(a4, &v36);
    sub_24E8B9478(a5, &v36);
    if (qword_27F210C50 != -1)
    {
      swift_once();
    }

    v29 = sub_24F92AAE8();
    __swift_project_value_buffer(v29, qword_27F39CF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    *(&v37 + 1) = &type metadata for AdamId;
    *&v36 = v21;
    *(&v36 + 1) = a3;
    sub_24F9283B8();
    sub_24E601704(&v36, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v30 = *(v19 + 48);
    v36 = *(v19 + 32);
    v37 = v30;
    v31 = *(v19 + 80);
    v38 = *(v19 + 64);
    v39 = v31;
    v32 = LegacyAppState.dictionaryKey.getter();
    v35[3] = MEMORY[0x277D837D0];
    v35[0] = v32;
    v35[1] = v33;
    sub_24F928438();
    sub_24E601704(v35, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A598();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = *(a1 + 48);
    *(a1 + 48) = 0x8000000000000000;
    sub_24E81DE38(v19, v21, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + 48) = v35[0];
    result = swift_endAccess();
    *a6 = v19;
  }

  return result;
}

Swift::Void __swiftcall LegacyAppStateController.refreshState(for:)(GameStoreKit::AdamId a1)
{
  v2 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v3 = *a1.underlyingAdamID._countAndFlagsBits;
  v1 = v3;
  v4 = v2;
  sub_24E96E218(&v3);
  v3 = v1;
  v4 = v2;
  sub_24E96E708(&v3);
}

void sub_24E96E218(uint64_t isUniquelyReferenced_nonNull_native)
{
  v32 = *(isUniquelyReferenced_nonNull_native + 8);
  v33 = *isUniquelyReferenced_nonNull_native;
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v31 = MEMORY[0x277D84F90];
    v5 = v2 + 40;
    v30 = *(v2 + 16);
    do
    {
      v6 = v3 - v4;
      v7 = (v5 + 16 * v4);
      while (1)
      {
        if (v4 >= *(v2 + 16))
        {
          __break(1u);
          return;
        }

        v8 = *v7;
        ObjectType = swift_getObjectType();
        *v59 = v33;
        *&v59[8] = v32;
        v10 = *(v8 + 48);
        swift_unknownObjectRetain();
        v10(&v43, v59, ObjectType, v8);
        swift_unknownObjectRelease();
        if ((v46 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          break;
        }

        *v59 = v43;
        *&v59[16] = v44;
        *&v59[32] = v45;
        v60 = v46;
        isUniquelyReferenced_nonNull_native = sub_24E601704(v59, &unk_27F22BE00, &qword_24F96BDA0);
        v7 += 2;
        ++v4;
        if (!--v6)
        {
          goto LABEL_15;
        }
      }

      *v59 = v43;
      *&v59[16] = v44;
      *&v59[32] = v45;
      v60 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_24E618004(0, *(v31 + 16) + 1, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
      }

      v12 = *(v31 + 16);
      v11 = *(v31 + 24);
      if (v12 >= v11 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_24E618004((v11 > 1), v12 + 1, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
      }

      ++v4;
      v57 = *&v59[32];
      v58 = v60;
      v13 = *v59;
      v55 = *v59;
      v56 = *&v59[16];
      *(v31 + 16) = v12 + 1;
      v14 = (v31 + (v12 << 6));
      v15 = v56;
      v16 = v58;
      v14[4] = v57;
      v14[5] = v16;
      v14[2] = v13;
      v14[3] = v15;
      v5 = v2 + 40;
      v3 = v30;
    }

    while (v6 != 1);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

LABEL_15:
  memset(&v59[8], 0, 40);
  *v59 = 4;
  v60 = xmmword_24F966510;
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  type metadata accessor for LegacyAppStateMachine(0);
  sub_24F92BF18();
  v17 = v43;
  if (*(v31 + 16) == 1)
  {
    v18 = *(v31 + 32);
    v19 = *(v31 + 48);
    v20 = *(v31 + 80);
    v45 = *(v31 + 64);
    v46 = v20;
    v43 = v18;
    v44 = v19;
    v21 = *(v31 + 32);
    v53 = *(v31 + 48);
    v54 = v45;
    v52 = v21;
    v22 = v20;
    sub_24E8B9478(&v43, &v55);
    if ((v22 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      v43 = v52;
      v44 = v53;
      v45 = v54;
      v46 = v22;
      v48 = 0u;
      v49 = 0u;
      v47 = 4;
      v50 = 0;
      v51 = xmmword_24F966510;
      sub_24E601704(&v43, &qword_27F222D38, &unk_24F96BF30);
    }

    else
    {
      v43 = v52;
      v44 = v53;
      v45 = v54;
      v46 = v22;
      v55 = v52;
      v56 = v53;
      v57 = v54;
      v58 = v22;
      *&v35[0] = 4;
      *(v35 + 8) = 0u;
      *(&v35[1] + 8) = 0u;
      *(&v35[2] + 1) = 0;
      v36 = xmmword_24F966510;
      sub_24E9726D0(&v43, &v34);
      v23 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v55, v35);
      v37[0] = v35[0];
      v37[1] = v35[1];
      v37[2] = v35[2];
      v37[3] = v36;
      sub_24E88D2AC(v37);
      v38[0] = v55;
      v38[1] = v56;
      v38[2] = v57;
      v38[3] = v58;
      sub_24E88D2AC(v38);
      v39 = v52;
      v40 = v53;
      v41 = v54;
      v42 = v22;
      sub_24E601704(&v39, &unk_27F22BE00, &qword_24F96BDA0);
      if (v23)
      {

        v24 = *(v17 + 192);
        [v24 lock];
        v26 = *(v17 + 32);
        v25 = *(v17 + 48);
        v27 = *(v17 + 80);
        v45 = *(v17 + 64);
        v46 = v27;
        v43 = v26;
        v44 = v25;
        v28 = v60;
        *(v17 + 64) = *&v59[32];
        *(v17 + 80) = v28;
        v29 = *&v59[16];
        *(v17 + 32) = *v59;
        *(v17 + 48) = v29;
        sub_24E88D2AC(&v43);
        sub_24EF0ACE8();
        [v24 unlock];
LABEL_21:

        return;
      }
    }
  }

  sub_24E96EBFC(v31, &v55);

  v43 = v55;
  v44 = v56;
  v45 = v57;
  v46 = v58;
  v39 = v55;
  v40 = v56;
  v41 = v57;
  if ((v58 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    goto LABEL_21;
  }

  v55 = v39;
  v56 = v40;
  v57 = v41;
  *(&v58 + 1) = *(&v46 + 1);
  LegacyAppStateMachine.transition(to:)(&v55);

  sub_24E601704(&v43, &unk_27F22BE00, &qword_24F96BDA0);
}

void sub_24E96E708(uint64_t isUniquelyReferenced_nonNull_native)
{
  v32 = *(isUniquelyReferenced_nonNull_native + 8);
  v33 = *isUniquelyReferenced_nonNull_native;
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v31 = MEMORY[0x277D84F90];
    v5 = v2 + 40;
    v30 = *(v2 + 16);
    do
    {
      v6 = v3 - v4;
      v7 = (v5 + 16 * v4);
      while (1)
      {
        if (v4 >= *(v2 + 16))
        {
          __break(1u);
          return;
        }

        v8 = *v7;
        ObjectType = swift_getObjectType();
        *v59 = v33;
        *&v59[8] = v32;
        v10 = *(v8 + 48);
        swift_unknownObjectRetain();
        v10(&v43, v59, ObjectType, v8);
        swift_unknownObjectRelease();
        if ((v46 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          break;
        }

        *v59 = v43;
        *&v59[16] = v44;
        *&v59[32] = v45;
        v60 = v46;
        isUniquelyReferenced_nonNull_native = sub_24E601704(v59, &unk_27F22BE00, &qword_24F96BDA0);
        v7 += 2;
        ++v4;
        if (!--v6)
        {
          goto LABEL_15;
        }
      }

      *v59 = v43;
      *&v59[16] = v44;
      *&v59[32] = v45;
      v60 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_24E618004(0, *(v31 + 16) + 1, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
      }

      v12 = *(v31 + 16);
      v11 = *(v31 + 24);
      if (v12 >= v11 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_24E618004((v11 > 1), v12 + 1, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
      }

      ++v4;
      v57 = *&v59[32];
      v58 = v60;
      v13 = *v59;
      v55 = *v59;
      v56 = *&v59[16];
      *(v31 + 16) = v12 + 1;
      v14 = (v31 + (v12 << 6));
      v15 = v56;
      v16 = v58;
      v14[4] = v57;
      v14[5] = v16;
      v14[2] = v13;
      v14[3] = v15;
      v5 = v2 + 40;
      v3 = v30;
    }

    while (v6 != 1);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

LABEL_15:
  memset(&v59[8], 0, 40);
  *v59 = 4;
  v60 = xmmword_24F966510;
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  type metadata accessor for LegacyAppStateMachine(0);
  sub_24F92BF18();
  v17 = v43;
  v18 = *(v31 + 16);
  if (v18 == 1)
  {
    v19 = *(v31 + 32);
    v20 = *(v31 + 48);
    v21 = *(v31 + 80);
    v45 = *(v31 + 64);
    v46 = v21;
    v43 = v19;
    v44 = v20;
    v22 = *(v31 + 32);
    v53 = *(v31 + 48);
    v54 = v45;
    v52 = v22;
    v23 = v21;
    sub_24E8B9478(&v43, &v55);
    if ((v23 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      v43 = v52;
      v44 = v53;
      v45 = v54;
      v46 = v23;
      v48 = 0u;
      v49 = 0u;
      v47 = 4;
      v50 = 0;
      v51 = xmmword_24F966510;
      sub_24E601704(&v43, &qword_27F222D38, &unk_24F96BF30);
    }

    else
    {
      v43 = v52;
      v44 = v53;
      v45 = v54;
      v46 = v23;
      v55 = v52;
      v56 = v53;
      v57 = v54;
      v58 = v23;
      *&v35[0] = 4;
      *(v35 + 8) = 0u;
      *(&v35[1] + 8) = 0u;
      *(&v35[2] + 1) = 0;
      v36 = xmmword_24F966510;
      sub_24E9726D0(&v43, &v34);
      v24 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v55, v35);
      v37[0] = v35[0];
      v37[1] = v35[1];
      v37[2] = v35[2];
      v37[3] = v36;
      sub_24E88D2AC(v37);
      v38[0] = v55;
      v38[1] = v56;
      v38[2] = v57;
      v38[3] = v58;
      sub_24E88D2AC(v38);
      v39 = v52;
      v40 = v53;
      v41 = v54;
      v42 = v23;
      sub_24E601704(&v39, &unk_27F22BE00, &qword_24F96BDA0);
      if (v24)
      {
LABEL_23:

        v25 = *(v17 + 192);
        [v25 lock];
        v26 = *(v17 + 112);
        v43 = *(v17 + 96);
        v44 = v26;
        v27 = *(v17 + 144);
        v45 = *(v17 + 128);
        v46 = v27;
        v28 = *&v59[16];
        *(v17 + 96) = *v59;
        *(v17 + 112) = v28;
        v29 = v60;
        *(v17 + 128) = *&v59[32];
        *(v17 + 144) = v29;
        sub_24E88D2AC(&v43);
        sub_24EF0ACE8();
        [v25 unlock];
        goto LABEL_24;
      }
    }

    v18 = *(v31 + 16);
  }

  if (!v18)
  {
    goto LABEL_23;
  }

  sub_24E96EBFC(v31, &v55);

  v43 = v55;
  v44 = v56;
  v45 = v57;
  v46 = v58;
  v39 = v55;
  v40 = v56;
  v41 = v57;
  if ((v58 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
  {
    v55 = v39;
    v56 = v40;
    v57 = v41;
    *(&v58 + 1) = *(&v46 + 1);
    LegacyAppStateMachine.transition(toBetaState:)(&v55);

    sub_24E601704(&v43, &unk_27F22BE00, &qword_24F96BDA0);
    return;
  }

LABEL_24:
}

uint64_t sub_24E96EBFC@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 32);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = xmmword_24F962330;
    v5 = v3 - 1;
    v6 = (result + 32);
    v7 = 0x3FFFFFEFELL;
    while (1)
    {
      v8 = v6[1];
      v37 = *v6;
      v38 = v8;
      v9 = v6[3];
      v39 = v6[2];
      v40 = v9;
      v41[0] = v42;
      v41[1] = v43;
      v41[2] = v44;
      v41[3] = v45;
      v41[4] = v37;
      v41[5] = v8;
      v41[6] = v39;
      v41[7] = v9;
      if ((v7 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
      {
        v10 = v40 >> 60;
        if (v40 >> 60)
        {
          if ((v10 - 5) < 2)
          {
            goto LABEL_19;
          }

          if (v10 == 4)
          {
LABEL_20:
            v18 = *(&v37 + 1);
            v20 = v38;
            v19 = v39;
            sub_24E8B9478(&v37, v28);
            v21 = v19;
            v22 = v18;
            v23 = v20;
            v24 = *(&v20 + 1);
            goto LABEL_21;
          }

          sub_24E8B9478(&v37, v28);
          v11 = &v42;
        }

        else
        {
          v11 = &v37;
        }
      }

      else
      {
        if (!(v7 >> 60))
        {
          v12 = v40 >> 60;
          if (v40 >> 60 == 4)
          {
            goto LABEL_20;
          }

          if (v12 == 5)
          {
LABEL_19:
            sub_24E8B9478(&v37, v28);
            sub_24E8B9478(&v37, v28);
LABEL_21:
            result = sub_24E601704(v41, &qword_27F222D30, &qword_24F96BF28);
            v34 = v37;
            v35 = v38;
            v25 = v40;
            v36 = v39;
            goto LABEL_23;
          }

          if (v12 == 6)
          {
            goto LABEL_20;
          }
        }

        sub_24E8B9478(&v37, v28);
        v11 = &v42;
        sub_24E9726D0(&v42, v28);
      }

      result = sub_24E601704(v41, &qword_27F222D30, &qword_24F96BF28);
      v13 = v11[1];
      v31 = *v11;
      v32 = v13;
      v33 = v11[2];
      v7 = *(v11 + 6);
      v14 = *(v11 + 7);
      if (!v5)
      {
        break;
      }

      v42 = v31;
      v43 = v32;
      v44 = v33;
      *&v45 = v7;
      *(&v45 + 1) = v14;
      --v5;
      v6 += 4;
    }

    if ((v7 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      v15 = v4[1];
      v28[0] = *v4;
      v28[1] = v15;
      v17 = v4[3];
      v29 = v4[2];
      v16 = v29;
      v30 = v17;
      *a2 = v28[0];
      a2[1] = v15;
      a2[2] = v16;
      a2[3] = v17;
      return sub_24E8B9478(v28, &v27);
    }

    v34 = v31;
    v35 = v32;
    v36 = v33;
    *&v25 = v7;
    *(&v25 + 1) = v14;
LABEL_23:
    v26 = v35;
    *a2 = v34;
    a2[1] = v26;
    a2[2] = v36;
    a2[3] = v25;
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = xmmword_24F962330;
  }

  return result;
}

Swift::Void __swiftcall LegacyAppStateController.refreshStates(for:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = (a1._rawValue + 40);
    do
    {
      v3 = *v2;
      v5 = *(v2 - 1);
      v4 = v5;
      v6 = v3;

      sub_24E96E218(&v5);
      v5 = v4;
      v6 = v3;
      sub_24E96E708(&v5);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

void LegacyAppStateController.prospectiveState(for:)(uint64_t isUniquelyReferenced_nonNull_native@<X0>, __int128 *a2@<X8>)
{
  v42 = *(isUniquelyReferenced_nonNull_native + 8);
  v43 = *isUniquelyReferenced_nonNull_native;
  v3 = *(v2 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v41 = MEMORY[0x277D84F90];
    v6 = v3 + 40;
    v39 = *(v3 + 16);
    do
    {
      v7 = v4 - v5;
      v8 = (v6 + 16 * v5);
      while (1)
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *v8;
        ObjectType = swift_getObjectType();
        *&v68 = v43;
        *(&v68 + 1) = v42;
        v11 = *(v9 + 48);
        swift_unknownObjectRetain();
        v11(v72, &v68, ObjectType, v9);
        swift_unknownObjectRelease();
        if ((v73 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          break;
        }

        v68 = *v72;
        v69 = *&v72[16];
        v70 = *&v72[32];
        v71 = v73;
        isUniquelyReferenced_nonNull_native = sub_24E601704(&v68, &unk_27F22BE00, &qword_24F96BDA0);
        v8 += 2;
        ++v5;
        if (!--v7)
        {
          goto LABEL_15;
        }
      }

      v68 = *v72;
      v69 = *&v72[16];
      v70 = *&v72[32];
      v71 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_24E618004(0, *(v41 + 16) + 1, 1, v41);
        v41 = isUniquelyReferenced_nonNull_native;
      }

      v13 = *(v41 + 16);
      v12 = *(v41 + 24);
      if (v13 >= v12 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_24E618004((v12 > 1), v13 + 1, 1, v41);
        v41 = isUniquelyReferenced_nonNull_native;
      }

      ++v5;
      v66 = v70;
      v67 = v71;
      v14 = v68;
      v64 = v68;
      v65 = v69;
      *(v41 + 16) = v13 + 1;
      v15 = (v41 + (v13 << 6));
      v16 = v65;
      v17 = v67;
      v15[4] = v66;
      v15[5] = v17;
      v15[2] = v14;
      v15[3] = v16;
      v6 = v3 + 40;
      v4 = v39;
    }

    while (v7 != 1);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

LABEL_15:
  memset(&v72[8], 0, 40);
  *v72 = 4;
  v73 = xmmword_24F966510;
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  type metadata accessor for LegacyAppStateMachine(0);
  sub_24F92BF18();
  v18 = v68;
  sub_24E96EBFC(v41, &v64);

  v68 = v64;
  v69 = v65;
  v70 = v66;
  v71 = v67;
  v61 = v64;
  v62 = v65;
  v63 = v66;
  v19 = v67;
  if ((v67 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    goto LABEL_23;
  }

  v20 = *(&v71 + 1);
  v21 = *(v18 + 168);
  v64 = v61;
  v65 = v62;
  v66 = v63;
  *(&v67 + 1) = *(&v71 + 1);
  v22 = LegacyAppState.dictionaryKey.getter();
  if (!*(v21 + 16))
  {

    goto LABEL_22;
  }

  v24 = sub_24E76D644(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_22:
    sub_24E601704(&v68, &unk_27F22BE00, &qword_24F96BDA0);
    goto LABEL_23;
  }

  sub_24E615E00(*(v21 + 56) + 40 * v24, v56);
  sub_24E612E28(v56, v57);
  v27 = v58;
  v28 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v29 = *(v18 + 192);
  [v29 lock];
  v30 = *(v18 + 48);
  v52 = *(v18 + 32);
  v53 = v30;
  v31 = *(v18 + 80);
  v54 = *(v18 + 64);
  v55 = v31;
  sub_24E8B9478(&v52, &v48);
  [v29 unlock];
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v44 = v61;
  v45 = v62;
  v46 = v63;
  *&v47 = v19;
  *(&v47 + 1) = v20;
  v32 = (*(v28 + 8))(&v48, &v44, v27, v28);
  v60[0] = v48;
  v60[1] = v49;
  v60[2] = v50;
  v60[3] = v51;
  sub_24E88D2AC(v60);
  if (v32 & 1) != 0 || (v48 = v61, v49 = v62, v50 = v63, *&v51 = v19, *(&v51 + 1) = v20, v44 = *v72, v45 = *&v72[16], v46 = *&v72[32], v47 = v73, (_s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v48, &v44)))
  {

    v33 = v62;
    *a2 = v61;
    a2[1] = v33;
    a2[2] = v63;
    *(a2 + 6) = v19;
    *(a2 + 7) = v20;
    __swift_destroy_boxed_opaque_existential_1(v57);
    return;
  }

  sub_24E601704(&v68, &unk_27F22BE00, &qword_24F96BDA0);
  __swift_destroy_boxed_opaque_existential_1(v57);
LABEL_23:
  v34 = *(v18 + 192);
  [v34 lock];
  v35 = *(v18 + 32);
  v36 = *(v18 + 48);
  v37 = *(v18 + 80);
  v66 = *(v18 + 64);
  v67 = v37;
  v64 = v35;
  v65 = v36;
  a2[2] = v66;
  a2[3] = v37;
  v38 = *(v18 + 48);
  *a2 = *(v18 + 32);
  a2[1] = v38;
  sub_24E8B9478(&v64, v60);
  [v34 unlock];
}

Swift::Void __swiftcall LegacyAppStateController.setWaiting(for:installationType:)(GameStoreKit::AdamId a1, GameStoreKit::InstallationType installationType)
{
  v3 = v2;
  v4 = *a1.underlyingAdamID._countAndFlagsBits;
  v5 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v6 = *a1.underlyingAdamID._object;
  v29 = 0u;
  v30 = 0u;
  v28 = 4;
  v31 = 0;
  v32 = xmmword_24F966510;
  v20 = v5;
  v21 = v4;
  type metadata accessor for LegacyAppStateMachine(0);
  sub_24F92BF18();
  v7 = *&v37[0];
  v8 = *(*&v37[0] + 192);
  [v8 lock];
  v9 = v7[3];
  v33 = v7[2];
  v34 = v9;
  v10 = v7[5];
  v35 = v7[4];
  v36 = v10;
  sub_24E8B9478(&v33, v37);
  [v8 unlock];
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v27 = v36;
  *&v22[0] = v6;
  v23 = 0;
  LOBYTE(v8) = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v24, v22);
  v37[0] = v24;
  v37[1] = v25;
  v37[2] = v26;
  v37[3] = v27;
  sub_24E88D2AC(v37);
  if (v8)
  {
LABEL_7:
  }

  else
  {
    v11 = *(v3 + 24);
    v12 = (v11 + 40);
    v13 = -*(v11 + 16);
    v14 = -1;
    while (1)
    {
      if (v13 + v14 == -1)
      {
LABEL_6:
        *&v24 = v6;
        *&v27 = 0;
        LegacyAppStateMachine.transition(to:)(&v24);
        goto LABEL_7;
      }

      if (++v14 >= *(v11 + 16))
      {
        break;
      }

      v15 = v12 + 2;
      v16 = *v12;
      ObjectType = swift_getObjectType();
      *&v24 = v21;
      *(&v24 + 1) = v20;
      LOBYTE(v22[0]) = v6;
      v18 = *(v16 + 64);
      swift_unknownObjectRetain();
      v19 = v18(&v24, v22, ObjectType, v16);
      swift_unknownObjectRelease();
      v12 = v15;
      if (v19)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall LegacyAppStateController.clearWaiting(for:refreshState:)(GameStoreKit::AdamId a1, Swift::Bool refreshState)
{
  object = a1.underlyingAdamID._object;
  v3 = *a1.underlyingAdamID._countAndFlagsBits;
  v4 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v12 = v3;
      v13 = v4;
      v10 = *(v8 + 72);
      swift_unknownObjectRetain();
      v10(&v12, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  if (object)
  {
    v12 = v3;
    v13 = v4;
    sub_24E96E218(&v12);
    v12 = v3;
    v13 = v4;
    sub_24E96E708(&v12);
  }
}

uint64_t LegacyAppStateController.refreshUpdateRegistry(for:externalVersionId:buyParams:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v7 = sub_24F927DC8();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_24F927D88();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a1;
  v11 = a1[1];
  v5[18] = v9;
  v5[19] = v10;
  v5[20] = v11;

  return MEMORY[0x2822009F8](sub_24E96F7E8, 0, 0);
}

uint64_t sub_24E96F7E8()
{
  v1 = *(v0[12] + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v16 = (v0[14] + 8);
    v17 = v0[17];
    type metadata accessor for DeviceAppStateDataSource(0);
    do
    {
      if (swift_dynamicCastClass())
      {
        v4 = v0[19];
        v5 = v0[20];
        v19 = v0[18];
        v20 = v0[16];
        v21 = v0[15];
        v22 = v0[13];
        v7 = v0[10];
        v6 = v0[11];
        v8 = v0[9];
        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = v2;
        v10 = swift_allocObject();
        v10[2] = v9;
        v10[3] = v8;
        v10[4] = v7;
        v10[5] = v6;
        v10[6] = v4;
        v10[7] = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_24F93DE60;
        swift_unknownObjectRetain();

        sub_24F927D78();
        v0[8] = v11;
        sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
        sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
        sub_24F92C6A8();
        v12 = swift_allocObject();
        *(v12 + 16) = sub_24E972374;
        *(v12 + 24) = v10;
        v0[6] = sub_24E972460;
        v0[7] = v12;
        v0[2] = MEMORY[0x277D85DD0];
        v0[3] = 1107296256;
        v0[4] = sub_24EAF8248;
        v0[5] = &block_descriptor_20_0;
        v13 = _Block_copy(v0 + 2);

        sub_24F927DA8();
        MEMORY[0x2530518B0](0, v21, v19, v13);
        _Block_release(v13);
        v2 = v18;

        (*v16)(v21, v22);
        (*(v17 + 8))(v19, v20);
        swift_unknownObjectRelease();
      }

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  v14 = v0[1];

  return v14();
}

Swift::Bool __swiftcall LegacyAppStateController.isRedownloadable(for:hasActivePreorder:)(GameStoreKit::AdamId a1, Swift::Bool_optional hasActivePreorder)
{
  v3 = *(v2 + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v15 = *a1.underlyingAdamID._countAndFlagsBits;
  v14 = (LOBYTE(a1.underlyingAdamID._object) == 2) | LOBYTE(a1.underlyingAdamID._object);
  v7 = (v3 + 40);
  v8 = v4 - 1;
  while (1)
  {
    v9 = *v7;
    ObjectType = swift_getObjectType();
    v16[0] = v15;
    v16[1] = v6;
    v11 = *(v9 + 48);
    swift_unknownObjectRetain();
    v11(v17, v16, ObjectType, v9);
    swift_unknownObjectRelease();
    v19[0] = v17[0];
    v19[1] = v17[1];
    v19[2] = v17[2];
    v19[3] = v18;
    if ((v18 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      goto LABEL_8;
    }

    if (v18 >> 60 != 1)
    {
      break;
    }

    v12 = v19[0];
    sub_24E601704(v19, &unk_27F22BE00, &qword_24F96BDA0);
    if (!(v14 & 1 | ((v12 & 1) == 0)))
    {
      return 1;
    }

LABEL_8:
    if (v8 == v5)
    {
      return 0;
    }

    ++v5;
    v7 += 2;
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      return 0;
    }
  }

  if (v18 >> 60 != 3)
  {
    sub_24E601704(v19, &unk_27F22BE00, &qword_24F96BDA0);
    goto LABEL_8;
  }

  sub_24E601704(v19, &unk_27F22BE00, &qword_24F96BDA0);
  return 1;
}

Swift::Bool __swiftcall LegacyAppStateController.purchaseHistoryIncludes(_:)(GameStoreKit::AdamId a1)
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v13 = *a1.underlyingAdamID._countAndFlagsBits;
  v6 = (v2 + 40);
  v7 = v3 - 1;
  while (1)
  {
    v8 = *v6;
    ObjectType = swift_getObjectType();
    v14[0] = v13;
    v14[1] = v5;
    v10 = *(v8 + 48);
    swift_unknownObjectRetain();
    v10(v15, v14, ObjectType, v8);
    swift_unknownObjectRelease();
    v17[0] = v15[0];
    v17[1] = v15[1];
    v17[2] = v15[2];
    v17[3] = v16;
    if ((v16 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      goto LABEL_8;
    }

    if (v16 >> 60 != 1)
    {
      break;
    }

    v11 = v17[0];
    sub_24E601704(v17, &unk_27F22BE00, &qword_24F96BDA0);
    if ((v11 & 1) == 0)
    {
      return 1;
    }

LABEL_8:
    if (v7 == v4)
    {
      return 0;
    }

    ++v4;
    v6 += 2;
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      return 0;
    }
  }

  if (v16 >> 60 != 3)
  {
    sub_24E601704(v17, &unk_27F22BE00, &qword_24F96BDA0);
    goto LABEL_8;
  }

  sub_24E601704(v17, &unk_27F22BE00, &qword_24F96BDA0);
  return 1;
}

Swift::Bool __swiftcall LegacyAppStateController.isLocalApplication(for:includeBetaApps:)(GameStoreKit::AdamId a1, Swift::Bool includeBetaApps)
{
  v3 = 24;
  if (a1.underlyingAdamID._object)
  {
    v3 = 16;
  }

  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v14 = *a1.underlyingAdamID._countAndFlagsBits;

  v7 = 0;
  v8 = (v4 + 40);
  while (1)
  {
    v9 = *v8;
    ObjectType = swift_getObjectType();
    v15[0] = v14;
    v15[1] = v6;
    v11 = *(v9 + 48);
    swift_unknownObjectRetain();
    v11(v16, v15, ObjectType, v9);
    swift_unknownObjectRelease();
    v18 = v16[0];
    v19 = v16[1];
    v20 = v16[2];
    v21 = v17;
    if ((v17 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
    {
      break;
    }

LABEL_15:
    if (v5 - 1 == v7)
    {
      goto LABEL_18;
    }

    ++v7;
    v8 += 2;
    if (v7 >= *(v4 + 16))
    {
      __break(1u);
LABEL_18:

      return 0;
    }
  }

  v12 = v17 >> 60;
  if (v17 >> 60 != 8)
  {
    if (v12 == 2 || v12 == 7)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (*(&v21 + 1) || v17 != 0x8000000000000000 || v18 != 1 || v19 | *(&v18 + 1) | *(&v19 + 1) | v20 | *(&v20 + 1))
  {
LABEL_14:
    sub_24E601704(&v18, &unk_27F22BE00, &qword_24F96BDA0);
    goto LABEL_15;
  }

LABEL_20:
  sub_24E601704(&v18, &unk_27F22BE00, &qword_24F96BDA0);

  return 1;
}

Swift::String_optional __swiftcall LegacyAppStateController.betaAppBundleVersion(for:)(Swift::String_optional result)
{
  v2 = 0;
  v20 = *(result.value._countAndFlagsBits + 8);
  v21 = *result.value._countAndFlagsBits;
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);
  v5 = v3 + 40;
  countAndFlagsBits = MEMORY[0x277D84F90];
LABEL_2:
  v6 = (v5 + 16 * v2);
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v7 = v6 + 2;
    v8 = *v6;
    ObjectType = swift_getObjectType();
    v22[0] = v21;
    v22[1] = v20;
    v10 = *(v8 + 88);
    swift_unknownObjectRetain();
    v11 = v10(v22, ObjectType, v8);
    v13 = v12;
    result.value._countAndFlagsBits = swift_unknownObjectRelease();
    v6 = v7;
    if (v13)
    {
      result.value._countAndFlagsBits = swift_isUniquelyReferenced_nonNull_native();
      if ((result.value._countAndFlagsBits & 1) == 0)
      {
        result.value._countAndFlagsBits = sub_24E615CF4(0, *(countAndFlagsBits + 16) + 1, 1, countAndFlagsBits);
        countAndFlagsBits = result.value._countAndFlagsBits;
      }

      v15 = *(countAndFlagsBits + 16);
      v14 = *(countAndFlagsBits + 24);
      if (v15 >= v14 >> 1)
      {
        result.value._countAndFlagsBits = sub_24E615CF4((v14 > 1), v15 + 1, 1, countAndFlagsBits);
        countAndFlagsBits = result.value._countAndFlagsBits;
      }

      v5 = v3 + 40;
      *(countAndFlagsBits + 16) = v15 + 1;
      v16 = countAndFlagsBits + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      goto LABEL_2;
    }
  }

  if (*(countAndFlagsBits + 16))
  {
    v17 = *(countAndFlagsBits + 32);
    v18 = *(countAndFlagsBits + 40);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  result.value._countAndFlagsBits = v17;
  result.value._object = v18;
  return result;
}

uint64_t LegacyAppStateController.fetchBetaAppBundleVersion(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_24E970218, 0, 0);
}

uint64_t sub_24E970218(uint64_t a1, uint64_t a2)
{
  v9 = v2;
  v3 = v2[4];
  v8[0] = v2[3];
  v8[1] = v3;
  v4 = v8;
  v5 = LegacyAppStateController.betaAppBundleVersion(for:)(*(&a2 - 1));
  v6 = v2[1];

  return v6(v5.value._countAndFlagsBits, v5.value._object);
}

double LegacyAppStateController.refreshDataSources(for:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v7 = *v4;
  v8 = sub_24F927D88();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24F927DC8();
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  v23 = v4[9];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = v22;
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = a3;
  v17[5] = v15;
  v17[6] = v14;
  v17[7] = v7;
  aBlock[4] = sub_24E9724B0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_27_0;
  v19 = _Block_copy(aBlock);

  sub_24F927DA8();
  v26 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v13, v10, v19);
  _Block_release(v19);
  (*(v25 + 8))(v10, v8);
  (*(v11 + 8))(v13, v24);

  return result;
}

void sub_24E9705C8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24F927DE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  if (!*(*(Strong + 24) + 16))
  {

LABEL_9:
    a2(Strong);
    return;
  }

  v36 = v12;
  v17 = Strong;
  v18 = dispatch_group_create();
  v38 = v17;
  v19 = *(*(v17 + 24) + 16);
  if (v19)
  {
    v31 = v15;
    v32 = v10;
    v33 = v9;
    v34 = a3;
    v35 = a2;

    v20 = (v30 + 40);
    v37 = a4;
    do
    {
      v21 = *v20;
      swift_unknownObjectRetain();
      dispatch_group_enter(v18);
      ObjectType = swift_getObjectType();
      v39[0] = v37;
      v39[1] = a5;
      v23 = swift_allocObject();
      *(v23 + 16) = v38;
      *(v23 + 24) = v18;
      v24 = a5;
      v25 = *(v21 + 40);

      v26 = v18;
      v25(v39, sub_24E9727F8, v23, ObjectType, v21);
      a5 = v24;

      swift_unknownObjectRelease();
      v20 += 2;
      --v19;
    }

    while (v19);

    a2 = v35;
    v10 = v32;
    v9 = v33;
    v15 = v31;
  }

  v27 = v36;
  sub_24F927DD8();
  sub_24F927E58();
  v28 = *(v10 + 8);
  v28(v27, v9);
  sub_24F92BE48();
  v29 = (v28)(v15, v9);
  a2(v29);
}

double LegacyAppStateController.refreshDataSources(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_24F927D88();
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F927DC8();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3[9];
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = v6;
  aBlock[4] = sub_24E972528;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_34;
  v15 = _Block_copy(aBlock);

  sub_24E5FCA4C(a1, a2);
  sub_24F927DA8();
  v20 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v12, v9, v15);
  _Block_release(v15);
  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);

  return result;
}

void sub_24E970B90(uint64_t a1, void (*a2)(__n128), uint64_t a3)
{
  v5 = sub_24F927DE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (*(*(Strong + 16) + 16))
    {
      v31 = v8;
      v14 = dispatch_group_create();
      v15 = *(*(v13 + 16) + 16);
      if (v15)
      {
        v26 = v11;
        v27 = v6;
        v28 = v5;
        v29 = a3;
        v30 = a2;

        v16 = (v25 + 40);
        do
        {
          v17 = *v16;
          swift_unknownObjectRetain();
          dispatch_group_enter(v14);
          ObjectType = swift_getObjectType();
          v19 = swift_allocObject();
          *(v19 + 16) = v13;
          *(v19 + 24) = v14;
          v20 = *(v17 + 32);

          v21 = v14;
          v20(sub_24E972674, v19, ObjectType, v17);
          swift_unknownObjectRelease();

          v16 += 2;
          --v15;
        }

        while (v15);

        a2 = v30;
        v6 = v27;
        v5 = v28;
        v11 = v26;
      }

      v22 = v31;
      sub_24F927DD8();
      sub_24F927E58();
      v23 = *(v6 + 8);
      v23(v22, v5);
      sub_24F92BE48();
      v24 = (v23)(v11, v5);
      if (a2)
      {
        (a2)(v24);
      }

      return;
    }
  }

  if (a2)
  {
    (a2)(Strong);
  }
}

void sub_24E970E10(__int128 *a1, uint64_t a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 48);
  if (v8 != 255)
  {
    v9 = a1[1];
    v15 = *a1;
    v16 = v9;
    v17 = a1[2];
    v18 = v8;
    v10 = AppStateDataSourceError.errorDescription.getter();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v14 = sub_24F92AAE8();
      __swift_project_value_buffer(v14, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      *(&v16 + 1) = MEMORY[0x277D837D0];
      *&v15 = v12;
      *(&v15 + 1) = v13;
      sub_24F928438();
      sub_24E601704(&v15, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5A8();
    }
  }

  dispatch_group_leave(group);
}

void LegacyAppStateController.performAfterLoading(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v12 = 0;
  v6 = *(v3 + 80);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = &v12;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24E972574;
  *(v8 + 24) = v7;
  aBlock[4] = sub_24E9727BC;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_44;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v12 == 1)
    {
      a1(v10);
    }
  }
}

uint64_t sub_24E971144(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 96) == 2)
  {
    *a2 = 1;
  }

  else
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;
    swift_beginAccess();
    v8 = *(v6 + 88);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 88) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_24E618160(0, v8[2] + 1, 1, v8);
      *(v6 + 88) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_24E618160((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_24E972460;
    v12[5] = v7;
    *(v6 + 88) = v8;
    return swift_endAccess();
  }

  return result;
}

double sub_24E9712B8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24E971310();
  }

  return result;
}

double sub_24E971310()
{
  v1 = sub_24F927D88();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927DC8();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 80);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24E972764;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_82;
  v8 = _Block_copy(aBlock);

  sub_24F927DA8();
  v13 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);

  return result;
}

void sub_24E9715E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 96) == 2)
    {
    }

    else
    {
      *(Strong + 96) = 2;
      v2 = Strong;
      swift_beginAccess();
      v3 = *(v2 + 88);
      v4 = *(v3 + 16);
      if (v4)
      {

        v5 = v3 + 40;
        do
        {
          v6 = *(v5 - 8);

          v6(v7);

          v5 += 16;
          --v4;
        }

        while (v4);

        v8 = v2;
      }

      else
      {
        v8 = v2;
      }

      *(v8 + 88) = MEMORY[0x277D84F90];
    }
  }
}

id *LegacyAppStateController.deinit()
{

  return v0;
}

uint64_t LegacyAppStateController.__deallocating_deinit()
{
  LegacyAppStateController.deinit();

  return swift_deallocClassInstance();
}

void sub_24E971794(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *a1;
  v1 = v3;
  v4 = v2;
  sub_24E96E218(&v3);
  v3 = v1;
  v4 = v2;
  sub_24E96E708(&v3);
}

uint64_t sub_24E9717E0(uint64_t *a1)
{
  type metadata accessor for LegacyAppStateMachine(0);
  sub_24F92BF18();
  return v2;
}

uint64_t sub_24E971890(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E614970;

  return LegacyAppStateController.refreshUpdateRegistry(for:externalVersionId:buyParams:)(a1, a2, a3, a4);
}

uint64_t sub_24E971954(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_24E970218, 0, 0);
}

void sub_24E971980(char a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19[0] = a2;
  v5 = sub_24F927DC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927D88();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v3 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_accessQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  aBlock[0] = v13;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  if (a1)
  {
    sub_24F92C6A8();
    v14 = swift_allocObject();
    v15 = v20;
    *(v14 + 16) = v19[0];
    *(v14 + 24) = v15;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_76;
    v16 = _Block_copy(aBlock);

    sub_24F927DA8();
    MEMORY[0x2530518B0](0, v8, v12, v16);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v17 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v17);
    v18 = v20;
    v19[-2] = v19[0];
    v19[-1] = v18;
    sub_24F92BF08();
    (*(v10 + 8))(v12, v9);
  }
}

void sub_24E971DB8(char a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19[0] = a2;
  v5 = sub_24F927DC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927D88();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v3 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_accessQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  aBlock[0] = v13;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  if (a1)
  {
    sub_24F92C6A8();
    v14 = swift_allocObject();
    v15 = v20;
    *(v14 + 16) = v19[0];
    *(v14 + 24) = v15;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_57;
    v16 = _Block_copy(aBlock);

    sub_24F927DA8();
    MEMORY[0x2530518B0](0, v8, v12, v16);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v17 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v17);
    v18 = v20;
    v19[-2] = v19[0];
    v19[-1] = v18;
    sub_24F92BF08();
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_24E9721F0()
{

  return swift_deallocObject();
}

void sub_24E972228()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 96))
  {
    v2 = *(v0 + 24);
    *(v1 + 96) = 1;
    *v2 = 1;
  }
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E97229C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E9722F4()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24E97232C()
{

  return swift_deallocObject();
}

uint64_t sub_24E97238C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E9723D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24E972428()
{

  return swift_deallocObject();
}

uint64_t sub_24E972468()
{

  return swift_deallocObject();
}

uint64_t sub_24E9724E0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E972534()
{

  return swift_deallocObject();
}

unint64_t sub_24E972600()
{
  result = qword_27F222D28;
  if (!qword_27F222D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222D28);
  }

  return result;
}

uint64_t objectdestroy_64Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24E9726D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BE00, &qword_24F96BDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_24E97280C(double a1, double a2)
{
  v4 = sub_24F922348();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if ((*(v2 + 40) & 1) == 0)
  {
    v18 = *(v2 + 32) * a1;
    if ((*(v2 + 24) & 1) == 0)
    {
      return floor(v18);
    }

    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F922308();
    goto LABEL_8;
  }

  if ((*(v2 + 24) & 1) == 0)
  {
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222F8();
    v18 = v19;
LABEL_8:
    (*(v5 + 8))(v13, v4);
    return floor(v18);
  }

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_24F9222E8();
  v15 = v14;
  sub_24F9222E8();
  if (v15 >= v16)
  {
    sub_24F922308();
  }

  else
  {
    sub_24F9222F8();
    a1 = v17;
  }

  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  return a1;
}

uint64_t sub_24E972A38(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 7368564;
    v6 = 0x6D6F74746F62;
    if (a1 != 2)
    {
      v6 = 0x676E696C69617274;
    }

    if (a1)
    {
      v5 = 0x676E696461656CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x654C6D6F74746F62;
    v2 = 0x72546D6F74746F62;
    if (a1 != 7)
    {
      v2 = 0x7265746E6563;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x696461654C706F74;
    if (a1 != 4)
    {
      v3 = 0x6C69617254706F74;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24E972B74()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F2045BC(v3, v1);
  return sub_24F92D0B8();
}

uint64_t sub_24E972BC4()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F2045BC(v3, v1);
  return sub_24F92D0B8();
}

unint64_t sub_24E972C08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24E97672C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24E972C38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E972A38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24E972D14(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E70, &qword_24F96C368);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9761BC();
  sub_24F92D128();
  v12 = *v3;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E10, &qword_24F96C340);
  sub_24E976408();
  sub_24F92CD48();
  if (!v2)
  {
    *&v12 = *(v3 + 2);
    BYTE8(v12) = *(v3 + 24);
    v11 = 1;
    sub_24E620F7C();
    sub_24F92CCF8();
    *&v12 = *(v3 + 4);
    BYTE8(v12) = *(v3 + 40);
    v11 = 2;
    sub_24F92CCF8();
    v12 = v3[3];
    v11 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E20, &qword_24F96C348);
    sub_24E9764BC();
    sub_24F92CD48();
    LOBYTE(v12) = *(v3 + 64);
    v11 = 4;
    sub_24E976570();
    sub_24F92CCF8();
    LOBYTE(v12) = *(v3 + 65);
    v11 = 5;
    sub_24E9765C4();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E972FE0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222EA8, &qword_24F96C370);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v23 - v3;
  v23 = type metadata accessor for GSKVideo(0);
  MEMORY[0x28223BE20](v23);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222EB0, &qword_24F96C378);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v23 - v6;
  v7 = sub_24F9289E8();
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v31 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MixedMediaItem.ContentType(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222EB8, &unk_24F96C380);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E97630C();
  sub_24F92D128();
  sub_24E976618(v30, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v24;
    sub_24E97667C(v11, v24, type metadata accessor for GSKVideo);
    v38 = 1;
    sub_24E976360();
    v17 = v25;
    sub_24F92CC98();
    sub_24E9766E4(&qword_27F214068, type metadata accessor for GSKVideo, &protocol conformance descriptor for GSKVideo);
    v18 = v27;
    sub_24F92CD48();
    (*(v26 + 8))(v17, v18);
    sub_24E81BC84(v16);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128, &qword_24F94BDF0);
    (*(v32 + 32))(v31, v11, v7);
    v37 = 0;
    sub_24E9763B4();
    sub_24F92CC98();
    v36 = 0;
    sub_24E9766E4(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    v20 = v29;
    v21 = v33;
    sub_24F92CD48();
    if (v21)
    {

      (*(v28 + 8))(v34, v20);
      (*(v32 + 8))(v31, v7);
      return (*(v13 + 8))(v15, v12);
    }

    else
    {
      v33 = v15;
      v22 = v31;
      v35 = 1;
      sub_24F92CD08();

      (*(v28 + 8))(v34, v20);
      (*(v32 + 8))(v22, v7);
      return (*(v13 + 8))(v33, v12);
    }
  }
}

uint64_t sub_24E9735D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E40, &qword_24F96C350);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E48, &qword_24F96C358);
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  MEMORY[0x28223BE20](v5);
  v56 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E50, &qword_24F96C360);
  v55 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for MixedMediaItem.ContentType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24E97630C();
  v21 = v58;
  sub_24F92D108();
  if (!v21)
  {
    v48 = v13;
    v49 = v16;
    v23 = v55;
    v22 = v56;
    v58 = v11;
    v24 = v57;
    v25 = sub_24F92CC78();
    v26 = (2 * *(v25 + 16)) | 1;
    v60 = v25;
    v61 = v25 + 32;
    v62 = 0;
    v63 = v26;
    v27 = sub_24E643430();
    v28 = v10;
    if (v27 == 2 || v62 != v63 >> 1)
    {
      v34 = sub_24F92C918();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v36 = v58;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v23 + 8))(v28, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v27)
      {
        v64 = 1;
        sub_24E976360();
        v29 = v54;
        v30 = v8;
        sub_24F92CBA8();
        type metadata accessor for GSKVideo(0);
        sub_24E9766E4(&qword_27F214020, type metadata accessor for GSKVideo, &protocol conformance descriptor for GSKVideo);
        v31 = v48;
        v32 = v51;
        sub_24F92CC68();
        (*(v50 + 8))(v29, v32);
        (*(v23 + 8))(v28, v30);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v33 = v31;
        v24 = v57;
      }

      else
      {
        v64 = 0;
        sub_24E9763B4();
        v38 = v22;
        v39 = v8;
        sub_24F92CBA8();
        sub_24F9289E8();
        v40 = v38;
        v64 = 0;
        sub_24E9766E4(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
        v41 = v52;
        sub_24F92CC68();
        v64 = 1;
        v42 = sub_24F92CC28();
        v50 = v43;
        v51 = v42;
        v54 = 0;
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128, &qword_24F94BDF0);
        v45 = v49;
        v46 = &v49[*(v44 + 48)];
        (*(v53 + 8))(v40, v41);
        (*(v23 + 8))(v28, v39);
        swift_unknownObjectRelease();
        v47 = v50;
        *v46 = v51;
        v46[1] = v47;
        swift_storeEnumTagMultiPayload();
        v33 = v45;
      }

      sub_24E97667C(v33, v19, type metadata accessor for MixedMediaItem.ContentType);
      sub_24E97667C(v19, v24, type metadata accessor for MixedMediaItem.ContentType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

unint64_t sub_24E973CE8()
{
  v1 = *v0;
  v2 = 0x6953656372756F73;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x636E41656D617266;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6E6F697463617266;
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

uint64_t sub_24E973DC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E976C94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E973DEC(uint64_t a1)
{
  v2 = sub_24E9761BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E973E28(uint64_t a1)
{
  v2 = sub_24E9761BC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24E973E64@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24E9752D0(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_24E973ED0()
{
  if (*v0)
  {
    return 0x65646F43706F7263;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24E973F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000)
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

uint64_t sub_24E973FE8(uint64_t a1)
{
  v2 = sub_24E9763B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E974024(uint64_t a1)
{
  v2 = sub_24E9763B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E974060()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24E974098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
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

uint64_t sub_24E974170(uint64_t a1)
{
  v2 = sub_24E97630C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9741AC(uint64_t a1)
{
  v2 = sub_24E97630C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E9741FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E974280(uint64_t a1)
{
  v2 = sub_24E976360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9742BC(uint64_t a1)
{
  v2 = sub_24E976360();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E97433C(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6548656E6F685069;
      break;
    case 2:
    case 17:
    case 39:
    case 44:
    case 84:
      result = 0xD000000000000012;
      break;
    case 3:
    case 23:
    case 49:
      result = 0xD000000000000015;
      break;
    case 4:
    case 9:
    case 57:
    case 78:
      result = 0xD000000000000014;
      break;
    case 5:
    case 56:
    case 75:
    case 77:
    case 85:
      result = 0xD000000000000011;
      break;
    case 6:
    case 16:
    case 43:
    case 66:
    case 68:
      result = 0xD000000000000019;
      break;
    case 7:
    case 10:
    case 20:
    case 26:
    case 47:
    case 69:
      result = 0xD00000000000001CLL;
      break;
    case 8:
    case 31:
    case 33:
    case 54:
    case 60:
    case 62:
    case 70:
      result = 0xD00000000000001BLL;
      break;
    case 11:
    case 29:
      result = 0xD00000000000001FLL;
      break;
    case 12:
    case 34:
    case 63:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0x614C656E6F685069;
      break;
    case 14:
    case 41:
    case 51:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
    case 25:
    case 27:
    case 35:
    case 46:
    case 64:
      result = 0xD00000000000001DLL;
      break;
    case 21:
    case 38:
    case 58:
    case 79:
      result = 0xD000000000000013;
      break;
    case 22:
    case 65:
      result = 0xD000000000000016;
      break;
    case 24:
      result = 0xD00000000000001ALL;
      break;
    case 28:
      result = 0xD000000000000020;
      break;
    case 30:
    case 50:
    case 53:
    case 59:
    case 67:
      result = 0xD000000000000018;
      break;
    case 32:
      result = 0xD00000000000001ALL;
      break;
    case 36:
      result = 0x6F72654864615069;
      break;
    case 37:
    case 52:
    case 76:
      result = 0xD000000000000010;
      break;
    case 40:
      result = 0x6174654464615069;
      break;
    case 42:
      result = 0xD00000000000001ALL;
      break;
    case 45:
      result = 0xD00000000000001ALL;
      break;
    case 48:
      result = 0x6772614C64615069;
      break;
    case 55:
      result = 0xD00000000000001ALL;
      break;
    case 61:
      result = 0xD00000000000001ALL;
      break;
    case 71:
      result = 0x6F72654863616DLL;
      break;
    case 72:
      result = 0x526F72654863616DLL;
      break;
    case 73:
      result = 0x416F72654863616DLL;
      break;
    case 74:
      result = 0x696174654463616DLL;
      break;
    case 80:
    case 81:
    case 82:
      result = 0x656772614C63616DLL;
      break;
    case 83:
      result = 0x7274726F5063616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E974B38(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24E97433C(*a1);
  v5 = v4;
  if (v3 == sub_24E97433C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24E974BC0()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24E97433C(v1);
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E974C24(uint64_t a1)
{
  sub_24E97433C(*v1);
  sub_24F92B218();
}

uint64_t sub_24E974C78()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24E97433C(v1);
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24E974CD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24E976778(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24E974D08@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24E97433C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24E974DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E976168();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_24E974E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24E976168();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t sub_24E974EB4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D88, &qword_24F96C020);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9758A8();
  sub_24F92D128();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D50, &qword_24F96C010);
  sub_24E975AAC(&qword_27F222D90, sub_24E975B3C, sub_24E975B90, MEMORY[0x277D83508]);
  sub_24F92CD48();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D70, &qword_24F96C018);
    sub_24E975BE4();
    sub_24F92CD48();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24E9750B8()
{
  if (*v0)
  {
    return 0x73746E65746E6F63;
  }

  else
  {
    return 0x676E697A69736572;
  }
}

uint64_t sub_24E975100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E697A69736572 && a2 == 0xEF736769666E6F43;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
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

uint64_t sub_24E9751E4(uint64_t a1)
{
  v2 = sub_24E9758A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E975220(uint64_t a1)
{
  v2 = sub_24E9758A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E97525C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24E975654(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void sub_24E9752A4(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_24EA34D78(a2, a3);
  if (!v3)
  {
    *a1 = v5;
    a1[1] = v6;
  }
}

uint64_t sub_24E9752D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E00, &qword_24F96C338);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9761BC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E10, &qword_24F96C340);
  v27 = 0;
  sub_24E976210(&qword_27F222E18, &qword_27F222E10, &qword_24F96C340);
  sub_24F92CC68();
  v9 = v23;
  v10 = v24;
  v27 = 1;
  sub_24E620E90();
  sub_24F92CC18();
  v11 = v23;
  v26 = v24;
  v27 = 2;
  sub_24F92CC18();
  v21 = v11;
  v22 = v23;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E20, &qword_24F96C348);
  v27 = 3;
  sub_24E976210(&qword_27F222E28, &qword_27F222E20, &qword_24F96C348);
  sub_24F92CC68();
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v27 = 4;
  sub_24E976264();
  sub_24F92CC18();
  v15 = v23;
  v27 = 5;
  sub_24E9762B8();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v16 = v23;
  v17 = v26;
  v18 = v25;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v21;
  *(a2 + 24) = v17;
  *(a2 + 32) = v12;
  *(a2 + 40) = v18;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  *(a2 + 64) = v15;
  *(a2 + 65) = v16;
  return result;
}

uint64_t sub_24E975654(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D40, &qword_24F96C008);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9758A8();
  sub_24F92D108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D50, &qword_24F96C010);
  HIBYTE(v8) = 0;
  sub_24E975AAC(&qword_27F222D58, sub_24E9758FC, sub_24E975950, MEMORY[0x277D83528]);
  sub_24F92CC68();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D70, &qword_24F96C018);
  HIBYTE(v8) = 1;
  sub_24E9759A4();
  sub_24F92CC68();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24E9758A8()
{
  result = qword_27F222D48;
  if (!qword_27F222D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222D48);
  }

  return result;
}

unint64_t sub_24E9758FC()
{
  result = qword_27F222D60;
  if (!qword_27F222D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222D60);
  }

  return result;
}

unint64_t sub_24E975950()
{
  result = qword_27F222D68;
  if (!qword_27F222D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222D68);
  }

  return result;
}

unint64_t sub_24E9759A4()
{
  result = qword_27F222D78;
  if (!qword_27F222D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222D70, &qword_24F96C018);
    sub_24E9758FC();
    sub_24E9766E4(&qword_27F222D80, type metadata accessor for MixedMediaItem.ContentType, &unk_24F96C270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222D78);
  }

  return result;
}

uint64_t type metadata accessor for MixedMediaItem.ContentType(uint64_t a1)
{
  result = qword_27F222DB8;
  if (!qword_27F222DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E975AAC(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222D50, &qword_24F96C010);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E975B3C()
{
  result = qword_27F222D98;
  if (!qword_27F222D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222D98);
  }

  return result;
}

unint64_t sub_24E975B90()
{
  result = qword_27F222DA0;
  if (!qword_27F222DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DA0);
  }

  return result;
}

unint64_t sub_24E975BE4()
{
  result = qword_27F222DA8;
  if (!qword_27F222DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222D70, &qword_24F96C018);
    sub_24E975B3C();
    sub_24E9766E4(&qword_27F222DB0, type metadata accessor for MixedMediaItem.ContentType, &unk_24F96C1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DA8);
  }

  return result;
}

void sub_24E975CB0(uint64_t a1)
{
  sub_24E975D24(319);
  if (v1 <= 0x3F)
  {
    sub_24E975D90();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24E975D24(uint64_t a1)
{
  if (!qword_27F222DC8)
  {
    sub_24F9289E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F222DC8);
    }
  }
}

void sub_24E975D90()
{
  if (!qword_27F222DD0)
  {
    v0 = type metadata accessor for GSKVideo(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27F222DD0);
    }
  }
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24E975DFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 66))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 64);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_24E975E50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MixedMediaItem.Variant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAB)
  {
    goto LABEL_17;
  }

  if (a2 + 85 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 85) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 85;
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

      return (*a1 | (v4 << 8)) - 85;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 85;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x56;
  v8 = v6 - 86;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MixedMediaItem.Variant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 85 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 85) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAB)
  {
    v4 = 0;
  }

  if (a2 > 0xAA)
  {
    v5 = ((a2 - 171) >> 8) + 1;
    *result = a2 + 85;
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
    *result = a2 + 85;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24E97600C()
{
  result = qword_27F222DD8;
  if (!qword_27F222DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DD8);
  }

  return result;
}

unint64_t sub_24E976064()
{
  result = qword_27F222DE0;
  if (!qword_27F222DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DE0);
  }

  return result;
}

unint64_t sub_24E9760BC()
{
  result = qword_27F222DE8;
  if (!qword_27F222DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DE8);
  }

  return result;
}

unint64_t sub_24E976114()
{
  result = qword_27F222DF0;
  if (!qword_27F222DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DF0);
  }

  return result;
}

unint64_t sub_24E976168()
{
  result = qword_27F222DF8;
  if (!qword_27F222DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DF8);
  }

  return result;
}

unint64_t sub_24E9761BC()
{
  result = qword_27F222E08;
  if (!qword_27F222E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E08);
  }

  return result;
}

uint64_t sub_24E976210(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_24E976264()
{
  result = qword_27F222E30;
  if (!qword_27F222E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E30);
  }

  return result;
}

unint64_t sub_24E9762B8()
{
  result = qword_27F222E38;
  if (!qword_27F222E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E38);
  }

  return result;
}

unint64_t sub_24E97630C()
{
  result = qword_27F222E58;
  if (!qword_27F222E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E58);
  }

  return result;
}

unint64_t sub_24E976360()
{
  result = qword_27F222E60;
  if (!qword_27F222E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E60);
  }

  return result;
}

unint64_t sub_24E9763B4()
{
  result = qword_27F222E68;
  if (!qword_27F222E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E68);
  }

  return result;
}

unint64_t sub_24E976408()
{
  result = qword_27F222E78;
  if (!qword_27F222E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222E10, &qword_24F96C340);
    sub_24E9766E4(&qword_27F222E80, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E78);
  }

  return result;
}

unint64_t sub_24E9764BC()
{
  result = qword_27F222E88;
  if (!qword_27F222E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222E20, &qword_24F96C348);
    sub_24E9766E4(&qword_27F222E90, type metadata accessor for CGPoint, MEMORY[0x277CBF2A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E88);
  }

  return result;
}

unint64_t sub_24E976570()
{
  result = qword_27F222E98;
  if (!qword_27F222E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E98);
  }

  return result;
}

unint64_t sub_24E9765C4()
{
  result = qword_27F222EA0;
  if (!qword_27F222EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EA0);
  }

  return result;
}

uint64_t sub_24E976618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MixedMediaItem.ContentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E97667C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E9766E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E97672C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24E976778(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CF18();

  if (v2 >= 0x56)
  {
    return 86;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24E976820()
{
  result = qword_27F222EC0;
  if (!qword_27F222EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EC0);
  }

  return result;
}

unint64_t sub_24E976878()
{
  result = qword_27F222EC8;
  if (!qword_27F222EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EC8);
  }

  return result;
}

unint64_t sub_24E9768D0()
{
  result = qword_27F222ED0;
  if (!qword_27F222ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222ED0);
  }

  return result;
}

unint64_t sub_24E976928()
{
  result = qword_27F222ED8;
  if (!qword_27F222ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222ED8);
  }

  return result;
}

unint64_t sub_24E976980()
{
  result = qword_27F222EE0;
  if (!qword_27F222EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EE0);
  }

  return result;
}

unint64_t sub_24E9769D8()
{
  result = qword_27F222EE8;
  if (!qword_27F222EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EE8);
  }

  return result;
}

unint64_t sub_24E976A30()
{
  result = qword_27F222EF0;
  if (!qword_27F222EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EF0);
  }

  return result;
}

unint64_t sub_24E976A88()
{
  result = qword_27F222EF8;
  if (!qword_27F222EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EF8);
  }

  return result;
}

unint64_t sub_24E976AE0()
{
  result = qword_27F222F00;
  if (!qword_27F222F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F00);
  }

  return result;
}

unint64_t sub_24E976B38()
{
  result = qword_27F222F08;
  if (!qword_27F222F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F08);
  }

  return result;
}

unint64_t sub_24E976B90()
{
  result = qword_27F222F10;
  if (!qword_27F222F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F10);
  }

  return result;
}

unint64_t sub_24E976BE8()
{
  result = qword_27F222F18;
  if (!qword_27F222F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F18);
  }

  return result;
}

unint64_t sub_24E976C40()
{
  result = qword_27F222F20;
  if (!qword_27F222F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F20);
  }

  return result;
}

uint64_t sub_24E976C94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6953656372756F73 && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA43100 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697463617266 && a2 == 0xEF68746469576C61 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4B3B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA4B3D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E41656D617266 && a2 == 0xEB00000000726F68)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_24E976EB0()
{
  result = qword_27F222F28;
  if (!qword_27F222F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F28);
  }

  return result;
}

uint64_t sub_24E976F04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  __swift_allocate_value_buffer(v0, qword_27F222F30);
  __swift_project_value_buffer(v0, qword_27F222F30);
  return sub_24F928C68();
}

uint64_t sub_24E976F7C()
{
  ObjectType = swift_getObjectType();
  v31 = sub_24F922028();
  v0 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v9 = sub_24F922058();
  __swift_project_value_buffer(v9, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v10 = sub_24F922038();
  v11 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v10, v11, v13, "RefreshTokenPromise", "", v12, 2u);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  v14 = v31;
  v26 = *(v0 + 16);
  v26(v5, v8, v31);
  sub_24F922098();
  swift_allocObject();
  v27 = sub_24F922088();
  v15 = *(v0 + 8);
  v28 = v0 + 8;
  v15(v8, v14);
  sub_24F922038();
  sub_24F921FF8();
  v16 = sub_24F922038();
  v17 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v16, v17, v19, "RefreshToken", "", v18, 2u);
    MEMORY[0x2530542D0](v18, -1, -1);
  }

  v20 = v31;
  v26(v5, v2, v31);
  swift_allocObject();
  v21 = sub_24F922088();
  v15(v2, v20);
  sub_24E69A5C4(0, &qword_27F21C8C8, 0x277CD4640);
  v22 = sub_24F92C448();
  MEMORY[0x28223BE20](v22);
  *(&v26 - 4) = v27;
  *(&v26 - 3) = v21;
  v23 = ObjectType;
  *(&v26 - 2) = v30;
  *(&v26 - 1) = v23;
  v24 = sub_24F92C458();

  return v24;
}

const char *sub_24E977348(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v40 = a4;
  v38 = a1;
  v39 = a5;
  v42 = a2;
  v6 = sub_24F922068();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92AC68();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v16 = MEMORY[0x25304F260]();
  if (!v16)
  {
    v24 = v10;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v25 = sub_24F922058();
    __swift_project_value_buffer(v25, qword_27F23DAC0);
    v26 = sub_24F922038();
    sub_24F922078();
    LODWORD(v41) = sub_24F92C048();
    v27 = v9;
    v28 = v24;
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      v29 = v35;
      if ((*(v35 + 88))(v8, v6) == *MEMORY[0x277D85B00])
      {
        v30 = "[Error] Interval already ended";
      }

      else
      {
        (*(v29 + 8))(v8, v6);
        v30 = "override=false,success=false";
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v26, v41, v32, "RefreshToken", v30, v31, 2u);
      MEMORY[0x2530542D0](v31, -1, -1);
    }

    (*(v28 + 8))(v12, v27);
    v18 = "RefreshTokenPromise";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_13;
  }

  v17 = v16;
  v18 = swift_allocObject();
  v19 = v39;
  v20 = v40;
  *(v18 + 2) = a3;
  *(v18 + 3) = v20;
  *(v18 + 4) = v17;
  *(v18 + 5) = v19;
  v21 = v38;

  v22 = v20;

  v23 = v41;
  sub_24F92AC48();
  if (v23)
  {

LABEL_13:
    sub_24E9777BC(v42);
    return v18;
  }

  v18 = sub_24F92AC58();

  (*(v36 + 8))(v15, v37);
  sub_24E9777BC(v42);
  return v18;
}

uint64_t sub_24E9777BC(uint64_t a1)
{
  v1 = sub_24F922068();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F922028();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v9 = sub_24F922058();
  __swift_project_value_buffer(v9, qword_27F23DAC0);
  v10 = sub_24F922038();
  sub_24F922078();
  v11 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v10, v11, v14, "RefreshTokenPromise", v12, v13, 2u);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_24E977A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v69 = a2;
  v64 = a3;
  v65 = a6;
  v63 = a5;
  v75 = a4;
  *&v71 = a1;
  v6 = sub_24F922068();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  v12 = sub_24F922028();
  v13 = *(v12 - 8);
  v72 = v12;
  v73 = v13;
  MEMORY[0x28223BE20](v12);
  v68 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  v18 = sub_24F9281B8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210028 != -1)
  {
    swift_once();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  __swift_project_value_buffer(v21, qword_27F222F30);
  sub_24F928868();

  if (v74[1])
  {

    v22 = sub_24F92CF68();
    v23 = [objc_opt_self() valueWithObject:v22 inContext:v71];
    swift_unknownObjectRelease();
    if (v23)
    {
      v65 = v8;
      v24 = v73;

      if (qword_27F211060 != -1)
      {
        swift_once();
      }

      v25 = sub_24F922058();
      __swift_project_value_buffer(v25, qword_27F23DAC0);
      v26 = sub_24F922038();
      sub_24F922078();
      v27 = sub_24F92C048();
      if (sub_24F92C478())
      {

        sub_24F9220A8();

        v29 = v66;
        v28 = v67;
        if ((*(v66 + 88))(v11, v67) == *MEMORY[0x277D85B00])
        {
          v30 = "[Error] Interval already ended";
        }

        else
        {
          (*(v29 + 8))(v11, v28);
          v30 = "override=true,success=true";
        }

        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = sub_24F922008();
        _os_signpost_emit_with_name_impl(&dword_24E5DD000, v26, v27, v44, "RefreshToken", v30, v43, 2u);
        MEMORY[0x2530542D0](v43, -1, -1);
      }

      v45 = *(v24 + 8);
      v45(v17, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
      v46 = swift_allocObject();
      v71 = xmmword_24F93DE60;
      *(v46 + 16) = xmmword_24F93DE60;
      *(v46 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
      *(v46 + 32) = v23;
      v47 = v23;
      v48 = v70;
      v49 = sub_24F9281A8();
      if (v48)
      {
        v73 = v24 + 8;

        if (qword_27F210568 != -1)
        {
          swift_once();
        }

        v50 = sub_24F92AAE8();
        __swift_project_value_buffer(v50, qword_27F39C398);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = v71;
        sub_24F9283A8();
        sub_24F92A5A8();

        v51 = sub_24F922038();
        v52 = v68;
        sub_24F922078();
        v53 = sub_24F92C048();
        if (sub_24F92C478())
        {

          v54 = v65;
          sub_24F9220A8();

          v56 = v66;
          v55 = v67;
          if ((*(v66 + 88))(v54, v67) == *MEMORY[0x277D85B00])
          {
            v57 = "[Error] Interval already ended";
          }

          else
          {
            (*(v56 + 8))(v54, v55);
            v57 = "override=true,success=false";
          }

          v60 = swift_slowAlloc();
          *v60 = 0;
          v61 = v68;
          v62 = sub_24F922008();
          _os_signpost_emit_with_name_impl(&dword_24E5DD000, v51, v53, v62, "RefreshToken", v57, v60, 2u);
          MEMORY[0x2530542D0](v60, -1, -1);

          v59 = v61;
        }

        else
        {

          v59 = v52;
        }

        v45(v59, v72);
      }

      else
      {
        v58 = v49;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F78, &qword_24F96C960);
    v31 = [*(v63 + OBJC_IVAR____TtC12GameStoreKit25JSMediaTokenServiceObject_tokenService) fetchMediaToken];
    v73 = sub_24F92A9D8();
    v32 = v19;
    v68 = *(v19 + 16);
    v33 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v68)(v33, v69, v18);
    v34 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v35 = swift_allocObject();
    v72 = v35;
    v36 = v71;
    v37 = v75;
    *(v35 + 16) = v71;
    *(v35 + 24) = v37;
    v38 = *(v32 + 32);
    v38(v35 + v34, v33, v18);
    (v68)(v33, v64, v18);
    v39 = swift_allocObject();
    v40 = v75;
    *(v39 + 16) = v36;
    *(v39 + 24) = v40;
    v38(v39 + v34, v33, v18);
    v74[3] = sub_24F9298F8();
    v74[4] = MEMORY[0x277D22078];
    v74[0] = v65;
    v41 = v36;
    swift_retain_n();
    v42 = v41;

    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(v74);
  }
}

void sub_24E978360(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v7 = sub_24F922068();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v37[1] = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v12 = sub_24F922028();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v41 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = v37 - v17;
  v19 = [*a1 tokenString];
  v20 = sub_24F92B0D8();
  v22 = v21;

  v43 = v20;
  v44 = v22;
  v23 = sub_24F92CF68();
  v24 = [objc_opt_self() valueWithObject:v23 inContext:a2];
  swift_unknownObjectRelease();
  if (v24)
  {
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v25 = sub_24F922058();
    __swift_project_value_buffer(v25, qword_27F23DAC0);
    v26 = sub_24F922038();
    sub_24F922078();
    v27 = sub_24F92C048();
    if (sub_24F92C478())
    {
      *&v38 = v13;

      sub_24F9220A8();
      v37[0] = a3;

      v29 = v39;
      v28 = v40;
      v30 = v12;
      if ((*(v39 + 88))(v11, v40) == *MEMORY[0x277D85B00])
      {
        v31 = "[Error] Interval already ended";
      }

      else
      {
        (*(v29 + 8))(v11, v28);
        v31 = "override=false,success=true";
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v26, v27, v33, "RefreshToken", v31, v32, 2u);
      MEMORY[0x2530542D0](v32, -1, -1);
      v12 = v30;
      v13 = v38;
    }

    (*(v13 + 8))(v18, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v34 = swift_allocObject();
    v38 = xmmword_24F93DE60;
    *(v34 + 16) = xmmword_24F93DE60;
    *(v34 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
    *(v34 + 32) = v24;
    v35 = v24;
    v36 = sub_24F9281A8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24E9789C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v6 = sub_24F922068();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = sub_24F922028();
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v13 = MEMORY[0x253051C90](a1, a2);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v14 = sub_24F922058();
  __swift_project_value_buffer(v14, qword_27F23DAC0);
  v15 = sub_24F922038();
  sub_24F922078();
  v16 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    v17 = v25;
    if ((*(v25 + 88))(v8, v6) == *MEMORY[0x277D85B00])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v17 + 8))(v8, v6);
      v18 = "override=false,success=false";
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v15, v16, v20, "RefreshToken", v18, v19, 2u);
    MEMORY[0x2530542D0](v19, -1, -1);
  }

  (*(v9 + 8))(v11, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v21 = swift_allocObject();
  v26 = xmmword_24F93DE60;
  *(v21 + 16) = xmmword_24F93DE60;
  *(v21 + 56) = v12;
  *(v21 + 32) = v13;
  v22 = v13;
  v23 = sub_24F9281A8();
}

id sub_24E978E68(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = sub_24F92C2F8();
  if (!v9)
  {
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    v14 = a2;
    sub_24F92A828();
    swift_willThrow();
    return a2;
  }

  v10 = v8;
  v11 = v9;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210028 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_27F222F30);
  (*(v5 + 16))(v7, v12, v4);
  v15[0] = v10;
  v15[1] = v11;

  sub_24F928878();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    a2 = result;

    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_24E979394()
{
  result = qword_27F222F60;
  if (!qword_27F222F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222F58, &unk_24F988B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F60);
  }

  return result;
}

unint64_t sub_24E979414()
{
  result = qword_27F222F70;
  if (!qword_27F222F70)
  {
    sub_24F92A868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F70);
  }

  return result;
}

uint64_t sub_24E97948C()
{

  return swift_deallocObject();
}

void sub_24E9794F8(id *a1, __n128 a2)
{
  v4 = *(sub_24F9281B8() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  sub_24E978360(a1, v5, v6, v7);
}

uint64_t objectdestroy_4Tm_0(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24E979638(uint64_t a1, __n128 a2)
{
  v4 = *(sub_24F9281B8() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  sub_24E9789C0(a1, v5, v6, v7);
}

uint64_t OfferDisplayProperties.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v183 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v3 - 8);
  v179 = &v145[-v4];
  v182 = sub_24F9285B8();
  v184 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v172 = &v145[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v6 - 8);
  v167 = &v145[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v166 = &v145[-v9];
  MEMORY[0x28223BE20](v10);
  v165 = &v145[-v11];
  v185 = sub_24F928388();
  v188 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v178 = &v145[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v177 = &v145[-v14];
  MEMORY[0x28223BE20](v15);
  v176 = &v145[-v16];
  MEMORY[0x28223BE20](v17);
  v175 = &v145[-v18];
  MEMORY[0x28223BE20](v19);
  v174 = &v145[-v20];
  MEMORY[0x28223BE20](v21);
  v173 = &v145[-v22];
  MEMORY[0x28223BE20](v23);
  v171 = &v145[-v24];
  MEMORY[0x28223BE20](v25);
  v170 = &v145[-v26];
  MEMORY[0x28223BE20](v27);
  v169 = &v145[-v28];
  MEMORY[0x28223BE20](v29);
  v168 = &v145[-v30];
  MEMORY[0x28223BE20](v31);
  v33 = &v145[-v32];
  MEMORY[0x28223BE20](v34);
  v36 = &v145[-v35];
  MEMORY[0x28223BE20](v37);
  v39 = &v145[-v38];
  MEMORY[0x28223BE20](v40);
  v42 = &v145[-v41];
  MEMORY[0x28223BE20](v43);
  v45 = &v145[-v44];
  MEMORY[0x28223BE20](v46);
  v48 = &v145[-v47];
  MEMORY[0x28223BE20](v49);
  v51 = &v145[-v50];
  v52 = a1;
  sub_24F928398();
  sub_24E97C76C();
  v53 = v181;
  sub_24F928218();
  if (v53)
  {
    (*(v184 + 8))(v183, v182);
    v54 = *(v188 + 8);
    v55 = v185;
    (v54)(a1, v185);
    (v54)(v51, v55);
    return v54;
  }

  v163 = v42;
  v157 = v39;
  v158 = v36;
  v159 = v33;
  v164 = v45;
  v181 = 0;
  v56 = v184;
  v57 = v185;
  v58 = v188 + 8;
  v59 = *(v188 + 8);
  v59(v51, v185);
  v162 = LOBYTE(v187[0]);
  sub_24F928398();
  v161 = sub_24F928348();
  v61 = v60;
  v59(v48, v57);
  v160 = v61;
  if (!v61)
  {
    v54 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v75 = 0x64496D616461;
    v75[1] = 0xE600000000000000;
    v75[2] = v180;
    (*(*(v54 - 8) + 104))(v75, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    (*(v56 + 8))(v183, v182);
    v59(v52, v57);
    return v54;
  }

  v62 = v164;
  sub_24F928398();
  v156 = sub_24F928348();
  v155 = v63;
  v59(v62, v57);
  v64 = v163;
  sub_24F928398();
  v65 = sub_24F928348();
  v67 = v66;
  v59(v64, v57);
  v154 = v67;
  if (v67)
  {
    v68 = v65;
  }

  else
  {
    v68 = 0;
  }

  v153 = v68;
  v69 = v157;
  v163 = v52;
  sub_24F928398();
  v70 = v165;
  sub_24F9281F8();
  v188 = v58;
  v180 = v59;
  v59(v69, v57);
  v71 = sub_24F928E68();
  v72 = *(v71 - 8);
  v73 = *(v72 + 48);
  v74 = v73(v70, 1, v71);
  v152 = v72;
  if (v74 == 1)
  {
    sub_24E601704(v70, qword_27F221C40, &unk_24F967D80);
    v157 = sub_24E6096FC(MEMORY[0x277D84F90]);
  }

  else
  {
    sub_24E97CFA0();
    v76 = v181;
    v157 = sub_24F928E38();
    v181 = v76;
    (*(v72 + 8))(v70, v71);
  }

  v77 = v167;
  v78 = v166;
  v79 = v158;
  sub_24F928398();
  sub_24F9281F8();
  v80 = v185;
  v180(v79, v185);
  v81 = v73(v78, 1, v71);
  v82 = v164;
  if (v81 == 1)
  {
    sub_24E601704(v78, qword_27F221C40, &unk_24F967D80);
    v167 = sub_24E6096FC(MEMORY[0x277D84F90]);
  }

  else
  {
    sub_24E97CFA0();
    v83 = v181;
    v167 = sub_24F928E38();
    v181 = v83;
    (*(v152 + 8))(v78, v71);
  }

  v84 = v159;
  sub_24F928398();
  sub_24F9281F8();
  v180(v84, v80);
  if (v73(v77, 1, v71) == 1)
  {
    sub_24E601704(v77, qword_27F221C40, &unk_24F967D80);
    v166 = sub_24E6096FC(MEMORY[0x277D84F90]);
  }

  else
  {
    sub_24E97CFA0();
    v85 = v181;
    v166 = sub_24F928E38();
    v181 = v85;
    (*(v152 + 8))(v77, v71);
  }

  sub_24F928398();
  v86 = sub_24F928348();
  v88 = v87;
  v89 = v82;
  v90 = v82;
  v91 = v180;
  v180(v89, v80);
  v92.value._countAndFlagsBits = v86;
  v92.value._object = v88;
  OfferStyle.init(fromString:)(v92);
  v93 = LOBYTE(v187[0]);
  if (LOBYTE(v187[0]) == 7)
  {
    v93 = 0;
  }

  LODWORD(v165) = v93;
  sub_24F928398();
  v94 = sub_24F928348();
  v96 = v95;
  v91(v90, v80);
  v97.value._countAndFlagsBits = v94;
  v97.value._object = v96;
  OfferEnvironment.init(fromString:)(v97);
  v98 = LOBYTE(v187[0]);
  if (LOBYTE(v187[0]) == 16)
  {
    v98 = 0;
  }

  LODWORD(v159) = v98;
  sub_24F928398();
  (*(v184 + 16))(v172, v183, v182);
  sub_24E97CF28();
  sub_24F929548();
  v99 = v187[0];
  if (v187[0] == 3)
  {
    v99 = 0;
  }

  v172 = v99;
  if (v187[0] == 3)
  {
    v100 = 0;
  }

  else
  {
    v100 = v187[1];
  }

  v158 = v100;
  v101 = v168;
  sub_24F928398();
  LODWORD(v152) = sub_24F928278();
  v91(v101, v80);
  v102 = v169;
  sub_24F928398();
  LODWORD(v168) = sub_24F928278();
  v91(v102, v80);
  v103 = v170;
  sub_24F928398();
  LODWORD(v169) = sub_24F928278();
  v91(v103, v80);
  v104 = v171;
  sub_24F928398();
  LODWORD(v170) = sub_24F928278();
  v91(v104, v80);
  v105 = v173;
  sub_24F928398();
  LODWORD(v171) = sub_24F928278();
  v91(v105, v80);
  v106 = v174;
  sub_24F928398();
  v107 = sub_24F928348();
  v109 = v108;
  v91(v106, v80);
  v110 = v175;
  v111 = v176;
  if (!v109)
  {
    goto LABEL_31;
  }

  if ((v107 != 1701736302 || v109 != 0xE400000000000000) && (sub_24F92CE08() & 1) == 0)
  {
    if (v107 == 0x726564726F657270 && v109 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v143 = 1;
    }

    else
    {
      if (v107 == 0xD000000000000010 && 0x800000024FA4B690 == v109)
      {
      }

      else
      {
        v144 = sub_24F92CE08();

        if ((v144 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v143 = 2;
    }

    LODWORD(v174) = v143;
    goto LABEL_32;
  }

LABEL_31:
  LODWORD(v174) = 0;
LABEL_32:
  sub_24F928398();
  LODWORD(v173) = sub_24F928278();
  v112 = v180;
  v180(v110, v80);
  v113 = v164;
  sub_24F928398();
  v175 = sub_24F928258();
  v151 = v114;
  v112(v113, v80);
  sub_24F928398();
  sub_24F928368();
  v112(v113, v80);
  sub_24F928398();
  v150 = sub_24F928348();
  v149 = v115;
  v112(v113, v80);
  sub_24F928398();
  v148 = sub_24F928348();
  v147 = v116;
  v112(v113, v80);
  sub_24F928398();
  v146 = sub_24F928278();
  v112(v111, v80);
  sub_24F928398();
  v117 = sub_24F928348();
  v119 = v118;
  v112(v113, v80);
  v120 = v177;
  sub_24F928398();
  v121 = v80;
  v122 = sub_24F928278();
  v112(v120, v121);
  v123 = v178;
  sub_24F928398();
  v124 = v179;
  sub_24F9282B8();
  v125 = v124;
  v112(v123, v121);
  v126 = sub_24F92AC28();
  v127 = *(v126 - 8);
  if ((*(v127 + 48))(v125, 1, v126) == 1)
  {
    sub_24E601704(v125, &qword_27F2213B0, &qword_24F965EC0);
    v129 = 0;
  }

  else
  {
    v130 = v181;
    v129 = sub_24F92ABB8();
    v181 = v130;
    (*(v127 + 8))(v125, v126);
  }

  v131 = v182;
  v132 = v183;
  v133 = v161;
  v134 = v160;
  if (v187[3])
  {
    *&v186[0] = v161;
    *(&v186[0] + 1) = v160;
    v128.n128_f64[0] = sub_24ECDF340(v186);
  }

  (*(v184 + 8))(v132, v131, v128);
  v180(v163, v185);
  sub_24E94E17C(v187, v186);
  type metadata accessor for OfferDisplayProperties();
  v54 = swift_allocObject();
  *(v54 + 16) = v162;
  *(v54 + 24) = v133;
  *(v54 + 32) = v134;
  v135 = v155;
  *(v54 + 40) = v156;
  *(v54 + 48) = v135;
  v136 = v154;
  *(v54 + 56) = v153;
  *(v54 + 64) = v136;
  v137 = v167;
  *(v54 + 72) = v157;
  *(v54 + 80) = v137;
  *(v54 + 88) = v166;
  *(v54 + 96) = v165;
  *(v54 + 97) = v159;
  v138 = v158;
  *(v54 + 104) = v172;
  *(v54 + 112) = v138;
  *(v54 + 120) = v152 & 1;
  *(v54 + 121) = v168 & 1;
  *(v54 + 122) = v169 & 1;
  *(v54 + 123) = v170 & 1;
  *(v54 + 124) = v171 & 1;
  *(v54 + 125) = v173 & 1;
  *(v54 + 126) = v174;
  *(v54 + 128) = v175;
  *(v54 + 136) = v151 & 1;
  v139 = v186[1];
  *(v54 + 144) = v186[0];
  *(v54 + 160) = v139;
  v140 = v149;
  *(v54 + 176) = v150;
  *(v54 + 184) = v140;
  v141 = v147;
  *(v54 + 192) = v148;
  *(v54 + 200) = v141;
  *(v54 + 208) = v146 & 1;
  *(v54 + 216) = v117;
  *(v54 + 224) = v119;
  *(v54 + 232) = v122 & 1;
  *(v54 + 240) = v129;
  sub_24E601704(v187, &qword_27F2129B0, &unk_24F945320);
  return v54;
}

uint64_t OfferDisplayProperties.isArcadeAppOffer.getter()
{
  if (*(v0 + 16) > 2u)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_24F92CE08();
  }

  return v1 & 1;
}

GameStoreKit::OfferTitleType_optional __swiftcall OfferTitleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CF18();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OfferTitleType.rawValue.getter()
{
  result = 0x647261646E617473;
  switch(*v0)
  {
    case 1:
      result = 0x616D7269666E6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 0xE:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 1852141679;
      break;
    case 5:
      result = 0x657461647075;
      break;
    case 6:
      result = 0x64616F6C6E776F64;
      break;
    case 7:
      result = 0x6573616863727570;
      break;
    case 8:
      result = 0x64616F6C6E776F64;
      break;
    case 9:
      result = 0x6C61697274;
      break;
    case 0xA:
      result = 0x6373627553746F6ELL;
      break;
    case 0xB:
      result = 0x6269726373627573;
      break;
    case 0xC:
      result = 0x7463697274736572;
      break;
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0xD000000000000017;
      break;
    case 0x11:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E97AEAC()
{
  v0 = OfferTitleType.rawValue.getter();
  v2 = v1;
  if (v0 == OfferTitleType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t sub_24E97AF48()
{
  sub_24F92D068();
  OfferTitleType.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E97AFB0(uint64_t a1)
{
  OfferTitleType.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24E97B014()
{
  sub_24F92D068();
  OfferTitleType.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24E97B084@<X0>(unint64_t *a1@<X8>)
{
  result = OfferTitleType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::OfferStyle_optional __swiftcall OfferStyle.init(fromString:)(Swift::String_optional fromString)
{
  v2 = v1;
  if (!fromString.value._object)
  {
    goto LABEL_31;
  }

  object = fromString.value._object;
  countAndFlagsBits = fromString.value._countAndFlagsBits;
  if ((fromString.value._countAndFlagsBits != 0x7265666E69 || fromString.value._object != 0xE500000000000000) && (sub_24F92CE08() & 1) == 0)
  {
    if (countAndFlagsBits == 2036691559 && object == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 1;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x6465726F6C6F63 && object == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 2;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x746E6172626976 && object == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 3;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x6574696877 && object == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 4;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x64656C6261736964 && object == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 5;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x726170736E617274 && object == 0xEB00000000746E65)
    {

      v5 = 6;
      goto LABEL_32;
    }

    v6 = sub_24F92CE08();

    if (v6)
    {
      v5 = 6;
      goto LABEL_32;
    }

LABEL_31:
    v5 = 7;
    goto LABEL_32;
  }

  v5 = 0;
LABEL_32:
  *v2 = v5;
  return fromString.value._countAndFlagsBits;
}

GameStoreKit::OfferEnvironment_optional __swiftcall OfferEnvironment.init(fromString:)(Swift::String_optional fromString)
{
  v2 = v1;
  if (!fromString.value._object)
  {
    goto LABEL_67;
  }

  object = fromString.value._object;
  countAndFlagsBits = fromString.value._countAndFlagsBits;
  if ((fromString.value._countAndFlagsBits != 0x746867696CLL || fromString.value._object != 0xE500000000000000) && (sub_24F92CE08() & 1) == 0)
  {
    if (countAndFlagsBits == 0xD000000000000010 && 0x800000024FA4B6B0 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 1;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 1802658148 && object == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 2;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x50746375646F7270 && object == 0xEB00000000656761 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 3;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 25697 && object == 0xE200000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 4;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000016 && 0x800000024FA4B6D0 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 5;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x697461676976616ELL && object == 0xED00007261426E6FLL || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 6;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x656461637261 && object == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 7;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000011 && 0x800000024FA4B6F0 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 8;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000013 && 0x800000024FA4B710 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 9;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x6F43746E65696C63 && object == 0xED00006C6F72746ELL || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 10;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x6853656461637261 && object == 0xEE0065736163776FLL || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 11;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD00000000000001ELL && 0x800000024FA4B730 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 12;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000015 && 0x800000024FA4B750 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 13;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000014 && 0x800000024FA4B770 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 14;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x7261437961646F74 && object == 0xE900000000000064)
    {

      v5 = 15;
      goto LABEL_68;
    }

    v6 = sub_24F92CE08();

    if (v6)
    {
      v5 = 15;
      goto LABEL_68;
    }

LABEL_67:
    v5 = 16;
    goto LABEL_68;
  }

  v5 = 0;
LABEL_68:
  *v2 = v5;
  return fromString.value._countAndFlagsBits;
}

void OfferTint.init(deserializing:using:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v12, v5);
  if (!v15)
  {
    v21 = sub_24F9285B8();
    (*(*(v21 - 8) + 8))(a2, v21);
    v16(a1, v5);
    v20 = 0;
    goto LABEL_17;
  }

  v40 = v5;
  v17 = a2;
  v18 = v13 == 1702194274 && v15 == 0xE400000000000000;
  if (v18 || (sub_24F92CE08() & 1) != 0)
  {

    v19 = sub_24F9285B8();
    (*(*(v19 - 8) + 8))(a2, v19);
    v16(a1, v40);
LABEL_8:
    v20 = 0;
LABEL_9:
    v15 = 0;
    goto LABEL_17;
  }

  v22 = v13 == 0x65676E61726FLL && v15 == 0xE600000000000000;
  v23 = a1;
  v24 = v16;
  if (v22 || (sub_24F92CE08() & 1) != 0)
  {

    v25 = sub_24F9285B8();
    (*(*(v25 - 8) + 8))(v17, v25);
    v16(a1, v40);
    v15 = 0;
    v20 = 1;
    goto LABEL_17;
  }

  v27 = v13 == 0x6E65657267 && v15 == 0xE500000000000000;
  v28 = v17;
  v29 = v40;
  if (v27 || (sub_24F92CE08() & 1) != 0)
  {

    v30 = sub_24F9285B8();
    (*(*(v30 - 8) + 8))(v17, v30);
    v24(v23, v29);
    v15 = 0;
    v20 = 2;
    goto LABEL_17;
  }

  if (v13 == 0x6D6F74737563 && v15 == 0xE600000000000000)
  {
  }

  else
  {
    v32 = sub_24F92CE08();

    if ((v32 & 1) == 0)
    {
      v33 = sub_24F9285B8();
      (*(*(v33 - 8) + 8))(v28, v33);
      v24(v23, v29);
      goto LABEL_8;
    }
  }

  v34 = v39;
  sub_24F928398();
  v20 = JSONObject.appStoreColor.getter();
  v24(v34, v29);
  if (!v20)
  {
    v37 = sub_24F9285B8();
    (*(*(v37 - 8) + 8))(v28, v37);
    v24(v23, v29);
    goto LABEL_9;
  }

  v35 = v38;
  sub_24F928398();
  v15 = JSONObject.appStoreColor.getter();
  v36 = sub_24F9285B8();
  (*(*(v36 - 8) + 8))(v28, v36);
  v24(v23, v29);
  v24(v35, v29);
  if (!v15)
  {

    v20 = 0;
  }

LABEL_17:
  v26 = v41;
  *v41 = v20;
  v26[1] = v15;
}

GameStoreKit::OfferLabelStyle_optional __swiftcall OfferLabelStyle.init(fromString:)(Swift::String_optional fromString)
{
  v2 = v1;
  if (!fromString.value._object)
  {
    goto LABEL_15;
  }

  object = fromString.value._object;
  countAndFlagsBits = fromString.value._countAndFlagsBits;
  if ((fromString.value._countAndFlagsBits != 1701736302 || fromString.value._object != 0xE400000000000000) && (sub_24F92CE08() & 1) == 0)
  {
    if (countAndFlagsBits == 0x726564726F657270 && object == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 1;
      goto LABEL_16;
    }

    if (countAndFlagsBits == 0xD000000000000010 && 0x800000024FA4B690 == object)
    {

      v5 = 2;
      goto LABEL_16;
    }

    v6 = sub_24F92CE08();

    if (v6)
    {
      v5 = 2;
      goto LABEL_16;
    }

LABEL_15:
    v5 = 3;
    goto LABEL_16;
  }

  v5 = 0;
LABEL_16:
  *v2 = v5;
  return fromString.value._countAndFlagsBits;
}

GameStoreKit::OfferType_optional __swiftcall OfferType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OfferType.rawValue.getter()
{
  v1 = 7368801;
  v2 = 0x656461637261;
  if (*v0 != 2)
  {
    v2 = 0x7041656461637261;
  }

  if (*v0)
  {
    v1 = 0x7275507070416E69;
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

uint64_t sub_24E97C044()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E97C10C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E97C1C0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E97C290(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368801;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (*v1 != 2)
  {
    v5 = 0x7041656461637261;
    v4 = 0xE900000000000070;
  }

  if (*v1)
  {
    v3 = 0x7275507070416E69;
    v2 = 0xED00006573616863;
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

double OfferDisplayProperties.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;

  return result;
}

uint64_t OfferDisplayProperties.bundleId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

double OfferDisplayProperties.parentAdamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;

  return result;
}

id OfferDisplayProperties.tint.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = v2;
  a1[1] = v3;
  return sub_24E9534EC(v2, v3);
}

uint64_t OfferDisplayProperties.subscriptionFamilyId.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t OfferDisplayProperties.overrideLocale.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t OfferDisplayProperties.priceFormatted.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

__n128 OfferDisplayProperties.__allocating_init(offerType:adamId:bundleId:parentAdamId:titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a22, char *a9, char *a10, _OWORD *a11, char a12, char a13, char a14, char a15, char a16, char *a17, char a18, uint64_t a19, char a20, _OWORD *a21, __n128 a23, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char arg80, uint64_t a30)
{
  v32 = swift_allocObject();
  v33 = *a2;
  v34 = a2[1];
  v35 = *a9;
  v36 = *a10;
  v37 = *a17;
  *(v32 + 16) = *a1;
  *(v32 + 24) = v33;
  *(v32 + 32) = v34;
  *(v32 + 40) = a3;
  *(v32 + 48) = a4;
  *(v32 + 56) = *a5;
  *(v32 + 72) = a6;
  *(v32 + 80) = a7;
  *(v32 + 88) = a8;
  *(v32 + 96) = v35;
  *(v32 + 97) = v36;
  *(v32 + 104) = *a11;
  *(v32 + 120) = a12;
  *(v32 + 121) = a13;
  *(v32 + 122) = a14;
  *(v32 + 123) = a15;
  *(v32 + 124) = a16;
  *(v32 + 125) = a18;
  *(v32 + 126) = v37;
  *(v32 + 128) = a19;
  *(v32 + 136) = a20 & 1;
  v38 = a21[1];
  *(v32 + 144) = *a21;
  *(v32 + 160) = v38;
  result = a23;
  *(v32 + 176) = a23;
  *(v32 + 192) = a25;
  *(v32 + 200) = a26;
  *(v32 + 208) = a27;
  *(v32 + 216) = a28;
  *(v32 + 224) = a29;
  *(v32 + 232) = arg80;
  *(v32 + 240) = a30;
  return result;
}

uint64_t OfferDisplayProperties.init(offerType:adamId:bundleId:parentAdamId:titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10, _OWORD *a11, char a12, char a13, char a14, char a15, char a16, char *a17, char a18, uint64_t a19, char a20, _OWORD *a21, __int128 a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  v31 = *a2;
  v30 = a2[1];
  v32 = *a9;
  v33 = *a10;
  v34 = *a17;
  *(v29 + 16) = *a1;
  *(v29 + 24) = v31;
  *(v29 + 32) = v30;
  *(v29 + 40) = a3;
  *(v29 + 48) = a4;
  *(v29 + 56) = *a5;
  *(v29 + 72) = a6;
  *(v29 + 80) = a7;
  *(v29 + 88) = a8;
  *(v29 + 96) = v32;
  *(v29 + 97) = v33;
  *(v29 + 104) = *a11;
  *(v29 + 120) = a12;
  *(v29 + 121) = a13;
  *(v29 + 122) = a14;
  *(v29 + 123) = a15;
  *(v29 + 124) = a16;
  *(v29 + 125) = a18;
  *(v29 + 126) = v34;
  *(v29 + 128) = a19;
  *(v29 + 136) = a20 & 1;
  v35 = a21[1];
  *(v29 + 144) = *a21;
  *(v29 + 160) = v35;
  *(v29 + 176) = a22;
  *(v29 + 192) = a23;
  *(v29 + 200) = a24;
  *(v29 + 208) = a25;
  *(v29 + 216) = a26;
  *(v29 + 224) = a27;
  *(v29 + 232) = a28;
  *(v29 + 240) = a29;
  return v29;
}

unint64_t sub_24E97C76C()
{
  result = qword_27F222F88;
  if (!qword_27F222F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F88);
  }

  return result;
}

char sub_24E97C7D8@<W0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  LOBYTE(v7) = OfferTitleType.init(rawValue:)(v6);
  if (v10 == 18 || (v7 = sub_24F928348(), !v8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = v10;
    a3[1] = v7;
    a3[2] = v8;
  }

  return v7;
}

uint64_t sub_24E97C85C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, void **a6, char a7, char a8, char a9, char a10, char a11, unsigned __int8 *a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  v30 = *a4;
  v76 = *a5;
  v32 = *a6;
  v31 = a6[1];
  v33 = *a12;
  v67 = *(v25 + 16);
  v66 = *(v25 + 24);
  v75 = *(v25 + 32);
  v64 = *(v25 + 56);
  v65 = *(v25 + 40);
  v73 = *(v25 + 64);
  v74 = *(v25 + 48);
  if (a1)
  {
    v63 = a1;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v63 = *(v25 + 72);

    if (a2)
    {
LABEL_3:
      v62 = a2;
      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  v62 = *(v25 + 80);

  if (a3)
  {
LABEL_4:
    v61 = a3;
    if (v30 != 7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_31:
  v61 = *(v25 + 88);

  if (v30 == 7)
  {
LABEL_5:
    LOBYTE(v30) = *(v25 + 96);
  }

LABEL_6:
  if (v76 == 16)
  {
    LOBYTE(v76) = *(v25 + 97);
  }

  v71 = v31;
  v72 = v32;
  if (v32 == 3)
  {
    v71 = *(v25 + 112);
    v72 = *(v25 + 104);
    sub_24E9534EC(v72, v71);
  }

  if (a7 == 2)
  {
    a7 = *(v25 + 120);
  }

  v34 = a9;
  if (a8 == 2)
  {
    a8 = *(v25 + 121);
  }

  v35 = a10;
  if (a9 == 2)
  {
    v34 = *(v25 + 122);
  }

  v36 = a11;
  if (a10 == 2)
  {
    v35 = *(v25 + 123);
  }

  if (a11 == 2)
  {
    v36 = *(v25 + 124);
  }

  v60 = v34;
  v37 = a13;
  if (v33 == 3)
  {
    LOBYTE(v33) = *(v25 + 126);
  }

  if (a13 == 2)
  {
    v37 = *(v25 + 125);
  }

  v58 = v36;
  v59 = v35;
  v57 = v37;
  if (a15)
  {
    v56 = *(v25 + 128);
    v55 = *(v25 + 136);
  }

  else
  {
    v55 = 0;
    v56 = a14;
  }

  v69 = a8;
  sub_24E94E17C(a16, &v77);
  if (v78)
  {
    sub_24E612B0C(&v77, v79);

    sub_24E97CFF4(v32, v31);
  }

  else
  {
    sub_24E94E17C(v25 + 144, v79);
    v38 = v78;

    sub_24E97CFF4(v32, v31);
    if (v38)
    {
      sub_24E601704(&v77, &qword_27F2129B0, &unk_24F945320);
    }
  }

  v68 = v33;
  v40 = a18;
  if (!a18)
  {
    a17 = *(v25 + 176);
  }

  v53 = v40;
  v41 = a21;
  v42 = a20;
  if (!a20)
  {
    a19 = *(v25 + 192);
  }

  v52 = v42;
  v54 = a19;
  if (a21 == 2)
  {
    v41 = *(v25 + 208);
  }

  v44 = a24;
  v45 = a23;
  if (!a23)
  {
    a22 = *(v25 + 216);
    v45 = *(v25 + 224);
  }

  v51 = a22;
  v46 = v30;
  if (a24 == 2)
  {
    v44 = *(v25 + 232);
  }

  v47 = a25;
  if (!a25)
  {
    v47 = *(v25 + 240);
  }

  type metadata accessor for OfferDisplayProperties();
  v48 = swift_allocObject();
  *(v48 + 16) = v67;
  *(v48 + 24) = v66;
  *(v48 + 32) = v75;
  *(v48 + 40) = v65;
  *(v48 + 48) = v74;
  *(v48 + 56) = v64;
  *(v48 + 64) = v73;
  *(v48 + 72) = v63;
  *(v48 + 80) = v62;
  *(v48 + 88) = v61;
  *(v48 + 96) = v46;
  *(v48 + 97) = v76;
  *(v48 + 104) = v72;
  *(v48 + 112) = v71;
  *(v48 + 120) = a7 & 1;
  *(v48 + 121) = v69 & 1;
  *(v48 + 122) = v60 & 1;
  *(v48 + 123) = v59 & 1;
  *(v48 + 124) = v58 & 1;
  *(v48 + 125) = v57 & 1;
  *(v48 + 126) = v68;
  *(v48 + 128) = v56;
  *(v48 + 136) = v55;
  v49 = v79[1];
  *(v48 + 144) = v79[0];
  *(v48 + 160) = v49;
  *(v48 + 176) = a17;
  *(v48 + 184) = v53;
  *(v48 + 192) = v54;
  *(v48 + 200) = v52;
  *(v48 + 208) = v41 & 1;
  *(v48 + 216) = v51;
  *(v48 + 224) = v45;
  *(v48 + 232) = v44 & 1;
  *(v48 + 240) = v47;

  return v48;
}

uint64_t OfferDisplayProperties.deinit()
{

  sub_24E97D004(*(v0 + 104), *(v0 + 112));
  sub_24E601704(v0 + 144, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t OfferDisplayProperties.__deallocating_deinit()
{
  OfferDisplayProperties.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E97CD80@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = OfferDisplayProperties.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t OfferDisplayProperties.isArcadeOffer.getter()
{
  if (*(v0 + 16) == 2)
  {
    goto LABEL_8;
  }

  v1 = sub_24F92CE08();

  if (v1)
  {
LABEL_9:
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

  if (*(v0 + 16) > 2u)
  {
LABEL_8:

    goto LABEL_9;
  }

  v2 = sub_24F92CE08();

  if (v2)
  {
    goto LABEL_9;
  }

  v3 = *(v0 + 97);
  v4 = v3 > 0xC;
  v5 = 0x1380u >> v3;
  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

unint64_t sub_24E97CF28()
{
  result = qword_27F222F90;
  if (!qword_27F222F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F90);
  }

  return result;
}

unint64_t sub_24E97CFA0()
{
  result = qword_27F222F98;
  if (!qword_27F222F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F98);
  }

  return result;
}

id sub_24E97CFF4(id result, void *a2)
{
  if (result != 3)
  {
    return sub_24E9534EC(result, a2);
  }

  return result;
}

void sub_24E97D004(void *a1, void *a2)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_24E97D04C()
{
  result = qword_27F222FA0;
  if (!qword_27F222FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222FA0);
  }

  return result;
}

unint64_t sub_24E97D0A4()
{
  result = qword_27F222FA8;
  if (!qword_27F222FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222FA8);
  }

  return result;
}

unint64_t sub_24E97D0FC()
{
  result = qword_27F222FB0;
  if (!qword_27F222FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222FB0);
  }

  return result;
}

unint64_t sub_24E97D154()
{
  result = qword_27F222FB8;
  if (!qword_27F222FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222FB8);
  }

  return result;
}

unint64_t sub_24E97D1AC()
{
  result = qword_27F222FC0;
  if (!qword_27F222FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222FC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OfferEnvironment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OfferEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24E97D370(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E97D3CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_24E97D41C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t dispatch thunk of OfferDisplayProperties.__allocating_init(offerType:adamId:bundleId:parentAdamId:titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + 280);

  return v9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of OfferDisplayProperties.newOfferDisplayPropertiesChanging(titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 296);

  return v5(a1, a2, a3, a4);
}

uint64_t OfferStateAction.preferredAction(for:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 40))(&v12, *(v2 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_includeBetaApps), ObjectType, a2);
  v5 = v16 >> 60;
  if ((v16 >> 60) <= 2)
  {
    if (v5 == 1)
    {
    }

    if (v5 == 2)
    {
      goto LABEL_30;
    }

LABEL_16:
    v6 = v12;
    goto LABEL_17;
  }

  if (v5 == 3 || v5 == 4)
  {
LABEL_30:
    sub_24E88D2AC(&v12);
  }

  if (v5 != 8)
  {
    goto LABEL_16;
  }

  v6 = v12;
  if (!v17 && v16 == 0x8000000000000000 && v12 == 1)
  {
    v7 = vorrq_s8(v14, v15);
    if (!(*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | v13))
    {
    }
  }

LABEL_17:
  if (v5 == 8)
  {
    v8 = v15.i64[1] | v17;
    v9 = v14.i64[1] | v14.i64[0] | v13;
    if (v16 == 0x8000000000000000 && !(v8 | v6 | v15.i64[0] | v9))
    {
      goto LABEL_30;
    }

    if (v16 == 0x8000000000000000 && v6 == 4 && !(v8 | v15.i64[0] | v9))
    {
      goto LABEL_30;
    }
  }

  if (v5 != 8)
  {
    goto LABEL_30;
  }

  if (v17)
  {
    goto LABEL_30;
  }

  if (v16 != 0x8000000000000000)
  {
    goto LABEL_30;
  }

  if (v6 != 3)
  {
    goto LABEL_30;
  }

  v10 = vorrq_s8(v14, v15);
  if (*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | v13)
  {
    goto LABEL_30;
  }
}

double OfferStateAction.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId);
  a1[1] = v2;

  return result;
}

void *OfferStateAction.__allocating_init(title:adamId:defaultAction:buyAction:updateAction:downloadAction:purchasedAction:installedAction:resumeAction:openAction:subscribePageAction:restrictedAction:cancelAction:includeBetaApps:presentationStyle:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v53 = a8;
  v42 = a7;
  v49 = a1;
  v50 = a2;
  v51 = a16;
  v44 = a13;
  v43 = a12;
  v41 = a11;
  v52 = a10;
  LODWORD(v48) = a15;
  v40 = sub_24F91F6B8();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v23 = a3[1];
  v24 = (v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId);
  *v24 = *a3;
  v24[1] = v23;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_defaultAction) = a4;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_buyAction) = a5;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_updateAction) = a6;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_downloadAction) = v42;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_purchasedAction) = a8;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_installedAction) = a9;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_resumeAction) = a10;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_openAction) = a11;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_subscribePageAction) = v43;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_restrictedAction) = v44;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_cancelAction) = a14;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_includeBetaApps) = v48;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v46 = a14;

  v48 = a4;

  v47 = a5;

  v45 = a6;

  sub_24F928A98();
  v25 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v26 = sub_24F929608();
  (*(*(v26 - 8) + 56))(v22 + v25, 1, 1, v26);
  v27 = (v22 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  v28 = v22 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v59, &v56);
  if (*(&v57 + 1))
  {
    v29 = v57;
    *v28 = v56;
    *(v28 + 1) = v29;
    *(v28 + 4) = v58;
  }

  else
  {
    v30 = v38;
    sub_24F91F6A8();
    v31 = sub_24F91F668();
    v33 = v32;
    (*(v39 + 8))(v30, v40);
    v54 = v31;
    v55 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v56, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v59, &qword_27F235830, &qword_24F93B8C0);
  v34 = v50;
  v22[2] = v49;
  v22[3] = v34;
  v35 = v51;
  v22[4] = 0;
  v22[5] = v35;
  return v22;
}

void *OfferStateAction.init(title:adamId:defaultAction:buyAction:updateAction:downloadAction:purchasedAction:installedAction:resumeAction:openAction:subscribePageAction:restrictedAction:cancelAction:includeBetaApps:presentationStyle:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v17 = v16;
  v61 = a2;
  v60 = a1;
  v62 = a16;
  v64 = a14;
  v50 = a13;
  v65 = a12;
  LODWORD(v57) = a15;
  v48 = sub_24F91F6B8();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v25 - 8);
  v63 = &v45 - v26;
  v59 = sub_24F928AD8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v49 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3[1];
  v29 = (v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId);
  *v29 = *a3;
  v29[1] = v28;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_defaultAction) = a4;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_buyAction) = a5;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_updateAction) = a6;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_downloadAction) = a7;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_purchasedAction) = a8;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_installedAction) = a9;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_resumeAction) = a10;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_openAction) = a11;
  v30 = v64;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_subscribePageAction) = v65;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_restrictedAction) = v50;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_cancelAction) = v30;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_includeBetaApps) = v57;
  v75 = 0;
  memset(v74, 0, sizeof(v74));

  v51 = a4;

  v52 = a5;

  v53 = a6;

  v54 = a7;
  v31 = v49;

  v55 = a8;

  v56 = a10;

  v57 = a11;

  sub_24F928A98();
  v32 = sub_24F929608();
  v33 = v63;
  (*(*(v32 - 8) + 56))();
  v34 = (v17 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_24E65E064(v74, &v68);
  if (*(&v69 + 1))
  {
    v71 = v68;
    v72 = v69;
    v73 = v70;
  }

  else
  {
    v35 = v46;
    sub_24F91F6A8();
    v36 = sub_24F91F668();
    v45 = a9;
    v37 = v36;
    v39 = v38;
    (*(v47 + 8))(v35, v48);
    v66 = v37;
    v67 = v39;
    v33 = v63;
    sub_24F92C7F8();
    sub_24E601704(&v68, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v74, &qword_27F235830, &qword_24F93B8C0);
  v40 = v17 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v40 + 4) = v73;
  v41 = v72;
  *v40 = v71;
  *(v40 + 1) = v41;
  sub_24E65E0D4(v33, v17 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v42 = v61;
  v17[2] = v60;
  v17[3] = v42;
  v43 = v62;
  v17[4] = 0;
  v17[5] = v43;
  (*(v58 + 32))(v17 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v31, v59);
  return v17;
}

char *OfferStateAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v289 = a2;
  v286 = *v3;
  v290 = sub_24F9285B8();
  v287 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v278 = &v263 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v272 = &v263 - v7;
  MEMORY[0x28223BE20](v8);
  v271 = &v263 - v9;
  MEMORY[0x28223BE20](v10);
  v270 = &v263 - v11;
  MEMORY[0x28223BE20](v12);
  v269 = &v263 - v13;
  MEMORY[0x28223BE20](v14);
  v268 = &v263 - v15;
  MEMORY[0x28223BE20](v16);
  v267 = &v263 - v17;
  MEMORY[0x28223BE20](v18);
  v266 = &v263 - v19;
  MEMORY[0x28223BE20](v20);
  v265 = &v263 - v21;
  MEMORY[0x28223BE20](v22);
  v264 = &v263 - v23;
  MEMORY[0x28223BE20](v24);
  v263 = &v263 - v25;
  v26 = sub_24F928388();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v277 = &v263 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v275 = &v263 - v30;
  MEMORY[0x28223BE20](v31);
  v285 = &v263 - v32;
  MEMORY[0x28223BE20](v33);
  v291 = &v263 - v34;
  MEMORY[0x28223BE20](v35);
  v274 = &v263 - v36;
  MEMORY[0x28223BE20](v37);
  v273 = &v263 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v263 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v263 - v43;
  v45 = a1;
  sub_24F928398();
  v46 = sub_24F928348();
  v48 = v47;
  v276 = v27;
  v51 = *(v27 + 8);
  v50 = v27 + 8;
  v49 = v51;
  v51(v44, v26);
  if (!v48)
  {
    v41 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v59 = 0x64496D616461;
    v60 = v286;
    v59[1] = 0xE600000000000000;
    v59[2] = v60;
    (*(*(v41 - 1) + 104))(v59, *MEMORY[0x277D22530], v41);
    swift_willThrow();
    (*(v287 + 8))(v289, v290);
    v49(v45, v26);
    goto LABEL_5;
  }

  v288 = v49;
  v292 = v50;
  v293 = v26;
  v52 = (v3 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId);
  *v52 = v46;
  v52[1] = v48;
  v53 = type metadata accessor for Action(0);
  sub_24F928398();
  v54 = v289;
  v55 = v283;
  v56 = static Action.makeInstance(byDeserializing:using:)(v41, v289);
  v279 = v55;
  if (v55)
  {
    (*(v287 + 8))(v54, v290);
    v57 = v293;
    v58 = v288;
    v288(v45, v293);
    v58(v41, v57);

LABEL_5:
    swift_deallocPartialClassInstance();
    return v41;
  }

  v62 = v56;
  v284 = v45;
  v288(v41, v293);
  v63 = OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_defaultAction;
  v283 = v3;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_defaultAction) = v62;
  if (qword_27F210030 != -1)
  {
    swift_once();
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222FE0, &qword_24F96CF30);
  v65 = __swift_project_value_buffer(v64, qword_27F222FC8);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222FE8, &qword_24F96CF38);
  v281 = v65;
  sub_24F9285D8();
  v66 = v295;
  v282 = v53;
  if (!v295)
  {
    v66 = sub_24E6091F0(MEMORY[0x277D84F90]);
  }

  v296 = v66;
  v67 = v273;
  sub_24F928398();
  v68 = v274;
  sub_24F928398();
  v69 = v67;
  v70 = v293;
  v71 = v288;
  v288(v69, v293);
  v72 = sub_24F928348();
  v74 = v73;
  v71(v68, v70);
  if (v74)
  {
    v75 = *(v283 + v63);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v295 = v296;
    sub_24E81C4B0(v75, v72, v74, isUniquelyReferenced_nonNull_native);

    v66 = v295;
    v296 = v295;
  }

  v286 = v66;
  v77 = v291;
  sub_24F928398();
  v78 = v285;
  sub_24F928398();
  v79 = v293;
  v80 = v288;
  v288(v77, v293);
  v81 = sub_24F928348();
  v83 = v82;
  v84 = v78;
  v85 = v286;
  v80(v84, v79);
  v86 = v80;
  if (v83)
  {
    if (*(v85 + 16))
    {

      v87 = sub_24E76D644(v81, v83);
      v89 = v88;

      if (v89)
      {
        v90 = *(*(v85 + 56) + 8 * v87);

LABEL_22:

        goto LABEL_23;
      }
    }
  }

  v295 = v85;

  v91 = v263;
  sub_24F928528();

  v92 = v291;
  sub_24F928398();
  v90 = static Action.tryToMakeInstance(byDeserializing:using:)(v92, v91);
  v86(v92, v293);
  if (!v90)
  {
    (*(v287 + 8))(v91, v290);
    goto LABEL_22;
  }

  v93 = v287;
  if (v83)
  {
    swift_beginAccess();
    swift_retain_n();
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_24E81C4B0(v90, v81, v83, v94);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v93 + 8))(v91, v290);
LABEL_23:
  *(v283 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_buyAction) = v90;
  v95 = v291;
  sub_24F928398();
  v96 = v285;
  sub_24F928398();
  v97 = v293;
  v98 = v288;
  v288(v95, v293);
  v99 = sub_24F928348();
  v101 = v100;
  v98(v96, v97);
  v102 = v98;
  v103 = v286;
  if (v101)
  {
    if (*(v286 + 16))
    {

      v104 = sub_24E76D644(v99, v101);
      v106 = v105;

      if (v106)
      {
        v107 = *(*(v103 + 56) + 8 * v104);

LABEL_32:

        goto LABEL_33;
      }
    }
  }

  v295 = v103;

  v108 = v264;
  sub_24F928528();

  v109 = v291;
  v110 = v108;
  sub_24F928398();
  v107 = static Action.tryToMakeInstance(byDeserializing:using:)(v109, v108);
  v102(v109, v293);
  if (!v107)
  {
    (*(v287 + 8))(v110, v290);
    goto LABEL_32;
  }

  v111 = v287;
  if (v101)
  {
    swift_beginAccess();
    swift_retain_n();
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_24E81C4B0(v107, v99, v101, v112);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v111 + 8))(v110, v290);
LABEL_33:
  *(v283 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_updateAction) = v107;
  v113 = v291;
  sub_24F928398();
  v114 = v285;
  sub_24F928398();
  v115 = v293;
  v116 = v288;
  v288(v113, v293);
  v117 = sub_24F928348();
  v119 = v118;
  v116(v114, v115);
  v120 = v116;
  v121 = v286;
  if (v119)
  {
    if (*(v286 + 16))
    {

      v122 = sub_24E76D644(v117, v119);
      v124 = v123;

      if (v124)
      {
        v125 = *(*(v121 + 56) + 8 * v122);

LABEL_42:

        goto LABEL_43;
      }
    }
  }

  v295 = v121;

  v126 = v265;
  sub_24F928528();

  v127 = v291;
  sub_24F928398();
  v125 = static Action.tryToMakeInstance(byDeserializing:using:)(v127, v126);
  v120(v127, v293);
  if (!v125)
  {
    (*(v287 + 8))(v126, v290);
    goto LABEL_42;
  }

  if (v119)
  {
    swift_beginAccess();
    swift_retain_n();
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_24E81C4B0(v125, v117, v119, v128);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v287 + 8))(v126, v290);
LABEL_43:
  *(v283 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_downloadAction) = v125;
  v129 = v291;
  sub_24F928398();
  v130 = v285;
  sub_24F928398();
  v131 = v293;
  v132 = v288;
  v288(v129, v293);
  v133 = sub_24F928348();
  v135 = v134;
  v132(v130, v131);
  v136 = v132;
  v137 = v286;
  if (v135)
  {
    if (*(v286 + 16))
    {

      v138 = sub_24E76D644(v133, v135);
      v140 = v139;

      if (v140)
      {
        v141 = *(*(v137 + 56) + 8 * v138);

LABEL_52:

        goto LABEL_53;
      }
    }
  }

  v295 = v137;

  v142 = v266;
  sub_24F928528();

  v143 = v291;
  v144 = v142;
  sub_24F928398();
  v141 = static Action.tryToMakeInstance(byDeserializing:using:)(v143, v142);
  v136(v143, v293);
  if (!v141)
  {
    (*(v287 + 8))(v144, v290);
    goto LABEL_52;
  }

  if (v135)
  {
    swift_beginAccess();
    swift_retain_n();
    v145 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_24E81C4B0(v141, v133, v135, v145);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v287 + 8))(v144, v290);
LABEL_53:
  *(v283 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_purchasedAction) = v141;
  v146 = v291;
  sub_24F928398();
  v147 = v285;
  sub_24F928398();
  v148 = v293;
  v149 = v288;
  v288(v146, v293);
  v150 = sub_24F928348();
  v152 = v151;
  v149(v147, v148);
  v153 = v149;
  v154 = v286;
  if (v152 && *(v286 + 16) && (, v155 = sub_24E76D644(v150, v152), v157 = v156, , (v157 & 1) != 0))
  {
    v158 = *(*(v154 + 56) + 8 * v155);
  }

  else
  {
    v295 = v154;

    v159 = v267;
    sub_24F928528();

    v160 = v291;
    sub_24F928398();
    v158 = static Action.tryToMakeInstance(byDeserializing:using:)(v160, v159);
    v153(v160, v293);
    if (v158)
    {
      v161 = v287;
      if (v152)
      {
        swift_beginAccess();
        swift_retain_n();
        v162 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_24E81C4B0(v158, v150, v152, v162);

        v286 = v294;
        v296 = v294;
        swift_endAccess();
      }

      (*(v161 + 8))(v159, v290);
    }

    else
    {
      (*(v287 + 8))(v159, v290);
    }
  }

  *(v283 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_installedAction) = v158;
  v163 = v291;
  sub_24F928398();
  v164 = v285;
  sub_24F928398();
  v165 = v293;
  v166 = v288;
  v288(v163, v293);
  v167 = sub_24F928348();
  v169 = v168;
  v166(v164, v165);
  v170 = v166;
  v171 = v286;
  if (v169)
  {
    if (*(v286 + 16))
    {

      v172 = sub_24E76D644(v167, v169);
      v174 = v173;

      if (v174)
      {
        v175 = *(*(v171 + 56) + 8 * v172);

LABEL_71:

        goto LABEL_72;
      }
    }
  }

  v295 = v171;

  v176 = v268;
  sub_24F928528();
  v177 = v176;

  v178 = v291;
  sub_24F928398();
  v175 = static Action.tryToMakeInstance(byDeserializing:using:)(v178, v176);
  v170(v178, v293);
  if (!v175)
  {
    (*(v287 + 8))(v177, v290);
    goto LABEL_71;
  }

  v179 = v287;
  if (v169)
  {
    swift_beginAccess();
    swift_retain_n();
    v180 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_24E81C4B0(v175, v167, v169, v180);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v179 + 8))(v177, v290);
LABEL_72:
  *(v283 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_resumeAction) = v175;
  v181 = v291;
  sub_24F928398();
  v182 = v285;
  sub_24F928398();
  v183 = v293;
  v184 = v288;
  v288(v181, v293);
  v185 = sub_24F928348();
  v187 = v186;
  v184(v182, v183);
  v188 = v184;
  v189 = v286;
  if (v187 && *(v286 + 16) && (, v190 = sub_24E76D644(v185, v187), v192 = v191, , (v192 & 1) != 0))
  {
    v193 = *(*(v189 + 56) + 8 * v190);
  }

  else
  {
    v295 = v189;

    v194 = v269;
    sub_24F928528();
    v195 = v194;

    v196 = v291;
    sub_24F928398();
    v193 = static Action.tryToMakeInstance(byDeserializing:using:)(v196, v194);
    v188(v196, v293);
    if (v193)
    {
      v197 = v287;
      v198 = v283;
      if (v187)
      {
        swift_beginAccess();
        swift_retain_n();
        v199 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_24E81C4B0(v193, v185, v187, v199);

        v286 = v294;
        v296 = v294;
        swift_endAccess();
      }

      (*(v197 + 8))(v195, v290);
      goto LABEL_82;
    }

    (*(v287 + 8))(v195, v290);
  }

  v198 = v283;
LABEL_82:
  *(v198 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_openAction) = v193;
  v200 = v291;
  sub_24F928398();
  v201 = v285;
  sub_24F928398();
  v202 = v293;
  v203 = v288;
  v288(v200, v293);
  v204 = sub_24F928348();
  v206 = v205;
  v203(v201, v202);
  v207 = v286;
  if (v206 && *(v286 + 16) && (, v208 = sub_24E76D644(v204, v206), v210 = v209, , (v210 & 1) != 0))
  {
    v211 = *(*(v207 + 56) + 8 * v208);

    v212 = v283;
  }

  else
  {
    v295 = v207;

    v213 = v270;
    sub_24F928528();

    v214 = v291;
    sub_24F928398();
    v211 = static Action.tryToMakeInstance(byDeserializing:using:)(v214, v213);
    v203(v214, v293);
    if (v211)
    {
      v215 = v287;
      v212 = v283;
      if (v206)
      {
        swift_beginAccess();
        swift_retain_n();
        v216 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_24E81C4B0(v211, v204, v206, v216);

        v286 = v294;
        v296 = v294;
        swift_endAccess();
      }

      (*(v215 + 8))(v213, v290);
    }

    else
    {
      (*(v287 + 8))(v213, v290);

      v212 = v283;
    }
  }

  *(v212 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_subscribePageAction) = v211;
  v217 = v291;
  sub_24F928398();
  v218 = v285;
  sub_24F928398();
  v219 = v293;
  v220 = v288;
  v288(v217, v293);
  v221 = sub_24F928348();
  v223 = v222;
  v220(v218, v219);
  v224 = v286;
  if (v223 && *(v286 + 16) && (, v225 = sub_24E76D644(v221, v223), v227 = v226, , (v227 & 1) != 0))
  {
    v228 = *(*(v224 + 56) + 8 * v225);
  }

  else
  {
    v295 = v224;

    v229 = v271;
    sub_24F928528();

    v230 = v291;
    sub_24F928398();
    v228 = static Action.tryToMakeInstance(byDeserializing:using:)(v230, v229);
    v220(v230, v293);
    if (v228)
    {
      v231 = v287;
      if (v223)
      {
        swift_beginAccess();
        swift_retain_n();
        v232 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_24E81C4B0(v228, v221, v223, v232);

        v286 = v294;
        v296 = v294;
        swift_endAccess();
      }

      (*(v231 + 8))(v229, v290);
    }

    else
    {
      (*(v287 + 8))(v229, v290);
    }

    v212 = v283;
  }

  *(v212 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_restrictedAction) = v228;
  v233 = v291;
  sub_24F928398();
  v234 = v285;
  sub_24F928398();
  v235 = v293;
  v236 = v288;
  v288(v233, v293);
  v237 = sub_24F928348();
  v239 = v238;
  v236(v234, v235);
  v240 = v236;
  v241 = v286;
  if (v239 && *(v286 + 16) && (, v242 = sub_24E76D644(v237, v239), v244 = v243, , (v244 & 1) != 0))
  {
    v245 = *(*(v241 + 56) + 8 * v242);

    v246 = v212;
    v247 = v287;
    v248 = v284;
  }

  else
  {
    v285 = v237;
    v295 = v241;

    v249 = v272;
    sub_24F928528();

    v250 = v291;
    v248 = v284;
    sub_24F928398();
    v245 = static Action.tryToMakeInstance(byDeserializing:using:)(v250, v249);
    v240(v250, v293);
    if (v245)
    {
      v247 = v287;
      if (v239)
      {
        swift_beginAccess();
        swift_retain_n();
        v251 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_24E81C4B0(v245, v285, v239, v251);

        v286 = v294;
        swift_endAccess();
      }

      (*(v247 + 8))(v249, v290);
    }

    else
    {
      v247 = v287;
      (*(v287 + 8))(v249, v290);
    }

    v246 = v283;
  }

  *(v246 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_cancelAction) = v245;
  v252 = v275;
  sub_24F928398();
  v253 = sub_24F928278();
  v254 = v252;
  v255 = v293;
  v256 = v288;
  v288(v254, v293);
  *(v246 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_includeBetaApps) = v253 & 1;
  v257 = v277;
  (*(v276 + 16))(v277, v248, v255);
  v258 = v247;
  v259 = *(v247 + 16);
  v41 = v278;
  v260 = v289;
  v259(v278, v289, v290);
  v261 = v279;
  v262 = Action.init(deserializing:using:)(v257, v41);
  if (!v261)
  {
    v41 = v262;
  }

  (*(v258 + 8))(v260, v290);
  v256(v248, v255);

  return v41;
}

uint64_t sub_24E9803E4()
{
}

uint64_t OfferStateAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t OfferStateAction.__deallocating_deinit()
{
  OfferStateAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E9806B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222FE0, &qword_24F96CF30);
  __swift_allocate_value_buffer(v0, qword_27F222FC8);
  __swift_project_value_buffer(v0, qword_27F222FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222FE8, &qword_24F96CF38);
  return sub_24F928588();
}

uint64_t type metadata accessor for OfferStateAction(uint64_t a1)
{
  result = qword_27F222FF0;
  if (!qword_27F222FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E980878(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24F92CA08();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E980938, 0, 0);
}

uint64_t sub_24E980938()
{
  v1 = sub_24F92D1A8();
  v3 = v2;
  sub_24F92CFB8();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_24E980A18;

  return sub_24E70C87C(v1, v3, 0, 0, 1);
}

uint64_t sub_24E980A18()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24E980C44;
  }

  else
  {
    v5 = sub_24E980B88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24E980B88()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24E980C44()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24E980CC4()
{
  result = qword_27F2163F0;
  if (!qword_27F2163F0)
  {
    type metadata accessor for WaitAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2163F0);
  }

  return result;
}

uint64_t sub_24E980D24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for WaitAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_24E980F34(a1, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_24E981074(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v10 = sub_24F92A9E8();
  v11 = sub_24F92B858();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24F96D030;
  v12[5] = v9;
  v12[6] = v10;

  sub_24E6959D8(0, 0, v4, &unk_24F94D7B0, v12);

  return v10;
}

uint64_t sub_24E980F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E980F98()
{
  v1 = type metadata accessor for WaitAction(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + *(v1 + 20);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_24E981074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9810D8(uint64_t a1)
{
  v4 = *(type metadata accessor for WaitAction(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24E980878(a1, v1 + v5);
}

uint64_t sub_24E9811B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *SearchChartOrCategory.backgroundColor.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t SearchChartOrCategory.brickBadge.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchChartOrCategory.brickTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SearchChartOrCategory.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F213E68, &unk_24F93BC80);
}

uint64_t SearchChartOrCategory.impressionMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics;
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F213E68, &unk_24F93BC80);
  return swift_endAccess();
}

double SearchChartOrCategory.clickAction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickAction;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t SearchChartOrCategory.clickSender.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F2129B0, &unk_24F945320);
}

uint64_t SearchChartOrCategory.clickSender.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickSender;
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F2129B0, &unk_24F945320);
  return swift_endAccess();
}

__n128 SearchChartOrCategory.artworkSafeArea.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_artworkSafeArea;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_artworkSafeArea + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_artworkSafeArea);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 SearchChartOrCategory.textSafeArea.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_textSafeArea;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_textSafeArea + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_textSafeArea);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t SearchChartOrCategory.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchChartOrCategory.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SearchChartOrCategory.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v89 = *v2;
  v87 = sub_24F91F6B8();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_24F9285B8();
  v6 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v99 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v97 = &v84 - v9;
  MEMORY[0x28223BE20](v10);
  v106 = &v84 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v84 - v13;
  v103 = sub_24F928388();
  v105 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v92 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v98 = &v84 - v17;
  MEMORY[0x28223BE20](v18);
  v94 = &v84 - v19;
  MEMORY[0x28223BE20](v20);
  v93 = &v84 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v84 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v84 - v26;
  v28 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics;
  v102 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics;
  v29 = sub_24F929608();
  (*(*(v29 - 8) + 56))(&v2[v28], 1, 1, v29);
  v90 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickAction;
  v30 = v2;
  *&v2[OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickAction] = 0;
  v31 = &v2[OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickSender];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  sub_24F928398();
  v100 = v6;
  v32 = *(v6 + 16);
  v32(v14, a2, v118);
  v95 = v24;
  v91 = v14;
  sub_24F929548();
  v33 = v102;
  swift_beginAccess();
  v96 = v30;
  sub_24E61DA68(v27, v33 + v30, &qword_27F213E68, &unk_24F93BC80);
  swift_endAccess();
  v34 = v106;
  v101 = a2;
  v35 = a2;
  v36 = v118;
  v32(v106, v35, v118);
  sub_24F928398();
  v102 = v32;
  v32(v97, v34, v36);
  type metadata accessor for Artwork(0);
  sub_24E982B1C(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v37 = v104;
  v38 = sub_24F92B678();
  if (v37)
  {

    v97 = 0;
  }

  else
  {
    v97 = v38;
  }

  sub_24F928398();
  v102(v99, v106, v118);
  v39 = sub_24F92B678();
  v40 = v95;
  v99 = v39;
  v41 = v103;
  v42 = v98;
  sub_24F928398();
  v43 = sub_24F928348();
  v45 = v44;
  v104 = *(v105 + 8);
  v105 += 8;
  v104(v42, v41);
  if (v45)
  {
    v98 = 0;
    v94 = v45;
    sub_24F928398();
    v88 = a1;
    v46 = v91;
    v47 = v118;
    v48 = v102;
    v102(v91, v106, v118);
    sub_24E951E68();
    sub_24F929548();
    v93 = v43;
    v49 = v96;
    v50 = (v96 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_artworkSafeArea);
    v51 = v113;
    *v50 = v112;
    v50[1] = v51;
    v50[2] = *v114;
    *(v50 + 42) = *&v114[10];
    sub_24F928398();
    v52 = v106;
    v53 = v47;
    v54 = v103;
    v48(v46, v106, v53);
    sub_24F929548();
    v55 = (v49 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_textSafeArea);
    v56 = v116;
    *v55 = v115;
    v55[1] = v56;
    v55[2] = *v117;
    *(v55 + 42) = *&v117[10];
    type metadata accessor for Action(0);
    v57 = v88;
    sub_24F928398();
    v58 = static Action.tryToMakeInstance(byDeserializing:using:)(v40, v52);
    v59 = v104;
    v104(v40, v54);
    v60 = v90;
    swift_beginAccess();
    *(v49 + v60) = v58;

    sub_24F928398();
    sub_24E9824A0();
    sub_24F928208();
    v59(v40, v54);
    *(v49 + 48) = v109;
    v61 = v99;
    v49[7] = v97;
    v49[8] = v61;
    sub_24F928398();
    v62 = JSONObject.appStoreColor.getter();
    v59(v40, v54);
    v49[10] = v62;
    sub_24F928398();
    v63 = sub_24F928348();
    v65 = v64;
    v59(v40, v54);
    v49[2] = v63;
    v49[3] = v65;
    v66 = v94;
    v49[4] = v93;
    v49[5] = v66;
    v67 = v92;
    sub_24F928398();
    v68 = sub_24F928348();
    if (v69)
    {
      v107 = v68;
      v108 = v69;
      sub_24F92C7F8();
      v70 = v67;
    }

    else
    {
      v75 = v85;
      sub_24F91F6A8();
      v76 = sub_24F91F668();
      v78 = v77;
      (*(v86 + 8))(v75, v87);
      v107 = v76;
      v108 = v78;
      sub_24F92C7F8();
      v70 = v92;
    }

    v104(v70, v54);
    v79 = v110;
    *(v49 + 11) = v109;
    *(v49 + 13) = v79;
    v49[15] = v111;
    sub_24F928398();
    sub_24E951EBC();
    sub_24F928208();

    v80 = *(v100 + 8);
    v81 = v118;
    v80(v101, v118);
    v82 = v104;
    v104(v57, v54);
    v82(v40, v54);
    v80(v106, v81);
    *(v49 + 72) = v109;
  }

  else
  {

    v71 = sub_24F92AC38();
    sub_24E982B1C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v72 = 0x656C746974;
    v72[1] = 0xE500000000000000;
    v72[2] = v89;
    (*(*(v71 - 8) + 104))(v72, *MEMORY[0x277D22530], v71);
    swift_willThrow();
    v73 = *(v100 + 8);
    v74 = v118;
    v73(v101, v118);
    v104(a1, v41);
    v73(v106, v74);
    v49 = v96;
    sub_24E601704(v96 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

    sub_24E601704(v49 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickSender, &qword_27F2129B0, &unk_24F945320);
    swift_deallocPartialClassInstance();
  }

  return v49;
}