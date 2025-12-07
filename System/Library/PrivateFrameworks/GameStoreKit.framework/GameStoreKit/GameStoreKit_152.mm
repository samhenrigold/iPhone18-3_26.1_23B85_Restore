uint64_t sub_24F5A5F74(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F5A5FF8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F5A608C@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24F5A60EC(uint64_t *a1@<X8>)
{
  v2 = 0x6F7247726F6C6F63;
  if (*v1)
  {
    v2 = 0x42646574736F7266;
  }

  v3 = 0xEF6B636972427075;
  if (*v1)
  {
    v3 = 0xEC0000006B636972;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F5A6204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728, &unk_24F956450);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 40));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24F5A6338(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728, &unk_24F956450);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F5A6458(uint64_t a1)
{
  sub_24F5A6574(319, &qword_27F21C740, type metadata accessor for JSColor);
  if (v1 <= 0x3F)
  {
    sub_24F5A6574(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
    if (v2 <= 0x3F)
    {
      sub_24E6E8928(319, &qword_27F2169A0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F5A6574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F5A661C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920, &unk_24FA2EBB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F5A66E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920, &unk_24FA2EBB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5A67B0(uint64_t a1)
{
  sub_24E6E8928(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24F5A6574(319, &qword_27F21C940, type metadata accessor for GradientBackground);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F5A68B0()
{
  result = qword_27F248CD8;
  if (!qword_27F248CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248CD8);
  }

  return result;
}

unint64_t sub_24F5A6908()
{
  result = qword_27F248CE0;
  if (!qword_27F248CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248CE0);
  }

  return result;
}

unint64_t sub_24F5A6960()
{
  result = qword_27F248CE8;
  if (!qword_27F248CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248CE8);
  }

  return result;
}

uint64_t sub_24F5A69B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v35 = a3;
  swift_getWitnessTable();
  v27[5] = sub_24F925108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2186A8, &qword_24FA0D3A0);
  v29 = sub_24F924038();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v27[3] = sub_24F9236B8();
  v32 = sub_24F924038();
  v27[0] = sub_24F9250E8();
  v33 = sub_24F924038();
  v34 = sub_24F9254C8();
  v27[1] = sub_24F924038();
  type metadata accessor for FrostedGradientView(255, v4, v5, v6);
  sub_24F924E38();
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248E38, &unk_24FA0D3A8);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214CB8, &unk_24F93E7C0);
  sub_24F924E38();
  WitnessTable = swift_getWitnessTable();
  v67 = WitnessTable;
  v65 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v64 = sub_24F5ABC24();
  v61 = swift_getWitnessTable();
  v62 = sub_24E63D098();
  swift_getWitnessTable();
  v27[2] = sub_24F924E08();
  v27[4] = sub_24F924038();
  v27[6] = sub_24F924038();
  v27[7] = sub_24F924038();
  v7 = sub_24F927598();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v40 = v4;
  v41 = v5;
  v42 = v30;
  v43 = v31;
  v36 = v4;
  v37 = v5;
  v38 = v30;
  v39 = v31;
  v31 = sub_24E6A4C1C();
  v13 = swift_getWitnessTable();
  v14 = sub_24E602068(&qword_27F2186A0, &qword_27F2186A8, &qword_24FA0D3A0, MEMORY[0x277CE0728]);
  v59 = v13;
  v60 = v14;
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v57 = v15;
  v58 = v16;
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v55 = v17;
  v56 = v18;
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v53 = v19;
  v54 = v20;
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v51 = v13;
  v52 = v22;
  v49 = swift_getWitnessTable();
  v50 = v16;
  v47 = swift_getWitnessTable();
  v48 = v18;
  v26 = swift_getWitnessTable();
  v23 = v31;
  sub_24F927568();
  v44 = v23;
  v45 = v21;
  v46 = v26;
  swift_getWitnessTable();
  sub_24E7896B8();
  v24 = *(v28 + 8);
  v24(v9, v7);
  sub_24E7896B8();
  return (v24)(v12, v7);
}

uint64_t sub_24F5A6F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a2;
  v61 = a1;
  v65 = a5;
  v8 = sub_24F924368();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0, &unk_24F9E9B60);
  MEMORY[0x28223BE20](v10);
  v12 = (&v46 - v11);
  type metadata accessor for ComponentBackgroundModifierWithShape(255, a3, a4, v13);
  swift_getWitnessTable();
  sub_24F925108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2186A8, &qword_24FA0D3A0);
  v14 = sub_24F924038();
  v52 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v17 = *(a4 + 8);
  v51 = sub_24F9236B8();
  v18 = sub_24F924038();
  v57 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v47 = &v46 - v19;
  v46 = v17;
  v55 = sub_24F9250E8();
  v50 = sub_24F924038();
  v59 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v46 - v20;
  v58 = sub_24F9254C8();
  v54 = sub_24F924038();
  v60 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v56 = &v46 - v23;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v24 = sub_24F926D08();

  v25 = *(v10 + 36);
  v26 = *MEMORY[0x277CE13B8];
  v27 = sub_24F927748();
  (*(*(v27 - 8) + 104))(v12 + v25, v26, v27);
  *v12 = v24;
  sub_24E602068(&qword_27F236200, &qword_27F217DC0, &unk_24F9E9B60, MEMORY[0x277CE03C0]);
  v74 = sub_24F9238D8();
  sub_24F925808();
  WitnessTable = swift_getWitnessTable();
  sub_24F926098();

  v29 = sub_24E602068(&qword_27F2186A0, &qword_27F2186A8, &qword_24FA0D3A0, MEMORY[0x277CE0728]);
  v72 = WitnessTable;
  v73 = v29;
  v30 = swift_getWitnessTable();
  v31 = v47;
  sub_24F926B58();
  (*(v52 + 8))(v16, v14);
  v32 = swift_getWitnessTable();
  v70 = v30;
  v71 = v32;
  v33 = v18;
  v34 = swift_getWitnessTable();
  v35 = v48;
  sub_24F926268();
  (*(v57 + 8))(v31, v33);
  v36 = v62;
  sub_24F924358();
  v37 = swift_getWitnessTable();
  v68 = v34;
  v69 = v37;
  v38 = v50;
  v39 = swift_getWitnessTable();
  v40 = v49;
  sub_24F926278();
  (*(v63 + 8))(v36, v64);
  (*(v59 + 8))(v35, v38);
  v41 = swift_getWitnessTable();
  v66 = v39;
  v67 = v41;
  v42 = v54;
  swift_getWitnessTable();
  v43 = v56;
  sub_24E7896B8();
  v44 = *(v60 + 8);
  v44(v40, v42);
  sub_24E7896B8();
  return (v44)(v43, v42);
}

uint64_t sub_24F5A7740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a2;
  v53 = a1;
  v54 = a5;
  type metadata accessor for FrostedGradientView(255, a3, a4, a4);
  sub_24F924E38();
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248E38, &unk_24FA0D3A8);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214CB8, &unk_24F93E7C0);
  v7 = sub_24F924E38();
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v38 - v8;
  v11 = type metadata accessor for ComponentBackgroundModifierWithShape(255, a3, a4, v10);
  swift_getWitnessTable();
  sub_24F925108();
  WitnessTable = swift_getWitnessTable();
  v67 = WitnessTable;
  v65 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = sub_24F5ABC24();
  v63 = v12;
  v64 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_24E63D098();
  v61 = v14;
  v62 = v15;
  v42 = v7;
  v44 = swift_getWitnessTable();
  sub_24F924E08();
  v16 = sub_24F924038();
  v48 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v38 - v17;
  v19 = *(a4 + 8);
  v38[1] = a3;
  v40 = v19;
  v46 = sub_24F9236B8();
  v43 = sub_24F924038();
  v49 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = v38 - v20;
  v47 = sub_24F9250E8();
  v21 = sub_24F924038();
  v50 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v41 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v45 = v38 - v24;
  sub_24F5A7DD8(v11, v9);
  sub_24F927618();
  v25 = swift_getWitnessTable();
  v26 = v42;
  sub_24F9260A8();
  (*(v52 + 8))(v9, v26);
  v27 = swift_getWitnessTable();
  v59 = v25;
  v60 = v27;
  v28 = swift_getWitnessTable();
  v29 = v39;
  sub_24F926B58();
  (*(v48 + 8))(v18, v16);
  v30 = swift_getWitnessTable();
  v57 = v28;
  v58 = v30;
  v31 = v43;
  v32 = swift_getWitnessTable();
  v33 = v41;
  sub_24F926268();
  (*(v49 + 8))(v29, v31);
  v34 = swift_getWitnessTable();
  v55 = v32;
  v56 = v34;
  swift_getWitnessTable();
  v35 = v45;
  sub_24E7896B8();
  v36 = *(v50 + 8);
  v36(v33, v21);
  sub_24E7896B8();
  return (v36)(v35, v21);
}

uint64_t sub_24F5A7DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v256 = a1;
  v253 = a2;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F248E68, &unk_24FA0D3D0);
  MEMORY[0x28223BE20](v228);
  v230 = &v210 - v3;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10, &unk_24F94BD90);
  MEMORY[0x28223BE20](v229);
  v222 = (&v210 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248E38, &unk_24FA0D3A8);
  MEMORY[0x28223BE20](v5);
  v240 = &v210 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728, &unk_24F956450);
  MEMORY[0x28223BE20](v7 - 8);
  v231 = &v210 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v237 = &v210 - v10;
  MEMORY[0x28223BE20](v11);
  v239 = &v210 - v12;
  MEMORY[0x28223BE20](v13);
  v238 = &v210 - v14;
  v225 = *(*(a1 + 16) - 8);
  MEMORY[0x28223BE20](v15);
  v226 = &v210 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = v17;
  v218 = *(a1 + 24);
  v19 = type metadata accessor for FrostedGradientView(0, v17, v218, v18);
  v220 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v217 = &v210 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v224 = &v210 - v22;
  MEMORY[0x28223BE20](v23);
  v219 = &v210 - v24;
  MEMORY[0x28223BE20](v25);
  v215 = &v210 - v26;
  MEMORY[0x28223BE20](v27);
  v216 = &v210 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v29 - 8);
  v223 = &v210 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v233 = &v210 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v33 - 8);
  v221 = &v210 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v236 = &v210 - v36;
  MEMORY[0x28223BE20](v37);
  v235 = &v210 - v38;
  v39 = sub_24F9289E8();
  v249 = *(v39 - 8);
  v250 = v39;
  MEMORY[0x28223BE20](v39);
  v232 = &v210 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v244 = &v210 - v42;
  v254 = v19;
  v255 = sub_24F924E38();
  v43 = sub_24F92C4A8();
  v243 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v242 = &v210 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v241 = &v210 - v46;
  v248 = v5;
  v47 = sub_24F924E38();
  v247 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v246 = &v210 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v245 = &v210 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920, &unk_24FA2EBB0);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v210 - v52;
  v54 = type metadata accessor for GradientBackground(0);
  v55 = *(v54 - 1);
  MEMORY[0x28223BE20](v54);
  v57 = &v210 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214CB8, &unk_24F93E7C0);
  v59 = sub_24F924E38();
  v251 = *(v59 - 8);
  v252 = v59;
  MEMORY[0x28223BE20](v59);
  v61 = &v210 - v60;
  sub_24E60169C(v257 + *(v256 + 36), v53, &qword_27F21C920, &unk_24FA2EBB0);
  if ((*(v55 + 48))(v53, 1, v54) != 1)
  {
    v211 = v58;
    v212 = v61;
    v213 = v47;
    v214 = v43;
    sub_24F5ABD78(v53, v57);
    v69 = v57[v54[10]];
    v70 = v54[6];
    v71 = v249;
    v72 = (v249 + 48);
    v73 = v57;
    v234 = v57;
    v74 = &v57[v70];
    if (v69 == 1)
    {
      v75 = v235;
      sub_24E60169C(v74, v235, &qword_27F213FB0, &qword_24F93E6B0);
      v76 = v250;
      v77 = (*v72)(v75, 1, v250);
      v210 = v54;
      if (v77 == 1)
      {
        sub_24E601704(v75, &qword_27F213FB0, &qword_24F93E6B0);
        v78 = v255;
LABEL_29:
        v119 = v238;
        v120 = v239;
        goto LABEL_30;
      }

      (*(v71 + 32))(v244, v75, v76);
      v82 = sub_24F9289A8();
      if (v82)
      {
        v83 = qword_27F20FEE0;
        v84 = v82;
        if (v83 != -1)
        {
          v209 = v84;
          swift_once();
          v84 = v209;
        }

        v85 = v84;
        v86 = sub_24F926BD8();
        v87 = v233;
        ColorGrouping.colorGroup(for:)(v86);
        v88 = v87;

        v89 = type metadata accessor for ColorGroup(0);
        v90 = *(v89 - 8);
        v91 = *(v90 + 48);
        v92 = v91(v88, 1, v89);
        v54 = v210;
        if (v92 != 1)
        {
          v93 = *(v88 + *(v89 + 28));

          sub_24F5ABDDC(v88, type metadata accessor for ColorGroup);
          v94 = sub_24F9289A8();
          if (v94)
          {
            v95 = v94;
            v96 = sub_24F926BD8();
            v97 = v223;
            ColorGrouping.colorGroup(for:)(v96);

            v98 = v97;

            if (v91(v97, 1, v89) != 1)
            {
              v166 = *(v97 + *(v89 + 32));

              sub_24F5ABDDC(v97, type metadata accessor for ColorGroup);
              v73 = v234;
              v167 = v234[v210[7]];
              v78 = v255;
              v119 = v238;
              v120 = v239;
              if (v167 != 2)
              {
                v168 = v254;
                if (v167)
                {
                  v169 = v234[v210[8]];
                  if (v169 > 4)
                  {
                    if (v234[v210[8]] <= 6u)
                    {
                      if (v169 == 5)
                      {
                        sub_24F9278A8();
                      }

                      else
                      {
                        sub_24F9278C8();
                      }
                    }

                    else if (v169 == 7)
                    {
                      sub_24F927848();
                    }

                    else if (v169 == 8)
                    {
                      sub_24F927898();
                    }

                    else
                    {
                      sub_24F927858();
                    }
                  }

                  else if (v234[v210[8]] <= 1u)
                  {
                    if (v234[v210[8]])
                    {
                      sub_24F927828();
                    }

                    else
                    {
                      sub_24F927888();
                    }
                  }

                  else if (v169 == 2)
                  {
                    sub_24F927878();
                  }

                  else if (v169 == 3)
                  {
                    sub_24F927838();
                  }

                  else
                  {
                    sub_24F9278B8();
                  }

                  v193 = v170;
                  v194 = v171;
                  v195 = *(v73 + v210[9]);
                  v240 = v166;
                  if (v195 > 4)
                  {
                    if (v195 <= 6)
                    {
                      if (v195 == 5)
                      {
                        sub_24F9278A8();
                      }

                      else
                      {
                        sub_24F9278C8();
                      }
                    }

                    else if (v195 == 7)
                    {
                      sub_24F927848();
                    }

                    else if (v195 == 8)
                    {
                      sub_24F927898();
                    }

                    else
                    {
                      sub_24F927858();
                    }
                  }

                  else if (v195 <= 1)
                  {
                    if (v195)
                    {
                      sub_24F927828();
                    }

                    else
                    {
                      sub_24F927888();
                    }
                  }

                  else if (v195 == 2)
                  {
                    sub_24F927878();
                  }

                  else if (v195 == 3)
                  {
                    sub_24F927838();
                  }

                  else
                  {
                    sub_24F9278B8();
                  }

                  v198 = v196;
                  v199 = v197;
                  v133 = v243;
                  v200 = v218;
                  v201 = v226;
                  v202 = v257;
                  v203 = v227;
                  (*(v225 + 16))(v226, v257, v227);
                  v204 = *(v73 + v210[11]);
                  v205 = v215;
                  sub_24F5A9C68(v93, v240, v201, v203, v200, v215, v193, v194, v198, v199, *(v202 + *(v256 + 40)), v204);
                  WitnessTable = swift_getWitnessTable();
                  sub_24E7896B8();
                  v207 = *(v220 + 8);

                  v207(v205, v168);
                  v208 = v219;
                  sub_24E7896B8();
                  v130 = v242;
                  sub_24ECCCBA0(v208, v168, v168, WitnessTable, WitnessTable);

                  v207(v208, v168);
                  v207(v216, v168);
                  (*(v249 + 8))(v244, v250);
                  (*(*(v78 - 8) + 56))(v130, 0, 1, v78);
                  v131 = WitnessTable;
                  v258 = WitnessTable;
                  v132 = &v258;
                  goto LABEL_37;
                }
              }

              (*(v249 + 8))(v244, v250);

              v54 = v210;
LABEL_30:
              v121 = v78;
              sub_24E60169C(v73 + v54[5], v119, &qword_27F21C728, &unk_24F956450);
              v122 = type metadata accessor for JSColor(0);
              v123 = *(*(v122 - 8) + 48);
              if (v123(v119, 1, v122) == 1)
              {
                v124 = v119;
LABEL_35:
                sub_24E601704(v124, &qword_27F21C728, &unk_24F956450);
                goto LABEL_36;
              }

              v125 = v73;
              v126 = *(v119 + *(v122 + 28));

              v127 = v119;
              v128 = v126;
              sub_24F5ABDDC(v127, type metadata accessor for JSColor);
              if (!v126)
              {
LABEL_36:
                v130 = v242;
                (*(*(v121 - 8) + 56))(v242, 1, 1, v121);
                v131 = swift_getWitnessTable();
                v262 = v131;
                v132 = &v262;
                v133 = v243;
LABEL_37:
                v132[1] = v131;
                swift_getWitnessTable();
                v134 = v241;
                sub_24E8D5004(v130, v241);
                v135 = *(v133 + 8);
                v136 = v214;
                v135(v130, v214);
                v260 = swift_getWitnessTable();
                v261 = v260;
                v259[2] = swift_getWitnessTable();
                v137 = swift_getWitnessTable();
                sub_24E7896B8();
                v138 = sub_24F5ABC24();
                v117 = v245;
                sub_24ECCCBA0(v130, v136, v248, v137, v138);
                v135(v130, v136);
                v135(v134, v136);
                goto LABEL_38;
              }

              v129 = v125;
              sub_24E60169C(v125, v120, &qword_27F21C728, &unk_24F956450);
              if (v123(v120, 1, v122) == 1)
              {

                v124 = v120;
                goto LABEL_35;
              }

              v152 = *(v120 + *(v122 + 28));

              sub_24F5ABDDC(v120, type metadata accessor for JSColor);
              if (!v152)
              {

                goto LABEL_36;
              }

              v153 = v210;
              v154 = *(v125 + v210[8]);
              v255 = v128;
              if (v154 > 4)
              {
                if (v154 <= 6)
                {
                  v155 = v121;
                  if (v154 == 5)
                  {
                    sub_24F9278A8();
                  }

                  else
                  {
                    sub_24F9278C8();
                  }
                }

                else
                {
                  v155 = v121;
                  if (v154 != 7)
                  {
                    v156 = v254;
                    if (v154 == 8)
                    {
                      sub_24F927898();
                    }

                    else
                    {
                      sub_24F927858();
                    }

                    goto LABEL_72;
                  }

                  sub_24F927848();
                }
              }

              else if (v154 <= 1)
              {
                v155 = v121;
                if (v154)
                {
                  sub_24F927828();
                }

                else
                {
                  sub_24F927888();
                }
              }

              else
              {
                v155 = v121;
                if (v154 != 2)
                {
                  v156 = v254;
                  if (v154 == 3)
                  {
                    sub_24F927838();
                  }

                  else
                  {
                    sub_24F9278B8();
                  }

LABEL_72:
                  v174 = v157;
                  v175 = v158;
LABEL_76:
                  v176 = *(v129 + v153[9]);
                  v177 = v152;
                  if (v176 > 4)
                  {
                    if (*(v129 + v153[9]) <= 6u)
                    {
                      if (v176 == 5)
                      {
                        sub_24F9278A8();
                      }

                      else
                      {
                        sub_24F9278C8();
                      }
                    }

                    else if (v176 == 7)
                    {
                      sub_24F927848();
                    }

                    else if (v176 == 8)
                    {
                      sub_24F927898();
                    }

                    else
                    {
                      sub_24F927858();
                    }
                  }

                  else if (*(v129 + v153[9]) <= 1u)
                  {
                    if (*(v129 + v153[9]))
                    {
                      sub_24F927828();
                    }

                    else
                    {
                      sub_24F927888();
                    }
                  }

                  else if (v176 == 2)
                  {
                    sub_24F927878();
                  }

                  else if (v176 == 3)
                  {
                    sub_24F927838();
                  }

                  else
                  {
                    sub_24F9278B8();
                  }

                  v180 = v178;
                  v181 = v179;
                  v133 = v243;
                  v183 = v225;
                  v182 = v226;
                  v184 = v257;
                  v185 = v227;
                  (*(v225 + 16))(v226, v257, v227);
                  v186 = *(v184 + *(v256 + 40));
                  v187 = *(v129 + v210[11]);
                  v188 = v217;
                  v189 = v255;
                  *v217 = v177;
                  *(v188 + 1) = v189;
                  *(v188 + 2) = v174;
                  *(v188 + 3) = v175;
                  *(v188 + 4) = v180;
                  *(v188 + 5) = v181;
                  (*(v183 + 32))(&v188[v156[12]], v182, v185);
                  *&v188[v156[13]] = v186;
                  *&v188[v156[14]] = v187;
                  v190 = swift_getWitnessTable();
                  sub_24E7896B8();
                  v191 = *(v220 + 8);

                  v191(v188, v156);
                  v192 = v219;
                  sub_24E7896B8();
                  v130 = v242;
                  sub_24ECCCC98(v192, v156, v156, v190, v190);

                  v191(v192, v156);
                  v191(v224, v156);
                  (*(*(v155 - 8) + 56))(v130, 0, 1, v155);
                  v131 = v190;
                  v259[0] = v190;
                  v132 = v259;
                  goto LABEL_37;
                }

                sub_24F927878();
              }

              v174 = v172;
              v175 = v173;
              v156 = v254;
              goto LABEL_76;
            }
          }

          else
          {

            v98 = v223;
            (*(v90 + 56))(v223, 1, 1, v89);
          }

          v78 = v255;
          v73 = v234;
          v119 = v238;
          v120 = v239;
          (*(v249 + 8))(v244, v250);
          sub_24E601704(v98, &qword_27F2190D8, &unk_24F94BD70);
          v54 = v210;
          goto LABEL_30;
        }
      }

      else
      {
        v118 = type metadata accessor for ColorGroup(0);
        v88 = v233;
        (*(*(v118 - 8) + 56))(v233, 1, 1, v118);
      }

      (*(v71 + 8))(v244, v250);
      sub_24E601704(v88, &qword_27F2190D8, &unk_24F94BD70);
      v78 = v255;
      v73 = v234;
      goto LABEL_29;
    }

    v79 = v236;
    sub_24E60169C(v74, v236, &qword_27F213FB0, &qword_24F93E6B0);
    v80 = v250;
    if ((*v72)(v79, 1, v250) == 1)
    {
      sub_24E601704(v79, &qword_27F213FB0, &qword_24F93E6B0);
      v81 = v237;
    }

    else
    {
      v99 = v232;
      (*(v71 + 32))(v232, v79, v80);
      v100 = v57[v54[7]];
      v81 = v237;
      if (v100 != 2 && (v100 & 1) != 0)
      {
        v101 = sub_24F926C98();
        v102 = v221;
        (*(v71 + 16))(v221, v99, v80);
        (*(v71 + 56))(v102, 0, 1, v80);
        v103 = v222;
        sub_24F6C4E24(v102, 1, v101, v222);

        sub_24E601704(v102, &qword_27F213FB0, &qword_24F93E6B0);
        sub_24E60169C(v103, v230, &qword_27F214A10, &unk_24F94BD90);
        swift_storeEnumTagMultiPayload();
        v104 = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248E60, &unk_24FA0D3C0);
        sub_24E63D150();
        sub_24E602068(&qword_27F248E58, &qword_27F248E60, &unk_24FA0D3C0, MEMORY[0x277CDF3A0]);
        v105 = v240;
        sub_24F924E28();
        sub_24E601704(v103, &qword_27F214A10, &unk_24F94BD90);
        (*(v71 + 8))(v104, v80);
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248E50, &qword_24FA0D3B8);
        (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
LABEL_26:
        v272 = swift_getWitnessTable();
        v273 = v272;
        v271 = swift_getWitnessTable();
        v114 = v214;
        v115 = swift_getWitnessTable();
        v116 = sub_24F5ABC24();
        v117 = v245;
        sub_24ECCCC98(v105, v114, v248, v115, v116);
        sub_24E601704(v105, &qword_27F248E38, &unk_24FA0D3A8);
LABEL_38:
        v68 = v212;
        v139 = v213;
        v269 = swift_getWitnessTable();
        v270 = v269;
        v268 = swift_getWitnessTable();
        v140 = swift_getWitnessTable();
        v141 = sub_24F5ABC24();
        v266 = v140;
        v267 = v141;
        v142 = swift_getWitnessTable();
        v143 = v246;
        sub_24E7896B8();
        v144 = sub_24E63D098();
        sub_24ECCCBA0(v143, v139, v211, v142, v144);
        v145 = *(v247 + 8);
        v145(v143, v139);
        v145(v117, v139);
        sub_24F5ABDDC(v234, type metadata accessor for GradientBackground);
        goto LABEL_39;
      }

      (*(v71 + 8))(v99, v80);
    }

    sub_24E60169C(&v57[v54[5]], v81, &qword_27F21C728, &unk_24F956450);
    v107 = type metadata accessor for JSColor(0);
    v108 = *(*(v107 - 8) + 48);
    if (v108(v81, 1, v107) == 1)
    {
      v109 = v81;
    }

    else
    {
      v110 = *(v81 + *(v107 + 28));

      sub_24F5ABDDC(v81, type metadata accessor for JSColor);
      if (!v110)
      {
LABEL_25:
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248E50, &qword_24FA0D3B8);
        v105 = v240;
        (*(*(v113 - 8) + 56))(v240, 1, 1, v113);
        goto LABEL_26;
      }

      v111 = v57;
      v112 = v231;
      sub_24E60169C(v111, v231, &qword_27F21C728, &unk_24F956450);
      if (v108(v112, 1, v107) != 1)
      {
        v159 = *(v112 + *(v107 + 28));

        sub_24F5ABDDC(v112, type metadata accessor for JSColor);
        if (v159)
        {
          (*(v225 + 16))(v226, v257, v227);
          v160 = sub_24F927348();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
          v161 = swift_allocObject();
          *(v161 + 16) = xmmword_24F93A400;
          *(v161 + 32) = v159;
          *(v161 + 40) = v110;

          MEMORY[0x25304CD70](v161);
          sub_24F927878();
          sub_24F927898();
          sub_24F923BD8();
          *&v264[0] = v160;
          v265 = 256;
          v162 = v230;
          *(v230 + 48) = 256;
          v163 = v264[2];
          v162[1] = v264[1];
          v162[2] = v163;
          *v162 = v264[0];
          swift_storeEnumTagMultiPayload();
          sub_24E60169C(v264, &v263, &qword_27F248E60, &unk_24FA0D3C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248E60, &unk_24FA0D3C0);
          sub_24E63D150();
          sub_24E602068(&qword_27F248E58, &qword_27F248E60, &unk_24FA0D3C0, MEMORY[0x277CDF3A0]);
          v164 = v240;
          sub_24F924E28();

          v105 = v164;
          sub_24E601704(v264, &qword_27F248E60, &unk_24FA0D3C0);
          v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248E50, &qword_24FA0D3B8);
          (*(*(v165 - 8) + 56))(v164, 0, 1, v165);
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v109 = v112;
    }

    sub_24E601704(v109, &qword_27F21C728, &unk_24F956450);
    goto LABEL_25;
  }

  sub_24E601704(v53, &qword_27F21C920, &unk_24FA2EBB0);
  v62 = sub_24F926C98();
  v63 = sub_24F925808();
  *&v264[0] = v62;
  BYTE8(v264[0]) = v63;
  v284 = swift_getWitnessTable();
  v285 = v284;
  v283 = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v65 = sub_24F5ABC24();
  v281 = v64;
  v282 = v65;
  v66 = swift_getWitnessTable();
  v67 = sub_24E63D098();
  sub_24ECCCC98(v264, v47, v58, v66, v67);

  v68 = v61;
LABEL_39:
  v279 = swift_getWitnessTable();
  v280 = v279;
  v278 = swift_getWitnessTable();
  v146 = swift_getWitnessTable();
  v147 = sub_24F5ABC24();
  v276 = v146;
  v277 = v147;
  v148 = swift_getWitnessTable();
  v149 = sub_24E63D098();
  v274 = v148;
  v275 = v149;
  v150 = v252;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v251 + 8))(v68, v150);
}

uint64_t sub_24F5A9C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a7;
  *(a6 + 24) = a8;
  *(a6 + 32) = a9;
  *(a6 + 40) = a10;
  v17 = type metadata accessor for FrostedGradientView(0, a4, a5, a4);
  result = (*(*(a4 - 8) + 32))(a6 + v17[12], a3, a4);
  *(a6 + v17[13]) = a11;
  *(a6 + v17[14]) = a12;
  return result;
}

double sub_24F5A9D14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24F927628();
  v8 = v7;
  sub_24F5A9E5C(v3, *(a1 + 16), &v16);
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v40[8] = v24;
  v40[9] = v25;
  v40[10] = v26;
  v40[4] = v20;
  v40[5] = v21;
  v40[6] = v22;
  v40[7] = v23;
  v40[0] = v16;
  v40[1] = v17;
  v39 = v27;
  v41 = v27;
  v40[2] = v18;
  v40[3] = v19;
  sub_24E60169C(&v28, &v15, &qword_27F248F70, &qword_24FA0D4E8);
  sub_24E601704(v40, &qword_27F248F70, &qword_24FA0D4E8);
  *a2 = v6;
  *(a2 + 8) = v8;
  v9 = v37;
  *(a2 + 144) = v36;
  *(a2 + 160) = v9;
  *(a2 + 176) = v38;
  *(a2 + 192) = v39;
  v10 = v33;
  *(a2 + 80) = v32;
  *(a2 + 96) = v10;
  v11 = v35;
  *(a2 + 112) = v34;
  *(a2 + 128) = v11;
  v12 = v29;
  *(a2 + 16) = v28;
  *(a2 + 32) = v12;
  result = *&v30;
  v14 = v31;
  *(a2 + 48) = v30;
  *(a2 + 64) = v14;
  return result;
}

void sub_24F5A9E5C(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for FrostedGradientView(0, v10, v11, v12);
  v13 = *(v38 + 48);
  v14 = *(v7 + 16);
  v14(v9, &a1[v13], a2);
  v15 = sub_24F927348();
  v39 = sub_24F9251B8();
  v14(v9, &a1[v13], a2);
  v16 = sub_24F927348();
  v17 = *(a1 + 1);
  v18 = sub_24F926D08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93A400;
  *(v19 + 32) = *a1;
  *(v19 + 40) = v17;

  MEMORY[0x25304CD70](v19);
  sub_24F923BD8();
  v20 = v43;
  v21 = v44;
  v22 = v45;
  v23 = v46;
  v24 = v47;
  v25 = v38;
  v26 = *&a1[*(v38 + 56)];
  sub_24F927618();
  sub_24F9238C8();
  *&v42[39] = v50;
  *&v42[7] = v48;
  *&v42[23] = v49;
  *&v27 = -*&a1[*(v25 + 52)];
  v28 = sub_24F924058();
  v29 = sub_24F925808();
  *&v51 = v20;
  *(&v51 + 1) = v21;
  *&v52 = v22;
  *(&v52 + 1) = v23;
  *&v53 = v24;
  *(&v53 + 2) = v26;
  WORD6(v53) = 256;
  *&v54[0] = 0x4049000000000000;
  BYTE8(v54[0]) = 0;
  v30 = *v42;
  *(v54 + 9) = *v42;
  v31 = *&v42[16];
  *(&v54[1] + 9) = *&v42[16];
  v32 = *&v42[32];
  *(&v54[2] + 9) = *&v42[32];
  *(&v54[3] + 1) = *&v42[47];
  v55 = v27;
  v56[0] = 0;
  v56[1] = v28;
  LOBYTE(v56[2]) = v29;
  *(v41 + 6) = v51;
  *(&v41[4] + 6) = v54[1];
  *(&v41[3] + 6) = v54[0];
  *(&v41[2] + 6) = v53;
  *(&v41[1] + 6) = v52;
  *(&v41[7] + 15) = *(v56 + 1);
  *(&v41[7] + 6) = v27;
  *(&v41[6] + 6) = v54[3];
  *(&v41[5] + 6) = v54[2];
  v33 = v41[4];
  *(a4 + 114) = v41[5];
  v34 = v41[7];
  *(a4 + 130) = v41[6];
  *(a4 + 146) = v34;
  *(a4 + 161) = *(&v41[7] + 15);
  v35 = v41[0];
  *(a4 + 50) = v41[1];
  v36 = v41[3];
  *(a4 + 66) = v41[2];
  *(a4 + 82) = v36;
  *(a4 + 98) = v33;
  *a4 = v15;
  *(a4 + 8) = v39;
  *(a4 + 12) = 256;
  *(a4 + 16) = v16;
  *(a4 + 24) = v18;
  *(a4 + 32) = 256;
  *(a4 + 34) = v35;
  v57[0] = v20;
  v57[1] = v21;
  v57[2] = v22;
  v57[3] = v23;
  v57[4] = v24;
  v58 = v26;
  v59 = 256;
  v60 = 0x4049000000000000;
  v61 = 0;
  v62 = v30;
  v63 = v31;
  *v64 = v32;
  *&v64[15] = *&v42[47];
  v65 = v27;
  v66 = 0;
  v67 = v28;
  v68 = v29;

  sub_24E60169C(&v51, &v40, &qword_27F248F78, &qword_24FA0D4F0);
  sub_24E601704(v57, &qword_27F248F78, &qword_24FA0D4F0);
}

uint64_t sub_24F5AA2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a1;
  v67 = a3;
  v5 = sub_24F924368();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_24F927418();
  v57 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F927538();
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24F927148();
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v12 = sub_24F925108();
  v13 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v15 = *(*(a2 + 24) + 8);
  v68 = v12;
  v69 = v13;
  v16 = v12;
  v44 = v12;
  v70 = WitnessTable;
  v71 = v15;
  v17 = WitnessTable;
  v18 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v52 = &v42 - v19;
  sub_24F9254C8();
  v20 = sub_24F924038();
  v54 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v51 = &v42 - v21;
  v22 = sub_24F924038();
  v68 = v16;
  v69 = v13;
  v70 = v17;
  v71 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = OpaqueTypeConformance2;
  v24 = swift_getWitnessTable();
  v76 = OpaqueTypeConformance2;
  v77 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_24E6A4C1C();
  v48 = v26;
  v27 = sub_24EB67FB4();
  v74 = v25;
  v75 = v27;
  v43 = v25;
  v49 = v22;
  v47 = swift_getWitnessTable();
  v68 = v20;
  v69 = &type metadata for GameOverlayViewPredicate;
  v70 = v22;
  v71 = v25;
  v72 = v26;
  v73 = v47;
  v45 = MEMORY[0x277CE0E68];
  v28 = swift_getOpaqueTypeMetadata2();
  v46 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v42 = &v42 - v32;
  sub_24F9273F8();
  sub_24F927448();
  (*(v57 + 8))(v8, v63);
  v33 = v55;
  sub_24F927138();
  (*(v59 + 8))(v10, v62);
  swift_checkMetadataState();
  v34 = v52;
  sub_24F926248();
  (*(v58 + 8))(v33, v61);
  v35 = v60;
  sub_24F924358();
  v36 = v51;
  v37 = OpaqueTypeMetadata2;
  sub_24F926278();
  (*(v65 + 8))(v35, v66);
  (*(v56 + 8))(v34, v37);
  v38 = v43;
  View.tapToDismiss(enabled:)(0, v20);
  (*(v54 + 8))(v36, v20);
  v68 = v20;
  v69 = &type metadata for GameOverlayViewPredicate;
  v70 = v49;
  v71 = v38;
  v72 = v48;
  v73 = v47;
  swift_getOpaqueTypeConformance2();
  v39 = v42;
  sub_24E7896B8();
  v40 = *(v46 + 8);
  v40(v30, v28);
  sub_24E7896B8();
  return (v40)(v39, v28);
}

uint64_t sub_24F5AAA8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001FLL && 0x800000024FA76DA0 == a2;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA76DC0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA76DE0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA76E00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA76E20 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA76E40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E656964617267 && a2 == 0xEF65736143657355 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E656964617267 && a2 == 0xEF7974696361704FLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_24F5AAD40()
{
  result = qword_27F248D08;
  if (!qword_27F248D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248D00, &qword_24FA0D258);
    sub_24F5AADCC();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D08);
  }

  return result;
}

unint64_t sub_24F5AADCC()
{
  result = qword_27F248D10;
  if (!qword_27F248D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248D18, &qword_24FA0D260);
    sub_24E602068(&qword_27F248D20, &qword_27F248D28, &qword_24FA0D268, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D10);
  }

  return result;
}

unint64_t sub_24F5AAE84()
{
  result = qword_27F248D30;
  if (!qword_27F248D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248CF8, &qword_24FA0D250);
    sub_24F5AAF3C();
    sub_24E602068(&qword_27F248D78, &qword_27F248D80, &qword_24FA0D298, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D30);
  }

  return result;
}

unint64_t sub_24F5AAF3C()
{
  result = qword_27F248D38;
  if (!qword_27F248D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248D40, &qword_24FA0D270);
    sub_24F5AAFF4();
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48, &qword_24F9570D0, &unk_24FA0D350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D38);
  }

  return result;
}

unint64_t sub_24F5AAFF4()
{
  result = qword_27F248D48;
  if (!qword_27F248D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248D50, &qword_24FA0D278);
    sub_24F5AB080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D48);
  }

  return result;
}

unint64_t sub_24F5AB080()
{
  result = qword_27F248D58;
  if (!qword_27F248D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248D60, &qword_24FA0D280);
    sub_24E602068(&qword_27F248D68, &qword_27F248D70, &unk_24FA0D288, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D58);
  }

  return result;
}

uint64_t sub_24F5AB138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F5AB190()
{
  result = qword_27F248D98;
  if (!qword_27F248D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D98);
  }

  return result;
}

unint64_t sub_24F5AB1E4()
{
  result = qword_27F248DA0[0];
  if (!qword_27F248DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F248DA0);
  }

  return result;
}

void sub_24F5AB238(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_24F5A6574(319, &qword_27F21C940, type metadata accessor for GradientBackground);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F5AB2E4(int *a1, unsigned int a2, uint64_t a3)
{
  v40 = *(a3 + 16);
  v5 = *(v40 - 8);
  v6 = *(v5 + 84);
  v39 = sub_24F928388();
  v7 = *(v39 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = v9 - 1;
  v11 = *(sub_24F9289E8() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 - 1;
  if (v15 - 1 <= v6)
  {
    v17 = v6;
  }

  else
  {
    v17 = v15 - 1;
  }

  v18 = *(v11 + 80);
  v19 = *(v7 + 64);
  v20 = *(v11 + 64);
  if (v13)
  {
    v21 = 11;
  }

  else
  {
    v21 = 12;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(v7 + 80) & 0xF8 | 7;
  v23 = v18 | v22;
  v24 = (v18 | v22) + *(v5 + 64);
  v25 = v19 + 7;
  v26 = ((((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v27 = v26 + v18;
  if (v17 >= a2)
  {
    goto LABEL_38;
  }

  v28 = (v24 & ~v23) + ((v21 + v20 + ((v27 + ((v26 + v22) & ~v22)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v28 & 0xFFFFFFF8;
  if ((v28 & 0xFFFFFFF8) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = a2 - v17 + 1;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v31 <= 1)
  {
    if (!v31)
    {
      goto LABEL_38;
    }

    v32 = *(a1 + v28);
    if (!v32)
    {
      goto LABEL_38;
    }

LABEL_35:
    v33 = v32 - 1;
    if (v20)
    {
      v33 = 0;
      v34 = *a1;
    }

    else
    {
      v34 = 0;
    }

    return v17 + (v34 | v33) + 1;
  }

  if (v31 == 2)
  {
    v32 = *(a1 + v28);
    if (v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v32 = *(a1 + v28);
    if (v32)
    {
      goto LABEL_35;
    }
  }

LABEL_38:
  if (v6 < v16)
  {
    v35 = (a1 + v24) & ~v23;
    if (v10 >= v14)
    {
      if (v8 < 0x7FFFFFFE)
      {
        if (*((v25 + v35) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
        {
          LODWORD(v36) = -1;
        }

        else
        {
          v36 = *((v25 + v35) & 0xFFFFFFFFFFFFFFF8);
        }

        if ((v36 + 1) < 2)
        {
          return 0;
        }
      }

      else
      {
        LODWORD(v36) = (*(v7 + 48))(v35, v8, v39, v20);
      }
    }

    else
    {
      if (v13 < 2)
      {
        return 0;
      }

      LODWORD(v36) = (*(v12 + 48))((v27 + ((v35 + v22 + v26) & ~v22)) & ~v18);
    }

    if (v36 >= 2)
    {
      result = (v36 - 2);
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  v37 = *(v5 + 48);

  return v37(a1, v6, v40);
}

void sub_24F5AB64C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v57 = *(a4 + 16);
  v6 = *(v57 - 8);
  v56 = v6;
  v7 = *(v6 + 84);
  v54 = sub_24F928388();
  v8 = *(v54 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v55 = v10;
  v11 = v10 - 1;
  v12 = 0;
  v13 = *(sub_24F9289E8() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17 - 1;
  if (v17 - 1 <= v7)
  {
    v19 = v7;
  }

  else
  {
    v19 = v17 - 1;
  }

  v20 = *(v8 + 80) & 0xF8 | 7;
  v21 = *(v13 + 80);
  v23 = (v21 | v20) + *(v6 + 64);
  v24 = *(v8 + 64) + 7;
  v25 = (((((v24 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v26 = (v25 + v21 + ((v25 + v20) & ~v20)) & ~v21;
  v27 = *(v13 + 64);
  if (!v15)
  {
    ++v27;
  }

  v28 = v26 + v27;
  v29 = (v23 & ~(v21 | v20)) + ((v26 + v27 + 11) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 < a3)
  {
    if ((v23 & ~(v21 | *(v8 + 80) & 0xF8 | 7)) + ((v26 + v27 + 11) & 0xFFFFFFF8) == -16)
    {
      v30 = a3 - v19 + 1;
    }

    else
    {
      v30 = 2;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v12 = v31;
    }

    else
    {
      v12 = 0;
    }
  }

  v32 = a2;
  if (a2 > v19)
  {
    if ((v23 & ~(v21 | *(v8 + 80) & 0xF8 | 7)) + ((v26 + v27 + 11) & 0xFFFFFFF8) == -16)
    {
      v33 = a2 - v19;
    }

    else
    {
      v33 = 1;
    }

    if ((v23 & ~(v21 | *(v8 + 80) & 0xF8 | 7)) + ((v26 + v27 + 11) & 0xFFFFFFF8) != -16)
    {
      v34 = ~v19 + a2;
      bzero(a1, v29);
      *a1 = v34;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v29) = v33;
      }

      else
      {
        *(a1 + v29) = v33;
      }
    }

    else if (v12)
    {
      *(a1 + v29) = v33;
    }

    return;
  }

  v35 = a1;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *(a1 + v29) = 0;
  }

  else if (v12)
  {
    *(a1 + v29) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v7 >= v18)
  {
    v39 = v57;
    v40 = *(v56 + 56);
    v41 = a2;
    v42 = v7;
LABEL_50:

    v40(v35, v41, v42, v39);
    return;
  }

  v22 = v21 | v20;
  v36 = ((a1 + v23) & ~(v21 | v20));
  if (v18 < v32)
  {
    if (((v28 + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      return;
    }

    v37 = v32 - v17;
    v38 = ((a1 + v23) & ~v22);
    v25 = ((v28 + 11) & 0xFFFFFFF8) + 8;
    goto LABEL_48;
  }

  v43 = v32 - v17;
  if (v32 >= v17)
  {
    if (((v28 + 11) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      bzero(v36, ((v28 + 11) & 0xFFFFFFF8) + 8);
      *v36 = v43;
    }
  }

  else
  {
    if (v11 < v16)
    {
      v44 = ((v25 + v21 + ((v36 + v20 + v25) & ~v20)) & ~v21);
      v45 = v32 - v16;
      if (v32 >= v16)
      {
        if (v27 <= 3)
        {
          v50 = ~(-1 << (8 * v27));
        }

        else
        {
          v50 = -1;
        }

        if (v27)
        {
          v51 = v50 & v45;
          if (v27 <= 3)
          {
            v52 = v27;
          }

          else
          {
            v52 = 4;
          }

          bzero(v44, v27);
          if (v52 > 2)
          {
            if (v52 == 3)
            {
              *v44 = v51;
              v44[2] = BYTE2(v51);
            }

            else
            {
              *v44 = v51;
            }
          }

          else if (v52 == 1)
          {
            *v44 = v51;
          }

          else
          {
            *v44 = v51;
          }
        }
      }

      else
      {
        v46 = *(v14 + 56);

        v46(v44, v32 + 2);
      }

      return;
    }

    v47 = v32 >= v11;
    v48 = v32 - v11;
    if (!v47)
    {
      v49 = v32 + 2;
      if (v49 > v55)
      {
        if ((((((v24 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
        {
          return;
        }

        v37 = v32 + 1 - v55;
        v38 = ((a1 + v23) & ~v22);
LABEL_48:
        bzero(v38, v25);
        *v36 = v37;
        return;
      }

      if (v9 <= 0x7FFFFFFD)
      {
        v53 = ((v36 + v24) & 0xFFFFFFFFFFFFFFF8);
        if (v32 >= 0x7FFFFFFD)
        {
          *v53 = 0;
          *v53 = v32 - 2147483645;
        }

        else
        {
          *v53 = v49;
        }

        return;
      }

      v40 = *(v8 + 56);
      v35 = ((a1 + v23) & ~v22);
      v41 = v32 + 2;
      v42 = v9;
      v39 = v54;
      goto LABEL_50;
    }

    if ((((((v24 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      bzero(v36, v25);
      *v36 = v48;
    }
  }
}

unint64_t sub_24F5ABB3C()
{
  result = qword_27F248E28;
  if (!qword_27F248E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248E30, &qword_24FA0D348);
    sub_24F5AAD40();
    sub_24F5AAE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248E28);
  }

  return result;
}

unint64_t sub_24F5ABC24()
{
  result = qword_27F248E40;
  if (!qword_27F248E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248E38, &unk_24FA0D3A8);
    sub_24F5ABCA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248E40);
  }

  return result;
}

unint64_t sub_24F5ABCA8()
{
  result = qword_27F248E48;
  if (!qword_27F248E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248E50, &qword_24FA0D3B8);
    sub_24E63D150();
    sub_24E602068(&qword_27F248E58, &qword_27F248E60, &unk_24FA0D3C0, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248E48);
  }

  return result;
}

uint64_t sub_24F5ABD78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GradientBackground(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5ABDDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5ABE3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F5ABEE0(unint64_t *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 48) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_24F5AC048(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_24F5AC234(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F5AC2A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_24F5AC3E4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_24F5AC604(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for ComponentBackgroundModifierWithShape(255, *a1, v5, a4);
  swift_getWitnessTable();
  sub_24F925108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2186A8, &qword_24FA0D3A0);
  sub_24F924038();
  sub_24F9236B8();
  sub_24F924038();
  sub_24F9250E8();
  sub_24F924038();
  sub_24F9254C8();
  sub_24F924038();
  type metadata accessor for FrostedGradientView(255, v4, v5, v6);
  sub_24F924E38();
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248E38, &unk_24FA0D3A8);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214CB8, &unk_24F93E7C0);
  sub_24F924E38();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F5ABC24();
  swift_getWitnessTable();
  sub_24E63D098();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F927598();
  sub_24E6A4C1C();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F2186A0, &qword_27F2186A8, &qword_24FA0D3A0, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24F5ACB4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GlassBackgroundModifierWithShape(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_24F925108();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F9254C8();
  sub_24F924038();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E6A4C1C();
  sub_24EB67FB4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F5ACD34(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F5ACE84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for MixedMediaItemView(uint64_t a1)
{
  result = qword_27F248F90;
  if (!qword_27F248F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5AD00C(uint64_t a1)
{
  sub_24E684184(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
  if (v1 <= 0x3F)
  {
    sub_24E684184(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F5AD128()
{
  result = qword_27F248FA0;
  if (!qword_27F248FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248FA0);
  }

  return result;
}

uint64_t sub_24F5AD17C@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MixedMediaItemView(0);
  sub_24E60169C(v1 + *(v10 + 32), v9, &qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24F5AD384@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MixedMediaItemView(0);
  sub_24E60169C(v1 + *(v10 + 36), v9, &qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_24F5AD590()
{
  result = qword_27F248FA8;
  if (!qword_27F248FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248FA8);
  }

  return result;
}

unint64_t sub_24F5AD5E8()
{
  result = qword_27F248FB0;
  if (!qword_27F248FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248FB0);
  }

  return result;
}

uint64_t sub_24F5AD658()
{
  v1 = sub_24F923E98();
  v2 = *(v1 - 8);
  v72 = v1;
  v73 = v2;
  MEMORY[0x28223BE20](v1);
  v71 = (&v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_24F923F78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v70 - v9;
  v11 = v0[17];
  v12 = v0[16];
  v13 = v0[18];
  sub_24F5AD384((&v70 - v9));
  (*(v5 + 104))(v7, *MEMORY[0x277CDFA90], v4);
  v14 = sub_24F923F68();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  if (v11)
  {
    if (v11 == 1)
    {
      if (v12 <= 1)
      {
        if (v12)
        {
          if (v13)
          {
            if (v14)
            {
              return 63;
            }

            v48 = v71;
            sub_24F5AD17C(v71);
            v49 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
            (*(v73 + 8))(v48, v72);
            v19 = (v49 & 1) == 0;
            v20 = 62;
            v21 = 64;
          }

          else
          {
            if (v14)
            {
              return 46;
            }

            v52 = v71;
            sub_24F5AD17C(v71);
            v53 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
            (*(v73 + 8))(v52, v72);
            v19 = (v53 & 1) == 0;
            v20 = 45;
            v21 = 47;
          }
        }

        else if (v13)
        {
          if (v14)
          {
            return 57;
          }

          v46 = v71;
          sub_24F5AD17C(v71);
          v47 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          (*(v73 + 8))(v46, v72);
          v19 = (v47 & 1) == 0;
          v20 = 56;
          v21 = 58;
        }

        else
        {
          if (v14)
          {
            return 38;
          }

          v50 = v71;
          sub_24F5AD17C(v71);
          v51 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          (*(v73 + 8))(v50, v72);
          v19 = (v51 & 1) == 0;
          v20 = 37;
          v21 = 39;
        }
      }

      else if (v12 == 2)
      {
        if (v13)
        {
          if (v14)
          {
            return 66;
          }

          v30 = v71;
          sub_24F5AD17C(v71);
          v31 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          (*(v73 + 8))(v30, v72);
          v19 = (v31 & 1) == 0;
          v20 = 65;
          v21 = 67;
        }

        else
        {
          if (v14)
          {
            return 50;
          }

          v32 = v71;
          sub_24F5AD17C(v71);
          v33 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          (*(v73 + 8))(v32, v72);
          v19 = (v33 & 1) == 0;
          v20 = 49;
          v21 = 51;
        }
      }

      else if (v12 == 3)
      {
        if (v13)
        {
          if (v14)
          {
            return 69;
          }

          v38 = v71;
          sub_24F5AD17C(v71);
          v39 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          (*(v73 + 8))(v38, v72);
          v19 = (v39 & 1) == 0;
          v20 = 68;
          v21 = 70;
        }

        else
        {
          if (v14)
          {
            return 54;
          }

          v42 = v71;
          sub_24F5AD17C(v71);
          v43 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          (*(v73 + 8))(v42, v72);
          v19 = (v43 & 1) == 0;
          v20 = 53;
          v21 = 55;
        }
      }

      else if (v13)
      {
        if (v14)
        {
          return 60;
        }

        v40 = v71;
        sub_24F5AD17C(v71);
        v41 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        (*(v73 + 8))(v40, v72);
        v19 = (v41 & 1) == 0;
        v20 = 59;
        v21 = 61;
      }

      else
      {
        if (v14)
        {
          return 42;
        }

        v44 = v71;
        sub_24F5AD17C(v71);
        v45 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        (*(v73 + 8))(v44, v72);
        v19 = (v45 & 1) == 0;
        v20 = 41;
        v21 = 43;
      }
    }

    else if (v12 <= 1)
    {
      if (v12)
      {
        if (v14)
        {
          return 78;
        }

        v28 = v71;
        sub_24F5AD17C(v71);
        v29 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        (*(v73 + 8))(v28, v72);
        v19 = (v29 & 1) == 0;
        v20 = 77;
        v21 = 79;
      }

      else
      {
        if (v14)
        {
          return 72;
        }

        v26 = v71;
        sub_24F5AD17C(v71);
        v27 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        (*(v73 + 8))(v26, v72);
        v19 = (v27 & 1) == 0;
        v20 = 71;
        v21 = 73;
      }
    }

    else if (v12 == 2)
    {
      if (v14)
      {
        return 81;
      }

      v17 = v71;
      sub_24F5AD17C(v71);
      v18 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v17, v72);
      v19 = (v18 & 1) == 0;
      v20 = 80;
      v21 = 82;
    }

    else if (v12 == 3)
    {
      if (v14)
      {
        return 84;
      }

      v22 = v71;
      sub_24F5AD17C(v71);
      v23 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v22, v72);
      v19 = (v23 & 1) == 0;
      v20 = 83;
      v21 = 85;
    }

    else
    {
      if (v14)
      {
        return 75;
      }

      v24 = v71;
      sub_24F5AD17C(v71);
      v25 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v24, v72);
      v19 = (v25 & 1) == 0;
      v20 = 74;
      v21 = 76;
    }
  }

  else if (v12 <= 1)
  {
    if (v12)
    {
      if (v13)
      {
        if (v14)
        {
          return 28;
        }

        v64 = v71;
        sub_24F5AD17C(v71);
        v65 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        (*(v73 + 8))(v64, v72);
        v19 = (v65 & 1) == 0;
        v20 = 27;
        v21 = 29;
      }

      else
      {
        if (v14)
        {
          return 11;
        }

        v68 = v71;
        sub_24F5AD17C(v71);
        v69 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        (*(v73 + 8))(v68, v72);
        v19 = (v69 & 1) == 0;
        v20 = 10;
        v21 = 12;
      }
    }

    else if (v13)
    {
      if (v14)
      {
        return 22;
      }

      v62 = v71;
      sub_24F5AD17C(v71);
      v63 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v62, v72);
      v19 = (v63 & 1) == 0;
      v20 = 21;
      v21 = 23;
    }

    else
    {
      if (v14)
      {
        return 3;
      }

      v66 = v71;
      sub_24F5AD17C(v71);
      v67 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v66, v72);
      v19 = (v67 & 1) == 0;
      v20 = 2;
      v21 = 4;
    }
  }

  else if (v12 == 2)
  {
    if (v13)
    {
      if (v14)
      {
        return 31;
      }

      v34 = v71;
      sub_24F5AD17C(v71);
      v35 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v34, v72);
      v19 = (v35 & 1) == 0;
      v20 = 30;
      v21 = 32;
    }

    else
    {
      if (v14)
      {
        return 15;
      }

      v36 = v71;
      sub_24F5AD17C(v71);
      v37 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v36, v72);
      v19 = (v37 & 1) == 0;
      v20 = 14;
      v21 = 16;
    }
  }

  else if (v12 == 3)
  {
    if (v13)
    {
      if (v14)
      {
        return 34;
      }

      v54 = v71;
      sub_24F5AD17C(v71);
      v55 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v54, v72);
      v19 = (v55 & 1) == 0;
      v20 = 33;
      v21 = 35;
    }

    else
    {
      if (v14)
      {
        return 19;
      }

      v58 = v71;
      sub_24F5AD17C(v71);
      v59 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v58, v72);
      v19 = (v59 & 1) == 0;
      v20 = 18;
      v21 = 20;
    }
  }

  else if (v13)
  {
    if (v14)
    {
      return 25;
    }

    v56 = v71;
    sub_24F5AD17C(v71);
    v57 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    (*(v73 + 8))(v56, v72);
    v19 = (v57 & 1) == 0;
    v20 = 24;
    v21 = 26;
  }

  else
  {
    if (v14)
    {
      return 7;
    }

    v60 = v71;
    sub_24F5AD17C(v71);
    v61 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    (*(v73 + 8))(v60, v72);
    v19 = (v61 & 1) == 0;
    v20 = 6;
    v21 = 8;
  }

  if (v19)
  {
    return v20;
  }

  else
  {
    return v21;
  }
}

uint64_t sub_24F5AE018@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MixedMediaItem.ContentType(0);
  v14 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F5AD658();
  v7 = *(v1 + 8);
  do
  {
    if (*(v7 + 16))
    {
      v8 = v6;
      v9 = sub_24E76DCB8(v6);
      LOBYTE(v6) = v8;
      if (v10)
      {
        sub_24F5B0894(*(v7 + 56) + *(v14 + 72) * v9, v5, type metadata accessor for MixedMediaItem.ContentType);
        sub_24F5B082C(v5, a1, type metadata accessor for MixedMediaItem.ContentType);
        return (*(v14 + 56))(a1, 0, 1, v3);
      }
    }

    v6 = sub_24E974328(v6);
  }

  while (v6 != 86);
  v12 = *(v14 + 56);

  return v12(a1, 1, 1, v3);
}

uint64_t sub_24F5AE1AC@<X0>(uint64_t a1@<X8>)
{
  result = sub_24F5AD658();
  v4 = *v1;
  do
  {
    if (*(v4 + 16))
    {
      v5 = result;
      v6 = sub_24E76DCB8(result);
      result = v5;
      if (v7)
      {
        v8 = *(v4 + 56) + 72 * v6;
        v9 = *v8;
        v10 = *(v8 + 16);
        v11 = *(v8 + 32);
        v12 = *(v8 + 48);
        v13 = *(v8 + 64);
        goto LABEL_7;
      }
    }

    result = sub_24E974328(result);
  }

  while (result != 86);
  v9 = 0uLL;
  v13 = 5;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
LABEL_7:
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 64) = v13;
  return result;
}

uint64_t sub_24F5AE248@<X0>(uint64_t a1@<X8>)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FB8, &qword_24FA0D6E0);
  MEMORY[0x28223BE20](v19);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FC0, &qword_24FA0D6E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FC8, &qword_24FA0D6F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for MixedMediaItem.ContentType(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F5AE018(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F248FC8, &qword_24FA0D6F0);
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  else
  {
    sub_24F5B082C(v11, v15, type metadata accessor for MixedMediaItem.ContentType);
    v17 = sub_24F5AE5D8(v15, v1);
    v18 = &v18;
    MEMORY[0x28223BE20](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FD0, &qword_24FA0D6F8);
    sub_24F5B00C4();
    sub_24F5B0370();
    sub_24F5B03C4();
    sub_24F926B08();
    sub_24E601704(v4, &qword_27F248FB8, &qword_24FA0D6E0);
    (*(v6 + 32))(a1, v8, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return sub_24F5B08FC(v15, type metadata accessor for MixedMediaItem.ContentType);
  }
}

uint64_t sub_24F5AE5D8(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v52 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249040, &unk_24FA0D730);
  MEMORY[0x28223BE20](v48);
  v51 = (&v44 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218618, &unk_24F949060);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v44 - v4;
  v49 = type metadata accessor for GSKVideoView(0);
  MEMORY[0x28223BE20](v49);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v44 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249018, &qword_24FA0D720);
  MEMORY[0x28223BE20](v53);
  v50 = &v44 - v9;
  v10 = type metadata accessor for GSKVideo(0);
  MEMORY[0x28223BE20](v10);
  v45 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249048, &qword_24FA0D740);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = sub_24F9289E8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MixedMediaItem.ContentType(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F5B0894(v52, v23, type metadata accessor for MixedMediaItem.ContentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v16;
    v52 = v14;
    sub_24F5B082C(v23, v55, type metadata accessor for GSKVideo);
    v24 = *(v54 + 16);
    if (v24 == 3)
    {
      sub_24F5AE1AC(v58);
      sub_24F5AEEA0(v58, *MEMORY[0x277CEE240], &v56);
      v25 = v57;
      v26 = v51;
      *v51 = v56;
      *(v26 + 16) = v25;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FF8, &qword_24FA0D708);
      sub_24F5B0C64(&qword_27F2141D8, type metadata accessor for GSKVideoView, &unk_24F949084);
      sub_24F5B01D4();
      v27 = v50;
      sub_24F924E28();
    }

    else
    {
      v31 = v45;
      sub_24F5B0894(v55, v45, type metadata accessor for GSKVideo);
      v32 = type metadata accessor for VideoConfiguration(0);
      v33 = v46;
      (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
      if (v24)
      {
        v34 = 0.5;
      }

      else
      {
        v34 = 0.3;
      }

      if (v24)
      {
        v35 = 0.75;
      }

      else
      {
        v35 = 0.5;
      }

      sub_24F5AE1AC(v58);
      v36 = sub_24F9238D8();
      v37 = v49;
      v38 = &v6[*(v49 + 48)];
      type metadata accessor for GSKVideoPlaybackCoordinator(0);
      sub_24F5B0C64(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator, &unk_24F95FAB8);
      *v38 = sub_24F9243D8();
      v38[1] = v39;
      sub_24F5B082C(v31, v6, type metadata accessor for GSKVideo);
      sub_24E6009C8(v33, &v6[v37[5]], &qword_27F218618, &unk_24F949060);
      v6[v37[9]] = 1;
      *&v6[v37[10]] = v36;
      v6[v37[11]] = 0;
      *&v6[v37[6]] = v35;
      *&v6[v37[7]] = v34;
      v40 = &v6[v37[8]];
      v41 = v58[3];
      *(v40 + 2) = v58[2];
      *(v40 + 3) = v41;
      *(v40 + 32) = v59;
      v42 = v58[1];
      *v40 = v58[0];
      *(v40 + 1) = v42;
      v43 = v47;
      sub_24F5B082C(v6, v47, type metadata accessor for GSKVideoView);
      sub_24F5B0894(v43, v51, type metadata accessor for GSKVideoView);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FF8, &qword_24FA0D708);
      sub_24F5B0C64(&qword_27F2141D8, type metadata accessor for GSKVideoView, &unk_24F949084);
      sub_24F5B01D4();
      v27 = v50;
      sub_24F924E28();
      sub_24F5B08FC(v43, type metadata accessor for GSKVideoView);
    }

    sub_24E60169C(v27, v44, &qword_27F249018, &qword_24FA0D720);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FF8, &qword_24FA0D708);
    sub_24F5B01D4();
    sub_24F5B02B4();
    sub_24F924E28();
    sub_24E601704(v27, &qword_27F249018, &qword_24FA0D720);
    return sub_24F5B08FC(v55, type metadata accessor for GSKVideo);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128, &qword_24F94BDF0);
    (*(v18 + 32))(v20, v23, v17);
    sub_24F5AE1AC(v58);
    v28 = sub_24F92B098();

    sub_24F5AEEA0(v58, v28, &v56);

    v29 = v57;
    *v16 = v56;
    v16[16] = v29;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FF8, &qword_24FA0D708);
    sub_24F5B01D4();
    sub_24F5B02B4();
    sub_24F924E28();
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_24F5AEEA0@<X0>(__int128 *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v39 = a2;
  v40 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 32);
  if (v16 == 5)
  {
    v17 = sub_24F922348();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    (*(v13 + 16))(&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v12);
    sub_24E6009C8(v11, v8, &qword_27F214148, &qword_24F93C520);
    v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (*(v38 + 80) + v19 + 8) & ~*(v38 + 80);
    v21 = swift_allocObject();
    (*(v13 + 32))(v21 + v18, v15, v12);
    v22 = v39;
    *(v21 + v19) = v39;
    sub_24E6009C8(v8, v21 + v20, &qword_27F214148, &qword_24F93C520);
    *(v21 + v20 + v7) = 1;
    *&v44 = sub_24E623C20;
    *(&v44 + 1) = v21;
    v45 = 1;
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249008, &unk_24FA0D710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0, &qword_24F93C5B0);
    v24 = MEMORY[0x277CDF7D8];
    sub_24E602068(&qword_27F249000, &qword_27F249008, &unk_24FA0D710, MEMORY[0x277CDF7D8]);
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, v24);
    result = sub_24F924E28();
    v26 = v46;
    v27 = v47;
  }

  else
  {
    v28 = a1[1];
    v46 = *a1;
    v47 = v28;
    v29 = a1[3];
    v48 = a1[2];
    v49 = v29;
    (*(v13 + 16))(&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v12);
    v30 = (*(v13 + 80) + 82) & ~*(v13 + 80);
    v31 = swift_allocObject();
    v32 = v47;
    *(v31 + 16) = v46;
    *(v31 + 32) = v32;
    v33 = v49;
    *(v31 + 48) = v48;
    *(v31 + 64) = v33;
    *(v31 + 80) = v16;
    (*(v13 + 32))(v31 + v30, &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    v34 = v39;
    *(v31 + ((v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;
    v41 = sub_24F5B0BB4;
    v42 = v31;
    v43 = 0;
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249008, &unk_24FA0D710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0, &qword_24F93C5B0);
    v36 = MEMORY[0x277CDF7D8];
    sub_24E602068(&qword_27F249000, &qword_27F249008, &unk_24FA0D710, MEMORY[0x277CDF7D8]);
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, v36);
    result = sub_24F924E28();
    v26 = v44;
    v27 = v45;
  }

  v37 = v40;
  *v40 = v26;
  *(v37 + 16) = v27;
  return result;
}

uint64_t sub_24F5AF35C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F927618();
  v8 = v7;
  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FD0, &qword_24FA0D6F8) + 36);
  sub_24F5AF404(a2);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249038, &qword_24FA0D728) + 36));
  *v10 = v6;
  v10[1] = v8;
  return sub_24E60169C(a1, a3, &qword_27F248FB8, &qword_24FA0D6E0);
}

uint64_t sub_24F5AF404(_BYTE *a1)
{
  sub_24F5AE1AC(v29);
  v1 = v30;
  if (v30 == 5)
  {
    *&v31 = 0;
    *(&v31 + 1) = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001CLL, 0x800000024FA76E60);
    sub_24F92CA38();
    MEMORY[0x253050C20](0x61746E6569726F0ALL, 0xEE00203A6E6F6974);
    sub_24F92CA38();
    MEMORY[0x253050C20](0x656D6563616C700ALL, 0xEC000000203A746ELL);
    v2 = sub_24F92CA38();
  }

  else
  {
    v31 = v29[0];
    v32 = v29[1];
    v33 = v29[2];
    sub_24F92C888();
    MEMORY[0x253050C20](0x6953656372756F73, 0xEC000000203A657ALL);
    type metadata accessor for CGSize(0);
    sub_24F92CA38();
    MEMORY[0x253050C20](0x6E41656D6172660ALL, 0xED00003A726F6863);
    v3 = v1 >> 8;
    if (v1 >> 8 <= 3)
    {
      v12 = 0xE300000000000000;
      v13 = 0xE600000000000000;
      v14 = 0x6D6F74746F62;
      if (v3 != 2)
      {
        v14 = 0x676E696C69617274;
        v13 = 0xE800000000000000;
      }

      v15 = 0x676E696461656CLL;
      if (v3)
      {
        v12 = 0xE700000000000000;
      }

      else
      {
        v15 = 7368564;
      }

      if (v1 >> 8 <= 1)
      {
        v10 = v15;
      }

      else
      {
        v10 = v14;
      }

      if (v1 >> 8 <= 1)
      {
        v11 = v12;
      }

      else
      {
        v11 = v13;
      }
    }

    else
    {
      v4 = 0xED0000676E696461;
      v5 = 0x654C6D6F74746F62;
      v6 = 0xEE00676E696C6961;
      v7 = 0x72546D6F74746F62;
      if (v3 != 7)
      {
        v7 = 0x7265746E6563;
        v6 = 0xE600000000000000;
      }

      if (v3 != 6)
      {
        v5 = v7;
        v4 = v6;
      }

      v8 = 0xEA0000000000676ELL;
      v9 = 0x696461654C706F74;
      if (v3 != 4)
      {
        v9 = 0x6C69617254706F74;
        v8 = 0xEB00000000676E69;
      }

      if (v1 >> 8 <= 5)
      {
        v10 = v9;
      }

      else
      {
        v10 = v5;
      }

      if (v1 >> 8 <= 5)
      {
        v11 = v8;
      }

      else
      {
        v11 = v4;
      }
    }

    MEMORY[0x253050C20](v10, v11);

    MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA76E80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFA8, &qword_24F958530);
    v16 = sub_24F92B188();
    MEMORY[0x253050C20](v16);

    MEMORY[0x253050C20](0xD000000000000013, 0x800000024FA76EA0);
    v17 = sub_24F92B188();
    MEMORY[0x253050C20](v17);

    MEMORY[0x253050C20](0x3A74657366666F0ALL, 0xED0000203A782820);
    v18 = sub_24F92BA38();
    MEMORY[0x253050C20](v18);

    MEMORY[0x253050C20](0x203A79202CLL, 0xE500000000000000);
    v19 = sub_24F92BA38();
    MEMORY[0x253050C20](v19);

    MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA76EC0);
    v20 = 0xE300000000000000;
    v21 = 0xE700000000000000;
    v22 = 0x676E696461656CLL;
    v23 = 0xE800000000000000;
    v24 = 0x676E696C69617274;
    if (v1 != 3)
    {
      v24 = 1819047278;
      v23 = 0xE400000000000000;
    }

    if (v1 != 2)
    {
      v22 = v24;
      v21 = v23;
    }

    v25 = 0x6D6F74746F62;
    if (v1)
    {
      v20 = 0xE600000000000000;
    }

    else
    {
      v25 = 7368564;
    }

    if (v1 <= 1u)
    {
      v26 = v25;
    }

    else
    {
      v26 = v22;
    }

    if (v1 <= 1u)
    {
      v27 = v20;
    }

    else
    {
      v27 = v21;
    }

    MEMORY[0x253050C20](v26, v27);

    MEMORY[0x253050C20](0x726F6674616C700ALL, 0xEB00000000203A6DLL);
    sub_24F92CA38();
    MEMORY[0x253050C20](0x61746E6569726F0ALL, 0xEE00203A6E6F6974);
    sub_24F92CA38();
    MEMORY[0x253050C20](0x656D6563616C700ALL, 0xEC000000203A746ELL);
    v2 = sub_24F92CA38();
  }

  MEMORY[0x28223BE20](v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A28, &unk_24F9770A0);
  sub_24E602068(&qword_27F228258, &qword_27F225A28, &unk_24F9770A0, MEMORY[0x277D7EB00]);
  sub_24F926198();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_24F5AFAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v41 = sub_24F91F6B8();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v16 - 8);
  v42 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  v21 = sub_24F9232F8();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_24F928A98();
  v22 = type metadata accessor for CopyTextAction(0);
  v23 = swift_allocObject();
  v24 = (v23 + OBJC_IVAR____TtC12GameStoreKit14CopyTextAction_text);
  *v24 = a1;
  v24[1] = a2;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  (*(v10 + 16))(v12, v15, v9);
  v25 = sub_24F929608();
  v26 = v8;
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  v27 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  sub_24E60169C(&v52, &v46, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {

    v28 = v39;
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v38 = v9;
    v37 = v20;
    v30 = v12;
    v32 = v31;
    (*(v40 + 8))(v28, v41);
    v44 = v29;
    v45 = v32;
    v12 = v30;
    v20 = v37;
    v9 = v38;
    sub_24F92C7F8();
    sub_24E601704(&v46, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&v52, &qword_27F235830, &qword_24F93B8C0);
  (*(v10 + 8))(v15, v9);
  v33 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v34 = v50;
  *v33 = v49;
  *(v33 + 16) = v34;
  *(v33 + 32) = v51;
  sub_24E6009C8(v26, v23 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *(v23 + 16) = xmmword_24FA0D500;
  *(v23 + 32) = 0;
  *(v23 + 40) = 0;
  (*(v10 + 32))(v23 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v12, v9);
  *(&v53 + 1) = v22;
  v54 = sub_24F5B0C64(&qword_27F230400, type metadata accessor for CopyTextAction, &protocol conformance descriptor for Action);
  *&v52 = v23;
  sub_24E60169C(v20, v42, &unk_27F254FA0, &unk_24F945290);
  sub_24E60169C(&v52, &v49, qword_27F21B590, &unk_24F93BE30);
  v35 = swift_allocObject();
  *(v35 + 16) = 2037411651;
  *(v35 + 24) = 0xE400000000000000;
  sub_24F921788();
  sub_24E601704(v20, &unk_27F254FA0, &unk_24F945290);
  return sub_24E601704(&v52, qword_27F21B590, &unk_24F93BE30);
}

unint64_t sub_24F5B00C4()
{
  result = qword_27F248FD8;
  if (!qword_27F248FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248FB8, &qword_24FA0D6E0);
    sub_24F5B0148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248FD8);
  }

  return result;
}

unint64_t sub_24F5B0148()
{
  result = qword_27F248FE0;
  if (!qword_27F248FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248FE8, &qword_24FA0D700);
    sub_24F5B01D4();
    sub_24F5B02B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248FE0);
  }

  return result;
}

unint64_t sub_24F5B01D4()
{
  result = qword_27F248FF0;
  if (!qword_27F248FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248FF8, &qword_24FA0D708);
    v1 = MEMORY[0x277CDF7D8];
    sub_24E602068(&qword_27F249000, &qword_27F249008, &unk_24FA0D710, MEMORY[0x277CDF7D8]);
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248FF0);
  }

  return result;
}

unint64_t sub_24F5B02B4()
{
  result = qword_27F249010;
  if (!qword_27F249010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249018, &qword_24FA0D720);
    sub_24F5B0C64(&qword_27F2141D8, type metadata accessor for GSKVideoView, &unk_24F949084);
    sub_24F5B01D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249010);
  }

  return result;
}

unint64_t sub_24F5B0370()
{
  result = qword_27F249020;
  if (!qword_27F249020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249020);
  }

  return result;
}

unint64_t sub_24F5B03C4()
{
  result = qword_27F249028;
  if (!qword_27F249028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248FD0, &qword_24FA0D6F8);
    sub_24F5B00C4();
    sub_24E602068(&qword_27F249030, &qword_27F249038, &qword_24FA0D728, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249028);
  }

  return result;
}

double sub_24F5B0484@<D0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v4 = sub_24F9289E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249050, &qword_24FA0D748);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  sub_24F923998();
  sub_24E97280C(v12, v13);
  sub_24F923998();
  v14 = *(a1 + 56);
  v16 = v15 * *(a1 + 48);
  sub_24F923998();
  v18 = v14 * v17;
  sub_24F9289C8();
  LOBYTE(v27) = *(a1 + 64);
  sub_24F5B0C64(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
  sub_24F5B0CAC();
  sub_24F925ED8();
  (*(v5 + 8))(v7, v4);
  v19 = &v11[*(v9 + 44)];
  *v19 = v16;
  v19[1] = v18;
  sub_24F923998();
  sub_24F923998();
  v20 = *(a1 + 65);
  if (v20 <= 3)
  {
    if (*(a1 + 65) > 1u)
    {
      v21 = v26;
      if (v20 == 2)
      {
        sub_24F927608();
      }

      else
      {
        sub_24F927638();
      }
    }

    else
    {
      v21 = v26;
      if (*(a1 + 65))
      {
        sub_24F927628();
      }

      else
      {
        sub_24F9275F8();
      }
    }
  }

  else if (*(a1 + 65) <= 5u)
  {
    v21 = v26;
    if (v20 == 4)
    {
      sub_24F9275A8();
    }

    else
    {
      sub_24F9275B8();
    }
  }

  else
  {
    v21 = v26;
    if (v20 == 6)
    {
      sub_24F9275C8();
    }

    else if (v20 == 7)
    {
      sub_24F9275D8();
    }

    else
    {
      sub_24F927618();
    }
  }

  sub_24F9238C8();
  sub_24F5B0D00(v11, v21);
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249060, &qword_24FA0D750) + 36));
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  result = *&v29;
  v22[2] = v29;
  return result;
}

uint64_t sub_24F5B0788@<X0>(uint64_t a2@<X8>)
{
  sub_24E600AEC();

  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_24F5B07F4()
{

  return swift_deallocObject();
}

uint64_t sub_24F5B082C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5B0894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5B08FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5B095C()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24F5B0B18()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 82) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_24F5B0BB4@<D0>(uint64_t a1@<X8>)
{
  sub_24F9289E8();

  return sub_24F5B0484(v1 + 16, a1);
}

uint64_t sub_24F5B0C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F5B0CAC()
{
  result = qword_27F249058;
  if (!qword_27F249058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249058);
  }

  return result;
}

uint64_t sub_24F5B0D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249050, &qword_24FA0D748);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F5B0D74()
{
  result = qword_27F249068;
  if (!qword_27F249068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F249070, &qword_24FA0D758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248FB8, &qword_24FA0D6E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248FD0, &qword_24FA0D6F8);
    sub_24F5B00C4();
    sub_24F5B0370();
    sub_24F5B03C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249068);
  }

  return result;
}

unint64_t sub_24F5B0E98()
{
  result = qword_27F2162F0;
  if (!qword_27F2162F0)
  {
    type metadata accessor for ProgressPerformAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2162F0);
  }

  return result;
}

uint64_t sub_24F5B0EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProgressPerformAction(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v13 = sub_24F92A9E8();
  v14 = sub_24F92B858();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_24F5B1B84(a1, v9);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a3;
  sub_24F5B1D30(v9, v17 + v15);
  *(v17 + v16) = v13;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;

  sub_24F1D3DA4(0, 0, v12, &unk_24FA0D7E0, v17);

  return v13;
}

uint64_t sub_24F5B10F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = sub_24F928AE8();
  v7[24] = v8;
  v7[25] = *(v8 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F5B11C8, 0, 0);
}

uint64_t sub_24F5B11C8()
{
  v1 = *(v0 + 160);
  v2 = v1[1];
  *(v0 + 224) = v2;
  v3 = v1[2];
  *(v0 + 232) = v3;
  v4 = *(v1 + 24);
  *(v0 + 80) = v2;
  *(v0 + 100) = v4;
  *(v0 + 88) = v3;
  *(v0 + 96) = v4;
  *(v0 + 97) = 1;
  v5 = v0 + 97;
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  sub_24F927178();
  v6 = *v1;
  *(v0 + 248) = *v1;
  v7 = *(v6 + 16);
  *(v0 + 256) = v7;
  if (v7)
  {
    *(v0 + 264) = 0;
    if (*(v6 + 16))
    {
      v5 = v0 + 16;
      sub_24E615E00(v6 + 32, v0 + 16);
      if (qword_27F211430 == -1)
      {
LABEL_4:
        v8 = sub_24F9220D8();
        *(v0 + 272) = __swift_project_value_buffer(v8, qword_27F39E8E0);
        v9 = sub_24F9220B8();
        v10 = sub_24F92BD98();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_24E5DD000, v9, v10, "ProgressPerformActionImplementation: Performing subaction...", v11, 2u);
          MEMORY[0x2530542D0](v11, -1, -1);
        }

        v12 = *(v0 + 184);

        v13 = swift_task_alloc();
        *(v0 + 280) = v13;
        v16 = type metadata accessor for ProgressPerformActionImplementation(0, v12, v14, v15);
        WitnessTable = swift_getWitnessTable();
        *v13 = v0;
        v13[1] = sub_24F5B14C0;
        v18 = *(v0 + 208);
        v19 = *(v0 + 176);

        return sub_24F1487B0(v18, v5, v19, v16, WitnessTable);
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  v21 = *(v0 + 232);
  v22 = *(v0 + 100);
  v23 = *(v0 + 216);
  v24 = *(v0 + 200);
  v25 = *(v0 + 192);
  *(v0 + 128) = *(v0 + 224);
  *(v0 + 136) = v21;
  *(v0 + 144) = v22;
  *(v0 + 99) = 0;
  sub_24F927178();
  (*(v24 + 104))(v23, *MEMORY[0x277D21CA8], v25);
  sub_24F92A9C8();
  (*(v24 + 8))(v23, v25);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_24F5B14C0()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_24F5B1910;
  }

  else
  {
    (*(v2[25] + 8))(v2[26], v2[24]);
    v3 = sub_24F5B15EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F5B15EC(uint64_t a1)
{
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "ProgressPerformActionImplementation: Subaction succeeded.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v6 = *(v1 + 256);
  v5 = *(v1 + 264);

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  if (v5 + 1 == v6)
  {
    v7 = *(v1 + 232);
    v8 = *(v1 + 100);
    v9 = *(v1 + 216);
    v10 = *(v1 + 200);
    v11 = *(v1 + 192);
    *(v1 + 128) = *(v1 + 224);
    *(v1 + 136) = v7;
    *(v1 + 144) = v8;
    *(v1 + 99) = 0;
    sub_24F927178();
    (*(v10 + 104))(v9, *MEMORY[0x277D21CA8], v11);
    sub_24F92A9C8();
    (*(v10 + 8))(v9, v11);

    v12 = *(v1 + 8);

    return v12();
  }

  v14 = *(v1 + 264) + 1;
  *(v1 + 264) = v14;
  v15 = *(v1 + 248);
  if (v14 >= *(v15 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_24E615E00(v15 + 40 * v14 + 32, v1 + 16);
  if (qword_27F211430 != -1)
  {
LABEL_15:
    swift_once();
  }

  v16 = sub_24F9220D8();
  *(v1 + 272) = __swift_project_value_buffer(v16, qword_27F39E8E0);
  v17 = sub_24F9220B8();
  v18 = sub_24F92BD98();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24E5DD000, v17, v18, "ProgressPerformActionImplementation: Performing subaction...", v19, 2u);
    MEMORY[0x2530542D0](v19, -1, -1);
  }

  v20 = *(v1 + 184);

  v21 = swift_task_alloc();
  *(v1 + 280) = v21;
  v24 = type metadata accessor for ProgressPerformActionImplementation(0, v20, v22, v23);
  WitnessTable = swift_getWitnessTable();
  *v21 = v1;
  v21[1] = sub_24F5B14C0;
  v26 = *(v1 + 208);
  v27 = *(v1 + 176);

  return sub_24F1487B0(v26, v1 + 16, v27, v24, WitnessTable);
}

uint64_t sub_24F5B1910()
{
  v1 = *(v0 + 288);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v3, v4, "ProgressPerformActionImplementation: Subaction failed, reason: %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 160);

  v11 = *(v10 + 40);
  if (v11)
  {
    v12 = *(v0 + 288);
    v13 = *(v0 + 160);
    v14 = *(v13 + 48);
    v15 = *(v13 + 32);
    *(v0 + 56) = v15;
    *(v0 + 64) = v11;
    *(v0 + 72) = v14;
    *(v0 + 152) = v12;
    v16 = v12;
    sub_24F5B1ED8(v15, v11, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F78, &qword_24F975950);
    sub_24F927178();
  }

  v17 = *(v0 + 232);
  v18 = *(v0 + 100);
  v19 = *(v0 + 216);
  v20 = *(v0 + 224);
  v21 = *(v0 + 200);
  v22 = *(v0 + 192);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 104) = v20;
  *(v0 + 112) = v17;
  *(v0 + 120) = v18;
  *(v0 + 98) = 0;
  sub_24F927178();
  (*(v21 + 104))(v19, *MEMORY[0x277D21CA8], v22);
  sub_24F92A9C8();
  (*(v21 + 8))(v19, v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_24F5B1B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgressPerformAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5B1BE8()
{
  v1 = type metadata accessor for ProgressPerformAction(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  if (*(v0 + v2 + 40))
  {
  }

  v4 = *(v1 + 28);
  v5 = sub_24F928AD8();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_24F5B1D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgressPerformAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5B1D94(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(type metadata accessor for ProgressPerformAction(0) - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24E614970;

  return sub_24F5B10F8(a1, v9, v10, v1 + v7, v11, v12, v5);
}

void sub_24F5B1ED8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v4 = a3;
  }
}

uint64_t GenericPageGridMapper.layout(for:pageGrid:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    v6 = result;
    v7 = *(a2 + 288);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8, &unk_24F9A1D20) + 48);
    *a3 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
    *&a3[v8] = v7;
    v9 = *MEMORY[0x277D7EB58];
    v10 = sub_24F9219E8();
    (*(*(v10 - 8) + 104))(&a3[v8], v9, v10);
    v5 = MEMORY[0x277D7EB20];
    goto LABEL_7;
  }

  v4 = *(a2 + 280);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *a3 = v4;
  v5 = MEMORY[0x277D7EB30];
LABEL_7:
  v11 = *v5;
  v12 = sub_24F9218F8();
  v13 = *(*(v12 - 8) + 104);

  return v13(a3, v11, v12);
}

void ComponentGridLayout.jsRepresentation(in:)(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  if (v2 > 4)
  {
    v10 = 0x476E6769736564;
    v11 = 0x486E6769736564;
    if (v2 != 8)
    {
      v11 = 0x496E6769736564;
    }

    if (v2 != 7)
    {
      v10 = v11;
      v3 = 0xE700000000000000;
    }

    v12 = 0x456E6769736564;
    if (v2 != 5)
    {
      v12 = 0x466E6769736564;
    }

    if (*v1 <= 6u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }

    if (*v1 <= 6u)
    {
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v4 = 0x416E6769736564;
    v5 = 0xE700000000000000;
    v6 = 0x436E6769736564;
    v7 = 0xE700000000000000;
    v8 = 0x446E6769736564;
    if (v2 != 3)
    {
      v8 = 0x44446E6769736564;
      v7 = 0xEC00000065736E65;
    }

    if (v2 != 2)
    {
      v6 = v8;
      v5 = v7;
    }

    if (*v1)
    {
      v4 = 0x426E6769736564;
      v3 = 0xE700000000000000;
    }

    if (*v1 <= 1u)
    {
      v9 = v4;
    }

    else
    {
      v9 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }
  }

  v13 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v13;
  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24F5B22BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Player(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F5B2400(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Player(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for CreateChallengeIntent(uint64_t a1)
{
  result = qword_27F2490F8;
  if (!qword_27F2490F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5B257C(uint64_t a1)
{
  sub_24F5B275C(319, &qword_27F2153E8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24F5B275C(319, &qword_27F2191B8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24F5B275C(319, &qword_27F2182A8, &type metadata for GameActivityDraftPlayerInfo, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24F5B275C(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_24F5B275C(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24F085EDC(319);
            if (v6 <= 0x3F)
            {
              sub_24F085F40(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Player(319);
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

void sub_24F5B275C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t ChallengeScoreboardShelfConstructionIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for ChallengeScoreboardShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F249150;
  if (!qword_27F249150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ChallengeScoreboardShelfConstructionIntent.participants.getter()
{
  type metadata accessor for ChallengeScoreboardShelfConstructionIntent(0);

  return result;
}

double ChallengeScoreboardShelfConstructionIntent.friendIDs.getter()
{
  type metadata accessor for ChallengeScoreboardShelfConstructionIntent(0);

  return result;
}

unint64_t ChallengeScoreboardShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x616C506C61636F6CLL;
  *(inited + 96) = 0xEB00000000726579;
  v7 = type metadata accessor for ChallengeScoreboardShelfConstructionIntent(0);
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24EAE2A74(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F5B3670(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  strcpy((inited + 144), "attemptLimit");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  v10 = v1 + v7[6];
  v11 = *v10;
  v12 = v10[8];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
  v13 = sub_24E658F98();
  *(inited + 160) = v11;
  *(inited + 168) = v12;
  *(inited + 192) = v13;
  strcpy((inited + 200), "participants");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v14 = *(v1 + v7[7]);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90, &unk_24FA0D950);
  v15 = MEMORY[0x277D22590];
  v16 = sub_24F5B2C30(&qword_27F249108, &qword_27F249110, &protocol conformance descriptor for ChallengeDetail.Participant, MEMORY[0x277D22590]);
  *(inited + 216) = v14;
  *(inited + 248) = v16;
  *(inited + 256) = 0x4449646E65697266;
  *(inited + 264) = 0xE900000000000073;
  v17 = *(v1 + v7[8]);
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  *(inited + 304) = sub_24E61B71C(&qword_27F213798, v6, v15);
  *(inited + 272) = v17;

  v18 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v18;
  return result;
}

uint64_t sub_24F5B2C30(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220B90, &unk_24FA0D950);
    sub_24EAE2A74(a2, type metadata accessor for ChallengeDetail.Participant, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F5B2CCC()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x4C74706D65747461;
  v4 = 0x7069636974726170;
  if (v1 != 3)
  {
    v4 = 0x4449646E65697266;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x616C506C61636F6CLL;
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

uint64_t sub_24F5B2D80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F5B3B7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F5B2DA8(uint64_t a1)
{
  v2 = sub_24F5B361C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5B2DE4(uint64_t a1)
{
  v2 = sub_24F5B361C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeScoreboardShelfConstructionIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249118, &qword_24FA0D960);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5B361C();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for ChallengeScoreboardShelfConstructionIntent(0);
    LOBYTE(v12) = 1;
    type metadata accessor for Player(0);
    sub_24EAE2A74(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    LOBYTE(v12) = 2;
    sub_24F92CCE8();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90, &unk_24FA0D950);
    sub_24F5B2C30(&qword_27F249128, &qword_27F249130, &protocol conformance descriptor for ChallengeDetail.Participant, MEMORY[0x277D83948]);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 32));
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E61B71C(&qword_27F2137A0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ChallengeScoreboardShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249138, &qword_24FA0D968);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ChallengeScoreboardShelfConstructionIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5B361C();
  v20 = v7;
  v11 = v22;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v19;
  LOBYTE(v24) = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v22 = v13;
  LOBYTE(v24) = 1;
  sub_24EAE2A74(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v5, v10 + v8[5]);
  LOBYTE(v24) = 2;
  v14 = sub_24F92CC08();
  v15 = v10 + v8[6];
  *v15 = v14;
  v15[8] = v16 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90, &unk_24FA0D950);
  v23 = 3;
  sub_24F5B2C30(&qword_27F249140, &qword_27F249148, &protocol conformance descriptor for ChallengeDetail.Participant, MEMORY[0x277D83978]);
  sub_24F92CC68();
  *(v10 + v8[7]) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  v23 = 4;
  sub_24E61B71C(&qword_27F216420, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_24F92CC68();
  (*(v12 + 8))(v20, v21);
  *(v10 + v8[8]) = v24;
  sub_24F5B3670(v10, v18, type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F5B36D8(v10, type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
}

unint64_t sub_24F5B361C()
{
  result = qword_27F249120;
  if (!qword_27F249120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249120);
  }

  return result;
}

uint64_t sub_24F5B3670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5B36D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5B374C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F5B380C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5B38B0(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24F5B3A14(319, &qword_27F2153E8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24F5B39BC(319);
      if (v3 <= 0x3F)
      {
        sub_24F5B3A14(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F5B39BC(uint64_t a1)
{
  if (!qword_27F249160)
  {
    type metadata accessor for ChallengeDetail.Participant(255);
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F249160);
    }
  }
}

void sub_24F5B3A14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24F5B3A78()
{
  result = qword_27F249168;
  if (!qword_27F249168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249168);
  }

  return result;
}

unint64_t sub_24F5B3AD0()
{
  result = qword_27F249170;
  if (!qword_27F249170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249170);
  }

  return result;
}

unint64_t sub_24F5B3B28()
{
  result = qword_27F249178;
  if (!qword_27F249178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249178);
  }

  return result;
}

uint64_t sub_24F5B3B7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C74706D65747461 && a2 == 0xEC00000074696D69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449646E65697266 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

double sub_24F5B3DA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0, &qword_24F93C240);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = sub_24F9234F8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  v16 = 10.0;
  if (v15 != *MEMORY[0x277CDF418] && v15 != *MEMORY[0x277CDF438])
  {
    v16 = 12.0;
    if (v15 != *MEMORY[0x277CDF440])
    {
      v16 = 20.0;
      if (v15 != *MEMORY[0x277CDF420] && v15 != *MEMORY[0x277CDF410])
      {
        (*(v11 + 8))(v14, v10);
        v16 = 12.0;
      }
    }
  }

  sub_24EF14440(a2, v9);
  v19 = sub_24F923E98();
  v20 = *(v19 - 8);
  v21 = 0.0;
  if ((*(v20 + 48))(v9, 1, v19) != 1)
  {
    sub_24EF14440(v9, v6);
    v22 = (*(v20 + 88))(v6, v19);
    v21 = 2.0;
    if (v22 != *MEMORY[0x277CDF988])
    {
      v21 = 4.0;
      if (v22 != *MEMORY[0x277CDF998])
      {
        v21 = 6.0;
        if (v22 != *MEMORY[0x277CDF9A8])
        {
          v21 = 8.0;
          if (v22 != *MEMORY[0x277CDF9B8])
          {
            v21 = 10.0;
            if (v22 != *MEMORY[0x277CDF9D0])
            {
              (*(v20 + 8))(v6, v19);
              v21 = 0.0;
            }
          }
        }
      }
    }
  }

  sub_24EF144B0(v9);
  return v16 + v21;
}

uint64_t sub_24F5B40D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24F5B4238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F5B4398(uint64_t a1)
{
  sub_24F5B9608(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24ED30F30();
    if (v2 <= 0x3F)
    {
      sub_24F5B9608(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F5B4514@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v27 = a1;
  v31 = a2;
  v30 = sub_24F922348();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24F923E98();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for StoryCardView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_24F5B8D14(v2, &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StoryCardView);
  v17 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v27;
  sub_24F5B8D7C(&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for StoryCardView);

  sub_24F769788(v7);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v19 = v28;
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  (*(v5 + 8))(v7, v29);
  v20 = v30;
  (*(v3 + 32))(v13, v19, v30);
  (*(v3 + 56))(v13, 0, 1, v20);
  sub_24E60169C(v13, v10, &qword_27F214148, &qword_24F93C520);
  v21 = (*(v3 + 48))(v10, 1, v20);
  if (v21 == 1)
  {
    sub_24E601704(v13, &qword_27F214148, &qword_24F93C520);
    result = sub_24E601704(v10, &qword_27F214148, &qword_24F93C520);
    v23 = 0;
  }

  else
  {
    sub_24F9222E8();
    v23 = v24;
    sub_24E601704(v13, &qword_27F214148, &qword_24F93C520);
    result = (*(v3 + 8))(v10, v20);
  }

  v25 = v31;
  *v31 = sub_24F5B8C68;
  *(v25 + 1) = v18;
  *(v25 + 2) = v23;
  *(v25 + 24) = v21 == 1;
  *(v25 + 25) = 1;
  return result;
}

uint64_t sub_24F5B4948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42[1] = a3;
  v43 = a2;
  v48 = a4;
  v7 = sub_24F923F78();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = (v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_24F9234D8();
  v10 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491A0, &qword_24FA0DC80);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = (v42 - v14);
  *v15 = sub_24F9275C8();
  v15[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491A8, &qword_24FA0DC88);
  sub_24F5B4D80(a2, a3, a1, v15 + *(v17 + 44));
  v18 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491B0, &unk_24FA0DC90) + 36);
  v19 = *(sub_24F924258() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_24F924B38();
  v22 = *(*(v21 - 8) + 104);
  v22(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #22.0 }

  *v18 = _Q0;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491B8, &qword_24FA0DCA0) + 36)) = 0x4036000000000000;
  v28 = v15 + *(v13 + 44);
  v29 = type metadata accessor for RoundedRectWithOutsetsModifer(0);
  v22(&v28[v29[6]], v20, v21);
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 4) = 0x4036000000000000;
  v28[v29[7]] = 1;
  v30 = &v28[v29[8]];
  *v30 = 0;
  v30[8] = 1;
  type metadata accessor for StoryCardView(0);
  sub_24F7699B0(v9);
  v31 = *(*(v43 + 16) + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_isMediaDark);
  if (v31 == 2)
  {
    v32 = sub_24E747AC0(*(v43 + qword_27F39A5E8), v9);
    (*(v44 + 8))(v9, v45);
    if (v32 != 2 && (v32 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v33 = MEMORY[0x277CDF3C0];
    goto LABEL_7;
  }

  (*(v44 + 8))(v9, v45);
  if (v31)
  {
    goto LABEL_6;
  }

LABEL_4:
  v33 = MEMORY[0x277CDF3D0];
LABEL_7:
  v35 = v46;
  v34 = v47;
  (*(v10 + 104))(v46, *v33, v47);
  KeyPath = swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491C0, &unk_24FA0DCD8);
  v38 = v48;
  v39 = (v48 + *(v37 + 36));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858, &qword_24F950980);
  (*(v10 + 32))(v39 + *(v40 + 28), v35, v34);
  *v39 = KeyPath;
  return sub_24E6009C8(v15, v38, &qword_27F2491A0, &qword_24FA0DC80);
}

uint64_t sub_24F5B4D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v81 = a3;
  v79 = a4;
  v80 = type metadata accessor for StoryCardView(0);
  v74 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = v6;
  v76 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245900, &qword_24FA001D8);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v65 - v12;
  v13 = type metadata accessor for EditorialStoryCard.Badge(0);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StoryCardView.CardContent(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491C8, &qword_24FA0DCE8);
  MEMORY[0x28223BE20](v72);
  v78 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v71 = &v65 - v20;
  MEMORY[0x28223BE20](v21);
  v77 = &v65 - v22;
  v23 = sub_24F923F78();
  v82 = *(v23 - 8);
  v83 = v23;
  MEMORY[0x28223BE20](v23);
  v70 = (&v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v27 = (&v65 - v26);
  v28 = sub_24F923E98();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(a1 + 16);
  LOBYTE(v30) = *(v32 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions + 5);
  v88 = a2;
  v66 = v32 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions;
  if (v30)
  {
    v69 = 1;
  }

  else
  {
    sub_24F769788(v31);
    v33 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    a2 = v88;
    v69 = v33;
    (*(v29 + 8))(v31, v28);
  }

  sub_24F5B59E4(a1, a2, v121);
  if (*(a1 + 48))
  {
    v73 = 0;
  }

  else
  {
    v73 = *(a1 + 40) != 0;
  }

  v68 = *(v80 + 24);
  sub_24F7699B0(v27);
  v34 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_isMediaDark;
  v35 = *(v32 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_isMediaDark);
  if (v35 == 2)
  {
    v36 = sub_24E747AC0(*(a1 + qword_27F39A5E8), v27);
    v67 = *(v82 + 8);
    v67(v27, v83);
    LOBYTE(v35) = (v36 == 2) | v36;
  }

  else
  {
    v67 = *(v82 + 8);
    v67(v27, v83);
  }

  v37 = (v88 + *(v80 + 20));
  v38 = *v37;
  v39 = v37[1];
  *&v90[0] = v38;
  *(&v90[0] + 1) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  sub_24F926F38();
  v40 = *v89;
  sub_24F923998();
  sub_24EEF51C4(v35 & 1, v102, v40, v41);
  *&v89[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0, &qword_24F95B820);
  sub_24F926F28();
  v80 = *(&v90[0] + 1);
  v81 = *&v90[0];
  *(&v104[3] + 6) = v102[3];
  *(&v104[4] + 6) = v102[4];
  *(&v104[5] + 6) = v103[0];
  *(&v104[5] + 15) = *(v103 + 9);
  *(v104 + 6) = v102[0];
  *(&v104[1] + 6) = v102[1];
  *(&v104[2] + 6) = v102[2];
  v108 = v121[3];
  v107 = v121[2];
  v106 = v121[1];
  v105 = v121[0];
  v112 = v121[7];
  v111 = v121[6];
  v110 = v121[5];
  v109 = v121[4];
  v116 = v121[11];
  v115 = v121[10];
  v114 = v121[9];
  v113 = v121[8];
  *(v119 + 9) = *(v122 + 9);
  v119[0] = v122[0];
  v118 = v121[13];
  v117 = v121[12];
  sub_24F5B8D14(v32 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_badge, v84, type metadata accessor for EditorialStoryCard.Badge);
  sub_24E60169C(v32 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_title, v85, &qword_27F215340, &qword_24F943530);
  v42 = *(a1 + 32);
  sub_24E60169C(v32 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_description, v86, &qword_27F215340, &qword_24F943530);
  v43 = v87;
  if (v42 == 1 && *(v66 + 1) == 1 && *(v66 + 4) == 1)
  {
    v44 = *(a1 + qword_27F39A5D8);
  }

  else
  {
    v44 = 0;
  }

  if (*(a1 + qword_27F39A5D0) == 4)
  {
    v45 = 1;
  }

  else
  {
    sub_24F5B8D14(a1 + qword_27F39A5D0, v43, _s9ViewModelVMa);
    v45 = 0;
  }

  v46 = _s9ViewModelVMa(0);
  (*(*(v46 - 8) + 56))(v43, v45, 1, v46);
  v47 = v70;
  sub_24F7699B0(v70);
  v48 = *(v32 + v34);
  if (v48 == 2)
  {
    v49 = sub_24E747AC0(*(a1 + qword_27F39A5E8), v47);
    v67(v47, v83);
    LOBYTE(v48) = (v49 == 2) | v49;
  }

  else
  {
    v67(v47, v83);
  }

  v50 = v69 & 1;
  sub_24F5B8D7C(v84, v17, type metadata accessor for EditorialStoryCard.Badge);
  sub_24E6009C8(v85, &v17[v15[5]], &qword_27F215340, &qword_24F943530);
  v17[v15[6]] = v42 ^ 1;
  v17[v15[7]] = v42;
  sub_24E6009C8(v86, &v17[v15[8]], &qword_27F215340, &qword_24F943530);
  *&v17[v15[9]] = v44;
  sub_24E6009C8(v87, &v17[v15[10]], &qword_27F245900, &qword_24FA001D8);
  v17[v15[11]] = v48 & 1;
  v51 = v15[12];
  *&v17[v51] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v52 = v76;
  sub_24F5B8D14(v88, v76, type metadata accessor for StoryCardView);
  v53 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v54 = v53 + v75;
  v55 = swift_allocObject();
  sub_24F5B8D7C(v52, v55 + v53, type metadata accessor for StoryCardView);
  LODWORD(v83) = v50;
  *(v55 + v54) = v50;
  v56 = v71;
  sub_24F5B8D7C(v17, v71, type metadata accessor for StoryCardView.CardContent);
  v57 = (v56 + *(v72 + 36));
  *v57 = sub_24E7BC238;
  v57[1] = 0;
  v57[2] = sub_24F5B8F84;
  v57[3] = v55;
  v58 = v77;
  sub_24E6009C8(v56, v77, &qword_27F2491C8, &qword_24FA0DCE8);
  v59 = v78;
  sub_24E60169C(v58, v78, &qword_27F2491C8, &qword_24FA0DCE8);
  v89[12] = v117;
  v89[13] = v118;
  v89[14] = v119[0];
  v89[15] = v119[1];
  v89[8] = v113;
  v89[9] = v114;
  v89[10] = v115;
  v89[11] = v116;
  v89[4] = v109;
  v89[5] = v110;
  v89[6] = v111;
  v89[7] = v112;
  v89[0] = v105;
  v89[1] = v106;
  v89[2] = v107;
  v89[3] = v108;
  LOBYTE(v89[16]) = v50;
  LOBYTE(v50) = v73;
  BYTE1(v89[16]) = v73;
  *(&v89[20] + 2) = v104[4];
  *(&v89[21] + 2) = v104[5];
  *(&v89[22] + 1) = *(&v104[5] + 15);
  *(&v89[16] + 2) = v104[0];
  *(&v89[17] + 2) = v104[1];
  *(&v89[18] + 2) = v104[2];
  *(&v89[19] + 2) = v104[3];
  *(&v89[23] + 1) = *v120;
  DWORD1(v89[23]) = *&v120[3];
  v61 = v80;
  v60 = v81;
  *(&v89[23] + 1) = v81;
  *&v89[24] = v80;
  v62 = v79;
  memcpy(v79, v89, 0x188uLL);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491D0, &qword_24FA0DD20);
  sub_24E60169C(v59, v62 + *(v63 + 48), &qword_27F2491C8, &qword_24FA0DCE8);
  sub_24E60169C(v89, v90, &qword_27F2491D8, &qword_24FA0DD28);
  sub_24E601704(v58, &qword_27F2491C8, &qword_24FA0DCE8);
  sub_24E601704(v59, &qword_27F2491C8, &qword_24FA0DCE8);
  v90[12] = v117;
  v90[13] = v118;
  v90[14] = v119[0];
  v90[15] = v119[1];
  v90[8] = v113;
  v90[9] = v114;
  v90[10] = v115;
  v90[11] = v116;
  v90[4] = v109;
  v90[5] = v110;
  v90[6] = v111;
  v90[7] = v112;
  v90[0] = v105;
  v90[1] = v106;
  v90[2] = v107;
  v90[3] = v108;
  v91 = v83;
  v92 = v50;
  v97 = v104[4];
  *v98 = v104[5];
  *&v98[15] = *(&v104[5] + 15);
  v93 = v104[0];
  v94 = v104[1];
  v95 = v104[2];
  v96 = v104[3];
  *v99 = *v120;
  *&v99[3] = *&v120[3];
  v100 = v60;
  v101 = v61;
  return sub_24E601704(v90, &qword_27F2491D8, &qword_24FA0DD28);
}

uint64_t sub_24F5B59E4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_24F923F78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (v41 - v10);
  v12 = a1[5];
  v45 = a1[6];

  v46 = v12;

  sub_24F923998();
  v14 = v13;
  v16 = v15;
  type metadata accessor for StoryCardView(0);
  sub_24F7699B0(v11);
  v17 = sub_24EE6C7E0(&v75);
  v18 = *(v7 + 8);
  v18(v11, v6, v17);
  type metadata accessor for VideoPlaybackCoordinator(0);
  sub_24F5B89D8(&qword_27F239098, type metadata accessor for VideoPlaybackCoordinator, &unk_24F9AB760);
  v19 = sub_24F9243D8();
  v43 = v20;
  v44 = v19;
  v41[1] = a2;
  v21 = v42;
  sub_24F7699B0(v42);
  (v18)(v21, v6);
  if (*(a1[2] + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
  }

  else
  {
    sub_24F7699B0(v11);
    v25 = sub_24ED15C14();
    v22 = v26;
    v23 = v27;
    v24 = v28;
    (v18)(v11, v6);
  }

  v30 = v45;
  v29 = v46;
  *&v47 = v46;
  *(&v47 + 1) = v45;
  *&v48 = v14;
  *(&v48 + 1) = v16;
  v57 = v83;
  v58 = v84;
  v59 = v85;
  v53 = v79;
  v54 = v80;
  v56 = v82;
  v55 = v81;
  v49 = v75;
  v50 = v76;
  v52 = v78;
  v51 = v77;
  v32 = v43;
  v31 = v44;
  *&v60 = v44;
  *(&v60 + 1) = v43;
  v33 = v84;
  *(a3 + 160) = v83;
  *(a3 + 176) = v33;
  v34 = v54;
  *(a3 + 96) = v53;
  *(a3 + 112) = v34;
  v35 = v56;
  *(a3 + 128) = v55;
  *(a3 + 144) = v35;
  v36 = v50;
  *(a3 + 32) = v49;
  *(a3 + 48) = v36;
  v37 = v52;
  *(a3 + 64) = v51;
  *(a3 + 80) = v37;
  v38 = v48;
  *a3 = v47;
  *(a3 + 16) = v38;
  v39 = v60;
  *(a3 + 192) = v59;
  *(a3 + 208) = v39;
  *(a3 + 224) = v25;
  *(a3 + 232) = v22;
  *(a3 + 240) = v23;
  *(a3 + 248) = v24;
  sub_24F5B9014(&v47, v61);
  sub_24ED1932C(v25);
  sub_24ED1934C(v25);
  v61[0] = v29;
  v61[1] = v30;
  v61[2] = v14;
  v61[3] = v16;
  v70 = v83;
  v71 = v84;
  v72 = v85;
  v66 = v79;
  v67 = v80;
  v69 = v82;
  v68 = v81;
  v62 = v75;
  v63 = v76;
  v65 = v78;
  v64 = v77;
  v73 = v31;
  v74 = v32;
  return sub_24F5B904C(v61);
}

void *sub_24F5B5E30(double *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  type metadata accessor for StoryCardView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  result = sub_24F926F38();
  if (v4 != v6 && (a3 & 1) != 0)
  {
    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24F5B5EDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2492B0, &qword_24FA0DF18);
  MEMORY[0x28223BE20](v1);
  v3 = &v28[-v2];
  v4 = type metadata accessor for ArtworkWithFallbackView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v0;
  v8 = *(v0 + 2);
  v40 = *(v0 + 1);
  v9 = *(v0 + 9);
  v10 = *(v0 + 11);
  v11 = *(v0 + 12);
  v37 = *(v0 + 10);
  v38 = v10;
  v39 = v11;
  v12 = *(v0 + 5);
  v13 = *(v0 + 7);
  v14 = *(v0 + 8);
  v33 = *(v0 + 6);
  v34 = v13;
  v35 = v14;
  v36 = v9;
  v15 = *(v0 + 3);
  v31 = *(v0 + 4);
  v32 = v12;
  v41 = v7;
  v29 = v8;
  v30 = v15;
  v16 = v4[7];
  v17 = *MEMORY[0x277CE1010];
  v18 = sub_24F926E68();
  (*(*(v18 - 8) + 104))(&v6[v16], v17, v18);
  *v6 = v41;
  v19 = v40;
  *(v6 + 8) = v40;
  *(v6 + 24) = v19;
  v20 = &v6[v4[8]];
  *v20 = 1;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  v20[104] = 0;
  v21 = &v6[v4[9]];
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;
  v23 = v34;
  v21[4] = v33;
  v21[5] = v23;
  v24 = v32;
  v21[2] = v31;
  v21[3] = v24;
  v25 = v39;
  v21[9] = v38;
  v21[10] = v25;
  v26 = v37;
  v21[7] = v36;
  v21[8] = v26;
  v21[6] = v35;
  *&v6[v4[10]] = 0;
  v6[v4[11]] = 0;
  sub_24F5B8D14(v6, v3, type metadata accessor for ArtworkWithFallbackView);
  swift_storeEnumTagMultiPayload();
  sub_24E60169C(&v41, v28, &qword_27F2245A8, &qword_24F972010);
  sub_24E60169C(&v29, v28, &qword_27F22E660, &qword_24F9A9120);
  sub_24F5B89D8(&qword_27F22E6B8, type metadata accessor for ArtworkWithFallbackView, &unk_24FA33518);
  sub_24F924E28();
  return sub_24F5B9C50(v6, type metadata accessor for ArtworkWithFallbackView);
}

uint64_t sub_24F5B6358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249218, &qword_24FA0DE80);
  MEMORY[0x28223BE20](v131);
  v132 = (&v110 - v3);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249220, &qword_24FA0DE88);
  MEMORY[0x28223BE20](v110);
  v112 = &v110 - v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249228, &qword_24FA0DE90);
  MEMORY[0x28223BE20](v111);
  v114 = &v110 - v5;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249230, &qword_24FA0DE98);
  MEMORY[0x28223BE20](v113);
  v115 = &v110 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249238, &qword_24FA0DEA0);
  MEMORY[0x28223BE20](v129);
  v116 = &v110 - v7;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249240, &qword_24FA0DEA8);
  v118 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v117 = &v110 - v8;
  v9 = sub_24F923E98();
  v121 = *(v9 - 8);
  v122 = v9;
  MEMORY[0x28223BE20](v9);
  v120 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v110 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245900, &qword_24FA001D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v110 - v14;
  v124 = _s9ViewModelVMa(0);
  v16 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249248, &qword_24FA0DEB0);
  MEMORY[0x28223BE20](v18 - 8);
  v128 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v127 = &v110 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249250, &qword_24FA0DEB8);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v110 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249258, &qword_24FA0DEC0);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v126 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v110 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v110 - v33;
  *v25 = sub_24F924998();
  *(v25 + 1) = 0x4028000000000000;
  v25[16] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249260, &qword_24FA0DEC8);
  sub_24F5B70B4(a1, &v25[*(v35 + 44)]);
  v36 = sub_24F9257F8();
  sub_24F923318();
  v37 = &v25[*(v23 + 44)];
  *v37 = v36;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v25, v31, &qword_27F249250, &qword_24FA0DEB8);
  v42 = *(v27 + 44);
  v43 = a1;
  v44 = &v31[v42];
  v45 = v146;
  v46 = v147;
  *(v44 + 4) = v145;
  *(v44 + 5) = v45;
  *(v44 + 6) = v46;
  v47 = v142;
  *v44 = v141;
  *(v44 + 1) = v47;
  v48 = v144;
  *(v44 + 2) = v143;
  *(v44 + 3) = v48;
  v125 = v34;
  sub_24E6009C8(v31, v34, &qword_27F249258, &qword_24FA0DEC0);
  v49 = type metadata accessor for StoryCardView.CardContent(0);
  sub_24E60169C(a1 + *(v49 + 40), v15, &qword_27F245900, &qword_24FA001D8);
  if ((*(v16 + 48))(v15, 1, v124) == 1)
  {
    sub_24E601704(v15, &qword_27F245900, &qword_24FA001D8);
LABEL_7:
    v73 = v127;
    sub_24F927618();
    sub_24F9238C8();
    v74 = v148;
    v75 = BYTE8(v148);
    v76 = v149;
    v77 = BYTE8(v149);
    v140 = 1;
    v139 = BYTE8(v148);
    v138 = BYTE8(v149);
    v78 = v132;
    *v132 = 0;
    *(v78 + 8) = 1;
    v78[2] = v74;
    *(v78 + 24) = v75;
    v78[4] = v76;
    *(v78 + 40) = v77;
    *(v78 + 3) = v150;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F188, &unk_24F965250);
    v79 = type metadata accessor for StoryCardView.EditorialComponentOverlayViewAccessibilityRepresentation(255);
    v80 = sub_24F5B9890();
    v81 = sub_24F5B89D8(&qword_27F249290, type metadata accessor for StoryCardView.EditorialComponentOverlayViewAccessibilityRepresentation, &unk_24FA0DFC8);
    v134 = v129;
    v135 = v79;
    v136 = v80;
    v137 = v81;
    swift_getOpaqueTypeConformance2();
    sub_24E8533A4();
    sub_24F924E28();
    goto LABEL_10;
  }

  v50 = v123;
  sub_24F5B8D7C(v15, v123, _s9ViewModelVMa);
  v51 = v119;
  sub_24F769788(v119);
  v53 = v120;
  v52 = v121;
  v54 = v122;
  (*(v121 + 104))(v120, *MEMORY[0x277CDF9A8], v122);
  v55 = sub_24F923E88();
  v56 = *(v52 + 8);
  v56(v53, v54);
  v56(v51, v54);
  if ((v55 & 1) == 0)
  {
    sub_24F5B9C50(v50, _s9ViewModelVMa);
    goto LABEL_7;
  }

  v57 = v112;
  sub_24F5B8D14(v50, v112, _s9ViewModelVMa);
  v58 = type metadata accessor for EditorialComponentOverlayView(0);
  v59 = v58[8];
  *(v57 + v59) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  swift_storeEnumTagMultiPayload();
  *(v57 + v58[5]) = 0;
  *(v57 + v58[6]) = 1;
  *(v57 + v58[7]) = 0;
  LOBYTE(v58) = sub_24F925808();
  sub_24F923318();
  v60 = v57 + *(v110 + 36);
  *v60 = v58;
  *(v60 + 8) = v61;
  *(v60 + 16) = v62;
  *(v60 + 24) = v63;
  *(v60 + 32) = v64;
  *(v60 + 40) = 0;
  sub_24F927618();
  sub_24F9242E8();
  v65 = v114;
  sub_24E6009C8(v57, v114, &qword_27F249220, &qword_24FA0DE88);
  v66 = (v65 + *(v111 + 36));
  v67 = v153;
  v66[4] = v152;
  v66[5] = v67;
  v66[6] = v154;
  v68 = v149;
  *v66 = v148;
  v66[1] = v68;
  v69 = v151;
  v66[2] = v150;
  v66[3] = v69;
  v70 = sub_24F927618();
  v72 = v71;
  if (*(v43 + *(v49 + 44)) == 1)
  {
    sub_24F926C88();
  }

  else
  {
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v82 = sub_24F926D08();

  v83 = v115;
  sub_24E6009C8(v65, v115, &qword_27F249228, &qword_24FA0DE90);
  v84 = (v83 + *(v113 + 36));
  *v84 = v82;
  v84[1] = v70;
  v84[2] = v72;
  v85 = sub_24F925818();
  sub_24F923318();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v116;
  v95 = sub_24E6009C8(v83, v116, &qword_27F249230, &qword_24FA0DE98);
  v96 = v129;
  v97 = v94 + *(v129 + 36);
  *v97 = v85;
  *(v97 + 8) = v87;
  *(v97 + 16) = v89;
  *(v97 + 24) = v91;
  *(v97 + 32) = v93;
  *(v97 + 40) = 0;
  MEMORY[0x28223BE20](v95);
  v98 = type metadata accessor for StoryCardView.EditorialComponentOverlayViewAccessibilityRepresentation(0);
  v99 = sub_24F5B9890();
  v100 = sub_24F5B89D8(&qword_27F249290, type metadata accessor for StoryCardView.EditorialComponentOverlayViewAccessibilityRepresentation, &unk_24FA0DFC8);
  v101 = v117;
  sub_24F926818();
  sub_24E601704(v94, &qword_27F249238, &qword_24FA0DEA0);
  v102 = v118;
  v103 = v130;
  (*(v118 + 16))(v132, v101, v130);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F188, &unk_24F965250);
  v134 = v96;
  v135 = v98;
  v136 = v99;
  v137 = v100;
  swift_getOpaqueTypeConformance2();
  sub_24E8533A4();
  v73 = v127;
  sub_24F924E28();
  (*(v102 + 8))(v101, v103);
  sub_24F5B9C50(v123, _s9ViewModelVMa);
LABEL_10:
  v105 = v125;
  v104 = v126;
  sub_24E60169C(v125, v126, &qword_27F249258, &qword_24FA0DEC0);
  v106 = v128;
  sub_24F5B9B1C(v73, v128);
  v107 = v133;
  sub_24E60169C(v104, v133, &qword_27F249258, &qword_24FA0DEC0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249298, &qword_24FA0DED0);
  sub_24F5B9B1C(v106, v107 + *(v108 + 48));
  sub_24F5B9B8C(v73);
  sub_24E601704(v105, &qword_27F249258, &qword_24FA0DEC0);
  sub_24F5B9B8C(v106);
  return sub_24E601704(v104, &qword_27F249258, &qword_24FA0DEC0);
}

uint64_t sub_24F5B70B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226430, &qword_24F979D60);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v36.i8[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2492A0, &qword_24FA0DF08);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = v36.i64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36.i8[-v9];
  v11 = type metadata accessor for StoryCardView.TextStack(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = v36.i64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36.i8[-v15];
  sub_24F5B8D14(a1, v36.i64 - v15, type metadata accessor for EditorialStoryCard.Badge);
  v17 = type metadata accessor for StoryCardView.CardContent(0);
  sub_24E60169C(a1 + v17[5], &v16[v12[7]], &qword_27F215340, &qword_24F943530);
  v18 = *(a1 + v17[6]);
  v19 = *(a1 + v17[7]);
  sub_24E60169C(a1 + v17[8], &v16[v12[10]], &qword_27F215340, &qword_24F943530);
  v16[v12[8]] = v18;
  v16[v12[9]] = v19;
  v20 = *(a1 + v17[9]);
  if (v20)
  {
    v21 = type metadata accessor for SwiftUIArtworkView(0);
    v22 = v21[6];
    v23 = *MEMORY[0x277CE1010];
    v24 = sub_24F926E68();
    (*(*(v24 - 8) + 104))(&v5[v22], v23, v24);
    *v5 = v20;
    v36 = vdupq_n_s64(0x404D000000000000uLL);
    *(v5 + 8) = v36;
    v5[24] = 0;
    v25 = &v5[v21[7]];
    *v25 = 0;
    *(v25 + 1) = 0;
    v25[16] = 1;
    v5[v21[8]] = 2;
    v5[v21[9]] = 0;
    LOBYTE(v21) = *(v20 + 64);
    v46[0] = 0;

    sub_24F926F28();
    v26 = v42[0];
    v27 = v43;
    v44 = 1;
    v28 = v38;
    v29 = &v5[*(v38 + 36)];
    *v29 = v21;
    *(v29 + 1) = v42[0];
    *(v29 + 1) = *(v42 + 3);
    *(v29 + 8) = v36;
    *(v29 + 3) = 0;
    *(v29 + 4) = 0;
    v29[40] = 1;
    *(v29 + 41) = *v46;
    *(v29 + 11) = *&v46[3];
    v29[48] = v26;
    v30 = *v45;
    *(v29 + 13) = *&v45[3];
    *(v29 + 49) = v30;
    *(v29 + 7) = v27;
    sub_24E6009C8(v5, v10, &qword_27F226430, &qword_24F979D60);
    (*(v37 + 56))(v10, 0, 1, v28);
  }

  else
  {
    (*(v37 + 56))(v10, 1, 1, v38);
  }

  v31 = v39;
  sub_24F5B8D14(v16, v39, type metadata accessor for StoryCardView.TextStack);
  v32 = v40;
  sub_24E60169C(v10, v40, &qword_27F2492A0, &qword_24FA0DF08);
  v33 = v41;
  sub_24F5B8D14(v31, v41, type metadata accessor for StoryCardView.TextStack);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2492A8, &qword_24FA0DF10);
  sub_24E60169C(v32, v33 + *(v34 + 48), &qword_27F2492A0, &qword_24FA0DF08);
  sub_24E601704(v10, &qword_27F2492A0, &qword_24FA0DF08);
  sub_24F5B9C50(v16, type metadata accessor for StoryCardView.TextStack);
  sub_24E601704(v32, &qword_27F2492A0, &qword_24FA0DF08);
  return sub_24F5B9C50(v31, type metadata accessor for StoryCardView.TextStack);
}

uint64_t sub_24F5B754C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249210, &qword_24FA0DE78);
  return sub_24F5B6358(v2, a2 + *(v4 + 44));
}

void *sub_24F5B759C@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  sub_24F5B762C(a2, __src);
  sub_24F927628();
  sub_24F9242E8();
  return memcpy(a1, __src, 0x130uLL);
}

uint64_t sub_24F5B762C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v141 = &v127 - v7;
  v8 = sub_24F91F008();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v131 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v142 = &v127 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v127 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v127 - v17;
  v19 = type metadata accessor for EditorialStoryCard.Badge(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F5B8D14(a1, v21, type metadata accessor for EditorialStoryCard.Badge);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  v23 = (*(*(v22 - 8) + 48))(v21, 2, v22);
  v130 = v5;
  if (v23)
  {
    if (v23 == 1)
    {
      v24 = sub_24F927628();
      v26 = v25;
      v27 = sub_24F925828();
      sub_24F923318();
      LOBYTE(v144) = 0;
      *&v152 = 0x4028000000000000;
      *(&v152 + 1) = v24;
      *&v153 = v26;
      BYTE8(v153) = 1;
      LOBYTE(v154) = v27;
      *(&v154 + 1) = v28;
      *&v155[0] = v29;
      *(&v155[0] + 1) = v30;
      *&v155[1] = v31;
      WORD4(v155[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249318, &qword_24FA0E040);
      sub_24F5BA278();
      sub_24F924E28();
      v154 = v158;
      v155[0] = v159[0];
      *(v155 + 10) = *(v159 + 10);
      v152 = v156;
      v153 = v157;
      LOBYTE(v148) = 1;
      BYTE10(v155[1]) = 1;
    }

    else
    {
      LOBYTE(v144) = 0;
      BYTE8(v155[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218528, &qword_24F948B70);
      sub_24E6DC2DC();
      sub_24F924E28();
      v154 = v158;
      v155[0] = v159[0];
      *(v155 + 9) = *(v159 + 9);
      v152 = v156;
      v153 = v157;
      LOBYTE(v148) = 0;
      BYTE10(v155[1]) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249338, &qword_24FA0E058);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249340, &qword_24FA0E060);
    sub_24F5BA3BC();
    sub_24F5BA448();
    sub_24F924E28();
  }

  else
  {
    (*(v9 + 32))(v18, v21, v8);
    (*(v9 + 16))(v15, v18, v8);
    v32 = sub_24F925DF8();
    v34 = v33;
    v36 = v35;
    LOBYTE(v152) = 1;
    sub_24ED1A304();
    v37 = sub_24F925C58();
    v136 = a1;
    v137 = v18;
    v38 = v37;
    v138 = v9;
    v39 = v8;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_24E600B40(v32, v34, v36 & 1);

    KeyPath = swift_getKeyPath();
    v47 = sub_24F925A18();
    v48 = swift_getKeyPath();
    LOBYTE(v156) = v43 & 1;
    LOBYTE(v144) = 0;
    *&v148 = v38;
    *(&v148 + 1) = v41;
    v8 = v39;
    LOBYTE(v149) = v43 & 1;
    *(&v149 + 1) = v152;
    DWORD1(v149) = *(&v152 + 3);
    *(&v149 + 1) = v45;
    *&v150 = KeyPath;
    *(&v150 + 1) = 1;
    LOBYTE(v151[0]) = 0;
    DWORD1(v151[0]) = *(&v160 + 3);
    *(v151 + 1) = v160;
    *(&v151[0] + 1) = v48;
    *&v151[1] = v47;
    v154 = v150;
    v155[0] = v151[0];
    *&v155[1] = v47;
    v152 = v148;
    v153 = v149;
    v143 = 1;
    BYTE8(v155[1]) = 1;
    sub_24E60169C(&v148, &v160, &qword_27F218528, &qword_24F948B70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218528, &qword_24F948B70);
    sub_24E6DC2DC();
    sub_24F924E28();
    v162 = v158;
    *v163 = v159[0];
    *&v163[9] = *(v159 + 9);
    v160 = v156;
    v161 = v157;
    LOBYTE(v144) = 0;
    v163[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249338, &qword_24FA0E058);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249340, &qword_24FA0E060);
    sub_24F5BA3BC();
    sub_24F5BA448();
    a1 = v136;
    sub_24F924E28();
    sub_24E601704(&v148, &qword_27F218528, &qword_24F948B70);
    (*(v138 + 8))(v137, v39);
    v162 = v154;
    *v163 = v155[0];
    v18 = v137;
    v9 = v138;
    *&v163[11] = *(v155 + 11);
    v160 = v152;
    v161 = v153;
  }

  v49 = type metadata accessor for StoryCardView.TextStack(0);
  v50 = v141;
  sub_24E60169C(a1 + v49[5], v141, &qword_27F215340, &qword_24F943530);
  v51 = *(v9 + 48);
  if (v51(v50, 1, v8) == 1)
  {
    sub_24E601704(v50, &qword_27F215340, &qword_24F943530);
    v141 = 0;
    v142 = 0;
    v134 = 0;
    v135 = 0;
    v139 = 0;
    v140 = 0;
  }

  else
  {
    v129 = v51;
    v52 = v142;
    (*(v9 + 32))(v142, v50, v8);
    v138 = v9;
    v53 = *(v9 + 16);
    v132 = v8;
    v53(v18, v52, v8);
    v137 = v18;
    v54 = sub_24F925DF8();
    v56 = v55;
    v58 = v57;
    LOBYTE(v152) = 0;
    sub_24ED1A304();
    v59 = sub_24F925C58();
    v140 = v60;
    v141 = v59;
    v62 = v61;
    sub_24E600B40(v54, v56, v58 & 1);

    v63 = v49[6];
    v136 = a1;
    LODWORD(v63) = *(a1 + v63);
    v128 = v49;
    if (v63 == 1)
    {
      v135 = 3;
      sub_24F925998();
    }

    else
    {
      v135 = 2;
      sub_24F9258F8();
    }

    v64 = v62;
    v66 = v140;
    v65 = v141;
    v67 = sub_24F925C98();
    v69 = v68;
    LODWORD(v139) = v70;
    v72 = v71;

    sub_24E600B40(v65, v66, v64 & 1);

    v73 = v138;
    v8 = v132;
    (*(v138 + 8))(v142, v132);
    v74 = swift_getKeyPath();
    v75 = v139 & 1;
    v142 = v67;
    v134 = v69;
    v76 = v69;
    v9 = v73;
    v139 &= 1u;
    sub_24E5FD138(v67, v76, v75);
    v141 = v72;

    v140 = v74;

    a1 = v136;
    v18 = v137;
    v49 = v128;
    v51 = v129;
  }

  if (*(a1 + v49[7]) == 1)
  {
    v77 = v130;
    sub_24E60169C(a1 + v49[8], v130, &qword_27F215340, &qword_24F943530);
    if (v51(v77, 1, v8) != 1)
    {
      v81 = v131;
      (*(v9 + 32))(v131, v77, v8);
      (*(v9 + 16))(v18, v81, v8);
      v82 = sub_24F925DF8();
      v84 = v83;
      v86 = v85;
      LOBYTE(v152) = 1;
      sub_24ED1A304();
      v87 = sub_24F925C58();
      v89 = v88;
      v132 = v8;
      v91 = v90;
      v137 = v92;
      sub_24E600B40(v82, v84, v86 & 1);

      sub_24F925A18();
      v93 = sub_24F925C98();
      v95 = v94;
      LODWORD(v138) = v96;
      v98 = v97;

      sub_24E600B40(v87, v89, v91 & 1);

      (*(v9 + 8))(v131, v132);
      v99 = swift_getKeyPath();
      v100 = v138 & 1;
      v78 = v93;
      v79 = v95;
      v138 &= 1u;
      sub_24E5FD138(v93, v95, v100);
      v136 = v98;

      v137 = v99;

      v80 = 2;
      goto LABEL_18;
    }

    sub_24E601704(v77, &qword_27F215340, &qword_24F943530);
  }

  v78 = 0;
  v79 = 0;
  v137 = 0;
  v138 = 0;
  v136 = 0;
  v80 = 0;
LABEL_18:
  v146 = v162;
  v147[0] = *v163;
  *(v147 + 11) = *&v163[11];
  v150 = v162;
  v151[0] = *v163;
  *(v151 + 11) = *&v163[11];
  v144 = v160;
  v145 = v161;
  v148 = v160;
  v149 = v161;
  *(v155 + 11) = *&v163[11];
  v154 = v162;
  v155[0] = *v163;
  v152 = v160;
  v153 = v161;
  sub_24E60169C(&v160, &v156, &qword_27F249358, &qword_24FA0E068);
  sub_24E60169C(&v148, &v156, &qword_27F249358, &qword_24FA0E068);
  v101 = v142;
  v102 = v134;
  v103 = v135;
  v104 = v139;
  v105 = v140;
  sub_24ED1A264(v142, v134, v139, v141);
  v132 = v78;
  v106 = v79;
  v107 = v79;
  v108 = v138;
  sub_24ED1A264(v78, v107, v138, v136);
  v109 = v101;
  v110 = v102;
  v111 = v102;
  v112 = v104;
  v113 = v141;
  v114 = v103;
  sub_24ED1A2B4(v109, v110, v112, v141, v105);
  v115 = v78;
  v116 = v108;
  v118 = v136;
  v117 = v137;
  sub_24ED1A2B4(v115, v106, v116, v136, v137);
  sub_24E601704(&v160, &qword_27F249358, &qword_24FA0E068);
  v119 = v155[0];
  v120 = v132;
  v121 = v133;
  *(v133 + 32) = v154;
  *(v121 + 48) = v119;
  *(v121 + 64) = v155[1];
  v122 = v153;
  *v121 = v152;
  *(v121 + 16) = v122;
  v123 = v142;
  *(v121 + 80) = v142;
  *(v121 + 88) = v111;
  v124 = v138;
  LOBYTE(v103) = v139;
  *(v121 + 96) = v139;
  *(v121 + 104) = v113;
  v125 = v140;
  *(v121 + 112) = v140;
  *(v121 + 120) = v114;
  *(v121 + 128) = 0;
  *(v121 + 136) = v120;
  *(v121 + 144) = v106;
  *(v121 + 152) = v124;
  *(v121 + 160) = v118;
  *(v121 + 168) = v117;
  *(v121 + 176) = v80;
  *(v121 + 184) = 0;
  sub_24ED1A2B4(v120, v106, v124, v118, v117);
  sub_24ED1A2B4(v123, v111, v103, v141, v125);
  v158 = v146;
  v159[0] = v147[0];
  *(v159 + 11) = *(v147 + 11);
  v156 = v144;
  v157 = v145;
  return sub_24E601704(&v156, &qword_27F249358, &qword_24FA0E068);
}

void *sub_24F5B8298@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_24F924C98();
  v10 = 0;
  sub_24F5B759C(__src, v2);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_24E60169C(__dst, &v7, &qword_27F249310, &unk_24FA0E030);
  sub_24E601704(v12, &qword_27F249310, &unk_24FA0E030);
  memcpy(&v9[7], __dst, 0x130uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x137uLL);
}

uint64_t sub_24F5B8370@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v35 = type metadata accessor for LockupContentView(0);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35 - 8);
  v32 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2492F8, &qword_24FA0E018);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for EditorialComponentOverlayView(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249300, &qword_24FA0E020);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  sub_24F5B8D14(v2, v13, _s9ViewModelVMa);
  v20 = v11[8];
  *&v13[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  swift_storeEnumTagMultiPayload();
  v13[v11[5]] = 0;
  v21 = 1;
  v13[v11[6]] = 1;
  v13[v11[7]] = 0;
  v22._object = 0x800000024FA76EE0;
  v22._countAndFlagsBits = 0xD000000000000015;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v36 = localizedString(_:comment:)(v22, v23);
  sub_24F5B89D8(&qword_27F249288, type metadata accessor for EditorialComponentOverlayView, &unk_24F9810C0);
  sub_24E600AEC();
  v24 = v10;
  sub_24F926538();

  sub_24F5B9C50(v13, type metadata accessor for EditorialComponentOverlayView);
  if (!*v33)
  {
    v31 = v19;
    v25 = v32;
    if (*(v33 + 8))
    {
      v36._countAndFlagsBits = 0x4044000000000000;
      sub_24E66ED98();

      sub_24F9237C8();
      v36._countAndFlagsBits = 0x404B000000000000;
      sub_24F9237C8();
      v36._countAndFlagsBits = 0x4051800000000000;
      sub_24F9237C8();
      v36._countAndFlagsBits = 0x4055800000000000;
      sub_24F9237C8();
      type metadata accessor for LockupViewModel(0);
      sub_24F5B89D8(&qword_27F2282E0, type metadata accessor for LockupViewModel, &unk_24F997C58);
      *v25 = sub_24F923C28();
      v25[1] = v26;
      sub_24F5B8D7C(v25, v24, type metadata accessor for LockupContentView);
      v21 = 0;
    }

    v19 = v31;
  }

  (*(v3 + 56))(v24, v21, 1, v35);
  sub_24E60169C(v19, v16, &qword_27F249300, &qword_24FA0E020);
  sub_24E60169C(v24, v7, &qword_27F2492F8, &qword_24FA0E018);
  v27 = v34;
  sub_24E60169C(v16, v34, &qword_27F249300, &qword_24FA0E020);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249308, &qword_24FA0E028);
  sub_24E60169C(v7, v27 + *(v28 + 48), &qword_27F2492F8, &qword_24FA0E018);
  sub_24E601704(v24, &qword_27F2492F8, &qword_24FA0E018);
  sub_24E601704(v19, &qword_27F249300, &qword_24FA0E020);
  sub_24E601704(v7, &qword_27F2492F8, &qword_24FA0E018);
  return sub_24E601704(v16, &qword_27F249300, &qword_24FA0E020);
}

uint64_t sub_24F5B88B8(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24F5B8D14(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StoryCardView);
  sub_24F5B89D8(&qword_27F215C68, type metadata accessor for StoryCardView, &unk_24FA0DC0C);
  return sub_24F9218E8();
}

uint64_t sub_24F5B89D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F5B8ACC()
{
  v1 = type metadata accessor for StoryCardView(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923F78();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F5B8C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StoryCardView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_24F5B4948(a1, v6, v7, a2);
}

uint64_t sub_24F5B8D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5B8D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5B8DEC()
{
  v1 = type metadata accessor for StoryCardView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923F78();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

void *sub_24F5B8F84(double *a1)
{
  v3 = *(type metadata accessor for StoryCardView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_24F5B5E30(a1, v4, v5);
}

uint64_t sub_24F5B9090(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EditorialStoryCard.Badge(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[9]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245900, &qword_24FA001D8);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[12];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_24F5B9290(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for EditorialStoryCard.Badge(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9]) = a2;
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245900, &qword_24FA001D8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

void sub_24F5B9470(uint64_t a1)
{
  type metadata accessor for EditorialStoryCard.Badge(319);
  if (v1 <= 0x3F)
  {
    sub_24F5B9608(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24F5B9608(319, &qword_27F22E600, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24F5B9608(319, &qword_27F2458F0, _s9ViewModelVMa, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24F5B9608(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F5B9608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12GameStoreKit36EditorialGradientBackgroundViewModelVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24F5B9684(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24F5B96E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24F5B9780()
{
  result = qword_27F2491F0;
  if (!qword_27F2491F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2491F8, &qword_24FA0DDC8);
    sub_24E602068(&qword_27F249200, &qword_27F249208, qword_24FA0DDD0, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2491F0);
  }

  return result;
}

unint64_t sub_24F5B9890()
{
  result = qword_27F249268;
  if (!qword_27F249268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249238, &qword_24FA0DEA0);
    sub_24F5B991C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249268);
  }

  return result;
}

unint64_t sub_24F5B991C()
{
  result = qword_27F249270;
  if (!qword_27F249270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249230, &qword_24FA0DE98);
    sub_24F5B99D4();
    sub_24E602068(&qword_27F22D5D8, &qword_27F22D5E0, &qword_24F995198, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249270);
  }

  return result;
}

unint64_t sub_24F5B99D4()
{
  result = qword_27F249278;
  if (!qword_27F249278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249228, &qword_24FA0DE90);
    sub_24F5B9A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249278);
  }

  return result;
}

unint64_t sub_24F5B9A60()
{
  result = qword_27F249280;
  if (!qword_27F249280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249220, &qword_24FA0DE88);
    sub_24F5B89D8(&qword_27F249288, type metadata accessor for EditorialComponentOverlayView, &unk_24F9810C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249280);
  }

  return result;
}

uint64_t sub_24F5B9B1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249248, &qword_24FA0DEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5B9B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249248, &qword_24FA0DEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F5B9C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5B9CC4(uint64_t a1, uint64_t a2)
{
  v4 = _s9ViewModelVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F5B9D44(uint64_t a1, uint64_t a2)
{
  v4 = _s9ViewModelVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F5B9DB4(uint64_t a1)
{
  result = _s9ViewModelVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F5B9E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EditorialStoryCard.Badge(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24F5B9F70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EditorialStoryCard.Badge(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F5BA084(uint64_t a1)
{
  type metadata accessor for EditorialStoryCard.Badge(319);
  if (v1 <= 0x3F)
  {
    sub_24F5B9608(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F5BA18C()
{
  result = qword_27F2492E8;
  if (!qword_27F2492E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2492F0, qword_24FA0DF70);
    sub_24F5B89D8(&qword_27F22E6B8, type metadata accessor for ArtworkWithFallbackView, &unk_24FA33518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2492E8);
  }

  return result;
}

unint64_t sub_24F5BA278()
{
  result = qword_27F249320;
  if (!qword_27F249320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249318, &qword_24FA0E040);
    sub_24F5BA304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249320);
  }

  return result;
}

unint64_t sub_24F5BA304()
{
  result = qword_27F249328;
  if (!qword_27F249328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249330, &unk_24FA0E048);
    sub_24EB3D608();
    sub_24E602068(&qword_27F2282B0, &qword_27F2282B8, &qword_24F981230, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249328);
  }

  return result;
}

unint64_t sub_24F5BA3BC()
{
  result = qword_27F249348;
  if (!qword_27F249348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249338, &qword_24FA0E058);
    sub_24E6DC2DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249348);
  }

  return result;
}

unint64_t sub_24F5BA448()
{
  result = qword_27F249350;
  if (!qword_27F249350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249340, &qword_24FA0E060);
    sub_24F5BA278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249350);
  }

  return result;
}

uint64_t FriendRequestsPageIntent.background.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FriendRequestsPageIntent(0) + 20);

  return sub_24E7D14D8(v3, a1);
}

uint64_t type metadata accessor for FriendRequestsPageIntent(uint64_t a1)
{
  result = qword_27F249398;
  if (!qword_27F249398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t FriendRequestsPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24EE00104(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F5BB064(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 0x756F72676B636162;
  *(inited + 96) = 0xEA0000000000646ELL;
  v6 = *(type metadata accessor for FriendRequestsPageIntent(0) + 20);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 136) = sub_24E7D17FC();
  v7 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7D14D8(v2 + v6, v7);
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_24F5BA7FC(uint64_t a1)
{
  v2 = sub_24F5BB010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5BA838(uint64_t a1)
{
  v2 = sub_24F5BB010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FriendRequestsPageIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249380, &qword_24FA0E100);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BB010();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24EE00104(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for FriendRequestsPageIntent(0);
    v8[14] = 1;
    type metadata accessor for Page.Background(0);
    sub_24EE00104(&qword_27F21D920, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FriendRequestsPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v20 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v20);
  v21 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249390, &qword_24FA0E108);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for FriendRequestsPageIntent(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BB010();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v14 = v13;
  v25 = 0;
  sub_24EE00104(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v15 = v21;
  v16 = v23;
  sub_24F92CC68();
  sub_24E61C0A8(v15, v14);
  type metadata accessor for Page.Background(0);
  v24 = 1;
  sub_24EE00104(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  sub_24F92CC18();
  (*(v22 + 8))(v10, v16);
  sub_24E7DF71C(v6, v14 + *(v11 + 20));
  sub_24F5BB064(v14, v19, type metadata accessor for FriendRequestsPageIntent);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_24F5BB0CC(v14, type metadata accessor for FriendRequestsPageIntent);
}

unint64_t sub_24F5BAE64@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24EE00104(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F5BB064(v4, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 0x756F72676B636162;
  *(inited + 96) = 0xEA0000000000646ELL;
  v8 = *(a1 + 20);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 136) = sub_24E7D17FC();
  v9 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7D14D8(v4 + v8, v9);
  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v10;
  return result;
}

unint64_t sub_24F5BB010()
{
  result = qword_27F249388;
  if (!qword_27F249388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249388);
  }

  return result;
}

uint64_t sub_24F5BB064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5BB0CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5BB140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F5BB250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Player(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24F5BB358(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24E7D231C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F5BB3F0()
{
  result = qword_27F2493A8;
  if (!qword_27F2493A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493A8);
  }

  return result;
}

unint64_t sub_24F5BB448()
{
  result = qword_27F2493B0;
  if (!qword_27F2493B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493B0);
  }

  return result;
}

unint64_t sub_24F5BB4A0()
{
  result = qword_27F2493B8;
  if (!qword_27F2493B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493B8);
  }

  return result;
}

uint64_t InvitePlayersToChallengeAction.challengeID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InvitePlayersToChallengeAction.gameName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InvitePlayersToChallengeAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvitePlayersToChallengeAction(0) + 32);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for InvitePlayersToChallengeAction(uint64_t a1)
{
  result = qword_27F2493D8;
  if (!qword_27F2493D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F5BB62C()
{
  v1 = *v0;
  v2 = 0x676E656C6C616863;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x654D6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E656D6167;
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

uint64_t sub_24F5BB6E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F5BC374(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F5BB708(uint64_t a1)
{
  v2 = sub_24F5BBA34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5BB744(uint64_t a1)
{
  v2 = sub_24F5BBA34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvitePlayersToChallengeAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2493C0, &unk_24FA0E320);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BBA34();
  sub_24F92D128();
  LOBYTE(v11) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_24F92CD08();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E61B71C(&qword_27F2137A0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24F92CD48();
    v11 = *(v3 + 40);
    HIBYTE(v10) = 3;
    sub_24F92CD48();
    type metadata accessor for InvitePlayersToChallengeAction(0);
    LOBYTE(v11) = 4;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F5BBA34()
{
  result = qword_27F2493C8;
  if (!qword_27F2493C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493C8);
  }

  return result;
}

uint64_t InvitePlayersToChallengeAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2493D0, &qword_24FA0E330);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = v16 - v4;
  v6 = type metadata accessor for InvitePlayersToChallengeAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BBA34();
  v20 = v5;
  v9 = v22;
  sub_24F92D108();
  if (v9)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v6;
  v10 = v19;
  LOBYTE(v24) = 0;
  v11 = v8;
  *v8 = sub_24F92CC28();
  v8[1] = v12;
  v16[4] = v12;
  LOBYTE(v24) = 1;
  v8[2] = sub_24F92CC28();
  v8[3] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  v23 = 2;
  v16[1] = sub_24E61B71C(&qword_27F216420, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v16[2] = v14;
  v16[3] = 0;
  sub_24F92CC68();
  *(v11 + 32) = v24;
  v23 = 3;
  sub_24F92CC68();
  *(v11 + 40) = v24;
  LOBYTE(v24) = 4;
  sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
  sub_24F92CC68();
  (*(v10 + 8))(v20, v21);
  (*(v17 + 32))(v11 + *(v22 + 32), 0, v3);
  sub_24F5BBF10(v11, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F5BBF74(v11);
}

uint64_t sub_24F5BBF10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvitePlayersToChallengeAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5BBF74(uint64_t a1)
{
  v2 = type metadata accessor for InvitePlayersToChallengeAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F5BC014(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F5BC0D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5BC178(uint64_t a1)
{
  sub_24F5BC20C();
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F5BC20C()
{
  if (!qword_27F218170)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F218170);
    }
  }
}

unint64_t sub_24F5BC270()
{
  result = qword_27F2493E8;
  if (!qword_27F2493E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493E8);
  }

  return result;
}

unint64_t sub_24F5BC2C8()
{
  result = qword_27F2493F0;
  if (!qword_27F2493F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493F0);
  }

  return result;
}

unint64_t sub_24F5BC320()
{
  result = qword_27F2493F8;
  if (!qword_27F2493F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493F8);
  }

  return result;
}

uint64_t sub_24F5BC374(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA747F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA6F180 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t ChallengesSuggestedGamesDataIntent.playerID.getter()
{
  v1 = *v0;

  return v1;
}

char *sub_24F5BC5B8(char *a1, char *a2, __int128 *a3, int a4)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = a3[1];
  v45 = *a3;
  v46 = v16;
  v17 = sub_24F91F648();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = sub_24F55DFB0(a1, a2, &v45);
  sub_24E601704(v15, &unk_27F22EC30, &qword_24F939880);
  v43 = a1;
  v44 = a2;
  v19 = *(v18 + 16);
  if (v19)
  {
    v39 = v10;
    v38 = (v11 + 48);
    v35 = (v11 + 32);
    v34 = (v11 + 8);

    v20 = v18 + (v19 << 7) - 96;
    v21 = v18;
    v36 = v18;
    while (v19 <= *(v21 + 16))
    {
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      v25 = *(v20 + 80);
      v24 = *(v20 + 96);
      v26 = *(v20 + 64);
      v50 = *(v20 + 112);
      v48 = v25;
      v49 = v24;
      v47 = v26;
      v27 = *(v20 + 48);
      v45 = *(v20 + 32);
      v46 = v27;
      if (v40)
      {

        sub_24F5BCAA4(&v45, &v41);
        sub_24F6F518C(&v45, v9);
        sub_24F5BCB00(&v45);
        v28 = v39;
        if ((*v38)(v9, 1, v39) == 1)
        {
          sub_24E601704(v9, &qword_27F228530, &unk_24F93C6E0);
        }

        else
        {
          v29 = v9;
          v30 = v37;
          (*v35)(v37, v29, v28);
          v41 = 5974570;
          v42 = 0xE300000000000000;
          MEMORY[0x253050C20](v23, v22);

          MEMORY[0x253050C20](10333, 0xE200000000000000);
          v31 = sub_24F91F398();
          MEMORY[0x253050C20](v31);

          MEMORY[0x253050C20](41, 0xE100000000000000);
          MEMORY[0x253050C20](9142498, 0xA300000000000000);
          MEMORY[0x253050C20](10794, 0xE200000000000000);
          v23 = v41;
          v22 = v42;
          v32 = v30;
          v9 = v29;
          v21 = v36;
          (*v34)(v32, v28);
        }

        v41 = v23;
        v42 = v22;
        sub_24F5BCA50();
        sub_24F92B1D8();
      }

      else
      {
        v41 = v23;
        v42 = v22;
        sub_24F5BCA50();
        sub_24F92B1D8();
      }

      v20 -= 128;
      if (!--v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_12:

    return v43;
  }

  else
  {

    return a1;
  }
}

unint64_t sub_24F5BCA50()
{
  result = qword_27F249400;
  if (!qword_27F249400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249400);
  }

  return result;
}

uint64_t sub_24F5BCB68(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = sub_24F9289E8();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_24F5BCD48(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = sub_24F9289E8();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for FriendsArePlayingCard(uint64_t a1)
{
  result = qword_27F249408;
  if (!qword_27F249408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5BCF60(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24F254198(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            sub_24F9289E8();
            if (v6 <= 0x3F)
            {
              sub_24F254198(319, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_24F3F6AFC();
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

uint64_t sub_24F5BD104@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_24F9289E8();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v39);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249428, &qword_24FA0E678);
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v36 - v12;
  v14 = type metadata accessor for FriendsArePlayingCard(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 40) = 0u;
  *&v52 = 0;
  v50 = 0u;
  v51 = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 9) = 0;
  v46 = v16 + 40;
  sub_24E61DA68(&v50, (v16 + 40), qword_27F21B590, &unk_24F93BE30);
  v47 = v14;
  v17 = *(v14 + 24);
  v18 = sub_24F92A6D8();
  v19 = *(*(v18 - 8) + 56);
  v49 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24F5BDDD4();
  v21 = v45;
  sub_24F92D108();
  if (v21)
  {
    v24 = v46;
    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_24E601704(v24, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v16[v49], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v45 = v11;
    v36 = v8;
    v22 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v53 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v23 = v13;
    sub_24F92CC68();
    v25 = v51;
    *v16 = v50;
    *(v16 + 1) = v25;
    *(v16 + 4) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v53 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v26 = v22;
    sub_24E61DA68(&v50, v46, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v50) = 2;
    sub_24E65CAA0();
    v27 = v45;
    sub_24F92CC68();
    sub_24E61DA68(v27, &v16[v49], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v50) = 3;
    sub_24F5BDE28(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v28 = v36;
    sub_24F92CC18();
    v29 = v47;
    sub_24E6009C8(v28, &v16[v47[7]], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v50) = 4;
    sub_24F5BDE28(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v30 = v40;
    sub_24F92CC68();
    sub_24E706B90(v30, &v16[v29[8]]);
    LOBYTE(v50) = 5;
    sub_24F5BDE28(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v31 = v38;
    v32 = v43;
    sub_24F92CC68();
    (*(v42 + 32))(&v16[v29[9]], v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590, &qword_24F9D7B90);
    v53 = 6;
    sub_24E6DCCC8();
    sub_24F92CC68();
    *&v16[v29[10]] = v50;
    v53 = 7;
    sub_24E6E8474();
    sub_24F92CC18();
    (*(v26 + 8))(v23, v44);
    v33 = &v16[v29[11]];
    v34 = v51;
    *v33 = v50;
    *(v33 + 1) = v34;
    *(v33 + 2) = v52;
    sub_24F5BDE70(v16, v37, type metadata accessor for FriendsArePlayingCard);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return sub_24F5BDED8(v16, type metadata accessor for FriendsArePlayingCard);
  }
}

uint64_t sub_24F5BDA40()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x7641726579616C70;
    if (v1 != 6)
    {
      v5 = 0xD000000000000023;
    }

    v6 = 0xD000000000000014;
    if (v1 != 4)
    {
      v6 = 0x6E6F6349656D6167;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 25705;
    v3 = 0x4D747865746E6F63;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0x6575676573;
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
}

uint64_t sub_24F5BDB58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F5BE050(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F5BDB80(uint64_t a1)
{
  v2 = sub_24F5BDDD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5BDBBC(uint64_t a1)
{
  v2 = sub_24F5BDDD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F5BDC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F5BDD08(uint64_t a1)
{
  *(a1 + 8) = sub_24F5BDE28(&qword_27F21ABA8, type metadata accessor for FriendsArePlayingCard, &unk_24FA0E634);
  result = sub_24F5BDE28(&qword_27F249418, type metadata accessor for FriendsArePlayingCard, &unk_24FA0E5F0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F5BDDD4()
{
  result = qword_27F249430;
  if (!qword_27F249430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249430);
  }

  return result;
}

uint64_t sub_24F5BDE28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F5BDE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5BDED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F5BDF4C()
{
  result = qword_27F249438;
  if (!qword_27F249438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249438);
  }

  return result;
}

unint64_t sub_24F5BDFA4()
{
  result = qword_27F249440;
  if (!qword_27F249440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249440);
  }

  return result;
}

unint64_t sub_24F5BDFFC()
{
  result = qword_27F249448;
  if (!qword_27F249448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249448);
  }

  return result;
}

uint64_t sub_24F5BE050(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xEF6B726F77747241 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7641726579616C70 && a2 == 0xED00007372617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA45EC0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t AddFriendsPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E70D960(v2, boxed_opaque_existential_1);
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24F5BE45C(uint64_t a1)
{
  v2 = sub_24F5BEA34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5BE498(uint64_t a1)
{
  v2 = sub_24F5BEA34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AddFriendsPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249450, &qword_24FA0E7C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BEA34();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t AddFriendsPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249460, &qword_24FA0E7C8);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AddFriendsPageIntent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BEA34();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24F5BEAD4(v13, v11, type metadata accessor for Player);
    sub_24F5BEAD4(v11, v12, type metadata accessor for AddFriendsPageIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F5BE8D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249450, &qword_24FA0E7C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BEA34();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F5BEA34()
{
  result = qword_27F249458;
  if (!qword_27F249458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249458);
  }

  return result;
}

uint64_t type metadata accessor for AddFriendsPageIntent(uint64_t a1)
{
  result = qword_27F249468;
  if (!qword_27F249468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F5BEAD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5BEB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F5BEBD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F5BEC54()
{
  result = qword_27F249478;
  if (!qword_27F249478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249478);
  }

  return result;
}

unint64_t sub_24F5BECAC()
{
  result = qword_27F249480;
  if (!qword_27F249480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249480);
  }

  return result;
}

unint64_t sub_24F5BED04()
{
  result = qword_27F249488;
  if (!qword_27F249488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249488);
  }

  return result;
}

uint64_t sub_24F5BED6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Game(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Leaderboard(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for Player(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_24F5BEEF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Game(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = type metadata accessor for Leaderboard(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v14 = type metadata accessor for Player(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[8];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardEntriesShelfIntent(uint64_t a1)
{
  result = qword_27F249490;
  if (!qword_27F249490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F5BF0B4(uint64_t a1)
{
  result = type metadata accessor for Game(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Leaderboard(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Player(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_24F5BF168@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  strcpy((inited + 32), "entriesPerPage");
  *(inited + 47) = -18;
  v4 = *v1;
  *(inited + 72) = MEMORY[0x277D83B88];
  v5 = sub_24E65901C();
  *(inited + 48) = v4;
  *(inited + 80) = v5;
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v6 = type metadata accessor for LeaderboardEntriesShelfIntent(0);
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for Game(0);
  *(inited + 136) = sub_24F5BFFE8(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F5C0030(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Game);
  *(inited + 144) = 0x6F6272656461656CLL;
  *(inited + 152) = 0xEB00000000647261;
  v9 = v6[6];
  *(inited + 184) = type metadata accessor for Leaderboard(0);
  *(inited + 192) = sub_24F5BFFE8(&qword_27F21B450, type metadata accessor for Leaderboard, &protocol conformance descriptor for Leaderboard);
  v10 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F5C0030(v1 + v9, v10, type metadata accessor for Leaderboard);
  *(inited + 200) = 0x444965676170;
  *(inited + 208) = 0xE600000000000000;
  v11 = (v1 + v6[7]);
  v12 = *v11;
  v13 = v11[1];
  v14 = MEMORY[0x277D22580];
  *(inited + 240) = MEMORY[0x277D837D0];
  *(inited + 248) = v14;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 256) = 0x726579616C70;
  *(inited + 264) = 0xE600000000000000;
  v15 = v6[8];
  *(inited + 296) = type metadata accessor for Player(0);
  *(inited + 304) = sub_24F5BFFE8(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v16 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24F5C0030(v1 + v15, v16, type metadata accessor for Player);

  v17 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v18 = sub_24E80FFAC(v17);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v18;
  return result;
}

uint64_t sub_24F5BF470(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2494B0, &unk_24FA0EAE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BFECC();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD38();
  if (!v1)
  {
    type metadata accessor for LeaderboardEntriesShelfIntent(0);
    v8[14] = 1;
    type metadata accessor for Game(0);
    sub_24F5BFFE8(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
    sub_24F92CD48();
    v8[13] = 2;
    type metadata accessor for Leaderboard(0);
    sub_24F5BFFE8(&qword_27F21B470, type metadata accessor for Leaderboard, &protocol conformance descriptor for Leaderboard);
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F92CD08();
    v8[11] = 4;
    type metadata accessor for Player(0);
    sub_24F5BFFE8(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F5BF744@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v26);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v27);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2494A0, &qword_24FA0EAD8);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for LeaderboardEntriesShelfIntent(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BFECC();
  v31 = v10;
  v14 = v32;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v28;
  v37 = 0;
  *v13 = sub_24F92CC58();
  v36 = 1;
  sub_24F5BFFE8(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CC68();
  v16 = v11;
  sub_24F5BFF20(v7, v13 + v11[5], type metadata accessor for Game);
  v35 = 2;
  sub_24F5BFFE8(&qword_27F21B488, type metadata accessor for Leaderboard, &protocol conformance descriptor for Leaderboard);
  sub_24F92CC68();
  sub_24F5BFF20(v15, v13 + v11[6], type metadata accessor for Leaderboard);
  v34 = 3;
  v17 = sub_24F92CC28();
  v18 = (v13 + v11[7]);
  *v18 = v17;
  v18[1] = v19;
  v33 = 4;
  sub_24F5BFFE8(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v20 = v25;
  v21 = v30;
  sub_24F92CC68();
  (*(v29 + 8))(v31, v21);
  sub_24F5BFF20(v20, v13 + v16[8], type metadata accessor for Player);
  sub_24F5C0030(v13, v24, type metadata accessor for LeaderboardEntriesShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F5BFF88(v13, type metadata accessor for LeaderboardEntriesShelfIntent);
}

uint64_t sub_24F5BFD24()
{
  v1 = *v0;
  v2 = 0x5073656972746E65;
  v3 = 0x6F6272656461656CLL;
  v4 = 0x444965676170;
  if (v1 != 3)
  {
    v4 = 0x726579616C70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667175;
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

uint64_t sub_24F5BFDC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F5C01B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F5BFDEC(uint64_t a1)
{
  v2 = sub_24F5BFECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5BFE28(uint64_t a1)
{
  v2 = sub_24F5BFECC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F5BFECC()
{
  result = qword_27F2494A8;
  if (!qword_27F2494A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2494A8);
  }

  return result;
}

uint64_t sub_24F5BFF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5BFF88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5BFFE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F5C0030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F5C00AC()
{
  result = qword_27F2494B8;
  if (!qword_27F2494B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2494B8);
  }

  return result;
}

unint64_t sub_24F5C0104()
{
  result = qword_27F2494C0;
  if (!qword_27F2494C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2494C0);
  }

  return result;
}

unint64_t sub_24F5C015C()
{
  result = qword_27F2494C8;
  if (!qword_27F2494C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2494C8);
  }

  return result;
}