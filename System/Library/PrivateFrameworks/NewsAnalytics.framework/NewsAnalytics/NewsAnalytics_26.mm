void sub_217D32F44(uint64_t a1)
{
  if (!qword_2811BCE78)
  {
    sub_217D32F9C(255);
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811BCE78);
    }
  }
}

void sub_217D32F9C(uint64_t a1)
{
  if (!qword_2811BCE80)
  {
    sub_217D893BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811BCE80);
    }
  }
}

uint64_t sub_217D33008(uint64_t a1, uint64_t a2)
{
  sub_217D32F44(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ScienceData.init(agedPersonalizationScore:autoSubscribeCtr:computedGlobalScoreCoefficient:conversionMultiplier:dampenedStaticMultiplier:featureCtr:paidNonPaidSubscriptionCtr:personalizationScore:qualitativeMultiplier:rawPersonalizationScore:staticMultiplier:subscribedChannelCtr:userFeedbackScore:rawUserFeedbackScore:fractionalCohortMembership:titleEmbeddingScore:tabiScore:clientScoreCoefficient:conversionCoefficient:multiplier:halfLifeCoefficient:serverScoreDemocratizationFactor:autofavoritedScoreCoefficient:nicheContentMuliplier:contentTriggerDampenerCoefficient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, char a34)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = a14;
  *(a9 + 40) = a15;
  *(a9 + 48) = a16;
  *(a9 + 56) = a17;
  *(a9 + 64) = a18;
  *(a9 + 80) = a19;
  *(a9 + 96) = a20;
  *(a9 + 104) = a21;
  *(a9 + 112) = a1;
  *(a9 + 120) = a2;
  *(a9 + 128) = a3 & 1;
  *(a9 + 136) = a4;
  *(a9 + 144) = a5 & 1;
  *(a9 + 152) = a6;
  *(a9 + 160) = a7 & 1;
  *(a9 + 168) = a8;
  *(a9 + 176) = a22 & 1;
  *(a9 + 184) = a23;
  result = a24 & 1;
  *(a9 + 192) = a24 & 1;
  *(a9 + 200) = a25;
  *(a9 + 208) = a26 & 1;
  *(a9 + 216) = a27;
  *(a9 + 224) = a28 & 1;
  *(a9 + 232) = a29;
  *(a9 + 240) = a30 & 1;
  *(a9 + 248) = a31;
  *(a9 + 256) = a32 & 1;
  *(a9 + 264) = a33;
  *(a9 + 272) = a34 & 1;
  return result;
}

uint64_t ScienceData.fractionalCohortMembership.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t ScienceData.titleEmbeddingScore.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t ScienceData.tabiScore.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t ScienceData.clientScoreCoefficient.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t ScienceData.conversionCoefficient.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t ScienceData.multiplier.setter(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t ScienceData.halfLifeCoefficient.setter(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t ScienceData.serverScoreDemocratizationFactor.setter(uint64_t result, char a2)
{
  *(v2 + 216) = result;
  *(v2 + 224) = a2 & 1;
  return result;
}

uint64_t ScienceData.autofavoritedScoreCoefficient.setter(uint64_t result, char a2)
{
  *(v2 + 232) = result;
  *(v2 + 240) = a2 & 1;
  return result;
}

uint64_t ScienceData.nicheContentMuliplier.setter(uint64_t result, char a2)
{
  *(v2 + 248) = result;
  *(v2 + 256) = a2 & 1;
  return result;
}

uint64_t ScienceData.contentTriggerDampenerCoefficient.setter(uint64_t result, char a2)
{
  *(v2 + 264) = result;
  *(v2 + 272) = a2 & 1;
  return result;
}

unint64_t sub_217D336A0(char a1)
{
  result = 0x4365727574616566;
  switch(a1)
  {
    case 1:
    case 10:
      result = 0xD000000000000010;
      break;
    case 2:
      v3 = 10;
      goto LABEL_19;
    case 3:
      result = 0xD000000000000014;
      break;
    case 5:
      return result;
    case 6:
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
    case 18:
    case 23:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 15:
    case 20:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x726F635369626174;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0x696C7069746C756DLL;
      break;
    case 21:
      result = 0xD000000000000020;
      break;
    case 22:
      v3 = 9;
LABEL_19:
      result = v3 | 0xD000000000000014;
      break;
    case 24:
      result = 0xD000000000000021;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_217D33940@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D34F64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D33974(uint64_t a1)
{
  v2 = sub_217D34104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D339B0(uint64_t a1)
{
  v2 = sub_217D34104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScienceData.encode(to:)(void *a1)
{
  sub_217D34B1C(0, &qword_2811BC840, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v42 = *(v1 + 16);
  v43 = v8;
  v10 = *(v1 + 40);
  v39 = *(v1 + 32);
  v40 = v9;
  v37 = *(v1 + 48);
  v38 = v10;
  v11 = *(v1 + 120);
  v41 = *(v1 + 112);
  v35 = v11;
  v36 = *(v1 + 128);
  v33 = *(v1 + 136);
  v34 = *(v1 + 144);
  v19 = *(v1 + 152);
  v20 = *(v1 + 160);
  v21 = *(v1 + 168);
  v22 = *(v1 + 176);
  v23 = *(v1 + 184);
  v24 = *(v1 + 192);
  v25 = *(v1 + 200);
  v26 = *(v1 + 208);
  v27 = *(v1 + 216);
  v28 = *(v1 + 224);
  v29 = *(v1 + 232);
  v30 = *(v1 + 240);
  v31 = *(v1 + 248);
  v32 = *(v1 + 256);
  v12 = *(v1 + 264);
  v13 = *(v1 + 272);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D34104();
  sub_217D89E7C();
  LOBYTE(v46) = 0;
  v14 = v44;
  sub_217D89C8C();
  if (v14)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v18 = v13;
  v17 = v12;
  v44 = v5;
  v16 = v41;
  LOBYTE(v46) = 1;
  sub_217D89C8C();
  LOBYTE(v46) = 2;
  v43 = v4;
  sub_217D89C8C();
  LOBYTE(v46) = 3;
  sub_217D89C8C();
  LOBYTE(v46) = 4;
  sub_217D89C8C();
  LOBYTE(v46) = 5;
  sub_217D89C8C();
  LOBYTE(v46) = 6;
  sub_217D89C8C();
  LOBYTE(v46) = 7;
  sub_217D89C8C();
  LOBYTE(v46) = 8;
  sub_217D89C8C();
  LOBYTE(v46) = 9;
  sub_217D89C8C();
  LOBYTE(v46) = 10;
  sub_217D89C8C();
  LOBYTE(v46) = 11;
  sub_217D89C8C();
  LOBYTE(v46) = 12;
  sub_217D89C8C();
  LOBYTE(v46) = 13;
  sub_217D89C8C();
  v46 = v16;
  v45[0] = 14;
  sub_217D34158();
  sub_217D34B80(&qword_2811BCD98, sub_217CDD878, MEMORY[0x277D83948]);
  sub_217D89CAC();
  LOBYTE(v46) = 15;
  sub_217D89C2C();
  LOBYTE(v46) = 16;
  sub_217D89C2C();
  LOBYTE(v46) = 17;
  sub_217D89C2C();
  LOBYTE(v46) = 18;
  sub_217D89C2C();
  LOBYTE(v46) = 19;
  sub_217D89C2C();
  LOBYTE(v46) = 20;
  sub_217D89C2C();
  LOBYTE(v46) = 21;
  sub_217D89C2C();
  LOBYTE(v46) = 22;
  sub_217D89C2C();
  LOBYTE(v46) = 23;
  sub_217D89C2C();
  LOBYTE(v46) = 24;
  sub_217D89C2C();
  return (*(v44 + 8))(v7, v43);
}

unint64_t sub_217D34104()
{
  result = qword_2811C7CD8;
  if (!qword_2811C7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CD8);
  }

  return result;
}

void sub_217D34158()
{
  if (!qword_2811BCDA0)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCDA0);
    }
  }
}

uint64_t ScienceData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217D34B1C(0, &qword_2811BCB38, MEMORY[0x277D844C8]);
  v123 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D34104();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  LOBYTE(v74[0]) = 0;
  sub_217D89BAC();
  v11 = v10;
  LOBYTE(v74[0]) = 1;
  sub_217D89BAC();
  v13 = v12;
  LOBYTE(v74[0]) = 2;
  sub_217D89BAC();
  v15 = v14;
  LOBYTE(v74[0]) = 3;
  sub_217D89BAC();
  v17 = v16;
  LOBYTE(v74[0]) = 4;
  sub_217D89BAC();
  v19 = v18;
  LOBYTE(v74[0]) = 5;
  sub_217D89BAC();
  v21 = v20;
  LOBYTE(v74[0]) = 6;
  sub_217D89BAC();
  v23 = v22;
  LOBYTE(v74[0]) = 7;
  sub_217D89BAC();
  v72 = v24;
  v71 = a2;
  LOBYTE(v74[0]) = 8;
  sub_217D89BAC();
  v26 = v25;
  LOBYTE(v74[0]) = 9;
  sub_217D89BAC();
  v70 = v27;
  LOBYTE(v74[0]) = 10;
  sub_217D89BAC();
  v69 = v28;
  LOBYTE(v74[0]) = 11;
  sub_217D89BAC();
  v68 = v29;
  LOBYTE(v74[0]) = 12;
  sub_217D89BAC();
  v67 = v30;
  LOBYTE(v74[0]) = 13;
  sub_217D89BAC();
  v66 = v31;
  sub_217D34158();
  LOBYTE(v73[0]) = 14;
  sub_217D34B80(&qword_2811BCD90, sub_217CDD820, MEMORY[0x277D83978]);
  sub_217D89BCC();
  v32 = v74[0];
  LOBYTE(v74[0]) = 15;
  v33 = sub_217D89B4C();
  v122 = v34 & 1;
  LOBYTE(v74[0]) = 16;
  v35 = sub_217D89B4C();
  v120 = v36 & 1;
  LOBYTE(v74[0]) = 17;
  v65 = sub_217D89B4C();
  v118 = v37 & 1;
  LOBYTE(v74[0]) = 18;
  v64 = sub_217D89B4C();
  v116 = v38 & 1;
  LOBYTE(v74[0]) = 19;
  v63 = sub_217D89B4C();
  v114 = v39 & 1;
  LOBYTE(v74[0]) = 20;
  v62 = sub_217D89B4C();
  v112 = v40 & 1;
  LOBYTE(v74[0]) = 21;
  v61 = sub_217D89B4C();
  v110 = v41 & 1;
  LOBYTE(v74[0]) = 22;
  v60 = sub_217D89B4C();
  v108 = v42 & 1;
  LOBYTE(v74[0]) = 23;
  v59 = sub_217D89B4C();
  v106 = v43 & 1;
  v103 = 24;
  v58 = sub_217D89B4C();
  v57 = v44;
  (*(v9 + 8))(v8, v123);
  v104 = v57 & 1;
  v73[0] = v11;
  v73[1] = v13;
  v73[2] = v15;
  v73[3] = v17;
  v73[4] = v19;
  v73[5] = v21;
  v73[6] = v23;
  v73[7] = v72;
  v73[8] = v26;
  v73[9] = v70;
  v73[10] = v69;
  v73[11] = v68;
  v73[12] = v67;
  v73[13] = v66;
  v73[14] = v32;
  v73[15] = v33;
  LODWORD(v123) = v122;
  LOBYTE(v73[16]) = v122;
  *(&v73[16] + 1) = *v121;
  HIDWORD(v73[16]) = *&v121[3];
  v56 = v35;
  v73[17] = v35;
  v57 = v120;
  LOBYTE(v73[18]) = v120;
  *(&v73[18] + 1) = *v119;
  HIDWORD(v73[18]) = *&v119[3];
  v73[19] = v65;
  v55 = v118;
  LOBYTE(v73[20]) = v118;
  HIDWORD(v73[20]) = *&v117[3];
  *(&v73[20] + 1) = *v117;
  v73[21] = v64;
  v54 = v116;
  LOBYTE(v73[22]) = v116;
  HIDWORD(v73[22]) = *&v115[3];
  *(&v73[22] + 1) = *v115;
  v73[23] = v63;
  v53 = v114;
  LOBYTE(v73[24]) = v114;
  HIDWORD(v73[24]) = *&v113[3];
  *(&v73[24] + 1) = *v113;
  v73[25] = v62;
  v52 = v112;
  LOBYTE(v73[26]) = v112;
  HIDWORD(v73[26]) = *&v111[3];
  *(&v73[26] + 1) = *v111;
  v73[27] = v61;
  v51 = v110;
  LOBYTE(v73[28]) = v110;
  HIDWORD(v73[28]) = *&v109[3];
  *(&v73[28] + 1) = *v109;
  v45 = v59;
  v73[29] = v60;
  v50 = v108;
  LOBYTE(v73[30]) = v108;
  HIDWORD(v73[30]) = *&v107[3];
  *(&v73[30] + 1) = *v107;
  v73[31] = v59;
  HIDWORD(v49) = v106;
  LOBYTE(v73[32]) = v106;
  *(&v73[32] + 1) = *v105;
  HIDWORD(v73[32]) = *&v105[3];
  v46 = v58;
  v73[33] = v58;
  v47 = v104;
  LOBYTE(v73[34]) = v104;
  memcpy(v71, v73, 0x111uLL);
  sub_217AD1744(v73, v74);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v74[0] = v11;
  v74[1] = v13;
  v74[2] = v15;
  v74[3] = v17;
  v74[4] = v19;
  v74[5] = v21;
  v74[6] = v23;
  v74[7] = v72;
  v74[8] = v26;
  v74[9] = v70;
  v74[10] = v69;
  v74[11] = v68;
  v74[12] = v67;
  v74[13] = v66;
  v74[14] = v32;
  v74[15] = v33;
  v75 = v123;
  *&v76[3] = *&v121[3];
  *v76 = *v121;
  v77 = v56;
  v78 = v57;
  *v79 = *v119;
  *&v79[3] = *&v119[3];
  v80 = v65;
  v81 = v55;
  *v82 = *v117;
  *&v82[3] = *&v117[3];
  v83 = v64;
  v84 = v54;
  *&v85[3] = *&v115[3];
  *v85 = *v115;
  v86 = v63;
  v87 = v53;
  *&v88[3] = *&v113[3];
  *v88 = *v113;
  v89 = v62;
  v90 = v52;
  *&v91[3] = *&v111[3];
  *v91 = *v111;
  v92 = v61;
  v93 = v51;
  *&v94[3] = *&v109[3];
  *v94 = *v109;
  v95 = v60;
  v96 = v50;
  *&v97[3] = *&v107[3];
  *v97 = *v107;
  v98 = v45;
  v99 = BYTE4(v49);
  *v100 = *v105;
  *&v100[3] = *&v105[3];
  v101 = v46;
  v102 = v47;
  return sub_217AD28B8(v74);
}

void sub_217D34B1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D34104();
    v7 = a3(a1, &type metadata for ScienceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D34B80(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217D34158();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217D34C2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 273))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217D34C74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
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
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScienceData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScienceData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217D34E60()
{
  result = qword_27CBA4F88;
  if (!qword_27CBA4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F88);
  }

  return result;
}

unint64_t sub_217D34EB8()
{
  result = qword_2811C7CC8;
  if (!qword_2811C7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CC8);
  }

  return result;
}

unint64_t sub_217D34F10()
{
  result = qword_2811C7CD0;
  if (!qword_2811C7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CD0);
  }

  return result;
}

uint64_t sub_217D34F64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000217DD2DF0 == a2;
  if (v3 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2E10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD2E30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD2E50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DD2E70 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4365727574616566 && a2 == 0xEA00000000007274 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD2E90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCE8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD2EB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DD2ED0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2EF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD2F10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2F30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD2F50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD2F70 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD2F90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x726F635369626174 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DD2FB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD2FD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265 || (sub_217D89D4C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD2FF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000217DD3010 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DD3040 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD3060 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DD3080 == a2)
  {

    return 24;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

NewsAnalytics::WidgetLocation_optional __swiftcall WidgetLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WidgetLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6761507961646F74;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

unint64_t sub_217D35844()
{
  result = qword_27CBA4F90;
  if (!qword_27CBA4F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4F90);
  }

  return result;
}

uint64_t sub_217D358A0(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217D359B0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xD000000000000011;
  v6 = 0x8000000217DCC8E0;
  v7 = 0x8000000217DCC900;
  v8 = 0xD000000000000013;
  if (v2 != 4)
  {
    v8 = 0xD000000000000014;
    v7 = 0x8000000217DCC920;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE900000000000065;
  v10 = 0x6761507961646F74;
  if (v2 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x8000000217DCC8C0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_217D35B3C()
{
  result = qword_2811C69C0;
  if (!qword_2811C69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C69C0);
  }

  return result;
}

NewsAnalytics::SubscribeButtonContextData __swiftcall SubscribeButtonContextData.init(location:targetType:)(NewsAnalytics::SubscribeButtonLocation location, NewsAnalytics::SubscribeButtonTargetType_optional targetType)
{
  v3 = *targetType.value;
  *v2 = *location;
  v2[1] = v3;
  result.location = location;
  return result;
}

uint64_t sub_217D35C1C()
{
  if (*v0)
  {
    return 0x7954746567726174;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_217D35C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

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

uint64_t sub_217D35D40(uint64_t a1)
{
  v2 = sub_217D35F64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D35D7C(uint64_t a1)
{
  v2 = sub_217D35F64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribeButtonContextData.encode(to:)(void *a1)
{
  sub_217D36244(0, &qword_2811BC580, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D35F64();
  sub_217D89E7C();
  v16 = v9;
  v15 = 0;
  sub_217D35FB8();
  sub_217D89CAC();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_217D3600C();
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217D35F64()
{
  result = qword_2811BEE40;
  if (!qword_2811BEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE40);
  }

  return result;
}

unint64_t sub_217D35FB8()
{
  result = qword_2811BFCD8[0];
  if (!qword_2811BFCD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BFCD8);
  }

  return result;
}

unint64_t sub_217D3600C()
{
  result = qword_2811BF158[0];
  if (!qword_2811BF158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BF158);
  }

  return result;
}

uint64_t SubscribeButtonContextData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217D36244(0, &qword_27CBA4F98, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D35F64();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    sub_217D362A8();
    sub_217D89BCC();
    v10 = v17;
    v14 = 1;
    sub_217D362FC();
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D36244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D35F64();
    v7 = a3(a1, &type metadata for SubscribeButtonContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D362A8()
{
  result = qword_27CBA4FA0;
  if (!qword_27CBA4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FA0);
  }

  return result;
}

unint64_t sub_217D362FC()
{
  result = qword_27CBA4FA8;
  if (!qword_27CBA4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscribeButtonContextData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 6;
  if (v6 < 5)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for SubscribeButtonContextData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217D36500()
{
  result = qword_27CBA4FB0;
  if (!qword_27CBA4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FB0);
  }

  return result;
}

unint64_t sub_217D36558()
{
  result = qword_2811BEE30;
  if (!qword_2811BEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE30);
  }

  return result;
}

unint64_t sub_217D365B0()
{
  result = qword_2811BEE38;
  if (!qword_2811BEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE38);
  }

  return result;
}

uint64_t IssueExposureData.issueSessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IssueExposureData.issueSessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217D366C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365536575737369 && a2 == 0xEE0044496E6F6973)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217D36750(uint64_t a1)
{
  v2 = sub_217D36914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D3678C(uint64_t a1)
{
  v2 = sub_217D36914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueExposureData.encode(to:)(void *a1)
{
  sub_217D36AEC(0, &qword_27CBA4FB8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D36914();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D36914()
{
  result = qword_27CBA4FC0;
  if (!qword_27CBA4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FC0);
  }

  return result;
}

uint64_t IssueExposureData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217D36AEC(0, &qword_27CBA4FC8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D36914();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B8C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D36AEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D36914();
    v7 = a3(a1, &type metadata for IssueExposureData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D36B54()
{
  result = qword_2811C44E0;
  if (!qword_2811C44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C44E0);
  }

  return result;
}

unint64_t sub_217D36BAC()
{
  result = qword_2811C44E8[0];
  if (!qword_2811C44E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C44E8);
  }

  return result;
}

uint64_t sub_217D36C18(void *a1)
{
  sub_217D36AEC(0, &qword_27CBA4FB8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D36914();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D36D88()
{
  result = qword_27CBA4FD0;
  if (!qword_27CBA4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FD0);
  }

  return result;
}

unint64_t sub_217D36DE0()
{
  result = qword_27CBA4FD8;
  if (!qword_27CBA4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FD8);
  }

  return result;
}

unint64_t sub_217D36E38()
{
  result = qword_27CBA4FE0;
  if (!qword_27CBA4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4FE0);
  }

  return result;
}

uint64_t sub_217D36F54()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5018);
  __swift_project_value_buffer(v0, qword_27CBA5018);
  return sub_217D8866C();
}

uint64_t NotificationIgnoreSubscribeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NotificationIgnoreSubscribeEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 20);
  sub_217D37668(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 20);
  sub_217D37668(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.notificationSubscribedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 24);
  sub_217D37668(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.notificationSubscribedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 24);
  sub_217D37668(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 28);
  sub_217D37668(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 28);
  sub_217D37668(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 32);
  sub_217D37668(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D37668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t NotificationIgnoreSubscribeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationIgnoreSubscribeEvent(0) + 32);
  sub_217D37668(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationIgnoreSubscribeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NotificationIgnoreSubscribeEvent(0);
  v5 = v4[5];
  sub_217D37668(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217D37668(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217D37668(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217D37668(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t NotificationIgnoreSubscribeEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NotificationIgnoreSubscribeEvent.Model.notificationSubscribedData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t NotificationIgnoreSubscribeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t NotificationIgnoreSubscribeEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

__n128 NotificationIgnoreSubscribeEvent.Model.init(eventData:tagData:notificationSubscribedData:userBundleSubscriptionContextData:userChannelContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *a3;
  v12 = *a5;
  v13 = a5[1];
  v14 = *(a5 + 1);
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
  v17 = (a6 + v16[5]);
  *v17 = v9;
  v17[1] = v10;
  *(a6 + v16[6]) = v11;
  v18 = a6 + v16[7];
  v19 = *(a4 + 16);
  *v18 = *a4;
  *(v18 + 16) = v19;
  result = *(a4 + 32);
  *(v18 + 32) = result;
  *(v18 + 48) = *(a4 + 48);
  v21 = a6 + v16[8];
  *v21 = v12;
  *(v21 + 1) = v13;
  *(v21 + 2) = v14;
  return result;
}

unint64_t sub_217D37CA8()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  if (v1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v2 = 0x61746144676174;
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

uint64_t sub_217D37D54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D38F14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D37D7C(uint64_t a1)
{
  v2 = sub_217D38168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D37DB8(uint64_t a1)
{
  v2 = sub_217D38168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationIgnoreSubscribeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D3869C(0, &qword_27CBA5030, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D38168();
  sub_217D89E7C();
  LOBYTE(v30[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;
    LOBYTE(v26) = 1;
    sub_217AF6B14();

    sub_217D89CAC();

    v33 = *(v3 + v10[6]);
    v32 = 2;
    sub_217B37F4C();
    sub_217D89C3C();
    v13 = (v3 + v10[7]);
    v14 = v13[1];
    v30[0] = *v13;
    v30[1] = v14;
    v16 = *v13;
    v15 = v13[1];
    v30[2] = v13[2];
    v31 = *(v13 + 48);
    v26 = v16;
    v27 = v15;
    v28 = v13[2];
    v29 = *(v13 + 48);
    v25 = 3;
    sub_217ACC004(v30, v23);
    sub_217A55B98();
    sub_217D89CAC();
    v23[0] = v26;
    v23[1] = v27;
    v23[2] = v28;
    v24 = v29;
    sub_217ACC69C(v23);
    v17 = (v3 + v10[8]);
    v18 = *v17;
    v19 = v17[1];
    LOWORD(v17) = *(v17 + 1);
    v21[12] = v18;
    v21[13] = v19;
    v22 = v17;
    v21[11] = 4;
    sub_217ACFB8C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D38168()
{
  result = qword_27CBA5038;
  if (!qword_27CBA5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5038);
  }

  return result;
}

uint64_t NotificationIgnoreSubscribeEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_217D8899C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D3869C(0, &qword_27CBA5040, MEMORY[0x277D844C8]);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D38168();
  v28 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v24;
  LOBYTE(v29) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v25;
  sub_217D89BCC();
  (*(v12 + 32))(v11, v13, v4);
  v34 = 1;
  sub_217AF6AC0();
  sub_217D89BCC();
  v14 = *(&v29 + 1);
  v15 = &v11[v9[5]];
  *v15 = v29;
  *(v15 + 1) = v14;
  v34 = 2;
  sub_217B37EF8();
  sub_217D89B5C();
  v16 = v26;
  *&v11[v9[6]] = v29;
  v37 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v17 = &v11[v9[7]];
  v18 = v30;
  *v17 = v29;
  *(v17 + 1) = v18;
  *(v17 + 2) = v31;
  v17[48] = v32;
  v33 = 4;
  sub_217ACFB38();
  sub_217D89BCC();
  (*(v16 + 8))(v28, v27);
  v19 = v35;
  v20 = v36;
  v21 = &v11[v9[8]];
  *v21 = v34;
  v21[1] = v19;
  *(v21 + 1) = v20;
  sub_217D38700(v11, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D38764(v11);
}

void sub_217D3869C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D38168();
    v7 = a3(a1, &type metadata for NotificationIgnoreSubscribeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D38700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D38764(uint64_t a1)
{
  v2 = type metadata accessor for NotificationIgnoreSubscribeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D38898@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D37668(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217D37668(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217D37668(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217D37668(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

void sub_217D38B34(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217D37668(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
    if (v2 <= 0x3F)
    {
      sub_217D37668(319, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
      if (v3 <= 0x3F)
      {
        sub_217D37668(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          sub_217D37668(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217D38D08(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D38DAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_217D38DAC()
{
  if (!qword_27CBA5068)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA5068);
    }
  }
}

unint64_t sub_217D38E10()
{
  result = qword_27CBA5070;
  if (!qword_27CBA5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5070);
  }

  return result;
}

unint64_t sub_217D38E68()
{
  result = qword_27CBA5078;
  if (!qword_27CBA5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5078);
  }

  return result;
}

unint64_t sub_217D38EC0()
{
  result = qword_27CBA5080;
  if (!qword_27CBA5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5080);
  }

  return result;
}

uint64_t sub_217D38F14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCDB90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217D3919C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA50B8);
  __swift_project_value_buffer(v0, qword_27CBA50B8);
  return sub_217D8866C();
}

uint64_t AppBadgeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppBadgeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppBadgeEvent(0) + 20);
  sub_217A62ED4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppBadgeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppBadgeEvent(0) + 20);
  sub_217A62ED4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppBadgeEvent.badgeOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppBadgeEvent(0) + 24);
  sub_217A62ED4(0, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0, &type metadata for BadgeOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppBadgeEvent.badgeOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppBadgeEvent(0) + 24);
  sub_217A62ED4(0, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0, &type metadata for BadgeOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppBadgeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppBadgeEvent(0);
  v5 = *(v4 + 20);
  sub_217A62ED4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A62ED4(0, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0, &type metadata for BadgeOriginationData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t AppBadgeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppBadgeEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t AppBadgeEvent.Model.badgeOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppBadgeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 AppBadgeEvent.Model.init(eventData:userBundleSubscriptionContextData:badgeOriginationData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for AppBadgeEvent.Model(0);
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

unint64_t sub_217D39938()
{
  v1 = 0xD000000000000021;
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
    return 0x746144746E657665;
  }
}

uint64_t sub_217D399A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D3A7A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D399CC(uint64_t a1)
{
  v2 = sub_217D39CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D39A08(uint64_t a1)
{
  v2 = sub_217D39CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppBadgeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D3A144(0, &qword_27CBA50D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D39CF0();
  sub_217D89E7C();
  v28 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for AppBadgeEvent.Model(0);
    v11 = (v3 + *(v10 + 20));
    v12 = v11[2];
    v13 = *v11;
    v14 = *v11;
    v25 = v11[1];
    v26 = v12;
    v24 = v13;
    v27 = *(v11 + 48);
    v20 = v14;
    v21 = v25;
    v22 = v11[2];
    v23 = *(v11 + 48);
    v19 = 1;
    sub_217ACC004(&v24, v17);
    sub_217A55B98();
    sub_217D89CAC();
    v17[0] = v20;
    v17[1] = v21;
    v17[2] = v22;
    v18 = v23;
    sub_217ACC69C(v17);
    v16[15] = *(v3 + *(v10 + 24));
    v16[14] = 2;
    sub_217A69CD0();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D39CF0()
{
  result = qword_27CBA50E0;
  if (!qword_27CBA50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA50E0);
  }

  return result;
}

uint64_t AppBadgeEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_217D8899C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D3A144(0, &qword_27CBA50E8, MEMORY[0x277D844C8]);
  v27 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for AppBadgeEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D39CF0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v24;
  v12 = v25;
  v21 = v9;
  v22 = v11;
  LOBYTE(v28) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v26;
  v14 = v27;
  sub_217D89BCC();
  (*(v12 + 32))(v22, v15, v4);
  v34 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v16 = &v22[*(v21 + 20)];
  v17 = v29;
  *v16 = v28;
  *(v16 + 1) = v17;
  *(v16 + 2) = v30;
  v16[48] = v31;
  v32 = 2;
  sub_217BB03D8();
  sub_217D89BCC();
  (*(v13 + 8))(v8, v14);
  v18 = v22;
  v22[*(v21 + 24)] = v33;
  sub_217D3A1A8(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D3A20C(v18);
}

void sub_217D3A144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D39CF0();
    v7 = a3(a1, &type metadata for AppBadgeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D3A1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppBadgeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D3A20C(uint64_t a1)
{
  v2 = type metadata accessor for AppBadgeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D3A340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217A62ED4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217A62ED4(0, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0, &type metadata for BadgeOriginationData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217D3A4D8(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A62ED4(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
    if (v2 <= 0x3F)
    {
      sub_217A62ED4(319, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0, &type metadata for BadgeOriginationData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217D3A60C(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217D3A6A4()
{
  result = qword_27CBA5110;
  if (!qword_27CBA5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5110);
  }

  return result;
}

unint64_t sub_217D3A6FC()
{
  result = qword_27CBA5118;
  if (!qword_27CBA5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5118);
  }

  return result;
}

unint64_t sub_217D3A754()
{
  result = qword_27CBA5120;
  if (!qword_27CBA5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5120);
  }

  return result;
}

uint64_t sub_217D3A7A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD11D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

void AppData.init(client:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_217D8888C();
  v6 = v5;
  v7 = sub_217D8886C();
  v9 = v8;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v9;
}

uint64_t TodayFeedPoolMyArticlesData.feedsNetworkDuration.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t TodayFeedPoolMyArticlesData.evergreenNetworkDuration.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t TodayFeedPoolMyArticlesData.scoringDuration.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t TodayFeedPoolMyArticlesData.smarterFetchData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_217D3AA94(v2, v3, v4);
}

uint64_t sub_217D3AA94(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

__n128 TodayFeedPoolMyArticlesData.smarterFetchData.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_217D3AB20(v1[8], v1[9], v1[10]);
  result = v4;
  *(v1 + 4) = v4;
  v1[10] = v2;
  return result;
}

uint64_t sub_217D3AB20(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

__n128 TodayFeedPoolMyArticlesData.init(feedItemCount:totalDuration:feedsNetworkDuration:evergreenNetworkDuration:scoringDuration:source:smarterFetchData:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, unint64_t a7@<X6>, char a8@<W7>, __n128 *a9@<X8>, unsigned __int8 *a10, __n128 *a11)
{
  v12 = *a10;
  v15 = *a11;
  v13 = a11[1].n128_u64[0];
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u8[8] = a4 & 1;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u8[8] = a6 & 1;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u8[8] = a8 & 1;
  a9[3].n128_u8[9] = v12;
  sub_217D3AB20(0, 0, 0);
  result = v15;
  a9[4] = v15;
  a9[5].n128_u64[0] = v13;
  return result;
}

unint64_t sub_217D3AC04()
{
  v1 = *v0;
  v2 = 0x6D65744964656566;
  v3 = 0x656372756F73;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0x44676E69726F6373;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 == 1)
  {
    v5 = 0x7275446C61746F74;
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

uint64_t sub_217D3AD04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D3B938(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D3AD2C(uint64_t a1)
{
  v2 = sub_217D3B068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D3AD68(uint64_t a1)
{
  v2 = sub_217D3B068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TodayFeedPoolMyArticlesData.encode(to:)(void *a1)
{
  sub_217D3B5DC(0, &qword_2811BC570, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *(v1 + 8);
  v23 = *(v1 + 16);
  v24 = v8;
  v29 = *(v1 + 24);
  v22 = *(v1 + 32);
  v21 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v17 = *(v1 + 57);
  v18 = v10;
  v11 = *(v1 + 72);
  v19 = *(v1 + 64);
  v20 = v9;
  v16 = v11;
  v12 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D3B068();
  sub_217D89E7C();
  LOBYTE(v26) = 0;
  v13 = v25;
  sub_217D89CCC();
  if (!v13)
  {
    v25 = v12;
    v14 = v19;
    LOBYTE(v26) = 1;
    sub_217D89CCC();
    LOBYTE(v26) = 2;
    sub_217D89C5C();
    LOBYTE(v26) = 3;
    sub_217D89C5C();
    LOBYTE(v26) = 4;
    sub_217D89C5C();
    LOBYTE(v26) = v17;
    v30 = 5;
    sub_217D3B0BC();
    sub_217D89C3C();
    v26 = v14;
    v27 = v16;
    v28 = v25;
    v30 = 6;
    sub_217D3AA94(v14, v16, v25);
    sub_217C26A98();
    sub_217D89C3C();
    sub_217D3AB20(v26, v27, v28);
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D3B068()
{
  result = qword_2811BEBD8[0];
  if (!qword_2811BEBD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BEBD8);
  }

  return result;
}

unint64_t sub_217D3B0BC()
{
  result = qword_2811BE1E0;
  if (!qword_2811BE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE1E0);
  }

  return result;
}

uint64_t TodayFeedPoolMyArticlesData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D3B5DC(0, &qword_27CBA5128, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D3B068();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_217D3AB20(0, 0, 0);
  }

  else
  {
    LOBYTE(v41[0]) = 0;
    v10 = sub_217D89BEC();
    LOBYTE(v41[0]) = 1;
    v11 = sub_217D89BEC();
    LOBYTE(v41[0]) = 2;
    v66 = sub_217D89B7C();
    v65 = v12 & 1;
    LOBYTE(v41[0]) = 3;
    v34 = sub_217D89B7C();
    v63 = v13 & 1;
    LOBYTE(v41[0]) = 4;
    v33 = sub_217D89B7C();
    v61 = v14 & 1;
    LOBYTE(v35) = 5;
    sub_217D3B640();
    sub_217D89B5C();
    v32 = LOBYTE(v41[0]);
    v55 = 6;
    sub_217C26A40();
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v15 = v56;
    v27 = v56;
    v26 = v57;
    v25 = v58;
    sub_217D3AB20(0, 0, 0);
    v31 = v10;
    *&v35 = v10;
    v30 = v11;
    *(&v35 + 1) = v11;
    *&v36 = v66;
    v29 = v65;
    BYTE8(v36) = v65;
    *(&v36 + 9) = *v64;
    HIDWORD(v36) = *&v64[3];
    *&v37 = v34;
    v28 = v63;
    BYTE8(v37) = v63;
    *(&v37 + 9) = *v62;
    HIDWORD(v37) = *&v62[3];
    v16 = v33;
    *&v38 = v33;
    v17 = v61;
    BYTE8(v38) = v61;
    LOBYTE(v10) = v32;
    BYTE9(v38) = v32;
    HIWORD(v38) = v60;
    *(&v38 + 10) = v59;
    *&v39 = v15;
    v18 = v26;
    v19 = v25;
    *(&v39 + 1) = v26;
    v40 = v25;
    v20 = v37;
    v21 = v38;
    v22 = v39;
    *(a2 + 80) = v25;
    *(a2 + 48) = v21;
    *(a2 + 64) = v22;
    v23 = v35;
    *(a2 + 16) = v36;
    *(a2 + 32) = v20;
    *a2 = v23;
    sub_217D3B694(&v35, v41);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v41[0] = v31;
    v41[1] = v30;
    v41[2] = v66;
    v42 = v29;
    *v43 = *v64;
    *&v43[3] = *&v64[3];
    v44 = v34;
    v45 = v28;
    *v46 = *v62;
    *&v46[3] = *&v62[3];
    v47 = v16;
    v48 = v17;
    v49 = v10;
    v51 = v60;
    v50 = v59;
    v52 = v27;
    v53 = v18;
    v54 = v19;
    return sub_217D3B6CC(v41);
  }
}

void sub_217D3B5DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D3B068();
    v7 = a3(a1, &type metadata for TodayFeedPoolMyArticlesData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D3B640()
{
  result = qword_27CBA5130;
  if (!qword_27CBA5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5130);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13NewsAnalytics16SmarterFetchDataVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217D3B74C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_217D3B7A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_217D3B834()
{
  result = qword_27CBA5138;
  if (!qword_27CBA5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5138);
  }

  return result;
}

unint64_t sub_217D3B88C()
{
  result = qword_2811BEBC8;
  if (!qword_2811BEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEBC8);
  }

  return result;
}

unint64_t sub_217D3B8E4()
{
  result = qword_2811BEBD0;
  if (!qword_2811BEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEBD0);
  }

  return result;
}

uint64_t sub_217D3B938(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D65744964656566 && a2 == 0xED0000746E756F43;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7275446C61746F74 && a2 == 0xED00006E6F697461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD30B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DD30D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44676E69726F6373 && a2 == 0xEF6E6F6974617275 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD30F0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t RecipeData.recipeID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecipeData.recipeID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RecipeData.totalTime.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RecipeData.totalTime.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall RecipeData.init(recipeID:isPaid:totalTime:)(NewsAnalytics::RecipeData *__return_ptr retstr, Swift::String recipeID, Swift::Bool isPaid, Swift::String totalTime)
{
  retstr->recipeID = recipeID;
  retstr->isPaid = isPaid;
  retstr->totalTime = totalTime;
}

uint64_t sub_217D3BCF8()
{
  v1 = 0x646961507369;
  if (*v0 != 1)
  {
    v1 = 0x6D69546C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449657069636572;
  }
}

uint64_t sub_217D3BD54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D3C3F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D3BD7C(uint64_t a1)
{
  v2 = sub_217D3BFA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D3BDB8(uint64_t a1)
{
  v2 = sub_217D3BFA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeData.encode(to:)(void *a1)
{
  sub_217D3C23C(0, &qword_2811BC888, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v12 = *(v1 + 16);
  v8 = *(v1 + 24);
  v11[1] = *(v1 + 32);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D3BFA4();
  sub_217D89E7C();
  v15 = 0;
  v9 = v11[3];
  sub_217D89C6C();
  if (!v9)
  {
    v14 = 1;
    sub_217D89C7C();
    v13 = 2;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D3BFA4()
{
  result = qword_2811C7F20;
  if (!qword_2811C7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F20);
  }

  return result;
}

uint64_t RecipeData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D3C23C(0, &qword_27CBA5140, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D3BFA4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v24 = 1;
  v22 = sub_217D89B9C() & 1;
  v23 = 2;
  v14 = sub_217D89B8C();
  v17 = v16;
  v18 = *(v7 + 8);
  v21 = v14;
  v18(v9, v6);
  v19 = v22;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v19;
  *(a2 + 24) = v21;
  *(a2 + 32) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D3C23C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D3BFA4();
    v7 = a3(a1, &type metadata for RecipeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D3C2EC()
{
  result = qword_27CBA5148;
  if (!qword_27CBA5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5148);
  }

  return result;
}

unint64_t sub_217D3C344()
{
  result = qword_2811C7F10;
  if (!qword_2811C7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F10);
  }

  return result;
}

unint64_t sub_217D3C39C()
{
  result = qword_2811C7F18;
  if (!qword_2811C7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F18);
  }

  return result;
}

uint64_t sub_217D3C3F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657069636572 && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217D3C5D4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5180);
  __swift_project_value_buffer(v0, qword_27CBA5180);
  return sub_217D8866C();
}

uint64_t RecipeShareEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RecipeShareEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 20);
  sub_217D3D708(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 20);
  sub_217D3D708(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 24);
  sub_217D3D708(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 24);
  sub_217D3D708(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 28);
  sub_217D3D708(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 28);
  sub_217D3D708(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 32);
  sub_217D3D708(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 32);
  sub_217D3D708(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 36);
  sub_217D3D708(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 36);
  sub_217D3D708(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 40);
  sub_217D3D708(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 40);
  sub_217D3D708(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.shareContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 44);
  sub_217D3D708(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.shareContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 44);
  sub_217D3D708(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 48);
  sub_217D3D708(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 48);
  sub_217D3D708(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 52);
  sub_217D3D708(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeShareEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 52);
  sub_217D3D708(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 56);
  sub_217D3D708(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D3D708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t RecipeShareEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeShareEvent(0) + 56);
  sub_217D3D708(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeShareEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RecipeShareEvent(0);
  v5 = v4[5];
  sub_217D3D708(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D3D708(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217D3D708(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217D3D708(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217D3D708(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217D3D708(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217D3D708(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217D3D708(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217D3D708(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217D3D708(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v2, v25);
}

uint64_t RecipeShareEvent.Model.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t RecipeShareEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecipeShareEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t RecipeShareEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t RecipeShareEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t RecipeShareEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t RecipeShareEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for RecipeShareEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t RecipeShareEvent.Model.shareContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void RecipeShareEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t RecipeShareEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 52);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t RecipeShareEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeShareEvent.Model(0) + 56);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

__n128 RecipeShareEvent.Model.init(eventData:recipeData:actionData:feedData:groupData:viewData:userChannelContextData:shareContextData:issueData:userBundleSubscriptionContextData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t *a12)
{
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  v18 = a2[3];
  v19 = a2[4];
  v37 = *a3;
  v39 = *a4;
  v38 = *(a4 + 2);
  v43 = a6[1];
  v44 = *a6;
  v42 = *(a6 + 8);
  v46 = a7[1];
  v47 = *a7;
  v45 = *(a7 + 1);
  v48 = a8[1];
  v49 = *a8;
  v54 = a12[1];
  v55 = *a12;
  v52 = *(a12 + 17);
  v53 = *(a12 + 16);
  v51 = a12[3];
  v50 = a12[4];
  v20 = sub_217D8899C();
  v40 = a10[1];
  v41 = *a10;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for RecipeShareEvent.Model(0);
  v22 = a9 + v21[5];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  *(v22 + 32) = v19;
  *(a9 + v21[6]) = v37;
  v23 = a9 + v21[7];
  *v23 = v39;
  *(v23 + 16) = v38;
  v24 = (a9 + v21[8]);
  v25 = a5[3];
  v24[2] = a5[2];
  v24[3] = v25;
  v26 = a5[1];
  *v24 = *a5;
  v24[1] = v26;
  v27 = a5[8];
  v24[7] = a5[7];
  v24[8] = v27;
  v28 = a5[6];
  v24[5] = a5[5];
  v24[6] = v28;
  v24[4] = a5[4];
  v29 = a9 + v21[9];
  *v29 = v44;
  *(v29 + 8) = v43;
  *(v29 + 16) = v42;
  v30 = a9 + v21[10];
  *v30 = v47;
  *(v30 + 1) = v46;
  *(v30 + 2) = v45;
  v31 = (a9 + v21[11]);
  *v31 = v49;
  v31[1] = v48;
  v32 = (a9 + v21[12]);
  *v32 = v41;
  v32[1] = v40;
  v33 = a9 + v21[13];
  v34 = *(a11 + 16);
  *v33 = *a11;
  *(v33 + 16) = v34;
  result = *(a11 + 32);
  *(v33 + 32) = result;
  *(v33 + 48) = *(a11 + 48);
  v36 = a9 + v21[14];
  *v36 = v55;
  *(v36 + 8) = v54;
  *(v36 + 16) = v53;
  *(v36 + 17) = v52;
  *(v36 + 24) = v51;
  *(v36 + 32) = v50;
  return result;
}

unint64_t sub_217D3E394(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x746144746E657665;
    v6 = 0x61446E6F69746361;
    v7 = 0x6174614464656566;
    if (a1 != 3)
    {
      v7 = 0x74614470756F7267;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6144657069636572;
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
    v1 = 0x7461446575737369;
    v2 = 0xD000000000000021;
    if (a1 != 9)
    {
      v2 = 0x446C656E6E616863;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1 != 6)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 == 5)
    {
      v3 = 0x6174614477656976;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217D3E510@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D40428(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D3E538(uint64_t a1)
{
  v2 = sub_217D3ECC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D3E574(uint64_t a1)
{
  v2 = sub_217D3ECC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeShareEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D3F6A0(0, &qword_27CBA5198, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v55[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D3ECC4();
  sub_217D89E7C();
  LOBYTE(v89) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for RecipeShareEvent.Model(0);
    v11 = v10[5];
    v102 = v3;
    v12 = v3 + v11;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    *&v89 = *v12;
    *(&v89 + 1) = v13;
    LOBYTE(v90) = v14;
    *(&v90 + 1) = v15;
    *&v91 = v16;
    LOBYTE(v80) = 1;
    sub_217B1F08C();

    sub_217D89CAC();

    v17 = v102;
    LOBYTE(v89) = *(v102 + v10[6]);
    LOBYTE(v80) = 2;
    sub_217AED190();
    sub_217D89CAC();
    v18 = (v17 + v10[7]);
    v19 = v18[1];
    v20 = v18[2];
    v99 = *v18;
    v100 = v19;
    v101 = v20;
    v98 = 3;
    sub_217AD1A68(v99, v19, v20);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v99, v100, v101);
    v21 = (v17 + v10[8]);
    v22 = v21[6];
    v23 = v21[4];
    v94 = v21[5];
    v95 = v22;
    v24 = v21[6];
    v25 = v21[8];
    v96 = v21[7];
    v97 = v25;
    v26 = v21[2];
    v27 = *v21;
    v90 = v21[1];
    v91 = v26;
    v28 = v21[2];
    v29 = v21[4];
    v92 = v21[3];
    v93 = v29;
    v30 = *v21;
    v86 = v24;
    v87 = v96;
    v88 = v21[8];
    v89 = v30;
    v82 = v28;
    v83 = v92;
    v84 = v23;
    v85 = v94;
    v80 = v27;
    v81 = v90;
    v79 = 4;
    sub_217AD87FC(&v89, v78);
    sub_217A5D3B4();
    sub_217D89C3C();
    v78[6] = v86;
    v78[7] = v87;
    v78[8] = v88;
    v78[2] = v82;
    v78[3] = v83;
    v78[4] = v84;
    v78[5] = v85;
    v78[0] = v80;
    v78[1] = v81;
    sub_217AD96E8(v78);
    v31 = (v17 + v10[9]);
    v32 = *v31;
    v33 = v31[1];
    LOWORD(v31) = *(v31 + 8);
    *&v69 = v32;
    *(&v69 + 1) = v33;
    LOWORD(v70) = v31;
    LOBYTE(v65) = 5;
    sub_217A5E790();

    sub_217D89C3C();

    v34 = v102;
    v35 = (v102 + v10[10]);
    v36 = *v35;
    v37 = v35[1];
    LOWORD(v35) = *(v35 + 1);
    LOBYTE(v69) = v36;
    BYTE1(v69) = v37;
    WORD1(v69) = v35;
    LOBYTE(v65) = 6;
    sub_217ACFB8C();
    sub_217D89CAC();
    v39 = (v34 + v10[11]);
    v40 = v39[1];
    *&v69 = *v39;
    *(&v69 + 1) = v40;
    LOBYTE(v65) = 7;
    sub_217AF2CAC();

    sub_217D89CAC();

    v41 = (v34 + v10[12]);
    v42 = v41[1];
    v43 = v41[2];
    v44 = v41[3];
    v74 = *v41;
    v75 = v42;
    v76 = v43;
    v77 = v44;
    v73 = 8;
    sub_217AE39D0(v74, v42, v43, v44);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v74, v75, v76, v77);
    v45 = (v34 + v10[13]);
    v46 = v45[1];
    v69 = *v45;
    v70 = v46;
    v48 = *v45;
    v47 = v45[1];
    v71 = v45[2];
    v72 = *(v45 + 48);
    v65 = v48;
    v66 = v47;
    v67 = v45[2];
    v68 = *(v45 + 48);
    v64 = 9;
    sub_217ACC004(&v69, v62);
    sub_217A55B98();
    sub_217D89CAC();
    v62[0] = v65;
    v62[1] = v66;
    v62[2] = v67;
    v63 = v68;
    sub_217ACC69C(v62);
    v49 = (v34 + v10[14]);
    v50 = v49[1];
    v51 = *(v49 + 16);
    v52 = *(v49 + 17);
    v53 = v49[3];
    v54 = v49[4];
    v56 = *v49;
    v57 = v50;
    v58 = v51;
    v59 = v52;
    v60 = v53;
    v61 = v54;
    v55[7] = 10;
    sub_217AD084C();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D3ECC4()
{
  result = qword_27CBA51A0;
  if (!qword_27CBA51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA51A0);
  }

  return result;
}

void RecipeShareEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_217D8899C();
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D3F6A0(0, &qword_27CBA51A8, MEMORY[0x277D844C8]);
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  v8 = type metadata accessor for RecipeShareEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D3ECC4();
  v55 = v7;
  v11 = v78;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v78 = a1;
    v48 = v8;
    v49 = v10;
    LOBYTE(v69) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v12 = v52;
    sub_217D89BCC();
    v13 = v49;
    (*(v51 + 32))(v49, v12, v3);
    LOBYTE(v64) = 1;
    sub_217B1F038();
    sub_217D89BCC();
    v47 = v3;
    v52 = 0;
    v14 = *(&v69 + 1);
    v15 = v70;
    v16 = *(&v70 + 1);
    v17 = v71;
    v18 = v48;
    v19 = &v13[v48[5]];
    *v19 = v69;
    *(v19 + 1) = v14;
    v19[16] = v15;
    *(v19 + 3) = v16;
    *(v19 + 4) = v17;
    LOBYTE(v64) = 2;
    sub_217AED13C();
    sub_217D89BCC();
    v49[v18[6]] = v69;
    LOBYTE(v64) = 3;
    sub_217A5B978();
    sub_217D89B5C();
    v20 = v70;
    v21 = &v49[v18[7]];
    *v21 = v69;
    *(v21 + 2) = v20;
    v68 = 4;
    sub_217A5D308();
    sub_217D89B5C();
    v22 = &v49[v18[8]];
    v23 = v74;
    v24 = v76;
    v25 = v77;
    *(v22 + 6) = v75;
    *(v22 + 7) = v24;
    *(v22 + 8) = v25;
    v26 = v70;
    v27 = v72;
    v28 = v73;
    *(v22 + 2) = v71;
    *(v22 + 3) = v27;
    *(v22 + 4) = v28;
    *(v22 + 5) = v23;
    *v22 = v69;
    *(v22 + 1) = v26;
    LOBYTE(v57) = 5;
    sub_217A5E738();
    sub_217D89B5C();
    v29 = v65;
    v30 = &v49[v18[9]];
    *v30 = v64;
    *(v30 + 8) = v29;
    LOBYTE(v57) = 6;
    sub_217ACFB38();
    sub_217D89BCC();
    v31 = BYTE1(v64);
    v32 = WORD1(v64);
    v33 = &v49[v18[10]];
    *v33 = v64;
    v33[1] = v31;
    *(v33 + 1) = v32;
    LOBYTE(v57) = 7;
    sub_217AF2C58();
    sub_217D89BCC();
    v34 = *(&v64 + 1);
    v35 = &v49[v18[11]];
    *v35 = v64;
    *(v35 + 1) = v34;
    LOBYTE(v57) = 8;
    sub_217ACFF40();
    sub_217D89B5C();
    v36 = &v49[v48[12]];
    v37 = v65;
    *v36 = v64;
    *(v36 + 1) = v37;
    v63 = 9;
    sub_217A54D08();
    sub_217D89BCC();
    v38 = &v49[v48[13]];
    v39 = v65;
    *v38 = v64;
    *(v38 + 1) = v39;
    *(v38 + 2) = v66;
    v38[48] = v67;
    v56 = 10;
    sub_217AD07F8();
    sub_217D89BCC();
    (*(v53 + 8))(v55, v54);
    v40 = v58;
    v41 = v59;
    v42 = v60;
    v43 = v61;
    v44 = v62;
    v45 = v49;
    v46 = &v49[v48[14]];
    *v46 = v57;
    *(v46 + 1) = v40;
    v46[16] = v41;
    v46[17] = v42;
    *(v46 + 3) = v43;
    *(v46 + 4) = v44;
    sub_217D3F704(v45, v50);
    __swift_destroy_boxed_opaque_existential_1(v78);
    sub_217D3F768(v45);
  }
}

void sub_217D3F6A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D3ECC4();
    v7 = a3(a1, &type metadata for RecipeShareEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D3F704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeShareEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D3F768(uint64_t a1)
{
  v2 = type metadata accessor for RecipeShareEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D3F89C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D3D708(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D3D708(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217D3D708(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217D3D708(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217D3D708(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217D3D708(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217D3D708(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217D3D708(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217D3D708(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217D3D708(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v4, v26);
}

void sub_217D3FE08(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217D3D708(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
    if (v2 <= 0x3F)
    {
      sub_217D3D708(319, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
      if (v3 <= 0x3F)
      {
        sub_217D3D708(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217D3D708(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217D3D708(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
            if (v6 <= 0x3F)
            {
              sub_217D3D708(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
              if (v7 <= 0x3F)
              {
                sub_217D3D708(319, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
                if (v8 <= 0x3F)
                {
                  sub_217D3D708(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                  if (v9 <= 0x3F)
                  {
                    sub_217D3D708(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                    if (v10 <= 0x3F)
                    {
                      sub_217D3D708(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
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
}

void sub_217D401BC(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217D40324()
{
  result = qword_27CBA51D0;
  if (!qword_27CBA51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA51D0);
  }

  return result;
}

unint64_t sub_217D4037C()
{
  result = qword_27CBA51D8;
  if (!qword_27CBA51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA51D8);
  }

  return result;
}

unint64_t sub_217D403D4()
{
  result = qword_27CBA51E0;
  if (!qword_27CBA51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA51E0);
  }

  return result;
}

uint64_t sub_217D40428(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD6C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
  {

    return 10;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_217D40898()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5218);
  __swift_project_value_buffer(v0, qword_27CBA5218);
  return sub_217D8866C();
}

uint64_t RecipeUnsaveEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RecipeUnsaveEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 20);
  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 20);
  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 24);
  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 24);
  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 28);
  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 28);
  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 32);
  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 32);
  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 36);
  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 36);
  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 40);
  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 40);
  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 44);
  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 44);
  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 48);
  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeUnsaveEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 48);
  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 52);
  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D4181C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t RecipeUnsaveEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeUnsaveEvent(0) + 52);
  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeUnsaveEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RecipeUnsaveEvent(0);
  v5 = v4[5];
  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v10, v23);
}

uint64_t RecipeUnsaveEvent.Model.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t RecipeUnsaveEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecipeUnsaveEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t RecipeUnsaveEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t RecipeUnsaveEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t RecipeUnsaveEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t RecipeUnsaveEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for RecipeUnsaveEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t RecipeUnsaveEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 44));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t RecipeUnsaveEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 48);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

void RecipeUnsaveEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeUnsaveEvent.Model(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

__n128 RecipeUnsaveEvent.Model.init(eventData:recipeData:actionData:feedData:groupData:viewData:userChannelContextData:userBundleSubscriptionContextData:channelData:issueData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __n128 *a11)
{
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  v18 = a2[3];
  v19 = a2[4];
  v36 = *a3;
  v38 = *a4;
  v37 = *(a4 + 2);
  v40 = a6[1];
  v41 = *a6;
  v39 = *(a6 + 8);
  v43 = a7[1];
  v44 = *a7;
  v42 = *(a7 + 1);
  v51 = a10[1];
  v52 = *a10;
  v49 = *(a10 + 17);
  v50 = *(a10 + 16);
  v47 = a10[4];
  v48 = a10[3];
  v20 = sub_217D8899C();
  v45 = a11[1];
  v46 = *a11;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for RecipeUnsaveEvent.Model(0);
  v22 = a9 + v21[5];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  *(v22 + 32) = v19;
  *(a9 + v21[6]) = v36;
  v23 = a9 + v21[7];
  *v23 = v38;
  *(v23 + 16) = v37;
  v24 = (a9 + v21[8]);
  v25 = a5[3];
  v24[2] = a5[2];
  v24[3] = v25;
  v26 = a5[1];
  *v24 = *a5;
  v24[1] = v26;
  v27 = a5[8];
  v24[7] = a5[7];
  v24[8] = v27;
  v28 = a5[6];
  v24[5] = a5[5];
  v24[6] = v28;
  v24[4] = a5[4];
  v29 = a9 + v21[9];
  *v29 = v41;
  *(v29 + 8) = v40;
  *(v29 + 16) = v39;
  v30 = a9 + v21[10];
  *v30 = v44;
  *(v30 + 1) = v43;
  *(v30 + 2) = v42;
  v31 = a9 + v21[11];
  v32 = *(a8 + 16);
  *v31 = *a8;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a8 + 32);
  *(v31 + 48) = *(a8 + 48);
  v33 = a9 + v21[12];
  *v33 = v52;
  *(v33 + 8) = v51;
  *(v33 + 16) = v50;
  *(v33 + 17) = v49;
  *(v33 + 24) = v48;
  *(v33 + 32) = v47;
  v34 = (a9 + v21[13]);
  result = v46;
  *v34 = v46;
  v34[1] = v45;
  return result;
}

unint64_t sub_217D423C8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    v6 = 0x446C656E6E616863;
    if (a1 != 8)
    {
      v6 = 0x7461446575737369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6174614477656976;
    if (a1 != 5)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x61446E6F69746361;
    v3 = 0x6174614464656566;
    if (a1 != 3)
    {
      v3 = 0x74614470756F7267;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6144657069636572;
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

uint64_t sub_217D42524@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D44204(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D4254C(uint64_t a1)
{
  v2 = sub_217D42C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D42588(uint64_t a1)
{
  v2 = sub_217D42C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeUnsaveEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D43558(0, &qword_27CBA5230, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D42C38();
  sub_217D89E7C();
  LOBYTE(v82) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v95 = type metadata accessor for RecipeUnsaveEvent.Model(0);
    v10 = v3 + v95[5];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    *&v82 = *v10;
    *(&v82 + 1) = v11;
    LOBYTE(v83) = v12;
    *(&v83 + 1) = v13;
    *&v84 = v14;
    LOBYTE(v73) = 1;
    sub_217B1F08C();

    sub_217D89CAC();

    v15 = v95;
    LOBYTE(v82) = *(v3 + v95[6]);
    LOBYTE(v73) = 2;
    sub_217AED190();
    sub_217D89CAC();
    v16 = (v3 + v15[7]);
    v17 = v16[1];
    v18 = v16[2];
    v92 = *v16;
    v93 = v17;
    v94 = v18;
    v91 = 3;
    sub_217AD1A68(v92, v17, v18);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v92, v93, v94);
    v19 = (v3 + v15[8]);
    v20 = v19[6];
    v21 = v19[4];
    v87 = v19[5];
    v88 = v20;
    v22 = v19[6];
    v23 = v19[8];
    v89 = v19[7];
    v90 = v23;
    v24 = v19[2];
    v25 = *v19;
    v83 = v19[1];
    v84 = v24;
    v26 = v19[2];
    v27 = v19[4];
    v85 = v19[3];
    v86 = v27;
    v28 = *v19;
    v79 = v22;
    v80 = v89;
    v81 = v19[8];
    v82 = v28;
    v75 = v26;
    v76 = v85;
    v77 = v21;
    v78 = v87;
    v73 = v25;
    v74 = v83;
    v72 = 4;
    sub_217AD87FC(&v82, v71);
    sub_217A5D3B4();
    sub_217D89C3C();
    v71[6] = v79;
    v71[7] = v80;
    v71[8] = v81;
    v71[2] = v75;
    v71[3] = v76;
    v71[4] = v77;
    v71[5] = v78;
    v71[0] = v73;
    v71[1] = v74;
    sub_217AD96E8(v71);
    v29 = (v3 + v15[9]);
    v30 = *v29;
    v31 = v29[1];
    LOWORD(v29) = *(v29 + 8);
    *&v63 = v30;
    *(&v63 + 1) = v31;
    LOWORD(v64) = v29;
    LOBYTE(v59) = 5;
    sub_217A5E790();

    sub_217D89C3C();

    v32 = (v3 + v15[10]);
    v33 = *v32;
    v34 = v32[1];
    LOWORD(v32) = *(v32 + 1);
    v68 = v33;
    v69 = v34;
    v70 = v32;
    v67 = 6;
    sub_217ACFB8C();
    sub_217D89CAC();
    v35 = (v3 + v15[11]);
    v36 = v35[1];
    v63 = *v35;
    v64 = v36;
    v38 = *v35;
    v37 = v35[1];
    v65 = v35[2];
    v66 = *(v35 + 48);
    v59 = v38;
    v60 = v37;
    v61 = v35[2];
    v62 = *(v35 + 48);
    v58 = 7;
    sub_217ACC004(&v63, v56);
    sub_217A55B98();
    sub_217D89CAC();
    v56[0] = v59;
    v56[1] = v60;
    v56[2] = v61;
    v57 = v62;
    sub_217ACC69C(v56);
    v40 = v3 + v15[12];
    v41 = *(v40 + 8);
    v42 = *(v40 + 16);
    v43 = *(v40 + 17);
    v44 = *(v40 + 24);
    v45 = *(v40 + 32);
    v51 = *v40;
    v52 = v41;
    LOBYTE(v53) = v42;
    BYTE1(v53) = v43;
    v54 = v44;
    v55 = v45;
    HIBYTE(v50) = 8;
    sub_217AD084C();

    sub_217D89CAC();

    v46 = (v3 + v95[13]);
    v47 = v46[1];
    v48 = v46[2];
    v49 = v46[3];
    v51 = *v46;
    v52 = v47;
    v53 = v48;
    v54 = v49;
    HIBYTE(v50) = 9;
    sub_217AE39D0(v51, v47, v48, v49);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v51, v52, v53, v54);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D42C38()
{
  result = qword_27CBA5238;
  if (!qword_27CBA5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5238);
  }

  return result;
}

uint64_t RecipeUnsaveEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_217D8899C();
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D43558(0, &qword_27CBA5240, MEMORY[0x277D844C8]);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = type metadata accessor for RecipeUnsaveEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D42C38();
  v54 = v7;
  v11 = v74;
  sub_217D89E5C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v51;
  v74 = a1;
  v47 = v8;
  v48 = v10;
  LOBYTE(v65) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v13 = v48;
  (*(v50 + 32))(v48, v53, v3);
  LOBYTE(v60) = 1;
  sub_217B1F038();
  sub_217D89BCC();
  v46 = v3;
  v53 = 0;
  v14 = *(&v65 + 1);
  v15 = v66;
  v16 = *(&v66 + 1);
  v17 = v67;
  v18 = v47;
  v19 = &v13[v47[5]];
  *v19 = v65;
  *(v19 + 1) = v14;
  v19[16] = v15;
  *(v19 + 3) = v16;
  *(v19 + 4) = v17;
  LOBYTE(v60) = 2;
  sub_217AED13C();
  sub_217D89BCC();
  v13[v18[6]] = v65;
  LOBYTE(v60) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v20 = v66;
  v21 = &v13[v18[7]];
  *v21 = v65;
  *(v21 + 2) = v20;
  v64 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v22 = &v13[v18[8]];
  v23 = v70;
  v24 = v72;
  v25 = v73;
  *(v22 + 6) = v71;
  *(v22 + 7) = v24;
  *(v22 + 8) = v25;
  v26 = v66;
  v27 = v68;
  v28 = v69;
  *(v22 + 2) = v67;
  *(v22 + 3) = v27;
  *(v22 + 4) = v28;
  *(v22 + 5) = v23;
  *v22 = v65;
  *(v22 + 1) = v26;
  LOBYTE(v56) = 5;
  sub_217A5E738();
  sub_217D89B5C();
  v29 = v61;
  v30 = &v13[v18[9]];
  *v30 = v60;
  *(v30 + 8) = v29;
  LOBYTE(v56) = 6;
  sub_217ACFB38();
  sub_217D89BCC();
  v31 = BYTE1(v60);
  v32 = WORD1(v60);
  v33 = &v13[v18[10]];
  *v33 = v60;
  v33[1] = v31;
  *(v33 + 1) = v32;
  v59 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  v34 = &v48[v47[11]];
  v35 = v61;
  *v34 = v60;
  *(v34 + 1) = v35;
  *(v34 + 2) = v62;
  v34[48] = v63;
  v55 = 8;
  sub_217AD07F8();
  sub_217D89BCC();
  v36 = *(&v56 + 1);
  v37 = v57;
  v38 = BYTE1(v57);
  v39 = *(&v57 + 1);
  v40 = v58;
  v41 = &v48[v47[12]];
  *v41 = v56;
  *(v41 + 1) = v36;
  v41[16] = v37;
  v41[17] = v38;
  *(v41 + 3) = v39;
  *(v41 + 4) = v40;
  v55 = 9;
  sub_217ACFF40();
  sub_217D89B5C();
  (*(v12 + 8))(v54, v52);
  v42 = v48;
  v43 = &v48[v47[13]];
  v44 = v57;
  *v43 = v56;
  *(v43 + 1) = v44;
  sub_217D435BC(v42, v49);
  __swift_destroy_boxed_opaque_existential_1(v74);
  return sub_217D43620(v42);
}

void sub_217D43558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D42C38();
    v7 = a3(a1, &type metadata for RecipeUnsaveEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D435BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeUnsaveEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D43620(uint64_t a1)
{
  v2 = type metadata accessor for RecipeUnsaveEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D43754@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v11, v24);
}

void sub_217D43C48(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217D4181C(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
    if (v2 <= 0x3F)
    {
      sub_217D4181C(319, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
      if (v3 <= 0x3F)
      {
        sub_217D4181C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217D4181C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217D4181C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
            if (v6 <= 0x3F)
            {
              sub_217D4181C(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
              if (v7 <= 0x3F)
              {
                sub_217D4181C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                if (v8 <= 0x3F)
                {
                  sub_217D4181C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
                  if (v9 <= 0x3F)
                  {
                    sub_217D4181C(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                    if (v10 <= 0x3F)
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

void sub_217D43FAC(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217D44100()
{
  result = qword_27CBA5268;
  if (!qword_27CBA5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5268);
  }

  return result;
}

unint64_t sub_217D44158()
{
  result = qword_27CBA5270;
  if (!qword_27CBA5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5270);
  }

  return result;
}

unint64_t sub_217D441B0()
{
  result = qword_27CBA5278;
  if (!qword_27CBA5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5278);
  }

  return result;
}

uint64_t sub_217D44204(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061)
  {

    return 9;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_217D44618()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA52B0);
  __swift_project_value_buffer(v0, qword_27CBA52B0);
  return sub_217D8866C();
}

uint64_t CookModeViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217D454DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CookModeViewEvent.viewData.setter(uint64_t a1)
{
  sub_217D454DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CookModeViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 20);
  sub_217A6018C(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CookModeViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 24);
  sub_217D454DC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CookModeViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 24);
  sub_217D454DC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CookModeViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 28);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CookModeViewEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 32);
  sub_217D454DC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CookModeViewEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 32);
  sub_217D454DC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CookModeViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 36);
  sub_217D454DC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CookModeViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 36);
  sub_217D454DC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CookModeViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 40);
  sub_217D454DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CookModeViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 40);
  sub_217D454DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CookModeViewEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 44);
  sub_217D454DC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CookModeViewEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 44);
  sub_217D454DC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CookModeViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 48);
  sub_217D454DC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CookModeViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 48);
  sub_217D454DC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CookModeViewEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 52);
  sub_217D454DC(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D454DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t CookModeViewEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CookModeViewEvent(0) + 52);
  sub_217D454DC(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CookModeViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217D454DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for CookModeViewEvent(0);
  v5 = v4[5];
  sub_217A6018C(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D454DC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A608E0(0);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217D454DC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217D454DC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217D454DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v17 - 8) + 104))(a1 + v16, v14, v17);
  v18 = v4[11];
  sub_217D454DC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v14, v19);
  v20 = v4[12];
  sub_217D454DC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v21 - 8) + 104))(a1 + v20, v14, v21);
  v22 = v4[13];
  sub_217D454DC(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v14, v23);
}

uint64_t CookModeViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t sub_217D45B28@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t CookModeViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CookModeViewEvent.Model(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t sub_217D45C68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t CookModeViewEvent.Model.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CookModeViewEvent.Model(0) + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

void CookModeViewEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CookModeViewEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_217AD86BC(v4, v5, v6, v7, v8);
}

uint64_t CookModeViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CookModeViewEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t CookModeViewEvent.Model.userChannelContextData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for CookModeViewEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t CookModeViewEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CookModeViewEvent.Model(0) + 48));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[3];
  v8 = v3[5];
  v20 = v3[4];
  v9 = v20;
  v21 = v8;
  v10 = v3[1];
  v11 = v3[3];
  v18 = v3[2];
  v12 = v18;
  v19 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v12;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v10;
  return sub_217AD87FC(v17, &v16);
}

uint64_t CookModeViewEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for CookModeViewEvent.Model(0);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

__n128 CookModeViewEvent.Model.init(viewData:eventData:userBundleSubscriptionContextData:timedData:recipeData:channelData:feedData:userChannelContextData:groupData:feedPositionData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, int *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, int *a11)
{
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v18 = *a5;
  v17 = a5[1];
  v19 = *(a5 + 16);
  v38 = a5[4];
  v39 = a5[3];
  v40 = *(a6 + 4);
  v43 = *a7;
  v42 = *(a7 + 2);
  v46 = *a11;
  v44 = *a8;
  v45 = *(a11 + 4);
  *a9 = *a1;
  *(a9 + 8) = v15;
  *(a9 + 16) = v16;
  v20 = type metadata accessor for CookModeViewEvent.Model(0);
  v21 = v20[5];
  v22 = sub_217D8899C();
  v36 = a6[1];
  v37 = *a6;
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = a9 + v20[6];
  v24 = *(a3 + 16);
  *v23 = *a3;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a3 + 32);
  *(v23 + 48) = *(a3 + 48);
  v25 = v20[7];
  v26 = sub_217D889CC();
  (*(*(v26 - 8) + 32))(a9 + v25, a4, v26);
  v27 = a9 + v20[8];
  *v27 = v18;
  *(v27 + 8) = v17;
  *(v27 + 16) = v19;
  *(v27 + 24) = v39;
  *(v27 + 32) = v38;
  v28 = a9 + v20[9];
  *v28 = v37;
  *(v28 + 16) = v36;
  *(v28 + 32) = v40;
  v29 = a9 + v20[10];
  *v29 = v43;
  *(v29 + 16) = v42;
  *(a9 + v20[11]) = v44;
  v30 = a9 + v20[12];
  v31 = *(a10 + 112);
  *(v30 + 96) = *(a10 + 96);
  *(v30 + 112) = v31;
  *(v30 + 128) = *(a10 + 128);
  v32 = *(a10 + 48);
  *(v30 + 32) = *(a10 + 32);
  *(v30 + 48) = v32;
  v33 = *(a10 + 80);
  *(v30 + 64) = *(a10 + 64);
  *(v30 + 80) = v33;
  result = *(a10 + 16);
  *v30 = *a10;
  *(v30 + 16) = result;
  v35 = a9 + v20[13];
  *v35 = v46;
  *(v35 + 4) = v45;
  return result;
}

unint64_t sub_217D460F8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000016;
    v6 = 0x74614470756F7267;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x446C656E6E616863;
    if (a1 != 5)
    {
      v7 = 0x6174614464656566;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6174614477656976;
    v2 = 0xD000000000000021;
    v3 = 0x74614464656D6974;
    if (a1 != 3)
    {
      v3 = 0x6144657069636572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746144746E657665;
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

uint64_t sub_217D46268@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D48130(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D46290(uint64_t a1)
{
  v2 = sub_217D469D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D462CC(uint64_t a1)
{
  v2 = sub_217D469D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CookModeViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D474D0(0, &qword_27CBA52C8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v44[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D469D4();
  sub_217D89E7C();
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  *&v58 = *v3;
  *(&v58 + 1) = v10;
  LOWORD(v59) = v11;
  LOBYTE(v49) = 0;
  sub_217A5E790();

  sub_217D89CAC();
  if (v2)
  {

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v13 = v7;

    v14 = type metadata accessor for CookModeViewEvent.Model(0);
    v78[0] = 1;
    sub_217D8899C();
    sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
    sub_217D89CAC();
    v15 = (v3 + v14[6]);
    v16 = v15[1];
    v76[0] = *v15;
    v76[1] = v16;
    v18 = *v15;
    v17 = v15[1];
    v76[2] = v15[2];
    v77 = *(v15 + 48);
    v72 = v18;
    v73 = v17;
    v74 = v15[2];
    v75 = *(v15 + 48);
    v71 = 2;
    sub_217ACC004(v76, &v58);
    sub_217A55B98();
    sub_217D89CAC();
    v69[0] = v72;
    v69[1] = v73;
    v69[2] = v74;
    v70 = v75;
    sub_217ACC69C(v69);
    LOBYTE(v58) = 3;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v19 = v3 + v14[8];
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    v23 = *(v19 + 32);
    *&v58 = *v19;
    *(&v58 + 1) = v20;
    LOBYTE(v59) = v21;
    *(&v59 + 1) = v22;
    *&v60 = v23;
    LOBYTE(v49) = 4;
    sub_217B1F08C();

    sub_217D89CAC();

    v24 = (v3 + v14[9]);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    v28 = v24[4];
    *&v58 = *v24;
    *(&v58 + 1) = v25;
    *&v59 = v26;
    *(&v59 + 1) = v27;
    *&v60 = v28;
    LOBYTE(v49) = 5;
    sub_217AD86BC(v58, v25, v26, v27, v28);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v58, *(&v58 + 1), v59, *(&v59 + 1), v60);
    v29 = (v3 + v14[10]);
    v30 = v29[1];
    v31 = v29[2];
    *&v58 = *v29;
    *(&v58 + 1) = v30;
    *&v59 = v31;
    LOBYTE(v49) = 6;
    sub_217AD1A68(v58, v30, v31);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v58, *(&v58 + 1), v59);
    v68 = *(v3 + v14[11]);
    v67 = 7;
    sub_217ACFB8C();
    sub_217D89C3C();
    v32 = (v3 + v14[12]);
    v33 = v32[6];
    v34 = v32[4];
    v63 = v32[5];
    v64 = v33;
    v35 = v32[6];
    v36 = v32[8];
    v65 = v32[7];
    v66 = v36;
    v37 = v32[2];
    v38 = *v32;
    v59 = v32[1];
    v60 = v37;
    v39 = v32[2];
    v40 = v32[4];
    v61 = v32[3];
    v62 = v40;
    v41 = *v32;
    v55 = v35;
    v56 = v65;
    v57 = v32[8];
    v58 = v41;
    v51 = v39;
    v52 = v61;
    v53 = v34;
    v54 = v63;
    v49 = v38;
    v50 = v59;
    v48 = 8;
    sub_217AD87FC(&v58, v47);
    sub_217A5D3B4();
    sub_217D89C3C();
    v47[6] = v55;
    v47[7] = v56;
    v47[8] = v57;
    v47[2] = v51;
    v47[3] = v52;
    v47[4] = v53;
    v47[5] = v54;
    v47[0] = v49;
    v47[1] = v50;
    sub_217AD96E8(v47);
    v42 = (v3 + v14[13]);
    v43 = *v42;
    LOBYTE(v42) = *(v42 + 4);
    v45 = v43;
    v46 = v42;
    v44[7] = 9;
    sub_217AD7710();
    sub_217D89C3C();
    return (*(v13 + 8))(v9, v6);
  }
}

unint64_t sub_217D469D4()
{
  result = qword_27CBA52D0;
  if (!qword_27CBA52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA52D0);
  }

  return result;
}

void CookModeViewEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v48 = sub_217D889CC();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D474D0(0, &qword_27CBA52D8, MEMORY[0x277D844C8]);
  v51 = v8;
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for CookModeViewEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_217D469D4();
  v52 = v10;
  v15 = v70;
  sub_217D89E5C();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {
    v16 = v4;
    v45 = v5;
    v44 = v11;
    v70 = v13;
    LOBYTE(v59[0]) = 0;
    sub_217A5E738();
    sub_217D89BCC();
    v17 = *(&v61 + 1);
    v18 = v62;
    v19 = v70;
    *v70 = v61;
    v19[1] = v17;
    *(v19 + 8) = v18;
    LOBYTE(v61) = 1;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v20 = v45;
    sub_217D89BCC();
    v21 = v44;
    (*(v49 + 32))(v19 + v44[5], v7, v20);
    v58 = 2;
    sub_217A54D08();
    v43 = 0;
    sub_217D89BCC();
    v22 = v19 + v21[6];
    v23 = v59[1];
    *v22 = v59[0];
    *(v22 + 1) = v23;
    *(v22 + 2) = v59[2];
    v22[48] = v60;
    LOBYTE(v61) = 3;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v24 = v48;
    sub_217D89BCC();
    (*(v47 + 32))(v19 + v21[7], v16, v24);
    LOBYTE(v55) = 4;
    sub_217B1F038();
    sub_217D89BCC();
    v25 = *(&v61 + 1);
    v26 = v62;
    v27 = *(&v62 + 1);
    v28 = v63;
    v29 = v19 + v21[8];
    *v29 = v61;
    *(v29 + 1) = v25;
    v29[16] = v26;
    *(v29 + 3) = v27;
    *(v29 + 4) = v28;
    LOBYTE(v55) = 5;
    sub_217AD07F8();
    sub_217D89B5C();
    v30 = v63;
    v31 = v19 + v21[9];
    v32 = v62;
    *v31 = v61;
    *(v31 + 1) = v32;
    *(v31 + 4) = v30;
    LOBYTE(v55) = 6;
    sub_217A5B978();
    sub_217D89B5C();
    v33 = v62;
    v34 = v19 + v21[10];
    *v34 = v61;
    *(v34 + 2) = v33;
    LOBYTE(v55) = 7;
    sub_217ACFB38();
    sub_217D89B5C();
    *(v70 + v44[11]) = v61;
    v57 = 8;
    sub_217A5D308();
    sub_217D89B5C();
    v35 = (v70 + v44[12]);
    v36 = v68;
    v35[6] = v67;
    v35[7] = v36;
    v35[8] = v69;
    v37 = v64;
    v35[2] = v63;
    v35[3] = v37;
    v38 = v66;
    v35[4] = v65;
    v35[5] = v38;
    v39 = v62;
    *v35 = v61;
    v35[1] = v39;
    v54 = 9;
    sub_217AD76BC();
    sub_217D89B5C();
    (*(v50 + 8))(v52, v51);
    v40 = v56;
    v41 = v70;
    v42 = v70 + v44[13];
    *v42 = v55;
    v42[4] = v40;
    sub_217D47534(v41, v46);
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_217D47598(v41);
  }
}

void sub_217D474D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D469D4();
    v7 = a3(a1, &type metadata for CookModeViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D47534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookModeViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D47598(uint64_t a1)
{
  v2 = type metadata accessor for CookModeViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D476CC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217D454DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A6018C(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D454DC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A608E0(0);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217D454DC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217D454DC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217D454DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v18 - 8) + 104))(a2 + v17, v15, v18);
  v19 = a1[11];
  sub_217D454DC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v20 - 8) + 104))(a2 + v19, v15, v20);
  v21 = a1[12];
  sub_217D454DC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v22 - 8) + 104))(a2 + v21, v15, v22);
  v23 = a1[13];
  sub_217D454DC(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v15, v24);
}

void sub_217D47B80(uint64_t a1)
{
  sub_217D454DC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (v1 <= 0x3F)
  {
    sub_217A6018C(319);
    if (v2 <= 0x3F)
    {
      sub_217D454DC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_217A608E0(319);
        if (v4 <= 0x3F)
        {
          sub_217D454DC(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
          if (v5 <= 0x3F)
          {
            sub_217D454DC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
            if (v6 <= 0x3F)
            {
              sub_217D454DC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
              if (v7 <= 0x3F)
              {
                sub_217D454DC(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
                if (v8 <= 0x3F)
                {
                  sub_217D454DC(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
                  if (v9 <= 0x3F)
                  {
                    sub_217D454DC(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
                    if (v10 <= 0x3F)
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

void sub_217D47EAC(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C01C8, &type metadata for UserChannelContextData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C5238, &type metadata for FeedPositionData);
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

unint64_t sub_217D4802C()
{
  result = qword_27CBA52E0;
  if (!qword_27CBA52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA52E0);
  }

  return result;
}

unint64_t sub_217D48084()
{
  result = qword_27CBA52E8;
  if (!qword_27CBA52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA52E8);
  }

  return result;
}

unint64_t sub_217D480DC()
{
  result = qword_27CBA52F0;
  if (!qword_27CBA52F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA52F0);
  }

  return result;
}

uint64_t sub_217D48130(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_217D48540()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5328);
  __swift_project_value_buffer(v0, qword_27CBA5328);
  return sub_217D8866C();
}

uint64_t RecipeViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RecipeViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 20);
  sub_217D49AC4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 20);
  sub_217D49AC4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 24);
  sub_217D49AC4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeViewEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 24);
  sub_217D49AC4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 28);
  sub_217D49AC4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 28);
  sub_217D49AC4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 32);
  sub_217D49AC4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 32);
  sub_217D49AC4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 36);
  sub_217D49AC4(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeViewEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 36);
  sub_217D49AC4(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 40);
  sub_217D49AC4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 40);
  sub_217D49AC4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 44);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 48);
  sub_217D49AC4(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeViewEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 48);
  sub_217D49AC4(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 52);
  sub_217D49AC4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 52);
  sub_217D49AC4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 56);
  sub_217D49AC4(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeViewEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 56);
  sub_217D49AC4(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.referringArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 60);
  sub_217D49AC4(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeViewEvent.referringArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 60);
  sub_217D49AC4(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.recipeScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 64);
  sub_217D49AC4(0, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeViewEvent.recipeScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 64);
  sub_217D49AC4(0, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.hostArticleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 68);
  sub_217D49AC4(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D49AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t RecipeViewEvent.hostArticleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewEvent(0) + 68);
  sub_217D49AC4(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RecipeViewEvent(0);
  v5 = v4[5];
  sub_217D49AC4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D49AC4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217D49AC4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217D49AC4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217D49AC4(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217D49AC4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_217A608E0(0);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217D49AC4(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217D49AC4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217D49AC4(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v25 - 8) + 104))(a1 + v24, v10, v25);
  v26 = v4[15];
  sub_217D49AC4(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  (*(*(v27 - 8) + 104))(a1 + v26, v10, v27);
  v28 = v4[16];
  sub_217D49AC4(0, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217D49AC4(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  v32 = *(*(v31 - 8) + 104);

  return v32(a1 + v30, v10, v31);
}

uint64_t RecipeViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeViewEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t RecipeViewEvent.Model.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeViewEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

void RecipeViewEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeViewEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_217AD86BC(v4, v5, v6, v7, v8);
}

uint64_t RecipeViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeViewEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t RecipeViewEvent.Model.userChannelContextData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for RecipeViewEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t RecipeViewEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeViewEvent.Model(0) + 40));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t sub_217D4A53C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 44);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t RecipeViewEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for RecipeViewEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t RecipeViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeViewEvent.Model(0) + 52);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t RecipeViewEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for RecipeViewEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t RecipeViewEvent.Model.referringArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeViewEvent.Model(0) + 60);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t RecipeViewEvent.Model.recipeScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeViewEvent.Model(0) + 64));
  v5 = v3[1];
  v4 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v4;
}

uint64_t RecipeViewEvent.Model.hostArticleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeViewEvent.Model(0) + 68));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 RecipeViewEvent.Model.init(eventData:viewData:recipeData:channelData:feedData:userChannelContextData:groupData:timedData:feedPositionData:userBundleSubscriptionContextData:paywallData:referringArticleData:recipeScienceData:hostArticleViewData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, int *a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int *a10, uint64_t a11, __int16 *a12, __n128 *a13, uint64_t *a14, uint64_t *a15)
{
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a2 + 8);
  v22 = *a3;
  v23 = a3[1];
  v49 = *(a3 + 16);
  v47 = a3[4];
  v48 = a3[3];
  v52 = *a5;
  v50 = *(a4 + 4);
  v51 = *(a5 + 2);
  v53 = *a6;
  v54 = *(a10 + 4);
  v55 = *a10;
  v56 = *a12;
  v59 = *a13;
  v58 = a13[1].n128_u64[0];
  v57 = a13[1].n128_u8[8];
  v24 = *a14;
  v61 = a14[1];
  v60 = a14[2];
  v62 = a15[1];
  v63 = *a15;
  v25 = sub_217D8899C();
  v45 = a4[1];
  v46 = *a4;
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  v26 = type metadata accessor for RecipeViewEvent.Model(0);
  v27 = a9 + v26[5];
  *v27 = v19;
  *(v27 + 8) = v20;
  *(v27 + 16) = v21;
  v28 = a9 + v26[6];
  *v28 = v22;
  *(v28 + 8) = v23;
  *(v28 + 16) = v49;
  *(v28 + 24) = v48;
  *(v28 + 32) = v47;
  v29 = a9 + v26[7];
  *v29 = v46;
  *(v29 + 16) = v45;
  *(v29 + 32) = v50;
  v30 = a9 + v26[8];
  *v30 = v52;
  *(v30 + 16) = v51;
  *(a9 + v26[9]) = v53;
  v31 = (a9 + v26[10]);
  v32 = a7[7];
  v31[6] = a7[6];
  v31[7] = v32;
  v31[8] = a7[8];
  v33 = a7[3];
  v31[2] = a7[2];
  v31[3] = v33;
  v34 = a7[5];
  v31[4] = a7[4];
  v31[5] = v34;
  v35 = a7[1];
  *v31 = *a7;
  v31[1] = v35;
  v36 = v26[11];
  v37 = sub_217D889CC();
  (*(*(v37 - 8) + 32))(a9 + v36, a8, v37);
  v38 = a9 + v26[12];
  *v38 = v55;
  *(v38 + 4) = v54;
  v39 = a9 + v26[13];
  v40 = *(a11 + 16);
  *v39 = *a11;
  *(v39 + 16) = v40;
  *(v39 + 32) = *(a11 + 32);
  *(v39 + 48) = *(a11 + 48);
  *(a9 + v26[14]) = v56;
  v41 = (a9 + v26[15]);
  result = v59;
  *v41 = v59;
  v41[1].n128_u64[0] = v58;
  v41[1].n128_u8[8] = v57;
  v43 = (a9 + v26[16]);
  *v43 = v24;
  v43[1] = v61;
  v43[2] = v60;
  v44 = (a9 + v26[17]);
  *v44 = v63;
  v44[1] = v62;
  return result;
}

uint64_t sub_217D4AA28(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 2003134838;
      return v3 | 0x6174614400000000;
    case 2:
      return 0x6144657069636572;
    case 3:
      v4 = 0x656E6E616863;
      goto LABEL_15;
    case 4:
      v3 = 1684366694;
      return v3 | 0x6174614400000000;
    case 5:
      return 0xD000000000000016;
    case 6:
      return 0x74614470756F7267;
    case 7:
      return 0x74614464656D6974;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0xD000000000000021;
    case 10:
      v4 = 0x6C6177796170;
LABEL_15:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217D4ABC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D4D224(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D4ABF0(uint64_t a1)
{
  v2 = sub_217D4B44C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D4AC2C(uint64_t a1)
{
  v2 = sub_217D4B44C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D4C21C(0, &qword_27CBA5340, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D4B44C();
  sub_217D89E7C();
  LOBYTE(v74) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for RecipeViewEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    *&v74 = v12;
    *(&v74 + 1) = v13;
    LOWORD(v75) = v11;
    LOBYTE(v65) = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v14 = v3 + v10[6];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    *&v74 = *v14;
    *(&v74 + 1) = v15;
    LOBYTE(v75) = v16;
    *(&v75 + 1) = v17;
    *&v76 = v18;
    LOBYTE(v65) = 2;
    sub_217B1F08C();

    sub_217D89CAC();

    v20 = (v3 + v10[7]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    *&v74 = *v20;
    *(&v74 + 1) = v21;
    *&v75 = v22;
    *(&v75 + 1) = v23;
    *&v76 = v24;
    LOBYTE(v65) = 3;
    sub_217AD86BC(v74, v21, v22, v23, v24);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v74, *(&v74 + 1), v75, *(&v75 + 1), v76);
    v25 = (v3 + v10[8]);
    v26 = v25[1];
    v27 = v25[2];
    *&v74 = *v25;
    *(&v74 + 1) = v26;
    *&v75 = v27;
    LOBYTE(v65) = 4;
    sub_217AD1A68(v74, v26, v27);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v74, *(&v74 + 1), v75);
    v87 = *(v3 + v10[9]);
    v86 = 5;
    sub_217ACFB8C();
    sub_217D89C3C();
    v28 = (v3 + v10[10]);
    v29 = v28[5];
    v30 = v28[7];
    v80 = v28[6];
    v81 = v30;
    v31 = v28[7];
    v82 = v28[8];
    v32 = v28[1];
    v33 = v28[3];
    v76 = v28[2];
    v77 = v33;
    v34 = v28[3];
    v35 = v28[5];
    v78 = v28[4];
    v79 = v35;
    v36 = v28[1];
    v74 = *v28;
    v75 = v36;
    v71 = v80;
    v72 = v31;
    v73 = v28[8];
    v67 = v76;
    v68 = v34;
    v69 = v78;
    v70 = v29;
    v65 = v74;
    v66 = v32;
    v85 = 6;
    sub_217AD87FC(&v74, v64);
    sub_217A5D3B4();
    sub_217D89C3C();
    v64[6] = v71;
    v64[7] = v72;
    v64[8] = v73;
    v64[2] = v67;
    v64[3] = v68;
    v64[4] = v69;
    v64[5] = v70;
    v64[0] = v65;
    v64[1] = v66;
    sub_217AD96E8(v64);
    LOBYTE(v60[0]) = 7;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v37 = (v3 + v10[12]);
    v38 = *v37;
    LOBYTE(v37) = *(v37 + 4);
    v62 = v38;
    v63 = v37;
    v84 = 8;
    sub_217AD7710();
    sub_217D89C3C();
    v39 = (v3 + v10[13]);
    v40 = v39[1];
    v60[0] = *v39;
    v60[1] = v40;
    v42 = *v39;
    v41 = v39[1];
    v60[2] = v39[2];
    v61 = *(v39 + 48);
    v56 = v42;
    v57 = v41;
    v58 = v39[2];
    v59 = *(v39 + 48);
    v83 = 9;
    sub_217ACC004(v60, v54);
    sub_217A55B98();
    sub_217D89CAC();
    v54[0] = v56;
    v54[1] = v57;
    v54[2] = v58;
    v55 = v59;
    sub_217ACC69C(v54);
    LOWORD(v50) = *(v3 + v10[14]);
    v53 = 10;
    sub_217B1DEE8();
    sub_217D89C3C();
    v43 = (v3 + v10[15]);
    v44 = *(v43 + 24);
    v50 = *v43;
    v51 = *(v43 + 1);
    v52 = v44;
    v53 = 11;
    sub_217A5D95C();

    sub_217D89C3C();

    v45 = (v3 + v10[16]);
    v46 = v45[1];
    v47 = v45[2];
    v50 = *v45;
    *&v51 = v46;
    *(&v51 + 1) = v47;
    v53 = 12;
    sub_217C81940();

    sub_217D89CAC();

    v48 = (v3 + v10[17]);
    v49 = v48[1];
    v50 = *v48;
    *&v51 = v49;
    v53 = 13;
    sub_217BA73F4();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D4B44C()
{
  result = qword_27CBA5348;
  if (!qword_27CBA5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5348);
  }

  return result;
}

void RecipeViewEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = sub_217D889CC();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v4 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v52 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v53 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D4C21C(0, &qword_27CBA5350, MEMORY[0x277D844C8]);
  v56 = v7;
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v47 - v8;
  v10 = type metadata accessor for RecipeViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D4B44C();
  v55 = v9;
  v13 = v57;
  sub_217D89E5C();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v4;
    v48 = v10;
    v57 = v12;
    LOBYTE(v64) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v15 = v53;
    sub_217D89BCC();
    v16 = v5;
    v17 = v57;
    (*(v52 + 32))(v57, v15, v16);
    LOBYTE(v60) = 1;
    sub_217A5E738();
    sub_217D89BCC();
    v47[1] = v16;
    v53 = 0;
    v18 = *(&v64 + 1);
    v19 = v65;
    v20 = v48;
    v21 = &v17[v48[5]];
    *v21 = v64;
    *(v21 + 1) = v18;
    *(v21 + 8) = v19;
    LOBYTE(v60) = 2;
    sub_217B1F038();
    sub_217D89BCC();
    v22 = *(&v64 + 1);
    v23 = v65;
    v24 = *(&v65 + 1);
    v25 = v66;
    v26 = &v17[v20[6]];
    *v26 = v64;
    *(v26 + 1) = v22;
    v26[16] = v23;
    *(v26 + 3) = v24;
    *(v26 + 4) = v25;
    LOBYTE(v60) = 3;
    sub_217AD07F8();
    sub_217D89B5C();
    v27 = v66;
    v28 = &v17[v20[7]];
    v29 = v65;
    *v28 = v64;
    *(v28 + 1) = v29;
    *(v28 + 4) = v27;
    LOBYTE(v60) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v30 = v65;
    v31 = &v17[v20[8]];
    *v31 = v64;
    *(v31 + 2) = v30;
    LOBYTE(v60) = 5;
    sub_217ACFB38();
    sub_217D89B5C();
    *&v17[v20[9]] = v64;
    v75 = 6;
    sub_217A5D308();
    sub_217D89B5C();
    v32 = &v17[v20[10]];
    v33 = v71;
    *(v32 + 6) = v70;
    *(v32 + 7) = v33;
    *(v32 + 8) = v72;
    v34 = v67;
    *(v32 + 2) = v66;
    *(v32 + 3) = v34;
    v35 = v69;
    *(v32 + 4) = v68;
    *(v32 + 5) = v35;
    v36 = v65;
    *v32 = v64;
    *(v32 + 1) = v36;
    LOBYTE(v60) = 7;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v37 = v50;
    sub_217D89BCC();
    (*(v51 + 32))(&v17[v20[11]], v14, v37);
    v58[0] = 8;
    sub_217AD76BC();
    sub_217D89B5C();
    v38 = BYTE4(v60);
    v39 = &v57[v48[12]];
    *v39 = v60;
    v39[4] = v38;
    v74 = 9;
    sub_217A54D08();
    sub_217D89BCC();
    v40 = &v57[v48[13]];
    v41 = v61;
    *v40 = v60;
    *(v40 + 1) = v41;
    *(v40 + 2) = v62;
    v40[48] = v63;
    v73 = 10;
    sub_217B1DE94();
    sub_217D89B5C();
    *&v57[v48[14]] = *v58;
    v73 = 11;
    sub_217A5D8AC();
    sub_217D89B5C();
    v42 = *&v58[16];
    v43 = v59;
    v44 = &v57[v48[15]];
    *v44 = *v58;
    *(v44 + 2) = v42;
    v44[24] = v43;
    v73 = 12;
    sub_217C818E8();
    sub_217D89BCC();
    v45 = &v57[v48[16]];
    *v45 = *v58;
    *(v45 + 8) = *&v58[8];
    v73 = 13;
    sub_217BA73A0();
    sub_217D89B5C();
    (*(v54 + 8))(v55, v56);
    v46 = v57;
    *&v57[v48[17]] = *v58;
    sub_217D4C280(v46, v49);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_217D4C2E4(v46);
  }
}

void sub_217D4C21C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D4B44C();
    v7 = a3(a1, &type metadata for RecipeViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D4C280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D4C2E4(uint64_t a1)
{
  v2 = type metadata accessor for RecipeViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D4C418@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D49AC4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D49AC4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217D49AC4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217D49AC4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217D49AC4(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217D49AC4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_217A608E0(0);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217D49AC4(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217D49AC4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217D49AC4(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v26 - 8) + 104))(a2 + v25, v11, v26);
  v27 = a1[15];
  sub_217D49AC4(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  (*(*(v28 - 8) + 104))(a2 + v27, v11, v28);
  v29 = a1[16];
  sub_217D49AC4(0, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  sub_217D49AC4(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  v33 = *(*(v32 - 8) + 104);

  return v33(a2 + v31, v11, v32);
}

void sub_217D4CAB4(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217D49AC4(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_217D49AC4(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
      if (v3 <= 0x3F)
      {
        sub_217D49AC4(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217D49AC4(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217D49AC4(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
            if (v6 <= 0x3F)
            {
              sub_217D49AC4(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
              if (v7 <= 0x3F)
              {
                sub_217A608E0(319);
                if (v8 <= 0x3F)
                {
                  sub_217D49AC4(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
                  if (v9 <= 0x3F)
                  {
                    sub_217D49AC4(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                    if (v10 <= 0x3F)
                    {
                      sub_217D49AC4(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
                      if (v11 <= 0x3F)
                      {
                        sub_217D49AC4(319, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
                        if (v12 <= 0x3F)
                        {
                          sub_217D49AC4(319, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
                          if (v13 <= 0x3F)
                          {
                            sub_217D49AC4(319, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
                            if (v14 <= 0x3F)
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
      }
    }
  }
}

void sub_217D4CF20(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C01C8, &type metadata for UserChannelContextData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217D889CC();
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C5238, &type metadata for FeedPositionData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811C7CF8, &type metadata for PaywallData);
                if (v8 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_2811C1C70, &type metadata for ReferringArticleData);
                  if (v9 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_2811C6910, &type metadata for ArticleViewData);
                    if (v10 <= 0x3F)
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

unint64_t sub_217D4D120()
{
  result = qword_27CBA5358;
  if (!qword_27CBA5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5358);
  }

  return result;
}

unint64_t sub_217D4D178()
{
  result = qword_27CBA5360;
  if (!qword_27CBA5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5360);
  }

  return result;
}

unint64_t sub_217D4D1D0()
{
  result = qword_27CBA5368;
  if (!qword_27CBA5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5368);
  }

  return result;
}

uint64_t sub_217D4D224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD15E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD3110 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCED30 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_217D4D6A4(uint64_t a1)
{
  v2 = sub_217D4D884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D4D6E0(uint64_t a1)
{
  v2 = sub_217D4D884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TagScoringData.encode(to:)(void *a1)
{
  sub_217D4D828(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D4D884();
  sub_217D89E7C();
  return (*(v4 + 8))(v6, v3);
}

void sub_217D4D828(uint64_t a1)
{
  if (!qword_27CBA5370)
  {
    sub_217D4D884();
    v1 = sub_217D89CDC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA5370);
    }
  }
}

unint64_t sub_217D4D884()
{
  result = qword_27CBA5378;
  if (!qword_27CBA5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5378);
  }

  return result;
}

unint64_t sub_217D4D904()
{
  result = qword_27CBA5380;
  if (!qword_27CBA5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5380);
  }

  return result;
}

unint64_t sub_217D4D95C()
{
  result = qword_27CBA5388;
  if (!qword_27CBA5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5388);
  }

  return result;
}

uint64_t sub_217D4D9B0(void *a1)
{
  sub_217D4D828(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D4D884();
  sub_217D89E7C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D4DAE0()
{
  result = qword_27CBA5390;
  if (!qword_27CBA5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5390);
  }

  return result;
}

unint64_t sub_217D4DB38()
{
  result = qword_27CBA5398;
  if (!qword_27CBA5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5398);
  }

  return result;
}

uint64_t sub_217D4DC54()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C2640);
  __swift_project_value_buffer(v0, qword_2811C2640);
  return sub_217D8866C();
}

uint64_t RecipeExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RecipeExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 24);
  sub_217D4F388(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeExposureEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 24);
  sub_217D4F388(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 28);
  sub_217D4F388(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 28);
  sub_217D4F388(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 32);
  sub_217D4F388(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeExposureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 32);
  sub_217D4F388(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 36);
  sub_217D4F388(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 36);
  sub_217D4F388(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 40);
  sub_217D4F388(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 40);
  sub_217D4F388(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 44);
  sub_217D4F388(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeExposureEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 44);
  sub_217D4F388(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 48);
  sub_217D4F388(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 48);
  sub_217D4F388(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 52);
  sub_217D4F388(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 52);
  sub_217D4F388(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 56);
  sub_217D4F388(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 56);
  sub_217D4F388(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.searchResponseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 60);
  sub_217D4F388(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeExposureEvent.searchResponseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 60);
  sub_217D4F388(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.shareOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 64);
  sub_217D4F388(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeExposureEvent.shareOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 64);
  sub_217D4F388(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.offlineModeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 68);
  sub_217D4F388(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeExposureEvent.offlineModeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 68);
  sub_217D4F388(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.recipeScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 72);
  sub_217D4F388(0, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D4F388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t RecipeExposureEvent.recipeScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeExposureEvent(0) + 72);
  sub_217D4F388(0, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RecipeExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D4F388(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217D4F388(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217D4F388(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217D4F388(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217D4F388(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v17 - 8) + 104))(a1 + v16, v12, v17);
  v18 = v4[11];
  sub_217D4F388(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217D4F388(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217D4F388(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217D4F388(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217D4F388(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
  (*(*(v27 - 8) + 104))(a1 + v26, v12, v27);
  v28 = v4[16];
  sub_217D4F388(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
  (*(*(v29 - 8) + 104))(a1 + v28, v12, v29);
  v30 = v4[17];
  sub_217D4F388(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  (*(*(v31 - 8) + 104))(a1 + v30, v12, v31);
  v32 = v4[18];
  sub_217D4F388(0, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
  v34 = *(*(v33 - 8) + 104);

  return v34(a1 + v32, v2, v33);
}

uint64_t sub_217D4FC38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t RecipeExposureEvent.Model.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeExposureEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t RecipeExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for RecipeExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t RecipeExposureEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for RecipeExposureEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t RecipeExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeExposureEvent.Model(0) + 36);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t RecipeExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeExposureEvent.Model(0) + 40));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t RecipeExposureEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for RecipeExposureEvent.Model(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t RecipeExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeExposureEvent.Model(0) + 48);
  v11 = *(v3 + 48);
  v4 = v11;
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v10 = *(v3 + 32);
  v6 = v10;
  *a1 = v9[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;
  return sub_217ACC004(v9, v8);
}

void RecipeExposureEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeExposureEvent.Model(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t RecipeExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeExposureEvent.Model(0) + 56);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t RecipeExposureEvent.Model.searchResponseData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecipeExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t RecipeExposureEvent.Model.shareOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecipeExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t RecipeExposureEvent.Model.offlineModeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecipeExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t RecipeExposureEvent.Model.recipeScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeExposureEvent.Model(0) + 72));
  v5 = v3[1];
  v4 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v4;
}

__n128 RecipeExposureEvent.Model.init(eventData:timedData:recipeData:feedPositionData:inGroupPositionData:feedData:groupData:userChannelContextData:userBundleSubscriptionContextData:issueData:channelData:searchResponseData:shareOriginationData:offlineModeData:recipeScienceData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int *a4@<X3>, int *a5@<X4>, char *a6@<X5>, _OWORD *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __n128 *a11, uint64_t *a12, char *a13, char *a14, char *a15, uint64_t *a16)
{
  v19 = *a3;
  v20 = a3[1];
  v21 = *(a3 + 16);
  v22 = a3[3];
  v23 = a3[4];
  v46 = *a5;
  v44 = *a4;
  v45 = *(a5 + 4);
  v50 = *a6;
  v48 = *(a6 + 2);
  v49 = *(a6 + 1);
  v54 = a8[1];
  v55 = *a8;
  v53 = *(a8 + 1);
  v60 = a12[1];
  v61 = *a12;
  v58 = *(a12 + 17);
  v59 = *(a12 + 16);
  v56 = a12[4];
  v57 = a12[3];
  v62 = *a13;
  v63 = *a14;
  v64 = *a15;
  v24 = *a16;
  v65 = a16[2];
  v66 = a16[1];
  v25 = sub_217D8899C();
  v51 = a11[1];
  v52 = *a11;
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  v26 = type metadata accessor for RecipeExposureEvent.Model(0);
  v27 = v26[5];
  v28 = sub_217D889CC();
  (*(*(v28 - 8) + 32))(a9 + v27, a2, v28);
  v29 = a9 + v26[6];
  *v29 = v19;
  *(v29 + 8) = v20;
  *(v29 + 16) = v21;
  *(v29 + 24) = v22;
  *(v29 + 32) = v23;
  *(a9 + v26[7]) = v44;
  v30 = a9 + v26[8];
  *v30 = v46;
  *(v30 + 4) = v45;
  v31 = a9 + v26[9];
  *v31 = v50;
  *(v31 + 8) = v49;
  *(v31 + 16) = v48;
  v32 = (a9 + v26[10]);
  v33 = a7[3];
  v32[2] = a7[2];
  v32[3] = v33;
  v34 = a7[1];
  *v32 = *a7;
  v32[1] = v34;
  v35 = a7[8];
  v32[7] = a7[7];
  v32[8] = v35;
  v36 = a7[6];
  v32[5] = a7[5];
  v32[6] = v36;
  v32[4] = a7[4];
  v37 = a9 + v26[11];
  *v37 = v55;
  *(v37 + 1) = v54;
  *(v37 + 2) = v53;
  v38 = a9 + v26[12];
  v39 = *(a10 + 16);
  *v38 = *a10;
  *(v38 + 16) = v39;
  *(v38 + 32) = *(a10 + 32);
  *(v38 + 48) = *(a10 + 48);
  v40 = (a9 + v26[13]);
  result = v52;
  *v40 = v52;
  v40[1] = v51;
  v42 = a9 + v26[14];
  *v42 = v61;
  *(v42 + 8) = v60;
  *(v42 + 16) = v59;
  *(v42 + 17) = v58;
  *(v42 + 24) = v57;
  *(v42 + 32) = v56;
  *(a9 + v26[15]) = v62;
  *(a9 + v26[16]) = v63;
  *(a9 + v26[17]) = v64;
  v43 = (a9 + v26[18]);
  *v43 = v24;
  v43[1] = v66;
  v43[2] = v65;
  return result;
}

unint64_t sub_217D5038C(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0x6144657069636572;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6174614464656566;
      break;
    case 6:
      result = 0x74614470756F7267;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000021;
      break;
    case 9:
      result = 0x7461446575737369;
      break;
    case 10:
      result = 0x446C656E6E616863;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x4D656E696C66666FLL;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217D50564@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D529FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D5058C(uint64_t a1)
{
  v2 = sub_217D50E08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D505C8(uint64_t a1)
{
  v2 = sub_217D50E08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D5195C(0, &qword_27CBA53A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D50E08();
  sub_217D89E7C();
  LOBYTE(v75) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for RecipeExposureEvent.Model(0);
    LOBYTE(v75) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = v3 + v10[6];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    *&v75 = *v11;
    *(&v75 + 1) = v12;
    LOBYTE(v76) = v13;
    *(&v76 + 1) = v14;
    *&v77 = v15;
    LOBYTE(v66) = 2;
    sub_217B1F08C();

    sub_217D89CAC();

    LODWORD(v75) = *(v3 + v10[7]);
    LOBYTE(v66) = 3;
    sub_217AD7710();
    sub_217D89CAC();
    v16 = (v3 + v10[8]);
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 4);
    LODWORD(v75) = v17;
    BYTE4(v75) = v16;
    LOBYTE(v66) = 4;
    sub_217B4FFFC();
    sub_217D89C3C();
    v19 = v3 + v10[9];
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    v84[0] = *v19;
    v85 = v20;
    v86 = v21;
    v93 = 5;
    sub_217A5BA2C();

    sub_217D89CAC();

    v22 = (v3 + v10[10]);
    v23 = v22[5];
    v24 = v22[7];
    v81 = v22[6];
    v82 = v24;
    v25 = v22[7];
    v83 = v22[8];
    v26 = v22[1];
    v27 = v22[3];
    v77 = v22[2];
    v78 = v27;
    v28 = v22[3];
    v29 = v22[5];
    v79 = v22[4];
    v80 = v29;
    v30 = v22[1];
    v75 = *v22;
    v76 = v30;
    v72 = v81;
    v73 = v25;
    v74 = v22[8];
    v68 = v77;
    v69 = v28;
    v70 = v79;
    v71 = v23;
    v66 = v75;
    v67 = v26;
    v92 = 6;
    sub_217AD87FC(&v75, v65);
    sub_217A5D3B4();
    sub_217D89C3C();
    v65[6] = v72;
    v65[7] = v73;
    v65[8] = v74;
    v65[2] = v68;
    v65[3] = v69;
    v65[4] = v70;
    v65[5] = v71;
    v65[0] = v66;
    v65[1] = v67;
    sub_217AD96E8(v65);
    v31 = (v3 + v10[11]);
    v32 = *v31;
    v33 = v31[1];
    LOWORD(v31) = *(v31 + 1);
    v89 = v32;
    v90 = v33;
    v91 = v31;
    v88 = 7;
    sub_217ACFB8C();
    sub_217D89CAC();
    v34 = (v3 + v10[12]);
    v35 = v34[1];
    v63[0] = *v34;
    v63[1] = v35;
    v37 = *v34;
    v36 = v34[1];
    v63[2] = v34[2];
    v64 = *(v34 + 48);
    v59 = v37;
    v60 = v36;
    v61 = v34[2];
    v62 = *(v34 + 48);
    v87 = 8;
    sub_217ACC004(v63, v57);
    sub_217A55B98();
    sub_217D89CAC();
    v57[0] = v59;
    v57[1] = v60;
    v57[2] = v61;
    v58 = v62;
    sub_217ACC69C(v57);
    v38 = (v3 + v10[13]);
    v39 = v38[1];
    v40 = v38[2];
    v41 = v38[3];
    v51 = *v38;
    v52 = v39;
    v53 = v40;
    v54 = v41;
    v56 = 9;
    sub_217AE39D0(v51, v39, v40, v41);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v51, v52, v53, v54);
    v42 = v3 + v10[14];
    v43 = *(v42 + 8);
    v44 = *(v42 + 16);
    v45 = *(v42 + 17);
    v46 = *(v42 + 24);
    v47 = *(v42 + 32);
    v51 = *v42;
    v52 = v43;
    LOBYTE(v53) = v44;
    BYTE1(v53) = v45;
    v54 = v46;
    v55 = v47;
    v56 = 10;
    sub_217AD084C();

    sub_217D89CAC();

    LOBYTE(v51) = *(v3 + v10[15]);
    v56 = 11;
    sub_217B2BA84();
    sub_217D89C3C();
    LOBYTE(v51) = *(v3 + v10[16]);
    v56 = 12;
    sub_217C46AB8();
    sub_217D89C3C();
    LOBYTE(v51) = *(v3 + v10[17]);
    v56 = 13;
    sub_217ACA390();
    sub_217D89C3C();
    v48 = (v3 + v10[18]);
    v49 = v48[1];
    v50 = v48[2];
    v51 = *v48;
    v52 = v49;
    v53 = v50;
    v56 = 14;
    sub_217C81940();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D50E08()
{
  result = qword_27CBA53A8;
  if (!qword_27CBA53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA53A8);
  }

  return result;
}

void RecipeExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_217D889CC();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D5195C(0, &qword_27CBA53B0, MEMORY[0x277D844C8]);
  v60 = v8;
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for RecipeExposureEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_217D50E08();
  v59 = v10;
  v15 = v61;
  sub_217D89E5C();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  else
  {
    v61 = v11;
    v52 = v13;
    LOBYTE(v69[0]) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v16 = v57;
    sub_217D89BCC();
    v17 = *(v56 + 32);
    v18 = v52;
    v57 = v6;
    v17(v52, v16, v6);
    LOBYTE(v69[0]) = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v19 = v5;
    v20 = v55;
    sub_217D89BCC();
    v51 = 0;
    v21 = v61;
    (*(v54 + 32))(&v18[v61[5]], v19, v20);
    LOBYTE(v65) = 2;
    sub_217B1F038();
    sub_217D89BCC();
    v22 = *(&v69[0] + 1);
    v23 = v69[1];
    v24 = *(&v69[1] + 1);
    v25 = v70;
    v26 = &v18[v21[6]];
    *v26 = *&v69[0];
    *(v26 + 1) = v22;
    v26[16] = v23;
    *(v26 + 3) = v24;
    *(v26 + 4) = v25;
    LOBYTE(v65) = 3;
    sub_217AD76BC();
    sub_217D89BCC();
    *&v18[v21[7]] = v69[0];
    LOBYTE(v65) = 4;
    sub_217B4FFA8();
    sub_217D89B5C();
    v27 = BYTE4(v69[0]);
    v28 = &v18[v21[8]];
    *v28 = v69[0];
    v28[4] = v27;
    LOBYTE(v65) = 5;
    sub_217A5B978();
    sub_217D89BCC();
    v29 = &v18[v21[9]];
    *v29 = v69[0];
    *(v29 + 8) = *(v69 + 8);
    v79 = 6;
    sub_217A5D308();
    sub_217D89B5C();
    v30 = &v18[v21[10]];
    v31 = v75;
    *(v30 + 6) = v74;
    *(v30 + 7) = v31;
    *(v30 + 8) = v76;
    v32 = v71;
    *(v30 + 2) = v70;
    *(v30 + 3) = v32;
    v33 = v73;
    *(v30 + 4) = v72;
    *(v30 + 5) = v33;
    v34 = v69[1];
    *v30 = v69[0];
    *(v30 + 1) = v34;
    LOBYTE(v63[0]) = 7;
    sub_217ACFB38();
    sub_217D89BCC();
    v35 = BYTE1(v65);
    v36 = WORD1(v65);
    v37 = &v18[v21[11]];
    *v37 = v65;
    v37[1] = v35;
    *(v37 + 1) = v36;
    v78 = 8;
    sub_217A54D08();
    sub_217D89BCC();
    v38 = &v18[v61[12]];
    v39 = v66;
    *v38 = v65;
    *(v38 + 1) = v39;
    *(v38 + 2) = v67;
    v38[48] = v68;
    v77 = 9;
    sub_217ACFF40();
    sub_217D89B5C();
    v40 = &v52[v61[13]];
    v41 = v63[1];
    *v40 = v63[0];
    *(v40 + 1) = v41;
    v77 = 10;
    sub_217AD07F8();
    sub_217D89BCC();
    v42 = *(&v63[0] + 1);
    v43 = v63[1];
    v44 = BYTE1(v63[1]);
    v45 = *(&v63[1] + 1);
    v46 = v64;
    v47 = &v52[v61[14]];
    *v47 = *&v63[0];
    *(v47 + 1) = v42;
    v47[16] = v43;
    v47[17] = v44;
    *(v47 + 3) = v45;
    *(v47 + 4) = v46;
    v77 = 11;
    sub_217B2BA2C();
    sub_217D89B5C();
    v52[v61[15]] = v63[0];
    v77 = 12;
    sub_217C46A64();
    sub_217D89B5C();
    v52[v61[16]] = v63[0];
    v77 = 13;
    sub_217ACA338();
    sub_217D89B5C();
    v52[v61[17]] = v63[0];
    v77 = 14;
    sub_217C818E8();
    sub_217D89BCC();
    (*(v58 + 8))(v59, v60);
    v49 = v52;
    v48 = v53;
    v50 = &v52[v61[18]];
    *v50 = *&v63[0];
    *(v50 + 8) = *(v63 + 8);
    sub_217D519C0(v49, v48);
    __swift_destroy_boxed_opaque_existential_1(v62);
    sub_217D51A24(v49);
  }
}

void sub_217D5195C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D50E08();
    v7 = a3(a1, &type metadata for RecipeExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D519C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D51A24(uint64_t a1)
{
  v2 = type metadata accessor for RecipeExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D51B58@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D4F388(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217D4F388(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217D4F388(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217D4F388(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217D4F388(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v18 - 8) + 104))(a2 + v17, v13, v18);
  v19 = a1[11];
  sub_217D4F388(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217D4F388(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217D4F388(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_217D4F388(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217D4F388(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
  (*(*(v28 - 8) + 104))(a2 + v27, v13, v28);
  v29 = a1[16];
  sub_217D4F388(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
  (*(*(v30 - 8) + 104))(a2 + v29, v13, v30);
  v31 = a1[17];
  sub_217D4F388(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  (*(*(v32 - 8) + 104))(a2 + v31, v13, v32);
  v33 = a1[18];
  sub_217D4F388(0, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
  v35 = *(*(v34 - 8) + 104);

  return v35(a2 + v33, v4, v34);
}

void sub_217D5226C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217D4F388(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
      if (v3 <= 0x3F)
      {
        sub_217D4F388(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
        if (v4 <= 0x3F)
        {
          sub_217D4F388(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
          if (v5 <= 0x3F)
          {
            sub_217D4F388(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
            if (v6 <= 0x3F)
            {
              sub_217D4F388(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
              if (v7 <= 0x3F)
              {
                sub_217D4F388(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
                if (v8 <= 0x3F)
                {
                  sub_217D4F388(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_217D4F388(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                    if (v10 <= 0x3F)
                    {
                      sub_217D4F388(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
                      if (v11 <= 0x3F)
                      {
                        sub_217D4F388(319, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
                        if (v12 <= 0x3F)
                        {
                          sub_217D4F388(319, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
                          if (v13 <= 0x3F)
                          {
                            sub_217D4F388(319, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
                            if (v14 <= 0x3F)
                            {
                              sub_217D4F388(319, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
                              if (v15 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_217D52728(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C29D8, &type metadata for InGroupPositionData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C2E40, &type metadata for SearchResponseData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C1C58, &type metadata for ShareOriginationData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_27CBA53C8, &type metadata for OfflineModeData);
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

unint64_t sub_217D528F8()
{
  result = qword_27CBA53D0;
  if (!qword_27CBA53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA53D0);
  }

  return result;
}

unint64_t sub_217D52950()
{
  result = qword_27CBA53D8;
  if (!qword_27CBA53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA53D8);
  }

  return result;
}

unint64_t sub_217D529A8()
{
  result = qword_27CBA53E0;
  if (!qword_27CBA53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA53E0);
  }

  return result;
}

uint64_t sub_217D529FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCDE60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD1210 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1230 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x4D656E696C66666FLL && a2 == 0xEF6174614465646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD3110 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_217D52F80()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5418);
  __swift_project_value_buffer(v0, qword_27CBA5418);
  return sub_217D8866C();
}

uint64_t RecipeSaveEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RecipeSaveEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 20);
  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeSaveEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 20);
  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeSaveEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 24);
  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeSaveEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 24);
  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeSaveEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 28);
  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeSaveEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 28);
  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeSaveEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 32);
  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeSaveEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 32);
  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}