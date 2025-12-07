unint64_t sub_24ED9AC94()
{
  result = qword_27F22F540;
  if (!qword_27F22F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F540);
  }

  return result;
}

uint64_t OverlayUnavailableNowPlayingFeatures.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v35);
  v36 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F548, &qword_24F99C790);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for OverlayUnavailableNowPlayingFeatures(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v11[8];
  v15 = sub_24F929608();
  v16 = *(*(v15 - 8) + 56);
  v42 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = &v13[v11[9]];
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_24E61DA68(&v44, v17, qword_27F21B590, &unk_24F93BE30);
  v18 = v11[10];
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v41 = v18;
  v20(&v13[v18], 1, 1, v19);
  v21 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24ED9AC94();
  v39 = v9;
  v22 = v40;
  sub_24F92D108();
  if (v22)
  {
    v25 = v42;
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_24E601704(&v13[v25], &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v17, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v13[v41], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v23 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v47 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v24 = v38;
    sub_24F92CC68();
    v26 = v45;
    *v13 = v44;
    *(v13 + 1) = v26;
    *(v13 + 4) = v46;
    LOBYTE(v44) = 1;
    v27 = sub_24F92CC38();
    v28 = v42;
    v29 = v37;
    v13[40] = v27 & 1;
    LOBYTE(v44) = 2;
    sub_24ED9CE14(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E61DA68(v23, &v13[v28], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v47 = 3;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v44, v17, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v44) = 4;
    sub_24E65CAA0();
    v30 = v24;
    v31 = v36;
    v32 = v39;
    sub_24F92CC68();
    (*(v29 + 8))(v32, v30);
    sub_24E61DA68(v31, &v13[v41], &qword_27F215440, &unk_24F942BD0);
    sub_24ED9B2E0(v13, v34);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_24ED9B344(v13);
  }
}

uint64_t sub_24ED9B2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayUnavailableNowPlayingFeatures(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED9B344(uint64_t a1)
{
  v2 = type metadata accessor for OverlayUnavailableNowPlayingFeatures(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ED9B3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

double sub_24ED9B4D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24ED9B530@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverlayUnavailableNowPlayingFeatures(0);
  sub_24E60169C(a1 + *(v4 + 28), v7, qword_27F24EC90, &unk_24F93C1D0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24ED9B648(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24ED9B798(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24ED9B8D4(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C938(319);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24ED9B9D4()
{
  result = qword_27F22F568;
  if (!qword_27F22F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F568);
  }

  return result;
}

unint64_t sub_24ED9BA2C()
{
  result = qword_27F22F570;
  if (!qword_27F22F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F570);
  }

  return result;
}

unint64_t sub_24ED9BA84()
{
  result = qword_27F22F578;
  if (!qword_27F22F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F578);
  }

  return result;
}

uint64_t sub_24ED9BAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F590, &qword_24F99CA88);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F598, &qword_24F99CA90);
  MEMORY[0x28223BE20](v7);
  v9 = &v33[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5A0, &qword_24F99CA98);
  MEMORY[0x28223BE20](v10);
  v12 = &v33[-v11];
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v13 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5A8, &qword_24F99CAA0) + 44)];
  *v13 = sub_24F924C88();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5B0, &unk_24F99CAA8);
  sub_24ED9BE2C(a1, &v13[*(v14 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v16 = sub_24F925818();
  *(inited + 32) = v16;
  v17 = sub_24F925828();
  *(inited + 33) = v17;
  v18 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v16)
  {
    v18 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v17)
  {
    v18 = sub_24F925848();
  }

  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E6009C8(v6, v9, &qword_27F22F590, &qword_24F99CA88);
  v27 = &v9[*(v7 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v9, v12, &qword_27F22F598, &qword_24F99CA90);
  v28 = &v12[*(v10 + 36)];
  v29 = v39;
  v28[4] = v38;
  v28[5] = v29;
  v28[6] = v40;
  v30 = v35;
  *v28 = v34;
  v28[1] = v30;
  v31 = v37;
  v28[2] = v36;
  v28[3] = v31;
  return sub_24E6009C8(v12, a2, &qword_27F22F5A0, &qword_24F99CA98);
}

uint64_t sub_24ED9BE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5B8, &unk_24F99CAB8);
  MEMORY[0x28223BE20](v3);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  v8 = sub_24F9271F8();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E08, &qword_24F96F880);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5C0, &qword_24F99CAC8);
  MEMORY[0x28223BE20](v18 - 8);
  v51 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v23 = &v47 - v21;
  if (*(a1 + 40) == 1)
  {
    v48 = v3;
    sub_24F9271E8();
    v24 = sub_24F925828();
    v25 = sub_24F925848();
    sub_24F925848();
    if (sub_24F925848() != v24)
    {
      v25 = sub_24F925848();
    }

    sub_24F923318();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    (*(v49 + 32))(v14, v10, v50);
    v34 = &v14[*(v11 + 36)];
    *v34 = v25;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    sub_24E6009C8(v14, v17, &qword_27F223E08, &qword_24F96F880);
    sub_24E6009C8(v17, v23, &qword_27F223E08, &qword_24F96F880);
    (*(v12 + 56))(v23, 0, 1, v11);
    v3 = v48;
  }

  else
  {
    (*(v12 + 56))(&v47 - v21, 1, 1, v11, v22);
  }

  v35 = sub_24F924C88();
  v57 = 0;
  sub_24ED9C390(v55);
  memcpy(v58, v55, 0x101uLL);
  memcpy(v59, v55, 0x101uLL);
  sub_24E60169C(v58, &v54, &qword_27F22F5C8, &unk_24F99CAD0);
  sub_24E601704(v59, &qword_27F22F5C8, &unk_24F99CAD0);
  memcpy(&v56[7], v58, 0x101uLL);
  v36 = v57;
  v37 = sub_24F9251C8();
  v38 = &v7[*(v3 + 36)];
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v40 = *MEMORY[0x277CE13B8];
  v41 = sub_24F927748();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  *v38 = v37;
  *v7 = v35;
  *(v7 + 1) = 0;
  v7[16] = v36;
  memcpy(v7 + 17, v56, 0x108uLL);
  v42 = v51;
  sub_24E60169C(v23, v51, &qword_27F22F5C0, &qword_24F99CAC8);
  v43 = v52;
  sub_24E60169C(v7, v52, &qword_27F22F5B8, &unk_24F99CAB8);
  v44 = v53;
  sub_24E60169C(v42, v53, &qword_27F22F5C0, &qword_24F99CAC8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5D0, &qword_24F99CAE0);
  sub_24E60169C(v43, v44 + *(v45 + 48), &qword_27F22F5B8, &unk_24F99CAB8);
  sub_24E601704(v7, &qword_27F22F5B8, &unk_24F99CAB8);
  sub_24E601704(v23, &qword_27F22F5C0, &qword_24F99CAC8);
  sub_24E601704(v43, &qword_27F22F5B8, &unk_24F99CAB8);
  return sub_24E601704(v42, &qword_27F22F5C0, &qword_24F99CAC8);
}

uint64_t sub_24ED9C390@<X0>(void *a2@<X8>)
{
  v45 = sub_24F9249A8();
  v95 = 0;
  sub_24ED9C910(&v77._countAndFlagsBits);
  v99 = *&v78[16];
  v100 = *&v78[32];
  v101 = *&v78[48];
  v97 = v77;
  v98 = *v78;
  v102[2] = *&v78[16];
  v102[3] = *&v78[32];
  v103 = *&v78[48];
  v102[0] = v77;
  v102[1] = *v78;
  sub_24E60169C(&v97, &v47, &qword_27F22F5D8, &qword_24F99CAE8);
  sub_24E601704(v102, &qword_27F22F5D8, &qword_24F99CAE8);
  *&v94[23] = v98;
  *&v94[39] = v99;
  *&v94[55] = v100;
  *&v94[71] = v101;
  *&v94[7] = v97;
  v44 = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93A400;
  v3 = sub_24F925818();
  *(v2 + 32) = v3;
  v4 = sub_24F925828();
  *(v2 + 33) = v4;
  v5 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v3)
  {
    v5 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v4)
  {
    v5 = sub_24F925848();
  }

  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v96 = 0;
  v14 = sub_24F924C88();
  v89 = 1;
  v15._object = 0x800000024FA5D1F0;
  v15._countAndFlagsBits = 0xD000000000000029;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v77 = localizedString(_:comment:)(v15, v16);
  sub_24E600AEC();
  v17 = sub_24F925E18();
  v19 = v18;
  v21 = v20;
  sub_24F925898();
  v22 = sub_24F925C98();
  v40 = v23;
  v41 = v22;
  v25 = v24;
  v42 = v26;

  sub_24E600B40(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v87 = v25 & 1;
  v27 = v89;
  v28 = sub_24F9257F8();
  v29 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v28)
  {
    v29 = sub_24F925848();
  }

  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v90 = 0;
  *&v47 = v45;
  *(&v47 + 1) = 0x4034000000000000;
  v48[0] = v44;
  *&v48[17] = *&v94[16];
  *&v48[33] = *&v94[32];
  *&v48[49] = *&v94[48];
  *&v48[64] = *&v94[63];
  *&v48[1] = *v94;
  LOBYTE(v49) = v5;
  DWORD1(v49) = *&v93[3];
  *(&v49 + 1) = *v93;
  *(&v49 + 1) = v7;
  *v50 = v9;
  *&v50[8] = v11;
  *&v50[16] = v13;
  v50[24] = 0;
  __src[2] = *&v48[16];
  __src[3] = *&v48[32];
  __src[0] = v47;
  __src[1] = *v48;
  *(&__src[7] + 9) = *&v50[9];
  __src[6] = v49;
  __src[7] = *v50;
  __src[4] = *&v48[48];
  __src[5] = *&v94[63];
  v51 = v14;
  LOBYTE(v52) = v27;
  *(&v52 + 1) = *v88;
  DWORD1(v52) = *&v88[3];
  *(&v52 + 1) = v41;
  *&v53 = v40;
  BYTE8(v53) = v25 & 1;
  *(&v53 + 9) = *v86;
  HIDWORD(v53) = *&v86[3];
  *&v54 = v42;
  *(&v54 + 1) = KeyPath;
  LOBYTE(v55) = 1;
  DWORD1(v55) = *&v92[3];
  *(&v55 + 1) = *v92;
  BYTE8(v55) = v29;
  *(&v55 + 9) = *v91;
  HIDWORD(v55) = *&v91[3];
  *&v56 = v30;
  *(&v56 + 1) = v32;
  *&v57 = v34;
  *(&v57 + 1) = v36;
  v58 = 0;
  __src[11] = v53;
  __src[12] = v54;
  __src[9] = v14;
  __src[10] = v52;
  LOBYTE(__src[16]) = 0;
  __src[14] = v56;
  __src[15] = v57;
  __src[13] = v55;
  memcpy(a2, __src, 0x101uLL);
  v59[0] = v14;
  v59[1] = 0;
  v60 = v27;
  *v61 = *v88;
  *&v61[3] = *&v88[3];
  v62 = v41;
  v63 = v40;
  v64 = v25 & 1;
  *v65 = *v86;
  *&v65[3] = *&v86[3];
  v66 = v42;
  v67 = KeyPath;
  v68 = 1;
  *&v69[3] = *&v92[3];
  *v69 = *v92;
  v70 = v29;
  *&v71[3] = *&v91[3];
  *v71 = *v91;
  v72 = v31;
  v73 = v33;
  v74 = v35;
  v75 = v37;
  v76 = 0;
  sub_24E60169C(&v47, &v77, &qword_27F22F5E0, &qword_24F99CB20);
  sub_24E60169C(&v51, &v77, &qword_27F22F5E8, &qword_24F99CB28);
  sub_24E601704(v59, &qword_27F22F5E8, &qword_24F99CB28);
  *&v78[17] = *&v94[16];
  *&v78[33] = *&v94[32];
  *&v78[49] = *&v94[48];
  *&v78[64] = *&v94[63];
  v77._countAndFlagsBits = v45;
  v77._object = 0x4034000000000000;
  v78[0] = v44;
  *&v78[1] = *v94;
  v79 = v5;
  *v80 = *v93;
  *&v80[3] = *&v93[3];
  v81 = v7;
  v82 = v9;
  v83 = v11;
  v84 = v13;
  v85 = 0;
  return sub_24E601704(&v77, &qword_27F22F5E0, &qword_24F99CB20);
}

double sub_24ED9C910@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F926E48();
  v3 = sub_24F925898();
  KeyPath = swift_getKeyPath();
  v5 = sub_24F926E48();
  v6 = sub_24F925898();
  v7 = swift_getKeyPath();
  v8 = sub_24F926E48();
  v9 = sub_24F925898();
  v10 = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
  a1[6] = v8;
  a1[7] = v10;
  a1[8] = v9;

  return result;
}

uint64_t sub_24ED9CA64(uint64_t a1)
{
  sub_24ED9CCBC();

  return sub_24F9218E8();
}

uint64_t sub_24ED9CAA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6976694468746977 && a2 == 0xEB00000000726564 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
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

unint64_t sub_24ED9CCBC()
{
  result = qword_27F22F580;
  if (!qword_27F22F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F580);
  }

  return result;
}

unint64_t sub_24ED9CD14()
{
  result = qword_27F22F588;
  if (!qword_27F22F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F588);
  }

  return result;
}

uint64_t sub_24ED9CE14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24ED9CE70()
{
  result = qword_27F22F5F0;
  if (!qword_27F22F5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F5F8, &unk_24F99CB60);
    sub_24ED9CF28();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F5F0);
  }

  return result;
}

unint64_t sub_24ED9CF28()
{
  result = qword_27F22F600;
  if (!qword_27F22F600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F5A0, &qword_24F99CA98);
    sub_24ED9CFB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F600);
  }

  return result;
}

unint64_t sub_24ED9CFB4()
{
  result = qword_27F22F608;
  if (!qword_27F22F608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F598, &qword_24F99CA90);
    sub_24E602068(&qword_27F22F610, &qword_27F22F590, &qword_24F99CA88, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F608);
  }

  return result;
}

uint64_t ArcadeSubscriptionStatusFieldsProvider.init(arcadeSubscriptionManager:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for ArcadeSubscriptionStatusFieldsProvider(0) + 20);
  v5 = *MEMORY[0x277D22340];
  v6 = sub_24F92A2D8();
  result = (*(*(v6 - 8) + 104))(&a2[v4], v5, v6);
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for ArcadeSubscriptionStatusFieldsProvider(uint64_t a1)
{
  result = qword_27F22F618;
  if (!qword_27F22F618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeSubscriptionStatusFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArcadeSubscriptionStatusFieldsProvider(0) + 20);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeSubscriptionStatusFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_24ED9D1D8, 0, 0);
}

uint64_t sub_24ED9D1D8()
{
  v20 = v0;
  v1 = *(v0 + 72);
  v2 = **(v0 + 80) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_24EB6CE50(v3, v4);
  v5 = sub_24F929A38();
  v7 = v6;
  if (qword_27F210E78 != -1)
  {
    swift_once();
  }

  v8 = sub_24F929458();
  __swift_project_value_buffer(v8, qword_27F39D638);
  v9 = sub_24F929448();
  if (v7)
  {
    if (v5 == v9 && v7 == v10)
    {
    }

    else
    {
      v12 = sub_24F92CE08();

      if ((v12 & 1) == 0)
      {
        sub_24EB6CE70(v3, v4);
        goto LABEL_13;
      }
    }

    v13 = *(v0 + 72);
    v18 = v3;
    v19 = v4;
    v14 = sub_24ED9D42C(&v18);
    *(v0 + 40) = MEMORY[0x277D837D0];
    *(v0 + 16) = v14;
    *(v0 + 24) = v15;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v1[3]);
    sub_24F929A28();
    sub_24EB6CE70(v3, v4);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    sub_24EB6CE70(v3, v4);
  }

LABEL_13:
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24ED9D42C(unsigned __int8 *a1)
{
  v1 = a1[8] >> 6;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      return 0x6269726373627573;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else if (v1)
  {
    v3 = *(*a1 + 24);
    v4 = *(*a1 + 16);
    v5 = v3;
    return sub_24ED9D42C(&v4);
  }

  else
  {
    return 0x7263736275736E75;
  }
}

uint64_t sub_24ED9D4D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return ArcadeSubscriptionStatusFieldsProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t sub_24ED9D57C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F92A2D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24ED9D63C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t TopChartsPagePresenter.init(objectGraph:topChartsPage:topChartsPageUrl:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  v7 = sub_24F91F4A8();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_hasData) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_initialSegmentIndex) = 0;
  sub_24F91FA68();
  v8 = (v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_title);
  *v8 = 0;
  v8[1] = 0;
  v9 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters) = MEMORY[0x277D84F90];
  v10 = (v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categoriesButtonTitle);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryGenreId);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId);
  *v12 = 0;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories) = v9;
  swift_beginAccess();
  sub_24ED9D920(a3, v3 + v6);
  swift_endAccess();

  v14 = sub_24EC8415C(v13, 0, 0, 0);

  if (a2)
  {
    sub_24ED9ED80(a2);

    sub_24E601704(a3, &qword_27F228530, &unk_24F93C6E0);
  }

  else
  {
    sub_24E601704(a3, &qword_27F228530, &unk_24F93C6E0);
  }

  return v14;
}

uint64_t sub_24ED9D920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED9D9E0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24ED9DA4C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24ED9DB4C()
{
  v1 = v0;
  sub_24ED9DD64(0);
  v2 = v0 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_title;
  swift_beginAccess();
  if (*(v2 + 8))
  {
    v3 = v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  v6 = v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categoriesButtonTitle;
  swift_beginAccess();
  if (*(v6 + 8))
  {
    v7 = v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      v9 = swift_getObjectType();
      (*(v8 + 24))(v9, v8);
      swift_unknownObjectRelease();
    }
  }

  v10 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v13 = v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v13 + 8);
    v15 = *(v1 + v10);
    if (v15 >> 62)
    {
      v16 = sub_24F92C738();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = swift_getObjectType();
    (*(v14 + 40))(0, v16, v17, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24ED9DD64(int a1)
{
  v3 = type metadata accessor for TopChartsPageIntent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A088();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v46 = v1;
  if (*(v1 + 32) == 1)
  {
    v37 = v11;
    v39 = v8;
    v40 = v6;
    v42 = v15;
    v16 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters;
    v17 = v46;
    swift_beginAccess();
    v18 = *(v17 + v16);
    v44 = v12;
    v43 = v13;
    v41 = v5;
    v38 = a1;
    if (v18 >> 62)
    {
      goto LABEL_29;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v19)
    {
      v20 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x253052270](v20, v18);
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_29:
            v19 = sub_24F92C738();
            goto LABEL_4;
          }

          v21 = *(v18 + 8 * v20 + 32);

          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_14;
          }
        }

        v23 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
        swift_beginAccess();
        v24 = *(v21 + v23);

        if (v24)
        {
        }

        ++v20;
      }

      while (v22 != v19);
    }

    v12 = v44;
    v13 = v43;
    v15 = v42;
    v5 = v41;
    v6 = v40;
    v8 = v39;
    LOBYTE(a1) = v38;
    v11 = v37;
  }

  v25 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  v26 = v46;
  swift_beginAccess();
  sub_24E99091C(v26 + v25, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_24E601704(v11, &qword_27F228530, &unk_24F93C6E0);
  }

  (*(v13 + 32))(v15, v11, v12);
  if (*(v46 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_hasData) == 1 && (a1 & 1) == 0)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v28 = v46;
  *(v46 + 32) = 1;
  v29 = v28 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v30 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  v32 = v46;
  swift_beginAccess();
  if (*(v32 + 24))
  {
    *v8 = 1;
    (*(v6 + 104))(v8, *MEMORY[0x277D222A0], v5);

    sub_24F92A0D8();

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v33 = v45;
  (*(v13 + 16))(v45, v15, v12);
  sub_24F929C28();

  sub_24F928FE8();

  sub_24F929BF8();

  v34 = sub_24F929C08();

  sub_24EB45B70(v33, v34, "GameStoreKit/TopChartsPagePresenter.swift", 41, 2);
  v35 = sub_24E74EC40();
  swift_retain_n();
  v36 = sub_24F92BEF8();
  v47[3] = v35;
  v47[4] = MEMORY[0x277D225C0];
  v47[0] = v36;
  sub_24F92A958();

  sub_24EDA1EB8(v33);
  (*(v13 + 8))(v15, v12);
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_24ED9E448(uint64_t *a1, uint64_t a2)
{
  v4 = sub_24F92A078();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  swift_beginAccess();
  if (*(a2 + 24))
  {
    v9 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v10 = sub_24F928818();
    (*(*(v10 - 8) + 16))(v7, v8 + v9, v10);
    (*(v5 + 104))(v7, *MEMORY[0x277D22290], v4);

    sub_24F92A0C8();

    (*(v5 + 8))(v7, v4);
  }

  sub_24ED9ED80(v8);
  swift_beginAccess();
  *(a2 + 32) = 0;
  v11 = a2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v13 + 8) + 16))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24ED9E654(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-v5];
  v7 = sub_24F92A078();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(a2 + 24))
  {
    *v10 = a1;
    (*(v8 + 104))(v10, *MEMORY[0x277D22280], v7);

    v11 = a1;
    sub_24F92A0C8();

    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  *(a2 + 32) = 0;
  v12 = a2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v13 + 8) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v12 + 8);
    v16 = swift_getObjectType();
    v17 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
    swift_beginAccess();
    sub_24E99091C(a2 + v17, v6);
    v18 = type metadata accessor for PresenterError(0);
    sub_24EDA2710(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v19 = swift_allocError();
    *v20 = a1;
    sub_24E911D90(v6, v20 + *(v18 + 20));
    v21 = *(v15 + 8);
    v22 = *(v21 + 24);
    v23 = a1;
    v22(v19, v16, v21);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24ED9E938(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24E99091C(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  sub_24EDA1F14(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_24ED9E9F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  return sub_24E99091C(v1 + v3, a1);
}

uint64_t sub_24ED9EA50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  sub_24EDA1F14(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24ED9EB10()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_initialSegmentIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED9EB54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  v5 = sub_24F91FA78();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24ED9EBE0(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v5 = sub_24F91FA78();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  (*(v6 + 40))(v10 + v11, v9, v5);
  return swift_endAccess();
}

uint64_t sub_24ED9ECF8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  v4 = sub_24F91FA78();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24ED9ED80(uint64_t a1)
{
  v63 = sub_24F91F648();
  v3 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91FA78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_hasData) = 1;
  v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title);
  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title + 8);

  sub_24ED9F794(v9, v10);
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle);
  v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle + 8);

  sub_24ED9F948(v11, v12);
  v13 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId + 8);
  v14 = (v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryGenreId);
  *v14 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId);
  v14[1] = v13;

  v15 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId + 8);
  v16 = (v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId);
  *v16 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId);
  v16[1] = v15;

  *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories) = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categories);

  v17 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_initialSegmentIndex);
  v18 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_initialSegmentIndex;
  swift_beginAccess();
  *(v1 + v18) = v17;

  v20 = sub_24EDA1824(v19);

  MEMORY[0x2530453D0](v20);
  v21 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  (*(v6 + 40))(v1 + v21, v8, v5);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  v65 = v1;
  v23 = *(v1 + v22);
  v68 = v23;
  if (v23 >> 62)
  {
    goto LABEL_55;
  }

  v60 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v24 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_segments);
  v58 = v22;
  if (v24 >> 62)
  {
    v59 = sub_24F92C738();
    v22 = sub_24F92C738();
  }

  else
  {
    v22 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = v22;
  }

  if (v22)
  {
    v67 = v24 & 0xC000000000000001;
    v66 = v24 & 0xFFFFFFFFFFFFFF8;
    v61 = (v3 + 8);
    v25 = 4;
    v64 = v22;
    do
    {
      a1 = v25 - 4;
      if (v67)
      {
        v3 = MEMORY[0x253052270](v25 - 4, v24);
        v26 = v25 - 3;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (a1 >= *(v66 + 16))
        {
          goto LABEL_51;
        }

        v3 = *(v24 + 8 * v25);

        v26 = v25 - 3;
        if (__OFADD__(a1, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v60 = sub_24F92C738();
          goto LABEL_3;
        }
      }

      if (v23 >> 62)
      {
        if (a1 >= sub_24F92C738())
        {
LABEL_21:
          v27 = v24;
          v28 = v65;
          type metadata accessor for TopChartSegmentPresenter(0);
          v29 = swift_allocObject();
          *(v29 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view + 8) = 0;
          swift_unknownObjectWeakInit();
          *(v29 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage) = 0;
          *(v29 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment) = 0;
          *(v29 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
          *(v29 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
          *(v29 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
          *(v29 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

          v31 = sub_24EC8415C(v30, 0, 0, 0);

          v32 = (v28 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_referrer);
          swift_beginAccess();
          v34 = *v32;
          v33 = v32[1];
          v35 = (v31 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_referrer);
          swift_beginAccess();
          *v35 = v34;
          v35[1] = v33;
          swift_retain_n();

          MEMORY[0x253050F00](v36);
          if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();

          v23 = v68;
          v24 = v27;
          v22 = v64;
          goto LABEL_24;
        }
      }

      else if (a1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      if ((v23 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v25 - 4, v23);
      }

      else
      {
        if (a1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }
      }

      sub_24EC80D60();

LABEL_24:
      if ((v23 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x253052270](v25 - 4, v23);
      }

      else
      {
        if (a1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v37 = *(v23 + 8 * v25);
      }

      v38 = *(v37 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
      *(v37 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment) = v3;
      swift_retain_n();
      sub_24EC9D2DC(v38);

      if (v25 == 4)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x253052270](0, v23);
        }

        else
        {
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v39 = *(v23 + 32);
        }

        swift_beginAccess();
        v40 = *(v39 + 16);

        if (v40)
        {
          v41 = v62;
          sub_24F91F638();
          sub_24F91F5E8();
          v43 = v42;
          (*v61)(v41, v63);
          v44 = v40 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_initialRequestEndTime;
          swift_beginAccess();
          v45 = *v44;
          v46 = *(v44 + 8);
          *v44 = v43;
          *(v44 + 8) = 0;
          if ((v46 & 1) != 0 || v43 != v45)
          {
            v47 = *(v40 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasInitialRequestEndTime);
            swift_beginAccess();
            *(v47 + 40) = 1;
            swift_beginAccess();
            if (swift_weakLoadStrong())
            {
              sub_24EA6BFA0();
            }

            PendingPageRender.tryToEstablishUserReadyTime()();
          }
        }
      }

      ++v25;
    }

    while (v26 != v22);
  }

  v48 = v60;
  v49 = v59;
  if (v59 < v60)
  {
    result = v60 - v59;
    if (__OFSUB__(v60, v59))
    {
      __break(1u);
      return result;
    }

    sub_24ED9F6D0(result);
  }

  if (v48 != v49)
  {
    v51 = v65;
    *(v65 + v58) = v68;

    v52 = v51 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(v52 + 8);
      ObjectType = swift_getObjectType();
      (*(v53 + 40))(v48, v49, ObjectType, v53);
      swift_unknownObjectRelease();
    }
  }

  v55 = v65 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    v57 = swift_getObjectType();
    (*(v56 + 32))(v57, v56);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24ED9F6D0(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v2 >> 62))
  {
    v3 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = -v3;
    if (!__OFSUB__(0, v3))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  v3 = sub_24F92C738();
  result = v7;
  v4 = -v3;
  if (__OFSUB__(0, v3))
  {
    goto LABEL_19;
  }

LABEL_5:
  v5 = -result;
  if (v4 <= 0 && v4 > v5)
  {
    goto LABEL_22;
  }

  result = v3 - result;
  if (__OFADD__(v3, v5))
  {
    goto LABEL_20;
  }

  if (v3 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_24F14A20C(result, v3);
}

uint64_t sub_24ED9F794(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_title);
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_24F92CE08() & 1) != 0)
      {
      }
    }
  }

  else if (!v8)
  {
    return result;
  }

  v10 = v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(ObjectType, v11);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24ED9F88C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_24ED9F8F4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24ED9F948(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categoriesButtonTitle);
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_24F92CE08() & 1) != 0)
      {
      }
    }
  }

  else if (!v8)
  {
    return result;
  }

  v10 = v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(ObjectType, v11);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24ED9FA40(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    if (!sub_24F92C738())
    {
      goto LABEL_7;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  v8 = *(v1 + v6);
  if (v8 >> 62)
  {
    v9 = sub_24F92C738();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + v6) = MEMORY[0x277D84F90];

  v10 = v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 40))(v9, 0, ObjectType, v11);
    swift_unknownObjectRelease();
  }

LABEL_7:
  v13 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
  v14 = sub_24F91F4A8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v5, a1 + v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  v16 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  sub_24EDA1F14(v5, v1 + v16);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_hasData) = 0;
  return sub_24ED9DD64(1);
}

void sub_24ED9FC9C(uint64_t a1, __n128 a2)
{
  v4 = sub_24F91FA78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0, &qword_24F98A328);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8, &qword_24F98A330);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  v16 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories;
  v30 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories);
  v18 = *(v5 + 16);
  v28[1] = a1;
  v18(v10, a1, v4, v13);
  (*(v5 + 32))(v7, v10, v4);
  v19 = MEMORY[0x277CC9AF8];
  sub_24EDA2710(&qword_27F22AF70, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B20]);

  sub_24F92B3F8();
  v29 = *(v12 + 44);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8, &qword_24F98A338) + 36);
  sub_24EDA2710(&qword_27F22AFD0, v19, MEMORY[0x277CC9B30]);
  sub_24F92BC08();
  if (*&v15[v20] == v31[0])
  {
    v21 = 0;
LABEL_3:

    *&v15[v29] = v21;
    sub_24E601704(v15, &qword_27F22AFB8, &qword_24F98A330);
  }

  else
  {
    v21 = 0;
    while (1)
    {
      v22 = sub_24F92BC88();
      v24 = *v23;
      v22(v31, 0);
      sub_24F92BC18();
      if (++v21 >= sub_24F91FA28())
      {
        break;
      }

      v25 = *(v30 + v16);
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x253052270](v24, v25);

        v17 = *(v26 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v27 = MEMORY[0x253052270](v24, v17);
LABEL_17:

          sub_24E601704(v15, &qword_27F22AFB8, &qword_24F98A330);
          sub_24ED9FA40(v27);

          return;
        }

        if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v17 = *(*(v25 + 8 * v24 + 32) + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      if (*&v15[v20] == v31[0])
      {
        goto LABEL_3;
      }
    }

    *&v15[v29] = v21;
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v17 + 8 * v24 + 32);

      goto LABEL_17;
    }

    __break(1u);
  }
}

uint64_t sub_24EDA00E4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_24F91FA78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0, &qword_24F98A328);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8, &qword_24F98A330);
  v12 = MEMORY[0x28223BE20](v29);
  v14 = &v28 - v13;
  v15 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories;
  v16 = *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories);
  (*(v6 + 16))(v11, a1, v5, v12);
  (*(v6 + 32))(v8, v11, v5);
  v17 = MEMORY[0x277CC9AF8];
  sub_24EDA2710(&qword_27F22AF70, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B20]);

  sub_24F92B3F8();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8, &qword_24F98A338) + 36);
  sub_24EDA2710(&qword_27F22AFD0, v17, MEMORY[0x277CC9B30]);
  sub_24F92BC08();
  if (*&v14[v18] != v30[0])
  {
    v22 = 0;
    while (1)
    {

      v23 = sub_24F92BC88();
      v25 = *v24;
      v23(v30, 0);
      sub_24F92BC18();
      v19 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v26 = *(v3 + v15);
      if ((v26 & 0xC000000000000001) != 0)
      {

        v27 = MEMORY[0x253052270](v25, v26);

        v16 = *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(*(v26 + 8 * v25 + 32) + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      ++v22;
      if (*&v14[v18] == v30[0])
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = 0;
LABEL_3:
  *&v14[*(v29 + 36)] = v19;
  sub_24E601704(v14, &qword_27F22AFB8, &qword_24F98A330);
  if (v16 >> 62)
  {
LABEL_18:
    v20 = sub_24F92C738();
    goto LABEL_5;
  }

  v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  return v20;
}

uint64_t sub_24EDA04C0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_24F91FA78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0, &qword_24F98A328);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8, &qword_24F98A330);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories;
  v31 = v3;
  v18 = *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories);
  (*(v6 + 16))(v11, a1, v5, v14);
  (*(v6 + 32))(v8, v11, v5);
  v19 = MEMORY[0x277CC9AF8];
  sub_24EDA2710(&qword_27F22AF70, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B20]);

  sub_24F92B3F8();
  v30 = *(v13 + 44);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8, &qword_24F98A338) + 36);
  sub_24EDA2710(&qword_27F22AFD0, v19, MEMORY[0x277CC9B30]);
  sub_24F92BC08();
  if (*&v16[v20] == v32[0])
  {
    v21 = 0;
LABEL_3:

    *&v16[v30] = v21;
    sub_24E601704(v16, &qword_27F22AFB8, &qword_24F98A330);
    return 0;
  }

  v21 = 0;
  while (1)
  {
    v23 = sub_24F92BC88();
    v25 = *v24;
    v23(v32, 0);
    sub_24F92BC18();
    ++v21;
    result = sub_24F91FA28();
    if (v21 >= result)
    {
      *&v16[v30] = v21;
      if ((v18 & 0xC000000000000001) != 0)
      {
        goto LABEL_24;
      }

      if ((v25 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v25 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v28 = *(v18 + 8 * v25 + 32);

        goto LABEL_17;
      }

      __break(1u);
      return result;
    }

    v26 = *(v31 + v17);
    if ((v26 & 0xC000000000000001) != 0)
    {

      v27 = MEMORY[0x253052270](v25, v26);

      v18 = *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v18 = *(*(v26 + 8 * v25 + 32) + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

LABEL_10:
    sub_24F92BC08();
    if (*&v16[v20] == v32[0])
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  v28 = MEMORY[0x253052270](v25, v18);
LABEL_17:

  sub_24E601704(v16, &qword_27F22AFB8, &qword_24F98A330);
  if (*(v28 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName + 8))
  {
    v29 = *(v28 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName);
  }

  else
  {
    v29 = *(v28 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName);
  }

  return v29;
}

uint64_t sub_24EDA0948(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_24F91FA78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0, &qword_24F98A328);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8, &qword_24F98A330);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories;
  v32 = v3;
  v18 = *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories);
  (*(v6 + 16))(v11, a1, v5, v14);
  (*(v6 + 32))(v8, v11, v5);
  v19 = MEMORY[0x277CC9AF8];
  sub_24EDA2710(&qword_27F22AF70, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B20]);

  sub_24F92B3F8();
  v31 = *(v13 + 44);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8, &qword_24F98A338) + 36);
  sub_24EDA2710(&qword_27F22AFD0, v19, MEMORY[0x277CC9B30]);
  sub_24F92BC08();
  if (*&v16[v20] == v33[0])
  {
    v21 = 0;
LABEL_3:

    *&v16[v31] = v21;
    sub_24E601704(v16, &qword_27F22AFB8, &qword_24F98A330);
    return 0;
  }

  else
  {
    v21 = 0;
    while (1)
    {
      v23 = sub_24F92BC88();
      v25 = *v24;
      v23(v33, 0);
      sub_24F92BC18();
      ++v21;
      result = sub_24F91FA28();
      if (v21 >= result)
      {
        break;
      }

      v26 = *(v32 + v17);
      if ((v26 & 0xC000000000000001) != 0)
      {

        v27 = MEMORY[0x253052270](v25, v26);

        v18 = *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v30 = MEMORY[0x253052270](v25, v18);

          sub_24E601704(v16, &qword_27F22AFB8, &qword_24F98A330);
          v29 = *(v30 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork);

          swift_unknownObjectRelease();
          return v29;
        }

        if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v18 = *(*(v26 + 8 * v25 + 32) + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      if (*&v16[v20] == v33[0])
      {
        goto LABEL_3;
      }
    }

    *&v16[v31] = v21;
    if ((v18 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v18 + 8 * v25 + 32);

      sub_24E601704(v16, &qword_27F22AFB8, &qword_24F98A330);
      v29 = *(v28 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork);

      return v29;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EDA0DE0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_24F91FA78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0, &qword_24F98A328);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8, &qword_24F98A330);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories;
  v32 = v3;
  v18 = *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories);
  (*(v6 + 16))(v11, a1, v5, v14);
  (*(v6 + 32))(v8, v11, v5);
  v19 = MEMORY[0x277CC9AF8];
  sub_24EDA2710(&qword_27F22AF70, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B20]);

  sub_24F92B3F8();
  v31 = *(v13 + 44);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8, &qword_24F98A338) + 36);
  sub_24EDA2710(&qword_27F22AFD0, v19, MEMORY[0x277CC9B30]);
  sub_24F92BC08();
  if (*&v16[v20] == v33[0])
  {
    v21 = 0;
LABEL_3:

    *&v16[v31] = v21;
    sub_24E601704(v16, &qword_27F22AFB8, &qword_24F98A330);
    return 0;
  }

  else
  {
    v21 = 0;
    while (1)
    {
      v23 = sub_24F92BC88();
      v25 = *v24;
      v23(v33, 0);
      sub_24F92BC18();
      ++v21;
      result = sub_24F91FA28();
      if (v21 >= result)
      {
        break;
      }

      v26 = *(v32 + v17);
      if ((v26 & 0xC000000000000001) != 0)
      {

        v27 = MEMORY[0x253052270](v25, v26);

        v18 = *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v28 = MEMORY[0x253052270](v25, v18);
LABEL_17:

          sub_24E601704(v16, &qword_27F22AFB8, &qword_24F98A330);
          v29 = *(v28 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
          if (!(v29 >> 62))
          {
            v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

            return v30 > 0;
          }

LABEL_25:
          v30 = sub_24F92C738();
          goto LABEL_19;
        }

        if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v18 = *(*(v26 + 8 * v25 + 32) + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      if (*&v16[v20] == v33[0])
      {
        goto LABEL_3;
      }
    }

    *&v16[v31] = v21;
    if ((v18 & 0xC000000000000001) != 0)
    {
      goto LABEL_23;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v25 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v18 + 8 * v25 + 32);

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EDA125C(uint64_t a1, __n128 a2)
{
  v4 = sub_24F91FA78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0, &qword_24F98A328);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8, &qword_24F98A330);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v30 - v14;
  v16 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories;
  v32 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories);
  v18 = *(v5 + 16);
  v30[1] = a1;
  v18(v10, a1, v4, v13);
  (*(v5 + 32))(v7, v10, v4);
  v19 = MEMORY[0x277CC9AF8];
  sub_24EDA2710(&qword_27F22AF70, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B20]);

  sub_24F92B3F8();
  v31 = *(v12 + 44);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8, &qword_24F98A338) + 36);
  sub_24EDA2710(&qword_27F22AFD0, v19, MEMORY[0x277CC9B30]);
  sub_24F92BC08();
  if (*&v15[v20] == v33[0])
  {
    v21 = 0;
LABEL_3:

    v22 = 0;
    *&v15[v31] = v21;
LABEL_18:
    sub_24E601704(v15, &qword_27F22AFB8, &qword_24F98A330);
    v29 = sub_24EDA1698(v22);

    return v29 & 1;
  }

  else
  {
    v21 = 0;
    while (1)
    {
      v23 = sub_24F92BC88();
      v25 = *v24;
      v23(v33, 0);
      sub_24F92BC18();
      ++v21;
      result = sub_24F91FA28();
      if (v21 >= result)
      {
        break;
      }

      v27 = *(v32 + v16);
      if ((v27 & 0xC000000000000001) != 0)
      {

        v28 = MEMORY[0x253052270](v25, v27);

        v17 = *(v28 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v22 = MEMORY[0x253052270](v25, v17);
LABEL_17:

          goto LABEL_18;
        }

        if (v25 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v17 = *(*(v27 + 8 * v25 + 32) + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      if (*&v15[v20] == v33[0])
      {
        goto LABEL_3;
      }
    }

    *&v15[v31] = v21;
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v22 = *(v17 + 8 * v25 + 32);

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EDA1698(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId + 8);
  if (!a1)
  {
    v7 = v2 == 0;
    LOBYTE(v9) = v2 == 0;
    v10 = v2 == 0;
    if (*(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryGenreId + 8))
    {
      goto LABEL_26;
    }

    if (!v2)
    {
      return v10 & 1;
    }

LABEL_35:
    if ((v10 & 1) == 0)
    {
      return v10 & 1;
    }

    goto LABEL_36;
  }

  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId);
  v6 = a1[4];
  v5 = a1[5];
  v7 = v2 == 0;

  if (v2)
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4 == v6 && v2 == v5)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_24F92CE08();
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v9 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v9 = 1;
LABEL_17:
  v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryGenreId);
  v12 = *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryGenreId + 8);
  v14 = a1[2];
  v13 = a1[3];

  if (!v12)
  {
    if (v13)
    {

      goto LABEL_26;
    }

    v10 = v9;
    if (!v2)
    {
      return v10 & 1;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    if (v11 == v14 && v12 == v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_24F92CE08();
    }

    if (!v2 || ((v9 ^ 1) & 1) != 0)
    {
      v10 = v16 & v9;
      return v10 & 1;
    }

LABEL_36:
    v10 = 1;
    return v10 & 1;
  }

LABEL_26:
  v10 = 0;
  if (!v7 && (v9 & 1) != 0)
  {
    goto LABEL_36;
  }

  return v10 & 1;
}

uint64_t sub_24EDA1824(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_34:
    v4 = sub_24F92C738();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = (v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId);
      v19 = (v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryGenreId);
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x253052270](v5, a1);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
            v16 = swift_allocObject();
            *(v16 + 16) = xmmword_24F93DE60;
            *(v16 + 32) = v5;
            v20 = v16;
            sub_24EA0B3B4(v2);

            return v20;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_34;
          }

          v7 = *(a1 + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_30;
          }
        }

        v2 = sub_24EDA1824(v9);

        if (*(v2 + 16))
        {
          goto LABEL_31;
        }

        v10 = v4;

        v11 = 0;
        v2 = v6[1];
        v12 = v7[5];
        v13 = (v2 | v12) == 0;
        if (v2 && v12)
        {
          if (*v6 == v7[4] && v2 == v12)
          {
            v11 = 1;
            v13 = 1;
          }

          else
          {
            v11 = sub_24F92CE08();
            v13 = v11;
          }
        }

        v14 = v19[1];
        v15 = v7[3];
        if (v14)
        {
          if (v15)
          {
            if (*v19 == v7[2] && v14 == v15)
            {
              if ((v11 | v13))
              {
                goto LABEL_32;
              }
            }

            else if ((v11 | sub_24F92CE08() & v13))
            {
              goto LABEL_32;
            }

            goto LABEL_5;
          }
        }

        else if (!v15)
        {
          if (v13)
          {
            goto LABEL_32;
          }

          goto LABEL_5;
        }

        if (v2 && v13)
        {
LABEL_32:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_24F93DE60;
          *(v18 + 32) = v5;

          return v18;
        }

LABEL_5:

        ++v5;
        v4 = v10;
      }

      while (v8 != v10);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24EDA1AFC()
{
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl, &qword_27F228530, &unk_24F93C6E0);
  v1 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  v2 = sub_24F91FA78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t TopChartsPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl, &qword_27F228530, &unk_24F93C6E0);
  v1 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  v2 = sub_24F91FA78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TopChartsPagePresenter.__deallocating_deinit()
{
  TopChartsPagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EDA1D60@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  v5 = sub_24F91FA78();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_24EDA1EB8(uint64_t a1)
{
  v2 = type metadata accessor for TopChartsPageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EDA1F14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDA1F84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EDA1FE0(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EDA2044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  return sub_24E99091C(v3 + v4, a2);
}

uint64_t sub_24EDA20A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_initialSegmentIndex;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EDA20FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_initialSegmentIndex;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_24EDA217C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t keypath_set_8Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t type metadata accessor for TopChartsPagePresenter(uint64_t a1)
{
  result = qword_27F22F648;
  if (!qword_27F22F648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EDA22EC(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    sub_24F91FA78();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EDA2710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EDA277C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GameSource(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EDA28C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for GameSource(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardsPageView(uint64_t a1)
{
  result = qword_27F22F658;
  if (!qword_27F22F658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EDA2A3C(uint64_t a1)
{
  sub_24EDA2B80();
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GameSource(319);
      if (v3 <= 0x3F)
      {
        sub_24E6E8928(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24E7D231C(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for LocalPlayerProvider(319);
            if (v6 <= 0x3F)
            {
              sub_24E6E8928(319, &qword_27F22F670, &type metadata for BackgroundThemeStyle, MEMORY[0x277CDF468]);
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

unint64_t sub_24EDA2B80()
{
  result = qword_27F22F668;
  if (!qword_27F22F668)
  {
    type metadata accessor for Page(255);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_27F22F668);
  }

  return result;
}

uint64_t sub_24EDA2C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = type metadata accessor for GameSource(0);
  MEMORY[0x28223BE20](v25);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LeaderboardsOverviewPageIntent(0);
  v28[3] = v17;
  v28[4] = sub_24EDA595C(&qword_27F21D378, type metadata accessor for LeaderboardsOverviewPageIntent, &unk_24F9DEB68);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  v24 = a1;
  sub_24EDA56F0(a1, boxed_opaque_existential_1, type metadata accessor for LeaderboardsOverviewPageIntent);
  sub_24EDA56F0(a1 + *(v17 + 20), v16, type metadata accessor for Game);
  sub_24E60169C(a1, v13, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24E615E00(v28, v27);
  sub_24EDA56F0(v16, v7, type metadata accessor for Game);
  swift_storeEnumTagMultiPayload();
  sub_24E60169C(v13, v10, &qword_27F21D8F8, &qword_24F95ADB0);
  v19 = type metadata accessor for LeaderboardsPageView(0);
  v20 = a3 + v19[10];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  sub_24E615E00(v27, a3);
  *(a3 + 40) = a2;
  sub_24EDA56F0(v7, a3 + v19[6], type metadata accessor for GameSource);
  v21 = (a3 + v19[7]);
  *v21 = 0;
  v21[1] = 0;
  sub_24E60169C(v10, a3 + v19[8], &qword_27F21D8F8, &qword_24F95ADB0);
  type metadata accessor for LocalPlayerProvider(0);

  sub_24F928F28();

  sub_24EDA5758(v24, type metadata accessor for LeaderboardsOverviewPageIntent);
  sub_24E601704(v10, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24EDA5758(v7, type metadata accessor for GameSource);
  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_24E601704(v13, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24EDA5758(v16, type metadata accessor for Game);
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  *(a3 + v19[9]) = v26;
  return result;
}

uint64_t sub_24EDA2F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-1] - v7;
  v9 = type metadata accessor for GameSource(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LeaderboardSetDetailsPageIntent(0);
  v19[3] = v12;
  v19[4] = sub_24EDA595C(&qword_27F21D368, type metadata accessor for LeaderboardSetDetailsPageIntent, &unk_24F9C2E88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_24EDA56F0(a1, boxed_opaque_existential_1, type metadata accessor for LeaderboardSetDetailsPageIntent);
  sub_24EDA56F0(a1 + *(v12 + 20), v11, type metadata accessor for GameSource);
  sub_24E60169C(a1, v8, &qword_27F21D8F8, &qword_24F95ADB0);
  v14 = type metadata accessor for LeaderboardsPageView(0);
  v15 = a3 + v14[10];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  sub_24E615E00(v19, a3);
  *(a3 + 40) = a2;
  sub_24EDA56F0(v11, a3 + v14[6], type metadata accessor for GameSource);
  v16 = (a3 + v14[7]);
  *v16 = 0;
  v16[1] = 0;
  sub_24E60169C(v8, a3 + v14[8], &qword_27F21D8F8, &qword_24F95ADB0);
  type metadata accessor for LocalPlayerProvider(0);

  sub_24F928F28();

  sub_24EDA5758(a1, type metadata accessor for LeaderboardSetDetailsPageIntent);
  sub_24E601704(v8, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24EDA5758(v11, type metadata accessor for GameSource);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  *(a3 + v14[9]) = v18;
  return result;
}

uint64_t sub_24EDA3220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v5 = type metadata accessor for GameSource(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LeaderboardsListPageIntent(0);
  v31[3] = v17;
  v31[4] = sub_24EDA595C(&qword_27F21D370, type metadata accessor for LeaderboardsListPageIntent, &unk_24F95BCD4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  sub_24EDA56F0(a1, boxed_opaque_existential_1, type metadata accessor for LeaderboardsListPageIntent);
  sub_24EDA56F0(a1 + *(v17 + 20), v16, type metadata accessor for Game);
  v19 = (a1 + *(v17 + 24));
  v20 = v19[1];
  if (v20)
  {
    v26 = *v19;
  }

  else
  {
    v26 = 0;
  }

  sub_24E60169C(a1, v13, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24E615E00(v31, v30);
  sub_24EDA56F0(v16, v7, type metadata accessor for Game);
  swift_storeEnumTagMultiPayload();
  sub_24E60169C(v13, v10, &qword_27F21D8F8, &qword_24F95ADB0);
  v21 = type metadata accessor for LeaderboardsPageView(0);
  v22 = v21[10];
  v27 = a1;
  v23 = a3 + v22;
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  sub_24E615E00(v30, a3);
  *(a3 + 40) = v28;
  sub_24EDA56F0(v7, a3 + v21[6], type metadata accessor for GameSource);
  v24 = (a3 + v21[7]);
  *v24 = v26;
  v24[1] = v20;
  sub_24E60169C(v10, a3 + v21[8], &qword_27F21D8F8, &qword_24F95ADB0);
  type metadata accessor for LocalPlayerProvider(0);

  sub_24F928F28();

  sub_24E601704(v10, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24EDA5758(v7, type metadata accessor for GameSource);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_24E601704(v13, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24EDA5758(v16, type metadata accessor for Game);
  __swift_destroy_boxed_opaque_existential_1(v31);
  *(a3 + v21[9]) = v29;
  return sub_24EDA5758(v27, type metadata accessor for LeaderboardsListPageIntent);
}

uint64_t sub_24EDA35EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v44 = sub_24F9220D8();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F678, &qword_24F99CD10);
  MEMORY[0x28223BE20](v45);
  v46 = (&v40 - v5);
  v6 = type metadata accessor for LeaderboardsPageView(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F924848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(v6 + 40);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v49 = v15 & 1;
  }

  else
  {
    v40 = v11;

    sub_24F92BDC8();
    v16 = sub_24F9257A8();
    v42 = v4;
    v17 = v16;
    v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_24F921FD8();

    v4 = v42;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E83C01C(v15, 0);
    (*(v10 + 8))(v13, v40);
    v15 = v49;
  }

  v42 = v15;
  v18 = *(v6 + 32);
  v19 = *(v2 + 40);
  if (qword_27F211410 != -1)
  {
    swift_once();
  }

  v20 = v44;
  v21 = __swift_project_value_buffer(v44, qword_27F39E880);
  sub_24EDA56F0(v2, v8, type metadata accessor for LeaderboardsPageView);
  v22 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v23 = v2;
  v24 = swift_allocObject();
  sub_24EDA4D8C(v8, v24 + v22);
  sub_24E615E00(v23, v48);
  v25 = v43;
  (*(v3 + 16))(v43, v21, v20);
  v26 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = v19;
  *(v27 + 3) = sub_24EDA4DF0;
  *(v27 + 4) = v24;
  (*(v3 + 32))(&v27[v26], v25, v20);
  v28 = &v27[(v4 + v26 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v28 = sub_24EDA3ED4;
  v28[1] = 0;
  swift_retain_n();
  v29 = v46;
  sub_24EDA3F30(v48, v19, 1, sub_24EDA5240, v27, &qword_27F22F688, &qword_24F99CD80, sub_24EDA565C, v46);
  v30 = v29 + *(v45 + 36);
  sub_24E60169C(v23 + v18, v30, &qword_27F21D8F8, &qword_24F95ADB0);
  v31 = type metadata accessor for PageBackgroundViewModifier(0);
  *(v30 + *(v31 + 20)) = 0;
  *(v30 + *(v31 + 24)) = 0;
  v32 = type metadata accessor for Page.Background(0);
  v33 = (*(*(v32 - 8) + 48))(v23 + v18, 1, v32) == 1;
  v34 = v33 & v42;
  KeyPath = swift_getKeyPath();
  v36 = v29;
  v37 = v47;
  sub_24EDA55EC(v36, v47);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F680, &qword_24F99CD40);
  v39 = v37 + *(result + 36);
  *v39 = KeyPath;
  *(v39 + 8) = v34;
  return result;
}

uint64_t sub_24EDA3B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GameSource(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_24F92A708();
  sub_24F92CA38();
  v28 = v31;
  v29 = v30;
  v15 = type metadata accessor for Page(0);
  sub_24E60169C(a1 + *(v15 + 96), v14, &qword_27F21D8F8, &qword_24F95ADB0);
  v16 = type metadata accessor for LeaderboardsPageView(0);
  sub_24EDA56F0(a2 + v16[6], v11, type metadata accessor for GameSource);
  v17 = (a2 + v16[7]);
  v18 = v17[1];
  v27 = *v17;
  v19 = *(a2 + v16[9]);
  swift_getKeyPath();
  v30 = v19;
  sub_24EDA595C(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);

  sub_24F91FD88();

  v20 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24EDA56F0(v19 + v20, v8, type metadata accessor for Player);
  v21 = v28;
  *a3 = v29;
  a3[1] = v21;
  v22 = type metadata accessor for LeaderboardsCountHeaderItemIntent(0);
  sub_24E60169C(v14, a3 + v22[5], &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24EDA56F0(v11, a3 + v22[6], type metadata accessor for GameSource);
  v23 = (a3 + v22[7]);
  *v23 = v27;
  v23[1] = v18;
  sub_24EDA56F0(v8, a3 + v22[8], type metadata accessor for Player);
  v32 = &_s14descr2861AC041O5GamesON;
  v33 = sub_24EDA569C();
  LOBYTE(v30) = 0;
  v24 = sub_24F91FE68();
  sub_24EDA5758(v8, type metadata accessor for Player);
  sub_24EDA5758(v11, type metadata accessor for GameSource);
  sub_24E601704(v14, &qword_27F21D8F8, &qword_24F95ADB0);
  result = __swift_destroy_boxed_opaque_existential_1(&v30);
  *(a3 + v22[9]) = v24 & 1;
  return result;
}

uint64_t sub_24EDA3F30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v56 = a4;
  v57 = a8;
  v50 = a7;
  v61 = a5;
  v58 = a3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  MEMORY[0x28223BE20](v60);
  v59 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v53 = &v50 - v15;
  v16 = sub_24F92A498();
  v17 = *(v16 - 8);
  v51 = v16;
  v52 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F91F648();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  v62 = a1;
  sub_24E615E00(a1, v66);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, v50);
  v28 = v27[13];
  *(a9 + v28) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v29 = a9 + v27[14];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = a9 + v27[15];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v27[16];
  *(a9 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  swift_retain_n();
  sub_24F91F618();
  (*(v21 + 16))(v23, v26, v20);
  v32 = v51;
  sub_24F926F28();
  (*(v21 + 8))(v26, v20);
  v33 = a9 + v27[18];
  LOBYTE(v63) = 1;
  sub_24F926F28();
  v34 = v65;
  *v33 = v64;
  *(v33 + 1) = v34;
  v35 = (a9 + v27[30]);
  sub_24F929EB8();
  v63 = sub_24F929EA8();
  sub_24F926F28();
  v36 = v65;
  *v35 = v64;
  v35[1] = v36;
  sub_24E615E00(v66, a9 + v27[19]);
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v37 = v53;
  sub_24F92A448();
  v38 = v55;
  sub_24F92A408();
  (*(v54 + 8))(v37, v38);
  (*(v52 + 8))(v19, v32);
  v39 = v65;
  v40 = (a9 + v27[23]);
  *v40 = v64;
  v40[1] = v39;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928EF8();
  *(a9 + v27[25]) = v64;
  v41 = (a9 + v27[27]);
  v42 = v57;
  v43 = v61;
  *v41 = v56;
  v41[1] = v43;
  v44 = (a9 + v27[28]);
  *v44 = v42;
  v44[1] = a2;
  *(a9 + v27[20]) = a2;
  *(a9 + v27[22]) = v58 & 1;
  *(a9 + v27[21]) = 2;
  type metadata accessor for FeedRefreshNotifier(0);
  swift_retain_n();

  sub_24F928F28();
  *(a9 + v27[26]) = v64;
  type metadata accessor for NetworkConnectionMonitor(0);
  sub_24F928F28();
  *(a9 + v27[31]) = v64;
  v45 = __swift_project_boxed_opaque_existential_1(v66, v66[3]);
  v46 = MEMORY[0x28223BE20](v45);
  (*(v48 + 16))(&v50 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v46);
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  __swift_destroy_boxed_opaque_existential_1(v62);
  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_24EDA45F0()
{
  v1 = type metadata accessor for LeaderboardsPageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v0 + ((v2 + 16) & ~v2));
  __swift_destroy_boxed_opaque_existential_1(v3);

  v4 = v3 + v1[6];
  type metadata accessor for GameSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v15 = type metadata accessor for GameMAPI(0);
    v16 = *(v15 + 28);
    v17 = sub_24F9289E8();
    (*(*(v17 - 8) + 8))(&v4[v16], v17);

    v18 = *(v15 + 40);
    v19 = sub_24F928388();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(&v4[v18], 1, v19))
    {
      (*(v20 + 8))(&v4[v18], v19);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_12;
      }

      v6 = type metadata accessor for Game(0);
      v7 = v6[18];
      v8 = sub_24F9289E8();
      v9 = *(v8 - 8);
      v10 = *(v9 + 8);
      v10(&v4[v7], v8);
      v11 = v6[19];
      if (!(*(v9 + 48))(&v4[v11], 1, v8))
      {
        v10(&v4[v11], v8);
      }

      v12 = v6[21];
      v13 = sub_24F920818();
      v14 = *(v13 - 8);
      if (!(*(v14 + 48))(&v4[v12], 1, v13))
      {
        (*(v14 + 8))(&v4[v12], v13);
      }
    }
  }

LABEL_12:

  v21 = v3 + v1[8];
  v22 = type metadata accessor for Page.Background(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 1)
    {
      if (v24)
      {
        if (v24 == 1)
        {
          v26 = sub_24F9289E8();
          (*(*(v26 - 8) + 8))(v21, v26);
          v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v28 = sub_24F922348();
          v29 = *(v28 - 8);
          if (!(*(v29 + 48))(&v21[v27], 1, v28))
          {
            (*(v29 + 8))(&v21[v27], v28);
          }
        }
      }

      else
      {
        v41 = sub_24F9289E8();
        (*(*(v41 - 8) + 8))(v21, v41);
      }
    }

    else if (v24 == 2)
    {
      v30 = sub_24F9289E8();
      v31 = *(v30 - 8);
      if (!(*(v31 + 48))(v21, 1, v30))
      {
        (*(v31 + 8))(v21, v30);
      }

      v32 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48)];
      v33 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v33 - 1) + 48))(v32, 1, v33))
      {
        v34 = sub_24F91F4A8();
        (*(*(v34 - 8) + 8))(v32, v34);
        (*(v31 + 8))(&v32[v33[5]], v30);
        v35 = v33[9];
        v36 = sub_24F928698();
        v37 = *(v36 - 8);
        v42 = v35;
        v38 = &v32[v35];
        v39 = *(v37 + 48);
        if (!v39(v38, 1, v36))
        {
          (*(v37 + 8))(&v32[v42], v36);
        }

        v43 = v37;
        v40 = v33[10];
        if (!v39(&v32[v40], 1, v36))
        {
          (*(v43 + 8))(&v32[v40], v36);
        }
      }
    }

    else if (v24 == 3 || v24 == 4)
    {
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v21, v25);
    }
  }

  sub_24E83C01C(*(v3 + v1[10]), *(v3 + v1[10] + 8));

  return swift_deallocObject();
}

uint64_t sub_24EDA4D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardsPageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDA4DF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for LeaderboardsPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EDA3B58(a1, v6, a2);
}

uint64_t sub_24EDA4E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v33 = a5;
  v34 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F690, &qword_24F99CE18);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  sub_24EDA56F0(a1, a7, type metadata accessor for Page);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F698, &qword_24F99CE20);
  a3(a1);
  v19 = v18[19];
  v20 = sub_24F9220D8();
  (*(*(v20 - 8) + 16))(a7 + v19, a4, v20);
  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  *(a7 + v18[17]) = a2;
  v21 = (a7 + v18[20]);
  v22 = v34;
  *v21 = v33;
  v21[1] = v22;
  v23 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  sub_24E60169C(v17, v14, &qword_27F22F690, &qword_24F99CE18);

  sub_24F926F28();
  sub_24E601704(v17, &qword_27F22F690, &qword_24F99CE18);
  v24 = a7 + v18[22];
  v37 = 0;
  sub_24F926F28();
  v25 = v39;
  *v24 = v38;
  *(v24 + 8) = v25;
  v26 = v18[23];
  *(a7 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v27 = v18[24];
  *(a7 + v27) = swift_getKeyPath();
  result = swift_storeEnumTagMultiPayload();
  v29 = a7 + v18[25];
  v30 = v35;
  *v29 = KeyPath;
  *(v29 + 8) = 0;
  v31 = a7 + v18[26];
  *v31 = v30;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  return result;
}

uint64_t sub_24EDA515C()
{
  v1 = sub_24F9220D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EDA5240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_24F9220D8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_24EDA4E70(a1, v7, v8, v2 + v6, v10, v11, a2);
}

uint64_t sub_24EDA52F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v33 = a5;
  v34 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F6B0, &qword_24F99CEA8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  sub_24EDA56F0(a1, a7, type metadata accessor for Page);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F6B8, &unk_24F99CEB0);
  a3(a1);
  v19 = v18[19];
  v20 = sub_24F9220D8();
  (*(*(v20 - 8) + 16))(a7 + v19, a4, v20);
  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  *(a7 + v18[17]) = a2;
  v21 = (a7 + v18[20]);
  v22 = v34;
  *v21 = v33;
  v21[1] = v22;
  v23 = type metadata accessor for AchievementsCountHeaderItem(0);
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  sub_24E60169C(v17, v14, &qword_27F22F6B0, &qword_24F99CEA8);

  sub_24F926F28();
  sub_24E601704(v17, &qword_27F22F6B0, &qword_24F99CEA8);
  v24 = a7 + v18[22];
  v37 = 0;
  sub_24F926F28();
  v25 = v39;
  *v24 = v38;
  *(v24 + 8) = v25;
  v26 = v18[23];
  *(a7 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v27 = v18[24];
  *(a7 + v27) = swift_getKeyPath();
  result = swift_storeEnumTagMultiPayload();
  v29 = a7 + v18[25];
  v30 = v35;
  *v29 = KeyPath;
  *(v29 + 8) = 0;
  v31 = a7 + v18[26];
  *v31 = v30;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  return result;
}

uint64_t sub_24EDA55EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F678, &qword_24F99CD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EDA569C()
{
  result = qword_27F22F6A0;
  if (!qword_27F22F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F6A0);
  }

  return result;
}

uint64_t sub_24EDA56F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDA5758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EDA57BC()
{
  result = qword_27F22F6C0;
  if (!qword_27F22F6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F680, &qword_24F99CD40);
    sub_24EDA5874();
    sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F6C0);
  }

  return result;
}

unint64_t sub_24EDA5874()
{
  result = qword_27F22F6C8;
  if (!qword_27F22F6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F678, &qword_24F99CD10);
    sub_24E602068(&qword_27F22F6D0, &qword_27F22F688, &qword_24F99CD80, &unk_24FA0AFB0);
    sub_24EDA595C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F6C8);
  }

  return result;
}

uint64_t sub_24EDA595C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SponsoredSearchNativeAdvertData.init(adverts:odmlSuccess:installedStates:appliedPolicy:appStates:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

JSValue __swiftcall SponsoredSearchNativeAdvertData.makeValue(in:)(JSContext in)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  *(&v39 + 1) = v1[4];
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_27;
  }

  isa = result.super.isa;
  *&v39 = v5;
  if (!v3)
  {
    goto LABEL_8;
  }

  v11 = *(v3 + 16);
  if (v11)
  {
    v38 = v7;
    v48 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v12 = (v3 + 32);
    for (i = v11 - 1; ; --i)
    {
      v14 = v12[1];
      v47[0] = *v12;
      v47[1] = v14;
      v15 = v12[2];
      v16 = v12[3];
      v17 = v12[5];
      v47[4] = v12[4];
      v47[5] = v17;
      v47[2] = v15;
      v47[3] = v16;
      v18 = v12[3];
      v43 = v12[2];
      v44 = v18;
      v19 = v12[5];
      v45 = v12[4];
      v46 = v19;
      v20 = v12[1];
      v41 = *v12;
      v42 = v20;
      sub_24EDA5E3C(v47, v40);
      SponsoredSearchAdvert.makeValue(in:)(in);
      sub_24EDA5E98(v47);
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      if (!i)
      {
        break;
      }

      v12 += 6;
    }

    v21 = v48;
    v7 = v38;
    if (!v48)
    {
LABEL_8:
      v22 = in.super.isa;
      v23 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  *&v47[0] = v21;

  v24 = in.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8, &qword_24F99CEC0);
  v23 = sub_24F92CDE8();
  sub_24E601704(v47, &qword_27F223FA8, &qword_24F99CEC0);
LABEL_11:
  v25 = [v8 valueWithObject:v23 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v25)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_24F92C328();
  result.super.isa = [v8 valueWithBool:v4 inContext:in.super.isa];
  if (!result.super.isa)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_24F92C328();
  if (v6)
  {
    *&v47[0] = v6;
    v26 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EBD8, &qword_24F95DB28);
    v27 = sub_24F92CDE8();
    sub_24E601704(v47, &qword_27F21EBD8, &qword_24F95DB28);
  }

  else
  {
    v28 = in.super.isa;
    v27 = 0;
  }

  v29 = [v8 valueWithObject:v27 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v29)
  {
    goto LABEL_29;
  }

  sub_24F92C328();
  v30 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    v47[0] = v39;
    v31 = in.super.isa;

    v30 = sub_24F92CDE8();
    sub_24EB715C4(v47);
  }

  else
  {
    v32 = in.super.isa;
  }

  v33 = [v8 valueWithObject:v30 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v33)
  {
    goto LABEL_30;
  }

  sub_24F92C328();
  if (v7)
  {
    *&v47[0] = v7;
    v34 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    v35 = sub_24F92CDE8();
    sub_24E601704(v47, &qword_27F227A20, &qword_24F9482B0);
  }

  else
  {
    v36 = in.super.isa;
    v35 = 0;
  }

  v37 = [v8 valueWithObject:v35 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v37)
  {

    sub_24F92C328();
    return isa;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24EDA5EEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_24EDA5F48(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24EDA5FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v6 = sub_24F9294C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24F928698();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  v15 = *(v8 + 16);
  v15(v13, &v3[*(v14 + 20)], v7);
  if (*v3 == 1 && a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24F93DE60;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;
    v15(v10, v13, v7);
    v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v23[0] = v16;

    v17 = sub_24F928678();
    sub_24E98859C(v23, 0x497463656A627573, 0xEA00000000007364);
    v17(v22, 0);
    (*(v8 + 8))(v13, v7);
    (*(v8 + 32))(v13, v10, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8, &unk_24F967940);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93DE60;
  v15((v19 + v18), v13, v7);
  sub_24F9294B8();
  sub_24F928AA8();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_24EDA62A0()
{
  if (*v0)
  {
    return 0x447363697274656DLL;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_24EDA62E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x800000024FA5D320 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x447363697274656DLL && a2 == 0xEB00000000617461)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24EDA63D4(uint64_t a1)
{
  v2 = sub_24EDA6750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDA6410(uint64_t a1)
{
  v2 = sub_24EDA6750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayTogetherReviewMetricsInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_24F928698();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F6F0, &qword_24F99CF20);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v15 - v6;
  v8 = type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDA6750();
  sub_24F92D108();
  if (!v2)
  {
    v17 = v8;
    v11 = v20;
    v12 = v21;
    v24 = 0;
    v13 = v22;
    *v10 = sub_24F92CC38() & 1;
    v23 = 1;
    sub_24EDA67A4();
    v16 = v5;
    sub_24F92CC68();
    (*(v11 + 8))(v7, v13);
    (*(v18 + 32))(&v10[*(v17 + 20)], v16, v12);
    sub_24EDA67FC(v10, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for PlayTogetherReviewMetricsInfo(uint64_t a1)
{
  result = qword_27F22F700;
  if (!qword_27F22F700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EDA6750()
{
  result = qword_27F22F6F8;
  if (!qword_27F22F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F6F8);
  }

  return result;
}

unint64_t sub_24EDA67A4()
{
  result = qword_27F21EBD0;
  if (!qword_27F21EBD0)
  {
    sub_24F928698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EBD0);
  }

  return result;
}

uint64_t sub_24EDA67FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDA688C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_24F928698();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24EDA694C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_24F928698();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EDA69EC(uint64_t a1)
{
  result = sub_24F928698();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EDA6A7C()
{
  result = qword_27F22F710;
  if (!qword_27F22F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F710);
  }

  return result;
}

unint64_t sub_24EDA6AD4()
{
  result = qword_27F22F718;
  if (!qword_27F22F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F718);
  }

  return result;
}

unint64_t sub_24EDA6B2C()
{
  result = qword_27F22F720;
  if (!qword_27F22F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F720);
  }

  return result;
}

uint64_t ProductPageIconDimension.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EDA6C80()
{
  result = qword_27F22F728;
  if (!qword_27F22F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F728);
  }

  return result;
}

void static MetricsPipeline.objectGraphWithNewPipelineConfiguredWith(optInProviders:optOutProviders:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F929158();
  v114 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v106 - v10;
  v113 = sub_24F9290F8();
  v12 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v106 - v15;
  v127 = sub_24F92A278();
  v117 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F730, &qword_24F99D190);
  MEMORY[0x28223BE20](v18 - 8);
  v123 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v120 = &v106 - v21;
  v130 = sub_24F92A2C8();
  v22 = *(v130 - 1);
  MEMORY[0x28223BE20](v130);
  v129 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F738, &qword_24F99D198);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v122 = &v106 - v28;
  v29 = sub_24F929F48();
  MEMORY[0x28223BE20](v29);
  v134 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v119 = a1;
  if (!*(a1 + 16) && !*(a2 + 16))
  {

    return;
  }

  v124 = a2;
  v125 = v26;
  v108 = v12;
  v109 = v8;
  v116 = v16;
  v110 = v11;
  v111 = v6;
  v35 = &v106 - v32;
  v36 = v33;
  v37 = v34;
  v38 = sub_24F928FD8();
  v135 = v35;
  v115 = a3;
  v133 = v36;
  v106 = v38;
  sub_24F92A758();
  v39 = v119 + 64;
  v40 = 1 << *(v119 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v119 + 64);
  v43 = (v40 + 63) >> 6;
  v118 = v22 + 16;
  v128 = (v22 + 32);
  v121 = (v22 + 8);
  v132 = (v37 + 8);
  v107 = v37;
  v131 = (v37 + 32);

  v44 = 0;
  if (!v42)
  {
LABEL_7:
    if (v43 <= v44 + 1)
    {
      v46 = v44 + 1;
    }

    else
    {
      v46 = v43;
    }

    v47 = v46 - 1;
    v48 = v125;
    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v45 >= v43)
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F740, &qword_24F99D1A0);
        (*(*(v64 - 8) + 56))(v48, 1, 1, v64);
        v42 = 0;
        goto LABEL_15;
      }

      v42 = *(v39 + 8 * v45);
      ++v44;
      if (v42)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  while (1)
  {
    v45 = v44;
LABEL_14:
    v49 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v50 = v49 | (v45 << 6);
    v51 = v119;
    (*(v22 + 16))(v129, *(v119 + 48) + *(v22 + 72) * v50, v130);
    sub_24E615E00(*(v51 + 56) + 40 * v50, &v136);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F740, &qword_24F99D1A0);
    v53 = *(v52 + 48);
    v48 = v125;
    (*(v22 + 32))();
    sub_24E612C80(&v136, v48 + v53);
    (*(*(v52 - 8) + 56))(v48, 0, 1, v52);
    v47 = v45;
LABEL_15:
    v54 = v122;
    sub_24E6009C8(v48, v122, &qword_27F22F738, &qword_24F99D198);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F740, &qword_24F99D1A0);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {
      break;
    }

    v56 = *(v55 + 48);
    v57 = v129;
    v58 = v22;
    v59 = v130;
    (*v128)(v129, v54, v130);
    sub_24E612C80((v54 + v56), &v136);
    v61 = v134;
    v60 = v135;
    sub_24F929F18();
    __swift_destroy_boxed_opaque_existential_1(&v136);
    v62 = v59;
    v22 = v58;
    (*v121)(v57, v62);
    v63 = v133;
    (*v132)(v60, v133);
    (*v131)(v60, v61, v63);
    v44 = v47;
    if (!v42)
    {
      goto LABEL_7;
    }
  }

  v65 = v124;
  v66 = v124 + 64;
  v67 = 1 << *(v124 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v124 + 64);
  v70 = (v67 + 63) >> 6;
  v130 = (v117 + 32);
  v128 = (v117 + 16);
  v129 = (v117 + 8);

  v71 = 0;
  if (!v69)
  {
LABEL_23:
    if (v70 <= v71 + 1)
    {
      v73 = v71 + 1;
    }

    else
    {
      v73 = v70;
    }

    v74 = v73 - 1;
    v75 = v123;
    while (1)
    {
      v72 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_39;
      }

      if (v72 >= v70)
      {
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F748, &qword_24F99D1A8);
        (*(*(v93 - 8) + 56))(v75, 1, 1, v93);
        v69 = 0;
        goto LABEL_32;
      }

      v69 = *(v66 + 8 * v72);
      ++v71;
      if (v69)
      {
        v65 = v124;
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v72 = v71;
LABEL_31:
    v76 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    v77 = v76 | (v72 << 6);
    v78 = v117;
    v80 = v126;
    v79 = v127;
    (*(v117 + 16))(v126, *(v65 + 48) + *(v117 + 72) * v77, v127);
    sub_24E615E00(*(v65 + 56) + 40 * v77, &v136);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F748, &qword_24F99D1A8);
    v82 = *(v81 + 48);
    v83 = *(v78 + 32);
    v75 = v123;
    v83(v123, v80, v79);
    sub_24E612C80(&v136, &v75[v82]);
    (*(*(v81 - 8) + 56))(v75, 0, 1, v81);
    v74 = v72;
LABEL_32:
    v84 = v75;
    v85 = v120;
    sub_24E6009C8(v84, v120, &qword_27F22F730, &qword_24F99D190);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F748, &qword_24F99D1A8);
    if ((*(*(v86 - 8) + 48))(v85, 1, v86) == 1)
    {
      break;
    }

    v87 = *(v86 + 48);
    v89 = v126;
    v88 = v127;
    (*v130)(v126, v85, v127);
    sub_24E612C80((v85 + v87), &v136);
    v90 = v134;
    v91 = v135;
    sub_24F929F28();
    __swift_destroy_boxed_opaque_existential_1(&v136);
    (*v129)(v89, v88);
    v92 = v133;
    (*v132)(v91, v133);
    (*v131)(v91, v90, v92);
    v71 = v74;
    v65 = v124;
    if (!v69)
    {
      goto LABEL_23;
    }
  }

  v94 = v112;
  v95 = v113;
  sub_24F92A758();
  v96 = v116;
  sub_24F9290C8();
  v97 = v108;
  v98 = *(v108 + 8);
  v130 = (v108 + 8);
  v131 = v98;
  (v98)(v94, v95);
  v129 = *(v97 + 16);
  (v129)(v94, v96, v95);
  v99 = v110;
  sub_24F929118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8, &qword_24F9BF190);
  v128 = (2 * *(*(sub_24F928188() - 8) + 72));
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_24F9479A0;
  v101 = v114;
  v102 = v111;
  (*(v114 + 16))(v109, v99, v111);
  sub_24F928168();
  (v129)(v94, v116, v95);
  sub_24F928168();
  v103 = v107 + 16;
  v104 = v135;
  v105 = v133;
  (*(v107 + 16))(v134, v135, v133);
  sub_24F928168();
  *&v136 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F750, &qword_24F99D1B0);
  sub_24EDA7A80();
  sub_24F928F98();

  (*(v101 + 8))(v99, v102);
  (v131)(v116, v95);
  (*(v103 - 8))(v104, v105);
}

unint64_t sub_24EDA7A80()
{
  result = qword_27F22F758;
  if (!qword_27F22F758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F750, &qword_24F99D1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F758);
  }

  return result;
}

uint64_t MixedMediaLockupLayout.LockupPosition.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

double sub_24EDA7B70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2297E0, &unk_24F99D420);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22F7A0, &qword_24F9C0EB0);
  v1 = swift_allocObject();
  *(v1 + 16) = KeyPath;
  result = 2.0;
  *(v1 + 24) = xmmword_24F99D1D0;
  qword_27F39C838 = v1;
  return result;
}

__n128 MixedMediaLockupLayout.init(metrics:lockupView:media:tagline:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[4];
  *(a5 + 200) = a1[5];
  v9 = a1[7];
  *(a5 + 216) = a1[6];
  *(a5 + 232) = v9;
  *(a5 + 248) = a1[8];
  v10 = *a1;
  *(a5 + 136) = a1[1];
  v11 = a1[3];
  *(a5 + 152) = a1[2];
  *(a5 + 168) = v11;
  *(a5 + 184) = v8;
  *(a5 + 120) = v10;
  sub_24E612C80(a2, a5);
  sub_24E612C80(a3, a5 + 40);
  result = *a4;
  v13 = *(a4 + 16);
  *(a5 + 80) = *a4;
  *(a5 + 96) = v13;
  *(a5 + 112) = *(a4 + 32);
  return result;
}

uint64_t MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = *a1;
  *(a7 + 8) = a2;
  sub_24E612C80(a3, a7 + 16);
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  result = sub_24E612C80(a6, a7 + 72);
  *(a7 + 112) = a8;
  *(a7 + 120) = a9;
  *(a7 + 128) = a10;
  *(a7 + 136) = a11;
  return result;
}

uint64_t MixedMediaLockupLayout.Metrics.taglineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t MixedMediaLockupLayout.Metrics.verticalSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 72));

  return sub_24E612C80(a1, v1 + 72);
}

void MixedMediaLockupLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
}

double MixedMediaLockupLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  sub_24EDA8134(a1, &v8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(&v8, v9);
    sub_24F922288();
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    sub_24E601704(&v8, &qword_27F22F768, &qword_24F99D1E8);
  }

  sub_24EDA8514(&v8);
  _VerticalFlowLayout.measurements(fitting:in:)(a1, a2, a3);

  return *(v3 + 240) + *(v3 + 256) + a2;
}

void sub_24EDA8134(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v2 + 80, &v31, &unk_27F22B200, &unk_24F9674C0);
  v10 = *(&v32 + 1);
  sub_24E601704(&v31, &unk_27F22B200, &unk_24F9674C0);
  if (!v10 && *(v2 + 184) != 1)
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return;
  }

  v11 = *(v2 + 128);
  if (qword_27F2106E8 != -1)
  {
    swift_once();
  }

  *&v31 = qword_27F39C838;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v9);
  v13 = v12;
  v14 = v12;
  v15 = *(v7 + 8);
  v15(v9, v6);

  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = a2;
  v16 = v11 * v13;
  if ((v11 * v13) >> 64 != v16 >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_24E60169C(v3 + 80, &v31, &unk_27F22B200, &unk_24F9674C0);
  if (!*(&v32 + 1))
  {
    sub_24E601704(&v31, &unk_27F22B200, &unk_24F9674C0);
    goto LABEL_16;
  }

  v29 = v33;
  v27 = __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  v30 = qword_27F39C838;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v9);
  v18 = v17;
  v19 = v17;
  v15(v9, v6);

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 * v18) >> 64 != (v11 * v18) >> 63)
  {
LABEL_27:
    __break(1u);
    return;
  }

  sub_24F922478();
  __swift_destroy_boxed_opaque_existential_1(&v31);
LABEL_16:
  v20 = *(v3 + 120);
  v29 = *(v3 + 176);
  sub_24E615E00(v3 + 136, &v32 + 8);
  LOBYTE(v31) = v20;
  *(&v31 + 1) = v16;
  *&v32 = v29;
  v21 = v28;
  *(v28 + 3) = &type metadata for LineCountTextLayout;
  v21[4] = sub_24EDA8F9C();
  v21[5] = sub_24EDA8FF0();
  v22 = swift_allocObject();
  *v21 = v22;
  sub_24E60169C(v3 + 80, (v22 + 5), &unk_27F22B200, &unk_24F9674C0);
  v23 = v32;
  v22[1] = v31;
  v22[2] = v23;
  v24 = v34;
  v22[3] = v33;
  v22[4] = v24;
  v25 = v29;

  v26 = v25;
}

uint64_t sub_24EDA8514@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = 1;
  v63 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D839F8];
  v5 = MEMORY[0x277D22A30];
  *(&v48 + 1) = MEMORY[0x277D839F8];
  *&v49 = MEMORY[0x277D22A30];
  *&v47 = 0;
  *(&v39 + 1) = MEMORY[0x277D839F8];
  *&v40 = MEMORY[0x277D22A30];
  *&v38 = 0;
  sub_24E615E00(v1, v58);
  sub_24E615E00(&v47, &v60);
  sub_24E60169C(&v38, v61, &qword_27F22F780, &qword_24F968620);
  v59 = 0;
  v61[5] = 0;
  sub_24E601704(&v38, &qword_27F22F780, &qword_24F968620);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v57[3] = v4;
  v57[4] = v5;
  v56[4] = v5;
  v57[0] = 0;
  v56[3] = v4;
  v56[0] = 0;
  if ((*(v1 + 120) & 1) == 0)
  {
    sub_24E9D682C(v58, &v47);
    v7 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v7 = sub_24E617A24((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v10;
    v11 = &v7[136 * v9];
    *(v11 + 2) = v47;
    v12 = v48;
    v13 = v49;
    v14 = v51;
    *(v11 + 5) = v50;
    *(v11 + 6) = v14;
    *(v11 + 3) = v12;
    *(v11 + 4) = v13;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    *(v11 + 20) = v55;
    *(v11 + 8) = v16;
    *(v11 + 9) = v17;
    *(v11 + 7) = v15;
    __swift_assign_boxed_opaque_existential_1(v57, (v2 + 192));
    sub_24E615E00(v56, &v52 + 8);
    sub_24E615E00(v2 + 40, &v47);
    sub_24E615E00(v57, &v50);
    WORD4(v49) = 0;
    v55 = 0;
    v18 = *(v7 + 2);
    if (!v18)
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_24E9D682C(&v47, &v38);
    v19 = *(v7 + 2);
    if (v19)
    {
      v63 = v7;
      if (v19 < *(v7 + 3) >> 1)
      {
LABEL_10:
        sub_24EDAAC3C(1uLL, 1, 1, &v38);
        sub_24E9D6888(&v47);
        sub_24E9D6888(v58);
        v20 = v62;
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    v7 = sub_24E617A24(1, v19 + 1, 1, v7);
    v63 = v7;
    goto LABEL_10;
  }

  sub_24E60169C(v1 + 80, &v47, &unk_27F22B200, &unk_24F9674C0);
  if (!*(&v48 + 1))
  {
    sub_24E601704(&v47, &unk_27F22B200, &unk_24F9674C0);
LABEL_12:
    if (*(v2 + 184) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
  v6 = sub_24F9221E8();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  __swift_assign_boxed_opaque_existential_1(v57, (v2 + 192));
LABEL_14:
  __swift_assign_boxed_opaque_existential_1(v56, (v2 + 192));
  sub_24E615E00(v56, &v52 + 8);
  sub_24E615E00(v2 + 40, &v47);
  sub_24E615E00(v57, &v50);
  WORD4(v49) = 0;
  v55 = 0;
  sub_24E9D682C(&v47, &v38);
  v7 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v7 + 2);
  v18 = *(v7 + 3);
  v10 = v2 + 1;
  if (v2 >= v18 >> 1)
  {
LABEL_20:
    v7 = sub_24E617A24((v18 > 1), v10, 1, v7);
  }

  sub_24E9D6888(&v47);
  *(v7 + 2) = v10;
  v21 = &v7[136 * v2];
  v22 = v42;
  v23 = v40;
  v24 = v39;
  *(v21 + 5) = v41;
  *(v21 + 6) = v22;
  *(v21 + 3) = v24;
  *(v21 + 4) = v23;
  v25 = v45;
  v26 = v44;
  v27 = v43;
  *(v21 + 20) = v46;
  *(v21 + 8) = v26;
  *(v21 + 9) = v25;
  *(v21 + 7) = v27;
  *(v21 + 2) = v38;
  sub_24E9D682C(v58, &v47);
  v28 = *(v7 + 3);
  v29 = v2 + 2;
  if (v29 > (v28 >> 1))
  {
    v7 = sub_24E617A24((v28 > 1), v29, 1, v7);
  }

  sub_24E9D6888(v58);
  *(v7 + 2) = v29;
  v30 = &v7[136 * v10];
  v31 = v51;
  v33 = v48;
  v32 = v49;
  *(v30 + 5) = v50;
  *(v30 + 6) = v31;
  *(v30 + 3) = v33;
  *(v30 + 4) = v32;
  v35 = v53;
  v34 = v54;
  v36 = v52;
  *(v30 + 20) = v55;
  *(v30 + 8) = v35;
  *(v30 + 9) = v34;
  *(v30 + 7) = v36;
  *(v30 + 2) = v47;
  v20 = 1;
LABEL_18:
  *a1 = v20;
  *(a1 + 8) = v7;
  __swift_destroy_boxed_opaque_existential_1(v56);
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t MixedMediaLockupLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F770, &qword_24F99D1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  sub_24F92C1C8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_24EDA8134(a1, v40);
  sub_24E60169C(v40, &v37, &qword_27F22F768, &qword_24F99D1E8);
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1(&v37, v39);
    sub_24F922288();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    sub_24E601704(&v37, &qword_27F22F768, &qword_24F99D1E8);
    v21 = 0.0;
  }

  v22 = *(v6 + 120);
  v41.origin.x = v13;
  v41.origin.y = v15;
  v41.size.width = v17;
  v41.size.height = v19;
  MinX = CGRectGetMinX(v41);
  v23 = v13;
  v24 = v15;
  v25 = v17;
  v26 = v19;
  if (v22)
  {
    Width = CGRectGetWidth(*&v23);
    v42.origin.x = v13;
    v42.origin.y = v15;
    v42.size.width = v17;
    v42.size.height = v19;
    Height = CGRectGetHeight(v42);
    v43.origin.x = v13;
    v43.origin.y = v15;
    v43.size.width = v17;
    v43.size.height = v19;
    CGRectGetMinX(v43);
    v44.origin.x = v13;
    v44.origin.y = v15;
    v44.size.width = v17;
    v44.size.height = v19;
    CGRectGetMinY(v44);
    MinY = v21;
  }

  else
  {
    MinY = CGRectGetMinY(*&v23);
    v45.origin.x = v13;
    v45.origin.y = v15;
    v45.size.width = v17;
    v45.size.height = v19;
    Width = CGRectGetWidth(v45);
    v46.origin.x = v13;
    v46.origin.y = v15;
    v46.size.width = v17;
    v46.size.height = v19;
    Height = CGRectGetHeight(v46);
    v47.origin.x = v13;
    v47.origin.y = v15;
    v47.size.width = v17;
    v47.size.height = v19;
    CGRectGetMinX(v47);
    v48.origin.x = v13;
    v48.origin.y = v15;
    v48.size.width = v17;
    v48.size.height = v19;
    CGRectGetMaxY(v48);
  }

  v49.origin.x = v13;
  v49.origin.y = v15;
  v49.size.width = v17;
  v49.size.height = v19;
  CGRectGetWidth(v49);
  sub_24EDA8514(&v37);
  v28 = v37;
  v29 = v38;
  sub_24E60169C(v40, &v37, &qword_27F22F768, &qword_24F99D1E8);
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1(&v37, v39);
    sub_24F922AC8();
    v30 = sub_24F9221D8();
    (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
    sub_24E601704(v11, &qword_27F22F770, &qword_24F99D1F0);
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    sub_24E601704(&v37, &qword_27F22F768, &qword_24F99D1E8);
    v31 = sub_24F9221D8();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    sub_24E601704(v11, &qword_27F22F770, &qword_24F99D1F0);
  }

  LOBYTE(v37) = v28;
  v38 = v29;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(x8_0, MinX, MinY, Width, Height - v21);
  sub_24E601704(v40, &qword_27F22F768, &qword_24F99D1E8);
}

unint64_t sub_24EDA8D9C()
{
  result = qword_27F22F778;
  if (!qword_27F22F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F778);
  }

  return result;
}

uint64_t sub_24EDA8DF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_24EDA8E40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EDA8EE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EDA8F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EDA8F9C()
{
  result = qword_27F22F788;
  if (!qword_27F22F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F788);
  }

  return result;
}

unint64_t sub_24EDA8FF0()
{
  result = qword_27F22F790;
  if (!qword_27F22F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F790);
  }

  return result;
}

uint64_t sub_24EDA9044()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  }

  return swift_deallocObject();
}

__n128 sub_24EDA90A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t ResilientDeepLinkController.DeepLinkPreferenceKey.lookupName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ResilientDeepLinkController.DeepLinkPreferenceKey.lookupName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ResilientDeepLinkController.DeepLinkPreferenceKey.encode(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AppStoreDeepLink(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24F4589D0(0, v8, 0);
    v9 = v17;
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_24EDAB80C(v10, v7);
      v12 = sub_24EB74C5C();
      sub_24EDAB870(v7);
      v17 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_24F4589D0((v13 > 1), v14 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + 8 * v14 + 32) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F7B0, &qword_24F99D430);
  a2[3] = result;
  *a2 = v9;
  return result;
}

uint64_t ResilientDeepLinkController.DeepLinkPreferenceKey.decode(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E643A9C(a1, v14);
  sub_24F928378();
  sub_24F9282B8();
  v9 = sub_24F92AC28();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    (*(v6 + 8))(v8, v5);
    sub_24E601704(v4, &qword_27F2213B0, &qword_24F965EC0);
    return 0;
  }

  else
  {
    type metadata accessor for AppStoreDeepLink(0);
    v12 = sub_24F92ABB8();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v4, v9);
    return v12;
  }
}

double sub_24EDA9504@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F928388();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return sub_24EB74210(v7, a2);
}

uint64_t sub_24EDA95F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ResilientDeepLinkController.DeepLinkPreferenceKey.decode(_:)(a1);
  *a2 = result;
  return result;
}

void static ResilientDeepLinkController.storeDeepLink(_:bag:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - v6;
  if (a2)
  {
    v8 = (a1 + *(type metadata accessor for AppStoreDeepLink(0) + 20));
    v10 = *v8;
    v9 = v8[1];

    v11 = ASKBagContract.resilientDeepLinkPatterns.getter();
    v12 = v11;
    v13 = v11[2];
    if (v13)
    {
      v21[0] = a1;
      v21[1] = a2;
      v14 = 0;
      v15 = v11 + 5;
      while (v14 < v12[2])
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v21[4] = v10;
        v21[5] = v9;
        v21[2] = v16;
        v21[3] = v17;
        v18 = sub_24F91F7C8();
        (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
        sub_24E600AEC();

        sub_24F92C5B8();
        v20 = v19;
        sub_24E601704(v7, &qword_27F21FAD8, &qword_24F961870);

        if ((v20 & 1) == 0)
        {

          goto LABEL_12;
        }

        ++v14;
        v15 += 2;
        if (v13 == v14)
        {

          return;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
LABEL_12:
    MEMORY[0x28223BE20](v5);
    sub_24EDABA08(sub_24EDAB8CC);
  }
}

BOOL sub_24EDA9874(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreDeepLink(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = 0;
  v26 = a1;
  v12 = *a1;
  v13 = *(*a1 + 16);
  while (1)
  {
    v14 = v11;
    if (v13 == v11)
    {
      break;
    }

    if (v11 >= v12[2])
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_24EDAB80C(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v10);
    v15 = *(v4 + 20);
    v16 = *&v10[v15];
    v17 = *&v10[v15 + 8];
    v18 = (a2 + v15);
    if (v16 == *v18 && v17 == v18[1])
    {
      sub_24EDAB870(v10);
      return v13 == v14;
    }

    ++v11;
    v20 = sub_24F92CE08();
    sub_24EDAB870(v10);
    if (v20)
    {
      return v13 == v14;
    }
  }

  sub_24EDAB80C(a2, v7);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_17:
  v12 = sub_24E6193D8(0, v12[2] + 1, 1, v12);
LABEL_11:
  v21 = v26;
  v23 = v12[2];
  v22 = v12[3];
  if (v23 >= v22 >> 1)
  {
    v12 = sub_24E6193D8((v22 > 1), v23 + 1, 1, v12);
  }

  v12[2] = v23 + 1;
  sub_24EB76568(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23);
  *v21 = v12;
  return v13 == v14;
}

uint64_t static ResilientDeepLinkController.fetchLatestResilientDeepLink(bag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8, &qword_24F9730D8);
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v31 - v8;
  v9 = type metadata accessor for AppStoreDeepLink(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v46 = 0xD000000000000014;
  v47 = 0x800000024FA5D340;
  sub_24EDABB9C();
  sub_24F928838();

  result = v44;
  if (!v44)
  {
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  v32 = a2;
  v14 = *(v44 + 16);
  if (v14)
  {
    v39 = v44 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v40 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
    v38 = (v7 + 8);
    v36 = v10;
    v37 = v9;
    v31[1] = a1;
    v34 = v44;
    v35 = v12;
    while (v14 <= *(result + 16))
    {
      v15 = *(v10 + 72);
      v41 = v14 - 1;
      v33 = v39 + v15 * (v14 - 1);
      sub_24EDAB80C(v33, v12);
      v16 = &v12[*(v9 + 20)];
      v18 = *v16;
      v17 = v16[1];
      if (qword_27F210A88 != -1)
      {
        swift_once();
      }

      v19 = v42;
      sub_24F92A428();
      v20 = v43;
      sub_24F92A3F8();
      (*v38)(v19, v20);
      if (!v46 || (v21 = sub_24E9E2340(v46), result = , !v21))
      {

        v21 = &unk_2861C0B48;
      }

      v22 = v21[2];
      if (v22)
      {
        v23 = 0;
        v24 = v21 + 5;
        while (v23 < v21[2])
        {
          v25 = *(v24 - 1);
          v26 = *v24;
          v46 = v18;
          v47 = v17;
          v44 = v25;
          v45 = v26;
          v27 = sub_24F91F7C8();
          (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
          sub_24E600AEC();

          sub_24F92C5B8();
          v29 = v28;
          sub_24E601704(v6, &qword_27F21FAD8, &qword_24F961870);

          if ((v29 & 1) == 0)
          {

            sub_24EDAB870(v35);
            v30 = v32;
            sub_24EDAB80C(v33, v32);

            return (*(v36 + 56))(v30, 0, 1, v37);
          }

          ++v23;
          v24 += 2;
          if (v22 == v23)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:

      v12 = v35;
      sub_24EDAB870(v35);
      v10 = v36;
      v9 = v37;
      result = v34;
      v14 = v41;
      if (!v41)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    return (*(v10 + 56))(v32, 1, 1, v9);
  }

  return result;
}

void static ResilientDeepLinkController.removeNonResilientDeepLinks(bag:)(uint64_t a1)
{
  v79 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8, &qword_24F9730D8);
  v83 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = v66 - v1;
  v78 = type metadata accessor for AppStoreDeepLink(0);
  v2 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v70 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = v66 - v5;
  MEMORY[0x28223BE20](v6);
  v84 = v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v66 - v9;
  v11 = sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v86 = 0xD000000000000014;
  v87 = 0x800000024FA5D340;
  v67 = 0x800000024FA5D340;
  v12 = sub_24EDABB9C();
  v68 = v11;
  v66[1] = v12;
  sub_24F928838();

  if (v90)
  {
    v13 = v90;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v92 = v13;
  v69 = v13[2];
  if (!v69)
  {
LABEL_13:
    v30 = v13[2];
    v31 = v30;
    goto LABEL_45;
  }

  v14 = 0;
  v82 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = v13 + v82;
  v16 = *(v2 + 72);
  v85 = v13;
  v77 = v16;
  v81 = v13 + v82;
  while (2)
  {
    v72 = v14;
    v17 = &v15[v16 * v14 + *(v78 + 20)];
    v18 = *v17;
    v19 = v17[1];
    v20 = ASKBagContract.resilientDeepLinkPatterns.getter();
    v21 = v20;
    v22 = v20[2];
    if (v22)
    {
      v23 = 0;
      v24 = v20 + 5;
      while (1)
      {
        if (v23 >= v21[2])
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v25 = *(v24 - 1);
        v26 = *v24;
        v86 = v18;
        v87 = v19;
        v90 = v25;
        v91 = v26;
        v27 = sub_24F91F7C8();
        (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
        sub_24E600AEC();

        sub_24F92C5B8();
        v29 = v28;
        sub_24E601704(v10, &qword_27F21FAD8, &qword_24F961870);

        if ((v29 & 1) == 0)
        {
          break;
        }

        ++v23;
        v24 += 2;
        if (v22 == v23)
        {
          goto LABEL_14;
        }
      }

      v14 = v72 + 1;
      v13 = v85;
      v16 = v77;
      v15 = v81;
      if (v72 + 1 != v69)
      {
        continue;
      }

      goto LABEL_13;
    }

    break;
  }

LABEL_14:

  v30 = v72 + 1;
  if (__OFADD__(v72, 1))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v73 = (v83 + 8);
  v74 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v13 = v85;
  v32 = v77;
  while (1)
  {
    v33 = v13[2];
    if (v30 == v33)
    {
      break;
    }

    if (v30 >= v33)
    {
      goto LABEL_60;
    }

    v34 = v13 + v82;
    v83 = v30;
    v35 = v30 * v32;
    v36 = v84;
    sub_24EDAB80C(v13 + v82 + v30 * v32, v84);
    v37 = (v36 + *(v78 + 20));
    v38 = *v37;
    v39 = v37[1];
    if (qword_27F210A88 != -1)
    {
      swift_once();
    }

    v80 = v35;
    v40 = v75;
    sub_24F92A428();
    v41 = v76;
    sub_24F92A3F8();
    (*v73)(v40, v41);
    v85 = v13;
    v81 = v34;
    if (!v86 || (v42 = sub_24E9E2340(v86), , !v42))
    {

      v42 = &unk_2861C0B78;
    }

    v43 = v42[2];
    if (v43)
    {
      v44 = 0;
      v45 = v42 + 5;
      while (1)
      {
        if (v44 >= v42[2])
        {
          __break(1u);
          goto LABEL_59;
        }

        v46 = *(v45 - 1);
        v47 = *v45;
        v86 = v38;
        v87 = v39;
        v90 = v46;
        v91 = v47;
        v48 = sub_24F91F7C8();
        (*(*(v48 - 8) + 56))(v10, 1, 1, v48);
        sub_24E600AEC();

        sub_24F92C5B8();
        v50 = v49;
        sub_24E601704(v10, &qword_27F21FAD8, &qword_24F961870);

        if ((v50 & 1) == 0)
        {
          break;
        }

        ++v44;
        v45 += 2;
        if (v43 == v44)
        {
          goto LABEL_16;
        }
      }

      sub_24EDAB870(v84);
      v51 = v72;
      v52 = v83;
      if (v72 == v83)
      {
        v13 = v85;
        v32 = v77;
      }

      else
      {
        v13 = v85;
        v32 = v77;
        if (v72 < 0)
        {
          goto LABEL_63;
        }

        v53 = v85[2];
        if (v72 >= v53)
        {
          goto LABEL_64;
        }

        v54 = v72 * v77;
        v55 = v81;
        sub_24EDAB80C(&v81[v72 * v77], v71);
        if (v52 >= v53)
        {
          goto LABEL_65;
        }

        v56 = v80;
        sub_24EDAB80C(&v55[v80], v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_24ECDE2E0(v13);
        }

        v57 = v13 + v82;
        sub_24EDABBF0(v70, v13 + v82 + v54);
        if (v52 >= v13[2])
        {
          goto LABEL_66;
        }

        sub_24EDABBF0(v71, &v57[v56]);
        v51 = v72;
      }

      v58 = __OFADD__(v51, 1);
      v59 = v51 + 1;
      if (v58)
      {
        goto LABEL_62;
      }

      v72 = v59;
      v58 = __OFADD__(v52, 1);
      v30 = v52 + 1;
      if (v58)
      {
        goto LABEL_61;
      }
    }

    else
    {
LABEL_16:

      sub_24EDAB870(v84);
      v13 = v85;
      v32 = v77;
      v30 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_61;
      }
    }
  }

  v31 = v72;
  if (v30 < v72)
  {
    goto LABEL_69;
  }

  if (v72 < 0)
  {
LABEL_70:
    __break(1u);
    return;
  }

LABEL_45:
  v60 = v31;
  v61 = v31 - v30;
  v62 = v30 + v61;
  if (__OFADD__(v30, v61))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = v13;
  if (!isUniquelyReferenced_nonNull_native || v62 > v13[3] >> 1)
  {
    if (v30 <= v62)
    {
      v64 = v62;
    }

    else
    {
      v64 = v30;
    }

    v13 = sub_24E6193D8(isUniquelyReferenced_nonNull_native, v64, 1, v13);
    v92 = v13;
  }

  sub_24EDAC24C(v60, v30, 0, type metadata accessor for AppStoreDeepLink);
  v65 = v13[2];
  if (v69 == v65)
  {
  }

  else
  {
    if (v65)
    {
      _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
      v90 = v13;
      v86 = 0xD000000000000014;
      v87 = v67;
      sub_24F928848();
    }

    else
    {

      _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
      v88 = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
      v89 = sub_24EDABC54();
      v86 = 0xD000000000000014;
      v87 = v67;
      sub_24F929358();

      __swift_destroy_boxed_opaque_existential_1(&v86);
    }

    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    sub_24F929368();
  }
}

double static ResilientDeepLinkController.removeAllDeepLinks()()
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v1[3] = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
  v1[4] = sub_24EDABC54();
  v1[0] = 0xD000000000000014;
  v1[1] = 0x800000024FA5D340;
  sub_24F929358();

  __swift_destroy_boxed_opaque_existential_1(v1);
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  sub_24F929368();

  return result;
}

uint64_t static ResilientDeepLinkController.preventDismissingArticlesForFlowUrl(_:bag:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26[-v8];
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = _s12GameStoreKit27ResilientDeepLinkControllerO03hasdE5Links3bagSbAA14ASKBagContractC_tFZ_0(a2);
  sub_24E99091C(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &qword_27F228530, &unk_24F93C6E0);
    return 0;
  }

  v27 = v14;
  v28 = v11;
  v29 = v10;
  (*(v11 + 32))(v13, v9, v10);
  result = ASKBagContract.resilientDeepLinkFinancePatterns.getter();
  v16 = result;
  v17 = *(result + 16);
  if (!v17)
  {
LABEL_8:

    (*(v28 + 8))(v13, v29);
    return 0;
  }

  v18 = 0;
  v19 = (result + 40);
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
      __break(1u);
      return result;
    }

    v20 = *(v19 - 1);
    v21 = *v19;

    v32 = sub_24F91F398();
    v33 = v22;
    v30 = v20;
    v31 = v21;
    v23 = sub_24F91F7C8();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    sub_24E600AEC();
    sub_24F92C5B8();
    v25 = v24;
    sub_24E601704(v6, &qword_27F21FAD8, &qword_24F961870);

    if ((v25 & 1) == 0)
    {
      break;
    }

    ++v18;
    v19 += 2;
    if (v17 == v18)
    {
      goto LABEL_8;
    }
  }

  (*(v28 + 8))(v13, v29);

  return (v27 & 1) != 0;
}

unint64_t sub_24EDAAC3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 136 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 136 * a3;
      v15 = (v9 + 32 + 136 * a2);
      if (result != v15 || result >= v15 + 136 * v14)
      {
        result = memmove(result, v15, 136 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_24E601704(a4, &qword_27F22F7D0, &qword_24F99D510);
  }

  result = sub_24E9D682C(a4, v10);
  if (a3 == 1)
  {
    return sub_24E601704(a4, &qword_27F22F7D0, &qword_24F99D510);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_24EDAAD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v13 = *v7;
  result = a5(0);
  v15 = *(result - 8);
  v16 = *(v15 + 72);
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = result;
  v29 = a6;
  v30 = a7;
  v19 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v20 = v19 + v16 * a1;
  result = swift_arrayDestroy();
  v21 = a3 - v17;
  if (__OFSUB__(a3, v17))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v16 * a3;
  if (v21)
  {
    v23 = *(v13 + 16);
    if (!__OFSUB__(v23, a2))
    {
      result = v20 + v22;
      v24 = v19 + v16 * a2;
      if (v20 + v22 < v24 || result >= v24 + (v23 - a2) * v16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v24)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v26 = *(v13 + 16);
      v27 = __OFADD__(v26, v21);
      v28 = v26 + v21;
      if (!v27)
      {
        *(v13 + 16) = v28;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_24E601704(a4, v29, v30);
  }

  if (v22 < 1)
  {
    return sub_24E601704(a4, v29, v30);
  }

  result = (*(v15 + 16))(v20, a4, v18);
  if (v16 >= v22)
  {
    return sub_24E601704(a4, v29, v30);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24EDAAF08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for GuidedSearchToken(0);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDAAF70(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __n128))
{
  v3 = sub_24EDAAFD4(a1);
  v4 = v3[2];

  return (a2)(v3 + 4, v4);
}

void *sub_24EDAAFD4(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_24E6B8BBC(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

unint64_t sub_24EDAB0D8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_24EDAB198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = type metadata accessor for AppStoreDeepLink(0);
  v8 = 0;
  v9 = a1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
  v10 = *(*(v7 - 8) + 72);
  while (1)
  {
    v11 = (v9 + *(v7 + 20));
    v12 = *v11 == a2 && v11[1] == a3;
    if (v12 || (sub_24F92CE08() & 1) != 0)
    {
      break;
    }

    ++v8;
    v9 += v10;
    if (v3 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void sub_24EDAB2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

uint64_t _s12GameStoreKit27ResilientDeepLinkControllerO03hasdE5Links3bagSbAA14ASKBagContractC_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8, &qword_24F9730D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = type metadata accessor for AppStoreDeepLink(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v41 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v44 = 0xD000000000000014;
  v45 = 0x800000024FA5D340;
  sub_24EDABB9C();
  sub_24F928838();

  result = v42;
  if (v42)
  {
    v36 = *(v42 + 16);
    if (v36)
    {
      v38 = (v6 + 8);
      v39 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
      v13 = 0;
      v34 = v5;
      v35 = a1;
      v32 = v9;
      v33 = v8;
      v31 = v10;
      v37 = v42;
      while (v13 < *(result + 16))
      {
        v14 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v15 = *(v10 + 72);
        v40 = v13;
        v16 = v14 + v15 * v13;
        v17 = v41;
        sub_24EDAB80C(v16, v41);
        v18 = (v17 + *(v9 + 20));
        v19 = *v18;
        v20 = v18[1];
        if (qword_27F210A88 != -1)
        {
          swift_once();
        }

        sub_24F92A428();
        sub_24F92A3F8();
        (*v38)(v8, v5);
        if (!v44 || (v21 = sub_24E9E2340(v44), result = , !v21))
        {

          v21 = &unk_2861C0750;
        }

        v22 = v21[2];
        if (v22)
        {
          v23 = 0;
          v24 = v21 + 5;
          while (v23 < v21[2])
          {
            v25 = *(v24 - 1);
            v26 = *v24;
            v44 = v19;
            v45 = v20;
            v42 = v25;
            v43 = v26;
            v27 = sub_24F91F7C8();
            (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
            sub_24E600AEC();

            sub_24F92C5B8();
            v29 = v28;
            sub_24E601704(v4, &qword_27F21FAD8, &qword_24F961870);

            if ((v29 & 1) == 0)
            {

              sub_24EDAB870(v41);

              return 1;
            }

            ++v23;
            v24 += 2;
            if (v22 == v23)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
          break;
        }

LABEL_4:
        v13 = v40 + 1;

        sub_24EDAB870(v41);
        v8 = v33;
        v5 = v34;
        v10 = v31;
        v9 = v32;
        result = v37;
        if (v13 == v36)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:

      return 0;
    }
  }

  return result;
}

uint64_t sub_24EDAB80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreDeepLink(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDAB870(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreDeepLink(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EDAB904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_24F92C738();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_24F92C738();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

double sub_24EDABA08(uint64_t (*a1)(uint64_t *))
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v6 = 0xD000000000000014;
  v7 = 0x800000024FA5D340;
  sub_24EDABB9C();
  sub_24F928838();

  v2 = v10;
  if (!v10)
  {
    v2 = MEMORY[0x277D84F90];
  }

  v11 = v2;
  v3 = a1(&v11);
  v4 = v11;
  if (v3)
  {
    if (*(v11 + 16))
    {
      _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
      v10 = v4;
      v6 = 0xD000000000000014;
      v7 = 0x800000024FA5D340;
      sub_24F928848();
    }

    else
    {

      _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
      v8 = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
      v9 = sub_24EDABC54();
      v6 = 0xD000000000000014;
      v7 = 0x800000024FA5D340;
      sub_24F929358();

      __swift_destroy_boxed_opaque_existential_1(&v6);
    }

    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    sub_24F929368();
  }

  else
  {
  }

  return result;
}

unint64_t sub_24EDABB9C()
{
  result = qword_27F22F7B8;
  if (!qword_27F22F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F7B8);
  }

  return result;
}

uint64_t sub_24EDABBF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreDeepLink(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EDABC54()
{
  result = qword_27F22F7C0;
  if (!qword_27F22F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F7C0);
  }

  return result;
}

uint64_t sub_24EDABCA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppStoreDeepLink(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = *a1;
  v17 = v51;
  result = sub_24EDAB198(*a1, a2, a3);
  if (v17)
  {
    return result;
  }

  v51 = v15;
  v45 = v12;
  v43 = 0;
  if (v19)
  {
    return *(v16 + 16);
  }

  v44 = v9;
  v49 = v6;
  v42 = a1;
  v47 = result;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v21 = v16;
  v23 = (v16 + 16);
  v22 = *(v16 + 16);
  if (v20 == v22)
  {
    return v47;
  }

  v24 = a3;
  v46 = a2;
  v48 = v7;
  while (v20 < v22)
  {
    v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v26 = v21;
    v27 = v21 + v25;
    v28 = *(v7 + 72);
    v50 = v28 * v20;
    v29 = v51;
    sub_24EDAB80C(&v27[v28 * v20], v51);
    v30 = (v29 + *(v49 + 20));
    if (*v30 == a2 && v30[1] == v24)
    {
      result = sub_24EDAB870(v29);
LABEL_10:
      v7 = v48;
      v21 = v26;
      goto LABEL_11;
    }

    v32 = v24;
    v33 = v29;
    v34 = sub_24F92CE08();
    result = sub_24EDAB870(v33);
    if (v34)
    {
      v24 = v32;
      a2 = v46;
      goto LABEL_10;
    }

    v35 = v47;
    if (v20 == v47)
    {
      v24 = v32;
      a2 = v46;
      v21 = v26;
    }

    else
    {
      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v36 = *v23;
      if (v47 >= v36)
      {
        goto LABEL_31;
      }

      v24 = v32;
      v37 = v28 * v47;
      result = sub_24EDAB80C(&v27[v37], v45);
      if (v20 >= v36)
      {
        goto LABEL_32;
      }

      v38 = v50;
      sub_24EDAB80C(&v27[v50], v44);
      v21 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24ECDE2E0(v26);
      }

      a2 = v46;
      v39 = v42;
      v40 = v21 + v25;
      result = sub_24EDABBF0(v44, &v40[v37]);
      if (v20 >= v21[2])
      {
        goto LABEL_33;
      }

      result = sub_24EDABBF0(v45, &v40[v38]);
      *v39 = v21;
      v35 = v47;
    }

    v47 = v35 + 1;
    v7 = v48;
LABEL_11:
    ++v20;
    v23 = v21 + 2;
    v22 = v21[2];
    if (v20 == v22)
    {
      return v47;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void _s12GameStoreKit27ResilientDeepLinkControllerO06removeeF0yySSFZ_0(uint64_t a1, uint64_t a2)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v12 = 0xD000000000000014;
  v13 = 0x800000024FA5D340;
  sub_24EDABB9C();
  sub_24F928838();

  if (v16)
  {
    v4 = v16;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v17 = v4;
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_15:

    return;
  }

  v6 = sub_24EDABCA8(&v17, a1, a2);

  v7 = v17;
  v8 = v17[2];
  if (v6 > v8)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v6 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(v8, v6 - v8))
  {
LABEL_23:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > v7[3] >> 1)
  {
    if (v8 <= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    v7 = sub_24E6193D8(isUniquelyReferenced_nonNull_native, v10, 1, v7);
    v17 = v7;
  }

  sub_24EDAC24C(v6, v8, 0, type metadata accessor for AppStoreDeepLink);
  v11 = v7[2];
  if (v5 == v11)
  {
    goto LABEL_15;
  }

  if (v11)
  {
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    v16 = v7;
    v12 = 0xD000000000000014;
    v13 = 0x800000024FA5D340;
    sub_24F928848();
  }

  else
  {

    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    v14 = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
    v15 = sub_24EDABC54();
    v12 = 0xD000000000000014;
    v13 = 0x800000024FA5D340;
    sub_24F929358();

    __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  sub_24F929368();
}

unint64_t sub_24EDAC24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_24EDAC398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for GuidedSearchToken(0);
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = sub_24F92C738();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_24F92C738();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x28223BE20](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_24EDAAF70(v4, sub_24EDAC8FC);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24EDAC530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for GuidedSearchToken(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_24F92C738();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_24F92C738();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_24EDAC650(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_24EDAC774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for LeaderboardEntry(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = (v11 + 32) & ~v11;
  v15 = v9 + v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v13);
  v17 = a3 - v13;
  if (v16)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = *(v9 + 16);
  if (__OFSUB__(v18, a2))
  {
    goto LABEL_23;
  }

  result = v15 + v12 * a3;
  v19 = v9 + v14 + v12 * a2;
  if (result < v19 || result >= v19 + (v18 - a2) * v12)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v19)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v21 = *(v9 + 16);
  v16 = __OFADD__(v21, v17);
  v22 = v21 + v17;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v9 + 16) = v22;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t sub_24EDAC918(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v33 = MEMORY[0x277D84F90];
    v32 = *(a1 + 16);
    sub_24F4578E0(0, v1, 0);
    v2 = v33;
    v4 = a1 + 56;
    v5 = sub_24F92C6B8();
    v6 = v32;
    v7 = 0;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      v10 = 1 << v5;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_34;
      }

      v11 = *(a1 + 36);
      ++v7;
      v12 = v5 & 0x3F;
      v13 = 0xE400000000000000;
      v14 = 2036427888;
      switch(*(*(a1 + 48) + v5))
      {
        case 1:
          v13 = 0xE500000000000000;
          v14 = 0x6573756170;
          break;
        case 2:
          v14 = 1801807219;
          break;
        case 3:
          v14 = 1886352499;
          break;
        case 4:
          v14 = 0x6C50656C67676F74;
          v13 = 0xEF65737561507961;
          break;
        case 5:
          v13 = 0xE90000000000006BLL;
          v14 = 0x636172547478656ELL;
          break;
        case 6:
          v14 = 0x73756F6976657270;
          v13 = 0xED00006B63617254;
          break;
        case 7:
          v14 = 0xD000000000000010;
          v13 = 0x800000024FA5D3B0;
          break;
        case 8:
          v14 = 0x4674736146646E65;
          v13 = 0xEE0064726177726FLL;
          break;
        case 9:
          v14 = 0x7765526E69676562;
          v13 = 0xEB00000000646E69;
          break;
        case 0xA:
          v14 = 0x6E69776552646E65;
          v13 = 0xE900000000000064;
          break;
        case 0xB:
          v13 = 0xEB00000000647261;
          v14 = 0x77726F4670696B73;
          break;
        case 0xC:
          v14 = 0x6B63614270696B73;
          v13 = 0xEC00000064726177;
          break;
        default:
          break;
      }

      v16 = *(v33 + 16);
      v15 = *(v33 + 24);
      if (v16 >= v15 >> 1)
      {
        v30 = *(a1 + 36);
        v31 = v5;
        v28 = v5 & 0x3F;
        v29 = v7;
        sub_24F4578E0((v15 > 1), v16 + 1, 1);
        v12 = v28;
        v7 = v29;
        v6 = v32;
        v11 = v30;
        v5 = v31;
      }

      *(v33 + 16) = v16 + 1;
      v17 = v33 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_35;
      }

      v18 = *(v4 + 8 * v9);
      if ((v18 & v10) == 0)
      {
        goto LABEL_36;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_37;
      }

      v19 = v18 & (-2 << v12);
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (a1 + 64 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            v25 = v7;
            sub_24E6586A8(v5, v11, 0);
            v7 = v25;
            v6 = v32;
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        v26 = v7;
        sub_24E6586A8(v5, v11, 0);
        v7 = v26;
        v6 = v32;
      }

LABEL_4:
      v5 = v8;
      if (v7 == v6)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    JUMPOUT(0x24EDACCCCLL);
  }

  return v2;
}

void sub_24EDACD00(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v5 = sub_24F91F268();

  v6 = [v5 localizedDescription];
  v7 = sub_24F92B0D8();
  v9 = v8;

  v10 = a1();
  if (v11)
  {
    v12 = v11;
    v13 = v10;
    v34 = v5;

    v14 = sub_24F9220B8();
    v15 = sub_24F92BDB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136446979;
      v18 = sub_24E7620D4(v13, v12, &v35);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      v19 = [v34 domain];
      v20 = sub_24F92B0D8();
      v22 = v21;

      v23 = sub_24E7620D4(v20, v22, &v35);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2048;
      v24 = [v34 code];

      *(v16 + 24) = v24;
      *(v16 + 32) = 2081;
      v25 = sub_24E7620D4(v7, v9, &v35);

      *(v16 + 34) = v25;
      _os_log_impl(&dword_24E5DD000, v14, v15, "%{public}s: %{public}s (%ld) %{private}s", v16, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v17, -1, -1);
      MEMORY[0x2530542D0](v16, -1, -1);

      return;
    }
  }

  else
  {
    v34 = v5;

    v14 = sub_24F9220B8();
    v26 = sub_24F92BDB8();

    if (os_log_type_enabled(v14, v26))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136446723;
      v27 = [v34 domain];
      v28 = sub_24F92B0D8();
      v30 = v29;

      v31 = sub_24E7620D4(v28, v30, &v35);

      *(v16 + 4) = v31;
      *(v16 + 12) = 2048;
      v32 = [v34 code];

      *(v16 + 14) = v32;
      *(v16 + 22) = 2081;
      v33 = sub_24E7620D4(v7, v9, &v35);

      *(v16 + 24) = v33;
      _os_log_impl(&dword_24E5DD000, v14, v26, "%{public}s (%ld) %{private}s", v16, 0x20u);
      goto LABEL_6;
    }
  }
}

uint64_t MediaPlayer.appBundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *MediaPlayer.appIcon.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t MediaPlayer.appName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MediaPlayer.appURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_appURL;
  swift_beginAccess();
  return sub_24E99091C(v1 + v3, a1);
}

uint64_t MediaPlayer.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);

  return v1;
}

uint64_t MediaPlayer.isPlaying.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EDAD2D4(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  swift_beginAccess();
  *(v2 + v4) = a1;
  if (a1)
  {
    v5 = type metadata accessor for MediaRemotePlaybackTimer.PlaybackAssertion();
    v6 = swift_allocObject();
    if (qword_27F2106F8 != -1)
    {
      swift_once();
    }

    sub_24EDB2E20();
    *(&v10 + 1) = v5;
    *&v9 = v6;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v7 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackAssertion;
  swift_beginAccess();
  sub_24E8E7708(&v9, v2 + v7);
  return swift_endAccess();
}

void *MediaPlayer.artwork.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

double MediaPlayer.duration.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_duration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MediaPlayer.mediaType.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_mediaType;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_24EDAD4B4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  swift_beginAccess();
  if (*(v0 + v1) != 1)
  {
    return *(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTime);
  }

  sub_24F91F528();
  v3 = v2 - *(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTimeTimestamp);
  v4 = 0.0;
  if (v3 <= 0.0)
  {
    v3 = 0.0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTime) + v3 * *(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackRate);
  v6 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_duration;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (v7 >= v5)
  {
    v7 = v5;
  }

  if (v7 > 0.0)
  {
    return v7;
  }

  return v4;
}

double sub_24EDAD590(char *a1, uint64_t a2)
{
  v3 = v2;
  v4 = dword_24F99DC0C[*a1];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath))
  {

    swift_unknownObjectRetain();
    v6 = sub_24F92AE28();
    sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v7 = sub_24F92BEF8();
    v25 = sub_24EDB4BE0;
    v26 = v5;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_24EDADF90;
    v24 = &block_descriptor_85;
    v8 = _Block_copy(&v21);

    v9 = MRMediaRemoteSendCommandToPlayer();
    swift_unknownObjectRelease();
    _Block_release(v8);
  }

  else
  {

    v10 = sub_24F92AE28();
    v6 = sub_24F92B098();
    sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v7 = sub_24F92BEF8();
    v25 = sub_24EDB4BE0;
    v26 = v5;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_24EDADF90;
    v24 = &block_descriptor_82_2;
    v11 = _Block_copy(&v21);

    v9 = MRMediaRemoteSendCommandToApp();
    _Block_release(v11);
  }

  if (!v9)
  {
    v13 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);
    v12 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id + 8);
    if (qword_27F2113D8 != -1)
    {
      swift_once();
    }

    v14 = sub_24F9220D8();
    __swift_project_value_buffer(v14, qword_27F39E7D8);

    v15 = sub_24F9220B8();
    v16 = sub_24F92BDB8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446466;
      v19 = sub_24E7620D4(v13, v12, &v21);

      *(v17 + 4) = v19;
      *(v17 + 12) = 1024;
      *(v17 + 14) = v4;
      _os_log_impl(&dword_24E5DD000, v15, v16, "%{public}s: send command %u failed", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x2530542D0](v18, -1, -1);
      MEMORY[0x2530542D0](v17, -1, -1);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24EDAD970(int a1, void *a2, uint64_t a3, int a4)
{
  v8 = sub_24F9220D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_27F39E7D8);
  (*(v9 + 16))(v11, v12, v8);
  if (a1)
  {
    v13 = sub_24F92BDB8();
  }

  else
  {
    v13 = sub_24F92BD98();
  }

  v14 = v13;
  v15 = sub_24F9220B8();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v23 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446978;
    *(v17 + 4) = sub_24E7620D4(*(a3 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id), *(a3 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id + 8), &v24);
    *(v17 + 12) = 1024;
    *(v17 + 14) = a4;
    *(v17 + 18) = 1024;
    *(v17 + 20) = a1;
    *(v17 + 24) = 2082;
    v19 = sub_24EDADBCC(v23);
    v21 = sub_24E7620D4(v19, v20, &v24);

    *(v17 + 26) = v21;
    _os_log_impl(&dword_24E5DD000, v15, v14, "%{public}s: send command %u returned %u [%{public}s]", v17, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v18, -1, -1);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

void *sub_24EDADBCC(void *a1)
{
  v2 = sub_24F91F308();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    sub_24E69A5C4(0, &qword_27F22F948, 0x277CBEA60);
    v6 = MEMORY[0x253051CC0](MEMORY[0x277D84F90]);
  }

  v7 = a1;
  v8 = [v6 count];
  v31 = MEMORY[0x277D84F90];
  sub_24F4578E0(0, v8 & ~(v8 >> 63), 0);
  v9 = v31;
  result = sub_24F92C348();
  if (v8 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v24 = v3;
  v25 = v6;
  if (v8)
  {
    v26 = sub_24EDB4838(&qword_27F22F950, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    do
    {
      result = sub_24F92C4D8();
      if (!v30)
      {
        goto LABEL_18;
      }

      sub_24E643A9C(&v29, &v27);
      v11 = sub_24F92B188();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1(&v29);
      v31 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_24F4578E0((v14 > 1), v15 + 1, 1);
        v9 = v31;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (--v8);
  }

  sub_24EDB4838(&qword_27F22F950, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  while (1)
  {
    sub_24F92C4D8();
    if (!v28)
    {
      break;
    }

    sub_24E612B0C(&v27, &v29);
    sub_24E643A9C(&v29, &v27);
    v17 = sub_24F92B188();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = v9;
    v21 = *(v9 + 16);
    v20 = *(v9 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_24F4578E0((v20 > 1), v21 + 1, 1);
      v9 = v31;
    }

    *(v9 + 16) = v21 + 1;
    v22 = v9 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
  }

  (*(v24 + 8))(v5, v2);
  sub_24E601704(&v27, &qword_27F2129B0, &unk_24F945320);
  *&v29 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E602068(&qword_27F23E240, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83958]);
  v23 = sub_24F92AF68();

  return v23;
}

void sub_24EDADF90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Swift::Void __swiftcall MediaPlayer.perform(_:)(GameStoreKit::MediaPlayer::Command a1)
{
  v2 = *a1;
  v1 = sub_24E608448(MEMORY[0x277D84F90]);
  sub_24EDAD590(&v2, v1);
}

Swift::Void __swiftcall MediaPlayer.seek()()
{
  v4 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  if (qword_27F210700 != -1)
  {
    swift_once();
  }

  v1 = *algn_27F39C858;
  *(inited + 32) = qword_27F39C850;
  *(inited + 40) = v1;

  v2 = sub_24EDAD4B4();
  *(inited + 72) = MEMORY[0x277D839F8];
  *(inited + 48) = v2;
  v3 = sub_24E608448(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F2135C0, &qword_24F970400);
  sub_24EDAD590(&v4, v3);
}

uint64_t sub_24EDAE168()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;

  if (v1 == v5 && v2 == v7)
  {
  }

  else
  {
    v9 = sub_24F92CE08();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_mediaType;
  swift_beginAccess();
  v12 = *(v0 + v11);
  if (v12 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  if (v12 == 1)
  {
    return 1;
  }

  else
  {
    return v13;
  }
}

char *sub_24EDAE270()
{
  *(v0 + 4) = 0;
  *(v0 + 5) = 0;
  *(v0 + 6) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_appURL;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = &v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackAssertion];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork] = 0;
  v4 = &v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_title];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_subtitle];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_duration] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_mediaType] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTime] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTimeTimestamp] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackRate] = 0x3FF0000000000000;
  v6 = &v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_cancellables] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playbackTimerSubscription] = 0;
  v9 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_validIntervals;
  *&v0[v9] = sub_24F45DE14(&unk_2861C0BA8);
  *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_commands] = v8;
  v10 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_controls;
  *&v0[v10] = sub_24E60ED08(MEMORY[0x277D84F90]);
  result = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  if (result)
  {
    v12 = result;
    v13 = sub_24F92B0D8();
    v15 = v14;

    *(v0 + 2) = v13;
    *(v0 + 3) = v15;
    result = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    if (result)
    {
      v16 = result;
      v17 = sub_24F92B0D8();
      v19 = v18;

      v20 = &v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id];
      *v20 = v17;
      v20[1] = v19;
      *&v0[OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath] = 0;
      MediaPlayer.updateApp()();
      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MediaPlayer.updateApp()()
{
  v1 = sub_24F927D88();
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DC8();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927D98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  (*(v8 + 104))(v10, *MEMORY[0x277D851B8], v7);
  v11 = sub_24F92BF48();
  (*(v8 + 8))(v10, v7);
  aBlock[4] = sub_24EDB3DEC;
  v18 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_77;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  v16 = MEMORY[0x277D84F90];
  sub_24EDB4838(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v6, v3, v12);
  _Block_release(v12);

  (*(v15 + 8))(v3, v1);
  (*(v4 + 8))(v6, v14);
}

void *sub_24EDAE7F0(uint64_t a1)
{
  v2 = v1;
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = 0xE000000000000000;
  v3 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_appURL;
  v4 = sub_24F91F4A8();
  v37 = v3;
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackAssertion);
  *v5 = 0u;
  v5[1] = 0u;
  v35 = v5;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying) = 0;
  v36 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork) = 0;
  v6 = (v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_title);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_subtitle);
  *v7 = 0;
  v7[1] = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_duration) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_mediaType) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTime) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTimeTimestamp) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackRate) = 0x3FF0000000000000;
  v8 = (v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier);
  *v9 = 0;
  v9[1] = 0;
  v10 = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_cancellables) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playbackTimerSubscription) = 0;
  v11 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_validIntervals;
  *(v2 + v11) = sub_24F45DE14(&unk_2861C0C00);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_commands) = v10;
  v12 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_controls;
  *(v2 + v12) = sub_24E60ED08(MEMORY[0x277D84F90]);
  v13 = MRNowPlayingClientGetParentAppBundleIdentifier();
  if (!v13)
  {
    v13 = MRNowPlayingClientGetBundleIdentifier();
    if (!v13)
    {
      swift_unknownObjectRelease();

      sub_24E601704(v2 + v37, &qword_27F228530, &unk_24F93C6E0);
      sub_24E601704(v35, &qword_27F2129B0, &unk_24F945320);

      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  v14 = v13;
  v15 = sub_24F92B0D8();
  v17 = v16;

  v2[2] = v15;
  v2[3] = v17;

  result = MRMediaRemoteGetLocalOrigin();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = MRNowPlayingPlayerPathCreate();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = result;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = MRNowPlayingPlayerPathCopyStringRepresentation();
  if (result)
  {
    v20 = result;

    v21 = sub_24F92B0D8();
    v23 = v22;

    v24 = (v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);
    *v24 = v21;
    v24[1] = v23;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath) = v19;
    v25 = qword_27F2113D8;

    swift_unknownObjectRetain();
    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_24F9220D8();
    __swift_project_value_buffer(v26, qword_27F39E7D8);

    v27 = sub_24F9220B8();
    v28 = sub_24F92BDA8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136446210;
      v31 = sub_24E7620D4(v21, v23, &v38);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_24E5DD000, v27, v28, "media player: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x2530542D0](v30, -1, -1);
      MEMORY[0x2530542D0](v29, -1, -1);
    }

    else
    {
    }

    sub_24EDB4838(&unk_27F23B820, type metadata accessor for MediaPlayer, &protocol conformance descriptor for MediaPlayer);
    v32 = sub_24F922FA8();
    if (qword_27F2106F8 != -1)
    {
      swift_once();
    }

    type metadata accessor for MediaRemotePlaybackTimer(0);
    sub_24EDB4838(&qword_27F22F920, type metadata accessor for MediaRemotePlaybackTimer, &unk_24F99DA6C);
    v38 = sub_24F922FA8();
    v33 = swift_allocObject();
    *(v33 + 16) = sub_24EDB4888;
    *(v33 + 24) = v32;
    sub_24F923018();

    v34 = sub_24F923148();

    *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playbackTimerSubscription) = v34;

    MediaPlayer.updateApp()();
    MediaPlayer.updateContent()();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v2;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall MediaPlayer.updateContent()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath);
  if (v1)
  {
    v2 = v0;
    sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    swift_unknownObjectRetain();
    v3 = sub_24F92BEF8();
    v17 = sub_24EDB3E0C;
    v18 = v0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_24EDB3428;
    v16 = &block_descriptor_3_3;
    v4 = _Block_copy(&v13);
    swift_retain_n();

    MRMediaRemoteGetPlaybackStateForPlayer();
    _Block_release(v4);

    v5 = sub_24F92BEF8();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_24EDB3E10;
    *(v6 + 24) = v0;
    v17 = sub_24EDB3E50;
    v18 = v6;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_24E79B350;
    v16 = &block_descriptor_6_3;
    v7 = _Block_copy(&v13);
    swift_retain_n();

    MRMediaRemoteGetSupportedCommandsForPlayer();
    _Block_release(v7);

    v8 = MRPlaybackQueueRequestCreate();
    if (v8)
    {
      v9 = v8;
      MRPlaybackQueueRequestSetIncludeMetadata();
      v10 = sub_24F92BEF8();
      v11 = swift_allocObject();
      *(v11 + 16) = sub_24EDB3E58;
      *(v11 + 24) = v2;
      v17 = sub_24EDB3E60;
      v18 = v11;
      v13 = MEMORY[0x277D85DD0];
      v14 = 1107296256;
      v15 = sub_24EDB3A64;
      v16 = &block_descriptor_12_5;
      v12 = _Block_copy(&v13);
      swift_retain_n();

      MEMORY[0x253053110](v9, v1, v10, v12);
      _Block_release(v12);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_24EDAF144()
{
  type metadata accessor for MediaPlayer(0);
  v0 = swift_allocObject();
  result = sub_24EDAE270();
  qword_27F39C840 = v0;
  return result;
}

uint64_t sub_24EDAF184(uint64_t a1)
{
  v2 = sub_24F927D88();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = sub_24F91F4A8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v16 = sub_24F92BEF8();
  sub_24E99091C(v14, v11);
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  sub_24E911D90(v11, v18 + v17);
  aBlock[4] = sub_24EDB4B34;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_76_1;
  v19 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EDB4838(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v19);
  _Block_release(v19);

  (*(v24 + 8))(v4, v2);
  (*(v22 + 8))(v7, v23);
  return sub_24E601704(v14, &qword_27F228530, &unk_24F93C6E0);
}

uint64_t sub_24EDAF598(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  type metadata accessor for MediaPlayer(0);
  sub_24EDB4838(&unk_27F23B820, type metadata accessor for MediaPlayer, &protocol conformance descriptor for MediaPlayer);
  sub_24F922FA8();
  sub_24F923008();

  swift_beginAccess();
  v10 = a1[4];
  a1[4] = a2;
  v11 = a2;

  if (a4)
  {
    v12 = a4;
  }

  else
  {
    a3 = 0;
    v12 = 0xE000000000000000;
  }

  swift_beginAccess();
  a1[5] = a3;
  a1[6] = v12;

  v13 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_appURL;
  swift_beginAccess();
  sub_24ED9D920(a5, a1 + v13);
  return swift_endAccess();
}

unint64_t MediaPlayer.Command.description.getter()
{
  result = 2036427888;
  switch(*v0)
  {
    case 1:
      result = 0x6573756170;
      break;
    case 2:
      result = 1801807219;
      break;
    case 3:
      result = 1886352499;
      break;
    case 4:
      result = 0x6C50656C67676F74;
      break;
    case 5:
      result = 0x636172547478656ELL;
      break;
    case 6:
      result = 0x73756F6976657270;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x4674736146646E65;
      break;
    case 9:
      result = 0x7765526E69676562;
      break;
    case 0xA:
      result = 0x6E69776552646E65;
      break;
    case 0xB:
      result = 0x77726F4670696B73;
      break;
    case 0xC:
      result = 0x6B63614270696B73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MediaPlayer.Command.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92D118();
  v5 = v2;
  MediaPlayer.Command.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F92CEC8();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void sub_24EDAF940(void *a1@<X0>, char *a2@<X8>)
{
  if (![a1 isEnabled])
  {

    goto LABEL_5;
  }

  v4 = [a1 command];

  if (v4 >= 0x19)
  {
LABEL_5:
    v5 = 13;
    goto LABEL_6;
  }

  v5 = byte_24F99DC40[v4];
LABEL_6:
  *a2 = v5;
}

uint64_t MediaPlayer.Command.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

void sub_24EDAFA74(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_24E9A0188;
  a2[1] = v5;
}

uint64_t MediaPlayer.Control.action.getter()
{
  v1 = *v0;

  return v1;
}

void MediaPlayer.Control.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MediaPlayer.Control.label.getter()
{
  v1 = *(v0 + 32);
  sub_24E5FD138(v1, *(v0 + 40), *(v0 + 48));

  return v1;
}

uint64_t MediaPlayer.Control.label.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_24E600B40(*(v4 + 32), *(v4 + 40), *(v4 + 48));

  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3 & 1;
  *(v4 + 56) = a4;
  return result;
}

uint64_t sub_24EDAFCD0(void *a1)
{
  v2 = v1;
  v3 = [a1 options];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_24F92AE38();

  v6 = *MEMORY[0x277D27A88];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F938, &qword_24F99DB68);
  sub_24EDB4950();
  sub_24F92C7F8();
  if (!*(v5 + 16) || (v7 = sub_24E76D934(v21), (v8 & 1) == 0))
  {

    sub_24E6585F8(v21);
LABEL_9:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_10;
  }

  sub_24E643A9C(*(v5 + 56) + 32 * v7, &v22);
  sub_24E6585F8(v21);

  if (!*(&v23 + 1))
  {
LABEL_10:
    sub_24E601704(&v22, &qword_27F2129B0, &unk_24F945320);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050, qword_24F99DB70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v21[0] + 16);
  if (!v9)
  {
LABEL_21:

    return 0;
  }

  v10 = 0;
  v11 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_validIntervals);
  v12 = v21[0] + 32;
  v13 = *(v11 + 16);
  v14 = v11 + 56;
  while (1)
  {
    if (v13)
    {
      v16 = *(v12 + 8 * v10);
      v17 = sub_24F92D058();
      v18 = -1 << *(v11 + 32);
      v19 = v17 & ~v18;
      if ((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        break;
      }
    }

LABEL_13:
    if (++v10 == v9)
    {
      goto LABEL_21;
    }
  }

  v20 = ~v18;
  while (*(*(v11 + 48) + 8 * v19) != v16)
  {
    v19 = (v19 + 1) & v20;
    if (((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  return v16;
}

void sub_24EDAFF08(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924A78();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = a1;
  sub_24EDAF940(v6, &v43);
  v7 = v43;
  if (v43 == 13)
  {
    goto LABEL_8;
  }

  if (v43 != 11)
  {
    if (v43 == 12)
    {
      v41 = v2;
      v8 = sub_24EDAFCD0(v6);
      if ((v9 & 1) == 0)
      {
        v10 = v8;
        v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
        [v11 setAllowedUnits_];
        [v11 setAllowsFractionalUnits_];
        [v11 setFormattingContext_];
        [v11 setUnitsStyle_];
        v12 = [v11 stringFromTimeInterval_];

        if (v12)
        {
          sub_24F92B0D8();

          v43 = 0x61776B6361626F67;
          v44 = 0xEB000000002E6472;
          v13 = sub_24F92CD88();
          MEMORY[0x253050C20](v13);

          sub_24F924A68();
          sub_24F924A58();
          sub_24F924A48();
          sub_24F924A58();
          sub_24F924A98();
          v14 = sub_24F925DE8();
          v16 = v15;
          v42 = v17;
          v19 = v18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24F93DE60;
          if (*MEMORY[0x277D27DF8])
          {
            v21 = inited;
            sub_24E5FD138(v14, v16, v42 & 1);

LABEL_13:

            v21[4] = sub_24F92B0D8();
            v21[9] = MEMORY[0x277D83B88];
            v21[5] = v32;
            v21[6] = v10;
            v33 = sub_24E608448(v21);
            swift_setDeallocating();
            sub_24E601704((v21 + 4), &qword_27F2135C0, &qword_24F970400);
            v34 = v41;
LABEL_15:
            v38 = swift_allocObject();
            *(v38 + 16) = v34;
            *(v38 + 24) = v7;
            *(v38 + 32) = v33;

            v39 = [v6 isEnabled] ^ 1;
            v40 = sub_24F926DF8();
            sub_24E600B40(v14, v16, v42 & 1);

            LOBYTE(v43) = v42 & 1;
            *a2 = sub_24EDB4910;
            *(a2 + 8) = v38;
            *(a2 + 16) = v39;
            *(a2 + 24) = v40;
            *(a2 + 32) = v14;
            *(a2 + 40) = v16;
            *(a2 + 48) = v42 & 1;
            *(a2 + 56) = v19;
            return;
          }

          __break(1u);
          goto LABEL_17;
        }
      }

LABEL_14:
      sub_24F924A88();
      v14 = sub_24F925DE8();
      v16 = v35;
      v19 = v36;
      v42 = v37;
      sub_24E5FD138(v14, v35, v37 & 1);

      v33 = sub_24E608448(MEMORY[0x277D84F90]);
      v34 = v41;
      goto LABEL_15;
    }

LABEL_8:
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v41 = v2;
  v22 = sub_24EDAFCD0(v6);
  if (v23)
  {
    goto LABEL_14;
  }

  v10 = v22;
  v24 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v24 setAllowedUnits_];
  [v24 setAllowsFractionalUnits_];
  [v24 setFormattingContext_];
  [v24 setUnitsStyle_];
  v25 = [v24 stringFromTimeInterval_];

  if (!v25)
  {
    goto LABEL_14;
  }

  sub_24F92B0D8();

  v43 = 0x726177726F666F67;
  v44 = 0xEA00000000002E64;
  v26 = sub_24F92CD88();
  MEMORY[0x253050C20](v26);

  sub_24F924A68();
  sub_24F924A58();
  sub_24F924A48();
  sub_24F924A58();
  sub_24F924A98();
  v14 = sub_24F925DE8();
  v16 = v27;
  v29 = v28;
  v19 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_24F93DE60;
  if (*MEMORY[0x277D27DF8])
  {
    v21 = v31;
    v42 = v29;
    sub_24E5FD138(v14, v16, v29 & 1);

    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

double MediaPlayer.commands.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t MediaPlayer.control(for:)@<X0>(_OWORD *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_controls;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_24E7728EC(), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + (v5 << 6));
    v9 = v7[2];
    v8 = v7[3];
    v10 = v7[1];
    v15[0] = *v7;
    v15[1] = v10;
    v15[2] = v9;
    v15[3] = v8;
    v11 = v7[1];
    *a1 = *v7;
    a1[1] = v11;
    v12 = v7[3];
    a1[2] = v7[2];
    a1[3] = v12;
    sub_24E8B96C4(v15, &v14);
  }

  else
  {
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return swift_endAccess();
}

uint64_t sub_24EDB0758(int a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_24F927E38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  *v8 = sub_24F92BEF8();
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v9 = sub_24F927E68();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v8 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);
    v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id + 8);
    if (qword_27F2113D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = sub_24F9220D8();
  __swift_project_value_buffer(v10, qword_27F39E7D8);

  v11 = sub_24F9220B8();
  v12 = sub_24F92BD98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136446466;
    v15 = sub_24E7620D4(v8, v5, v19);

    *(v13 + 4) = v15;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1;
    _os_log_impl(&dword_24E5DD000, v11, v12, "%{public}s state: %u", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  else
  {
  }

  v16 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  result = swift_beginAccess();
  if ((a1 == 1) != *(v3 + v16))
  {
    sub_24EDB4838(&unk_27F23B820, type metadata accessor for MediaPlayer, &protocol conformance descriptor for MediaPlayer);
    sub_24F922FA8();
    sub_24F923008();

    return sub_24EDAD2D4(a1 == 1);
  }

  return result;
}

uint64_t sub_24EDB0A8C(unint64_t a1, uint64_t *a2)
{
  v36 = MEMORY[0x277D84FA0];
  v35 = sub_24E60ED08(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
    v4 = sub_24F92C738();
    if (!v4)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_29;
    }
  }

  if (v4 < 1)
  {
    __break(1u);

    __break(1u);
    JUMPOUT(0x24EDB0FFCLL);
  }

  for (i = 0; i != v4; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x253052270](i, a1);
    }

    else
    {
      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if ([v6 isEnabled])
    {
      v8 = [v7 command];
      v9 = 0;
      v10 = 11;
      switch(v8)
      {
        case 0u:
          goto LABEL_23;
        case 1u:
          v9 = 1;
          goto LABEL_23;
        case 2u:
          v9 = 4;
          goto LABEL_23;
        case 3u:
          v9 = 3;
          goto LABEL_23;
        case 4u:
          v9 = 5;
          goto LABEL_23;
        case 5u:
          v9 = 6;
          goto LABEL_23;
        case 8u:
          v9 = 7;
          goto LABEL_23;
        case 9u:
          v9 = 8;
          goto LABEL_23;
        case 0xAu:
          v9 = 9;
          goto LABEL_23;
        case 0xBu:
          v9 = 10;
          goto LABEL_23;
        case 0x11u:
          goto LABEL_15;
        case 0x12u:
          v10 = 12;
LABEL_15:
          sub_24ED7F584(&v30, v10);
          sub_24EDAFF08(v7, &v30);
          if (v30)
          {
            v38 = v31;
            v39 = v32;
            v40 = v33;
            v41 = v34;
            v37 = v30;
            v11 = v35;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v29[0] = v11;
            sub_24E820D2C(&v37, v10, isUniquelyReferenced_nonNull_native);

            v35 = *&v29[0];
          }

          else
          {
            sub_24E98FF88(v28);

            v29[0] = v28[0];
            v29[1] = v28[1];
            v29[2] = v28[2];
            v29[3] = v28[3];
            sub_24E601704(v29, &qword_27F22F930, &qword_24F99DB60);
          }

          continue;
        case 0x18u:
          v9 = 2;
LABEL_23:
          sub_24ED7F584(&v30, v9);
          break;
        default:
          break;
      }
    }
  }

LABEL_29:
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9220D8();
  __swift_project_value_buffer(v13, qword_27F39E7D8);
  v14 = v36;
  swift_bridgeObjectRetain_n();

  v15 = sub_24F9220B8();
  v16 = sub_24F92BDA8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_24E7620D4(*(a2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id), *(a2 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id + 8), &v30);
    *(v17 + 12) = 2080;
    *&v29[0] = sub_24EDAC918(v14);

    sub_24E8C0BD4(v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E602068(&qword_27F23E240, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83958]);
    v19 = sub_24F92AF68();
    v21 = v20;

    v22 = sub_24E7620D4(v19, v21, &v30);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_24E5DD000, v15, v16, "%s: commands: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v18, -1, -1);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  v23 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_commands;
  swift_beginAccess();
  v24 = sub_24EDD4E4C(*(a2 + v23), v14);

  if (v24)
  {
  }

  else
  {
    sub_24EDB4838(&unk_27F23B820, type metadata accessor for MediaPlayer, &protocol conformance descriptor for MediaPlayer);
    sub_24F922FA8();
    sub_24F923008();

    *(a2 + v23) = v14;

    v25 = v35;
    v26 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_controls;
    swift_beginAccess();
    *(a2 + v26) = v25;
  }
}

void sub_24EDB1060(uint64_t a1, id a2, uint64_t a3, __n128 a4)
{
  if (a2)
  {
    v6 = a2;
    if (qword_27F2113D8 != -1)
    {
      swift_once();
    }

    v7 = sub_24F9220D8();
    v8 = __swift_project_value_buffer(v7, qword_27F39E7D8);
    MEMORY[0x28223BE20](v8);
    sub_24EDACD00(sub_24EDB488C, a3, sub_24EDB4894);

    return;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  v9 = sub_24EDB1240();
  if (!*(v9 + 16))
  {

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = *(v9 + 32);
  swift_unknownObjectRetain();

LABEL_10:
  sub_24EDB137C(v10, a4);

  swift_unknownObjectRelease();
}

uint64_t sub_24EDB11B0(uint64_t a1)
{
  sub_24F92C888();
  v2 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);

  MEMORY[0x253050C20](0xD000000000000028, 0x800000024FA5D710);
  return v2;
}

uint64_t sub_24EDB1240()
{
  v0 = MRPlaybackQueueCopyContentItems();
  v1 = MEMORY[0x277D84F90];
  if (!v0)
  {
    return v1;
  }

  v2 = v0;
  v3 = sub_24F92B5A8();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_12:

    return v1;
  }

  v4 = sub_24F92C738();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_4:
  result = sub_24F92C978();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v6, v3);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v6;
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v4 != v6);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}